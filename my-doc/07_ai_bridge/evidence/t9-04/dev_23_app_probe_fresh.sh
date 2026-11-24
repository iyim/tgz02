#!/system/bin/sh
# T9-04 device test A (v3): fresh foreground run of the unprivileged client.
# Only our own probe package is force-stopped (the factory package is never touched).
ADB_PKG=com.tgz02.aidltest
LOG=/data/local/tmp/t9/t9_04/app_probe_fg.log
: > "$LOG"
echo "=== date"; date
echo "=== our own package, restart it cleanly"
am force-stop $ADB_PKG
sleep 1
echo "=== start live capture"
logcat -v time -s T904 AudioStateManager VoiceManager TtsManager AGSpeechEngine > "$LOG" 2>&1 &
LP=$!
sleep 1
echo "=== launch"
am start -n $ADB_PKG/.ProbeActivity
sleep 4
echo "--- top / screen while our UI is up"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
dumpsys power 2>/dev/null | grep -m1 mWakefulness
sleep 34
kill $LP 2>/dev/null
sleep 1
echo "=== captured probe / factory log"
cat "$LOG"
echo "=== our process still alive?"
pidof $ADB_PKG
echo "=== factory :core untouched"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core); echo "core_pid=$CORE"
grep -c libtg_ /proc/$CORE/maps 2>/dev/null
echo "=== END"
