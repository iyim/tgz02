#!/system/bin/sh
M=/data/adb/modules/t9_19e_guard
cp -f /data/local/tmp/t9_19e2_guard.so $M/system/tgz02/lib/libtg_ttsguard_t8156.so
chmod 644 $M/system/tgz02/lib/libtg_ttsguard_t8156.so
sha256sum $M/system/tgz02/lib/libtg_ttsguard_t8156.so
sed -i 's/^version=.*/version=t919e2/' $M/module.prop 2>/dev/null
grep -a version $M/module.prop
