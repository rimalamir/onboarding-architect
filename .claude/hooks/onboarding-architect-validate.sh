#!/usr/bin/env bash
set -euo pipefail

INPUT="$(cat)"

FILE_PATH="$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')"

if [[ -z "${FILE_PATH}" ]]; then
  exit 0
fi

case "$FILE_PATH" in
  *onboarding*|*welcome*|*signup*|*activation*)
    if [[ -f "$FILE_PATH" ]]; then
      if grep -Eq "Welcome to the app|Feature 1|Feature 2|Feature 3" "$FILE_PATH"; then
        cat <<'JSON'
{
  "hookSpecificOutput": {
    "hookEventName": "PostToolUse",
    "additionalContext": "Detected generic onboarding placeholder copy in a likely onboarding-related file. Re-read README/docs/app copy and replace with context-aware product messaging."
  }
}
JSON
      fi
    fi
    ;;
esac

exit 0
