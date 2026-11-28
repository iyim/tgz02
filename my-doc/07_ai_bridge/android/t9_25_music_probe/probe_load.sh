#!/system/bin/sh
URL="$1"
am force-stop com.tgz02.musicprobe
sleep 1
am start -n com.tgz02.musicprobe/.Probe --es url "$URL" --ei seconds 25 --ei volume 60 >/dev/null
sleep 8
echo "=== top (8s into playback) ==="
top -b -n 1 -m 8 -o PID,USER,%CPU,RES,ARGS 2>/dev/null | head -14
echo "=== media decoder procs ==="
ps -A -o PID,NAME 2>/dev/null | grep -i -E "media.codec|media.extr|musicprobe|:backend"
echo "=== meminfo avail ==="
grep -E "MemAvailable|MemFree" /proc/meminfo
sleep 20
echo "=== player done"
logcat -d -s kgprobe:V | tail -4
