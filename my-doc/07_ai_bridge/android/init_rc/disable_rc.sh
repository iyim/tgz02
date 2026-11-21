#!/system/bin/sh
# disable_rc.sh -- T6-03：停用 init 启动项（把 rc 移出导入目录）
#
#   su -c "/data/local/tmp/t6/disable_rc.sh"
#
# 关键：本机 init 会解析 /system/etc/init 下的**每个普通文件**，不看 .rc 后缀
# （实测：改名成 tg_supervisor.rc.disabled 后服务仍然被拉起）。所以"停用"必须
# 把文件彻底移出这个目录；这里把它搬到 /data/local/tmp/t6/ 留档，恢复时用。
# 顺带 setprop ctl.stop 把本次开机由 init 托管的实例停掉。
set -u
DIR=/system/etc/init
DST=$DIR/tg_supervisor.rc
KEEP=/data/local/tmp/t6/tg_supervisor.rc.disabled

setprop ctl.stop tg_supervisor 2>/dev/null || true

if [ -f "$DST" ] || [ -e "$DIR/tg_supervisor.rc.disabled" ]; then
    mount -o remount,rw /system || { echo "ERROR: remount rw failed"; echo "EXIT=4"; exit 4; }
    if [ -e "$DIR/tg_supervisor.rc.disabled" ]; then
        mv -f "$DIR/tg_supervisor.rc.disabled" "$KEEP" 2>/dev/null || rm -f "$DIR/tg_supervisor.rc.disabled"
        echo "moved stale .disabled copy out of $DIR"
    fi
    if [ -f "$DST" ]; then
        cp -f "$DST" "$KEEP" 2>/dev/null || true
        rm -f "$DST" || { mount -o remount,ro /system; echo "ERROR: remove failed"; echo "EXIT=5"; exit 5; }
        echo "removed from init import dir: $DST (kept at $KEEP)"
    fi
    sync
    mount -o remount,ro /system || echo "WARNING: remount ro failed"
else
    echo "nothing to disable (no tg_supervisor file in $DIR)"
fi

# init 停服务是异步的，这里再兜一次底
p=$(pidof tg_supervisor 2>/dev/null || true)
if [ -n "${p:-}" ]; then
    echo "killing leftover supervisor pid=$p"
    kill -TERM $p 2>/dev/null || true
    i=0
    while kill -0 $p 2>/dev/null && [ $i -lt 30 ]; do sleep 0.1; i=$((i+1)); done
    kill -0 $p 2>/dev/null && kill -KILL $p 2>/dev/null
fi
echo "entries left in $DIR: $(ls $DIR | grep -c tg_supervisor || true)"
echo "supervisor running: $(pidof tg_supervisor 2>/dev/null || echo no)"
echo "EXIT=0"
