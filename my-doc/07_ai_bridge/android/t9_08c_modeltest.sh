#!/system/bin/sh
# t9_08c_modeltest.sh <model_id|-> -- 写一条 kind=modeltest 请求，并打印回执
#
# 这是 App 配置页「测试连接」写出的同一条请求（同一个 Inbox、同一种格式），
# 用来在验收时不必每次都去点屏幕。model_id 传 "-" 表示测当前生效配置。
set -u
UI=/data/local/tmp/t9_ui
ID="mt-$(date +%H%M%S)-$$"
MID=${1:--}
TMP=/data/local/tmp/t9_08c_mt.tmp

if [ "$MID" = "-" ]; then
    BODY='{"v":1,"kind":"modeltest","event_id":"'"$ID"'"}'
else
    BODY='{"v":1,"kind":"modeltest","event_id":"'"$ID"'","model_id":"'"$MID"'"}'
fi

printf '%s' "$BODY" > "$TMP" || exit 1
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1
echo "submitted $ID target=$MID"

i=0
while [ $i -lt 120 ]; do
    [ -f "$UI/result/$ID.json" ] && break
    sleep 0.25
    i=$((i + 1))
done
echo "receipt: $(cat "$UI/result/$ID.json" 2>/dev/null || echo '(none)')"
