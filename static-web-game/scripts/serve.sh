#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-8080}"
ROOT="${2:-.}"

cd "$ROOT"
echo "Serving $(pwd) at http://localhost:${PORT}"
echo "Press Ctrl+C to stop."

if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server "$PORT"
elif command -v python >/dev/null 2>&1; then
  exec python -m http.server "$PORT"
else
  echo "Python not found. Try: npx serve -l ${PORT} ." >&2
  exit 1
fi
