#!/system/bin/sh
# inject_wake.sh -- 只读观测库的注入/状态/卸载（core 用 pidof 选，避免匹配到 shell 自己）
INJ=/data/local/tmp/t6/tg_injector
SO=/data/local/tmp/t7/libtg_wakeinfo.so
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE"
case "$1" in
install)   "$INJ" --pid "$CORE" --so "$SO" 2>&1 | tail -4 ;;
check)     "$INJ" --pid "$CORE" --so "$SO" --check 2>&1 | grep -E 'stats=|hooked=' | head -2 ;;
uninstall) "$INJ" --pid "$CORE" --so "$SO" --uninstall 2>&1 | tail -3 ;;
esac
