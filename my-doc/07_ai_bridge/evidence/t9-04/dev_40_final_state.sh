#!/system/bin/sh
echo "=== date"; date
echo "=== probe artifacts on device"
ls -l /data/local/tmp/t9/t9_04/
sha256sum /data/local/tmp/t9/t9_04/aidl_probe.dex /data/local/tmp/t9/t9_04/aidl_probe.apk
echo "=== installed probe package"
dumpsys package com.tgz02.aidltest | grep -E 'versionName|userId=|lastUpdateTime' | head -4
pm path com.tgz02.aidltest
echo "=== the accepted runtime stack is untouched"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core); echo "core_pid=$CORE"
grep libtg_ /proc/$CORE/maps | sed 's/^.* \//  \//' | sort -u
for s in tg_hook_sup tg_guard_sup; do echo "$s=$(getprop init.svc.$s)"; done
for n in tgb_bridge ai_worker; do echo "$n=$(pidof $n)"; done
echo "=== top activity / power now"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
dumpsys power 2>/dev/null | grep -m1 mWakefulness
echo "=== factory rollback material (from the T9-02R2 work)"
ls -l /data/local/tmp/t9/rc_backup/
cat /data/local/tmp/t9/rc_backup/sha256.before
echo "=== END"
