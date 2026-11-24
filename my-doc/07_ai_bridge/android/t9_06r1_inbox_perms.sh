#!/system/bin/sh
# t9_06r1_inbox_perms.sh -- T9-06R1: the inbox is private to the UI uid.
#
#   su -c "sh t9_06r1_inbox_perms.sh <ui_uid>"
#
# Layout (review requirement: no world-writable entry point any more):
#   /data/local/tmp/t9_ui            0755 root:root    traversable, nothing writable
#   /data/local/tmp/t9_ui/inbox      0700 <ui_uid>     ONLY the UI uid (and root) can create
#   /data/local/tmp/t9_ui/result     0755 root:root    answers, 0644, pruned by the worker
#   /data/local/tmp/t9_ui/rejected   0700 root:root    parked refusals, pruned by the worker
#   /data/local/tmp/t9_ui/allowed_uids 0644 root       allowlist (defence in depth)
set -u
UI=${TG_UI_DIR:-/data/local/tmp/t9_ui}
UIDUI=${1:-}
say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

case "$UIDUI" in
    ''|*[!0-9]*) fail "usage: t9_06r1_inbox_perms.sh <ui_uid>" ;;
esac

mkdir -p "$UI" "$UI/inbox" "$UI/result" "$UI/rejected" || fail "cannot create $UI"

# parent: traversable only
chown 0:0 "$UI" || fail "chown $UI"
chmod 0755 "$UI" || fail "chmod $UI"

# the entry point itself: owned by the UI uid, 0700 -> no other app can create anything
chown "$UIDUI:$UIDUI" "$UI/inbox" || fail "chown inbox"
chmod 0700 "$UI/inbox" || fail "chmod inbox"

# answers readable, written by root only
chown 0:0 "$UI/result" || fail "chown result"
chmod 0755 "$UI/result" || fail "chmod result"

# parked refusals: root only
chown 0:0 "$UI/rejected" || fail "chown rejected"
chmod 0700 "$UI/rejected" || fail "chmod rejected"

printf '%s\n' "$UIDUI" > "$UI/allowed_uids" || fail "cannot write allowed_uids"
chown 0:0 "$UI/allowed_uids" || fail "chown allowed_uids"
chmod 0644 "$UI/allowed_uids" || fail "chmod allowed_uids"

say "== layout =="
ls -ld "$UI" "$UI/inbox" "$UI/result" "$UI/rejected"
ls -l "$UI/allowed_uids"
say "== allowed =="
cat "$UI/allowed_uids"
say "EXIT=0"
exit 0
