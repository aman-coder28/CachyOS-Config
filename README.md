# CachyOS-Config

A [CachyOS](https://cachyos.org) packages definition and installation template that installs [Hyprland](https://github.com/hyprwm/Hyprland) scrollable-tiling Wayland compositor, GUI programs, and dev tools.

The project is built and maintained with [**bootc-yaml**](https://gitlab.com/beaman-coder/bootc-yaml) — a config CLI that describes the package sets in YAML config files and generates the install script instead of hand-writing it.

## Overview

- **Base image:** CachyOS
- **Compositor:** Hyprland window manager with Noctalia Shell, supporting tooling (`xwayland-satellite`, `nwg-look`, `alacritty`, `grim`, `slurp`, `swappy`, ...)
- **GUI programs:** Ghostty, KDE Connect, Zed, VSCodium, gparted, and more
- **Flatpaks:** Brave, Discord, LibreOffice, VLC, LocalSend, and more
- **Dev tools:** Go, Rust, Zig, Neovim, git, gh, ...
- **Dotfiles:** Pre-configured settings for Hyprland, Ghostty, Fish, Zed, and other tools

## Project Structure

```
CachyOS-Config/
├── config.yaml              # Image name, base image, default options
├── modules/                 # One YAML per package group (source of truth)
│   ├── programs.yaml        # GUI Programs
│   ├── devtools.yaml        # Dev Tools Packages
│   ├── flatpaks.yaml        # Flatpak Applications
│   └── window-manager.yaml  # Window Manager
├── dotfiles/                # Configuration files for installed apps
└── scripts/                 # Generated companion install script
    └── install.sh
```

The package lists live in `modules/*.yaml`; `scripts/install.sh` is generated from them with `bootc-yaml`. To edit what gets installed, change the YAML modules and regenerate — don't hand-edit the generated files.

## Install bootc-yaml

```bash
go install gitlab.com/beaman-coder/bootc-yaml@latest
```

## Prerequisites

- **Go** — required to install `bootc-yaml`
- **sudo** — needed by `scripts/install.sh` to install packages with `pacman`

## Quick Start

```bash
# 1. Scaffold a new project with the guided wizard
bootc-yaml init my-image

# 2. Regenerate the install script
bootc-yaml gen my-image --mode=shell

# 3. Install packages, Flatpaks, and dotfiles on CachyOS
cd my-image
chmod +x scripts/install.sh
./scripts/install.sh
```

## Customization

Everything that gets installed is driven by the YAML modules — no need to touch the generated install script:

- **Add packages:** add them to the relevant `packages` list in `modules/*.yaml`, or create a new module file (e.g. `modules/gaming.yaml`) — every `modules/*.yaml` file is picked up on generation.
- **Add Flatpaks:** add Flatpak app IDs to `modules/flatpaks.yaml`.
- **Change the base image:** edit `config.yaml` (`base_image`).
- **Regenerate:** run `bootc-yaml gen . --mode=shell` again.

See the [bootc-yaml README](https://gitlab.com/beaman-coder/bootc-yaml) for full commands and configuration details.
