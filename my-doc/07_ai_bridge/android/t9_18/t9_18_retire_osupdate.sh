#!/system/bin/sh
# T9-18: retire com.alibaba.ailabs.genie.osupdate (system updater hogging CPU)
P=com.alibaba.ailabs.genie.osupdate
BAK=/data/local/tmp/t9_18_bak

echo "=== baseline ==="
uptime
cat /proc/loadavg
ps -o PID,TIME,NAME -p $(pidof $P) 2>/dev/null
echo

echo "=== 1. backup apk ==="
mkdir -p $BAK
cp -f /system/app/Osupdate/Osupdate.apk $BAK/Osupdate-9.0.1.0.apk
ls -l $BAK
echo

echo "=== 2. stop the log upload loop ==="
# stop first so the loop cannot recreate files while we clean
kill -STOP $(pidof $P) 2>/dev/null
LOGDIR=/data/user/0/$P/files/log
echo "before: $(du -sh $LOGDIR 2>/dev/null | cut -f1)  files=$(ls $LOGDIR 2>/dev/null | wc -l)"
mkdir -p $BAK/log_keep
# keep the newest 20 for forensics, drop the rest
ls -t $LOGDIR 2>/dev/null | tail -n +21 | while read f; do rm -f "$LOGDIR/$f"; done
echo "after : $(du -sh $LOGDIR 2>/dev/null | cut -f1)  files=$(ls $LOGDIR 2>/dev/null | wc -l)"
kill -CONT $(pidof $P) 2>/dev/null
echo

echo "=== 3. package-disable ==="
CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl pkgdisable $P
CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl pkgstate $P
echo

echo "=== 4. verify process gone ==="
sleep 3
if pidof $P >/dev/null 2>&1; then echo "STILL RUNNING pid=$(pidof $P)"; else echo "PROCESS GONE"; fi
echo

echo "=== 5. after ==="
cat /proc/loadavg
free -m | head -2
echo

echo "=== 6. neighbours alive? ==="
ps -A | grep -E 'smartapp|tgz02|ai_worker|tgb_bridge|tg_supervisor' | grep -v grep
