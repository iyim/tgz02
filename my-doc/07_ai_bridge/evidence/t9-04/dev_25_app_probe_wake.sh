#!/system/bin/sh
# T9-04 device test A (v4): wake the panel first (the box drifted into "Dreaming" during the
# previous run), then do the fresh foreground + background pair.
# Only our own probe package is force-stopped. The factory package is never touched.
ADB_PKG=com.tgz02.aidltest
LOG=/data/local/tmp/t9/t9_04/app_probe_final.log
: > "$LOG"
echo "=== date"; date
echo "=== wake the panel"
input keyevent KEYCODE_WAKEUP
sleep 2
dumpsys power 2>/dev/null | grep -m1 mWakefulness
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
echo "=== send the app to the background (control experiment)"
input keyevent KEYCODE_HOME
sleep 2
echo "--- top after HOME"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
sleep 26
kill $LP 2>/dev/null
sleep 1
echo "=== captured probe / factory log"
cat "$LOG"
echo "=== factory :core untouched"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core); echo "core_pid=$CORE"
grep -c libtg_ /proc/$CORE/maps 2>/dev/null
echo "=== END"
