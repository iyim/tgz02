#!/system/bin/sh
# Post-check after T9-02R2 / T9-04: is the device healthy?
echo "=== date"; date
echo "=== boot / power"
dumpsys power 2>/dev/null | grep -m1 mWakefulness
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
echo "=== factory :core"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core); echo "core_pid=$CORE"
grep libtg_ /proc/$CORE/maps | sed 's/^.* \//  \//' | sort -u
echo "=== init services"
for s in tg_hook_sup tg_guard_sup tg_stack tg_supervisor; do echo "$s=$(getprop init.svc.$s)"; done
echo "=== our resident stack"
for n in tgb_bridge ai_worker; do echo "$n=$(pidof $n)"; done
ps -A 2>/dev/null | grep -E 'app_process' | head -3
echo "=== boot config on /system"
ls -l /system/etc/init/tg_*
mount 2>/dev/null | grep -F " /system "
echo "=== rollback material"
ls -l /data/local/tmp/t9/rc_backup/
cat /data/local/tmp/t9/rc_backup/sha256.before
echo "=== factory app still installed and enabled"
pm list packages | grep -E 'com.alibaba.ailabs.genie.smartapp'
dumpsys package com.alibaba.ailabs.genie.smartapp | grep -m1 -E 'enabled='
echo "=== our probe app (test artifact, removable)"
dumpsys package com.tgz02.aidltest | grep -m1 userId=
echo "=== END"
