#!/system/bin/sh
# t9_08b_r2_dev_journal.sh <from_line> -- print the journal records after that line.
set -u
J=/data/local/tmp/t5_bridge/tts/journal.jsonl
FROM=${1:-0}
if [ "$FROM" -gt 0 ]; then
    tail -n +$((FROM + 1)) "$J" 2>/dev/null | head -80
else
    tail -20 "$J" 2>/dev/null
fi