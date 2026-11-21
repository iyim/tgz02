#!/system/bin/sh
# deploy_rc.sh -- T6-03：把 tg_supervisor.rc 部署到 /system/etc/init/
#
#   su -c "/data/local/tmp/t6/deploy_rc.sh"
#
# 只做一件事：在 /system/etc/init/ 里"新增"一个 tg_supervisor.rc。
#   - 不动 /init.rc、不动任何原厂 rc、不覆盖同名文件（同名时先比对内容）
#   - 部署前把该目录的原始清单存到 /data/local/tmp/t6/system_etc_init.before
#   - 写完立刻把 /system 重新挂回只读，并回读校验
#   - 完全可撤销：restore_rc.sh 删掉这一个文件即可
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

if [ -f "$DST" ]; then
    if cmp -s "$SRC" "$DST"; then
        echo "already deployed (identical content): $DST"
        echo "EXIT=0"
        exit 0
    fi
    echo "WARNING: $DST exists with different content; it will be replaced"
fi

mount -o remount,rw /system || { echo "ERROR: remount rw /system failed"; echo "EXIT=4"; exit 4; }

cp -f "$SRC" "$DST.tmp" || { mount -o remount,ro /system; echo "ERROR: copy failed"; echo "EXIT=5"; exit 5; }
chown 0:0 "$DST.tmp" || true
chmod 0644 "$DST.tmp" || true
mv -f "$DST.tmp" "$DST" || { mount -o remount,ro /system; echo "ERROR: rename failed"; echo "EXIT=6"; exit 6; }
sync
mount -o remount,ro /system || echo "WARNING: remount ro /system failed (recheck manually)"

echo "deployed: $DST"
ls -l "$DST"
sha256sum "$DST"
mount | grep -F /system
echo "EXIT=0"
