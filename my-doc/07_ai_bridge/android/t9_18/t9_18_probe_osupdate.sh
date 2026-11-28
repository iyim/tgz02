#!/system/bin/sh
# T9-18: probe com.alibaba.ailabs.genie.osupdate (system updater) before removal
P=com.alibaba.ailabs.genie.osupdate
echo "=== 1. path ==="
pm path $P
echo
echo "=== 2. package flags / identity ==="
dumpsys package $P | grep -E 'codePath|resourcePath|versionName|versionCode|sharedUser|userId=|flags=|pkgFlags|privateFlags|targetSdk|minSdk|installerPackageName|firstInstallTime|lastUpdateTime|enabled=' | head -30
echo
echo "=== 3. who declares it (system dir) ==="
ls -ld /system/app/*osupdate* /system/priv-app/*osupdate* /data/app/*osupdate* 2>/dev/null
echo
echo "=== 4. components ==="
dumpsys package $P | sed -n '/Activity Resolver Table/,/^$/p' | head -5
echo "--- services ---"
dumpsys package $P | sed -n '/Service Resolver Table/,/^$/p' | head -20
echo "--- providers ---"
dumpsys package $P | sed -n '/Content Provider Resolver Table/,/^$/p' | grep -i osupdate | head -10
echo "--- receivers ---"
dumpsys package $P | grep -E 'Receiver|Broadcast' | head -10
echo
echo "=== 5. does anything else reference it ==="
dumpsys activity providers 2>/dev/null | grep -i osupdate | head -10
echo
echo "=== 6. granted permissions (security relevant) ==="
dumpsys package $P | sed -n '/grantedPermissions:/,/^ *[a-z]*Permissions:/p' | head -25
echo
echo "=== 7. log dir size / count ==="
du -sh /data/user/0/$P/files/log 2>/dev/null
ls /data/user/0/$P/files/log 2>/dev/null | wc -l
echo
echo "=== 8. current state ==="
ps -A | grep -i osupdate
echo
echo "=== 9. apk size ==="
APK=$(pm path $P | head -1 | cut -d: -f2)
ls -l "$APK" 2>/dev/null
