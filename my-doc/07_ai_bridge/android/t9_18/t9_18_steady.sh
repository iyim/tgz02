#!/system/bin/sh
echo "=== 1. osupdate steady state (60s window) ==="
logcat -c 2>/dev/null
sleep 60
echo "tv_osupdate lines: $(logcat -d 2>/dev/null | grep -c tv_osupdate)"
echo "new zip files    : $(ls -t /data/user/0/com.alibaba.ailabs.genie.osupdate/files/log 2>/dev/null | head -1)"
echo "load: $(cat /proc/loadavg)"
echo
echo "=== 2. who is eating cpu now (5s sample, 2 passes) ==="
top -n 1 -b -m 8 2>/dev/null | head -16
echo
echo "=== 3. tag census of last 60s ==="
for t in tgl tgt tv_osupdate AudioStateManager VoiceManager GeniePlayer; do
  echo "$t = $(logcat -d 2>/dev/null | grep -c " $t:")"
done
echo "total lines: $(logcat -d 2>/dev/null | wc -l)"
echo
echo "=== 4. core process thread cpu (top -H) ==="
PID=$(pidof com.alibaba.ailabs.genie.smartapp:core)
echo "core pid=$PID"
top -H -n 1 -b -p $PID 2>/dev/null | head -14
