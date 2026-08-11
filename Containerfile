# My-Niri-Image
FROM ghcr.io/ublue-os/bluefin:stable

# Enable DNF caching + disable weak deps
RUN dnf5 config-manager setopt keepcache=1 install_weak_deps=0

# Enable Terra Repos
RUN curl -fsSL https://raw.githubusercontent.com/terrapkg/packages/f44/anda/terra/release/terra.repo \ 
	-o /etc/yum.repos.d/terra.repo && \
	dnf5 install -y --nogpgcheck terra-release && \ 
	dnf5 clean all

# Dev Tools Packages 
RUN --mount=type=cache,dst=/var/cache/libdnf5 \
	--mount=type=tmpfs,target=/boot \
	--mount=type=tmpfs,target=/tmp \
	dnf5 install -y git \
 	gh \
 	go \
 	gopls \
 	zig \
 	rust \
 	cargo \
 	rust-analyzer \
 	neovim \
 	&& dnf5 clean all

# GUI Programs 
RUN --mount=type=cache,dst=/var/cache/libdnf5 \
	--mount=type=tmpfs,target=/boot \
	--mount=type=tmpfs,target=/tmp \
	dnf5 install -y ghostty \
 	kde-connect \
 	helium-browser-bin \
 	gparted \
 	xhost \
 	zed \
 	codium \
 	@virtualization \
 	&& dnf5 clean all

CMD ["/sbin/init"]

RUN bootc container lint