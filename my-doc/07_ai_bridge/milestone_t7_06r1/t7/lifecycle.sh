#!/system/bin/sh
# lifecycle.sh -- install/uninstall 循环（T7-06-R1 §3.3）
INJ=/data/local/tmp/t6/tg_injector
SO=/data/local/tmp/t7/libtg_wakeinfo.so
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE"
echo "=== 1) uninstall ==="
"$INJ" --pid $CORE --so $SO --uninstall 2>&1 | tail -3
sleep 2
echo "=== 2) check after uninstall ==="
"$INJ" --pid $CORE --so $SO --check 2>&1 | grep -E 'hooked=|RESULT|ERROR'
echo "=== 3) reinstall ==="
"$INJ" --pid $CORE --so $SO 2>&1 | tail -4
echo "=== 4) check after reinstall ==="
"$INJ" --pid $CORE --so $SO --check 2>&1 | grep -E 'stats=|hooked=' | head -2
echo "=== 5) uninstall again ==="
"$INJ" --pid $CORE --so $SO --uninstall 2>&1 | tail -2
sleep 2
"$INJ" --pid $CORE --so $SO --check 2>&1 | grep -E 'hooked=|RESULT' | head -2
echo "=== 6) final status file (thread must have exited) ==="
cat /data/data/com.alibaba.ailabs.genie.smartapp/files/wake/wakeinfo.status
