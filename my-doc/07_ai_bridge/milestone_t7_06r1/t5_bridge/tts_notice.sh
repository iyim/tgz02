#!/system/bin/sh
# tts_notice.sh -- 任务完成语音提醒（T5-06D 原厂 TTS 通道）
#
# 规则：每完成一段任务，就在 TG-Z02 上播一次"主人，任务已完成"。
# 走的是已验证的原厂链路（provider method=4），不是 Mock：
#   入队 -> tts_exec 守护进程 -> 原厂 TTS -> 原厂扬声器
#
# 用法：
#   sh tts_notice.sh                 # 播默认提示语
#   sh tts_notice.sh FILE            # 播指定 UTF-8 文本文件
#   sh tts_notice.sh FILE "主人"     # 指定 event_id 前缀（可选）
#
# 退出码：0 = 原厂回报 complete；1 = 80 s 内没播成（附最后一条 journal）
ROOT=${T5D_TTS_ROOT:-/data/local/tmp/t5_bridge/tts}
DEX=${T5D_TTS_DEX:-/data/local/tmp/t5_bridge/tts_exec.dex}
TXT=${1:-/data/local/tmp/t5_bridge/tts_notice.txt}
PREFIX=${2:-notice}
PATH=/system/bin:/system/xbin:/sbin:$PATH
export PATH

if [ ! -f "$TXT" ]; then
    echo "missing text file: $TXT"
    exit 2
fi

# 守护进程没起就起（start 自带单实例保护，不会起第二个）
if [ ! -f "$ROOT/tts_exec.pid" ] || [ ! -d "/proc/$(su -c "cat $ROOT/tts_exec.pid" 2>/dev/null)" ]; then
    sh /data/local/tmp/t5_bridge/run_tts_exec.sh start >/dev/null 2>&1
    sleep 3
fi

ID="$PREFIX-$(date +%H%M%S)"
OUT=$(su -c "CLASSPATH=$DEX app_process /system com.tgz02.tts.TtsExec --root $ROOT \
      --enqueue-file $TXT --event-id $ID" 2>&1)
echo "enqueue: $OUT"

i=0
while [ $i -lt 40 ]; do
    i=$((i+1))
    sleep 2
    J=$(su -c "grep $ID $ROOT/journal.jsonl 2>/dev/null | tail -n 1")
    case "$J" in
        *'"outcome":"ok"'*) echo "played: $J"; exit 0 ;;
    esac
done
echo "not played within 80s: ${J:-<no journal line>}"
exit 1
