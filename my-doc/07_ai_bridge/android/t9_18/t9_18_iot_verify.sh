#!/system/bin/sh
P=com.alibaba.ailabs.genie.iot
echo "=== kill leftover then watch 40s ==="
kill -9 1516 2>/dev/null
sleep 40
if ps -A | grep "$P" | grep -v grep; then echo "RESPAWNED:"; ps -A | grep "$P" | grep -v grep; else echo "PROCESS GONE (no respawn in 40s)"; fi
echo
echo "=== provider records ==="
dumpsys activity providers 2>/dev/null | grep 'ailabs.genie.iot' | head -6
echo "count: $(dumpsys activity providers 2>/dev/null | grep -c 'ailabs.genie.iot')"
echo
echo "=== alarm/job still scheduling it? ==="
dumpsys alarm 2>/dev/null | grep -c 'ailabs.genie.iot'
dumpsys jobscheduler 2>/dev/null | grep -c 'ailabs.genie.iot'
echo
echo "=== memory / load now ==="
free -m | head -2
cat /proc/loadavg
echo
echo "=== top 8 ==="
top -n 1 -b -m 8 2>/dev/null | head -18
