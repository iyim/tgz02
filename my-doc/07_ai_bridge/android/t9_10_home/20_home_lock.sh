#!/system/bin/sh
# 20_home_lock.sh -- service.d (runs as root after boot):
# keep the product as the system HOME by disabling the launchers that fight it,
# through the framework's own API (IPackageManager.setComponentEnabledSetting).
#
# Why not `pm disable`: this ROM's pm/cmd package drop that subcommand (verified repeatedly).
# Why HomeCtl: it runs as uid 0 via app_process, and uid 0 is granted component-state changes.
#
# Disabled components:
#   * com.alibaba.ailabs.genie.smartapp/…genieboot.activity.BootHomeActivity
#       its boot logic jumps to "adult home" and finishes itself; when it IS the resolved home
#       that jump relaunches itself -> ~800 launches/minute, load average 12 (2026-11-27 20:30).
#   * com.dangbei1.tvlauncher/…MainActivity + …dialog.home.HomeDialogActivity
#       a sideloaded TV launcher that also grabbed the HOME key (its empty desktop is what the
#       user saw as "桌面崩了").
#
# Rollback: rm /data/adb/service.d/20_home_lock.sh , then
#   CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl enable <comp>
#   (or reboot after deleting; the settings live in /data/system/users/0/package-restrictions.xml)
DEX=/data/local/tmp/home_ctl.dex
LOG=/data/local/tmp/home_lock/apply.log
mkdir -p /data/local/tmp/home_lock
[ -f "$DEX" ] || { echo "[$(date '+%F %T')] home_ctl.dex missing, skip" >> "$LOG"; exit 0; }

i=0
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    i=$((i+1)); [ $i -gt 150 ] && break; sleep 2
done
sleep 5

echo "[$(date '+%F %T')] === 20_home_lock re-apply ===" >> "$LOG"
for c in \
    "com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.genie.genieboot.activity.BootHomeActivity" \
    "com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity" \
    "com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.dialog.home.HomeDialogActivity" \
    "app.orchard.tv/app.orchard.tv.MainActivity" ; do
    CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl disable "$c" >> "$LOG" 2>&1
done
CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl list >> "$LOG" 2>&1
