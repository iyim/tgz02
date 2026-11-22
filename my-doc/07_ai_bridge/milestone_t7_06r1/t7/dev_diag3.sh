#!/system/bin/sh
# dev_diag3.sh -- 语音链路：最近唤醒前后的 logcat 摘要
echo "=== last 2 wake snapshots ==="
tail -n 2 /data/local/tmp/t7/wake/wakeinfo.jsonl
echo "=== logcat tags (last 400 lines, filtered) ==="
logcat -d -t 400 | grep -iE 'AliTVASR|ASREngine|Recognizer|speech' | tail -20
echo "=== tts play state ==="
cat /data/local/tmp/t5_bridge/tts/play.public.json 2>/dev/null
echo
echo "=== audio playing ==="
dumpsys audio | grep -E 'players|state' | head -6
