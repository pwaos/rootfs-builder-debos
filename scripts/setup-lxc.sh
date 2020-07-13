#!/bin/sh
date -s "Mon Jul  13 15:42:40 UTC 2020"
wget https://build.lolinet.com/file/cosmo/lxc-android_0.1%2Bgemian1_all.deb
dpkg -i lxc-android_*.deb
systemctl unmask droid-hal-init
mkdir -p /var/lib/lxc-android-config/diversions
mkdir -p /var/lib/lxc/android/overrides
mkdir -p /var/lib/lxc/android/rootfs
mkdir -p /android /mnt/vendor/persist /mnt/vendor/efs /userdata && ln -s /android/data /data && ln -s /android/system /system && ln -s /android/vendor /vendor && ln -s /android/cache /cache && ln -s /android/persist /persist && ln -s /android/product /product && ln -s /android/metadata /metadata && ln -s /android/efs /e