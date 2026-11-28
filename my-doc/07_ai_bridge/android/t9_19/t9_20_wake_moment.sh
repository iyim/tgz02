#!/system/bin/sh
echo "=== what happened at 14:59:0x (the wake) ==="
logcat -d -v time 2>/dev/null | grep -E '14:59:0[0-9]' \
  | grep -viE 'kalPerMon|XEGN|MultiModal|BufferQueue|DisplayDevice|GenieUiMonitor|market-accessibility|libPerfService' \
  | head -40
echo
echo "=== worker: any startTalk / relisten around that time ==="
grep -aE '14:58|14:59|15:0' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -10
echo
echo "=== ScreenWakeManager callers (source) ==="
echo "(see report; classes: assistant.Utils.ScreenWakeManager / musicplayer.utils.ScreenWakeManager)"
echo
echo "=== is wake lock AudioIn still held? ==="
dumpsys power | grep -E 'AudioIn|NativeService|Wake Locks' | head -5
