# 删除 / 禁用 / 保留建议

分类规则：
**A 类候选**：静态分析认为具备删除可能性，**尚未完成真机动态验证**（不是“已验证可安全删除”）；
**B** 不需常驻但保留 APK 更安全（优先禁用，需单包试验）；
**C** 依赖不明确或可能被调用（需进一步动态验证）；
**D** 系统基础 / 语音音频网络设备控制核心 / AI 改造明确依赖。
无法证明依赖已解除的一律不进入 A。
**用户保护优先于以上任何分类**（见第 2 节）。

## 1. 总览

| 类 | 数量 | 分区体积 MB | 含义 | 可执行 |
|---|---|---|---|---|
| A 类候选 | 1 | 4.6 | 静态分析认为具备删除可能性，尚未完成真机动态验证 | 否（需动态验证 + 授权；且本次候选受保护） |
| B 建议禁用 | 13 | 28.15 | 先 `pm disable-user`，APK 保留可秒级回滚 | 是，但排除受保护项（实际 10 个） |
| C 暂时保留 | 20 | 241.07 | 有引用 / 功能不明，需动态验证后再定级 | 否 |
| D 禁止删除 | 21 | 252.9 | 系统与语音链路核心，删除即破功能 | 否 |

## 2. 用户保护（rev3 · 最高优先级）

以下六个 App 由操作者明确指定保留，**在另行授权前持续有效**。保护规则覆盖：不得建议删除 APK、
不得建议卸载/禁用、不得建议清理数据、不得限制其自启动/后台/权限、不得列入任何执行清单、
不得通过脚本或过滤器间接处理、不得用静态分析结论覆盖用户保护。

| App | 包名 | 系统镜像内 | 技术分类（保留） | 当前允许动作 |
|---|---|---|---|---|
| ES 文件管理器 | `com.estrongs.android.pop` | 是 | A | 禁止删除 / 禁用 / 清数据 / 限制自启 |
| EasyTouch | `com.shere.assistivetouch` | 是 | B | 禁止删除 / 禁用 / 清数据 / 限制自启 |
| MT 管理器 | `bin.mt.plus` | 否（设备侧安装） | — | 禁止删除 / 禁用 / 清数据 / 限制自启 |
| Magisk | `com.topjohnwu.magisk` | 是 | C | 禁止删除 / 禁用 / 清数据 / 限制自启 |
| 当贝桌面 | `com.dangbei1.tvlauncher` | 是 | B | 禁止删除 / 禁用 / 清数据 / 限制自启 |
| 权限狗 | `com.web1n.permissiondog` | 是 | B | 禁止删除 / 禁用 / 清数据 / 限制自启 |

保护原因：`在用户另行明确授权或调整保护要求之前，不得删除、禁用或精简。`

**ES 特殊说明**：ES 文件管理器先前是 A 类删除候选，现在从所有实际删除候选清单与执行计划中排除；
其 A 类技术分类与静态分析结论**原样保留**，没有为了“方便”把它改判成 D 类系统关键组件。

**Magisk 特殊说明**：除管理 App 外，配套组件单独记录与保护，见第 2.1 节。

### 2.1 Magisk 及相关组件

| 类型 | 路径 | 在系统镜像内 | 证据 |
|---|---|---|---|
| apk | `app/magisk.apk` | 是 | 镜像内唯一与 Magisk 相关的文件；Manifest v25.2，设备实际加载 /data/app 版本 27.0 |
| runtime-binary | `/sbin/magisk32` | 否 | 设备 /sbin 为 Magisk tmpfs 挂载（/proc/mounts: "magisk /sbin tmpfs ..."），该二进制不在 system 分区内，属 boot ramdisk 侧 |
| runtime-binary | `/sbin/magiskinit` | 否 | 同上；/sbin 内 root:root，权限 750 |
| runtime-binary | `/sbin/magiskpolicy` | 否 | 同上；SELinux 策略注入工具 |
| symlink | `/sbin/magisk` | 否 | /sbin/magisk -> ./magisk32 |
| runtime-dir | `/sbin/.magisk` | 否 | 设备存在但 shell 用户无权限（Permission denied）；内容未读取 |
| data-dir | `/data/adb` | 否 | 设备存在，shell 用户 Permission denied；内容未读取（无 root shell，未做提权） |

禁止动作：删除或替换 app/magisk.apk；修改 boot.img / boot ramdisk（含 magiskinit 补丁、init 配置）；删除 /sbin/magisk*、/sbin/.magisk；清理 /data/adb；清理 Magisk 模块目录或 denylist 配置；把 Magisk 组件当作第三方残留处理。

已核查未发现 Magisk 痕迹的镜像位置：system/bin/su、system/xbin/su、system/xbin/magisk*、system/bin/magisk*、system/etc/init/*.rc 中的 magisk 条目、build.prop 中的 magisk 属性。
未对 Magisk 的安装结构做推断（`/sbin/.magisk`、`/data/adb` 对 shell 不可读，未提权）。

## 3. A 类候选：静态分析认为具备删除可能性，尚未完成真机动态验证

**清单映射（rev3.1）**：本节列表对应 `A_candidate`（静态证据），**不是**删除计划。
可执行删除清单 `A_delete` 当前为 **0 个**——进入它需要「真机动态验证」+「用户明确授权」两条真实记录，
两者当前均为空，且受用户保护的包无论如何不得进入。

| 目录 | 包名 | 总 MB | 判定依据 | 证据等级 | 用户保护 |
|---|---|---|---|---|---|
| `app/ES.apk` | `com.estrongs.android.pop` | 4.60 | ES 文件浏览器（com.estrongs.android.pop，4.60 MB）——A 类候选：第三方预装散装 APK，无 oat、无 native 库、无系统签名权限、快照无进程、0 条 app 级入向引用。**已列入用户保护名单**，因此不执行删除/禁用/卸载；技术分类与技术结论保留。 | 较可信 | **受保护** |

### 3.1 `app/ES.apk`（com.estrongs.android.pop，4.60 MB）—— A 类候选，**受用户保护**

**口径（rev3）**：A 类候选 = 静态分析认为具备删除可能性，**不是**已验证可安全删除；
且本候选**已进入用户保护名单**，因此**不进入任何删除清单**。

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
- **放行条件（三条都要满足，当前均未满足）**：① **用户解除对该 App 的保护**；② 用户明确授权做删除评估；
  ③ 届时先以用户态卸载方式观察 ≥7 天无异常，再考虑改镜像。
  **rev3 结论：该 App 受用户保护，不执行任何删除/禁用/卸载动作，本报告也不提供针对它的执行命令。**
- **空间收益**：4.60 MB（分区口径，属文件体积事实）；但因受保护，**不计入可释放空间**。

## 4. B 类：建议禁用（保留 APK）

| 目录 | 包名 | 总 MB | 快照 PSS KB | persistent | 判定依据 | 操作 | 证据等级 | 保护 |
|---|---|---|---|---|---|---|---|---|
| `app/dangbei.apk` | `com.dangbei1.tvlauncher` | 8.77 | 96,912 |  | 当贝桌面（com.dangbei1.tvlauncher）：96MB PSS、JPush/XMPush 双推送、527 次闹钟唤醒、62 次 COCKROACH 唤醒；非默认 HOME（HOME 为 GenieLauncher）；降噪后无应用级入向引用（唯一命中为华为推送 SDK 字符串） | 可禁用；RAM 收益最直接 | 已验证 | **受保护** |
| `app/Osupdate` | `com.alibaba.ailabs.genie.osupdate` | 5.47 | 16,011 | 是 | OTA 升级（persistent=true，snapshot 中 20% CPU / 17% user），framework 字符串引用其 RebootUpdateActivity | 可禁用（pm disable-user）；升级前再启用 | 已验证 |  |
| `app/Guide` | `com.alibaba.ailabs.genie.guide` | 5.42 | — |  | 开机引导（device_provisioned=1、user_setup_complete=1，已完成使命） | 可禁用（已过引导阶段） | 已验证 |  |
| `app/easytouch.apk` | `com.shere.assistivetouch` | 4.38 | 38,422 | 是 | 悬浮触控助手（com.shere.assistivetouch），persistent=true，两进程 38MB PSS | 可禁用；确认不需要悬浮球后 | 已验证 | **受保护** |
| `priv-app/StorageManager` | `com.android.storagemanager` | 2.32 | — |  | 存储管理 UI（AOSP），非服务端依赖 | 可禁用 | 较可信 |  |
| `app/qxg.apk` | `com.web1n.permissiondog` | 1.37 | — |  | 权限狗 AppOps 工具（com.web1n.permissiondog），预装第三方工具，未运行 | 可禁用；权限调试需要时再启用 | 较可信 | **受保护** |
| `priv-app/MtpDocumentsProvider` | `com.android.mtp` | 0.13 | — |  | MTP 文档提供者（PC 复制文件用） | 可禁用；需 MTP 时再启用 | 较可信 |  |
| `priv-app/StatementService` | `com.android.statementservice` | 0.08 | — |  | App Links 数字资产校验（com.android.statementservice） | 可禁用；不用 App Links 无影响 | 较可信 |  |
| `app/CaptivePortalLogin` | `com.android.captiveportallogin` | 0.05 | — |  | 强制门户登录页，局域网直连场景无用 | 可禁用；接入需认证 Wi-Fi 时再启用 | 较可信 |  |
| `app/CompanionDeviceManager` | `com.android.companiondevicemanager` | 0.05 | — |  | 伴生设备配对（BLE 配对引导） | 可禁用 | 较可信 |  |
| `app/BluetoothMidiService` | `com.android.bluetoothmidiservice` | 0.04 | — |  | BLE-MIDI 服务，无入向引用、无进程 | 可禁用；无 MIDI 外设无影响 | 较可信 |  |
| `priv-app/VpnDialogs` | `com.android.vpndialogs` | 0.04 | — |  | VPN 授权对话框 | 可禁用 | 较可信 |  |
| `app/PacProcessor` | `com.android.pacprocessor` | 0.03 | — |  | PAC 代理脚本解析服务（framework 仅在配置 PAC 时绑定） | 可禁用；不配 PAC 无影响 | 较可信 |  |

### 4.1 受用户保护，不进入试验（3 个）

| 包 | 技术依据（仍成立） | 处理 |
|---|---|---|
| `com.dangbei1.tvlauncher`（当贝桌面） | 快照 PSS 96,912 kB；JPush 527 次 + COCKROACH 62 次唤醒；非默认 HOME | **受保护**：不试验、不禁用、不改变自启/后台 |
| `com.shere.assistivetouch`（EasyTouch） | `persistent=true`；两进程快照 PSS 21,461 + 16,961 kB | **受保护**：同上 |
| `com.web1n.permissiondog`（权限狗） | 零 app 级入向引用；无进程 | **受保护**：同上 |

> 这三项在 `summary_stats.json:executable_lists.B_disable` 中**已不存在**，仅保留技术分类 B 与观测数据。

### 4.2 可执行的单包试验（每项独立观察 ≥24 h）

| 顺序 | 包 | 依据（单次快照） | 禁用后失去什么 | 回滚 |
|---|---|---|---|---|
| ① | `com.alibaba.ailabs.genie.osupdate` | `persistent=true`；`dumpsys cpuinfo` **单次 343 s 区间快照** 20%（17% user）——单次快照值，不能推断为持续 CPU 占用；framework 侧点名 `RebootUpdateActivity` | 在线 OTA 检查/升级入口；升级前需临时启用 | `pm enable` |
| ② | `com.alibaba.ailabs.genie.guide` | `device_provisioned=1`、`user_setup_complete=1`（实测），引导使命已完成 | 出厂重置后的引导页（重置前启用） | `pm enable` |
| ③ | 8 个 AOSP 边缘组件 | 降噪后无 app 级入向引用、快照无进程 | 对应功能（见 4.3） | `pm enable` |

> `com.alipay.arome.app`（AMPE）不在本表：rev2 依据“7 个包真实引用”把它改为 C 类，见第 5.1 节。

### 4.3 第三优先（AOSP / MTK 边缘组件，禁用风险≈0）

`com.android.storagemanager`、`com.android.mtp`（MtpDocumentsProvider）、`com.android.statementservice`、
`com.android.vpndialogs`、`com.android.bluetoothmidiservice`、`com.android.captiveportallogin`、
`com.android.companiondevicemanager`、`com.android.pacprocessor`。

这些包在降噪后均无应用级入向引用，且在快照时刻无进程；删除它们对资源几乎无收益（合计 2.79 MB），
**建议只禁用、不删除**——因为它们是 AOSP 标准件，未来接入 MTP / VPN / 伴生设备时不必回刷镜像。

## 5. C 类：暂时保留（依赖不明确）

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

### 5.1 `com.alipay.arome.app`（AMPE）—— rev2 由 B 调整为 C

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

### 5.2 其余 C 类包的验证动作（任一项通过即可升级为 B）

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

## 6. D 类：禁止删除

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

## 7. 空间收益（system 分区）

| 方案 | 包数 | 释放 MB | 备注 |
|---|---|---|---|
| **当前可执行删除** | 0 | 0.0 | rev3：唯一 A 类候选 ES 受用户保护，故为 0 |
| A 类候选（容量核算，不可执行） | 1 | 4.6 | ES 受保护，不计入可释放空间 |
| B 类（容量核算，其中 3 个受保护） | 13 | 28.15 | 当贝 / EasyTouch / 权限狗受保护，可试验项见第 4.2 节 |
| A + B 容量上限（不可执行） | 14 | 32.75 | 仅作分区容量参考 |
| 仅禁用任意项 | 0 | 0.0 | 不改变 system 分区占用 |

- 当前 system 分区内 App 总体积 **526.72 MB**（APK + 内置 lib + odex/vdex）。
- 实测 `MemTotal` 1,008,628 KB ≈ 985 MB，快照时刻 `Used RAM` 968,931 KB、`Free RAM` 223,708 KB、
  `ZRAM` 已用 77,792 KB（swap 总 504,308 KB）、系统自评 **status critical** —— 空间与内存都紧，
  但**“删 APK” 主要省的是分区空间，不是 RAM**。
- 真正影响 RAM 的是 persistent / 推送常驻 / 保活 Provider 三者，见 `app_dependency_analysis.md` 第 8 节。

## 8. 删除 vs 禁用：操作与代价

| 维度 | 删除 APK（改镜像） | 禁用（`pm disable-user`） |
|---|---|---|
| 分区空间 | 释放 | **不释放** |
| 运行时内存 | 进程不再被拉起 | 同样不再被拉起 |
| 生效方式 | 重刷 system 或 `adb remount` 后 push | 立即 |
| 回滚 | 重新 push / 回刷镜像 | 一条 `pm enable` |
| 风险 | 误删导致开机异常、需重刷 | 单包失效，可秒级恢复 |
| 建议 | 仅 A 类候选（验证通过后）+ 通过 P1 验证的 B 类 | 全部 B/C 类试验统一走这条路；**受保护项两者都不做** |

> rev3：`space_rows` 中的 A/B 数字是**容量核算**，不是可释放空间——A 类候选 ES 与 B 类中的
> 当贝/EasyTouch/权限狗均受用户保护，当前**可执行的删除为 0 项**。

## 9. 修订说明（rev2 / rev3）

**rev3（2026-11-20，当前版本）**

1. 六个 App 进入用户保护（第 2 节），其中 ES / 当贝 / EasyTouch / 权限狗 / Magisk 在镜像内、MT 管理器在设备侧；
   全部从删除、禁用、清数据清单中移除。
2. Magisk 配套组件单列（第 2.1 节）：镜像内仅 `app/magisk.apk`；`/sbin/magisk*`、`/sbin/.magisk`、`/data/adb`
   为镜像外组件，禁止删除/清理，禁止改 `boot.img` 与 init。
3. A 类措辞统一为“**A 类候选：静态分析认为具备删除可能性，尚未完成真机动态验证**”，
   并新增“可执行 / 不可执行”列。
4. B 类拆为“受保护不试验（4.1）”与“可执行单包试验（4.2）”。

**rev2（2026-11-20）**

1. `com.alipay.arome.app`（AMPE）由 **B 改为 C**，并从禁用批次与风险表（B 类）中移出，改列第 5.1 节专项说明。
2. `app/ES.apk` 由“安全删除”改为“**A 类候选：静态通过、动态未验证**”，补充放行条件。
3. B 类首批由“批次一并禁用”改为**单包逐项实验**，每项观察 ≥24 h。
4. OTA 的 20% CPU 统一标注为**单次区间快照值**。
5. 新增“删 prebuilt 让系统应用退化”风险条目（`GenieAicare`/`GenieRTC`/`magisk`）。

完整依据、测试与未验证事项见 [revisions.md](revisions.md)。
