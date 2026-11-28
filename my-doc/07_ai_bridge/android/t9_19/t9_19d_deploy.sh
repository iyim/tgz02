#!/system/bin/sh
# T9-19d: deploy ai_worker (time/alarm back to the factory) + relinked hook .so
set -x
mount -o rw,remount /system || exit 1

# stop everything that maps these files
for pid in $(ps -A | grep -E 'ai_worker|tg_supervisor' | grep -v grep | tr -s ' ' | cut -d' ' -f2); do
  kill -INT $pid 2>/dev/null; sleep 0.3; kill -9 $pid 2>/dev/null
done
sleep 2

cp -f /data/local/tmp/t9_19d_ai_worker /system/tgz02/bin/ai_worker
chmod 755 /system/tgz02/bin/ai_worker
cp -f /data/local/tmp/t9_19d_libtg_hook.so /system/tgz02/lib/libtg_hook.so
chmod 644 /system/tgz02/lib/libtg_hook.so
restorecon /system/tgz02/bin/ai_worker /system/tgz02/lib/libtg_hook.so 2>/dev/null
sync
mount -o ro,remount /system

sha256sum /system/tgz02/bin/ai_worker /system/tgz02/lib/libtg_hook.so

CONF=/data/local/tmp/t5_bridge/ai_worker/worker.conf
cp -f $CONF $CONF.t9_19d_bak
grep -q '^skill_time_enabled=' $CONF || printf '\n# T9-19d: 时间交回原厂（不注册 time 技能 -> native 路由 -> 原厂播报，且不续听）\nskill_time_enabled=0\n' >> $CONF
grep -q '^skill_alarm_enabled=' $CONF && sed -i 's/^skill_alarm_enabled=.*/skill_alarm_enabled=0/' $CONF || printf '\n# T9-19d: 闹钟交回原厂\nskill_alarm_enabled=0\n' >> $CONF
tail -6 $CONF
