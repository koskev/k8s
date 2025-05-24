#!/bin/bash

set -x

KEY=$(/tmp/chroot/root/getKey.sh)

parted --script /dev/sda mklabel gpt mkpart primary 1MiB 1000MiB mkpart primary 1000MiB 100% set 1 boot on
# Extract here to give the system enough time for the partitions to appear
unxz /tmp/pi_image.img.xz
echo "$KEY" | cryptsetup -q luksFormat -c xchacha20,aes-adiantum-plain64 --pbkdf-memory 512000 --pbkdf-parallel=1 /dev/sda2
echo "$KEY" | cryptsetup open /dev/sda2 crypted
losetup -Pf /tmp/pi_image.img
dd if=/dev/loop1p1 of=/dev/sda1 bs=1M
dd if=/dev/loop1p2 of=/dev/mapper/crypted bs=1M
mount /dev/mapper/crypted /mnt && mount /dev/sda1 /mnt/boot
rsync -rP /tmp/chroot/ /mnt/
UUID=$(blkid -o json | jq -r '. | select(.type != null) | select (.type | contains("crypto_LUKS")) | .uuid')

# This fails with "Dependency failed for kernel-command-line.target". Maybe the /boot mountpoint?
#echo "console=serial0,115200 console=tty1 rootfstype=ext4 fsck.repair=yes rootwait systemd.run=/root/firstrun.sh systemd.run_success_action=reboot systemd.run_failure_action=none systemd.unit=kernel-command-line.target plymouth.ignore-serial-consoles root=/dev/mapper/crypted cryptdevice=UUID=$UUID:crypted" > /mnt/boot/cmdline.txt
echo "console=serial0,115200 console=tty1 rootfstype=ext4 fsck.repair=yes rootwait plymouth.ignore-serial-consoles root=/dev/mapper/crypted cryptdevice=UUID=$UUID:crypted" > /mnt/boot/cmdline.txt
echo "crypted UUID=$UUID none luks,initramfs,keyscript=/root/getKey.sh" > /mnt/etc/crypttab


ORIGNAL_HOSTNAME=$(cat /mnt/etc/hostname)
sed -i "s/$ORIGNAL_HOSTNAME/$HOSTNAME/g" /mnt/etc/hostname
sed -i "s/$ORIGNAL_HOSTNAME/$HOSTNAME/g" /mnt/etc/hosts
echo "PasswordAuthentication no" >> /mnt/etc/sshd/sshd_config
# Weird create a user message
rm /mnt/etc/ssh/sshd_config.d/rename_user.conf

mount --bind /dev /mnt/dev
mount --bind /dev/pts /mnt/dev/pts
mount --bind /sys /mnt/sys
mount --bind /proc /mnt/proc

