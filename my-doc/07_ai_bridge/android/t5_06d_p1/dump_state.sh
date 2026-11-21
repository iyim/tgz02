#!/system/bin/sh
# T5-06D-P1: dump the executor root (counts + file listing + journal tail + state).
#   args: <root>
export PATH=/system/bin:/system/xbin:/sbin
R=$1
echo "== counts"
for d in queue inflight done failed tmp; do
    printf '%s=%s\n' "$d" "$(ls "$R/$d" 2>/dev/null | wc -l)"
done
echo "== queue"
ls -l "$R/queue" 2>/dev/null
echo "== inflight"
ls -l "$R/inflight" 2>/dev/null
echo "== failed"
ls -l "$R/failed" 2>/dev/null
echo "== done (last 3)"
ls -1 "$R/done" 2>/dev/null | tail -n 3
echo "== journal (last 12)"
tail -n 12 "$R/journal.jsonl" 2>/dev/null
echo "== state"
cat "$R/state.json" 2>/dev/null
echo "== end"
