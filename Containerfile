# My-Niri-Image
FROM ghcr.io/ublue-os/bluefin:stable

# Enable Terra Repos
RUN curl -fsSL https://raw.githubusercontent.com/terrapkg/packages/f44/anda/terra/release/terra.repo \ 
	-o /etc/yum.repos.d/terra.repo && \ 
	dnf5 install -y --nogpgcheck terra-release

# Dev Tools Packages 
RUN dnf5 install -y git \
 	gh \
 	go \
 	gopls \
 	zig \
 	rust \
 	cargo \
 	rust-analyzer \
 	neovim \
 	
# GUI Programs 
RUN dnf5 install -y ghostty \
 	kde-connect \
 	helium-browser-bin \
 	gparted \
 	xhost \
 	zed \
 	codium \
 	&& dnf5 clean all 

RUN bootc container lint