#!/system/bin/sh
# T5-06D-P1: print the pids whose cmdline contains $1 (read-only, no grep/ps dependencies).
for p in /proc/[0-9]*; do
    [ -r "$p/cmdline" ] || continue
    c=$(tr '\0' ' ' < "$p/cmdline" 2>/dev/null)
    case "$c" in
        *"$1"*) echo "${p#/proc/}" ;;
    esac
done
