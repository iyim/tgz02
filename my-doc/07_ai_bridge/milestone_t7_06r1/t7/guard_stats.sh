#!/system/bin/sh
# guard_stats.sh -- 守卫计数（放行/拦截/本地放行）
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t7/libtg_ttsguard.so --check 2>&1 | grep 'stats='
