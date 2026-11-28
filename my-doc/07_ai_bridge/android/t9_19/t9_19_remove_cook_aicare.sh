#!/system/bin/sh
# T9-19c: physically remove 菜谱 (cook) and 爱家看护 (aicare).
#   cook   : /data/app only, appbox-installed  → adb uninstall (done from the host)
#   aicare : SYSTEM app with an updated copy in /data/app
#              → host adb uninstall drops the update, renaming the /system APK removes the rest
BAK=/data/local/tmp/t9_19_bak
mkdir -p $BAK

echo "=== before ==="
du -sk /data/app/*cook* /data/app/*aicare* 2>/dev/null
ls -l /system/app/GenieAicare/GenieAicare.apk 2>/dev/null

echo "=== 1. backup the system aicare apk ==="
cp -f /system/app/GenieAicare/GenieAicare.apk $BAK/GenieAicare-2.6.apk 2>/dev/null
ls -l $BAK/GenieAicare-2.6.apk 2>/dev/null

echo "=== 2. rename it so PackageManager forgets the package ==="
mount -o rw,remount /system || { echo REMOUNT-FAILED; exit 1; }
[ -f /system/app/GenieAicare/GenieAicare.apk ] && \
  mv /system/app/GenieAicare/GenieAicare.apk /system/app/GenieAicare/GenieAicare.apk.bak && echo renamed
ls -l /system/app/GenieAicare/
sync
mount -o ro,remount /system

echo "=== 3. drop data + leftover update dirs ==="
rm -rf /data/data/com.alibaba.ailabs.genie.aicare /data/data/com.alibaba.ailabs.genie.cook
rm -rf /data/app/com.alibaba.ailabs.genie.aicare-* /data/app/com.alibaba.ailabs.genie.cook-* 2>/dev/null

echo "=== after ==="
du -sk /data/app/*cook* /data/app/*aicare* 2>/dev/null || echo "no cook/aicare dirs left"
df -h /data | tail -1
