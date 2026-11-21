#!/system/bin/sh
# T5-06D-P1: run the TTS executor (app_process + tts_exec.dex).
#   args: <root> [extra tts_exec args...]
export PATH=/system/bin:/system/xbin:/sbin
export ANDROID_DATA=/data
export ANDROID_ROOT=/system
ROOT=$1
shift
DEX=/data/local/tmp/t5_bridge/tts_exec.dex
exec app_process -Djava.class.path="$DEX" /system/bin com.tgz02.tts.TtsExec --root "$ROOT" "$@"
