#!/usr/bin/env bash
set -euo pipefail

if ! command -v opencode >/dev/null 2>&1; then
  echo "Error: opencode is not installed or not in PATH." >&2
  exit 1
fi

opencode run \
  --model "anthropic/claude-opus-4-6" \
  "@prompt.txt create posts for missing days in current month"
