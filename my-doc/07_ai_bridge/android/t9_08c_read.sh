#!/system/bin/sh
# t9_08c_read.sh -- T9-08C 取证快照（只读）
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08c/t9_08c_read.sh [event_id]"
#
# 打印：status.public.json 全文（含 models 块）、worker 日志里的模型相关行、最近的 modeltest
# 回执、以及（可选）某个 ask 事件在事件流与 TTS journal 里的记录。
set -u
UI=/data/local/tmp/t9_ui
TTS=/data/local/tmp/t5_bridge/tts
LOG=/data/local/tmp/t5_bridge/ai_worker/ai_worker.log
EV=${1:-}

echo "== status.public.json =="
cat "$UI/status.public.json" 2>/dev/null
echo ""
echo "== worker log: model lines =="
grep -E "model config|provider ready: models|inbox modeltest" "$LOG" 2>/dev/null | tail -12
echo "== inbox receipts (mt-*) =="
ls "$UI/result" 2>/dev/null | grep -E '^mt-' | tail -4 | while read -r f; do
    echo "-- $f"
    cat "$UI/result/$f" 2>/dev/null
    echo ""
done
if [ -n "$EV" ]; then
    echo "== turn record for $EV =="
    ls "$UI/events" 2>/dev/null | tail -12 | while read -r f; do
        if grep -q "\"event_id\":\"$EV\"" "$UI/events/$f" 2>/dev/null; then
            echo "-- $f"
            cat "$UI/events/$f"
            echo ""
        fi
    done
    echo "== tts journal for $EV =="
    grep "\"event_id\":\"$EV\"" "$TTS/journal.jsonl" 2>/dev/null | tail -4
fi
echo "EXIT=0"
