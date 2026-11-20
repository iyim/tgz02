# 删除 / 禁用 / 保留建议

分类规则（严格按任务书）：
**A** 确认与启动、原厂核心、AI 改造均无依赖且不影响其它组件；
**B** 不需常驻但保留 APK 更安全（优先禁用）；
**C** 依赖不明确或可能被调用（需进一步动态验证）；
**D** 系统基础 / 语音音频网络设备控制核心 / AI 改造明确依赖。
无法证明依赖已解除的一律不进入 A。

## 1. 总览

| 类 | 数量 | 分区体积 MB | 含义 |
|---|---|---|---|
| A 可删除 | 1 | 4.6 | 已排除系统级依赖，可直接从镜像移除 |
| B 建议禁用 | 13 | 28.15 | 先 `pm disable-user`，APK 保留可秒级回滚 |
| C 暂时保留 | 20 | 241.07 | 有引用 / 功能不明，需动态验证后再定级 |
| D 禁止删除 | 21 | 252.9 | 系统与语音链路核心，删除即破功能 |

## 2. A 类：可以删除（仅 1 个候选，且需授权验证）

| 目录 | 包名 | 总 MB | 判定依据 | 证据等级 |
|---|---|---|---|---|
| `app/ES.apk` | `com.estrongs.android.pop` | 4.60 | ES 文件浏览器（com.estrongs.android.pop，4.60 MB）——A 类候选：第三方预装散装 APK，无 oat、无 native 库、无系统签名权限，降噪后 0 条 app 级入向引用，快照时刻无进程。静态分析通过，但尚未做删后动态验证；需先用 pm uninstall -k --user 0 观察，且须经用户授权。 | 较可信 |

### A-1 `app/ES.apk`（com.estrongs.android.pop，4.60 MB）—— A 类候选

**结论口径（rev2 修正）**：不再称“安全删除”，改为“**A 类候选：静态分析通过，尚未完成删后动态验证**”。

- **已完成的静态验证（较可信）**：`system/app/` 下的散装第三方 APK，无 `oat/`、无 native 库；
  降噪后**零** app 级入向引用（`dependency_edges.csv` 中该包 0 条 `app` 级边）；`sharedUserId` 为空；
  权限 20 项均为常规权限（含 `SYSTEM_ALERT_WINDOW`、`GET_TASKS`，无系统签名级权限）；
  快照时刻无进程。
- **删除影响评估**：仅失去“ES 文件浏览器”这一 UI 入口。系统文件选择器由 `ExternalStorageProvider` +
  `MtpDocumentsProvider` 提供，与本包无关。
- **尚未验证（阻塞项）**：
  1. 删后能否正常开机、桌面与设置是否无异常；
  2. 是否有以 `com.estrongs.*` 为 action 的隐式调用在运行时才暴露（字符串扫描看不到动态注册）；
  3. `SYSTEM_ALERT_WINDOW` 悬浮窗是否被其它组件借用。
- **放行条件（两条都要满足）**：① 用户明确授权；② 先 `pm uninstall -k --user 0 com.estrongs.android.pop`
  观察 ≥7 天无异常，再考虑改镜像。**本报告不执行卸载**。
- **空间收益**：4.60 MB（分区口径）。这一数字与“是否验证通过”无关，属文件体积事实。

## 3. B 类：建议禁用（保留 APK）

| 目录 | 包名 | 总 MB | 快照 PSS KB | persistent | 判定依据 | 操作 | 证据等级 |
|---|---|---|---|---|---|---|---|
| `app/dangbei.apk` | `com.dangbei1.tvlauncher` | 8.77 | 96,912 |  | 当贝桌面（com.dangbei1.tvlauncher）：96MB PSS、JPush/XMPush 双推送、527 次闹钟唤醒、62 次 COCKROACH 唤醒；非默认 HOME（HOME 为 GenieLauncher）；降噪后无应用级入向引用（唯一命中为华为推送 SDK 字符串） | 可禁用；RAM 收益最直接 | 已验证 |
| `app/Osupdate` | `com.alibaba.ailabs.genie.osupdate` | 5.47 | 16,011 | 是 | OTA 升级（persistent=true，snapshot 中 20% CPU / 17% user），framework 字符串引用其 RebootUpdateActivity | 可禁用（pm disable-user）；升级前再启用 | 已验证 |
| `app/Guide` | `com.alibaba.ailabs.genie.guide` | 5.42 | — |  | 开机引导（device_provisioned=1、user_setup_complete=1，已完成使命） | 可禁用（已过引导阶段） | 已验证 |
| `app/easytouch.apk` | `com.shere.assistivetouch` | 4.38 | 38,422 | 是 | 悬浮触控助手（com.shere.assistivetouch），persistent=true，两进程 38MB PSS | 可禁用；确认不需要悬浮球后 | 已验证 |
| `priv-app/StorageManager` | `com.android.storagemanager` | 2.32 | — |  | 存储管理 UI（AOSP），非服务端依赖 | 可禁用 | 较可信 |
| `app/qxg.apk` | `com.web1n.permissiondog` | 1.37 | — |  | 权限狗 AppOps 工具（com.web1n.permissiondog），预装第三方工具，未运行 | 可禁用；权限调试需要时再启用 | 较可信 |
| `priv-app/MtpDocumentsProvider` | `com.android.mtp` | 0.13 | — |  | MTP 文档提供者（PC 复制文件用） | 可禁用；需 MTP 时再启用 | 较可信 |
| `priv-app/StatementService` | `com.android.statementservice` | 0.08 | — |  | App Links 数字资产校验（com.android.statementservice） | 可禁用；不用 App Links 无影响 | 较可信 |
| `app/CaptivePortalLogin` | `com.android.captiveportallogin` | 0.05 | — |  | 强制门户登录页，局域网直连场景无用 | 可禁用；接入需认证 Wi-Fi 时再启用 | 较可信 |
| `app/CompanionDeviceManager` | `com.android.companiondevicemanager` | 0.05 | — |  | 伴生设备配对（BLE 配对引导） | 可禁用 | 较可信 |
| `app/BluetoothMidiService` | `com.android.bluetoothmidiservice` | 0.04 | — |  | BLE-MIDI 服务，无入向引用、无进程 | 可禁用；无 MIDI 外设无影响 | 较可信 |
| `priv-app/VpnDialogs` | `com.android.vpndialogs` | 0.04 | — |  | VPN 授权对话框 | 可禁用 | 较可信 |
| `app/PacProcessor` | `com.android.pacprocessor` | 0.03 | — |  | PAC 代理脚本解析服务（framework 仅在配置 PAC 时绑定） | 可禁用；不配 PAC 无影响 | 较可信 |

### 3.1 第一优先（收益最大，副作用可接受）

**rev2 修正：以下三项不再作为“批次”一起禁用，改为单包逐项实验**，顺序固定为
当贝桌面 → 悬浮触控 → OTA，每项独立观察 ≥24 h 后再决定下一项（原因：三者都可能与桌面/待机行为交互，
同时禁用会让异常无法归因）。

| 顺序 | 包 | 依据（单次快照） | 禁用后失去什么 | 回滚 |
|---|---|---|---|---|
| ① | `com.dangbei1.tvlauncher` | 快照 PSS 96,912 kB；JPush `AlarmReceiver` 527 次 + 小米 `COCKROACH` 62 次唤醒；`xmpushservice` 子进程常驻；**不是默认 HOME** | 当贝桌面入口（当前 HOME 是 `GenieLauncher`） | `pm enable` |
| ② | `com.shere.assistivetouch` | `persistent=true`；两进程快照 PSS 21,461 + 16,961 kB；纯第三方悬浮球 | 悬浮触控球（触屏导航辅助） | `pm enable` |
| ③ | `com.alibaba.ailabs.genie.osupdate` | `persistent=true`；`dumpsys cpuinfo` **单次 343 s 区间快照**显示 20%（17% user）——**这是单次快照值，不能推断为持续 CPU 占用**；framework 侧点名 `RebootUpdateActivity` | 在线 OTA 检查/升级入口；升级前需临时启用 | `pm enable` |

### 3.2 第二优先（体积大或功能已过期）

| 包 | 依据 | 说明 |
|---|---|---|
| `com.web1n.permissiondog`（qxg，1.37 MB） | 零 app 级入向引用、无进程、无系统权限 | 权限管理工具，调试期可随时启用 |
| `com.alibaba.ailabs.genie.guide` | `device_provisioned=1`、`user_setup_complete=1`（实测），引导使命已完成 | 出厂重置后会重新需要 → 重置前启用 |

> `com.alipay.arome.app`（AMPE）**已从本表移出**：rev2 依据“7 个包真实引用”把它改为 C 类，
> 见第 4.1 节。

### 3.3 第三优先（AOSP / MTK 边缘组件，禁用风险≈0）

`com.android.storagemanager`、`com.android.mtp`（MtpDocumentsProvider）、`com.android.statementservice`、
`com.android.vpndialogs`、`com.android.bluetoothmidiservice`、`com.android.captiveportallogin`、
`com.android.companiondevicemanager`、`com.android.pacprocessor`。

这些包在降噪后均无应用级入向引用，且在快照时刻无进程；删除它们对资源几乎无收益（合计 2.79 MB），
**建议只禁用、不删除**——因为它们是 AOSP 标准件，未来接入 MTP / VPN / 伴生设备时不必回刷镜像。

## 4. C 类：暂时保留（依赖不明确）

| 目录 | 包名 | 总 MB | 保留原因 / 待验证点 | 证据等级 |
|---|---|---|---|---|
| `app/AMPE` | `com.alipay.arome.app` | 87.18 | 支付宝/Genie 小程序容器（com.alipay.arome.app，87.18 MB）。存在真实跨包引用：smartapp、Guide、GenieAicare、GenieBrowser、GenieIoT、GenieLauncher 以 com.alibaba.ailabs.genie.webapps.START/INIT 与 GwaReceiver 组件显式引用（降噪后 app 级证据 9 action + 3 component，来自 7 个包）。快照时刻未运行。 | 较可信 |
| `app/AliSpKey` | `com.alibaba.spkey` | 0.13 | 安全密钥服务（system uid，0.13MB） | 未知 |
| `app/AliVideoPlayer` | `com.ailabs.youku.iot` | 45.06 | 视频播放器（com.ailabs.youku.iot，45MB）：smartapp 引用其 NewsPlayer/CommonPlayer/ShortVideo 三个播放器 Activity，GenieScreensaver 引用 PlayerProxyService（降噪后 4 处组件 + 1 处 action，来自 2 个包） | 较可信 |
| `app/CertInstaller` | `com.android.certinstaller` | 0.08 | 证书安装器（用户证书） | 未知 |
| `app/Emode` | `com.ailabs.emode` | 10.64 | 工厂 MMI/老化测试（MASTER_CLEAR、REBOOT 等系统权限），产线与维修依赖 | 较可信 |
| `app/GenieAicare` | `com.alibaba.ailabs.genie.aicare` | 18.50 | 亲情关怀/远程看护，被 smartapp 侧引用 | 较可信 |
| `app/GenieAlbums` | `com.alibaba.ailabs.genie.albums` | 10.56 | 相册（含 com.tld.albumprovider），GenieScreensaver 引用 | 较可信 |
| `app/GenieBrowser` | `com.alibaba.ailabs.genie.browser` | 12.96 | 浏览器（UC 内核，含 sandboxed 进程服务），UI 入口之一 | 未知 |
| `app/GenieChildren` | `com.alibaba.ailabs.genie.children` | 20.14 | 儿童模式（16 处入向引用：Guide/S1Settings/smartapp/AliSystemUI） | 较可信 |
| `app/GenieRTC` | `com.alibaba.ailabs.genie.rtc` | 9.05 | RTC/音视频通话（RTCNotifyService 常驻 22MB），被 smartapp/GenieAicare/GenieAlbums/GenieIoT 引用；系统内为 prebuilt，设备上已被 /data/app 版本覆盖 | 已验证 |
| `app/GenieScreensaver` | `com.alibaba.ailabs.genie.screensaver` | 6.67 | 屏保/白日梦：入向 2 处（GenieAicare 组件引用、authority），且 services.vdex 含其包名 | 较可信 |
| `app/KeyChain` | `com.android.keychain` | 0.11 | 密钥链 UI（android.security.KeyChain 后端 UI） | 未知 |
| `app/UUID` | `com.aliyun.uuid` | 2.73 | 设备 UUID 注册（com.aliyun.uuid，system uid，boot 接收器） | 较可信 |
| `app/UserDictionaryProvider` | `com.android.providers.userdictionary` | 0.04 | 输入法用户词典 Provider | 未知 |
| `app/Waft` | `com.alibaba.genie.waft` | 5.56 | H5 技能运行时（当前前台为 WaftTplActivity），疑似由 smartapp/launcher 拉起，无直接显式引用 | 较可信 |
| `app/magisk.apk` | `com.topjohnwu.magisk` | 10.76 | Magisk 安装包副本（实际运行版本为 /data/app 27.0），保留作 root 恢复手段 | 已验证 |
| `app/raShow` | `com.alira.info` | 0.79 | raShow（com.alira.info，含 DreamerReceiver/WRITE_SECURE_SETTINGS，0.79MB） | 未知 |
| `priv-app/AliProvision` | `com.yunos.tv.provision` | 0.03 | YunOS 出厂配置（com.yunos.tv.provision，framework 字符串含包名） | 较可信 |
| `priv-app/FusedLocation` | `com.android.location.fused` | 0.05 | 融合定位 provider（framework 绑定） | 未知 |
| `priv-app/ProxyHandler` | `com.android.proxyhandler` | 0.03 | 全局 HTTP 代理处理（framework 绑定） | 未知 |

### 4.1 `com.alipay.arome.app`（AMPE）—— rev2 由 B 调整为 C

| 项目 | 内容 |
|---|---|
| 改判依据 | 降噪后仍有 **7 个包**（smartapp、Guide、GenieAicare、GenieBrowser、GenieIoT、GenieLauncher、GenieRTC）对其 `com.alibaba.ailabs.genie.webapps.START` / `.INIT` action 与 `GwaReceiver` 组件有 **app 级**引用（`dependency_edges.csv` 中 `evidence_class=app`），不是 SDK 自带字符串 |
| 运行时状态 | 快照时刻**无进程**（未运行）；体积 87.18 MB，其中 native 库 61.01 MB |
| 因此 | 它既“可被拉起”又“被真实使用”，属典型 C：**保留**，不进普通禁用批次 |
| 何时才考虑禁用/删除 | ① 用户明确决定放弃原厂小程序 / H5 技能；② 完成动态验证（见下表）；③ 明确接受“相关技能全部不可用” |
| 本报告动作 | 不提供禁用命令，不做任何设备操作 |

验证步骤（由用户决定是否执行，本报告不执行）：

1. 记录基线：`pm path com.alipay.arome.app`、`dumpsys meminfo | grep arome`；
2. 单包禁用：`pm disable-user --user 0 com.alipay.arome.app`；
3. 逐项触发依赖它的技能入口（小程序、H5 卡片、`genie.webapps` 相关语音指令），观察是否报错或白屏；
4. 观察 `logcat` 是否出现 `ActivityNotFoundException: ...webapps...` 或 `GwaReceiver` 相关异常；
5. 24 h 后决定：有异常 → `pm enable` 回滚；无异常且确认不需要该能力 → 由用户决定是否进入删除评估。

### 4.2 其余 C 类包的验证动作（任一项通过即可升级为 B）

| 包 | 验证方法 |
|---|---|
| `GenieRTC` | 停用后观察 24 h：是否还有 `RTCNotifyService` 相关通知、通话/视频技能是否可用；注意设备上已被 `/data/app` 版本覆盖（系统 4.0.16 → 加载 5.2.78） |
| `Waft` | 停用后观察：桌面/技能页是否仍能通过 smartapp 打开 H5（`WaftTplActivity` 当前为前台） |
| `AliVideoPlayer` | 停用后测试“播放视频/看剧”类语音指令，检查是否回落 `GenieMonitor`/`smartapp` 内置播放器 |
| `GenieBrowser` | 停用后测试网页打开类指令；确认 `webview` 不依赖它 |
| `GenieScreensaver` | 停用后观察待机屏保是否被系统回落到黑屏（framework 有包名引用） |
| `GenieAlbums` | 停用后测试相册入口与屏保取图 |
| `GenieChildren` / `GenieAicare` | 停用后检查设置页入口与语音技能是否报错；`GenieAicare` 亦被 `/data/app` 覆盖（4.0.26 → 4.0.62） |
| `Emode` | 需产线确认：工厂 MMI/老化测试是否需要 |
| `AliSpKey` / `UUID` / `AliProvision` / `raShow` | 属 system uid 且功能不明（密钥、设备身份、出厂配置、显示策略），**只做日志观察，不做禁用试验** |
| `KeyChain` / `CertInstaller` | 若后续要做 HTTPS 抓包或客户端证书，需要保留 |
| `UserDictionaryProvider` / `FusedLocation` / `ProxyHandler` | 与输入法、定位、代理相关，属“低占用、高不确定”，保留成本几乎为 0 |
| `magisk.apk` | 系统内是副本（25.2），实际运行版本在 `/data/app`（27.0）；保留作 root 恢复手段 |

## 5. D 类：禁止删除

| 目录 | 包名 | 总 MB | 保护依据 |
|---|---|---|---|
| `app/AliGenieService` | `com.aligenie.ags` | 2.32 | 原厂语音链路核心服务（com.aligenie.ags），system uid；对外提供 com.aligenie.ic.icProvider 与 ACTION_SCREEN_SAVER，降噪后仍有 5 个包（smartapp / AliSystemUI / GenieScreensaver / S1Settings / AliVideoPlayer）引用 |
| `app/AliSystemUI` | `com.android.systemui` | 6.19 | SystemUI（com.android.systemui），框架绑定 |
| `app/ExtShared` | `android.ext.shared` | 0.02 | android.ext.shared（共享库宿主） |
| `app/GenieIoT` | `com.alibaba.ailabs.genie.iot` | 16.88 | IoT 设备控制（HouseService 常驻），smarthome 技能依赖 |
| `app/GenieLauncher` | `com.alibaba.ailabs.genie.launcher` | 20.48 | 系统默认 HOME（resolve-activity 返回 AdultHomeActivity） |
| `app/GenieMonitor` | `com.alibaba.ailabs.ar.monitor` | 47.86 | AVE 视觉/唤醒引擎（VisionWakeUpService、GenieGestureService、AVEControlProvider），自带 MNN 推理库 |
| `app/MtkBluetooth` | `com.android.bluetooth` | 3.29 | 蓝牙栈（com.android.bluetooth），A2DP/HFP 常驻服务 |
| `app/S1Settings` | `com.android.settings` | 10.08 | 系统设置（com.android.settings）+ DynamicSettingsService，被 8 个包引用 |
| `app/smartapp` | `com.alibaba.ailabs.genie.smartapp` | 87.89 | 主助手容器（com.alibaba.ailabs.genie.smartapp），3 进程常驻，171 个组件，唯一持有 Accessibility 手势/AbcService 链 |
| `app/webview` | `com.android.webview` | 52.00 | WebView provider（com.android.webview），framework 侧 com.android.webview 强绑定；GenieBrowser/Waft/smartapp 均需 |
| `priv-app/CalendarProvider` | `com.android.providers.calendar` | 0.55 | 日历存储，语音日程技能依赖 |
| `priv-app/ContactsProvider` | `com.android.providers.contacts` | 0.98 | 联系人存储（android.process.acore） |
| `priv-app/DefaultContainerService` | `com.android.defcontainer` | 0.03 | APK 解析容器（安装/包扫描） |
| `priv-app/DownloadProvider` | `com.android.providers.downloads` | 0.49 | 下载服务，被 18 处引用（应用更新/媒体下载） |
| `priv-app/ExtServices` | `android.ext.services` | 0.03 | android.ext.services（framework 扩展：通知/文本分类） |
| `priv-app/ExternalStorageProvider` | `com.android.externalstorage` | 0.05 | 存储访问框架后端 |
| `priv-app/InputDevices` | `com.android.inputdevices` | 0.09 | 输入设备布局提供者（framework 必需） |
| `priv-app/MtkMediaProvider` | `com.android.providers.media` | 0.24 | MediaStore/媒体库，被 37 处引用（相册/播放器/文件） |
| `priv-app/PackageInstaller` | `com.android.packageinstaller` | 2.63 | APK 安装器，adb install / 应用更新必需 |
| `priv-app/SettingsProvider` | `com.android.providers.settings` | 0.59 | 设置存储后端，被 33 处引用 |
| `priv-app/Shell` | `com.android.shell` | 0.21 | com.android.shell（adb shell 身份），magisk/smartapp 引用 |

补充说明（任务书第六节特别保护项逐条对应）：

| 保护要求 | 本机对应 | 结论 |
|---|---|---|
| AliGenieService | `com.aligenie.ags` | D，降噪后 5 个包引用其 `icProvider` / `ACTION_SCREEN_SAVER` |
| `com.alibaba.ailabs.genie.smartapp` | `app/smartapp` | D，171 组件、3 进程（PSS 合计 216,324 kB）、持有 4 个唤醒锁 |
| ASR / VAD / Wakeup | `smartapp`（`:core`）+ `GenieMonitor`（`VisionWakeUpService`、`GenieGestureService`）+ `libaligenie_ic.so` | D |
| 音频采集/处理 native 库 | `system/lib`（482 个 .so）、`lib/hw`（5 个 HAL）、`vendor/lib` 音频 DSP 库 | 禁止改动 |
| 音乐/视频/设备控制依赖 | `GenieIoT`(D)、`AliVideoPlayer`(C)、`MtkMediaProvider`(D) | 见对应条目 |
| Framework / SystemUI / PackageManager / 启动相关 | `framework/*`、`AliSystemUI`、`SettingsProvider`、`PackageInstaller`、`InputDevices`、`DefaultContainerService` | D |

## 6. 空间收益（system 分区）

| 方案 | 包数 | 释放 MB | 备注 |
|---|---|---|---|
| A（删除） | 1 | 4.6 | 立即释放 |
| B（删除，需先完成 P1 验证） | 13 | 28.15 | 释放，但失去禁用可逆性 |
| A + B | 14 | 32.75 | 上限 |
| 仅禁用 A/B 中的任意项 | 0 | 0.0 | 不改变 system 分区占用 |

- 当前 system 分区内 App 总体积 **526.72 MB**（APK + 内置 lib + odex/vdex）。
- 实测 `MemTotal` 1,008,628 KB ≈ 985 MB，快照时刻 `Used RAM` 968,931 KB、`Free RAM` 223,708 KB、
  `ZRAM` 已用 77,792 KB（swap 总 504,308 KB）、系统自评 **status critical** —— 空间与内存都紧，
  但**“删 APK” 主要省的是分区空间，不是 RAM**。
- 真正影响 RAM 的是 persistent / 推送常驻 / 保活 Provider 三者，见 `app_dependency_analysis.md` 第 8 节。

## 7. 删除 vs 禁用：操作与代价

| 维度 | 删除 APK（改镜像） | 禁用（`pm disable-user`） |
|---|---|---|
| 分区空间 | 释放 | **不释放** |
| 运行时内存 | 进程不再被拉起 | 同样不再被拉起 |
| 生效方式 | 重刷 system 或 `adb remount` 后 push | 立即 |
| 回滚 | 重新 push / 回刷镜像 | 一条 `pm enable` |
| 风险 | 误删导致开机异常、需重刷 | 单包失效，可秒级恢复 |
| 建议 | 仅 A 类候选（验证通过后）+ 通过 P1 验证的 B 类 | 全部 B/C 类试验统一走这条路 |

## 8. 修订说明（rev2）

本文件为 rev2（2026-11-20 修订）。相对 rev1 的改动：

1. `com.alipay.arome.app`（AMPE）由 **B 改为 C**，并从禁用批次与风险表（B 类）中移出，改列第 4.1 节专项说明。
2. `app/ES.apk` 由“安全删除”改为“**A 类候选：静态通过、动态未验证**”，补充放行条件（用户授权 + 先用户态卸载观察）。
3. B 类首批由“批次一并禁用”改为**单包逐项实验**（当贝 → 悬浮触控 → OTA，各观察 ≥24 h）。
4. OTA 的 20% CPU 统一标注为**单次区间快照值**。
5. 新增“删 prebuilt 让系统应用退化”风险条目（`GenieAicare`/`GenieRTC`/`magisk`）。

完整依据、测试与未验证事项见 [revisions.md](revisions.md)。
