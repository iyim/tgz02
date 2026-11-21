#!/system/bin/sh
# T5-06D-P1: seed one queue item from a text file (device helper for the fault-injection tests).
#   args: <root> <event_id> <text-file> <attempts> [queue|inflight|failed]
export PATH=/system/bin:/system/xbin:/sbin
ROOT=$1
EID=$2
TF=$3
ATT=$4
DIR=${5:-queue}
D="$ROOT/$DIR"
mkdir -p "$D" || exit 1
[ -f "$TF" ] || { echo "seed: missing text file $TF"; exit 1; }
BYTES=$(wc -c < "$TF")
TXT=$(cat "$TF")
ESC=$(printf '%s' "$TXT" | sed -e 's/\\/\\\\/g' -e 's/"/\\"/g')
TMP="$D/$EID.json.tmp"
printf '{"v":1,"event_id":"%s","created_ms":%s,"attempts":%s,"reply_bytes":%s,"text":"%s"}\n' \
    "$EID" "$(date +%s)000" "$ATT" "$BYTES" "$ESC" > "$TMP" || exit 1
mv -f "$TMP" "$D/$EID.json" || exit 1
chmod 600 "$D/$EID.json"
echo "seeded $D/$EID.json bytes=$(wc -c < "$D/$EID.json") attempts=$ATT"
