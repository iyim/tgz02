#!/system/bin/sh
# T9-02: clean-factory configuration for the decisive no-UI test.
# Stops both injection supervisors and restarts :core so no .so of ours is mapped at all.
BB=/system/xbin/busybox
echo "### date"; date '+%Y-%m-%d %H:%M:%S'
for p in $(ps -A -o PID,NAME | $BB awk '$2=="tg_supervisor"{print $1}'); do
  kill -TERM "$p" 2>/dev/null && echo "stopped supervisor $p"
done
sleep 2
echo "### supervisors left:"; ps -A -o PID,NAME | grep tg_supervisor
CORE=$(ps -A -o PID,ARGS | $BB awk '$NF=="com.alibaba.ailabs.genie.smartapp:core"{print $1; exit}')
echo "core before=$CORE"; [ -n "$CORE" ] && kill -9 "$CORE" && echo "killed $CORE"
sleep 12
CORE2=$(ps -A -o PID,ARGS | $BB awk '$NF=="com.alibaba.ailabs.genie.smartapp:core"{print $1; exit}')
echo "core after=$CORE2"
if [ -n "$CORE2" ]; then
  echo "### our libs in :core (expect none)"
  grep -c "libtg_" /proc/$CORE2/maps
  echo "### factory speech libs"
  grep -o "lib\(agspeech\|wakeup_bin_S1L_S3\|vad_api\)\.so" /proc/$CORE2/maps | $BB sort -u
fi
echo "### init.svc.tg_supervisor=$(getprop init.svc.tg_supervisor)"
echo "### top activity"
dumpsys activity activities | grep -E mResumedActivity | head -2
