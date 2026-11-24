#!/system/bin/sh
# T9-06 closing state
echo "=== date"; date
P=$(pidof ai_worker)
echo "worker_pid=$P"
[ -n "$P" ] && tr '\0' ' ' < /proc/$P/cmdline && echo
C=$(pidof com.alibaba.ailabs.genie.smartapp:core)
echo "core_pid=$C"
echo "libtg mappings in :core: $(grep -c libtg_ /proc/$C/maps)"
grep libtg_ /proc/$C/maps | sed 's/^.* \//  \//' | sort -u
echo "=== init services"
for s in tg_hook_sup tg_guard_sup; do echo "$s=$(getprop init.svc.$s)"; done
for n in tgb_bridge ai_worker; do echo "$n=$(pidof $n)"; done
echo "=== UI channel tree"
ls -ld /data/local/tmp/t9_ui /data/local/tmp/t9_ui/inbox /data/local/tmp/t9_ui/result /data/local/tmp/t9_ui/rejected
echo -n "allowed_uids="; cat /data/local/tmp/t9_ui/allowed_uids; echo
echo "inbox: $(ls /data/local/tmp/t9_ui/inbox | wc -l) files, result: $(ls /data/local/tmp/t9_ui/result | wc -l) files"
echo "=== accepted queue perms (must still be 0700 root)"
ls -ld /data/local/tmp/t5_bridge/tts/queue /data/local/tmp/t5_bridge/tts/done
echo "=== probe apps"
pm list packages | grep tgz02
echo "=== backup for rollback"
ls -l /data/local/tmp/t9/t9_06/backup/ 2>/dev/null
echo "=== top / power"
dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity
dumpsys power 2>/dev/null | grep -m1 mWakefulness
echo "=== END"
