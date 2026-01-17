#!/bin/sh
set -euo pipefail
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
curl -LsSf https://astral.sh/uv/install.sh | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install zellij
cargo install ripgrep
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# -- Lazygit (Release binary) --
wget https://github.com/jesseduffield/lazygit/releases/download/v0.58.1/lazygit_0.58.1_linux_x86_64.tar.gz
tar -xzf ./laylazygit_0.58.1_linux_x86_64.tar.gz -C ./lazygit
mv ./lazygit/lazygit $HOME/.local/bin/lazygit
rm -rf ./lazygit*

