#!/system/bin/sh
# /data/adb/service.d/a.sh
# Magisk 开机自动执行一次（late_start 阶段，root 身份）
# 作用：修好开机后 adb 必然失败的问题（adbd 起得比 /data 早，读不到 adb_keys）
# 卸载：su -c rm /data/adb/service.d/a.sh  然后重启

LOG=/data/local/tmp/a-boot.log
KEY='QAAAANUbW9CDuojOw4YLvN/PKAABZ2MNP9maPbIAK/pjxtd2lptMzBWcKrw5c6hU8R6nN9c7zn1mmFyB6MZlhO49IPLG30952VxSiwhsXflTIIRDeXPLftIAqlsskEjMuIS1Qy3gkirmDz5j20VDF+lPSmA2Q/cwjQe2+80na7XSiEQH8pxEcoaj40pKLo8W4qlNlm4CSMCSY/f6pYtO+f8HPPQ+HACJLMtxelJ6s/q8hFIVCZDp2HLTb0/1gM73jCcRCmbiWDJnEwv/l3sRy51x5pM2kgEgcCIlSzfp7AOCduiGB0f1GY7asltmJEdbx+MIAyYCFzjMLlqQaRy6iitw1iBjT1uQUkuTLYab4ZaUSgqfgVyiCtJTHcCo2HiBwJ0K3hgoIcVIyulhQRFzU1jaq/yC8mAugyJHMFjbQqetjfq1NntRVCSkDolALMhGczsPmOQ+RZAKqB0R4Q7YPSOHAk1gOtio6A+cdyFiC2/6LYjcG0CnahmP6rxdintERAsC93bF59ERLDXbBxmQD/DOHnDHVX/KNPjavUGUITJbAM5hXftb6ZcFfvIYKBkqeQVz0ov5B1TNsHyzQr0DiXnJVQN4eX24+oEiP2RNMLcM1662rEVXPvio0dGrU2ZDGvSkqZt2UPN5/NWSViASfWJXboKVM8X6nBDoVBjLl96GylQD0SBgPgEAAQA= mac@DESKTOP-1K5NMMC'

echo "=== $(date '+%m-%d %H:%M:%S') boot script start (pid $$) ===" >> "$LOG"

# 1) 重写 adb_keys
mkdir -p /data/misc/adb
chmod 700 /data/misc/adb
printf '%s\n' "$KEY" > /data/misc/adb/adb_keys
chmod 640 /data/misc/adb/adb_keys
chown system:shell /data/misc/adb/adb_keys
restorecon /data/misc/adb/adb_keys 2>/dev/null
ls -lZ /data/misc/adb/adb_keys >> "$LOG" 2>&1

# 2) SELinux 回 Permissive
echo "selinux before: $(getenforce)" >> "$LOG"
setenforce 0 2>/dev/null
echo "selinux after : $(getenforce)" >> "$LOG"

# 3) 打开网络调试
setprop service.adb.tcp.port 5555
setprop persist.adb.tcp.port 5555
setprop persist.sys.usb.config adb

# 4) 等系统起来一点，再干净重启 adbd（stop -> start，重建 auth socket）
i=0
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    i=$((i + 1))
    [ $i -gt 150 ] && break
    sleep 2
done
sleep 5
echo "boot_completed=$(getprop sys.boot_completed), restarting adbd" >> "$LOG"

setprop ctl.stop adbd
sleep 2
setprop ctl.start adbd
sleep 2

echo "adbd pid = $(pidof adbd)" >> "$LOG"
echo "=== done ===" >> "$LOG"
