#!/system/bin/sh
# triage.sh -- 一分钟看清：事件在不在进、Worker 活没活、TTS 有没有播、守卫拦了什么
T5=/data/local/tmp/t5_bridge
echo "=== procs ==="
echo "bridge=$(pidof tgb_bridge) worker=$(pidof ai_worker) tts=$(cat $T5/tts/tts_exec.pid 2>/dev/null)"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE"
echo "=== worker state (tail) ==="
tail -n 6 $T5/ai_worker/ai_worker.log
echo "=== events ==="
wc -l < $T5/work/events.jsonl
tail -n 2 $T5/work/events.jsonl | sed 's/,"raw.*//'
echo "=== tts ==="
sh $T5/run_tts_exec.sh status 2>&1 | grep -E 'queue=|inflight=|done=|journal_last'
echo "=== guard ==="
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t7/libtg_ttsguard.so --check 2>&1 | grep 'stats='
echo "=== worker status file ==="
cat $T5/ai_worker/ai_worker_status.json 2>/dev/null | head -c 400
echo
