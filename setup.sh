#!/usr/bin/env bash

set -e

# Initialize and update git submodules
git submodule init
git submodule update

# Base apps for all users
base=(
    zsh i3 kitty dunst vim
)

# Apps for user only (not root)
useronly=(
#     git
)

link_app() {
    local target_dir="$1"
    local app_dir="$2"
    local current_dir="$(pwd)"

    echo "Linking $app_dir to $target_dir"

    # Loop through each item in the app directory
    for item in "$current_dir/$app_dir/"*; do
        item_name=$(basename "$item")
        target_path="$target_dir/.$item_name"

        # Remove existing file/link/directory if it exists
        if [ -e "$target_path" ] || [ -L "$target_path" ]; then
            echo "Removing existing $target_path"
            rm -rf "$target_path"
        fi

        # Create the symbolic link
        ln -sv "$item" "$target_path"
    done
}

echo ""
echo "Linking configs for user: $(whoami)"

# Link base apps
for app in "${base[@]}"; do
    link_app "$HOME" "$app"
done

# Link user-only apps if not root
if [ "$(id -u)" -ne 0 ]; then
    for app in "${useronly[@]}"; do
        link_app "$HOME" "$app"
    done
fi

echo ""
echo "##### ALL DONE"
