#!/system/bin/sh
# fresh_core.sh -- 刚重启应用之后：注入状态 / 这一分钟引擎日志 / 事件数
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
D=/data/data/com.alibaba.ailabs.genie.smartapp/files/wake
echo "core=$CORE"
echo "hook mapped: $(grep -c libtg_hook /proc/$CORE/maps 2>/dev/null)  wakeinfo mapped: $(grep -c libtg_wakeinfo /proc/$CORE/maps 2>/dev/null)"
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t6/libtg_hook.so --check 2>&1 | grep 'stats=' | head -1
echo "--- wakeinfo ---"
cat $D/wakeinfo.status 2>/dev/null
echo "--- engine log ---"
logcat -d 2>/dev/null | grep -iE 'onListen|onCloudEOU|onResult|asr|SpeechEngine' | tail -14
echo "--- events ---"
wc -l < /data/local/tmp/t5_bridge/work/events.jsonl
