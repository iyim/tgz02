#!/system/bin/sh
# 已废弃（rev5.6）：本脚本会用 `pr_orig.xml`（整文件备份）覆盖当前的
#   /data/system/users/0/package-restrictions.xml
# 这会连同其它应用的 PackageManager 状态一起回滚——即使目标包确实需要恢复，
# 也不允许用整文件覆盖的方式做。
#
# 设备上若有旧副本（/data/local/tmp/iot_disable_revert.sh），同样是整文件覆盖，建议删除。
# 恢复请改用电脑端单包元素级恢复：
#   powershell -File tools\restore_last_disabled.ps1 -ConfirmPackage <pkg> -Mode CheckOnly
#   powershell -File tools\restore_last_disabled.ps1 -ConfirmPackage <pkg> -Mode XmlElementRestore \
#       -BackupFile <单包元素备份> -ExpectedSha256 <sha256>
#
# 本脚本现在只做拒绝，不改动设备。
echo "REFUSED: 整文件 XML 覆盖已被禁用于 rev5.6；请使用 tools/restore_last_disabled.ps1 的单包元素恢复。" >&2
exit 3
