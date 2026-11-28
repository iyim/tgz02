#!/system/bin/sh
echo "===== A. ALL app processes (by uid, with cpu/mem) ====="
ps -A -o USER,PID,PPID,VSZ,RSS,STAT,NAME 2>/dev/null | grep -E '^[a-z]|^system|^root' | grep -vE '\[|/system/bin|app_process|logcat|sh$|su$' | head -60
echo
echo "===== B. process count per package (top by RSS) ====="
ps -A -o RSS,NAME 2>/dev/null | grep -E 'com\.|cn\.|app\.' | sort -rn | head -25
echo
echo "===== C. all installed non-system packages ====="
pm list packages -3
echo
echo "===== D. IoT package identity ====="
for P in com.alibaba.ailabs.genie.iot com.aligenie.ags; do
  echo "--- $P ---"
  pm path $P 2>/dev/null
  dumpsys package $P 2>/dev/null | grep -E 'userId=|sharedUser|codePath|versionName|flags=|enabled=|installerPackageName' | head -8
  echo "  services:"
  dumpsys package $P 2>/dev/null | sed -n '/Service Resolver Table/,/^ *Receiver/p' | grep "$P/" | head -6
  echo "  receivers:"
  dumpsys package $P 2>/dev/null | sed -n '/Receiver Resolver Table/,/^ *[A-Z]/p' | grep "$P/" | head -8
  echo "  running:"
  ps -A | grep "$P" | grep -v grep
  echo
done
echo "===== E. who else references the iot package ====="
dumpsys activity providers 2>/dev/null | grep -i 'ailabs.genie.iot' | head -10
echo
echo "===== F. current load / mem ====="
cat /proc/loadavg
free -m | head -2
