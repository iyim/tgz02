#!/system/bin/sh
# 原子回滚：把 package-restrictions.xml 还原为原始备份并立刻重启。
# 运行：su -c 'sh /data/local/tmp/iot_disable_revert.sh'
set -e
TARGET=/data/system/users/0/package-restrictions.xml
ORIG=/data/local/tmp/pr_orig.xml
[ -f "$ORIG" ] || { echo "missing backup $ORIG"; exit 1; }
cp "$TARGET" /data/local/tmp/pr_before_revert_$(date +%s).xml || true
cp "$ORIG" "$TARGET"
chown system:system "$TARGET"
chmod 660 "$TARGET"
restorecon "$TARGET" >/dev/null 2>&1 || true
sync
if grep -q 'name="com.alibaba.ailabs.genie.iot" ceDataInode="-4294959387" />' "$TARGET"; then
  echo "OK: reverted to original; rebooting now"
  sync
  reboot
else
  echo "WARN: verify string not matched, inspect $TARGET manually"
  exit 2
fi
