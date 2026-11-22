#!/system/bin/sh
# dev_inject_wake.sh -- 只读 WakeUpInfo 观测库的注入/状态/卸载（T7-06）
INJ=/data/local/tmp/t6/tg_injector
SO=/data/local/tmp/t7/libtg_wakeinfo.so
# 注意：守卫 Supervisor 的 cmdline 里也带 --name com.alibaba...:core，必须排除，
# 否则会试图往 Supervisor 里注入（那边没加载 libsmartbox.so，prepare 直接 -3）。
CORE=$(ps -A -o PID,ARGS 2>/dev/null | grep 'com.alibaba.ailabs.genie.smartapp:core' \
       | grep -v run_t7 | grep -v tg_supervisor | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "core=$CORE so=$SO"
case "$1" in
install)
    mkdir -p /data/local/tmp/t7/wake
    "$INJ" --pid "$CORE" --so "$SO" --check
    "$INJ" --pid "$CORE" --so "$SO"
    ;;
check)
    "$INJ" --pid "$CORE" --so "$SO" --check
    ;;
uninstall)
    "$INJ" --pid "$CORE" --so "$SO" --uninstall
    sleep 2
    "$INJ" --pid "$CORE" --so "$SO" --check
    ;;
esac
