#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────
# airbyte_check_sync.sh
# Read-only status check of the Airbyte Sellsy V2 connection.
# Used by the monitoring cron (Claude /loop).
# Outputs one line per call:
#   "Job #X | <status> | dur=<H> | rows=<N> | attempt=<n> | anomaly_hits=<k>"
# Returns exit code 0 always; the caller interprets the line.
# ──────────────────────────────────────────────────────────────────────────

set -u
REPO="/Users/guillaumebiet/Documents/00_CASHPAD/00_GIT/cashpad-data-stack"
CONN="f83152e3-1981-4c8d-a278-ab6040c73f05"

# Load env (client_id, client_secret, AIRBYTE_API_URL)
# shellcheck disable=SC1090
source "$REPO/.env" 2>/dev/null || { echo "ERR: .env missing"; exit 0; }

# Auth
TOKEN=$(curl -sf -X POST "${AIRBYTE_API_URL}/v1/applications/token" \
  -H "Content-Type: application/json" \
  -d "{\"client_id\":\"${AIRBYTE_CLIENT_ID}\",\"client_secret\":\"${AIRBYTE_CLIENT_SECRET}\"}" \
  2>/dev/null | python3 -c "import sys,json;print(json.load(sys.stdin).get('access_token',''))" 2>/dev/null)

if [ -z "${TOKEN:-}" ]; then
  echo "ERR: Airbyte API unreachable or auth failed"
  exit 0
fi

# Latest job
LATEST=$(curl -sf "${AIRBYTE_API_URL}/public/v1/jobs?connectionId=${CONN}&limit=50" \
  -H "Authorization: Bearer $TOKEN" 2>/dev/null | python3 -c "
import sys,json
try:
  d=json.load(sys.stdin)
  j=d['data'][-1]
  print(f\"{j['jobId']}|{j['status']}|{j.get('duration','?')}|{j.get('rowsSynced',0)}|{j.get('startTime','?')}\")
except Exception as e:
  print(f'ERR|{e}|||')
" 2>/dev/null)

IFS='|' read -r JID STATUS DURATION ROWS START <<< "$LATEST"

# Pod + attempt
export KUBECONFIG=/Users/guillaumebiet/.airbyte/abctl/abctl.kubeconfig
POD=$(kubectl get pods -n airbyte-abctl 2>/dev/null | grep -E "replication-job-${JID}" | awk '{print $1}' | head -1)
ATTEMPT=$(echo "${POD:-}" | grep -oE "attempt-[0-9]+" | grep -oE "[0-9]+" || echo "?")

# Anomaly detection (only if pod is alive)
ANOMALY=0
if [ -n "${POD:-}" ]; then
  ANOMALY=$(kubectl logs "$POD" -n airbyte-abctl -c orchestrator --tail=200 2>/dev/null \
    | grep -cE "RATE_LIMITED|AirbyteTracedException|Bad request|status code '4|status code '5" || echo 0)
fi

echo "Job #${JID:-?} | ${STATUS:-?} | dur=${DURATION:-?} | rows=${ROWS:-0} | attempt=${ATTEMPT} | anomaly_hits=${ANOMALY}"
