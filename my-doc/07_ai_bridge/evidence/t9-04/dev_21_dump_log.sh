#!/system/bin/sh
echo "=== date"; date
echo "=== logcat -d -s T904"
logcat -d -s T904 2>/dev/null | tail -60
echo "=== grep t9 aidl in whole buffer"
logcat -d 2>/dev/null | grep -F 'T904' | tail -40
echo "=== app pid / process activity"
pidof com.tgz02.aidltest
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
echo "=== recent app log lines"
logcat -d 2>/dev/null | grep -F 'com.tgz02.aidltest' | tail -20
echo "=== END"
