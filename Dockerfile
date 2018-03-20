# name the portage image
FROM gentoo/portage:latest as portage

# image is based on stage3-amd64
FROM gentoo/stage3-amd64:latest

# copy the entire portage volume in
COPY --from=portage /usr/portage /usr/portage

MAINTAINER Antony Messerli <antony@mes.ser.li> 

# Add script
ADD pxe-craft-initrd-kernel /root/pxe-craft-initrd-kernel

# Add gentoo.iso
ADD gentoo.iso /root/gentoo.iso

# Create output dir
RUN mkdir /root/gentoo-images

# Install needed packages
RUN emerge -qv app-arch/cpio
RUN emerge -qv app-arch/gzip
