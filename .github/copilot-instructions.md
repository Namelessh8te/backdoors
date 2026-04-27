# Project Guidelines

## Code Style
- Use appropriate language conventions for each tool (Go, Python, C)
- Python scripts use Python 2 syntax in some cases (deprecated, consider updating to Python 3)
- Include BSD license headers as per LICENSE

## Architecture
This is a collection of independent proof-of-concept backdoor tools and persistence techniques. Each file is standalone with no unified architecture. See [README.md](README.md) for tool inventory and descriptions.

## Build and Test
- Go files: `go build` or `go run`
- Python scripts: Run directly with Python interpreter
- Kernel modules and archived tools require extraction and compilation in appropriate environments
- Test in isolated, sandboxed environments only due to security risks

## Conventions
- All tools are for educational/research purposes under 3-Clause BSD license
- Handle with extreme caution: these are working backdoors that can compromise systems
- Requires elevated privileges for raw sockets, kernel modules, etc.
- Deprecated dependencies (e.g., Python 2 md5) should be updated for modern use
- No input validation in command execution - use only in controlled environments