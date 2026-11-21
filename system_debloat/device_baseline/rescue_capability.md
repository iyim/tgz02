# ADB / Recovery 救援能力（rev5.3，只读验证）

**结论先说**：`pm disable-user` 在本固件被裁剪（见 `../experiments/iot_disable_attempt.md`），
所以救援路径必须不依赖 `pm`。当前可用的救援手段按可靠性排序是：
**① ADB 无线/USB（已实测）→ ② 当贝桌面或 FallbackHome 兜底 → ③ Recovery（未验证 ADB）→ ④ 分区回刷（有完整备份，无 scatter）**。

## 1. ADB（已实测）

| 项 | 值 | 证据 |
|---|---|---|
| USB ADB 可用 | **是** | `adb -s 192.168.1.9:5555 shell` 全程可用（本轮所有采集都走它） |
| 无线 ADB | **是，已在监听** | `persist.adb.tcp.port=5555`、`service.adb.tcp.port=5555`、`netstat` 见 `:::5555 LISTEN` |
| ADB 是否需要授权 | **需要**（`ro.adb.secure=1`） | 已配对，所以当前免弹窗；换电脑需在设备上点“允许” |
| ADB 是否 root | **可直接 `su`** | `su -c id` → `uid=0(root) … context=u:r:magisk:s0`（Magisk） |
| 构建类型 | `user` / `ro.debuggable=0` | 非 userdebug，`adb root` 不可用，只能靠 Magisk `su` |
| adbd 服务 | `init.svc.adbd=running` | 重启后由 `init.rc` 拉起，不依赖任何被测 APK |
| 重启后能否自动连回 | **未验证** | 本轮不允许重启；但从 `persist.adb.tcp.port=5555` 看，重启后应仍监听 5555（推断，未实测） |

**风险点**：ADB 守护进程与桌面/语音链路无关，禁用一个 App 不会丢 ADB；但**如果禁用到 `adbd` 相关
system 组件或改坏 `package-restrictions.xml` 导致 system_server 起不来**，ADB 可能也连不上
（那时只能靠 Recovery 或回刷）。

## 2. 备用入口（不依赖桌面）

| 入口 | 命令 | 已验证程度 |
|---|---|---|
| 直接启动桌面 Activity | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` | 命令形式有效，**未执行** |
| HOME intent | `am start -a android.intent.action.MAIN -c android.intent.category.HOME` | 同上 |
| 切换首选桌面 | `cmd package set-home-activity --user 0 <component>` | 子命令存在（`cmd package help` 列出），**未执行** |
| 当贝桌面 | `com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` | HOME 类别实测命中 |
| 系统兜底 | `com.android.settings/.FallbackHome` | HOME 类别实测命中 |
| 强制停止/启动应用 | `am force-stop` / `am start` | 标准命令，未执行 |

## 3. Recovery（**未验证**，不得写成“已具备”）

| 项 | 状态 | 说明 |
|---|---|---|
| recovery 分区存在 | **是** | `/dev/block/platform/bootdevice/by-name/recovery → mmcblk0p7`（16384 blocks = 16 MB） |
| recovery 有备份 | **是** | `flash/ori/recovery.bin` 16,777,216 B，SHA256 见 `raw/backup_hashes.txt` |
| 能否进入 Recovery | **未验证** | 需要 `adb reboot recovery`，本轮禁止重启 |
| Recovery 是否提供 ADB | **未验证** | 无法在不重启的前提下确认 |
| Recovery ADB 能否读 /data | **未验证** | 取决于 recovery 是否为 AOSP recovery 且 `ro.adb.secure` 状态 |
| Recovery 能否执行恢复操作 | **未验证** | 未进入过 |

> 结论：**Recovery 只是“存在且有备份”，能力全部未验证**。任何写操作不得假设 Recovery 可用。

## 4. Fastboot / MTK 下载模式

| 项 | 状态 |
|---|---|
| `fastboot` 设备 | **未知**：本机 `ro.bootloader=unknown`，MT8167 通常不暴露标准 fastboot |
| MTK 下载模式（BROM/Preloader） | **可能可用**（MT8167S + 完整分区备份），但需要 scatter 文件与 SP Flash Tool，**本轮未验证** |
| scatter 文件 | **本地不存在**（`D:\tgz02\flash` 下无 `*scatter*`/`*.cfg`）→ 不能直接刷写 |
| Secure boot | **开启**：`ro.genie.secureboot.enable=1`、`ro.genie.secureboot.hash=7e5a53d9…` → **改 system/boot 可能被校验拒绝** |

## 5. 救援优先级（禁用一个包之后按这个顺序试）

1. `adb devices` 是否还在 → 不在就换无线（`adb connect <ip>:5555`）。
2. `adb shell am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity`。
3. `adb shell cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity`。
4. `powershell -File tools/restore_last_disabled.ps1`（本仓库脚本，恢复最近一次禁用项）。
5. 若 system_server 起不来：Recovery（未验证）→ 分区回刷（需 scatter，当前缺）。

## 6. 明确未验证清单

1. 重启后 ADB 是否自动连回（推断可以，未实测）。
2. Recovery 是否存在 ADB、能否读 `/data`。
3. `cmd package set-home-activity` 是否真的生效。
4. fastboot/BROM 是否可进。
5. 我**没有**为了测试救援能力而重启或改动设备——这是本轮的硬约束。
