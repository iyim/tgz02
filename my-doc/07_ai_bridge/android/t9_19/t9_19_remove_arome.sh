#!/system/bin/sh
# T9-19: remove the Alipay mini-program container (the "支付宝小程序" row in 空间清理).
#   /system/app/AMPE/AMPE.apk  26.8MB  +  /data/data/com.alipay.arome.app  ~80MB
#   Nothing depends on it except the waft:// mini-program entries in appbox's catalogue.
BAK=/data/local/tmp/t9_19_bak
mkdir -p $BAK

echo "=== before ==="
free -m | head -2
du -sk /data/data/com.alipay.arome.app 2>/dev/null
ps -A | grep -E 'arome|waft' | grep -v grep || echo "no process"
echo

echo "=== 1. backup apk ==="
cp -f /system/app/AMPE/AMPE.apk $BAK/AMPE-arome-10.2.3.1775.apk && ls -l $BAK/AMPE-arome-10.2.3.1775.apk
echo

echo "=== 2. rename so PackageManager stops scanning it ==="
mount -o rw,remount /system || { echo REMOUNT-FAILED; exit 1; }
[ -f /system/app/AMPE/AMPE.apk ] && mv /system/app/AMPE/AMPE.apk /system/app/AMPE/AMPE.apk.bak && echo "renamed"
ls -l /system/app/AMPE/
sync
mount -o ro,remount /system
echo

echo "=== 3. drop its 80MB data dir ==="
rm -rf /data/data/com.alipay.arome.app
echo "data dir gone: $([ -d /data/data/com.alipay.arome.app ] && echo NO || echo YES)"
echo

echo "=== 4. after ==="
free -m | head -2
