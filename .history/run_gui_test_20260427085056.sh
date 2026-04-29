#!/bin/bash
set -euo pipefail

WORKDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v docker >/dev/null 2>&1; then
  echo "Error: docker is not installed or not on PATH." >&2
  exit 1
fi

cd "$WORKDIR"

# Build the sandbox image
docker build -t backdoor-sandbox .

# Run the container with workspace mounted and web server
# WARNING: These tools are dangerous. Only run in isolated environments.
# For GUI test, exposing port 8000 for local access only.

docker run -it --rm \
  -v $(pwd):/workspace \
  -p 8000:8000 \
  --cap-drop=ALL \
  backdoor-sandbox \
  bash -c "cd /workspace && python3 -m http.server 8000"