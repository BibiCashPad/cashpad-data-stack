#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.11"
# dependencies = [
#     "requests>=2.31",
#     "pyyaml>=6.0",
#     "python-dotenv>=1.0",
# ]
# ///
"""
Push a local YAML manifest to an Airbyte Connector Builder Project.

Usage:
    ./scripts/airbyte_push.py
    make airbyte-push

Required env vars (typically in .env at repo root):
    AIRBYTE_API_URL         e.g. http://localhost:8000/api
    AIRBYTE_WORKSPACE_ID    from `abctl local credentials`
    AIRBYTE_CLIENT_ID       Airbyte Application credentials (Settings → Applications)
    AIRBYTE_CLIENT_SECRET   idem
    AIRBYTE_CONNECTOR_NAME  e.g. "Sellsy V2" — must already exist in the Builder
    AIRBYTE_MANIFEST_PATH   e.g. airbyte/sellsy_v2.yaml (relative to repo root)

Alternatively, set AIRBYTE_API_TOKEN directly to skip the OAuth2 exchange.

The script is idempotent: if the local YAML matches the remote manifest, it skips
the publish and exits cleanly.
"""
from __future__ import annotations

import os
import subprocess
import sys
import time
from pathlib import Path

import requests
import yaml
from dotenv import load_dotenv

REPO_ROOT = Path(__file__).resolve().parent.parent
load_dotenv(REPO_ROOT / ".env")

API_URL = os.getenv("AIRBYTE_API_URL", "http://localhost:8000/api").rstrip("/")
WORKSPACE_ID = os.getenv("AIRBYTE_WORKSPACE_ID")
CONNECTOR_NAME = os.getenv("AIRBYTE_CONNECTOR_NAME", "Sellsy V2")
MANIFEST_PATH = REPO_ROOT / os.getenv("AIRBYTE_MANIFEST_PATH", "airbyte/sellsy_v2.yaml")

CLIENT_ID = os.getenv("AIRBYTE_CLIENT_ID")
CLIENT_SECRET = os.getenv("AIRBYTE_CLIENT_SECRET")
API_TOKEN = os.getenv("AIRBYTE_API_TOKEN")


# ─────────────────────────────────────────────────────────────────────────────
# Helpers
# ─────────────────────────────────────────────────────────────────────────────

def die(msg: str, hint: str | None = None, code: int = 1) -> None:
    print(f"✗ {msg}", file=sys.stderr)
    if hint:
        print(f"  → {hint}", file=sys.stderr)
    sys.exit(code)


def get_token() -> str:
    """Return a Bearer token, either from env or via OAuth2 client_credentials."""
    if API_TOKEN:
        return API_TOKEN
    if not (CLIENT_ID and CLIENT_SECRET):
        die(
            "Missing auth credentials.",
            "Set AIRBYTE_API_TOKEN, or AIRBYTE_CLIENT_ID + AIRBYTE_CLIENT_SECRET in .env. "
            "Create an Application in the Airbyte UI: Settings → Applications → New.",
        )
    try:
        resp = requests.post(
            f"{API_URL}/v1/applications/token",
            json={
                "client_id": CLIENT_ID,
                "client_secret": CLIENT_SECRET,
                "grant_type": "client_credentials",
            },
            timeout=10,
        )
    except requests.RequestException as e:
        die(
            f"Can't reach Airbyte at {API_URL}.",
            f"Is it running? Try `abctl local status`. ({e})",
        )
    if resp.status_code != 200:
        die(
            f"Auth failed: {resp.status_code}",
            f"Response: {resp.text[:500]}. Check AIRBYTE_CLIENT_ID / AIRBYTE_CLIENT_SECRET.",
        )
    return resp.json()["access_token"]


def api_post(token: str, path: str, body: dict) -> dict:
    """POST helper with consistent error reporting."""
    resp = requests.post(
        f"{API_URL}{path}",
        json=body,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json",
            "Accept": "application/json",
        },
        timeout=30,
    )
    if resp.status_code >= 400:
        die(
            f"API error on POST {path}: HTTP {resp.status_code}",
            f"Response: {resp.text[:500]}",
        )
    try:
        return resp.json()
    except ValueError:
        return {}


def get_git_sha() -> str:
    """Return the short SHA of HEAD, or 'unknown' if not a git repo."""
    try:
        return subprocess.check_output(
            ["git", "rev-parse", "--short", "HEAD"],
            cwd=REPO_ROOT,
            text=True,
            stderr=subprocess.DEVNULL,
        ).strip()
    except (subprocess.CalledProcessError, FileNotFoundError):
        return "unknown"


def git_is_dirty() -> bool:
    """Return True if there are uncommitted changes."""
    try:
        out = subprocess.check_output(
            ["git", "status", "--porcelain"],
            cwd=REPO_ROOT,
            text=True,
            stderr=subprocess.DEVNULL,
        )
        return bool(out.strip())
    except (subprocess.CalledProcessError, FileNotFoundError):
        return False


# ─────────────────────────────────────────────────────────────────────────────
# Main
# ─────────────────────────────────────────────────────────────────────────────

def main() -> None:
    start = time.time()

    if not WORKSPACE_ID:
        die(
            "AIRBYTE_WORKSPACE_ID is not set.",
            "Run `abctl local credentials` and put the workspace ID in .env.",
        )
    if not MANIFEST_PATH.exists():
        die(f"Manifest not found: {MANIFEST_PATH}")

    rel_path = MANIFEST_PATH.relative_to(REPO_ROOT)
    print(f"→ Loading manifest from {rel_path}")
    try:
        with open(MANIFEST_PATH) as f:
            manifest = yaml.safe_load(f)
    except yaml.YAMLError as e:
        die(f"Invalid YAML in {rel_path}", str(e))

    print(f"→ Authenticating to {API_URL}")
    token = get_token()

    print(f"→ Looking up Connector Builder Project '{CONNECTOR_NAME}'…")
    listing = api_post(
        token,
        "/v1/connector_builder_projects/list",
        {"workspaceId": WORKSPACE_ID},
    )
    projects = listing.get("projects", [])
    match = next((p for p in projects if p.get("name") == CONNECTOR_NAME), None)
    if not match:
        names = ", ".join(repr(p.get("name")) for p in projects) or "(none)"
        die(
            f"Connector Builder Project '{CONNECTOR_NAME}' not found in workspace.",
            f"Existing projects: {names}. "
            f"Create '{CONNECTOR_NAME}' once in the UI (Builder → New) so it exists.",
        )
    project_id = match["builderProjectId"]
    active_version = match.get("activeDeclarativeManifestVersion") or 0
    print(f"  Project {project_id[:8]}… — active version: {active_version}")

    print("→ Fetching current manifest from Airbyte…")
    current = api_post(
        token,
        "/v1/connector_builder_projects/get_with_manifest",
        {"workspaceId": WORKSPACE_ID, "builderProjectId": project_id},
    )
    remote_manifest = (current.get("declarativeManifest") or {}).get("manifest")
    if remote_manifest == manifest:
        elapsed = time.time() - start
        print(f"✓ No changes — local matches remote (v{active_version}). Done in {elapsed:.1f}s.")
        return

    next_version = active_version + 1
    git_sha = get_git_sha()
    dirty = " +dirty" if git_is_dirty() else ""
    description = f"Synced from Git ({git_sha}{dirty})"

    # ──────────────────────────────────────────────────────────────────────
    # Merge schémas auto-importés depuis le draft remote
    # ──────────────────────────────────────────────────────────────────────
    # Quand un stream est testé dans le Builder UI avec autoImportSchema=true,
    # Airbyte régénère schema_loader.schema.properties avec les vrais champs
    # de la réponse API. Sans cette logique de merge, notre push écraserait
    # ces schémas enrichis avec ceux (minimaux) du YAML local.
    #
    # Règle : pour chaque stream, si le remote a un schema_loader avec STRICTEMENT
    # plus de propriétés que le local, on préserve le remote.
    remote_streams = {
        s.get("name"): s
        for s in (remote_manifest or {}).get("streams", [])
        if s.get("name")
    }
    preserved = []
    for stream in manifest.get("streams", []):
        name = stream.get("name")
        if not name or name not in remote_streams:
            continue
        local_props = (
            stream.get("schema_loader", {})
                  .get("schema", {})
                  .get("properties", {})
        )
        remote_props = (
            remote_streams[name]
                .get("schema_loader", {})
                .get("schema", {})
                .get("properties", {})
        )
        if len(remote_props) > len(local_props):
            stream["schema_loader"] = remote_streams[name]["schema_loader"]
            preserved.append(f"{name} ({len(local_props)}→{len(remote_props)} props)")

    if preserved:
        print(f"→ Preserving {len(preserved)} enriched schemas from remote:")
        for p in preserved:
            print(f"    • {p}")

    print("→ Updating draft manifest in the Builder…")
    api_post(
        token,
        "/v1/connector_builder_projects/update",
        {
            "workspaceId": WORKSPACE_ID,
            "builderProjectId": project_id,
            "builderProject": {
                "name": CONNECTOR_NAME,
                "draftManifest": manifest,
            },
        },
    )

    elapsed = time.time() - start
    print(f"✓ Draft updated in '{CONNECTOR_NAME}'. Done in {elapsed:.1f}s.")
    print(
        "  Next step (manual): open the Builder UI → click 'Publish new version'"
        f" → bump to v{next_version}. "
        "(The /publish endpoint requires fields the API doesn't document cleanly yet.)"
    )


if __name__ == "__main__":
    main()
