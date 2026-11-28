#!/system/bin/sh
# T9-18: retire genie.rtc + aligenie.ags, then physically remove osupdate from /system
DEX=/data/local/tmp/home_ctl.dex
BAK=/data/local/tmp/t9_18_bak
mkdir -p $BAK

echo "########## 1. package facts ##########"
for P in com.alibaba.ailabs.genie.rtc com.aligenie.ags ; do
  echo "--- $P ---"
  pm path $P
  dumpsys package $P | grep -E 'userId=|sharedUser|versionName|flags=|codePath' | head -5
  echo "  running: $(ps -A | grep $P | grep -v grep | wc -l) proc"
done
echo

echo "########## 2. backups ##########"
cp -f /system/app/AliGenieService/AliGenieService.apk $BAK/AliGenieService-2.5.3.apk 2>/dev/null
RTCAPK=$(pm path com.alibaba.ailabs.genie.rtc | head -1 | cut -d: -f2)
cp -f "$RTCAPK" $BAK/Rtc-$(basename "$RTCAPK") 2>/dev/null
ls -l $BAK
echo

echo "########## 3. disable ags ##########"
CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl pkgdisable com.aligenie.ags
echo

echo "########## 4. disable rtc ##########"
CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl pkgdisable com.alibaba.ailabs.genie.rtc
echo

echo "########## 5. kill leftovers ##########"
for P in com.aligenie.ags com.alibaba.ailabs.genie.rtc ; do
  for pid in $(ps -A -o PID,NAME | grep "$P" | grep -v grep | tr -s ' ' | cut -d' ' -f2); do
    echo "kill $pid ($P)"; kill -9 $pid 2>/dev/null
  done
done
sleep 5
echo "after: $(ps -A | grep -E 'aligenie.ags|genie.rtc' | grep -v grep | wc -l) proc left"
echo

echo "########## 6. voice stack ##########"
ps -A | grep -E 'smartapp|tgz02|ai_worker|tgb_bridge|tg_supervisor' | grep -v grep
echo
cat /proc/loadavg
free -m | head -2
