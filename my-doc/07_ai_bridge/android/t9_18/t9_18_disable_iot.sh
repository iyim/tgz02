#!/system/bin/sh
# T9-18: disable the GenieIoT package (com.alibaba.ailabs.genie.iot)
P=com.alibaba.ailabs.genie.iot
BAK=/data/local/tmp/t9_18_bak
DEX=/data/local/tmp/home_ctl.dex

echo "=== 0. baseline ==="
cat /proc/loadavg
free -m | head -2
ps -A | grep "$P" | grep -v grep
echo

echo "=== 1. backup apk ==="
mkdir -p $BAK
cp -f /system/app/GenieIoT/GenieIoT.apk $BAK/GenieIoT-2.1.2.0.apk
ls -l $BAK/GenieIoT-2.1.2.0.apk
echo

echo "=== 2. disable package ==="
CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl pkgdisable $P
CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl pkgstate $P
echo

echo "=== 3. process after 6s ==="
sleep 6
if ps -A | grep "$P" | grep -v grep; then echo "STILL RUNNING"; else echo "PROCESS GONE"; fi
echo

echo "=== 4. providers gone? ==="
dumpsys activity providers 2>/dev/null | grep -c 'ailabs.genie.iot' 
echo

echo "=== 5. voice stack intact? ==="
ps -A | grep -E 'smartapp|tgz02|ai_worker|tgb_bridge|tg_supervisor|aligenie' | grep -v grep
echo

echo "=== 6. after ==="
cat /proc/loadavg
free -m | head -2
echo

echo "=== 7. launch attempt (must fail) ==="
am start -n $P/.MainActivity 2>&1 | head -3
echo

echo "=== 8. desktop focus ==="
dumpsys window windows | grep -E 'mCurrentFocus|mObscuringWindow'
