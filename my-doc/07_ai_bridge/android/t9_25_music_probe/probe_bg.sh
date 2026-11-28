#!/system/bin/sh
# background playback + false-wake probe: press HOME at t+10s, keep playing at volume 80
URL="$1"
SECS="${2:-45}"
logcat -c
echo "=== start"
am start -n com.tgz02.musicprobe/.Probe --es url "$URL" --ei seconds "$SECS" --ei volume 80 >/dev/null
sleep 10
echo "=== t+10s press HOME"
input keyevent KEYCODE_HOME
sleep 3
echo "=== foreground now:"
dumpsys activity activities 2>/dev/null | grep -m1 -E "mResumedActivity|mFocusedActivity"
sleep 32
echo "=== kgprobe tail"
logcat -d -s kgprobe:V | tail -25
echo "=== wake / asr markers"
logcat -d | grep -i -E "onStartTalk|wake_type|Waking up from sleep|ScreenWake|onTtsStart|tgt *:|ai_worker|XEngine.*(wake|Wake)" | tail -25
echo "=== vol now"
dumpsys audio 2>/dev/null | sed -n '/STREAM_MUSIC/,/STREAM_ALARM/p'
