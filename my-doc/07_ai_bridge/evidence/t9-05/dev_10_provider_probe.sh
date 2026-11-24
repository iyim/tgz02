#!/system/bin/sh
# T9-05 device test: ordinary unprivileged app driving the factory TTS provider.
#   1. our UI on top, query method 4 (play), then insert method 5 (stop)
#   2. ContentObserver events on content://com.alibaba.ailabs.genie.assistant.provider
#   3. control: same call while another app is on top
ADB_PKG=com.tgz02.providerprobe
LOG=/data/local/tmp/t9/t9_05/provider_probe.log
: > "$LOG"
echo "=== date"; date
echo "=== uid of the probe app"
dumpsys package $ADB_PKG | grep -m1 userId=
echo "=== wake + clean start of our own package only"
input keyevent KEYCODE_WAKEUP
sleep 1
am force-stop $ADB_PKG
sleep 1
logcat -v time -s T905 AudioStateManager VoiceManager TtsManager GenieTable StatusProvider > "$LOG" 2>&1 &
LP=$!
sleep 1
echo "=== launch"
am start -n $ADB_PKG/.ProviderProbe
sleep 4
echo "--- top / screen while our UI is up"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
dumpsys power 2>/dev/null | grep -m1 mWakefulness
sleep 20
echo "=== send the app to the background (control for phase 3)"
input keyevent KEYCODE_HOME
sleep 2
echo "--- top after HOME"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
sleep 18
kill $LP 2>/dev/null
sleep 1
echo "=== captured probe / factory log"
cat "$LOG"
echo "=== factory :core untouched"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core); echo "core_pid=$CORE"
grep -c libtg_ /proc/$CORE/maps 2>/dev/null
echo "=== END"
