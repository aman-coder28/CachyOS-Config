#!/bin/bash
set -euo pipefail

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
 	kde-connect \
 	helium-browser-bin \
 	zed \
 	gparted \
 	codium \
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
 	noctalia \
 	xwayland-satellite \
 	mate-polkit \
 	swayidle \
 	kitty \
 	wl-clipboard \
 	cliphist \
 	nwg-look \
 	xdg-desktop-portal-gtk \
 	sddm \
 	sddm-breeze \
 	qt5-qtgraphicaleffects \
 	qt5-qtquickcontrols2 \
 	plasma-workspace

bootc container lint