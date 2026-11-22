#!/system/bin/sh
# run_aux_supervisors.sh -- T7-03：把 T7-02 的 TTS 守卫和 T7-03 的对话库纳入
# T6-02 Supervisor 已有的"发现 pid / 注入 / 重试"流程（不改 Supervisor 代码，只用它的 --so）。
#
# 为什么需要：原生 hook 随 :core 进程消失。T7-02 用独立 watch 每 5 s 补装，存在最多 5 s
# 的空窗（原厂回答可能抢播一次）。交给 Supervisor 后，进程一出现就被注入，空窗消失。
#
# 用法（root，必须"一条命令"调用，见 run_supervisor.sh 的说明）：
#   sh run_aux_supervisors.sh start     启动 2 个附加 Supervisor（ttsguard / dialog）
#   sh run_aux_supervisors.sh stop      停止
#   sh run_aux_supervisors.sh status    状态
SUP=/data/local/tmp/t6/tg_supervisor
INJ=/data/local/tmp/t6/tg_injector
D=/data/local/tmp/t7
NAME=com.alibaba.ailabs.genie.smartapp:core

start_one() {
    so=$1; tag=$2; pidf=$D/$tag.sup.pid; logf=$D/$tag.sup.log
    if [ -f "$pidf" ]; then
        old=$(cat "$pidf" 2>/dev/null)
        if [ -n "$old" ] && kill -0 "$old" 2>/dev/null; then
            echo "$tag: already running pid=$old"
            return 0
        fi
    fi
    setsid "$SUP" --injector "$INJ" --so "$so" --name "$NAME" \
        --pidfile "$pidf" --log "$logf" </dev/null >/dev/null 2>&1 &
    echo $! > "$pidf"
    echo "$tag: started pid=$(cat "$pidf") so=$so"
}

for t in ttsguard dialog; do
    case "$1" in
    start) start_one "$D/libtg_$t.so" "$t" ;;
    stop)
        pidf=$D/$t.sup.pid
        if [ -f "$pidf" ]; then
            p=$(cat "$pidf" 2>/dev/null)
            [ -n "$p" ] && kill "$p" 2>/dev/null
            rm -f "$pidf"
            echo "$t: stopped"
        else
            echo "$t: not running"
        fi
        ;;
    status)
        pidf=$D/$t.sup.pid
        if [ -f "$pidf" ] && kill -0 "$(cat "$pidf")" 2>/dev/null; then
            echo "$t: running pid=$(cat "$pidf")"
        else
            echo "$t: not running"
        fi
        ;;
    *) echo "usage: $0 start|stop|status"; exit 1 ;;
    esac
done
