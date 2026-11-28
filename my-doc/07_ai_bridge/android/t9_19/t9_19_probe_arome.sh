#!/system/bin/sh
for P in com.alipay.arome.app com.alibaba.genie.waft ; do
  echo "=========== $P ==========="
  pm path $P
  dumpsys package $P | grep -E 'codePath|resourcePath|versionName|versionCode|flags=|firstInstallTime|userId=|installer' | head -8
  echo "-- label --"
  dumpsys package $P | grep -m2 -E 'applicationInfo|nonLocalizedLabel' 
  echo "-- size on disk --"
  du -sk $(pm path $P | head -1 | cut -d: -f2) 2>/dev/null
  echo "-- processes --"
  ps -A | grep "$P" | grep -v grep
  echo
done

echo "=========== who launches it ==========="
dumpsys activity providers 2>/dev/null | grep -iE 'arome|waft' | head -6
echo
echo "=========== its data dirs ==========="
du -sk /data/data/com.alipay.arome.app/* 2>/dev/null | sort -rn | head -8
echo
echo "=========== mini-program entries in the catalogue ==========="
echo "(applist applet rows are opened through waft:// — see the ApplistDb dump in the report)"
