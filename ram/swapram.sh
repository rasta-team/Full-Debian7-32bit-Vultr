#!/bin/bash
# by Elang overdosis
dd if=/dev/zero of=/swapfile bs=1024 count=1024k

# buat swap
mkswap /swapfile

# jalan swapfile
swapon /swapfile

#auto star saat reboot
wget https://raw.githubusercontent.com/deeniedoank/autoscript2/master/ram/fstab
mv ./fstab /etc/fstab
chmod 644 /etc/fstab
sysctl vm.swappiness=10
#permission swapfile
chown root:root /swapfile 
chmod 0600 /swapfile
