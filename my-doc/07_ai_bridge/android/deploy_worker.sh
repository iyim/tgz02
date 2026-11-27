#!/system/bin/sh
# deploy_worker.sh -- replace the worker binary in the IMAGE and restart it through the image launcher.
#
# T9-12 起，设备上的启动链是固定的（/system/etc/init/tg_stack.rc）：
#   init -> /system/tgz02/bin/boot_stack.sh
#        -> /system/tgz02/scripts/run_ai_worker.sh
#        -> /system/tgz02/scripts/run_ai_worker.sh.accepted   (BIN=/system/tgz02/bin/ai_worker)
# 只有"状态/日志"放在 /data/local/tmp/t5_bridge；程序一律从只读镜像里执行。
#
# 2026-11-27 的坑：/data/local/tmp/t5_bridge 里还留着开发期的 run_ai_worker.sh(.accepted)，
# 它的 BIN=$D/bin/ai_worker。手动重启时如果用了那份脚本，跑的就是 /data 下的旧二进制，
# 镜像里换了也没用。那两份已经改名成 *.dev_only；本脚本只走镜像启动器。
#
# 用法： sh deploy_worker.sh /data/local/tmp/ai_worker_rNN
set -u
NEW=${1:-/data/local/tmp/ai_worker_new}
[ -f "$NEW" ] || { echo "missing binary: $NEW"; exit 2; }

echo "== stop running worker =="
for p in $(ps -A -o PID,ARGS | grep 'ai_worker --work-dir' | grep -v grep | sed 's/^ *//' | cut -d' ' -f1); do
    echo "  kill -INT $p ($(readlink /proc/$p/exe))"
    kill -INT "$p" 2>/dev/null
done
sleep 3
for p in $(ps -A -o PID,ARGS | grep 'ai_worker --work-dir' | grep -v grep | sed 's/^ *//' | cut -d' ' -f1); do
    kill -TERM "$p" 2>/dev/null
done
sleep 1

echo "== install into the image =="
mount -o rw,remount /system || true
mkdir -p /data/local/tmp/t9_17_bak
[ -f /system/tgz02/bin/ai_worker ] && cp /system/tgz02/bin/ai_worker /data/local/tmp/t9_17_bak/ai_worker.prev
cp "$NEW" /system/tgz02/bin/ai_worker
chmod 755 /system/tgz02/bin/ai_worker
mount -o ro,remount /system || true
sha256sum /system/tgz02/bin/ai_worker "$NEW"

echo "== start through the image launcher =="
sh /system/tgz02/scripts/run_ai_worker.sh start 2>&1 | tail -3
sleep 3

echo "== assert the running binary is the image one =="
OK=1
for p in $(ps -A -o PID,ARGS | grep 'ai_worker --work-dir' | grep -v grep | sed 's/^ *//' | cut -d' ' -f1); do
    EXE=$(readlink /proc/$p/exe)
    echo "  pid $p exe=$EXE"
    sha256sum /proc/$p/exe
    case "$EXE" in
        /system/tgz02/bin/ai_worker) ;;
        *) echo "  ERROR: not running from the image"; OK=0 ;;
    esac
done
[ "$OK" = "1" ] && echo "DEPLOY OK (running from /system/tgz02/bin/ai_worker)" || echo "DEPLOY FAILED"
