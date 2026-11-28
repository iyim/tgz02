#!/system/bin/sh
echo "=== now: $(date '+%H:%M:%S') ==="
echo
echo "=== TTS/playback around the two alarm requests (11:19:2x / 11:19:5x) ==="
logcat -d -v time 2>/dev/null | grep -E '11:19:(2[5-9]|3[0-5]|4[5-9]|5[0-9])' \
  | grep -iE 'TtsManager|PlaybackService|AudioManager|GenieTable|NOTIFY_TTS|spokenText' \
  | head -20
echo
echo "=== guard decisions today ==="
logcat -d -v time 2>/dev/null | grep -E 'tgt ' | grep -vE 'continuity req' | tail -10
echo
echo "=== factory alarm scheduler state ==="
dumpsys alarm 2>/dev/null | grep -A2 -iE 'genie.smartapp|alarm' | head -20
