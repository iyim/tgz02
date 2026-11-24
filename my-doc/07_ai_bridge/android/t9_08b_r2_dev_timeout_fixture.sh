#!/system/bin/sh
# t9_08b_r2_dev_timeout_fixture.sh start <timeout_ms> | stop
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_dev_timeout_fixture.sh start 1500"
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_dev_timeout_fixture.sh stop"
#
# Item 6 of the acceptance list needs a REAL playback timeout (not an injected fault): the executor
# is started with a per-item deadline shorter than the sentence, so the factory keeps speaking while
# the executor's deadline expires -> outcome=timeout -> the accepted retry path must run.
#
# start : stops the accepted supervisor and runs ONE executor with --timeout-ms <ms>
# stop  : kills that executor and brings the accepted supervisor back (--timeout-ms 60000)
set -u
D=/data/local/tmp/t5_bridge
T=/data/local/tmp/t9/t9_08b_r2
ROOT=$D/tts
DEX=$D/tts_exec.dex
MAIN=com.tgz02.tts.TtsExec
PIDF=$T/exec_fixture.pid
PATH=/system/bin:/system/xbin:/sbin:$PATH
export PATH

case "${1:-}" in
start)
    MS=${2:-1500}
    sh "$D/run_tts_exec.sh" stop >/dev/null 2>&1
    sleep 1
    CLASSPATH=$DEX nohup app_process /system $MAIN --root "$ROOT" --idle-ms 0 \
        --timeout-ms "$MS" --verbose >> "$ROOT/tts_exec.log" 2>&1 &
    echo $! > "$PIDF"
    sleep 3
    P=$(cat "$PIDF" 2>/dev/null)
    echo "fixture executor pid=${P:-none} timeout_ms=$MS"
    tr '\0' ' ' < /proc/"$P"/cmdline 2>/dev/null; echo ""
    ;;
stop)
    P=$(cat "$PIDF" 2>/dev/null)
    if [ -n "${P:-}" ] && [ -d "/proc/$P" ]; then
        kill "$P" 2>/dev/null
        sleep 2
        [ -d "/proc/$P" ] && kill -9 "$P" 2>/dev/null
    fi
    rm -f "$PIDF"
    sh "$D/run_tts_exec.sh" start
    sleep 2
    E=$(cat "$ROOT/tts_exec.pid" 2>/dev/null | tr -d ' \r\n')
    echo "accepted executor restored pid=${E:-none}"
    tr '\0' ' ' < /proc/"$E"/cmdline 2>/dev/null; echo ""
    ;;
*)
    echo "usage: $0 start <timeout_ms> | stop"
    exit 2
    ;;
esac
echo "EXIT=0"
