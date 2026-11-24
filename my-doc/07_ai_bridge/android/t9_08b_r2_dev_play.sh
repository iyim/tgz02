#!/system/bin/sh
# t9_08b_r2_dev_play.sh -- print play.public.json (what the executor says it is doing right now).
set -u
cat /data/local/tmp/t5_bridge/tts/play.public.json 2>/dev/null
