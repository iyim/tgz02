#!/system/bin/sh
# T9-06 acceptance F: queue cap refuses new work instead of piling it up.
# The cap is a worker start option, so this restarts the worker twice (with and without a cap).
D=/data/local/tmp/t5_bridge
UI=/data/local/tmp/t9_ui
R=$UI/result
PKG=com.tgz02.uibridge
TS=$(date +%s)
echo "=== date"; date
rm -f "$R"/*.json 2>/dev/null

restart() {  # restart <cap-or-empty>
    P=$(pidof ai_worker)
    [ -n "$P" ] && kill -INT $P
    i=0
    while [ $i -lt 10 ]; do [ -d "/proc/$P" ] || break; sleep 1; i=$((i+1)); done
    [ -d "/proc/$P" ] && kill -TERM $P
    sleep 1
    if [ -n "$1" ]; then
        AIW_INBOX_QUEUE_CAP=$1 sh "$D/run_ai_worker.sh" start
    else
        sh "$D/run_ai_worker.sh" start
    fi
    sleep 3
    P=$(pidof ai_worker)
    echo "worker pid=$P cap=${1:-none}"
    tr '\0' ' ' < /proc/$P/cmdline | grep -o 'inbox-queue-cap [0-9]*' || echo "(no inbox-queue-cap arg)"
}

submit() {  # submit <id> <text>
    run-as $PKG sh -c "printf '%s' '{\"v\":1,\"event_id\":\"$1\",\"text\":\"$2\"}' > /data/local/tmp/t9_ui/inbox/.$1.tmp && mv /data/local/tmp/t9_ui/inbox/.$1.tmp /data/local/tmp/t9_ui/inbox/$1.json"
}

echo "=== cap=1, then two submissions in the same burst"
restart 1
submit "f1-$TS" "第一条 会占住队列"
submit "f2-$TS" "第二条 队列已满应被拒绝"
sleep 6
echo "f1: $(cat $R/f1-$TS.json 2>/dev/null)"
echo "f2: $(cat $R/f2-$TS.json 2>/dev/null)"
echo "--- queue depth now: $(ls $D/tts/queue | wc -l) queue, $(ls $D/tts/inflight | wc -l) inflight"
echo "--- worker log:"
grep 'inbox:' $D/ai_worker/ai_worker.log | tail -3

echo "=== wait for the queued item to finish, then submit once more (cap must not be sticky)"
sleep 8
echo "--- queue depth: $(ls $D/tts/queue | wc -l) queue, $(ls $D/tts/inflight | wc -l) inflight"
submit "f3-$TS" "第三条 队列空了应通过"
sleep 5
echo "f3: $(cat $R/f3-$TS.json 2>/dev/null)"

echo "=== back to the default (no cap argument)"
restart ""
echo "=== END"
