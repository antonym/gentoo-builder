FROM gentoo/stage3-amd64:latest
MAINTAINER Antony Messerli <antony@mes.ser.li> 

# Add script
ADD pxe-craft-initrd-kernel /root/pxe-craft-initrd-kernel

# Add gentoo.iso
ADD gentoo.iso /root/gentoo.iso

# Create output dir
RUN mkdir /root/gentoo-images
