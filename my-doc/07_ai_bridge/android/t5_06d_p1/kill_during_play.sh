#!/system/bin/sh
# T5-06D-P1: kill the executor *while* the item is in inflight (single round trip, no host latency).
#   args: <tts-root> <event-id> [wait-seconds]
R=$1
EID=$2
MAX=${3:-90}
i=0
while [ $i -lt $((MAX * 10)) ]; do
    if [ -f "$R/inflight/$EID.json" ]; then break; fi
    i=$((i + 1))
    sleep 0.1
done
if [ ! -f "$R/inflight/$EID.json" ]; then
    echo "NO_INFLIGHT"
    exit 1
fi
echo "done_before=$(ls "$R/done/$EID.ok" 2>/dev/null | wc -l)"
echo "inflight_bytes_before=$(wc -c < "$R/inflight/$EID.json")"
echo "md5_before=$(md5sum "$R/inflight/$EID.json" | cut -c1-32)"
P=$(cat "$R/tts_exec.pid" 2>/dev/null)
echo "pid=$P"
case "$P" in
    ""|*[!0-9]*) echo "BAD_PID"; exit 2 ;;
esac
kill -9 "$P" 2>/dev/null
echo "kill_rc=$?"
j=0
while [ $j -lt 50 ]; do
    [ -d "/proc/$P" ] || break
    j=$((j + 1))
    sleep 0.1
done
if [ -d "/proc/$P" ]; then echo "pid_gone=no"; else echo "pid_gone=yes"; fi
echo "inflight_after=$(ls "$R/inflight" 2>/dev/null | wc -l)"
echo "queue_after=$(ls "$R/queue" 2>/dev/null | wc -l)"
echo "done_after=$(ls "$R/done" 2>/dev/null | wc -l)"
echo "md5_after=$(md5sum "$R/inflight/$EID.json" 2>/dev/null | cut -c1-32)"
if [ -f "$R/inflight/$EID.json" ]; then echo "KEPT"; else echo "GONE"; fi
exit 0
