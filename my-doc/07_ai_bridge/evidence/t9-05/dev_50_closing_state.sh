#!/system/bin/sh
# T9-05 closing state: nothing was changed on the device, and the accepted chain still works.
echo "=== date"; date
echo "=== factory :core / our stack"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core); echo "core_pid=$CORE"
grep libtg_ /proc/$CORE/maps | sed 's/^.* \//  \//' | sort -u
for s in tg_hook_sup tg_guard_sup; do echo "$s=$(getprop init.svc.$s)"; done
for n in tgb_bridge ai_worker; do echo "$n=$(pidof $n)"; done
echo "=== probe apps installed (test artifacts only)"
pm list packages | grep -E 'com.tgz02.(aidltest|providerprobe)'
echo "=== top / power"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
dumpsys power 2>/dev/null | grep -m1 mWakefulness
echo "=== END"
