#!/system/bin/sh
set -x
mount -o rw,remount /data 2>/dev/null
cp -f /data/local/tmp/20_home_lock.new /data/adb/service.d/20_home_lock.sh
chmod 755 /data/adb/service.d/20_home_lock.sh
ls -l /data/adb/service.d/20_home_lock.sh
grep -n osupdate /data/adb/service.d/20_home_lock.sh
