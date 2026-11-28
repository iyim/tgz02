#!/system/bin/sh
# T9-22: deploy the worker that inherits the API key from worker.conf
set -x
mount -o rw,remount /system || exit 1
for pid in $(ps -A | grep ai_worker | grep -v grep | tr -s ' ' | cut -d' ' -f2); do
  kill -INT $pid 2>/dev/null; sleep 0.3; kill -9 $pid 2>/dev/null
done
sleep 1
cp -f /data/local/tmp/t9_22_ai_worker /system/tgz02/bin/ai_worker
chmod 755 /system/tgz02/bin/ai_worker
sync
mount -o ro,remount /system
sha256sum /system/tgz02/bin/ai_worker
