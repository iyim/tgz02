#!/system/bin/sh
# T9-06R1 closing state
echo "=== date"; date
P=$(pidof ai_worker)
echo "worker_pid=$P"
[ -n "$P" ] && tr '\0' ' ' < /proc/$P/cmdline && echo
C=$(pidof com.alibaba.ailabs.genie.smartapp:core)
echo "core_pid=$C  libtg_mappings=$(grep -c libtg_ /proc/$C/maps)"
for s in tg_hook_sup tg_guard_sup; do echo "$s=$(getprop init.svc.$s)"; done
for n in tgb_bridge ai_worker; do echo "$n=$(pidof $n)"; done
echo "=== inbox layout (private)"
ls -ld /data/local/tmp/t9_ui /data/local/tmp/t9_ui/inbox /data/local/tmp/t9_ui/result /data/local/tmp/t9_ui/rejected
echo -n "allowed_uids="; cat /data/local/tmp/t9_ui/allowed_uids; echo
echo "inbox=$(ls /data/local/tmp/t9_ui/inbox | wc -l) result=$(ls /data/local/tmp/t9_ui/result | wc -l) rejected=$(ls /data/local/tmp/t9_ui/rejected | wc -l)"
echo "=== accepted queue perms untouched"
ls -ld /data/local/tmp/t5_bridge/tts/queue /data/local/tmp/t5_bridge/tts/done
echo "=== backups for rollback"
ls -l /data/local/tmp/t9/t9_06/backup/
echo "=== worker inbox counters"
grep 'inbox:' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -3
echo "=== top / power"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
dumpsys power 2>/dev/null | grep -m1 mWakefulness
echo "=== END"
