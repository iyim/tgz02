#!/system/bin/sh
# takeover.sh -- T9-11: bring the product UI to the front after every boot, and keep it there
# for a short window while the factory boot sequence settles.
#
# Why a root script instead of disabling more components: the factory boot stack starts
# smartapp's BootHomeActivity as HOME very early (logcat: "START ... HOME ... cmp=...BootHomeActivity
# from uid 0" then "from uid 1000"), so whatever we disable is raced by a party that outranks us.
# Starting our own activity afterwards wins the race without deleting or rewriting anything, and
# the whole takeover is undone by deleting this file and rebooting.
#
# Guard window is deliberately bounded: 45 s of watching, then it exits. It must not fight the
# user (or a real app) forever.
LOG=/data/local/tmp/t9_11/takeover.log
mkdir -p /data/local/tmp/t9_11
say() { echo "[$(date '+%F %T')] $*" >> "$LOG"; }

UI=com.tgz02.voice/.VoiceHomeActivity
say "=== takeover start ==="

i=0
started=0
while [ $i -lt 120 ]; do
    i=$((i+1))
    if am start -n "$UI" >/dev/null 2>&1; then
        started=1
        say "first start ok after ${i}s (boot_completed=$(getprop sys.boot_completed))"
        break
    fi
    sleep 1
done
[ $started -eq 1 ] || { say "ERROR: could not start the UI in 120s"; exit 1; }

# keep it in front while the factory home sequence finishes
n=0
while [ $n -lt 15 ]; do
    n=$((n+1))
    sleep 3
    top=$(dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity)
    case "$top" in
        *com.tgz02.voice*) : ;;
        *)
            say "top was '${top#*mResumedActivity: }' -> re-asserting our UI"
            am start -n "$UI" >/dev/null 2>&1
            ;;
    esac
done
say "=== takeover done, top=$(dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity | tr -s ' ') ==="
