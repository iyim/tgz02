#!/system/bin/sh
# 已废弃（rev5.6）：本脚本会用**整文件**内容覆盖
#   /data/system/users/0/package-restrictions.xml
# 从而连带改写其它应用的 PackageManager 状态；而且它是“写入即重启”的，
# 在救援能力未验证前不允许使用。
#
# 设备上若有旧副本（/data/local/tmp/iot_disable_apply.sh），同样视为危险，建议删除。
# 恢复请改用电脑端：
#   powershell -File tools\restore_last_disabled.ps1 -ConfirmPackage <pkg> -Mode CheckOnly
#   powershell -File tools\restore_last_disabled.ps1 -ConfirmPackage <pkg> -Mode XmlElementRestore \
#       -BackupFile <单包元素备份> -ExpectedSha256 <sha256>
#
# 本脚本现在只做拒绝，不改动设备。
echo "REFUSED: 整文件 XML 覆盖已被禁用于 rev5.6；请使用 tools/restore_last_disabled.ps1 的单包元素恢复。" >&2
exit 3
