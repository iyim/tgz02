#!/system/bin/sh
echo "boot=$(getprop sys.boot_completed) uptime=$(cut -d' ' -f1 /proc/uptime)s"
echo
echo "=== 1. appbox catalogue rows (needs global namespace; caller must be mount-master) ==="
D=/data/data/com.alibaba.ailabs.genie.smartapp/databases
ls -l $D/ApplistDb.db 2>&1 | tr -s ' ' | cut -d' ' -f5,6,7,8
md5sum $D/ApplistDb.db 2>&1
echo
echo "=== 2. 旭慧生活 back? ==="
pm path com.anthouse.ayland 2>&1 | head -1
echo "procs: $(ps -A | grep anthouse | grep -v grep | wc -l)"
echo
echo "=== 3. our probe apps ==="
pm list packages | grep -E 'tgz02\.(aidltest|providerprobe)' || echo "both gone"
echo
echo "=== 4. the rest stays gone ==="
for P in com.alibaba.ailabs.genie.osupdate com.shere.assistivetouch ; do
  printf "%-42s " $P
  pm path $P >/dev/null 2>&1 && echo "STILL THERE" || echo GONE
done
echo
echo "=== 5. voice stack ==="
ps -A | grep -E 'smartapp|tgz02|ai_worker|tgb_bridge|tg_supervisor' | grep -v grep | wc -l
ps -A | grep -E 'smartapp|ai_worker' | grep -v grep
echo
echo "=== 6. memory ==="
free -m | head -2
cat /proc/loadavg
