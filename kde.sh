#!/bin/bash

sudo sed -i 's/^# UseSyslog/UseSyslog/g; s/^# Color/Color/g; s/^#CheckSpace/CheckSpace/g; s/^# VerbosePkgLists/VerbosePkgLists/g; s/^# ParallelDownloads = 5/ParallelDownloads = 5/g' /etc/pacman.conf

pacman -Rddss iwd kwrited vim nano htop plasma-workspace-wallpapers discover plasma-welcome  plasma-browser-integration plasma-disks plasma-firewall plasma-thunderbolt egl-wayland  xf86-video-ati kgamma5 bluedevil ksshaskpass kwallet-pam oxygen oxygen-sounds kate  plasma-systemmonitor 

pacman -S neovim git noto-fonts-cjk noto-fonts-emoji noto-fonts-emoji ttf-opensans

sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g; s/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet"/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet nowatchdog"/g' /etc/default/grub

sudo grub-mkconfig -o /boot/grub/grub.cfg
