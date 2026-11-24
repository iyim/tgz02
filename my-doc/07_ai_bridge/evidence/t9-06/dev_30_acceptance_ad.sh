#!/system/bin/sh
# T9-06 device acceptance A-D: UI submit -> worker -> TtsExec -> factory TTS -> status back.
UI=/data/local/tmp/t9_ui
L=/data/local/tmp/t9/t9_06_run.log
: > "$L"
echo "=== date"; date
input keyevent KEYCODE_WAKEUP
sleep 1
am force-stop com.tgz02.uibridge
sleep 1
logcat -c 2>/dev/null
logcat -v time -s T906UI AudioStateManager VoiceManager TtsManager > "$L" 2>&1 &
LP=$!
sleep 1

echo "=== A: one submit from the UI"
am start -n com.tgz02.uibridge/.UiBridgeActivity --es text "界面接入闭环测试一 播报正常" --ez auto true
sleep 14

echo "=== B: three submits in a row (ordering)"
am start -n com.tgz02.uibridge/.UiBridgeActivity --es text "排序测试 第一句" --ez auto true
sleep 1
am start -n com.tgz02.uibridge/.UiBridgeActivity --es text "排序测试 第二句" --ez auto true
sleep 1
am start -n com.tgz02.uibridge/.UiBridgeActivity --es text "排序测试 第三句" --ez auto true
sleep 24

echo "=== C: stop during playback"
am start -n com.tgz02.uibridge/.UiBridgeActivity --es text "停止测试 这是一段用来验证停止接口的较长播报内容" --ez auto true
sleep 3
am start -n com.tgz02.uibridge/.UiBridgeActivity --es action stop
sleep 7

echo "=== D: submit while the UI is in the background"
am start -n com.tgz02.uibridge/.UiBridgeActivity --es text "后台播报测试 界面不在前台" --ez auto true
sleep 2
input keyevent KEYCODE_HOME
sleep 12

kill $LP 2>/dev/null
sleep 1
echo "=== worker: inbox lines"
grep -n 'inbox:' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -12
echo "=== tts journal (last 12)"
tail -12 /data/local/tmp/t5_bridge/tts/journal.jsonl
echo "=== play.public.json"
cat /data/local/tmp/t5_bridge/tts/play.public.json
echo "=== result files"
ls -l "$UI/result" | tail -12
echo "=== UI + factory capture"
cat "$L"
echo "=== END"
