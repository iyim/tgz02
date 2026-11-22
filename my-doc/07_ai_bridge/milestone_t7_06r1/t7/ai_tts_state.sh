#!/system/bin/sh
# ai_tts_state.sh -- 大模型回答链路：Worker 有没有生成、TTS 执行器在不在、队列里有没有积压
T5=/data/local/tmp/t5_bridge
echo "=== worker: recent ai routes ==="
grep -E 'route=ai|tts queued|provider .*(err|timeout|http)' $T5/ai_worker/ai_worker.log | tail -8
echo "=== tts exec process ==="
ps -A -o PID,ARGS 2>/dev/null | grep -E 'tts_exec|app_process' | grep -v grep | head -5
echo "=== tts queue ==="
ls -1 $T5/tts 2>/dev/null | head -12
echo "queue count: $(ls -1 $T5/tts 2>/dev/null | wc -l)"
echo "=== play state ==="
head -c 300 $T5/tts/play.public.json 2>/dev/null
echo
echo "=== tts supervisor script? ==="
ls -l $T5/run_tts_exec.sh $T5/tts_supervisor.sh 2>/dev/null
