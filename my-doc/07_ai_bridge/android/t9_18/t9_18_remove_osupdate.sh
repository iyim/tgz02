#!/system/bin/sh
# T9-18: physically remove osupdate from /system (rename the app dir so PackageManager
# never scans it again). Reversible: rename back and reboot.
echo "=== mount before ==="
mount | grep ' /system '
echo

echo "=== remount rw ==="
mount -o rw,remount /system || { echo "REMOUNT FAILED"; exit 1; }
mount | grep ' /system '
echo

echo "=== list ==="
ls -ld /system/app/Osupdate 2>/dev/null
du -sh /system/app/Osupdate 2>/dev/null
echo

echo "=== rename ==="
if [ -d /system/app/Osupdate ]; then
  mv /system/app/Osupdate /system/app/Osupdate.bak && echo "renamed -> /system/app/Osupdate.bak"
  ls -ld /system/app/Osupdate.bak
else
  echo "already renamed:"
  ls -ld /system/app/Osupdate.bak 2>/dev/null
fi
echo

echo "=== sync + ro ==="
sync
mount -o ro,remount /system
mount | grep ' /system '
echo

echo "=== check from PM (still installed until reboot) ==="
pm path com.alibaba.ailabs.genie.osupdate
echo

echo "=== disk ==="
df -h /system /data 2>/dev/null | head -4
