#!/system/bin/sh
# live_asr.sh -- 这一分钟内引擎到底做了什么（唤醒 -> 听 -> 有没有结果）
echo "=== tombstone times ==="
ls -l /data/tombstones/tombstone_0* 2>/dev/null | tail -3
for f in $(ls -t /data/tombstones/tombstone_0* 2>/dev/null | head -2); do
  echo "--- $f ---"
  head -6 "$f"
done
echo "=== engine log (last 200 lines, filtered) ==="
logcat -d 2>/dev/null | grep -iE 'AGSpeechEngine|AGSpeechEngineProxy|onListen|onResult|onError|asrResult|UnconvWakeup' | tail -25
