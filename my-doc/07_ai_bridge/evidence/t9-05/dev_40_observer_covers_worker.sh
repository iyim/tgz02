#!/system/bin/sh
# T9-05 extra: does an ordinary app's ContentObserver also see a playback that the ROOT worker
# started (TtsExec -> provider)? That decides whether the UI can learn "worker finished speaking"
# without root and without reading logcat.
ADB_PKG=com.tgz02.providerprobe
LOG=/data/local/tmp/t9/t9_05/observer_covers_worker.log
TXT=/data/local/tmp/t9/t9_05/w.txt
: > "$LOG"
printf '这一句由 root 执行器播放' > "$TXT"
echo "=== date"; date
am force-stop $ADB_PKG
sleep 1
logcat -v time -s T905 AudioStateManager VoiceManager TtsManager > "$LOG" 2>&1 &
LP=$!
sleep 1
echo "=== launch the probe app (its own phases run, then it just sits there observing)"
am start -n $ADB_PKG/.ProviderProbe >/dev/null
echo "=== wait for the probe phases to finish"
sleep 42
echo "=== now let the ROOT executor speak"
sh /data/local/tmp/t5_bridge/run_tts_exec.sh play "$TXT" t905worker
sleep 10
kill $LP 2>/dev/null
sleep 1
echo "=== observer lines from the app (uid $(dumpsys package $ADB_PKG | grep -m1 userId=))"
grep 'OBSERVER' "$LOG" | tail -6
echo "=== the worker's own tts id (play.public.json)"
cat /data/local/tmp/t5_bridge/tts/play.public.json
echo "=== END"
