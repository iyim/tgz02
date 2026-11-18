#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:9472928:448dc4da14292fc8e9fe42fe65261038a0bcc65f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:8074144:518e492ca1afdbbf817fcd2c2e6f75bc26cf8f02 EMMC:/dev/block/platform/bootdevice/by-name/recovery 448dc4da14292fc8e9fe42fe65261038a0bcc65f 9472928 518e492ca1afdbbf817fcd2c2e6f75bc26cf8f02:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
