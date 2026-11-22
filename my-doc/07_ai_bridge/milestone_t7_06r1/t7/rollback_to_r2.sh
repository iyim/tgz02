#!/system/bin/sh
# rollback_to_r2.sh -- 撤掉本轮注入的观测库，把设备回到"本地语音/大模型分别路由"的 R2 版本
set -u
T5=/data/local/tmp/t5_bridge
T7=/data/local/tmp/t7
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)

echo "=== 1) 卸载本轮观测库 libtg_wakeinfo.so ==="
/data/local/tmp/t6/tg_injector --pid $CORE --so $T7/libtg_wakeinfo.so --uninstall 2>&1 | tail -3

echo "=== 2) 重启 :core，确保映射里没有它（守卫会自动重新注入） ==="
sh $T7/run_t7_05.sh guard-reload 2>&1 | tail -6

sleep 2
NEW=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$NEW"

echo "=== 3) 三个产物 sha（R2 路由版本） ==="
sha256sum $T5/bin/ai_worker $T5/ai_worker/worker.conf $T7/libtg_ttsguard.so
echo "期望: worker 3ff34009…  conf 82481c53…  guard 6d989d8d…"

echo "=== 4) 映射检查（wakeinfo 必须为 0，asr hook 必须 >0） ==="
echo "wakeinfo mapped: $(grep -c libtg_wakeinfo /proc/$NEW/maps 2>/dev/null)"
echo "asr hook mapped : $(grep -c libtg_hook /proc/$NEW/maps 2>/dev/null)"
echo "guard   mapped  : $(grep -c libtg_ttsguard /proc/$NEW/maps 2>/dev/null)"

echo "=== 5) 路由配置（Worker 启动行） ==="
grep 'route: enabled' $T5/ai_worker/ai_worker.log | tail -1
grep 'gate: enabled' $T5/ai_worker/ai_worker.log | tail -1

echo "=== 6) 进程 ==="
echo "bridge=$(pidof tgb_bridge) worker=$(pidof ai_worker) guard_sup=$(cat $T7/ttsguard.sup.pid 2>/dev/null) asr_sup=$(cat /data/local/tmp/t6/tg_supervisor.pid 2>/dev/null)"
