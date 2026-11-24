#!/system/bin/sh
# T9-02R2 device evidence 05: full rollback dry-run against a COPY of the init dir and the
# backup dir, with mount/chown/sync stubbed through PATH. The real /system/etc/init and the
# real /data/local/tmp/t9/rc_backup are never modified here.
set -u
SB=/data/local/tmp/t9/t9r2/selfcheck
STUB=$SB/stub
echo "=== date"
date
rm -rf "$SB"
mkdir -p "$SB/init" "$SB/bak" "$STUB"
cp -a /system/etc/init/tg_stack.rc "$SB/init/"
cp -a /data/local/tmp/t9/rc_backup/tg_supervisor.rc "$SB/bak/"
cp -a /data/local/tmp/t9/rc_backup/sha256.before "$SB/bak/"

cat > "$STUB/mount" <<'EOS'
#!/system/bin/sh
echo "mount $*" >> /data/local/tmp/t9/t9r2/selfcheck/mount.log
if [ "$#" -eq 0 ]; then echo "/dev/block/fake on /system type ext4 ($(cat /data/local/tmp/t9/t9r2/selfcheck/mstate),seclabel)"; exit 0; fi
case "$*" in
    *remount,rw*) echo rw > /data/local/tmp/t9/t9r2/selfcheck/mstate ;;
    *remount,ro*) echo ro > /data/local/tmp/t9/t9r2/selfcheck/mstate ;;
esac
exit 0
EOS
cat > "$STUB/chown" <<'EOS'
#!/system/bin/sh
exit 0
EOS
cat > "$STUB/sync" <<'EOS'
#!/system/bin/sh
exit 0
EOS
chmod 0755 "$STUB"/*
echo ro > "$SB/mstate"

echo "=== copy state before"
ls -l "$SB/init" "$SB/bak"
sha256sum "$SB/init/tg_stack.rc" "$SB/bak/tg_supervisor.rc"

echo "=== rollback dry-run on the copy"
PATH="$STUB:$PATH" TG_INIT_DIR="$SB/init" TG_BAK="$SB/bak" sh /data/local/tmp/t9/rollback_boot_rc.sh
echo "exit=$?"

echo "=== copy state after"
ls -l "$SB/init"
sha256sum "$SB/init/tg_supervisor.rc" 2>/dev/null
echo "=== real init dir and real backup set (must be untouched)"
ls -l /system/etc/init/tg_*
sha256sum /data/local/tmp/t9/rc_backup/sha256.before /data/local/tmp/t9/rc_backup/tg_supervisor.rc

echo "=== tamper case on the copy"
printf 'tampered\n' >> "$SB/bak/tg_supervisor.rc"
PATH="$STUB:$PATH" TG_INIT_DIR="$SB/init" TG_BAK="$SB/bak" sh /data/local/tmp/t9/rollback_boot_rc.sh
echo "exit=$?"
echo "=== empty-metadata case on the copy"
: > "$SB/bak/sha256.before"
PATH="$STUB:$PATH" TG_INIT_DIR="$SB/init" TG_BAK="$SB/bak" sh /data/local/tmp/t9/rollback_boot_rc.sh
echo "exit=$?"
echo "=== END"
