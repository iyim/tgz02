#!/system/bin/sh
# T5-06D-P1-4: run the AI worker with the local mock provider (no network, no key).
#   args: <work-dir> <state-dir> <tts-root|off> <max-events> <idle-exit-ms> <out-file> [extra...]
#   env : T6B_FAULT_TTSQ=create|write|fsync|rename|dirfsync  (optional)
BIN=/data/local/tmp/t5d06/bin/ai_worker
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
    --provider mock --mock-reply mock-symlink-answer \
    $EXTRA --max-events "$ME" --idle-exit-ms "$IDLE" "$@" > "$OUT" 2>&1
rc=$?
echo "rc=$rc"
