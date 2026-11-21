# ADB / Recovery 救援能力（rev5.6 修正版）

**修正要点**：rev5.3 把 `192.168.1.9:5555` 记成了“USB ADB 可用”——**这是错的**。
那是 TCP/IP 通道。本版把两条通道彻底分开，并按“有证据才写已验证”的规则重写。

## 1. 通道分类（真实证据）

`adb devices -l` 的实际输出（2026-11-21 11:04 只读采集）：

```
List of devices attached
192.168.1.9:5555       device product:full_ailabs_s1l model:AILABS_S1L device:ailabs_s1l transport_id:20
```

| 通道 | 序列号 | 状态 | 判定依据 |
|---|---|---|---|
| **TCP/IP** | `192.168.1.9:5555` | `device` | 序列号含 `:`，是 `host:port` 形式 |
| **USB** | —（列表里没有） | **不存在** | 没有任何无冒号序列号、也没有 `usb:` 字段 |

| 项 | 结论 | 证据 |
|---|---|---|
| USB ADB 可用 | **unknown / 未验证** | `adb devices -l` 只有 TCP 一台；本轮不允许插拔/重启去验证 |
| USB 端口配置 | `sys.usb.state=adb`、`sys.usb.config=adb` | 设备侧 USB 处于 adb 模式，但**主机侧没有 USB 传输** |
| TCP/IP ADB | **已验证可用** | `192.168.1.9:5555` 全程可用（本项目所有采集都走它） |
| 无线端口监听 | **是** | `persist.adb.tcp.port=5555`、`service.adb.tcp.port=5555`、`netstat` 见 `:::5555 LISTEN` |
| ADB 授权 | 需要（`ro.adb.secure=1`），已配对 | 当前无弹窗直接可用 |
| adbd 运行 | `init.svc.adbd=running` | getprop |
| Root | **可用**（`su -c id` → `uid=0`，context `u:r:magisk:s0`） | 只读命令 |
| 电脑重启后能否连回 | **unknown** | 未验证 |
| 设备重启后能否自动连回 | **unknown** | 未验证（`persist.adb.tcp.port=5555` 只能说明端口会继续监听，不等于能连回） |

> 关键风险：**目前唯一的救援通道是 TCP/IP，它依赖设备 Wi-Fi 与同一局域网**。
> 一旦禁用把网络/Wi-Fi/系统服务弄坏，这条通道可能一起消失。因此本轮把“没有独立于 Wi-Fi 的救援通道”
> 列为阻断条件（见 `candidate_operation_cards.md` 的统一门禁）。

## 2. 备用入口（不依赖桌面的 ADB 操作）

| 入口 | 命令 | 验证程度 |
|---|---|---|
| 启动默认桌面 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` | 命令存在，**未执行** |
| 启动备用桌面 | `am start -n com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` | 同上 |
| 切首选桌面 | `cmd package set-home-activity --user 0 <component>` | 子命令存在（`cmd package help`），**未执行** |
| 系统兜底 | `com.android.settings/.FallbackHome` | 组件实测存在 |

## 3. Recovery（**全部未验证**）

| 项 | 状态 | 说明 |
|---|---|---|
| recovery 分区 | 存在 | `by-name/recovery → mmcblk0p7`（16384 blocks = 16 MB） |
| recovery 备份 | 存在 | `flash/ori/recovery.bin` 16,777,216 B，SHA256 `raw/backup_hashes.txt` |
| 能否进入 Recovery | **未验证** | 需 `adb reboot recovery`，本轮禁止重启 |
| Recovery 内 ADB | **未验证** | 未进入过，不得假设存在 |
| Recovery 读 `/data` | **未验证** | 依赖 recovery 类型与挂载能力 |
| Recovery 可执行恢复操作 | **未验证** | — |

## 4. Fastboot / MTK 下载模式（**未验证**）

| 项 | 状态 |
|---|---|
| `fastboot` 设备 | unknown（`ro.bootloader=unknown`；MT8167 通常不暴露标准 fastboot） |
| MTK BROM/Preloader 下载模式 | 可能可用但**未验证** |
| scatter 文件 | **本地不存在** → 不能按分区刷写 |
| secure boot | 开启（`ro.genie.secureboot.enable=1`、`ro.genie.secureboot.hash=7e5a53d9…`） |
| 分区备份 | 23 个分区齐全（含 system/vendor/boot/recovery/userdata），**preloader_a/b 缺失** |

## 5. 分区备份逐项（实际存在 / 缺口）

| 分区 | 备份文件 | 字节 | 状态 |
|---|---|---|---|
| proinfo / nvram / seccfg / lk / lk2 | ori/*.bin | 3,145,728 / 5,242,880 / 262,144 / 393,216 / 393,216 | ✅ |
| boot / recovery / para / logo / odmdtbo | ori/*.bin | 16,777,216 / 16,777,216 / 524,288 / 8,388,608 / 16,777,216 | ✅ |
| vendor / expdb / frp / tee1 / tee2 | ori/*.bin | 167,772,160 / 10,485,760 / 1,048,576 / 5,242,880 / 5,242,880 | ✅ |
| kb / dkb / metadata | ori/*.bin | 2,097,152 / 2,097,152 / 34,603,008 | ✅ |
| system / cache / miscdata / userdata / flashinfo | ori/*.bin | 1,023,410,176 / 637,534,208 / 16,777,216 / 1,916,272,640 / 16,777,216 | ✅ |
| **preloader_a / preloader_b** | **无** | — | ❌ **缺失**（`mmcblk0boot0/1`） |

**不宣称“具备完整分区恢复能力”**：备份完整 ≠ 能刷回去。缺 scatter、缺已验证的下载模式、
secure boot 开启，这三点决定了当前**没有**经过验证的分区级恢复路径。

## 6. 结论

| 能力 | 结论 |
|---|---|
| TCP/IP ADB 救援 | ✅ 可用（但依赖 Wi-Fi/局域网） |
| USB ADB 救援 | ⚠️ unknown（无证据） |
| 重启后自动恢复连接 | ⚠️ unknown |
| Recovery 救援 | ⚠️ unknown（分区存在且有备份，能力未验证） |
| fastboot / BROM 刷写 | ⚠️ unknown（且缺 scatter） |
| 分区级恢复 | ❌ 不具备经过验证的路径 |

因此 rev5.6 阶段门禁维持 **BLOCKED**，任何候选都不得进入设备禁用。
