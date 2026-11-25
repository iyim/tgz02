#!/system/bin/sh
# T5-06D device-side supervisor: keeps the factory TTS executor alive (no system modification)
ROOT=${T5D_TTS_ROOT:-/data/local/tmp/t5_bridge/tts}
DEX=${T5D_TTS_DEX:-/data/local/tmp/t5_bridge/tts_exec.dex}
MAIN=com.tgz02.tts.TtsExec
LOG=$ROOT/tts_exec.log
PATH=/system/bin:/system/xbin:/sbin:$PATH
export PATH
mkdir -p "$ROOT/queue" "$ROOT/inflight" "$ROOT/done" "$ROOT/failed" "$ROOT/tmp" "$ROOT/control" 2>/dev/null
echo $$ > "$ROOT/supervisor.pid"
echo "[$(date +%H:%M:%S)] supervisor start pid=$$" >> "$LOG"
i=0
while [ $i -lt 500 ]; do
    i=$((i+1))
    CLASSPATH=$DEX app_process /system $MAIN --root "$ROOT" --idle-ms 0 --timeout-ms 60000 --verbose >> "$LOG" 2>&1
    rc=$?
    echo "[$(date +%H:%M:%S)] executor exited rc=$rc (restart $i)" >> "$LOG"
    sleep 1
done
echo "[$(date +%H:%M:%S)] supervisor giving up after 500 restarts" >> "$LOG"