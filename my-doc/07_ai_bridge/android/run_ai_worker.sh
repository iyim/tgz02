#!/system/bin/sh
# run_ai_worker.sh -- 独立 AI Worker（ai_worker）的设备端控制脚本
#
#   sh run_ai_worker.sh start [extra args]   启动（默认 work=/data/local/tmp/t5_bridge/work）
#   sh run_ai_worker.sh start-deepseek       用真实 DeepSeek Provider 启动（需要 key 文件）
#   sh run_ai_worker.sh stop                 先 SIGINT，超时再 SIGTERM
#   sh run_ai_worker.sh status               是否在跑 + 状态 JSON
#   sh run_ai_worker.sh stats                打印 ai_worker_status.json
#   sh run_ai_worker.sh state                打印 consumer_state.json（消费进度）
#   sh run_ai_worker.sh key                  检查 key 文件是否存在/权限（**不打印内容**）
#   sh run_ai_worker.sh log [N]              看进程日志（默认 20 行）
#   sh run_ai_worker.sh events [N]           看最近 N 条 events.jsonl（只读）
#
# T7-01（多轮上下文 + 配置化）：
#   - 若 $STATE/worker.conf 存在，start/start-deepseek 会自动加 --conf（CLI 参数仍然优先）；
#   - 配置文件只放 base_url / model / key 的**文件路径** / temperature / max_tokens /
#     context_*，绝不放 key 本身；
#   - 若 /data/local/tmp/t5_bridge/tts 存在，自动加 --tts-queue-dir（回答交给原厂 TTS 播报）；
#   - sh run_ai_worker.sh context        查看当前上下文文件（只读，不含 key）
#   - sh run_ai_worker.sh clear-context  清空上下文（维护动作，不需要先停进程）
#
# T5-06C 真实 Provider：
#   - key 只从文件读（默认 $D/secret/deepseek_api_key），不进命令行、不进日志；
#   - start-deepseek 只做"参数拼装"，key 缺失时由 worker 自己报错退出（退出码 4）；
#   - 模型名可用 DEEPSEEK_MODEL=... 覆盖，base url 可用 DEEPSEEK_BASE_URL=... 覆盖。
#
# 与桥接端脚本（run_bridge.sh）互不影响：
#   - 读 /data/local/tmp/t5_bridge/work/events.jsonl，只读打开，从不修改/截断/删除；
#   - 自己的 PID/LOG/状态/进度全部放在 /data/local/tmp/t5_bridge/ai_worker/ 下；
#   - 不启动、不重启、不 kill smartapp:core 或 tgb_bridge。

set -u

D=/data/local/tmp/t5_bridge
BIN=$D/bin/ai_worker            # 二进制放 bin/：不能和状态目录 $D/ai_worker 同名
WORK=$D/work
STATE=$D/ai_worker
LOG=$STATE/ai_worker.log
PID=$STATE/ai_worker.pid
KEY=${DEEPSEEK_KEY_FILE:-$D/secret/deepseek_api_key}
MODEL=${DEEPSEEK_MODEL:-deepseek-chat}
BASE=${DEEPSEEK_BASE_URL:-https://api.deepseek.com}
CONF=${AIW_CONF:-$STATE/worker.conf}
CTX=${AIW_CONTEXT_FILE:-$STATE/context.json}
TTSQ=${AIW_TTS_QUEUE:-$D/tts}

cmd=${1:-start}
[ $# -gt 0 ] && shift

read_pid()
{
    [ -f "$PID" ] || return 1

    p=$(cat "$PID" 2>/dev/null) || return 1

    case "$p" in
        ''|*[!0-9]*) return 1 ;;
    esac

    [ "$p" -gt 1 ] || return 1

    return 0
}

is_worker_process()
{
    p=$1

    case "$p" in
        ''|*[!0-9]*) return 1 ;;
    esac

    [ -r "/proc/$p/cmdline" ] || return 1

    exe=$(cat "/proc/$p/cmdline" 2>/dev/null |
          tr '\000' '\n' |
          sed -n '1p')

    [ "$exe" = "$BIN" ]
}

cleanup_stale_pid()
{
    if read_pid; then
        if ! is_worker_process "$p"; then
            rm -f "$PID"
        fi
    else
        rm -f "$PID"
    fi
}

wait_exit()
{
    p=$1
    count=$2

    i=0
    while [ "$i" -lt "$count" ]; do
        if ! is_worker_process "$p"; then
            return 0
        fi

        sleep 0.1
        i=$((i + 1))
    done

    return 1
}

# T7-01：统一启动入口。
#   - $CONF 存在就加 --conf（里面的 provider/base_url/model/temperature/max_tokens/context_* 生效）；
#     调用方追加的 "$@" 写在 --conf 之后，所以命令行仍然优先；
#   - $TTSQ 存在就加 --tts-queue-dir，回答交给原厂 TTS 播报。
run_worker()
{
    if [ -f "$CONF" ]; then
        if [ -d "$TTSQ" ]; then
            nohup "$BIN" --work-dir "$WORK" --state-dir "$STATE" --conf "$CONF" \
                --tts-queue-dir "$TTSQ" "$@" >> "$LOG" 2>&1 &
        else
            nohup "$BIN" --work-dir "$WORK" --state-dir "$STATE" --conf "$CONF" \
                "$@" >> "$LOG" 2>&1 &
        fi
    else
        if [ -d "$TTSQ" ]; then
            nohup "$BIN" --work-dir "$WORK" --state-dir "$STATE" \
                --tts-queue-dir "$TTSQ" "$@" >> "$LOG" 2>&1 &
        else
            nohup "$BIN" --work-dir "$WORK" --state-dir "$STATE" \
                "$@" >> "$LOG" 2>&1 &
        fi
    fi

    child=$!
    echo "$child" > "$PID"
}

case "$cmd" in
  start)
    cleanup_stale_pid

    if read_pid && is_worker_process "$p"; then
        echo "already running: pid=$p"
        exit 1
    fi

    [ -x "$BIN" ] || {
        echo "ai_worker not executable: $BIN"
        exit 1
    }

    mkdir -p "$STATE" || exit 1
    : > "$LOG"

    run_worker "$@"

    sleep 1

    if is_worker_process "$child"; then
        echo "started: pid=$child work=$WORK state=$STATE"
        head -3 "$LOG"
    else
        rm -f "$PID"
        echo "failed to start (worker exited); log:"
        cat "$LOG"
        exit 1
    fi
    ;;

  start-deepseek)
    # 真实模型：key 只走文件；有 worker.conf 时由配置决定 provider/base/model/context
    cleanup_stale_pid

    if read_pid && is_worker_process "$p"; then
        echo "already running: pid=$p"
        exit 1
    fi

    [ -x "$BIN" ] || {
        echo "ai_worker not executable: $BIN"
        exit 1
    }

    # 配置里写了 api_key_file 就用它做存在性检查（只读路径，不读内容）
    if [ -f "$CONF" ]; then
        k=$(grep '^api_key_file=' "$CONF" 2>/dev/null | sed -n 's/^api_key_file=//p' | tr -d ' \r')
        [ -n "$k" ] && KEY=$k
    fi

    if [ ! -f "$KEY" ]; then
        echo "api key file missing: $KEY"
        echo "place your DeepSeek key in that file (chmod 600) and retry"
        exit 1
    fi

    mkdir -p "$STATE" || exit 1
    : > "$LOG"

    if [ -f "$CONF" ]; then
        # 配置文件优先（不在这里覆盖 model/base/key），调用方追加的参数仍然最后生效
        run_worker "$@"
    else
        run_worker --provider deepseek --api-key-file "$KEY" \
            --deepseek-model "$MODEL" --deepseek-base-url "$BASE" "$@"
    fi

    sleep 2

    if is_worker_process "$child"; then
        echo "started (deepseek): pid=$child key_file=$KEY work=$WORK state=$STATE conf=$CONF"
        head -8 "$LOG"
    else
        rm -f "$PID"
        echo "failed to start (worker exited); log:"
        cat "$LOG"
        exit 1
    fi
    ;;

  context)
    # 只读查看上下文（不含 key；内容是对话文本）
    if [ -f "$CTX" ]; then
        ls -l "$CTX"
        echo "---"
        cat "$CTX"
    else
        echo "no context file: $CTX"
        exit 1
    fi
    ;;

  clear-context)
    # T7-01 §3.9：清空当前对话上下文。
    #   进程在跑 -> 写 context.clear 请求文件，Worker 在主循环里就地清空（内存 + 文件）；
    #   进程没跑 -> 直接调用二进制的 --clear-context（拿锁后删文件）。
    if [ ! -x "$BIN" ]; then
        echo "ai_worker not executable: $BIN"
        exit 1
    fi

    if read_pid && is_worker_process "$p"; then
        req="$STATE/context.clear"
        : > "$req" 2>/dev/null || {
            echo "cannot write $req"
            exit 1
        }
        i=0
        while [ "$i" -lt 50 ]; do
            [ -f "$req" ] || break
            sleep 0.2
            i=$((i + 1))
        done
        if [ -f "$req" ]; then
            echo "clear request written but not consumed yet: $req (worker pid=$p)"
            exit 1
        fi
        echo "context cleared (running worker pid=$p, file=$CTX)"
        exit 0
    fi

    if [ -f "$CONF" ]; then
        "$BIN" --state-dir "$STATE" --conf "$CONF" --context-file "$CTX" --clear-context
    else
        "$BIN" --state-dir "$STATE" --context-file "$CTX" --clear-context
    fi
    rc=$?
    echo "clear-context exit=$rc"
    exit $rc
    ;;

  key)
    # 只报告存在性/权限，绝不打印内容
    if [ -f "$KEY" ]; then
        ls -l "$KEY"
        bytes=$(wc -c < "$KEY" | tr -d ' ')
        echo "key file present: $KEY (${bytes} bytes)"
    else
        echo "key file missing: $KEY"
        exit 1
    fi
    ;;

  status)
    if read_pid && is_worker_process "$p"; then
        echo "running: pid=$p"
        if [ -f "$STATE/ai_worker_status.json" ]; then
            cat "$STATE/ai_worker_status.json"
        else
            echo "no status file yet"
        fi
    else
        cleanup_stale_pid
        echo "not running"
        exit 1
    fi
    ;;

  stats)
    if [ -f "$STATE/ai_worker_status.json" ]; then
        cat "$STATE/ai_worker_status.json"
    else
        echo "no status file: $STATE/ai_worker_status.json"
        exit 1
    fi
    ;;

  state)
    if [ -f "$STATE/consumer_state.json" ]; then
        cat "$STATE/consumer_state.json"
    else
        echo "no consumer state yet: $STATE/consumer_state.json"
        exit 1
    fi
    ;;

  log)
    n=${1:-20}
    tail -n "$n" "$LOG"
    ;;

  events)
    n=${1:-10}
    if [ -f "$WORK/events.jsonl" ]; then
        tail -n "$n" "$WORK/events.jsonl"
    else
        echo "no events yet: $WORK/events.jsonl"
    fi
    ;;

  stop)
    if ! read_pid; then
        rm -f "$PID"
        echo "no valid pid file"
        exit 1
    fi

    if ! is_worker_process "$p"; then
        rm -f "$PID"
        echo "stale pid file; no signal sent"
        exit 1
    fi

    kill -INT "$p" 2>/dev/null || {
        echo "SIGINT failed"
        exit 1
    }

    if wait_exit "$p" 50; then
        rm -f "$PID"
        echo "stopped: pid=$p"
        tail -2 "$LOG"
        exit 0
    fi

    echo "SIGINT timeout; sending TERM"

    if is_worker_process "$p"; then
        kill -TERM "$p" 2>/dev/null || {
            echo "SIGTERM failed"
            exit 1
        }
    fi

    if wait_exit "$p" 30; then
        rm -f "$PID"
        echo "stopped after TERM: pid=$p"
        tail -2 "$LOG"
        exit 0
    fi

    echo "ERROR: process still running: pid=$p"
    exit 1
    ;;

  *)
    echo "usage: sh $0 {start|start-deepseek|status|stats|state|context|clear-context|key|log [N]|events [N]|stop}"
    exit 2
    ;;
esac
