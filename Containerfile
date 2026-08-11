# My-Niri-Image
FROM ghcr.io/ublue-os/bluefin:stable

LABEL containers.bootc=1

# Enable Terra Repos
RUN --mount=type=cache,dst=/var/cache/libdnf5 \
	--mount=type=tmpfs,target=/boot \
	--mount=type=tmpfs,target=/tmp \
	 curl -fsSL https://raw.githubusercontent.com/terrapkg/packages/f44/anda/terra/release/terra.repo \ 
	-o /etc/yum.repos.d/terra.repo && \
	dnf5 install -y --nogpgcheck terra-release && \ 
	dnf5 clean all

# Dev Tools Packages 
RUN --mount=type=cache,dst=/var/cache/libdnf5 \
	--mount=type=tmpfs,target=/boot \
	--mount=type=tmpfs,target=/tmp \
	dnf install -y --setopt=install_weak_deps=0 git \
 	gh \
 	go \
 	gopls \
 	zig \
 	rust \
 	cargo \
 	rust-analyzer \
 	neovim \
 	&& dnf clean all

# GUI Programs 
RUN --mount=type=cache,dst=/var/cache/libdnf5 \
	--mount=type=tmpfs,target=/boot \
	--mount=type=tmpfs,target=/tmp \
	dnf install -y --setopt=install_weak_deps=0 ghostty \
 	kde-connect \
 	helium-browser-bin \
 	gparted \
 	xhost \
 	zed \
 	codium \
 	@virtualization \
 	&& dnf clean all

RUN bootc container lint