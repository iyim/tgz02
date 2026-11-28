#!/system/bin/sh
# T9-19: block the appbox download host at the DNS layer.
#   Every installable applist row points at
#     https://ailabs.alibabausercontent.com/largeFile/*.apk  (or /genie-screen-apk/*)
#   so with that host unreachable the catalogue can be refreshed as often as the server
#   likes and nothing can actually be downloaded. Verified: the DB was restored to 16 rows
#   by the server a minute after we trimmed it, so data edits alone are not a fix.
BAK=/data/local/tmp/t9_19_bak
mkdir -p $BAK
cp -f /system/etc/hosts $BAK/hosts.orig

mount -o rw,remount /system || { echo REMOUNT-FAILED; exit 1; }
grep -q 'alibabausercontent' /system/etc/hosts || \
  printf '127.0.0.1\tailabs.alibabausercontent.com\n' >> /system/etc/hosts
sync
mount -o ro,remount /system
echo "=== hosts now ==="
cat /system/etc/hosts
echo
echo "=== resolution check ==="
ping -c 1 -W 1 ailabs.alibabausercontent.com 2>&1 | head -3
