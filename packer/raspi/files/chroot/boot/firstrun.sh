#!/bin/bash
set +e

#/usr/lib/raspberrypi-sys-mods/imager_custom enable_ssh
#/usr/lib/raspberrypi-sys-mods/regenerate_ssh_host_keys

rm -f /boot/firstrun.sh
sed -i 's| systemd.run.*||g' /boot/cmdline.txt

parted /dev/sda resizepart 2 100%
/root/getKey.sh | cryptsetup resize crypted
resize2fs /dev/mapper/crypted

exit 0
