# My-Niri-Image
FROM ghcr.io/ublue-os/bluefin:stable

# Enable Dnf Caching
RUN dnf5 config-manager setopt keepcache=1 install_weak_deps=0

# Enable Terra Repos
RUN curl -fsSL https://raw.githubusercontent.com/terrapkg/packages/f44/anda/terra/release/terra.repo \
  -o /etc/yum.repos.d/terra.repo && \
  dnf5 install -y --nogpgcheck terra-release && \
  dnf5 clean all

# Dev Tools Packages 
RUN dnf5 install -y git \
 	gh \
 	ghostty \
 	go \
 	gopls \
 	zig \
 	rust \
 	cargo \
 	rust-analyzer \
 	neovim \
 	&& dnf5 clean all 

# GUI Programs 
RUN dnf5 install -y ghostty \
 	kde-connect \
 	helium-browser-bin \
 	xhost \
 	gparted \
 	zed \
 	codium \
 	&& dnf5 clean all 

RUN bootc container lint