#!/system/bin/sh
# last_finals.sh -- 最近 N 条 final 的文本（判断是"只有唤醒词"还是"带命令"）
N=${1:-4}
tail -n $N /data/local/tmp/t5_bridge/work/events.jsonl | sed 's/.*"text":"//; s/".*//'
echo "events=$(wc -l < /data/local/tmp/t5_bridge/work/events.jsonl)"
