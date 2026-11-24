#!/system/bin/sh
echo "=== date"; date
echo "=== logd?"
ps -A 2>/dev/null | grep -E ' logd$' || echo "(no logd line)"
echo "=== buffers and their oldest/newest line"
for b in main system crash; do
    echo "--- $b"
    logcat -d -b $b 2>/dev/null | sed -n '2p;3p' | cut -c1-60
    logcat -d -b $b 2>/dev/null | tail -1 | cut -c1-60
    echo "lines=$(logcat -d -b $b 2>/dev/null | wc -l)"
done
echo "=== logcat -g"
logcat -g 2>/dev/null
echo "=== line rate probe (3 s)"
A=$(logcat -d -b main 2>/dev/null | wc -l); sleep 3; B=$(logcat -d -b main 2>/dev/null | wc -l)
echo "before=$A after=$B"
echo "=== END"
