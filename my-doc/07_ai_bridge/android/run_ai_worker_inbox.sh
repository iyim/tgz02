#!/system/bin/sh
# T9-06: thin launcher that adds the validated inbox args, then delegates to the ACCEPTED
# launcher (run_ai_worker.sh.accepted, byte-identical to the T8-15.6 one).
#
# Why a wrapper instead of editing the accepted script: the accepted launcher has mixed line
# endings and is part of the verified stack; keeping it untouched means the rollback is a single
# `cp` and there is nothing to re-review in it.
#
#   rollback: cp /data/local/tmp/t5_bridge/run_ai_worker.sh.accepted \
#                /data/local/tmp/t5_bridge/run_ai_worker.sh
set -u

D=/data/local/tmp/t5_bridge
UI=${AIW_UI_DIR:-/data/local/tmp/t9_ui}

cmd=${1:-start}
[ $# -gt 0 ] && shift

A=""
if [ -d "$UI/inbox" ]; then
    A="--inbox $UI/inbox --inbox-result $UI/result --inbox-rejected $UI/rejected"
    if [ -f "$UI/allowed_uids" ]; then
        for u in $(cat "$UI/allowed_uids" 2>/dev/null); do
            case "$u" in
                ''|*[!0-9]*) continue ;;
            esac
            A="$A --inbox-allowed-uid $u"
        done
    fi
    [ -n "${AIW_INBOX_QUEUE_CAP:-}" ] && A="$A --inbox-queue-cap $AIW_INBOX_QUEUE_CAP"
    [ -n "${AIW_INBOX_RATE:-}" ] && A="$A --inbox-rate $AIW_INBOX_RATE"
fi

exec sh "$D/run_ai_worker.sh.accepted" "$cmd" $A "$@"
