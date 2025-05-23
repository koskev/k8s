#!/bin/bash
chroot /mnt /bin/bash <<"EOT"
set -x
apt-get update && apt-get -y install cryptsetup busybox dropbear-initramfs jq ntp
echo "CRYPTSETUP=y" >> /etc/cryptsetup-initramfs/conf-hook
echo "DROPBEAR=y" >> /etc/initramfs-tools/initramfs.conf
patch --no-backup-if-mismatch /usr/share/initramfs-tools/hooks/cryptroot << 'EOF'
--- cryptroot
+++ cryptroot
@@ -33,7 +33,7 @@
         printf '%s\0' "$target" >>"$DESTDIR/cryptroot/targets"
         crypttab_find_entry "$target" || return 1
         crypttab_parse_options --missing-path=warn || return 1
-        crypttab_print_entry
+        printf '%s %s %s %s\n' "$_CRYPTTAB_NAME" "$_CRYPTTAB_SOURCE" "$_CRYPTTAB_KEY" "$_CRYPTTAB_OPTIONS" >&3
     fi
 }
EOF
sed -i 's/^TIMEOUT=.*/TIMEOUT=600/g' /usr/share/cryptsetup/initramfs/bin/cryptroot-unlock
cp /root/.ssh/authorized_keys /etc/dropbear/initramfs/authorized_keys
mkdir -p /boot/firmware
pushd /usr/src
for f in linux-headers-*; do
	KERNEL_VERSION=${f#"linux-headers-"}
	cp /usr/src/linux-headers-${KERNEL_VERSION}/.config /boot/config-${KERNEL_VERSION}
	update-initramfs -c -k ${KERNEL_VERSION}
done
popd
cp /boot/firmware/initramfs* /boot/

systemctl disable userconfig
systemctl enable getty@tty1
EOT
