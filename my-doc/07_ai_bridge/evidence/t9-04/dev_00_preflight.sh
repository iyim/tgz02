#!/system/bin/sh
# T9-04 preflight: the accepted runtime stack, the factory :core, and who is on top.
echo "=== date"; date
echo "=== factory :core"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core)
echo "core_pid=$CORE"
if [ -n "$CORE" ]; then
    echo "libtg mappings in :core:"
    grep libtg_ /proc/$CORE/maps | sed 's/^.* \//  \//' | sort -u
fi
echo "=== init services"
for s in tg_hook_sup tg_guard_sup tg_stack tg_supervisor; do
    echo "$s=$(getprop init.svc.$s)"
done
echo "=== our resident processes"
for n in tgb_bridge ai_worker tts_exec.t5; do echo "$n=$(pidof $n)"; done
ps -A 2>/dev/null | grep -E 'app_process|tts_exec' | head -5
echo "=== top activity / screen"
dumpsys activity activities 2>/dev/null | grep -m2 -E 'mResumedActivity|mFocusedActivity'
dumpsys power 2>/dev/null | grep -m1 mWakefulness
echo "=== factory NativeService record"
dumpsys activity services 2>/dev/null | grep -A3 'com.alibaba.ailabs.geniesdk.NativeService' | head -12
echo "=== our t9_04 dir"
ls -l /data/local/tmp/t9/t9_04 2>/dev/null || echo "(absent)"
echo "=== END"
