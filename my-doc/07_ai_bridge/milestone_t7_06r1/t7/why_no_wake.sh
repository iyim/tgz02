#!/system/bin/sh
# why_no_wake.sh -- 一分钟定位：唤醒链路到底断在哪一段
INJ=/data/local/tmp/t6/tg_injector
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
MAIN=$(pidof com.alibaba.ailabs.genie.smartapp | cut -d' ' -f1)
D=/data/data/com.alibaba.ailabs.genie.smartapp/files/wake
echo "uptime: $(uptime | sed 's/.*up //')"
echo "core=$CORE main=$MAIN"
echo "--- wakeinfo ---"
cat $D/wakeinfo.status 2>/dev/null
echo "--- wakeinfo mapped in core? ---"
grep -c libtg_wakeinfo /proc/$CORE/maps 2>/dev/null
echo "--- asr hook ---"
"$INJ" --pid $CORE --so /data/local/tmp/t6/libtg_hook.so --check 2>&1 | grep 'stats=' | head -1
echo "--- bridge ---"
cat /data/local/tmp/t5_bridge/work/bridge_status.json 2>/dev/null
echo
echo "--- events ---"
wc -l < /data/local/tmp/t5_bridge/work/events.jsonl
echo "--- worker ---"
pidof ai_worker
echo "--- screen ---"
dumpsys power 2>/dev/null | grep mWakefulness
echo "--- speech threads in core ---"
for t in $(ls /proc/$CORE/task 2>/dev/null); do
  c=$(cat /proc/$CORE/task/$t/comm 2>/dev/null)
  case "$c" in *speech*|*AG-*) echo "$t $c" ;; esac
done | head -12
