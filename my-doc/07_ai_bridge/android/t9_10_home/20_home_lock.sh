#!/system/bin/sh
# 20_home_lock.sh -- service.d (runs as root after boot):
#  1) keep the product as the system HOME by disabling the launchers that fight it
#     (IPackageManager component disable -- `pm disable` is not available on this ROM);
#  2) keep the apps the operator removed from coming back: the factory appbox reinstalls
#     preinstalled apps it finds missing (verified: 菜谱 came back 1 min after boot), so for
#     those we disable the whole package -- appbox only checks "installed", and a disabled
#     package is still installed but cannot run or show an icon.
#
# Rollback: rm /data/adb/service.d/20_home_lock.sh ; then
#   CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl \
#       enable <pkg>/<cls>      (component)  or  pkgenable <pkg>   (whole package)
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

# ---- 1) HOME 竞争者：组件级禁用 ----
for c in \
    "com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.genie.genieboot.activity.BootHomeActivity" \
    "com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity" \
    "com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.dialog.home.HomeDialogActivity" \
    "app.orchard.tv/app.orchard.tv.MainActivity" ; do
    CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl disable "$c" >> "$LOG" 2>&1
done

# ---- 2) 用户要求移除、但原厂应用商店会装回来的：整包禁用 ----
#     osupdate 也是整包禁用：它每分钟把系统日志打成 dfmount zip 上传阿里服务器，
#     全部失败且无退避，7 天攒下 10157 个 / 41MB，CPU 长期 85%。禁用后循环停摆。
for p in com.alibaba.ailabs.genie.cook cn.cmvideo.car.play com.alibaba.ailabs.genie.osupdate ; do
    if pm list packages 2>/dev/null | grep -q "package:$p$"; then
        CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl pkgdisable "$p" >> "$LOG" 2>&1
    else
        echo "[$(date '+%F %T')] $p not installed (nothing to disable)" >> "$LOG"
    fi
done

# ---- 3) osupdate 的日志上传队列：留着它就会在失败重试里空转烧 CPU ----
OSL=/data/user/0/com.alibaba.ailabs.genie.osupdate/files/log
if [ -d "$OSL" ]; then
    n=$(ls "$OSL" 2>/dev/null | wc -l)
    if [ "$n" -gt 5 ]; then
        ls -t "$OSL" 2>/dev/null | tail -n +6 | while read f; do rm -f "$OSL/$f"; done
        echo "[$(date '+%F %T')] osupdate log queue trimmed $n -> $(ls "$OSL" 2>/dev/null | wc -l)" >> "$LOG"
    else
        echo "[$(date '+%F %T')] osupdate log queue ok ($n files)" >> "$LOG"
    fi
fi

CLASSPATH=$DEX app_process /system com.tgz02.home.HomeCtl list >> "$LOG" 2>&1
