#!/system/bin/sh
# takeover.sh -- keep the product UI as the desktop, without fighting the user.
#
# History: T9-11 used a 45 s window after boot, then exited.  When it exited the factory
# BootHomeActivity could win the foreground again, and its own boot sequence then re-entered
# itself in a loop (observed 2026-11-27: ~800 activity create/finish cycles, load average 12).
#
# This version is launcher-aware: it ONLY re-fronts our UI when the foreground is one of the
# LAUNCHERS (factory genieboot BootHomeActivity or the sideloaded dangbei launcher).  Any real
# app the user opens is left alone, so it cannot fight navigation.
LOG=/data/local/tmp/t9_11/takeover.log
mkdir -p /data/local/tmp/t9_11
say() { echo "[$(date '+%F %T')] $*" >> "$LOG"; }

UI=com.tgz02.voice/.VoiceHomeActivity
PKG=com.tgz02.voice

say "=== launcher watchdog start (pid $$) ==="

# 1) wait for the framework, then claim the default home and front our UI
i=0
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    i=$((i+1)); [ $i -gt 150 ] && break; sleep 2
done
sleep 3
cmd package set-home-activity --user 0 "$UI" >/dev/null 2>&1
am start -n "$UI" >/dev/null 2>&1
say "initial start done (boot_completed=$(getprop sys.boot_completed))"

# 2) watchdog: only launchers get replaced
n=0
while : ; do
    sleep 5
    top=$(dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity)
    case "$top" in
        *$PKG*)
            : ;;                                   # ours, nothing to do
        *BootHomeActivity*|*dangbei*)
            n=$((n+1))
            say "launcher on top -> re-assert: ${top#*mResumedActivity: }"
            am start -n "$UI" >/dev/null 2>&1 ;;
        *)
            : ;;                                   # a real app: leave it alone
    esac
    [ $n -gt 500 ] && { say "re-assert cap reached, exiting"; break; }
done