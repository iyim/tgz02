#!/system/bin/sh
# T9-18.1 renderData capture: logcat to file, rotate-safe (truncate at start)
: > /data/local/tmp/t9_18_logcat.txt
logcat -v time >> /data/local/tmp/t9_18_logcat.txt 2>&1 &
echo $! > /data/local/tmp/t9_18_logcat.pid
echo "capture pid $(cat /data/local/tmp/t9_18_logcat.pid)"