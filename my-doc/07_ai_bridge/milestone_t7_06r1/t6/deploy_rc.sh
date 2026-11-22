#!/system/bin/sh
# deploy_rc.sh -- T6-03：把 tg_supervisor.rc 部署到 /system/etc/init/
#
#   su -c "/data/local/tmp/t6/deploy_rc.sh"
#
# 本机 init 的行为（实测）：/system/etc/init 下的**每个普通文件**都会被解析，
# 不看 .rc 后缀（把文件改名成 tg_supervisor.rc.disabled 后，服务照样被拉起）。
# 所以这里：
#   - 部署前先清掉目录里所有 tg_supervisor* 残留，避免半成品文件被解析；
#   - 目录里不写临时文件，直接覆盖目标文件；
#   - 写完立刻把 /system 挂回只读并回读校验。
# 只新增/覆盖 tg_supervisor.rc 这一个文件，不动任何原厂文件。
set -u
SRC=/data/local/tmp/t6/tg_supervisor.rc
DIR=/system/etc/init
DST=$DIR/tg_supervisor.rc
SNAP=/data/local/tmp/t6/system_etc_init.before

if [ ! -f "$SRC" ]; then
    echo "ERROR: source rc missing: $SRC"
    echo "EXIT=3"
    exit 3
fi

if [ ! -f "$SNAP" ]; then
    ls -l $DIR > "$SNAP" 2>/dev/null
    echo "snapshot of $DIR before deploy -> $SNAP"
fi

if [ -f "$DST" ] && cmp -s "$SRC" "$DST"; then
    echo "content unchanged, re-asserting the file in place"
fi

mount -o remount,rw /system || { echo "ERROR: remount rw /system failed"; echo "EXIT=4"; exit 4; }

# 清掉目录里的所有 tg_supervisor* 残留（含 .tmp / .disabled 之类）
for f in "$DIR"/tg_supervisor*; do
    [ -e "$f" ] || continue
    if [ "$f" != "$DST" ]; then
        rm -f "$f" && echo "removed stale entry: $f"
    fi
done

cp -f "$SRC" "$DST" || { mount -o remount,ro /system; echo "ERROR: copy failed"; echo "EXIT=5"; exit 5; }
chown 0:0 "$DST" || true
chmod 0644 "$DST" || true
sync
mount -o remount,ro /system || echo "WARNING: remount ro /system failed (recheck manually)"

echo "deployed: $DST"
ls -l "$DST"
sha256sum "$DST"
mount | grep -F /system
echo "EXIT=0"
