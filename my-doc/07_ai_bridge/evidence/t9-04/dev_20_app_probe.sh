#!/system/bin/sh
# T9-04 device test A (v2): the minimal client as a NORMAL unprivileged app.
# The main logcat ring buffer of this device rotates in well under a minute, so the probe output
# is captured live into a file instead of being read back from the buffer afterwards.
ADB_PKG=com.tgz02.aidltest
LOG=/data/local/tmp/t9/t9_04/app_probe.log
: > "$LOG"
echo "=== date"; date
echo "=== uid of the probe app"
dumpsys package $ADB_PKG | grep -m1 userId=
echo "=== start the live capture"
logcat -v time -s T904 AudioStateManager VoiceManager TtsManager AGSpeechEngine > "$LOG" 2>&1 &
LP=$!
sleep 1
echo "=== launch (foreground test)"
am start -n $ADB_PKG/.ProbeActivity
sleep 3
echo "--- top / screen while our UI is up"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
dumpsys power 2>/dev/null | grep -m1 mWakefulness
sleep 34
echo "=== send the app to the background (control experiment)"
input keyevent KEYCODE_HOME
sleep 2
echo "--- top after HOME"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
sleep 28
kill $LP 2>/dev/null
sleep 1
echo "=== captured probe / factory log"
cat "$LOG"
echo "=== factory :core untouched"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core); echo "core_pid=$CORE"
grep -c libtg_ /proc/$CORE/maps 2>/dev/null
echo "=== END"
