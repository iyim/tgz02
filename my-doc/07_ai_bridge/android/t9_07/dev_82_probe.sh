#!/system/bin/sh
# dev_82_probe.sh -- T9-07R1: read-only facts for one turn (log lines, journal lines).
#   su -c "sh /data/local/tmp/t9/t9_07/dev_82_probe.sh [event_id]"
# Everything is done inside this file so no quoting ever has to survive adb + su + sh.
set -u
J=/data/local/tmp/t5_bridge/tts/journal.jsonl
L=/data/local/tmp/t5_bridge/ai_worker/ai_worker.log
EID=${1:-}

echo "== text_turns"
grep -E "text turn ok|text turn FAILED|inbox ask queued" "$L" 2>/dev/null | tail -8
echo "== journal_tail"
tail -6 "$J" 2>/dev/null
if [ -n "$EID" ]; then
    echo "== journal_eid"
    grep -- "$EID" "$J" 2>/dev/null
fi
echo "EXIT=0"
