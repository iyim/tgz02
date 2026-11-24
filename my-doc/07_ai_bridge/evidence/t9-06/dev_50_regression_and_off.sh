#!/system/bin/sh
# T9-06 acceptance G: the accepted chain still works, and the channel is additive (can be off).
D=/data/local/tmp/t5_bridge
UI=/data/local/tmp/t9_ui
LOG=/data/local/tmp/t9/t9_06/g_tts.log
TXT=/data/local/tmp/t9/t9_06/g.txt
: > "$LOG"
printf '回归测试 原厂播报正常' > "$TXT"
echo "=== date"; date

echo "=== 1. accepted path: TtsExec plays a line without going through the inbox"
logcat -v time -s AudioStateManager VoiceManager TtsManager > "$LOG" 2>&1 &
LP=$!
sleep 1
sh "$D/run_tts_exec.sh" play "$TXT" t906regress
sleep 12
kill $LP 2>/dev/null
grep -E 'tts_feedback|onTtsStart:141' "$LOG" | head -6
tail -2 "$D/tts/journal.jsonl"

echo "=== 2. worker health"
grep -c 'inbox:' "$D/ai_worker/ai_worker.log"
tail -3 "$D/ai_worker/ai_worker.log"
ls -l "$D/ai_worker/ai_worker_status.json" 2>/dev/null

echo "=== 3. factory :core and our injection are untouched"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core)
echo "core_pid=$CORE"
grep libtg_ /proc/$CORE/maps | sed 's/^.* \//  \//' | sort -u
for s in tg_hook_sup tg_guard_sup; do echo "$s=$(getprop init.svc.$s)"; done
for n in tgb_bridge ai_worker; do echo "$n=$(pidof $n)"; done

echo "=== 4. additive proof: remove the inbox tree -> worker starts without the channel"
P=$(pidof ai_worker); [ -n "$P" ] && kill -INT $P; sleep 4
mv "$UI" "/data/local/tmp/t9_ui.off"
sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
echo "worker pid=$P (channel off)"
tr '\0' ' ' < /proc/$P/cmdline | grep -c -- '--inbox ' || true
tr '\0' ' ' < /proc/$P/cmdline

echo "=== 5. restore the channel"
P=$(pidof ai_worker); [ -n "$P" ] && kill -INT $P; sleep 4
mv "/data/local/tmp/t9_ui.off" "$UI"
sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
echo "worker pid=$P (channel on)"
tr '\0' ' ' < /proc/$P/cmdline
echo "=== END"
