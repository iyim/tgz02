# 关键功能与包名映射（rev5.3）

证据来源：镜像内 APK 的 AXML manifest（静态解析）+ 设备 `dumpsys package` + 文件系统扫描（`ls -l`）。
**不靠应用名猜包名**：每个包名都有 manifest 或设备记录支撑；无证据的写 unknown。

## 1. 功能 → 包名

| package | 功能 | APK 目录 | 核心 Activity | 核心 Service（前 2） | 关键 so（前 2） | 受保护 | 精简策略 | 证据可信度 |
|---|---|---|---|---|---|---|---|---|
| `com.aligenie.ags` | 原厂语音助手（入口） | app/AliGenieService | com.aligenie.ags.access.MainActivity | AliicxService, ICJobService | lib/arm/libaligenie_ic.so | no | 受保护，禁止精简 | high |
| `com.alibaba.ailabs.genie.smartapp` | 原厂语音技能运行时 | app/smartapp | com.alibaba.ailabs.genie.task.aicare.ui.MsgShowActivity | AnalyticsService, GenieManageServerService | libsmartbox.so, libaceAsr.so | no | 受保护，禁止精简 | high |
| `com.alipay.arome.app` | TTS（小程序容器内骨架） | app/AMPE | com.eg.android.AlipayGphone.AlipayLogin | A11yService, MusicService | libtts_skeleton.so, libandroid-stream-apmtts.so | no | 容器本身高风险；TTS 库随包 | high |
| `com.alibaba.ailabs.genie.launcher` | 默认桌面（HOME） | app/GenieLauncher | com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity | SearchService, AnalyticsService | — | no | 启动关键组件，禁止精简 | high |
| `com.dangbei1.tvlauncher` | 保护：当贝桌面 | app/dangbei.apk | com.dangbei.launcher.ui.welcome.WelcomeActivity | HomeKeyEventCatchService, DownloadService | — | yes | 受用户保护 | high |
| `com.android.settings` | 设置 | app/S1Settings | com.android.settings.Settings | DynamicSettingsService, StartService | — | no | 禁止精简 | high |
| `com.android.systemui` | SystemUI | app/AliSystemUI | — | SystemUIService, AccessibilityServiceGesture | — | no | 禁止精简 | high |
| `com.android.packageinstaller` | 包管理/安装器 | priv-app/PackageInstaller | .InstallStart | WearPackageInstallerService, RuntimePermissionPresenterServiceImpl | — | no | 禁止精简 | high |
| `com.android.defcontainer` | 安装容器服务 | priv-app/DefaultContainerService | — | DefaultContainerService | — | no | 禁止精简 | high |
| `com.android.providers.media` | 存储/媒体 Provider | priv-app/MtkMediaProvider | RingtonePickerActivity | MediaScannerService, MtpService | — | no | 禁止精简 | high |
| `com.android.externalstorage` | 外部存储 Provider | priv-app/ExternalStorageProvider | — | — | — | no | 禁止精简 | high |
| `com.ailabs.youku.iot` | 原厂视频播放 | app/AliVideoPlayer | com.youku.passport.activity.PassportActivity | NetworkService, XStateService | — | no | 视频链路，禁止删除 | high |
| `com.alibaba.ailabs.genie.iot` | 设备控制（IoT） | app/GenieIoT | com.alibaba.ailabs.genie.iot_v20.virtaul.VirtualDeviceActivity | AnalyticsService, HouseService | — | no | 设备控制面 | high |
| `com.alibaba.ailabs.ar.monitor` | 手势/视觉唤醒/AVE | app/GenieMonitor | com.alibaba.ailabs.acamera.sample.CameraSampleActivity | CMCCMediaService, AwesomeService | — | no | 含视觉唤醒与控制 Provider | high |
| `com.android.bluetooth` | 蓝牙栈 | app/MtkBluetooth | .opp.BluetoothOppLauncherActivity | AdapterService, BluetoothOppService | — | no | 框架件 | high |
| `com.android.settings` | Wi-Fi/连接 | app/S1Settings | com.android.settings.Settings | DynamicSettingsService, StartService | — | no | 框架件 | high |
| `com.android.systemui` | 音量控制 | app/AliSystemUI | — | SystemUIService, AccessibilityServiceGesture | — | no | 框架件 | high |
| `com.alibaba.ailabs.genie.osupdate` | 日志/错误上报 | app/Osupdate | com.alibaba.ailabs.genie.osupdate.front.UpdateActivity | UpdateService | — | no | 见 OTA 报告 | high |

## 2. 语音链路的 native 归属（关键）

原厂语音的 ASR/VAD/Wakeup/TTS **不是独立 APK**，而是 smartapp / AliGenieService / AMPE 里的 so：

| 库 | 所在目录 | 大小（字节） | 作用 |
|---|---|---|---|
| libsmartbox.so | app/smartapp/lib/arm | 2,047,772 | 语音主框架/离线引擎桥 |
| libaceAsr.so | app/smartapp/lib/arm | 493,288 | ASR（语音识别） |
| libvad_api.so / libvad_bin.so | app/smartapp/lib/arm | 566,964 / 59,028 | VAD（端点检测） |
| libwakeup_bin_S1.so | app/smartapp/lib/arm | 3,232,178 | 唤醒模型 S1 |
| libwakeup_bin_S1L_S3.so | app/smartapp/lib/arm | 3,246,393 | 唤醒模型 S1L/S3 |
| libwakeup_sync_api_S1.so / _S1L_S3.so | app/smartapp/lib/arm | 1,226,596 / 1,132,388 | 唤醒同步 API |
| libGenieCommon.so / libGenieJson.so | app/smartapp/lib/arm | 403,180 / 304,872 | 公共库/JSON |
| libaligenie_ic.so | app/AliGenieService/lib/arm | 38,576 | 原厂语音服务 JNI |
| libtts_skeleton.so | app/AMPE/lib/arm | 169,772 | TTS 骨架（小程序容器内） |
| libandroid-stream-apmtts.so | app/AMPE/lib/arm | 1,617 | 流式 TTS 桥 |

推论（重要）：

1. **`libsmartbox.so`、`libaceAsr.so`、`libvad_*.so`、`libwakeup_*.so` 都属于 `com.alibaba.ailabs.genie.smartapp`**。
   要让它们“精简”，只能动 smartapp 本身——而 smartapp 是全系统最大包且被 launcher/设置/多个技能引用。
2. `libaligenie_ic.so` 在 `com.aligenie.ags`（原厂语音服务入口）内。
3. TTS 的 so 在 `com.alipay.arome.app`（AMPE）内 → 动 AMPE 会同时影响小程序与 TTS 骨架。

## 3. 其他核心功能

| 功能 | 包名 | 说明 |
|---|---|---|
| 默认桌面（HOME） | `com.alibaba.ailabs.genie.launcher` | `resolve-activity` 返回 `.activity.AdultHomeActivity`，见 `launcher_and_boot.md` |
| 当贝桌面 | `com.dangbei1.tvlauncher` | 已安装但**不是**默认 HOME；受用户保护 |
| 设置 | `com.android.settings`（S1Settings） | 系统设置，禁止精简 |
| SystemUI | `com.android.systemui`（AliSystemUI） | 状态栏/音量面板，禁止精简 |
| 包管理 | `com.android.packageinstaller` + `com.android.defcontainer` | 安装器与解压服务，禁止精简 |
| 媒体/存储 | `com.android.providers.media`、`com.android.externalstorage`、`com.android.storagemanager` | 存取卡与外接存储 |
| 原厂视频 | `com.ailabs.youku.iot`（AliVideoPlayer） | 点播/新闻/短视频/屏保视频 |
| 设备控制 | `com.alibaba.ailabs.genie.iot`（GenieIoT） | 23 条来自 smartapp 的 ServiceRecord 绑定 |
| 手势/视觉唤醒/AVE | `com.alibaba.ailabs.ar.monitor`（GenieMonitor） | 含 `VisionWakeUpService`、`AVEControlProvider` |
| 蓝牙 | `com.android.bluetooth` | 框架件 |
| Wi-Fi/网络 | `com.android.settings`（网络页）+ `com.android.server.telecom` 无关 | 由 framework 承载，无独立 APK |
| 音量 | `com.android.systemui`（音量面板）+ framework `AudioService` | 无独立 APK |
| 开机启动服务 | `com.alibaba.ailabs.genie.osupdate` 等 + `init.rc` 服务 | 见 `launcher_and_boot.md` |

## 4. 明确 unknown

1. 各包 `label`：unknown（未解析 arsc）。
2. 音量/Wi-Fi 的“核心组件”是 framework 内服务（`AudioService`、`WifiService`），不在 APK 层，
   因此表中只能给到 SystemUI/设置，无法列 APK 组件名。
3. TTS 是否还有第二个实现（原厂 `com.aligenie.ags` 内是否存在 TTS 引擎）：**未确认**，
   仅在 AMPE 内找到 tts 骨架库。
