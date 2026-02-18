#!/usr/bin/env bash
#MISE tools={ffmpeg="8.0.1", vhs="0.10.0", bat="0.26.1"}
#MISE description = "Render a VHS demo showing fnox-managed secrets load and unload behavior"

if ! command -v ttyd >/dev/null 2>&1; then
  echo "ttyd is required but not installed."
  echo "Install it with: brew install ttyd"
  echo "Note: ttyd does not emit a macOS binary for mise-managed install, so Homebrew is the only option on macOS."
  exit 1
fi

vhs "docs/tapes/demo-fnox-secrets.tape"
