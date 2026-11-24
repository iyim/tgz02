#!/system/bin/sh
# T9-06R1 acceptance A-E: UI closed loop under the PRIVATE inbox.
ADB_PKG=com.tgz02.uibridge
OTHER=com.tgz02.providerprobe
UI=/data/local/tmp/t9_ui
L=/data/local/tmp/t9/t9_06/06r1_run.log
: > "$L"
echo "=== date"; date
input keyevent KEYCODE_WAKEUP
sleep 1
am force-stop $ADB_PKG
sleep 1
logcat -c 2>/dev/null
logcat -v time -s T906UI AudioStateManager VoiceManager TtsManager > "$L" 2>&1 &
LP=$!
sleep 1

echo "=== A: one submit from the UI (real playback expected)"
am start -n $ADB_PKG/.UiBridgeActivity --es text "R1 私有入口测试 一" --ez auto true
sleep 14

echo "=== B: the other app cannot write, and cannot affect the worker"
run-as $OTHER sh -c 'echo x > /data/local/tmp/t9_ui/inbox/spam.json' 2>&1
echo "other_exit=$?"
run-as $OTHER sh -c 'ls /data/local/tmp/t9_ui/inbox' 2>&1 | head -2
echo "--- inbox as root: $(ls $UI/inbox | wc -l) files"
echo "--- worker counters:"
grep 'inbox:' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -2

echo "=== C: three submits in a row"
am start -n $ADB_PKG/.UiBridgeActivity --es text "R1 排序 第一句" --ez auto true
sleep 1
am start -n $ADB_PKG/.UiBridgeActivity --es text "R1 排序 第二句" --ez auto true
sleep 1
am start -n $ADB_PKG/.UiBridgeActivity --es text "R1 排序 第三句" --ez auto true
sleep 24

echo "=== D: stop during playback"
am start -n $ADB_PKG/.UiBridgeActivity --es text "R1 停止测试 这是一段用来验证停止接口的较长播报内容" --ez auto true
sleep 3
am start -n $ADB_PKG/.UiBridgeActivity --es action stop
sleep 7

echo "=== E: submit with the UI in the background"
am start -n $ADB_PKG/.UiBridgeActivity --es text "R1 后台提交测试" --ez auto true
sleep 2
input keyevent KEYCODE_HOME
sleep 12

kill $LP 2>/dev/null
sleep 1
echo "=== UI log"
grep 'T906UI' "$L" | sed 's/^.*T906UI[^(]*([^)]*): //' | tail -40
echo "=== worker inbox lines"
grep 'inbox:' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -8
echo "=== journal (last 6)"
tail -6 /data/local/tmp/t5_bridge/tts/journal.jsonl
echo "=== result files"
ls -l "$UI/result" | tail -8
echo "=== END"
