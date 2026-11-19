#!/system/bin/sh
# shell_test.sh -- run_t5.sh 行为测试（在设备上跑，用真实 t5_agent）
#
#   adb push tests/shell_test.sh /data/local/tmp/t5/shell_test.sh
#   adb shell "sh /data/local/tmp/t5/shell_test.sh"
#
# 覆盖：S1 start/status/stop、S2 收尾清理、S3 再次 start、S4 过期 PID、
#       S5/S6 PID 被别的进程占用时不得误杀、S7 重复 start 被拒、
#       S9 无 PID / stale 时不得谎报 stopped。
# 未覆盖：S8（SIGINT 超时 -> TERM）与 S9 的完整 TERM 超时路径 —— 需要一个
#        " argv[0]==$BIN 且忽略 SIGINT " 的 ELF 替身，本轮没有造（见报告）。
set -u

RUN=/data/local/tmp/t5/run_t5.sh
BIN=/data/local/tmp/t5/t5_agent
PID=/data/local/tmp/t5/t5_agent.pid
W=/data/local/tmp/t5/test_shell
WD=$W/work
WA=$W/watch

pass=0
fail=0

ok()
{
    if [ "$1" = "1" ]; then
        pass=$((pass + 1))
        echo "  ok   $2"
    else
        fail=$((fail + 1))
        echo "  FAIL $2"
    fi
}

say()
{
    echo "$1" | grep -q "$2"
    if [ $? -eq 0 ]; then echo 1; else echo 0; fi
}

cleanup()
{
    if [ -f "$PID" ]; then
        p=$(cat "$PID" 2>/dev/null)
        case "$p" in ''|*[!0-9]*) ;; *) kill -INT "$p" 2>/dev/null ;; esac
        rm -f "$PID"
    fi
    rm -rf "$W"
}

cleanup
mkdir -p "$WA" "$WD"

echo "[S1] 正常 start / status / stop"
out=$(sh "$RUN" start --watch-dir "$WA" --work-dir "$WD" 2>&1)
ok "$(say "$out" 'started: pid=')" "S1.1 start 输出 started"

p1=$(cat "$PID" 2>/dev/null)
case "$p1" in
    ''|*[!0-9]*) ok 0 "S1.2 PID 文件合法" ;;
    *)           ok 1 "S1.2 PID 文件合法（pid=$p1）" ;;
esac

sh "$RUN" status >/dev/null 2>&1
ok $([ $? -eq 0 ] && echo 1 || echo 0) "S1.3 status 返回 0（运行中）"

out=$(sh "$RUN" stop 2>&1)
ok "$(say "$out" 'stopped: pid=')" "S1.4 stop 输出 stopped"

[ -f "$PID" ]
ok $([ $? -ne 0 ] && echo 1 || echo 0) "S2.1 PID 文件已清理"

[ -r "/proc/$p1/cmdline" ]
ok $([ $? -ne 0 ] && echo 1 || echo 0) "S2.2 进程确实退出（/proc 已无该 pid）"

sh "$RUN" status >/dev/null 2>&1
ok $([ $? -ne 0 ] && echo 1 || echo 0) "S2.3 停止后 status 返回非 0"

echo "[S3] 再次 start"
out=$(sh "$RUN" start --watch-dir "$WA" --work-dir "$WD" 2>&1)
ok "$(say "$out" 'started: pid=')" "S3.1 再次 start 成功"

p2=$(cat "$PID" 2>/dev/null)
[ "$p2" != "$p1" ]
ok $([ $? -eq 0 ] && echo 1 || echo 0) "S3.2 新 PID 与上次不同"

echo "[S7] 已在运行时不允许重复 start"
out=$(sh "$RUN" start --watch-dir "$WA" --work-dir "$WD" 2>&1)
rc=$?
s=$(say "$out" 'already running')
ok $([ "$rc" -ne 0 ] && [ "$s" = "1" ] && echo 1 || echo 0) "S7.1 重复 start 被拒绝且返回非 0"

[ "$(cat "$PID" 2>/dev/null)" = "$p2" ]
ok $([ $? -eq 0 ] && echo 1 || echo 0) "S7.2 原有实例的 PID 未被改写"

sh "$RUN" stop >/dev/null 2>&1

echo "[S4] 过期 PID 文件（指向已退出的进程）"
sleep 30 >/dev/null 2>&1 &
victim=$!
kill -9 "$victim" 2>/dev/null
sleep 0.3        # 不 wait：僵尸进程的 /proc/<pid>/cmdline 为空，脚本按此判过期
echo "$victim" > "$PID"
sh "$RUN" status >/dev/null 2>&1
ok $([ $? -ne 0 ] && echo 1 || echo 0) "S4.1 过期 PID 下 status 报 not running"

[ -f "$PID" ]
ok $([ $? -ne 0 ] && echo 1 || echo 0) "S4.2 过期 PID 文件被清理"

echo "[S5/S6] PID 被其它进程占用：stop 不得误杀"
sleep 30 >/dev/null 2>&1 &
other=$!
echo "$other" > "$PID"
out=$(sh "$RUN" stop 2>&1)
rc=$?
s=$(say "$out" 'stale pid file; no signal sent')
ok $([ "$rc" -ne 0 ] && [ "$s" = "1" ] && echo 1 || echo 0) "S5.1 stop 识别为 stale 并返回非 0"
[ "$(say "$out" 'stopped:')" = "0" ] && ok 1 "S5.2 置为失败前不打印 stopped" || ok 0 "S5.2 置为失败前不打印 stopped"
[ "$(say "$out" 'stopped:')" = "0" ] && ok 1 "S6.1 没有任何 stopped 谎报" || ok 0 "S6.1 没有任何 stopped 谎报"

sleep 0.3
kill -0 "$other" 2>/dev/null
ok $([ $? -eq 0 ] && echo 1 || echo 0) "S6.2 无关进程仍然活着（没有被信号打到）"

out=$(sh "$RUN" start --watch-dir "$WA" --work-dir "$WD" 2>&1)
ok "$(say "$out" 'started: pid=')" "S6.3 stale 文件不会阻止正常 start"
sh "$RUN" stop >/dev/null 2>&1
kill "$other" 2>/dev/null

echo "[S9] 无 PID 文件时 stop 必须失败且不得谎报"
rm -f "$PID"
out=$(sh "$RUN" stop 2>&1)
rc=$?
s=$(say "$out" 'no valid pid file')
ok $([ "$rc" -ne 0 ] && [ "$s" = "1" ] && echo 1 || echo 0) "S9.1 无 PID 文件 -> 非 0 + no valid pid file"
[ "$(say "$out" 'stopped:')" = "0" ] && ok 1 "S9.2 没有 stopped 谎报" || ok 0 "S9.2 没有 stopped 谎报"

echo "[S9b] 未执行项（如实标注，不计入 pass）"
echo "  --   S8 SIGINT 超时 -> TERM：需要一个 argv[0]==$BIN 且忽略 SIGINT 的 ELF 替身，本轮未造"
echo "  --   S9c TERM 之后仍在运行的失败路径：同上，未执行"

cleanup

echo ""
echo "=== shell_test: $pass passed, $fail failed ==="
[ "$fail" -eq 0 ] || exit 1
exit 0
