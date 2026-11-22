#!/system/bin/sh
# recapture.sh -- 换新构建后：删旧采集文件 -> 重载 :core -> 注入 -> 等待
set -u
D=/data/data/com.alibaba.ailabs.genie.smartapp/files/wake
rm -f $D/wakeinfo.jsonl $D/wakeinfo.status
sh /data/local/tmp/t7/run_t7_05.sh guard-reload 2>&1 | tail -3
sleep 2
sh /data/local/tmp/t7/inject_wake.sh install 2>&1 | tail -2
sleep 1
echo "=== fresh dir ==="
ls -ld $D; ls -l $D
