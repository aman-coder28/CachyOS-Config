#!/bin/bash
set -euo pipefail

# Enable Terra Repos
curl -fsSL https://raw.githubusercontent.com/terrapkg/packages/f44/anda/terra/release/terra.repo \
	-o /etc/yum.repos.d/terra.repo && \
	dnf install -y --nogpgcheck terra-release 

# Disable Installing Weak Depedencies
dnf config-manager setopt install_weak_deps=0

# Dev Tools Packages 
dnf install -y git \
 	gh \
 	golang \
 	gopls \
 	zig \
 	rust \
 	cargo \
 	rust-analyzer \
 	neovim

# GUI Programs 
dnf install -y ghostty \
 	kde-connect \
 	helium-browser-bin \
 	gparted \
 	xhost \
 	zed \
 	codium \
 	gnome-system-monitor

# Windows Manager 
dnf install -y niri \
 	noctalia \
 	xwayland-satellite \
 	mate-polkit \
 	swayidle \
 	kitty \
 	keyd \
 	nwg-look

bootc container lint