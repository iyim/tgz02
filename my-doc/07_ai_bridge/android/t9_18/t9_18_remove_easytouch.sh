#!/system/bin/sh
# T9-18: remove the preinstalled EasyTouch launcher overlay.
#   /system/app/easytouch.apk  4.6.1  PERSISTENT  →  151MB across three processes,
#   and its full-screen "选择应用" overlay was what hid our desktop this morning.
#   Its app drawer is replaced by the product's own 设置 → 应用管理 page.
echo "=== 0. before ==="
ps -A | grep shere | grep -v grep
free -m | head -2
echo

echo "=== 1. backup apk ==="
BAK=/data/local/tmp/t9_18_bak
mkdir -p $BAK
cp -f /system/app/easytouch.apk $BAK/easytouch-4.6.1.apk
ls -l $BAK/easytouch-4.6.1.apk
echo

echo "=== 2. rename so PackageManager never scans it ==="
mount -o rw,remount /system || { echo REMOUNT-FAILED; exit 1; }
if [ -f /system/app/easytouch.apk ]; then
  mv /system/app/easytouch.apk /system/app/easytouch.apk.bak && echo "renamed -> /system/app/easytouch.apk.bak"
fi
ls -l /system/app/easytouch*
sync
mount -o ro,remount /system
mount | grep ' /system '
echo

echo "=== 3. kill running copies (system still has the package until reboot) ==="
for pid in $(ps -A -o PID,NAME | grep shere | grep -v grep | tr -s ' ' | cut -d' ' -f2); do
  echo "kill $pid"; kill -9 $pid 2>/dev/null
done
sleep 3
echo "left: $(ps -A | grep shere | grep -v grep | wc -l)"
echo

echo "=== 4. after ==="
free -m | head -2
cat /proc/loadavg
