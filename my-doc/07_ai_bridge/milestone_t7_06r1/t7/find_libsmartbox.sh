#!/system/bin/sh
# find_libsmartbox.sh -- 找到原厂库的真实路径（只读）
echo "=== maps of :core ==="
CORE=$(ps -A -o PID,ARGS 2>/dev/null | grep 'smartapp:core' | grep -v tg_supervisor | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "core=$CORE"
grep -o '/[^ ]*libsmartbox[^ ]*' /proc/$CORE/maps 2>/dev/null | sort -u
echo "=== common dirs ==="
for d in /system/lib /system/lib/arm /vendor/lib /vendor/lib/arm /system/app /system/priv-app /data/app; do
  ls -l $d/libsmartbox.so 2>/dev/null
done
echo "=== apk embedded? ==="
ls -l /system/app/*G*/*.apk /system/priv-app/*G*/*.apk 2>/dev/null | head -5
