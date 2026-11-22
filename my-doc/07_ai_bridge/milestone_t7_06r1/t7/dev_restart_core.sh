#!/system/bin/sh
# dev_restart_core.sh -- 重启 :core 让新 .so 真正被加载（旧 inode 已被删除，RTLD_NOLOAD 会拒绝）
chmod 644 /data/local/tmp/t7/libtg_wakeinfo.so
OLDPID=$(ps -A -o PID,ARGS 2>/dev/null | grep 'com.alibaba.ailabs.genie.smartapp:core' | grep -v run_t7 | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "old core=$OLDPID"
[ -n "$OLDPID" ] && kill -9 "$OLDPID"
sleep 10
echo "=== after restart ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-status
echo "=== wakeinfo ==="
sh /data/local/tmp/t7/dev_inject_wake.sh install
