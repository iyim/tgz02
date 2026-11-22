#!/system/bin/sh
# inject_test_event.sh -- 追加一条**与真实记录同形**的 asr_final，端到端验证大模型链路
#   文本固定用 9 字/27 字节，避免 text_chars 校验不过
set -u
E=/data/local/tmp/t5_bridge/work/events.jsonl
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
NOW=$(date +%s%3N)
ID="t6-$CORE-CONFTEST-$(date +%s)-g2"
printf '{"version":1,"rec":"asr_final","event_id":"%s","event_type":"asr_final","pid":%s,"session_id":"900002","text":"讲个冷笑话吧","text_bytes":18,"text_chars":6,"is_final":true,"received_at_ms":%s,"recv_at_ms":%s,"stored_at_ms":%s,"seq":1}\n' \
  "$ID" "$CORE" "$NOW" "$NOW" "$NOW" >> $E
echo "appended: $ID"
