#!/system/bin/sh
# one-shot: dump last worker event/result, then inject a `say` request into the inbox
INBOX=/data/local/tmp/t9_ui/inbox
echo "=== last result files ==="
ls -t /data/local/tmp/t9_ui/result | head -3
last=$(ls -t /data/local/tmp/t9_ui/result | head -1)
echo "--- $last ---"
cat "/data/local/tmp/t9_ui/result/$last"
echo
echo "=== inject say ==="
ts=$(date +%s)
tmp="$INBOX/.say-$ts.tmp"
printf '{"v":1,"kind":"say","event_id":"probe-say-%s","text":"播放音乐测试"}' "$ts" > "$tmp"
ls -l "$tmp"
mv "$tmp" "$INBOX/say-$ts.json"
chown u0_a71:u0_a71 "$INBOX/say-$ts.json"
chmod 600 "$INBOX/say-$ts.json"
ls -l "$INBOX/say-$ts.json"
echo "injected say-$ts.json"
