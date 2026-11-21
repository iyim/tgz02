# 恢复方案（rev5.3）

前置事实（全部来自只读采集）：

- 本固件 `pm` 缺 `disable`/`disable-user`/`hide`/`suspend`（root 也一样）→ **恢复命令也要绕开它**。
- 唯一可用的“禁用/启用”通道是 root + `package-restrictions.xml`（原子写入并重启），见
  `../experiments/iot_disable_via_xml.md`。
- 因此**恢复**同样只有两条：`pm enable`（`enable` 是存在的，见 usage）或还原 `package-restrictions.xml`。
- 分区备份完整：**23 个分区**，大小与设备分区**逐一对得上**，SHA256 已记录（`raw/backup_hashes.txt`）。

## 0. 分区布局与备份对照（实测）

设备：`/dev/block/platform/bootdevice/by-name/` → 23 个分区；`/proc/partitions` 给出块数；
下表块数 × 1024 = 期望字节数，与备份文件大小**完全一致**。

| 分区 | 设备节点 | 块数 | 期望字节 | 备份文件 | 备份字节 | 一致 |
|---|---|---|---|---|---|---|
| proinfo | mmcblk0p1 | 3072 | 3,145,728 | ori/proinfo.bin | 3,145,728 | ✅ |
| nvram | mmcblk0p2 | 5120 | 5,242,880 | ori/nvram.bin | 5,242,880 | ✅ |
| seccfg | mmcblk0p3 | 256 | 262,144 | ori/seccfg.bin | 262,144 | ✅ |
| lk | mmcblk0p4 | 384 | 393,216 | ori/lk.bin | 393,216 | ✅ |
| lk2 | mmcblk0p5 | 384 | 393,216 | ori/lk2.bin | 393,216 | ✅ |
| boot | mmcblk0p6 | 16384 | 16,777,216 | ori/boot.bin | 16,777,216 | ✅ |
| recovery | mmcblk0p7 | 16384 | 16,777,216 | ori/recovery.bin | 16,777,216 | ✅ |
| para | mmcblk0p8 | 512 | 524,288 | ori/para.bin | 524,288 | ✅ |
| logo | mmcblk0p9 | 8192 | 8,388,608 | ori/logo.bin | 8,388,608 | ✅ |
| odmdtbo | mmcblk0p10 | 16384 | 16,777,216 | ori/odmdtbo.bin | 16,777,216 | ✅ |
| vendor | mmcblk0p11 | 163840 | 167,772,160 | ori/vendor.bin | 167,772,160 | ✅ |
| expdb | mmcblk0p12 | 10240 | 10,485,760 | ori/expdb.bin | 10,485,760 | ✅ |
| frp | mmcblk0p13 | 1024 | 1,048,576 | ori/frp.bin | 1,048,576 | ✅ |
| tee1 | mmcblk0p14 | 5120 | 5,242,880 | ori/tee1.bin | 5,242,880 | ✅ |
| tee2 | mmcblk0p15 | 5120 | 5,242,880 | ori/tee2.bin | 5,242,880 | ✅ |
| kb | mmcblk0p16 | 2048 | 2,097,152 | ori/kb.bin | 2,097,152 | ✅ |
| dkb | mmcblk0p17 | 2048 | 2,097,152 | ori/dkb.bin | 2,097,152 | ✅ |
| metadata | mmcblk0p18 | 33792 | 34,603,008 | ori/metadata.bin | 34,603,008 | ✅ |
| system | mmcblk0p19 | — | — | ori/system.bin | 1,023,410,176 | ✅（与 `flash/system.img` 同尺寸） |
| cache | mmcblk0p20 | — | — | ori/cache.bin | 637,534,208 | ✅ |
| miscdata | mmcblk0p21 | — | — | ori/miscdata.bin | 16,777,216 | ✅ |
| userdata | mmcblk0p22 | — | — | ori/userdata.bin | 1,916,272,640 | ✅ |
| flashinfo | mmcblk0p23 | — | — | ori/flashinfo.bin | 16,777,216 | ✅ |
| **preloader_a/b** | mmcblk0boot0/1 | — | — | **缺失** | — | ❌ 未备份 |

说明：system/cache/userdata 等大分区的块数未在本文件里逐条抄录（`raw/proc_partitions.txt` 有原始行），
但备份字节数与 `/proc/partitions` 的块数换算一致，故判“完整”。

**已知缺口**：`preloader_a/preloader_b`（mmcblk0boot0/1）没有备份。若 preloader 损坏，只能靠 MTK BROM 模式救，
而本机**没有 scatter 文件**，该路径本轮标记为**不可执行**。

## A. PackageManager 恢复（单包/单组件）

```bash
# 单包启用（enable 子命令在本固件存在）
adb shell su -c 'pm enable com.example.pkg'

# 单组件启用
adb shell su -c 'pm enable com.example.pkg/com.example.pkg.SomeComponent'

# 查看当前启用状态
adb shell dumpsys package com.example.pkg | grep -E 'enabled=|suspended='
adb shell pm list packages -d          # 期望：不该出现该包
```

> 注意：`pm enable` 在本固件的 dispatcher 里存在（`pm` usage 列出 `enable`），但**未实测**是否与
> `disable-user` 一样被裁剪。若失败，走 B 段。

## B. ADB 无桌面恢复（脚本化，推荐）

```powershell
# 1) 设备状态与最近一次禁用记录
powershell -ExecutionPolicy Bypass -File tools\check_device_state.ps1

# 2) 恢复最近一次禁用（会要求你确认包名）
powershell -ExecutionPolicy Bypass -File tools\restore_last_disabled.ps1

# 3) 校验桌面是否回来
powershell -ExecutionPolicy Bypass -File tools\verify_launcher.ps1
```

手工等价步骤（脚本失败时）：

```bash
adb devices
adb shell cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME
adb shell am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity
# 仍不行则切当贝
adb shell cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity
```

若禁用是通过 `package-restrictions.xml` 做的，恢复必须用**原子脚本**（写回原始备份 + 立即重启）：

```bash
adb shell su -c 'sh /data/local/tmp/iot_disable_revert.sh'   # iot 专用；其它包按同模板替换
```

## C. Recovery 恢复（**未验证，暂不可执行**）

前置条件（缺一不可，当前都未满足）：

1. 确认 `adb reboot recovery` 能进入 Recovery（本轮禁止重启，未验证）。
2. 确认 Recovery 提供 ADB 且能读 `/data`（未验证）。
3. 确认 Recovery 内可用 `toybox`/`mount` 写 `/data`（未验证）。

满足后，恢复 `/data/system/users/0/package-restrictions.xml` 的命令形如：

```bash
# 仅在 (1)(2)(3) 全部验证通过后才可执行
adb shell mount /data
adb push package-restrictions.orig.xml /data/system/users/0/package-restrictions.xml
adb shell chown system:system /data/system/users/0/package-restrictions.xml
adb shell chmod 660 /data/system/users/0/package-restrictions.xml
adb shell restorecon /data/system/users/0/package-restrictions.xml
adb reboot
```

**本文件不把上面的命令列为“可直接执行”**：Recovery 能力未验证。

## D. 原始分区恢复（有备份、缺工具链）

可用素材：

| 素材 | 位置 | 状态 |
|---|---|---|
| 23 个分区原始镜像 | `D:\tgz02\flash\ori\*.bin` | 完整（大小与分区一致），SHA256 已记录 |
| 改动后的 system/boot | `D:\tgz02\flash\change\{system.bin,boot.bin}` | 存在（改动版） |
| 刷写后 system 的 img | `D:\tgz02\flash\system.img` | 存在，1,023,410,176 B |
| app.rar | `D:\tgz02\flash\app.rar` | 26,969,715 B（疑似 APK 集合） |
| scatter 文件 | **不存在** | ❌ 缺 |
| SP Flash Tool | 未在本轮检查范围 | 未知 |

**结论**：分区级恢复**素材齐全但工具链不完整**（无 scatter）。因此：

- ❌ 不列出可直接执行的刷写命令（无法保证分区偏移/名称匹配）。
- ✅ 可行路径：先用 MTK 官方工具按其“读取分区”功能导出当前布局生成 scatter，或在有 scatter 后
  按分区名逐一刷 `ori/*.bin`。
- ⚠️ secure boot 开启（`ro.genie.secureboot.enable=1`）→ 刷入未签名镜像可能被拒，**风险高**。

## E. 禁用前的标准检查（每个候选都要过）

1. `pm list packages -d` 为空。
2. 记录当前默认 HOME（`resolve-activity`）。
3. 记录候选包的 `enabled=`、进程、PSS（如适用）。
4. 备份 `package-restrictions.xml` 到 `/data/local/tmp/pr_orig_<pkg>.xml` 并 `sha256sum` 记录。
5. 确认 `su -c id` = root、`adb devices` 在线、无线 5555 在监听。
6. 确认当贝桌面处于启用状态（它是备用桌面）。
