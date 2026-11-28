#!/system/bin/sh
# T9-19: put the trimmed catalogue back, then remove the app it installed.
D=/data/data/com.alibaba.ailabs.genie.smartapp/databases
APP=/data/local/tmp/t9_19_applist_edit.db

echo "=== 1. make sure smartapp is not holding the db ==="
am force-stop com.alibaba.ailabs.genie.smartapp
sleep 3
for pid in $(ps -A -o PID,NAME | grep 'genie.smartapp' | grep -v grep | tr -s ' ' | cut -d' ' -f2); do
  echo "kill $pid"; kill -9 $pid 2>/dev/null
done
sleep 2
echo "procs left: $(ps -A | grep 'genie.smartapp' | grep -v grep | wc -l)"
echo

echo "=== 2. install the trimmed db ==="
cp -f $APP $D/ApplistDb.db
rm -f $D/ApplistDb.db-journal $D/ApplistDb.db-wal $D/ApplistDb.db-shm
chown system:system $D/ApplistDb.db
chmod 660 $D/ApplistDb.db
restorecon $D/ApplistDb.db 2>/dev/null
ls -lZ $D/ApplistDb.db
echo

echo "=== 3. remove 旭慧生活 (installed by appbox at 22:59) ==="
pm uninstall com.anthouse.ayland 2>&1 || true
echo "check: $(pm path com.anthouse.ayland 2>&1 | head -1)"
echo

echo "=== 4. leftovers ==="
rm -rf /data/app/com.anthouse.ayland-* 2>/dev/null
echo "done"
