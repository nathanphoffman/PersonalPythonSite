#!/usr/bin/env bash
# Builds the Linux and Windows downloads of the private 3dSpaceGame repo and copies them into static/downloads/.
# Override the game folder with SPACE_GAME_DIR if it lives somewhere else.
set -euo pipefail

SITE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
GAME_DIR="${SPACE_GAME_DIR:-$HOME/Code/3dSpaceGameWT/3dSpaceGame}"
DOWNLOADS_DIR="$SITE_DIR/static/downloads"

if [ ! -d "$GAME_DIR" ]; then
    echo "Game folder not found: $GAME_DIR (set SPACE_GAME_DIR)" >&2
    exit 1
fi

# The game's own scripts do the compiling and packing; this script only moves the results.
"$GAME_DIR/build-unix.sh"
"$GAME_DIR/build-windows.sh"

mkdir -p "$DOWNLOADS_DIR"
cp "$GAME_DIR/dist/SpaceCombat-linux.tar.gz" "$DOWNLOADS_DIR/"
cp "$GAME_DIR/dist/SpaceCombat-windows.zip" "$DOWNLOADS_DIR/"

echo "Copied to $DOWNLOADS_DIR:"
ls -lh "$DOWNLOADS_DIR"
