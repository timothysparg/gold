#!/usr/bin/env bash
#MISE tools={ffmpeg="8.0.1", vhs="0.10.0"}
#MISE description = "Render a VHS demo showing mise quickstart behavior"

if ! command -v ttyd >/dev/null 2>&1; then
  echo "ttyd is required but not installed."
  echo "Install it with: brew install ttyd"
  echo "Note: ttyd does not emit a macOS binary for mise-managed install, so Homebrew is the only option on macOS."
  exit 1
fi

set -euo pipefail
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd -- "${SCRIPT_DIR}/../.." && pwd)"

while read -r tool version _; do
  [ -n "${tool:-}" ] || continue
  [ -n "${version:-}" ] || continue
  echo "mise uninstall ${tool}@${version}"
  mise uninstall "${tool}@${version}" >/dev/null 2>&1 || true
done < <(mise ls --local --no-header)

DEMO_ROOT="${DEMO_ROOT:-$(mktemp -d "${TMPDIR:-/tmp}/gold-vhs-demo.XXXXXX")}"
DEMO_DIR="${DEMO_ROOT}/gold"

export DEMO_DIR
export MISE_GITHUB_ATTESTATIONS=false
GITHUB_TOKEN="$(gh auth token)"
export GITHUB_TOKEN

cd "${DEMO_ROOT}"

echo "Using DEMO_ROOT=${DEMO_ROOT}"
echo "Using DEMO_DIR=${DEMO_DIR}"
echo "Cleanup: rm -rf \"${DEMO_ROOT}\""

sleep 30s

vhs "${PROJECT_ROOT}/docs/tapes/demo-quickstart.tape" --output "${PROJECT_ROOT}/docs/tapes/demo-quickstart.gif"
