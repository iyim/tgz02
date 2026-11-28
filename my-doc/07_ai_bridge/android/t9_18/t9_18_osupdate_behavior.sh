#!/system/bin/sh
P=com.alibaba.ailabs.genie.osupdate
D=/data/user/0/$P
echo "=== A. what is it doing right now (10s sample) ==="
logcat -c 2>/dev/null
sleep 10
logcat -d 2>/dev/null | grep -c "tv_osupdate"
echo "--- top tags from this pid ---"
logcat -d 2>/dev/null | grep -E "\( *[0-9]+\): " | grep -oE "^[0-9-]+ [0-9:.]+ +[0-9]+ +[0-9]+ [A-Z] [^:]+:" | awk '{print $6}' | sort | uniq -c | sort -rn | head -12
echo
echo "=== B. shared_prefs ==="
ls -l $D/shared_prefs 2>/dev/null
for f in $D/shared_prefs/*.xml; do echo "--- $f ---"; cat "$f" 2>/dev/null | head -40; done
echo
echo "=== C. other config files ==="
find $D -maxdepth 2 -type f 2>/dev/null | grep -vE 'files/log|shared_prefs' | head -30
echo
echo "=== D. log file timeline (kept 20) ==="
ls -lt $D/files/log 2>/dev/null | head -8
echo
echo "=== E. anything outside the apk referencing Osupdate ==="
grep -ril osupdate /system/etc/init /system/etc/permissions 2>/dev/null | head
ls /system/etc/permissions | grep -i osupdate
echo
echo "=== F. current cpu of the pid ==="
PID=$(pidof $P); echo "pid=$PID"
cat /proc/$PID/stat 2>/dev/null | awk '{print "utime="$14" stime="$15}'
sleep 5
cat /proc/$PID/stat 2>/dev/null | awk '{print "utime="$14" stime="$15" (delta ticks over 5s, 100Hz = %cpu/20)"}'
