#!/system/bin/sh
# run_inject.sh -- T6-01 Injector 的设备端包装（只做一件事：把退出码回显出来）
#
# 为什么需要它：Magisk 的 su 在 `su -c "a; b"` 这类多命令字符串上会退化成
# 非 root 执行（实测：id 显示 uid=2000），所以调用方必须"一条命令"。
# 这里把 injector 的退出码包装成单条命令，验收脚本就能同时拿到输出和 rc。
#
#   su -c "/data/local/tmp/t6/run_inject.sh --so /data/local/tmp/t6/libtg_hook.so --pid 1234"
set -u
BIN=/data/local/tmp/t6/tg_injector
"$BIN" "$@"
rc=$?
echo "EXIT=$rc"
exit $rc
