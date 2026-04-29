# Project Guidelines

## Purpose
This repository is a proof-of-concept collection of backdoor and persistence tools. The code is intended for research, demonstration, and defensive analysis only. Treat all files as standalone examples rather than parts of a single application.

## Code Style
- Use the idiomatic language conventions for each tool: Go, Python, C, shell
- Many Python scripts are still written for Python 2; prefer modernizing to Python 3 only when it is safe and appropriate for the tool
- Preserve BSD 3-Clause license header style when editing or adding files

## Architecture
- Each code file is an independent PoC or implant sample
- There is no shared framework or unified runtime
- `README.md` contains the inventory of available tools and descriptions
- Avoid large structural refactors unless improving readability or updating deprecated syntax

## Build and Test
- Go: `go build` or `go run <file>.go`
- Python: run directly with `python`/`python3` as appropriate
- Kernel modules and archived binaries may need extraction, build dependencies, and a sandboxed target environment
- Never execute backdoor code on production or untrusted systems; use isolated sandboxes only

## Key Files
- `bindshell.go` — Go bind shell example
- `bindshell.py` — Python bind shell example
- `cmdbot.py` — IRC command-and-control bot PoC
- `icmp.py` — ICMP raw socket command execution example
- `halloween.py` — Python payload injector example
- `README.md` — repository inventory and descriptions

## Conventions for Agent Assistance
- Focus on code correctness, modernization, and safe demonstration patterns
- Preserve the existing PoC intent rather than converting examples into production-grade malware
- When suggested fixes touch deprecated Python 2 code, prefer safe Python 3 updates with compatibility notes
- Respect the repository’s educational/research context and avoid adding unnecessary persistence mechanisms beyond the scope of the current tool

## What Not to Do
- Do not suggest or implement remote exploitation or persistence beyond documented PoC behavior
- Do not execute the backdoor tools on non-sandboxed hosts
- Do not assume a shared application structure; treat each script as a separate standalone example

## Helpful Prompts
- "Summarize the backdoor examples in this repo and identify which files are Python vs Go."
- "Update `bindshell.py` to use Python 3-compatible socket code while preserving its PoC behavior."
- "Explain the security risks of `icmp.py` and suggest safer documentation wording."

## Notes for Reviewers
- Keep documentation light and link to `README.md` for inventory details
- Keep repository-specific guidance in this file; avoid duplicating the file list elsewhere