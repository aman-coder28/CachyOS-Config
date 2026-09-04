#!/bin/bash
set -euo pipefail

<<<<<<< HEAD
=======
<<<<<<< HEAD
# Enable Terra Repos
rpmkeys --import /etc/pki/rpm-gpg/RPM-GPG-KEY-terra44
sed -i 's/enabled=0/enabled=1/' /etc/yum.repos.d/terra.repo 

# Packages to be Removed from the base image
rm -f /usr/share/applications/waydroid-container-restart.desktop
rm -f /usr/libexec/waydroid-container-restart \
  /usr/libexec/waydroid-container-start \
  /usr/libexec/waydroid-container-stop \
  /usr/libexec/waydroid-fix-controllers
rm -rf /usr/share/applications/Waydroid

dnf remove -y --noautoremove waydroid \
 	waydroid-selinux \
 	lutris \
 	mangohud

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
=======
>>>>>>> 3095346 (Copy Dotfiles)
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
<<<<<<< HEAD
=======
>>>>>>> bcd7ef6 (Copy Dotfiles)
>>>>>>> 3095346 (Copy Dotfiles)
 	kde-connect \
 	helium-browser-bin \
 	zed \
 	gparted \
 	codium \
<<<<<<< HEAD
=======
<<<<<<< HEAD
 	btop

# Virtualization packages 
dnf install -y qemu-system-x86 \
 	qemu-img \
 	swtpm \
 	edk2-ovmf \
 	virt-viewer \
 	passt \
 	libvirt-daemon-kvm \
 	libvirt-daemon-config-network \
 	virt-manager \
 	virt-install

# Windows Manager 
dnf install -y niri \
=======
>>>>>>> 3095346 (Copy Dotfiles)
 	btop \
 	gpu-screen-recorder \
 	gpu-screen-recorder-ui

# Windows Manager 
sudo rum install -y niri \
<<<<<<< HEAD
=======
>>>>>>> bcd7ef6 (Copy Dotfiles)
>>>>>>> 3095346 (Copy Dotfiles)
 	noctalia \
 	xwayland-satellite \
 	mate-polkit \
 	swayidle \
 	kitty \
 	wl-clipboard \
 	cliphist \
 	nwg-look \
<<<<<<< HEAD
=======
<<<<<<< HEAD
 	xdg-desktop-portal-gtk \
 	sddm \
 	sddm-breeze \
 	qt5-qtgraphicaleffects \
 	qt5-qtquickcontrols2 \
 	plasma-workspace

bootc container lint
=======
>>>>>>> 3095346 (Copy Dotfiles)
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
 	xyz.riothedev.emojify \
 	org.videolan.VLC \
 	org.localsend.localsend_app \
 	org.pulseaudio.pavucontrol \
 	io.github.peazip.PeaZip \
 	net.nokyan.Resources \
 	com.transmissionbt.Transmission \
 	org.libreoffice.LibreOffice
<<<<<<< HEAD
=======

cp -rn ~/Niri-Container-rakuos/dotfiles/* ~/.config/
>>>>>>> bcd7ef6 (Copy Dotfiles)
>>>>>>> 3095346 (Copy Dotfiles)
