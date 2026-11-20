# 风险评估与回退策略

## 1. 风险模型

| 风险 | 触发条件 | 后果 | 概率（本机） | 缓解 |
|---|---|---|---|---|
| 跨包 Binder / Provider 断链 | 删除被 `android.uid.system` 同伴引用的包 | `SecurityException` / `DeadObjectException`，功能静默失效 | 中 | 只删 A 类；B 类先禁用观察 |
| framework 侧点名失效 | 删除 framework 字符串引用的包（如 Osupdate） | 升级/重启流程异常，`logcat` 出现 `ClassNotFound` | 中 | Osupdate 只禁用不删除 |
| priv-app 白名单残留 | 删除 `privapp-permissions-*.xml` 里列出的包 | 一般无害（白名单多余条目被忽略），但若该文件被改成 `<required>` 会启动失败 | 低 | 不改 `etc/permissions/*.xml`，只动 APK |
| 共享 uid 数据目录残留 | 直接删 APK 未清 `/data/data` | 残留数据占空间、同 uid 包读到旧 SharedPreferences | 中 | 删除后执行 `pm clear` 或保留数据目录 |
| 开机卡死 / bootloop | 删除 Launcher、SystemUI、SettingsProvider、InputDevices 等 | 无法进入桌面，需重刷 | 低（均已列 D） | 严禁删除 D 类；保留 `flash/ori/system.bin` |
| 语音链路失效 | 动 `AliGenieService` / `smartapp` / `GenieMonitor` / `libaligenie_ic.so` | 唤醒、ASR、技能全部失效 | 低（已列 D） | 禁止 |
| 删 prebuilt 让系统应用退化 | 删除 `GenieAicare` / `GenieRTC` / `magisk` 的系统内 prebuilt（设备上由 `/data/app` 版本覆盖） | 包退化为普通数据区应用：失去 `SYSTEM` flag 及默认权限授予，可能缺权限 | 中（rev2 新增） | 不动这 3 个系统内文件；确需处理时先明确目标版本 |
| 误判体积＝内存 | 用 APK 大小推算 RAM 收益 | 优化决策错误 | 高（认知风险） | 本报告所有内存数字均来自 `dumpsys meminfo` / `/proc/meminfo` 快照，且不推算节省量 |
| **违反用户保护** | 把受保护 App 列入删除/禁用清单，或限制其自启/后台/权限 | Root 环境不可用（桌面、文件管理、授权、悬浮操作），且违背明确指令 | **高（纪律风险）** | 保护规则写在 `protection.py` 并由 `report.py` 强制过滤；`summary_stats.json:executable_lists` 五桶中不含受保护项；单元测试守护 |
| **误处理 Magisk 组件** | 删除 `app/magisk.apk`、清理 `/data/adb`、修改 `boot.img`/init、清理模块或 denylist | 失去 root，设备无法恢复 root 权限管理 | **高** | Magisk 组件单列于 `protection.MAGISK_RELATED`，`assert_no_protected()` 对任何含 "magisk" 的路径/包直接抛错 |
| 指标体系混用 | 把 `MemFree` / `MemAvailable` / dumpsys `Free RAM` / `used pss` 当成同一指标 | 结论自相矛盾 | 中（rev2 新增） | README 第 7 节给出各指标定义与不可相加的说明 |
| 与 T5 工程互相干扰 | 改动 `/system` 影响 T5 bridge 的 adb/UDS 链路 | T5 测试失败 | 中 | 精简只在独立备份设备/镜像上做；本目录与 T5 工程完全独立 |

## 2. 逐项风险

### 2.1 B 类（可禁用，保留 APK）

> rev3：本表只保留**可执行**的 B 类项。当贝桌面、EasyTouch、权限狗已受用户保护，
> 移入第 2.3 节“受保护项（禁止试验）”。

| 包 | 主要风险 | 严重度 | 观测点 | 回滚 |
|---|---|---|---|---|
| `com.alibaba.ailabs.genie.osupdate` | OTA 不可用；framework 的 `RebootUpdateActivity` 找不到实现。注意快照中的 20% CPU 只是单次区间值，禁用收益需实测 | 中 | 设置页“系统更新”、`logcat` 关键字 `osupdate` | `pm enable` |
| `com.alibaba.ailabs.genie.guide` | 恢复出厂后无引导页 | 低 | 首次开机流程 | 重置前 `pm enable` |
| `com.android.mtp` / `statementservice` / `vpndialogs` / `bluetoothmidiservice` / `captiveportallogin` / `companiondevicemanager` / `pacprocessor` / `storagemanager` | 对应功能（MTP 传文件、App Links 校验、VPN 授权、BLE-MIDI、门户登录、伴生配对、PAC 代理、存储设置页）不可用 | 低 | 分别触发一次对应功能 | `pm enable` |

### 2.2 C 类与高不确定性项

| 包 | 主要风险 | 严重度 | 说明 |
|---|---|---|---|
| `com.alipay.arome.app`（AMPE，C） | 禁用后小程序 / H5 技能打不开（`genie.webapps.START` 无人接收），且 7 个包对其有真实引用 | **中高** | rev2 已从 B 移到 C；只有用户明确放弃该能力并完成动态验证后才动 |
| `GenieAicare` / `GenieRTC`（C） | 删除系统内 prebuilt 后，`/data/app` 版本退化为普通应用，失去 system 级权限 | **中高** | 未验证；不建议作为精简对象 |
| `Waft` / `AliVideoPlayer` / `GenieScreensaver` / `GenieAlbums`（C） | 与前台 UI / 播放 / 屏保链路耦合，异常表现为“页面空白/黑屏”而非崩溃 | 中 | 需按 `app_removal_recommendations.md` 第 5.2 节逐项验证 |
| `Emode`（C） | 工厂 MMI / 老化测试能力丢失，产线返修受影响 | 中 | 需产线确认 |

### 2.3 受用户保护项（禁止任何试验）

| App | 包名 | 保护后禁止的动作 | 若违背会怎样 |
|---|---|---|---|
| 当贝桌面 | `com.dangbei1.tvlauncher` | 删除、禁用、清数据、限制自启/后台 | 失去 root 后常用的桌面与操作入口 |
| EasyTouch | `com.shere.assistivetouch` | 同上（含取消 `persistent`） | 失去悬浮触控辅助，触屏操作不便 |
| 权限狗 | `com.web1n.permissiondog` | 同上 | 失去 AppOps 图形化授权管理 |
| ES 文件管理器 | `com.estrongs.android.pop` | 同上（虽为 A 类候选） | 失去文件管理入口 |
| Magisk | `com.topjohnwu.magisk` + `/sbin/magisk*`、`/sbin/.magisk`、`/data/adb`、`boot.img` | 删除、禁用、清理、改 boot/init | **失去 root 与授权能力，且难以恢复** |
| MT 管理器 | `bin.mt.plus`（设备侧） | 卸载、清数据、限制权限 | 失去 APK/文件维护工具 |

> 这些包**不在** `summary_stats.json:executable_lists` 的任何执行桶里，只出现在 `protected_blocked` 桶。

## 3. 三级回退策略

### 级别 1：禁用回滚（秒级，无风险）

```bash
# 仅“可执行”的 B 类需要该回滚；受保护项（当贝/EasyTouch/权限狗/Magisk）永远不会被禁用，无需回滚
adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.osupdate
adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.guide
# AMPE 属 C 类，仅在用户明确授权做了试验后才可能需要下列回滚：
adb -s 192.168.1.9:5555 shell pm enable com.alipay.arome.app
```

> 以上命令仅为回退预案，本报告**不代表已执行**；设备当前 `pm list packages -d` 为空。

### 级别 2：用户态卸载回滚（不涉及镜像）

对“用 `pm uninstall -k --user 0 <pkg>`”验证过的包（不改 system 分区），恢复用：

```bash
adb shell cmd package install-existing --user 0 <pkg>
```

### 级别 3：镜像级回滚

1. 单个 APK：`adb root && adb remount`，`adb push <orig.apk> /system/app/<Name>/`，
   然后 `adb shell chmod 644 /system/app/<Name>/<Name>.apk && adb shell restorecon -R /system/app/<Name>`，重启。
2. 整分区：SP Flash Tool 只勾选 `system` 分区，回刷 `D:\tgz02\flash\ori\system.bin`
   （1,023,410,176 字节，原始镜像已备份）；也可回刷 `change/system.bin` 回到当前工作状态。
3. 数据分区：`flash/ori/userdata.bin` 与 `cache.bin` 亦已备份，用于极端情况。

## 4. 误删典型症状 → 定位

| 症状 | 可能缺失 | 定位命令 |
|---|---|---|
| 开机卡在 logo / 循环重启 | Launcher、SystemUI、SettingsProvider、InputDevices | `adb logcat -b all -d \| grep -E "FATAL|E ActivityManager|PackageManager"` |
| 桌面黑屏但 adb 正常 | `GenieLauncher` | `dumpsys activity activities \| head -40` |
| 语音无响应 | `smartapp`、`AliGenieService`、`GenieMonitor` | `dumpsys activity services \| grep -i genie`，`logcat \| grep -i aligenie` |
| 设置打不开 | `S1Settings`、`SettingsProvider` | `am start -n com.android.settings/.Settings` |
| 应用装不上 | `PackageInstaller`、`DefaultContainerService` | `pm install -r <apk>` 报错码 |
| 文件选择器崩溃 | `ExternalStorageProvider` | `logcat \| grep -i DocumentsUI` |
| H5 / 小程序白屏 | `webview`、`Waft`、`AMPE` | `logcat \| grep -iE "chromium|webview|waft"` |
| 应用权限突然变少 / 无法使用系统级能力 | 删了被 `/data/app` 覆盖的系统 prebuilt（`GenieAicare`/`GenieRTC`/`magisk`） | `dumpsys package <pkg> \| grep -E "flags=|codePath"`（观察 `SYSTEM`/`UPDATED_SYSTEM_APP` 是否消失） |

## 5. 禁止操作清单（本次分析已遵守）

1. 不修改 / 删除 `system` 包内任何文件（本报告只新增 `system_debloat/`）。
2. 不生成未经验证的精简 `system.img`。
3. 不删除原厂核心 APK 与 native 库（D 类 + `lib/`、`lib/hw`、`vendor/lib`）。
4. 不以 APK 体积等同 RAM 占用。
5. 不只凭包名判断功能（每个结论都给出 Manifest / 字符串 / 运行时依据）。
6. 不把未确认的依赖描述为“不存在”（C 类的存在就是这条规则的体现）。
7. 不影响任何 T5 工程资料与代码；本目录与 T5 任务完全独立。
8. 本轮（rev3）**未执行任何 `pm disable-user` / `pm uninstall` / 镜像或 boot 写操作**，
   设备 `pm list packages -d` 仍为空；未读取 root-only 内容（shell 身份 `uid=2000`）。
9. **不触碰六个受保护 App**：不删除、不卸载、不禁用、不清数据、不限制自启/后台/权限。

## 6. 修订说明

**rev3（2026-11-20，当前版本）**

- 新增两类高严重度风险：**违反用户保护**（六个 App）、**误处理 Magisk 组件**（apk + `/sbin/magisk*` +
  `/data/adb` + `boot.img`/init）。
- 新增 2.3 节“受用户保护项（禁止任何试验）”，B 类逐项风险表移除当贝 / EasyTouch / 权限狗。
- 第 5 节禁止清单补充“不触碰六个受保护 App”与“不读取 root-only 内容”。
- 移除全部旧目录路径引用，统一使用与本目录无关的描述。

**rev2（2026-11-20）**

- 新增风险：删系统 prebuilt 导致 `SYSTEM` flag 丢失（`GenieAicare`/`GenieRTC`/`magisk`）。
- 新增风险：内存指标体系混用（`MemFree` / `MemAvailable` / dumpsys `Free RAM` / `used pss` 不可互换、不可相加）。
- B 类逐项风险表移除 AMPE（已改 C），并新增 C 类 / 高不确定性项风险。
- OTA 的 CPU 数字统一标注为单次快照值。

完整改动清单与未验证事项见 [revisions.md](revisions.md)。
