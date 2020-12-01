#!/bin/bash


rootfs="/media/biba_bo/b584ba8d-81c5-4880-a0fc-c6e989301fd8"
sudo cp /usr/bin/qemu-aarch64-static $rootfs/usr/bin

sudo mount -t proc /proc $rootfs/proc 
sudo mount -o bind /dev $rootfs/dev  
sudo mount -o bind /dev/pts $rootfs/dev/pts 
sudo mount -o bind /sys $rootfs/sys 

sudo chroot $rootfs /bin/bash

sudo umount $rootfs/{sys,proc,dev/pts,dev}
