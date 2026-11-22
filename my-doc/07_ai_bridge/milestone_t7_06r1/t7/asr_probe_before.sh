#!/system/bin/sh
# asr_probe.sh -- 唤醒+说话前后的识别链路证据（不清 logcat，只取时间窗内行）
echo "=== mark t0 ==="
date '+%H:%M:%S'
logcat -c 2>/dev/null
echo "cleared logcat"
echo "=== stats before ==="
grep 'stats=' /data/local/tmp/t6/supervisor.log 2>/dev/null | tail -1
