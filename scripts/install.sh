#!/bin/bash
set -euo pipefail

# Dev Tools Packages
sudo pacman -S git \
 	github-cli \
 	glab \
 	go \
 	gopls \
 	bat \
 	eza \
 	atuin \
 	starship \
 	zoxide \
 	nodejs \
 	pnpm \
 	npm

# GUI Programs
sudo pacman -S ghostty \
 	kdeconnect \
 	helium-browser-bin \
 	zed \
 	gparted \
 	codium \
 	btop \
 	gpu-screen-recorder \
 	gpu-screen-recorder-ui

# Windows Manager
sudo pacman -S niri \
 	noctalia \
 	xwayland-satellite \
 	mate-polkit \
 	alacritty \
 	wl-clipboard \
 	cliphist \
 	nwg-look \
 	grim \
 	slurp \
 	swappy \
 	qgnomeplatform-qt5 \
 	qgnomeplatform-qt6 \
 	qt6-qtwayland-adwaita-decoration \
 	hyprland \
 	hyprpm \
 	hypridle \
 	xdg-desktop-portal-hyprland \
 	quickshell

# Flatpak Apps
flatpak install -y flathub ai.opencode.opencode \
 	com.belmoussaoui.Authenticator \
 	com.brave.Browser \
 	com.discordapp.Discord \
 	com.github.neithern.g4music \
 	com.github.tchx84.Flatseal \
 	com.mattjakeman.ExtensionManager \
 	com.protonvpn.www \
 	com.vysp3r.ProtonPlus \
 	io.bassi.Amberol \
 	io.github.kolunmi.Bazaar \
 	io.github.realmazharhussain.GdmSettings \
 	me.proton.Pass \
 	org.gnome.Extensions \
 	org.gnome.Geary \
 	org.gnome.Mahjongg \
 	org.gnome.gitlab.wwarner.Solitaire \
 	page.tesk.Refine \
 	xyz.riothedev.emojify \
 	org.videolan.VLC \
 	org.localsend.localsend_app \
 	org.pulseaudio.pavucontrol \
 	io.github.peazip.PeaZip \
 	net.nokyan.Resources \
 	com.transmissionbt.Transmission \
 	org.libreoffice.LibreOffice

cp -rn ~/home/zeamanuel/CachyOS-Config/dotfiles/* ~/.config/
