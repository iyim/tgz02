#!/system/bin/sh
P=com.alibaba.ailabs.genie.osupdate
L=/data/user/0/$P/files/log
echo "t0 load: $(cat /proc/loadavg)"
logcat -c 2>/dev/null
sleep 180
PID=$(pidof $P)
echo "pid=$PID"
if [ -n "$PID" ]; then
  echo "stat: $(cat /proc/$PID/stat | cut -d' ' -f14-15)"
  echo "cputime line:"; cat /proc/$PID/stat | sed 's/.*) //' | cut -d' ' -f12-13
fi
echo "zip files: $(ls $L 2>/dev/null | wc -l)"
echo "tv_osupdate lines in 180s: $(logcat -d 2>/dev/null | grep -c tv_osupdate)"
echo "t1 load: $(cat /proc/loadavg)"
echo "--- top 6 ---"
top -n 1 -b -m 6 2>/dev/null | head -14
