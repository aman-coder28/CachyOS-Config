# Copy Scripts folder
FROM scratch AS ctx
COPY scripts /

# My-Niri-Image
FROM ghcr.io/ublue-os/bazzite-gnome:stable

LABEL containers.bootc=1

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
	--mount=type=cache,dst=/var/cache/libdnf5 \
	--mount=type=tmpfs,target=/tmp \
	/bin/sh /ctx/install.sh