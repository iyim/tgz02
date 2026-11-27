#!/system/bin/sh
# Deploy the same worker binary to BOTH paths the device uses:
#   /data/local/tmp/t5_bridge/bin/ai_worker  <- what run_ai_worker.sh actually execs (boot path)
#   /system/tgz02/bin/ai_worker              <- mirror / previous boot-stack path
NEW=/data/local/tmp/ai_worker_r9
BAK=/data/local/tmp/t9_17_bak
mkdir -p "$BAK"

PIDS=$(ps -A -o PID,ARGS | grep 'ai_worker --work-dir' | grep -v grep | sed 's/^ *//' | cut -d' ' -f1)
echo "stopping: $PIDS"
for p in $PIDS; do kill -INT "$p" 2>/dev/null; done
sleep 3
PIDS=$(ps -A -o PID,ARGS | grep 'ai_worker --work-dir' | grep -v grep | sed 's/^ *//' | cut -d' ' -f1)
for p in $PIDS; do kill -TERM "$p" 2>/dev/null; done
sleep 1

cp /data/local/tmp/t5_bridge/bin/ai_worker "$BAK/ai_worker.t5bridge_before_r9" 2>/dev/null
cp "$NEW" /data/local/tmp/t5_bridge/bin/ai_worker
chmod 755 /data/local/tmp/t5_bridge/bin/ai_worker

mount -o rw,remount /system
cp "$NEW" /system/tgz02/bin/ai_worker
chmod 755 /system/tgz02/bin/ai_worker
mount -o ro,remount /system

echo "=== hashes after deploy ==="
sha256sum "$NEW" /data/local/tmp/t5_bridge/bin/ai_worker /system/tgz02/bin/ai_worker

sh /data/local/tmp/t5_bridge/run_ai_worker.sh start
sleep 3
echo "=== running ==="
for p in $(ps -A -o PID,ARGS | grep 'ai_worker --work-dir' | grep -v grep | sed 's/^ *//' | cut -d' ' -f1); do
    echo "pid $p -> $(readlink /proc/$p/exe)"
    sha256sum /proc/$p/exe
done
