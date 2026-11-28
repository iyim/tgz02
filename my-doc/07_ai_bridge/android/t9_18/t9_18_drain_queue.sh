#!/system/bin/sh
P=com.alibaba.ailabs.genie.osupdate
L=/data/user/0/$P/files/log
K=/data/local/tmp/t9_18_bak/log_keep
mkdir -p $K
echo "=== before ==="
echo "files=$(ls $L 2>/dev/null | wc -l) size=$(du -sh $L 2>/dev/null | cut -f1)"
echo
echo "=== drain remaining queue (keep copy in $K) ==="
cp -f $L/*.zip $K/ 2>/dev/null
rm -f $L/*.zip
echo "files=$(ls $L 2>/dev/null | wc -l) size=$(du -sh $L 2>/dev/null | cut -f1)"
echo
echo "=== watch 90s ==="
logcat -c 2>/dev/null
sleep 90
echo "tv_osupdate lines in 90s: $(logcat -d 2>/dev/null | grep -c tv_osupdate)"
echo "zip files now: $(ls $L 2>/dev/null | wc -l)"
echo "load: $(cat /proc/loadavg)"
PID=$(pidof $P)
echo "pid=$PID"
if [ -n "$PID" ]; then
  A=$(sed -n 's/^[0-9]* ([^)]*) .* \([0-9]*\) \([0-9]*\) [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]*$/\1 \2/p' /proc/$PID/stat)
  echo "cpu ticks(u s) at t0: $A"
  sleep 10
  B=$(sed -n 's/^[0-9]* ([^)]*) .* \([0-9]*\) \([0-9]*\) [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]* [0-9]*$/\1 \2/p' /proc/$PID/stat)
  echo "cpu ticks(u s) at t1: $B"
fi
echo
echo "=== free ==="
free -m | head -2
