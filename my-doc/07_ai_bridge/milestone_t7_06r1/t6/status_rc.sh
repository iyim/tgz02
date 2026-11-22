#!/system/bin/sh
# status_rc.sh -- T6-03：一次性打印启动托管的状态（部署 / init 服务 / 进程 / 日志）
#
#   su -c "/data/local/tmp/t6/status_rc.sh"
set -u
DIR=/system/etc/init
LOG=/data/local/tmp/t6/supervisor.log

echo "== rc file =="
ls -l $DIR/tg_supervisor.rc 2>/dev/null || echo "  not deployed"
ls -l $DIR/tg_supervisor.rc.disabled 2>/dev/null || echo "  no .disabled copy"
if [ -f $DIR/tg_supervisor.rc ]; then sha256sum $DIR/tg_supervisor.rc; fi

echo "== system mount =="
mount | grep -F /system

echo "== init service =="
echo "  init.svc.tg_supervisor = $(getprop init.svc.tg_supervisor)"

echo "== process =="
p=$(pidof tg_supervisor 2>/dev/null || true)
echo "  supervisor pid = ${p:-none}"

echo "== supervisor log tail =="
if [ -f $LOG ]; then
    tail -n 8 $LOG
else
    echo "  (no log yet)"
fi
echo "EXIT=0"
