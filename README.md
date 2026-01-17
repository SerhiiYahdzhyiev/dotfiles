# Dotfiles

> Women always want just one thing... your dotfiles.

## Dependencies/Prerequisites

1. [Stow](https://www.gnu.org/software/stow/)
2. [Git](https://git-scm.com/)

## Quickstart

1. Clone this repo and navigate to its root dir.
2. (Optional) Run `install.sh` to install software an tools.
3. Run: `./setup.sh`.

> [!note]
> Setup individual components by passing their stow package names
> to the setup script, e.g. `./setup.sh git`

## Docker (Rootless)

Make sure you have the `uidmap` setup and working.

```sh
curl -fsSL https://get.docker.com/rootless | sh
```

## Node/NVM

[NVM Repo](https://github.com/nvm-sh/nvm)

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
```
```sh
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
```

## Python/UV

```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

```sh
wget -qO- https://astral.sh/uv/install.sh | sh
```

## Rust/Cargo

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Zellij

The most convenient way to install it is via `cargo`:

```sh
cargo install zellij
```

## RipGrep (For Nvim/Telescope)

```sh
cargo install ripgrep
```

## Nvim

The configuration is a separate [repository](https://github.com/Serhiiyahdzhyiev/sy-nvim).

Quick setup:

```bash
cd # or cd $HOME, or whatever works for you
git clone https://github.com/SerhiiYahdzhyiev/sy-nvim.git .config/nvim
```
