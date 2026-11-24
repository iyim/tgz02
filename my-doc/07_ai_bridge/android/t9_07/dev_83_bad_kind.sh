#!/system/bin/sh
# dev_83_bad_kind.sh -- T9-07R1F: submit a request whose "kind" is NOT a string.
#   su -c "sh /data/local/tmp/t9/t9_07/dev_83_bad_kind.sh true|false|null|1"
# The JSON literal is written unquoted on purpose: the parser must refuse it, answer
# ok:false with "kind must be a string", and park the file in rejected/.
set -u
UI=/data/local/tmp/t9_ui
LIT=${1:-true}
ID="badi-$(date +%H%M%S)"
TMP=/data/local/tmp/t9_07_badkind.tmp

printf '{"v":1,"kind":%s,"event_id":"%s","text":"literal-kind"}' "$LIT" "$ID" > "$TMP" || exit 1
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1

echo "== submitted kind=$LIT id=$ID"
i=0
while [ $i -lt 20 ]; do
    [ -f "$UI/result/$ID.json" ] && break
    sleep 0.5
    i=$((i + 1))
done
echo "receipt: $(cat "$UI/result/$ID.json" 2>/dev/null || echo '(none)')"
# ti_reject parks the file as <event_id>.<ts>.rejected
echo "rejected: $(ls "$UI/rejected" 2>/dev/null | grep -c "^$ID")"
echo "EXIT=0"
