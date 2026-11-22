#!/system/bin/sh
# ai_check.sh -- 大模型路径：最近 final / 路由 / TTS 队列 / 守卫拦截计数
T5=/data/local/tmp/t5_bridge
echo "last final: $(tail -n 1 $T5/work/events.jsonl | sed 's/.*"text":"//; s/".*//')"
echo "--- worker (last 3 ai lines) ---"
grep 'route=ai' $T5/ai_worker/ai_worker.log | tail -2
grep 'deepseek ok' $T5/ai_worker/ai_worker.log | tail -1
grep 'tts queued' $T5/ai_worker/ai_worker.log | tail -1
echo "--- tts ---"
sh $T5/run_tts_exec.sh status 2>&1 | grep -E 'queue=|done=|inflight='
echo "--- guard ---"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t7/libtg_ttsguard.so --check 2>&1 | grep -o 'allowed=[0-9]* dropped=[0-9]* native_allowed=[0-9]* native_session=[0-9]* native_window=[0-9]* native_miss=[0-9]*'
