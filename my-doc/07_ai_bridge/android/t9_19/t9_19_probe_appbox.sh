#!/system/bin/sh
echo "########## 1. our probe apps ##########"
for P in com.tgz02.aidltest com.tgz02.providerprobe ; do
  echo "--- $P ---"
  pm path $P
  dumpsys package $P | grep -E 'codePath|versionName|flags=|firstInstallTime|installerPackageName' | head -5
  echo "  label: $(dumpsys package $P | grep -m1 'applicationInfo' >/dev/null; echo)"
done
echo
echo "########## 2. 旭慧生活 com.anthouse.ayland ##########"
P=com.anthouse.ayland
pm path $P
dumpsys package $P | grep -E 'codePath|versionName|versionCode|flags=|firstInstallTime|lastUpdateTime|installerPackageName|userId=' | head -8
ls -l /data/app/*anthouse* 2>/dev/null | head -5
echo "running: $(ps -A | grep anthouse | grep -v grep | wc -l)"
echo
echo "########## 3. who can install packages (appbox candidates) ##########"
for P in com.alibaba.ailabs.genie.intermediary com.alibaba.ailabs.genie.smartapp com.alibaba.ailabs.genie.iot ; do
  echo "--- $P ---"
  pm path $P 2>/dev/null | head -1
  dumpsys package $P 2>/dev/null | grep -E 'INSTALL_PACKAGES|DELETE_PACKAGES|INSTALL_SHORTCUT' | head -4
done
echo
echo "########## 4. ApplistDb / appbox traces on disk ##########"
find /data -maxdepth 6 -iname '*Applist*' 2>/dev/null | head
find /data/data /data/user/0 -maxdepth 4 -iname '*appbox*' 2>/dev/null | head
find /data/data /data/user/0 -maxdepth 3 -iname '*applist*' 2>/dev/null | head
echo
echo "########## 5. recently installed packages ##########"
dumpsys package | grep -E 'firstInstallTime=2026-11-2[5-8]' -B8 | grep -E 'Package \[|firstInstallTime' | tail -20
echo
echo "########## 6. PackageInstaller sessions ##########"
pm list packages -3
