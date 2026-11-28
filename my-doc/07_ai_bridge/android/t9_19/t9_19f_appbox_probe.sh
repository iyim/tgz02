#!/system/bin/sh
# T9-19f: try to kill the auto-preinstall path by disabling the service that runs it,
# then unblock the CDN so the store itself works again.
DEX=/data/local/tmp/home_ctl.dex
SV=com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.appbox.service.MarketDownloadService

echo "=== 1. unblock the download CDN (store icons + installs work again) ==="
mount -o rw,remount /system 2>/dev/null || echo "(remount failed, will retry via magisk module)"
if grep -q alibabausercontent /system/etc/hosts 2>/dev/null; then
  cp -f /system/etc/hosts /data/local/tmp/t9_19f_hosts.bak
  grep -v alibabausercontent /data/local/tmp/t9_19f_hosts.bak > /system/etc/hosts
  sync
  echo "hosts cleaned:"
  cat /system/etc/hosts
else
  echo "hosts already clean or not writable"
fi
mount -o ro,remount /system 2>/dev/null

echo
echo "=== 2. disable MarketDownloadService (runs checkPreinstallAndUpload) ==="
CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl disable "$SV"
CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl state "$SV" 2>/dev/null

echo
echo "=== 3. current preinstalled-app state ==="
for P in com.alibaba.ailabs.genie.cook com.alibaba.ailabs.genie.camera ; do
  printf "%-42s " $P
  pm path $P >/dev/null 2>&1 && echo INSTALLED || echo MISSING
done
