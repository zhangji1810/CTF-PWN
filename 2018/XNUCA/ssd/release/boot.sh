#!/bin/bash

./qemu-system-x86_64 \
    -initrd ./rootfs.img \
    -kernel ./vmlinuz-4.8.0-52-generic \
    -append "console=ttyS0 root=/dev/sda oops=panic panic=1"  \
    -monitor /dev/null \
    -m 64M --nographic -L ./dependency/usr/loacl/share/qemu \
    -L ./pc-bios \
    -nographic \
    -device xnuca
