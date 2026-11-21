# 恢复方案（rev5.6 修正版）

## 0. 结论摘要

1. **禁止整文件覆盖** `/data/system/users/0/package-restrictions.xml`：那会连带改写其它应用的
   PackageManager 状态（本机该文件有 **68 个包元素**，一次覆盖就是 68 个应用一起回滚）。
2. 恢复只走**单包元素级补丁**：备份是“目标包那一行 `<pkg .../>`”，恢复时只替换这一行，
   并断言**其余元素逐字节不变**。
3. **退出码 0 ≠ 恢复成功**：`-Mode XmlElementRestore` 的 0 只表示“已提交”；
   真正的成功要重启后用 `-Mode CheckOnly` 复核（成功 = 退出码 20）。
4. **文件哈希不能当恢复信号**：实测当前文件 6487 B / `7f7208f7…`，与 10:34 的备份
   6522 B / `295c3978…` 不同，但**语义完全一致**（68 个包、同样两个 `enabled="1"`、iot 无属性）。
   PMS 会重写文件，所以只能用 `dumpsys package <pkg>` 的 `enabled=`/`suspended=` 判定状态。
5. 设备重启后 ADB 可能短暂不在线：这是 **DEVICE-NOT-BACK（退出码 12）**，不是“恢复失败”。

## 1. 已验证 / 未验证（严格区分）

| 恢复路径 | 状态 | 证据 |
|---|---|---|
| A. `pm enable <pkg>` | **未验证** | `pm` 的 `disable/disable-user/hide` 已被厂商裁剪；`enable` 在 usage 里但**未实测**能否工作 |
| B. 电脑端单包元素恢复脚本 | **仅模拟验证** | 6 个模拟场景通过（见 §4），真机未执行 |
| C. Recovery 手工恢复 | **未验证** | 未进入过 Recovery，ADB/`/data` 能力未知 |
| D. 分区回刷 | **不可执行** | 备份齐全但**缺 scatter**、下载模式未验证、secure boot 开启 |

## 2. 分区与备份对照（实测，未变）

设备 `by-name` 共 23 个分区；备份大小与 `/proc/partitions` 块数逐一吻合（块数 × 1024 = 备份字节数）。

| 分区 | 节点 | 备份 | 说明 |
|---|---|---|---|
| boot | mmcblk0p6 | ori/boot.bin（16,777,216） | 与 `flash/boot.img` 同尺寸 |
| recovery | mmcblk0p7 | ori/recovery.bin（16,777,216） | |
| system | mmcblk0p19 | ori/system.bin（1,023,410,176） | 与 `flash/system.img` 同尺寸 |
| vendor | mmcblk0p11 | ori/vendor.bin（167,772,160） | |
| userdata | mmcblk0p22 | ori/userdata.bin（1,916,272,640） | |
| cache / metadata / miscdata / flashinfo | p20/p18/p21/p23 | ori/*.bin | |
| nvram / proinfo / seccfg / lk / lk2 / para / logo / odmdtbo / expdb / frp / tee1 / tee2 / kb / dkb | p2/p1/p3/p4/p5/p8/p9/p10/p12/p13/p14/p15/p16/p17 | ori/*.bin | |
| **preloader_a / preloader_b** | mmcblk0boot0/1 | **无备份** | ❌ 缺口 |

SHA256 全表见 `raw/backup_hashes.txt`。

## 3. 正确的恢复流程（单包元素级）

### 3.1 禁用时应当保存什么（rev5.6 规定）

- **元素备份**：把该包在 XML 里的那一行单独存成文件，例如
  `/data/local/tmp/pr_elem_com.alibaba.ailabs.genie.iot.xml`，内容只有
  `<pkg name="com.alibaba.ailabs.genie.iot" ceDataInode="-4294959387" />`。
- **SHA256**：对上面的元素备份文件取 SHA256 并记录。
- **状态基线**：`dumpsys package <pkg> | grep -E 'enabled=|suspended='` 的输出。
- 这三样一起写进 `device_baseline/last_disabled.json`（模板见 `last_disabled.example.json`）。

> 不再保存/使用整文件 `pr_orig.xml` 作为恢复依据。设备上残留的
> `/data/local/tmp/pr_orig.xml`、`pr_new.xml`、`pr_backup_before_edit.xml` 以及
> `iot_disable_apply.sh` / `iot_disable_revert.sh` 都属于“整文件覆盖”路径，**建议删除**（本轮不删）。

### 3.2 恢复（电脑端）

```powershell
# 1) 先只读复核（重启后也用它，退出码 20 = 通过，21 = 仍未启用，12 = 设备没回来）
powershell -File tools\restore_last_disabled.ps1 -ConfirmPackage <PKG> -Mode CheckOnly

# 2) 元素级恢复（必须有元素备份 + sha256；整文件备份会被拒绝，退出码 5）
powershell -File tools\restore_last_disabled.ps1 -ConfirmPackage <PKG> -Mode XmlElementRestore `
    -BackupFile .\device_baseline\backups\pr_elem_<PKG>.xml `
    -ExpectedSha256 <SHA256>

# 3) 手动重启后，再跑一次第 1 步复核
```

脚本的硬性约束（已实现）：

| 约束 | 行为 |
|---|---|
| 目标包必须显式给出 | `-ConfirmPackage` 为 Mandatory |
| 六个保护 App | 直接 REFUSED，退出码 4 |
| 备份必须是单包元素 | 备份含 `<package-restrictions` → 拒绝，退出码 5 |
| 备份必须属于目标包 | 元素 name ≠ 目标 → 拒绝，退出码 5 |
| 备份完整性 | 必须提供 `-ExpectedSha256` 且匹配，否则退出码 5 |
| 当前 XML 结构 | 目标元素必须恰好 1 个，否则退出码 7 |
| 不影响其它应用 | 打补丁前后比对“除目标外所有 `<pkg .../>` 元素”，不一致即中止，退出码 7 |
| 写入确认 | 只有输出 `WRITTEN` 才继续；否则退出码 11 |
| 成功判定 | 退出码 0 = 已提交；`CheckOnly` 退出码 20 才算成功 |
| 重启 | 默认不重启；需 `-AllowReboot` |

## 4. 脚本模拟测试结果（本轮，不碰真机）

| 场景 | 期望 | 实际 |
|---|---|---|
| `CheckOnly`，enabled=0 | 20 CHECK-OK | ✅ 20 |
| `CheckOnly`，enabled=3 | 21 CHECK-FAIL | ✅ 21 |
| 整文件备份 | 拒绝 | ✅ 5 |
| SHA256 不符 | 拒绝 | ✅ 5 |
| 备份属于别的包 | 拒绝 | ✅ 5 |
| 目标元素不在当前 XML | 中止 | ✅ 7 |
| 正确元素备份 | 提交待验证（0） | ✅ 0，输出 `SUBMITTED` |
| `verify_launcher -WaitSeconds` 设备没回来 | 12 DEVICE-NOT-BACK | ✅ 12 |

## 5. Recovery 手工恢复（**未验证，不可照抄执行**）

只有在下列条件**全部实测通过**后才可以写具体步骤：能进 Recovery、Recovery 有 shell/ADB、
能挂载 `/data`、能改文件属主与 SELinux 上下文。当前这四条**一条都未验证**，因此本文件
不给出可直接执行的 Recovery 命令。

## 6. 分区回刷（**不可执行**）

素材：`D:\tgz02\flash\ori\*.bin`（23 个分区）+ `D:\tgz02\flash\change\{boot.bin,system.bin}`。
缺口：**无 scatter**、**无 preloader 备份**、secure boot 开启。
因此本文件**不列出可直接执行的刷写命令**；需要先由 MTK 工具导出 scatter 并确认下载模式可用。

## 7. 禁用前检查清单（下一阶段才用）

1. `pm list packages -d` 为空；
2. 记录默认 HOME（应为 `com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity`）；
3. 记录目标包 `enabled=`/`suspended=`；
4. 生成**元素备份** + SHA256 + 写入 `last_disabled.json`；
5. `su -c id` = root；
6. 确认当贝桌面处于启用（备用桌面）；
7. 确认至少一条独立于 Wi-Fi 的救援通道——**当前不满足，所以阶段门禁为 BLOCKED**。
