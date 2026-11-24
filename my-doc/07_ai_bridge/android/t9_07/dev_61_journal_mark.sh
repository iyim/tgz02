#!/system/bin/sh
# dev_61_journal_mark.sh -- print the current journal line count (used as a read baseline).
#   su -c "sh /data/local/tmp/t9/t9_07/dev_61_journal_mark.sh"
set -u
J=/data/local/tmp/t5_bridge/tts/journal.jsonl
if [ -f "$J" ]; then wc -l < "$J" | tr -d ' '; else echo 0; fi
