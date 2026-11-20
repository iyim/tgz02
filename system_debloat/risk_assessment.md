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
| 指标体系混用 | 把 `MemFree` / `MemAvailable` / dumpsys `Free RAM` / `used pss` 当成同一指标 | 结论自相矛盾 | 中（rev2 新增） | README 第 6 节给出各指标定义与不可相加的说明 |
| 与 T5 工程互相干扰 | 改动 `/system` 影响 T5 bridge 的 adb/UDS 链路 | T5 测试失败 | 中 | 精简只在独立备份设备/镜像上做；`my-doc/06_t5_bridge` 不在本次改动范围 |

## 2. 逐项风险

### 2.1 B 类（可禁用，保留 APK）

| 包 | 主要风险 | 严重度 | 观测点 | 回滚 |
|---|---|---|---|---|
| `com.dangbei1.tvlauncher` | 若该桌面被遥控器“主页”键以外的入口（如 HDMI 输入切换）拉起 | 低 | 桌面切换、开机后默认桌面 | `pm enable` |
| `com.shere.assistivetouch` | 失去悬浮球，触屏导航少一个入口；`persistent` 取消后无副作用 | 低 | 触控操作 | `pm enable` |
| `com.alibaba.ailabs.genie.osupdate` | OTA 不可用；framework 的 `RebootUpdateActivity` 找不到实现。注意快照中的 20% CPU 只是单次区间值，禁用收益需实测 | 中 | 设置页“系统更新”、`logcat` 关键字 `osupdate` | `pm enable` |
| `com.web1n.permissiondog` | 失去 AppOps 图形化管理 | 低 | — | `pm enable` |
| `com.alibaba.ailabs.genie.guide` | 恢复出厂后无引导页 | 低 | 首次开机流程 | 重置前 `pm enable` |
| `com.android.mtp` / `statementservice` / `vpndialogs` / `bluetoothmidiservice` / `captiveportallogin` / `companiondevicemanager` / `pacprocessor` / `storagemanager` | 对应功能（MTP 传文件、App Links 校验、VPN 授权、BLE-MIDI、门户登录、伴生配对、PAC 代理、存储设置页）不可用 | 低 | 分别触发一次对应功能 | `pm enable` |

### 2.2 C 类与高不确定性项

| 包 | 主要风险 | 严重度 | 说明 |
|---|---|---|---|
| `com.alipay.arome.app`（AMPE，C） | 禁用后小程序 / H5 技能打不开（`genie.webapps.START` 无人接收），且 7 个包对其有真实引用 | **中高** | rev2 已从 B 移到 C；只有用户明确放弃该能力并完成动态验证后才动 |
| `GenieAicare` / `GenieRTC` / `magisk`（C） | 删除系统内 prebuilt 后，`/data/app` 版本退化为普通应用，失去 system 级权限 | **中高** | 未验证；不建议作为精简对象 |
| `Waft` / `AliVideoPlayer` / `GenieScreensaver` / `GenieAlbums`（C） | 与前台 UI / 播放 / 屏保链路耦合，异常表现为“页面空白/黑屏”而非崩溃 | 中 | 需按第 4.2 节逐项验证 |
| `Emode`（C） | 工厂 MMI / 老化测试能力丢失，产线返修受影响 | 中 | 需产线确认 |

## 3. 三级回退策略

### 级别 1：禁用回滚（秒级，无风险）

```bash
adb -s 192.168.1.9:5555 shell pm enable com.dangbei1.tvlauncher
adb -s 192.168.1.9:5555 shell pm enable com.shere.assistivetouch
adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.osupdate
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
7. 不影响 `my-doc/06_t5_bridge` 与现有 T5 代码。
8. 本轮（rev2）**未执行任何 `pm disable-user` / `pm uninstall` / 镜像写操作**，设备 `pm list packages -d` 仍为空。

## 6. 修订说明（rev2）

- 新增风险：删系统 prebuilt 导致 `SYSTEM` flag 丢失（`GenieAicare`/`GenieRTC`/`magisk` 三个被 `/data/app` 覆盖的包）。
- 新增风险：内存指标体系混用（`MemFree` / `MemAvailable` / dumpsys `Free RAM` / `used pss` 不可互换、不可相加）。
- B 类逐项风险表移除 AMPE（已改 C），并新增 2.2 节 C 类 / 高不确定性项风险。
- OTA 的 CPU 数字统一标注为单次快照值。
- 完整改动清单与未验证事项见 [revisions.md](revisions.md)。
