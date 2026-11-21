#!/system/bin/sh
# T5-06D-P1: run the AI worker against an explicit work/state/tts root (real model via the LAN proxy).
#   args: <work-dir> <state-dir> <tts-root|off> <max-events> <idle-exit-ms> <out-file> [extra...]
#   env : T6B_FAULT_TTSQ=create|write|fsync|rename|dirfsync  (optional fault injection)
BIN=/data/local/tmp/t5d06/bin/ai_worker
KEY=/data/local/tmp/t5_bridge/secret/deepseek_api_key
WORK=$1
ST=$2
TTS=$3
ME=$4
IDLE=$5
OUT=$6
shift 6
if [ "$TTS" = "off" ]; then
    EXTRA=""
else
    EXTRA="--tts-queue-dir $TTS"
fi
# shellcheck disable=SC2086
CLASSPATH= "$BIN" --work-dir "$WORK" --state-dir "$ST" \
    --provider deepseek --api-key-file "$KEY" \
    --deepseek-base-url http://192.168.1.13:8790/v1 --deepseek-model deepseek-flash \
    $EXTRA --max-events "$ME" --idle-exit-ms "$IDLE" "$@" > "$OUT" 2>&1
rc=$?
echo "rc=$rc"
