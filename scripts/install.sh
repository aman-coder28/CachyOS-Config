#!/bin/bash
set -euo pipefail

echo "repository=https://repo.voiders.dev" | sudo tee /etc/xbps.d/voiders-dev-repo.conf
echo "repository=https://mirror.black-hole.dev/x86_64/" | sudo tee /etc/xbps.d/hyprland.conf
echo "repository=https://void.danklinux.com/dms/current" | sudo tee /etc/xbps.d/dms.conf
echo "repository=https://void.danklinux.com/danklinux/current" | sudo tee /etc/xbps.d/danklinux.conf

# Dev Tools Packages
sudo xbps-install -S git \
 	github-cli \
 	forgejo-cli \
 	go \
 	podman \
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
sudo xbps-xbps-install -S ghostty \
 	kdeconnect \
 	helium-browser \
 	zed \
 	gparted \
 	codium \
 	btop \
 	gpu-screen-recorder \
 	gpu-screen-recorder-ui \
 	amberol \
 	nwg-look \
 	pavucontrol

# System Services and Core
sudo xbsp-install -S linux-mainline \
	linux-mainline-headers \
	pipewire \
	wireplumber \
	NetworkManager \
	network-manager-applet \
	bluez \
	blueman \
	noto-fonts-ttf \
	noto-fonts-cjk \
	noto-fonts-emoji \
	ttf-jetbrains-mono \
	seatd \
	greetd \
	tuigreet

# Windows Manager
sudo xbps-install -S hyprland \
 	hyprpm \
 	hypridle \
 	hyprland-qt-support \
 	hyprpicker \
 	xdg-desktop-portal-hyprland \
 	quickshell \
 	cava \
 	noctalia \
 	noctalia-greeter \
 	xwayland-satellite \
 	mate-polkit \
 	alacritty \
 	wl-clipboard \
 	cliphist \
 	nwg-look \
 	grim \
 	slurp \
 	swappy \
 	niri

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

cp -rn ~/home/zeamanuel/Void-Linux-Config/dotfiles/* ~/.config/
