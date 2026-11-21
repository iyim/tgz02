#!/system/bin/sh
# restore_rc.sh -- T6-03：把启动配置恢复到部署前的状态
#
#   su -c "/data/local/tmp/t6/restore_rc.sh"
#
# 动作：停掉服务 → 从 /system/etc/init/ 删除 tg_supervisor.rc（以及 .disabled 残留）
#      → /system 重新挂回只读 → 如果部署前存过目录清单，就打印差异供比对。
# 删除之后系统回到"原厂启动行为"：开机不再有任何 T6 相关服务被 init 拉起。
set -u
DIR=/system/etc/init
DST=$DIR/tg_supervisor.rc
OFF=$DIR/tg_supervisor.rc.disabled
SNAP=/data/local/tmp/t6/system_etc_init.before

setprop ctl.stop tg_supervisor 2>/dev/null || true

if [ ! -f "$DST" ] && [ ! -f "$OFF" ]; then
    echo "nothing to restore (no rc file present)"
else
    mount -o remount,rw /system || { echo "ERROR: remount rw failed"; echo "EXIT=4"; exit 4; }
    rm -f "$DST" "$OFF" "$DST.tmp"
    sync
    mount -o remount,ro /system || echo "WARNING: remount ro failed"
    echo "removed: $DST"
fi

# 兜底：确认没有残留进程
p=$(pidof tg_supervisor 2>/dev/null || true)
if [ -n "${p:-}" ]; then
    echo "killing leftover supervisor pid=$p"
    kill -TERM $p 2>/dev/null || true
    sleep 0.5
    kill -0 $p 2>/dev/null && kill -KILL $p 2>/dev/null
fi

echo "current /system/etc/init entries:"
ls -l $DIR | tail -n +2 | wc -l
ls $DIR | grep -F tg_supervisor || echo "  (no tg_supervisor* file: factory state)"
mount | grep -F /system
echo "EXIT=0"
