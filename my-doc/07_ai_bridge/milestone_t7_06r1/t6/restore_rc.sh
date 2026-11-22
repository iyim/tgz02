#!/system/bin/sh
# restore_rc.sh -- T6-03：把启动配置恢复到部署前的状态
#
#   su -c "/data/local/tmp/t6/restore_rc.sh"
#
# 动作：停服务 → 从 /system/etc/init/ 删除所有 tg_supervisor* 文件
#      （本机 init 会解析目录里的每个普通文件，所以必须真的删掉/移走）
#      → 删掉 /data 里留档的 .disabled 副本 → /system 挂回只读 → 打印当前条目数。
# 删除之后系统回到"原厂启动行为"：开机不再有任何 T6 相关服务被 init 拉起。
set -u
DIR=/system/etc/init
KEEP=/data/local/tmp/t6/tg_supervisor.rc.disabled
SNAP=/data/local/tmp/t6/system_etc_init.before

setprop ctl.stop tg_supervisor 2>/dev/null || true

found=0
for f in "$DIR"/tg_supervisor*; do
    [ -e "$f" ] || continue
    found=1
done

if [ $found -eq 1 ]; then
    mount -o remount,rw /system || { echo "ERROR: remount rw failed"; echo "EXIT=4"; exit 4; }
    for f in "$DIR"/tg_supervisor*; do
        [ -e "$f" ] || continue
        rm -f "$f" && echo "removed: $f"
    done
    sync
    mount -o remount,ro /system || echo "WARNING: remount ro failed"
else
    echo "nothing to restore (no tg_supervisor file in $DIR)"
fi
rm -f "$KEEP"

p=$(pidof tg_supervisor 2>/dev/null || true)
if [ -n "${p:-}" ]; then
    echo "killing leftover supervisor pid=$p"
    kill -TERM $p 2>/dev/null || true
    sleep 0.5
    kill -0 $p 2>/dev/null && kill -KILL $p 2>/dev/null
fi

echo "current entries in $DIR: $(ls -l $DIR | grep -c '^-' || true)"
ls $DIR | grep -F tg_supervisor || echo "  (no tg_supervisor* file: factory state)"
mount | grep -F /system
echo "EXIT=0"
