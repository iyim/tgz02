#!/system/bin/sh
# T9-18: probe what "appbox" actually is on this ROM
echo "=== 1. packages (appbox/applist/store/genie) ==="
pm list packages | grep -iE 'appbox|applist|store|market|download|genie|smartapp'
echo
echo "=== 2. processes ==="
ps -A | grep -iE 'appbox|applist|smartapp|genie'
echo
echo "=== 3. system app dirs ==="
ls -d /system/app/* /system/priv-app/* 2>/dev/null | grep -iE 'appbox|applist|store|smartapp|genie'
echo
echo "=== 4. ApplistDb files ==="
find /data /system -maxdepth 7 -iname '*Applist*' 2>/dev/null
echo
echo "=== 5. appbox files ==="
find /system /data -maxdepth 8 -iname '*appbox*' 2>/dev/null | head -50
echo
echo "=== 6. smartapp apk dir ==="
ls -l /system/app/smartapp 2>/dev/null
ls -l /system/app/smartapp/oat/arm 2>/dev/null
echo
echo "=== 7. who owns ApplistDb (uid) ==="
for f in $(find /data /system -maxdepth 7 -iname '*Applist*' 2>/dev/null); do
  ls -ln "$f"
done
echo
echo "=== 8. packages with 'aila'/'alibaba' ==="
pm list packages | grep -iE 'alibaba|aila|aliyun'
echo
echo "=== 9. third-party packages ==="
pm list packages -3
