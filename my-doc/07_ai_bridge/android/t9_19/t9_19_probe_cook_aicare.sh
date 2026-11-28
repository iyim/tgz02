#!/system/bin/sh
for P in com.alibaba.ailabs.genie.cook com.alibaba.ailabs.genie.aicare com.web1n.permissiondog com.ktcp.aiagent ; do
  echo "=========== $P ==========="
  pm path $P 2>/dev/null
  dumpsys package $P 2>/dev/null | grep -E 'codePath|versionName|flags=|firstInstallTime|enabled=|userId=' | head -6
  APK=$(pm path $P 2>/dev/null | head -1 | cut -d: -f2)
  [ -n "$APK" ] && echo "   apk: $(ls -l "$APK" 2>/dev/null | tr -s ' ' | cut -d' ' -f5) bytes"
  echo "   system copy: $(ls -d /system/app/*cook* /system/app/*aicare* /system/app/*Cook* /system/app/*Aicare* 2>/dev/null | head -3)"
  echo
done
echo "=== sizes ==="
du -sk /data/app/*cook* /data/app/*aicare* /data/app/*permission* 2>/dev/null
echo
echo "=== data dirs ==="
du -sk /data/data/com.alibaba.ailabs.genie.cook /data/data/com.alibaba.ailabs.genie.aicare 2>/dev/null
