#!/system/bin/sh
# collect_ev.sh -- 把本轮证据从应用私有目录拷到 /sdcard（root 读应用目录再复制）
D=/data/data/com.alibaba.ailabs.genie.smartapp/files/wake
cp $D/wakeinfo.jsonl /sdcard/t706r1_wakeinfo.jsonl
cp $D/wakeinfo.status /sdcard/t706r1_wakeinfo.status
chmod 644 /sdcard/t706r1_wakeinfo.jsonl /sdcard/t706r1_wakeinfo.status
cp /data/local/tmp/t5_bridge/work/events.jsonl /sdcard/t706r1_events.jsonl
chmod 644 /sdcard/t706r1_events.jsonl
echo "=== perms ==="
ls -ld $D
ls -l $D
echo "=== status ==="
cat $D/wakeinfo.status
