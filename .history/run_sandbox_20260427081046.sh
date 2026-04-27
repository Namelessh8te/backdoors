#!/bin/bash

# Build the sandbox image
docker build -t backdoor-sandbox .

# Run the container with workspace mounted
# WARNING: These tools are dangerous. Only run in isolated environments.
# Do not expose ports or run on production systems.

docker run -it --rm \
  -v $(pwd):/workspace \
  --cap-drop=ALL \
  --network none \
  backdoor-sandbox \
  /bin/bash