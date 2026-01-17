#!/bin/sh
set -euo pipefail

DFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

apps=("zsh")

if [ "$#" -gt 0 ]; then
        apps=("$@")
fi

echo "Stowing dotfiles into home dir..."
echo "Stowing aliases..."
stow -v -d "$DFILES_DIR" -t "$HOME" aliases

for app in "${apps[@]}"; do
    echo "Stowing $app..."
    stow -d "$DFILES_DIR" -t "$HOME" "$app"
done
