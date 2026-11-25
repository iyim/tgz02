#!/system/bin/sh
# t912_probe.sh -- T9-12: prove the on-device ext4 build chain (small image).
set -e
rm -rf /cache/t912
mkdir -p /cache/t912/root/etc/init
mkdir -p /cache/t912/root/app
cp /system/etc/init/tg_stack.rc /cache/t912/root/etc/init/
cp /system/etc/hosts /cache/t912/root/etc/
echo "== staging tree =="
find /cache/t912/root -type f -exec ls -l {} \;
echo "== make_ext4fs =="
make_ext4fs -l 64M -a /system -L t912probe /cache/t912/probe.img /cache/t912/root
ls -l /cache/t912/probe.img
echo "== tune2fs =="
tune2fs -l /cache/t912/probe.img | head -12
echo "== debugfs listing =="
debugfs -R "ls -l /" /cache/t912/probe.img 2>/dev/null
debugfs -R "ls -l /etc" /cache/t912/probe.img 2>/dev/null
echo "SHA256: $(sha256sum /cache/t912/probe.img)"
echo "EXIT=0"
