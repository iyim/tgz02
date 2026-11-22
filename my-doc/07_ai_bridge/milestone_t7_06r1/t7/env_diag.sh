#!/system/bin/sh
# env_diag.sh -- 采集落点候选目录 + ASR 桥程序的实际情况
echo "=== /data/local/tmp perms ==="
ls -ld /data/local/tmp /data/local/tmp/t7 /data/local/tmp/t5_bridge /data/local/tmp/t7/wake 2>/dev/null
echo "=== app data dirs ==="
ls -ld /data/data/com.alibaba.ailabs.genie.smartapp /data/data/com.alibaba.ailabs.genie.smartapp/files 2>/dev/null
ls -ld /data/user/0/com.alibaba.ailabs.genie.smartapp/files 2>/dev/null
echo "=== t5_bridge bin ==="
ls -l /data/local/tmp/t5_bridge/bin /data/local/tmp/t5_bridge/*.sh 2>/dev/null
echo "=== bridge log ==="
tail -n 12 /data/local/tmp/t5_bridge/tgb_bridge.log 2>/dev/null
echo "=== is any tgb_bridge running ==="
ps -A -o PID,ARGS 2>/dev/null | grep -i tgb | grep -v grep
echo "=== core uid/gid ==="
CORE=$(ps -A -o PID,ARGS 2>/dev/null | grep 'smartapp:core' | grep -v tg_supervisor | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "core=$CORE"
cat /proc/$CORE/status 2>/dev/null | grep -E 'Uid|Gid|Groups'
