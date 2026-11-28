#!/system/bin/sh
echo "=== uptime: $(cut -d' ' -f1 /proc/uptime)s ==="
echo
echo "=== appbox preinstalled apps that must stay missing ==="
for P in com.alibaba.ailabs.genie.cook com.alibaba.ailabs.genie.aicare com.alipay.arome.app com.anthouse.ayland ; do
  printf "%-40s " "$P"
  pm path $P >/dev/null 2>&1 && echo "INSTALLED (came back!)" || echo MISSING-OK
done
echo
echo "=== MarketDownloadService state ==="
CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl state \
  com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.appbox.service.MarketDownloadService 2>/dev/null | head -1
echo
echo "=== is it running anyway? ==="
ps -A | grep -E 'market' | grep -v grep || echo "no market process"
echo
echo "=== errors from the disabled service (last 200 lines) ==="
logcat -d -t 200 2>/dev/null | grep -iE 'MarketDownloadService|does not exist|Unable to start service' | tail -6
echo
echo "=== three-party packages now ==="
pm list packages -3
