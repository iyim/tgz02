#!/system/bin/sh
# t9_08b_r2_dev_jlen.sh -- print the number of journal lines (a cheap "did anything new happen").
set -u
wc -l < /data/local/tmp/t5_bridge/tts/journal.jsonl 2>/dev/null | tr -d ' '