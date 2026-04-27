FROM ubuntu:20.04

# Install necessary tools
RUN apt-get update && apt-get install -y \
    python2 \
    python3 \
    golang-go \
    build-essential \
    linux-headers-generic \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user for safety
RUN useradd -m sandbox && chown -R sandbox:sandbox /home/sandbox
USER sandbox
WORKDIR /home/sandbox

# Copy tools (mount volume at runtime)
# Note: Mount the workspace as volume when running

CMD ["/bin/bash"]