#!/system/bin/sh
# T9-19: replace ApplistDb.db with the trimmed catalogue.
# NOTE: must run inside the global mount namespace (`su --mount-master -c`), otherwise
#       /data/data/<system app>/ is invisible to the shell (Magisk namespace isolation).
D=/data/data/com.alibaba.ailabs.genie.smartapp/databases
APP=/data/local/tmp/t9_19_applist_edit.db

echo "=== who am i ==="
id
echo

echo "=== 1. stop smartapp ==="
am force-stop com.alibaba.ailabs.genie.smartapp
sleep 2
for pid in $(ps -A | grep 'genie.smartapp' | grep -v grep | tr -s ' ' | cut -d' ' -f2); do
  echo "kill -9 $pid"; kill -9 $pid 2>/dev/null
done
sleep 2
echo "procs left: $(ps -A | grep 'genie.smartapp' | grep -v grep | wc -l)"
echo

echo "=== 2. current rows ==="
echo "db size: $(ls -l $D/ApplistDb.db | tr -s ' ' | cut -d' ' -f5)"
echo

echo "=== 3. install trimmed db ==="
cp -f $APP $D/ApplistDb.db && echo "copied"
rm -f $D/ApplistDb.db-journal $D/ApplistDb.db-wal $D/ApplistDb.db-shm
chown system:system $D/ApplistDb.db
chmod 660 $D/ApplistDb.db
ls -l $D/ApplistDb.db
md5sum $D/ApplistDb.db $APP
echo

echo "=== 4. gone? ==="
pm path com.anthouse.ayland 2>&1 | head -1
echo

echo "=== 5. ok ==="
