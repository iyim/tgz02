#!/system/bin/sh
# disable_rc.sh -- T6-03：停用（但不删除）init 启动项
#
#   su -c "/data/local/tmp/t6/disable_rc.sh"
#
# init 只解析目录里 *.rc 结尾的文件，所以把 tg_supervisor.rc 改名成
# tg_supervisor.rc.disabled 就等于"下次开机不再自动启动"，文件内容仍然留着，
# 重新启用只是把名字改回来。顺带把当前由 init 托管的实例停掉。
set -u
DIR=/system/etc/init
DST=$DIR/tg_supervisor.rc
OFF=$DIR/tg_supervisor.rc.disabled

# 先让 init 停掉这个服务（服务只有在本次开机解析过 rc 时才存在）
setprop ctl.stop tg_supervisor 2>/dev/null || true

if [ -f "$DST" ]; then
    mount -o remount,rw /system || { echo "ERROR: remount rw failed"; echo "EXIT=4"; exit 4; }
    mv -f "$DST" "$OFF" || { mount -o remount,ro /system; echo "ERROR: rename failed"; echo "EXIT=5"; exit 5; }
    sync
    mount -o remount,ro /system || echo "WARNING: remount ro failed"
    echo "disabled: $DST -> $OFF"
elif [ -f "$OFF" ]; then
    echo "already disabled: $OFF"
else
    echo "nothing to disable (no rc file present)"
fi

# 退出前确认没有残留进程（init 停服务是异步的，这里再兜一次底）
p=$(pidof tg_supervisor 2>/dev/null || true)
if [ -n "${p:-}" ]; then
    echo "killing leftover supervisor pid=$p"
    kill -TERM $p 2>/dev/null || true
    i=0
    while kill -0 $p 2>/dev/null && [ $i -lt 30 ]; do sleep 0.1; i=$((i+1)); done
    kill -0 $p 2>/dev/null && kill -KILL $p 2>/dev/null
fi
echo "supervisor running: $(pidof tg_supervisor 2>/dev/null || echo no)"
echo "EXIT=0"
