#!/system/bin/sh
echo "boot=$(getprop sys.boot_completed) up=$(cut -d' ' -f1 /proc/uptime)s"
echo
for p in com.alibaba.ailabs.genie.cook com.anthouse.ayland com.alibaba.ailabs.genie.camera ; do
  printf "%-40s " "$p"
  line=$(dumpsys package "$p" 2>/dev/null | grep -m1 'versionName=')
  case "$line" in
    *placeholder*) echo "PLACEHOLDER-OK ($line)" ;;
    "")            echo "MISSING" ;;
    *)             echo "REAL PACKAGE ($line)" ;;
  esac
done
echo
echo "=== store still works? (icon CDN reachable) ==="
ping -c 1 -W 2 ailabs.alibabausercontent.com 2>&1 | head -2
echo
echo "=== space ==="
df -h /data | tail -1
free -m | head -2
