#!/system/bin/sh
# TG-Z02 只读基线采集（在 PC 侧用 adb shell 执行亦可）
# 用法：bash collect_baseline.sh <serial> <outdir>
S=${1:-192.168.1.9:5555}
O=${2:-.}
T=$(date +%m%d_%H%M%S)
adb -s "$S" shell cat /proc/uptime                     > "$O/uptime_$T.txt"
adb -s "$S" shell dumpsys meminfo                      > "$O/meminfo_$T.txt"
adb -s "$S" shell dumpsys cpuinfo                      > "$O/cpuinfo_$T.txt"
adb -s "$S" shell dumpsys power                        > "$O/power_$T.txt"
adb -s "$S" shell dumpsys alarm                        > "$O/alarm_$T.txt"
adb -s "$S" shell dumpsys activity services            > "$O/services_$T.txt"
adb -s "$S" shell dumpsys activity processes           > "$O/processes_$T.txt"
adb -s "$S" shell ps -A -o USER,PID,PPID,VSZ,RSS,NAME  > "$O/ps_$T.txt"
adb -s "$S" shell pm list packages -s                  > "$O/pm_system_$T.txt"
adb -s "$S" shell pm list packages -d                  > "$O/pm_disabled_$T.txt"
echo "baseline written to $O with tag $T"
