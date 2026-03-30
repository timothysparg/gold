#!/usr/bin/env bash
#MISE hide=true
#MISE quiet=true
#MISE description="Warn about system-delegated tools not found on PATH"
#MISE tools={gum="latest"}

set -euo pipefail

setting_tools="$(mise settings get disable_tools 2>/dev/null \
  | tr -d '[]"' \
  | tr ',' '\n' \
  | xargs -r printf '%s\n')"

env_tools="$(printf '%s' "${MISE_DISABLE_TOOLS:-}" \
  | tr ',' '\n' \
  | xargs -r printf '%s\n')"

all_tools="$(printf '%s\n%s\n' "$setting_tools" "$env_tools" \
  | sort -u \
  | grep -v '^$')"

[ -z "$all_tools" ] && exit 0

missing=()

while IFS= read -r tool; do
  if ! command -v "$tool" > /dev/null 2>&1; then
    tmpl="{{ Color \"192\" \"\" \"WARN\" }} {{ Bold \"${tool}\" }} not found - {{ Bold (Color \"250\" \"\" \"system-managed\") }} tools must be installed separately"
    gum format --type template "$tmpl"
    printf '\n'
    missing+=("$tool")
  fi
done <<< "$all_tools"

count="${#missing[@]}"
if [ "$count" -gt 1 ]; then
  tool_word="tools"
else
  tool_word="tool"
fi

if [ "$count" -gt 0 ]; then
  summary="{{ Color \"192\" \"\" \"${count}\" }} system-managed ${tool_word} missing from {{ Bold (Color \"250\" \"\" \"PATH\") }}"
  gum format --type template "$summary"
  printf '\n'
fi
