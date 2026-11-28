#!/system/bin/sh
echo "===== boot: $(getprop sys.boot_completed)  uptime: $(cut -d' ' -f1 /proc/uptime)s ====="
echo
echo "--- packages that must be GONE ---"
for P in com.alibaba.ailabs.genie.osupdate com.shere.assistivetouch ; do
  printf "%-45s " "$P"
  if pm path $P >/dev/null 2>&1; then echo "STILL INSTALLED ($(pm path $P))"; else echo "GONE"; fi
done
echo
echo "--- packages that must be DISABLED (state=2) ---"
DEX=/data/local/tmp/home_ctl.dex
for P in com.alibaba.ailabs.genie.iot com.alibaba.ailabs.genie.rtc com.aligenie.ags \
         com.alibaba.ailabs.genie.cook cn.cmvideo.car.play ; do
  CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl pkgstate $P 2>/dev/null | head -1
done
echo
echo "--- processes that must be absent ---"
for n in osupdate shere genie.rtc aligenie.ags genie.iot ; do
  c=$(ps -A | grep "$n" | grep -v grep | wc -l)
  printf "%-14s %s\n" "$n" "$c"
done
echo
echo "--- voice stack ---"
ps -A | grep -E 'smartapp|tgz02|ai_worker|tgb_bridge|tg_supervisor' | grep -v grep
echo
echo "--- home / focus ---"
dumpsys activity activities | grep mResumedActivity | head -2
dumpsys window windows | grep -E 'mCurrentFocus|mObscuringWindow'
echo
echo "--- memory / load ---"
free -m | head -2
cat /proc/loadavg
echo
echo "--- app processes by rss ---"
ps -A -o RSS,NAME | grep -E 'com\.|cn\.|app\.' | sort -rn | head -16
