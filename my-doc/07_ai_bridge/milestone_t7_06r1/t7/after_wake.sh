#!/system/bin/sh
# after_wake.sh -- 刚才那次唤醒之后：快照有没有增加、语音线程还在不在、KWS 日志说什么
D=/data/data/com.alibaba.ailabs.genie.smartapp/files/wake
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE"
echo "--- wakeinfo ---"
cat $D/wakeinfo.status
echo "--- speech threads ---"
for t in $(ls /proc/$CORE/task 2>/dev/null); do
  c=$(cat /proc/$CORE/task/$t/comm 2>/dev/null)
  case "$c" in *speech*|*Speech*) echo "$t $c" ;; esac
done
echo "--- logcat: wakeup/multimodal ---"
logcat -d 2>/dev/null | grep -iE 'UnconvWakeup|MultiModal|wakeup|kws' | tail -12
