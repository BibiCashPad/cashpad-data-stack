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
Pull the remote Airbyte Builder Project manifest back to the local YAML file.

Pendant en miroir de airbyte_push.py : permet de récupérer les modifications
faites côté UI Builder (Tests qui régénèrent les schémas, edits manuels) dans
le fichier YAML versionné Git. Workflow type :

    1. user modifie / teste des streams dans le Builder
    2. `make airbyte-pull` → met à jour airbyte/sellsy_v2.yaml
    3. `git diff && git commit` → la source de vérité Git suit

Usage:
    ./scripts/airbyte_pull.py
    make airbyte-pull

Reuses the same .env config as airbyte_push.py.
"""
from __future__ import annotations

import os
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


def die(msg: str, hint: str | None = None, code: int = 1) -> None:
    print(f"✗ {msg}", file=sys.stderr)
    if hint:
        print(f"  → {hint}", file=sys.stderr)
    sys.exit(code)


def get_token() -> str:
    if API_TOKEN:
        return API_TOKEN
    if not (CLIENT_ID and CLIENT_SECRET):
        die(
            "Missing auth credentials.",
            "Set AIRBYTE_API_TOKEN, or AIRBYTE_CLIENT_ID + AIRBYTE_CLIENT_SECRET in .env.",
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
        die(f"Can't reach Airbyte at {API_URL}.", f"Is it running? Try `abctl local status`. ({e})")
    if resp.status_code != 200:
        die(f"Auth failed: {resp.status_code}", f"Response: {resp.text[:500]}")
    return resp.json()["access_token"]


def api_post(token: str, path: str, body: dict) -> dict:
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
        die(f"API error on POST {path}: HTTP {resp.status_code}", f"Response: {resp.text[:500]}")
    try:
        return resp.json()
    except ValueError:
        return {}


# ─────────────────────────────────────────────────────────────────────────────
# YAML formatting helpers
# ─────────────────────────────────────────────────────────────────────────────

def _represent_str(dumper, data):
    """Use literal block scalar for multi-line strings (cleaner diffs)."""
    if "\n" in data:
        return dumper.represent_scalar("tag:yaml.org,2002:str", data, style="|")
    return dumper.represent_scalar("tag:yaml.org,2002:str", data)


yaml.add_representer(str, _represent_str)


def dump_yaml(manifest: dict) -> str:
    return yaml.dump(
        manifest,
        default_flow_style=False,
        sort_keys=False,
        allow_unicode=True,
        width=120,
        indent=2,
    )


# ─────────────────────────────────────────────────────────────────────────────
# Main
# ─────────────────────────────────────────────────────────────────────────────

def main() -> None:
    start = time.time()

    if not WORKSPACE_ID:
        die("AIRBYTE_WORKSPACE_ID is not set.", "Run `abctl local credentials`.")

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
        die(f"Connector Builder Project '{CONNECTOR_NAME}' not found.")
    project_id = match["builderProjectId"]
    active_version = match.get("activeDeclarativeManifestVersion") or 0
    print(f"  Project {project_id[:8]}… — active version: {active_version}")

    print("→ Fetching remote manifest from Airbyte…")
    current = api_post(
        token,
        "/v1/connector_builder_projects/get_with_manifest",
        {"workspaceId": WORKSPACE_ID, "builderProjectId": project_id},
    )
    remote_manifest = (current.get("declarativeManifest") or {}).get("manifest")
    if not remote_manifest:
        die("Remote manifest is empty or missing.", "Has any version been pushed/saved yet?")

    rel_path = MANIFEST_PATH.relative_to(REPO_ROOT)

    # Load local manifest for comparison
    local_text = MANIFEST_PATH.read_text() if MANIFEST_PATH.exists() else ""
    try:
        local_manifest = yaml.safe_load(local_text) if local_text else None
    except yaml.YAMLError:
        local_manifest = None

    if local_manifest == remote_manifest:
        elapsed = time.time() - start
        print(f"✓ No changes — local {rel_path} already matches remote. Done in {elapsed:.1f}s.")
        return

    print(f"→ Writing remote manifest to {rel_path}…")
    new_yaml = dump_yaml(remote_manifest)
    MANIFEST_PATH.write_text(new_yaml)

    # Diff stats — number of streams and properties
    streams = remote_manifest.get("streams", [])
    n_streams = len(streams)
    total_props = sum(
        len((s.get("schema_loader", {}).get("schema", {}).get("properties") or {}))
        for s in streams
    )
    elapsed = time.time() - start
    print(
        f"✓ Pulled manifest: {n_streams} streams, {total_props} total schema properties. "
        f"Done in {elapsed:.1f}s."
    )
    print(f"  Inspect changes:  git diff {rel_path}")
    print(f"  Commit when ok:    git add {rel_path} && git commit -m 'Sync manifest from Builder'")


if __name__ == "__main__":
    main()
