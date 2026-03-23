#!/usr/bin/env bash
set -euo pipefail
SAFE_MODE="${SAFE_MODE:-true}"
echo 'Unused Docker resources:'
docker system df || exit 1
if [[ "$SAFE_MODE" == "true" ]]; then
  echo 'SAFE MODE enabled. No resources removed.'
  exit 0
fi
read -r -p 'Proceed with docker system prune -a --volumes? [y/N] ' ans
[[ "$ans" =~ ^[Yy]$ ]] || { echo 'Aborted'; exit 1; }
docker system prune -a --volumes -f
