#!/system/bin/sh
# cleanup_injector.sh -- 清掉卡住的 tg_injector（它们会挂着 ptrace，影响 :core）
echo "=== stuck injectors ==="
ps -A -o PID,ARGS 2>/dev/null | grep tg_injector | grep -v grep
for p in $(ps -A -o PID,ARGS 2>/dev/null | grep 'tg_injector' | grep -v grep | sed 's/^ *//' | cut -d' ' -f1); do
  echo "kill -9 $p"
  kill -9 "$p" 2>/dev/null
done
sleep 1
echo "=== after ==="
ps -A -o PID,ARGS 2>/dev/null | grep tg_injector | grep -v grep || echo "none"
