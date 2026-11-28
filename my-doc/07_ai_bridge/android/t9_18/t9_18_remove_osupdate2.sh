#!/system/bin/sh
# PackageManager scans every *.apk under /system/app recursively, so renaming the dir is
# not enough. Rename the APK itself so it is never parsed again.
mount -o rw,remount /system || { echo REMOUNT-FAILED; exit 1; }
echo "--- before ---"
find /system/app/Osupdate* -maxdepth 2 -name '*.apk*' 2>/dev/null
if [ -f /system/app/Osupdate.bak/Osupdate.apk ]; then
  mv /system/app/Osupdate.bak/Osupdate.apk /system/app/Osupdate.bak/Osupdate.apk.bak && echo "renamed apk -> Osupdate.apk.bak"
fi
echo "--- after ---"
find /system/app/Osupdate* -maxdepth 2 -name '*.apk*' 2>/dev/null
ls -l /system/app/Osupdate.bak
sync
mount -o ro,remount /system
mount | grep ' /system '
