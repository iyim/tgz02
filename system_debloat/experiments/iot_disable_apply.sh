#!/system/bin/sh
# 原子应用：把 iot 标记为 disabled(3) 并立刻重启，避免 system_server 把改动写回。
# 运行：su -c 'sh /data/local/tmp/iot_disable_apply.sh'
set -e
TARGET=/data/system/users/0/package-restrictions.xml
NEW=/data/local/tmp/pr_new.xml
ORIG=/data/local/tmp/pr_orig.xml
[ -f "$NEW" ] || { echo "missing $NEW"; exit 1; }
[ -f "$ORIG" ] || { echo "missing $ORIG (backup)"; exit 1; }
cp "$TARGET" /data/local/tmp/pr_before_apply_$(date +%s).xml || true
cp "$NEW" "$TARGET"
chown system:system "$TARGET"
chmod 660 "$TARGET"
restorecon "$TARGET" >/dev/null 2>&1 || true
sync
if grep -q 'name="com.alibaba.ailabs.genie.iot".*enabled="3"' "$TARGET"; then
  echo "OK: iot marked enabled=3; rebooting now"
  sync
  reboot
else
  echo "FAIL: verify failed, restoring"
  cp "$ORIG" "$TARGET"
  chown system:system "$TARGET"
  chmod 660 "$TARGET"
  restorecon "$TARGET" >/dev/null 2>&1 || true
  sync
  exit 2
fi
