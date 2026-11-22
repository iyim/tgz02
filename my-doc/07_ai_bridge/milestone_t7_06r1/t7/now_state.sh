#!/system/bin/sh
# now_state.sh -- 现在的真实状态：进程/事件/计数/崩溃
E=/data/local/tmp/t5_bridge/work/events.jsonl
D=/data/data/com.alibaba.ailabs.genie.smartapp/files/wake
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "uptime: $(uptime | sed 's/.*up //')"
echo "core=$CORE main=$(pidof com.alibaba.ailabs.genie.smartapp)"
echo "bridge=$(pidof tgb_bridge) worker=$(pidof ai_worker)"
echo "--- wakeinfo ---"
cat $D/wakeinfo.status 2>/dev/null
echo "--- asr hook ---"
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t6/libtg_hook.so --check 2>&1 | grep 'stats=' | head -1
echo "--- events ---"
wc -l < $E
tail -n 1 $E
echo "--- bridge ---"
cat /data/local/tmp/t5_bridge/work/bridge_status.json
echo
echo "--- crashes (last 5) ---"
ls -t /data/tombstones 2>/dev/null | head -3
logcat -d 2>/dev/null | grep -iE 'FATAL|tombstone|signal 11|SIGSEGV' | tail -5
echo "--- tts play ---"
head -c 200 /data/local/tmp/t5_bridge/tts/play.public.json 2>/dev/null
echo
