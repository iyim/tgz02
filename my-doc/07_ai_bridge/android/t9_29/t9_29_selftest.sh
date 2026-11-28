#!/system/bin/sh
# T9-29 P0 真机自测：注册表归属/开关/Shadow 判定（不消费事件、不执行技能、不开麦）
BIN=/data/local/tmp/t9_29/ai_worker
CONF=/data/local/tmp/t5_bridge/ai_worker/worker.conf
STATE=/data/local/tmp/t9_29/state

echo "--- binary ---"
md5sum "$BIN"

echo
echo "--- case 1: live conf (music on, time/alarm off) ---"
"$BIN" --conf "$CONF" --state-dir "$STATE" --self-test-registry "播放周杰伦的晴天"
echo
"$BIN" --conf "$CONF" --state-dir "$STATE" --self-test-registry "下一曲"
echo
"$BIN" --conf "$CONF" --state-dir "$STATE" --self-test-registry "今天天气怎么样"
echo
"$BIN" --conf "$CONF" --state-dir "$STATE" --self-test-registry "明天早上七点叫我起床"
echo
"$BIN" --conf "$CONF" --state-dir "$STATE" --self-test-registry "现在几点"
echo
"$BIN" --conf "$CONF" --state-dir "$STATE" --self-test-registry "还剩多少电"

echo
echo "--- case 2: registry enabled (shadow) on the same conf ---"
"$BIN" --conf "$CONF" --state-dir "$STATE" --self-test-registry "播放晴天" >/dev/null 2>&1
echo "(self-test reads flags from conf; registry enable is a worker.conf key)"
grep -E "skill_(music|time|alarm)_enabled|skill_dispatch_enabled|skill_registry" "$CONF" || true
