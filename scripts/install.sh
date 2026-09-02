#!/bin/bash

# Dev Tools Packages
sudo rum install -y git \
 	gh \
 	glab \
 	golang \
 	gopls \
 	bat \
 	eza \
 	atuin \
 	starship \
 	zoxide \
 	mise

# GUI Programs
sudo rum install -y ghostty \
 	kde-connect \
 	helium-browser-bin \
 	zed \
 	gparted \
 	codium \
 	btop \
 	gpu-screen-recorder \
 	gpu-screen-recorder-ui

# Windows Manager
sudo rum install -y niri \
 	noctalia \
 	xwayland-satellite \
 	mate-polkit \
 	swayidle \
 	kitty \
 	wl-clipboard \
 	cliphist \
 	nwg-look \
 	grim \
 	slurp \
 	swappy \
 	xdg-desktop-portal-gtk \
 	umbriel-nightly \
 	xdg-desktop-portal-umbriel-nightly

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
 	xyz.riothedev.emojif \
 	org.videolan.VLC \
 	org.localsend.localsend_app \
 	org.pulseaudio.pavucontrol \
 	io.github.peazip.PeaZip \
 	net.nokyan.Resources \
 	com.transmissionbt.Transmission \
 	org.libreoffice.LibreOffice
