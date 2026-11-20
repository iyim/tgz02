# App 完整清单

数据来源：镜像文件体积（本地解包目录） + 设备 `pm path` / `dumpsys meminfo`（2026-11-20 16:03 快照）。
「总 MB」= APK + 内置 native 库 + odex/vdex/oat；不含 `/data` 数据目录与用户更新包。

## 1. 分类汇总

| 类 | 数量 | 总 MB | APK MB | lib MB | oat/vdex MB | 快照 PSS 合计 kB |
|---|---|---|---|---|---|---|
| A | 1 | 4.6 | 4.6 | 0.0 | 0.0 | 0 |
| B | 13 | 28.15 | 21.94 | 0.75 | 5.46 | 151,345 |
| C | 20 | 241.07 | 84.51 | 97.72 | 58.85 | 105,519 |
| D | 21 | 252.9 | 135.2 | 58.1 | 59.6 | 349,733 |

> 最后一列是该类下各包进程 PSS 的**相加值**（单次快照，仅作量级参考），不是该类包的“内存占用”，
> 也不能当作禁用/删除后可释放的内存；无进程的包按 0 计入。

合计 **55 个包 / 526.72 MB**。

分类含义（rev3 统一口径）：

| 类 | 含义 | 是否可执行 |
|---|---|---|
| A | **A 类候选：静态分析认为具备删除可能性，尚未完成真机动态验证。** | 否（需动态验证 + 用户授权） |
| B | 建议禁用（保留 APK），需单包试验并独立观察 | 是（受保护项除外） |
| C | 暂时保留（依赖不明确，需动态验证） | 否 |
| D | 禁止删除（系统 / 原厂核心 / AI 改造依赖） | 否 |

## 2. 用户保护清单（rev3）

| App | 包名 | 系统镜像内目录 | 技术分类 | 保护状态 | 允许的动作 |
|---|---|---|---|---|---|
| ES 文件管理器 | `com.estrongs.android.pop` | `app/ES.apk` | A | user_protected = true | 禁止删除/禁用/清数据/限制自启 |
| EasyTouch | `com.shere.assistivetouch` | `app/easytouch.apk` | B | user_protected = true | 禁止删除/禁用/清数据/限制自启 |
| MT 管理器 | `bin.mt.plus` | 不在镜像内 | — | user_protected = true | 禁止删除/禁用/清数据/限制自启 |
| Magisk | `com.topjohnwu.magisk` | `app/magisk.apk` | C | user_protected = true | 禁止删除/禁用/清数据/限制自启 |
| 当贝桌面 | `com.dangbei1.tvlauncher` | `app/dangbei.apk` | B | user_protected = true | 禁止删除/禁用/清数据/限制自启 |
| 权限狗 | `com.web1n.permissiondog` | `app/qxg.apk` | B | user_protected = true | 禁止删除/禁用/清数据/限制自启 |

保护原因：`在用户另行明确授权或调整保护要求之前，不得删除、禁用或精简。`

> 表中只有 5 个包出现在下面的 55 行清单里（`bin.mt.plus` 是设备侧安装，不在 system 分区）。
> 受保护包**保留原技术分类**，但 `exec_action` 一律为“受用户保护”，且不会出现在
> `summary_stats.json:executable_lists` 的任何执行桶中。

## 3. 分区与目录分布

| 位置 | 形态 | 数量 | 说明 |
|---|---|---|---|
| `system/app/<Name>/` | 目录（含 apk + lib + oat） | 32 | 多数带 `oat/arm/*.odex|.vdex` 预编译产物 |
| `system/app/*.apk` | 散装 APK | 5 | `dangbei.apk`、`easytouch.apk`、`ES.apk`、`magisk.apk`、`qxg.apk`，无 oat、无 lib 目录 |
| `system/priv-app/<Name>/` | 目录 | 18 | 均带 `oat/`，仅 `DefaultContainerService` 额外带 `lib/` |
| `vendor/app/` | 未解包（vendor.img） | 2 | `GooglePinyinIME`(26.0 MB)、`MTKThermalManager`(27 KB)，仅核对路径，未做静态分析 |
| `vendor/overlay/` | 未解包 | 1 | `framework-res__auto_generated_rro.apk`(1.44 MB) |
| `/data/app` 更新包 | 用户分区 | **3** | `com.alibaba.ailabs.genie.aicare`、`com.alibaba.ailabs.genie.rtc`、`com.topjohnwu.magisk`（`UPDATED_SYSTEM_APP`，覆盖系统内 prebuilt；rev2 由 2 修正为 3） |

## 4. 完整清单（按分类、体积排序）

| # | 目录 | 包名 | 版本 | 类 | 总 MB | APK | lib | oat/vdex | 组件 | persistent | PSS KB | 保护 | 设备路径 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | `app/ES.apk` | `com.estrongs.android.pop` | 3.2.5.5 | A | 4.60 | 4.60 | 0.00 | 0.00 | 76 |  |  | **受保护** | /system/app/ES.apk |
| 2 | `app/dangbei.apk` | `com.dangbei1.tvlauncher` | 3.3.6 | B | 8.77 | 8.77 | 0.00 | 0.00 | 78 |  | 96912 | **受保护** | /system/app/dangbei.apk |
| 3 | `app/Osupdate` | `com.alibaba.ailabs.genie.osupdate` | 9.0.1.0 | B | 5.47 | 1.98 | 0.00 | 3.49 | 6 | 是 | 16011 |  | /system/app/Osupdate/Osupdate.apk |
| 4 | `app/Guide` | `com.alibaba.ailabs.genie.guide` | 1.1.0.118 | B | 5.42 | 4.67 | 0.75 | 0.00 | 10 |  |  |  | /system/app/Guide/Guide.apk |
| 5 | `app/easytouch.apk` | `com.shere.assistivetouch` | 4.6.1 | B | 4.38 | 4.38 | 0.00 | 0.00 | 57 | 是 | 38422 | **受保护** | /system/app/easytouch.apk |
| 6 | `priv-app/StorageManager` | `com.android.storagemanager` | 8.1.0 | B | 2.32 | 0.66 | 0.00 | 1.66 | 5 |  |  |  | /system/priv-app/StorageManager/StorageManager.apk |
| 7 | `app/qxg.apk` | `com.web1n.permissiondog` | 0.1.0.45 | B | 1.37 | 1.37 | 0.00 | 0.00 | 15 |  |  | **受保护** | /system/app/qxg.apk |
| 8 | `priv-app/MtpDocumentsProvider` | `com.android.mtp` | 8.1.0 | B | 0.13 | 0.05 | 0.00 | 0.08 | 4 |  |  |  | /system/priv-app/MtpDocumentsProvider/MtpDocumentsProvider.apk |
| 9 | `priv-app/StatementService` | `com.android.statementservice` | 1.0 | B | 0.08 | 0.01 | 0.00 | 0.08 | 2 |  |  |  | /system/priv-app/StatementService/StatementService.apk |
| 10 | `app/CaptivePortalLogin` | `com.android.captiveportallogin` | 8.1.0 | B | 0.05 | 0.01 | 0.00 | 0.04 | 1 |  |  |  | /system/app/CaptivePortalLogin/CaptivePortalLogin.apk |
| 11 | `app/CompanionDeviceManager` | `com.android.companiondevicemanager` | 8.1.0 | B | 0.05 | 0.01 | 0.00 | 0.04 | 2 |  |  |  | /system/app/CompanionDeviceManager/CompanionDeviceManager.apk |
| 12 | `app/BluetoothMidiService` | `com.android.bluetoothmidiservice` | 8.1.0 | B | 0.04 | 0.01 | 0.00 | 0.03 | 1 |  |  |  | /system/app/BluetoothMidiService/BluetoothMidiService.apk |
| 13 | `priv-app/VpnDialogs` | `com.android.vpndialogs` | 8.1.0 | B | 0.04 | 0.01 | 0.00 | 0.02 | 2 |  |  |  | /system/priv-app/VpnDialogs/VpnDialogs.apk |
| 14 | `app/PacProcessor` | `com.android.pacprocessor` | 8.1.0 | B | 0.03 | 0.01 | 0.00 | 0.02 | 1 |  |  |  | /system/app/PacProcessor/PacProcessor.apk |
| 15 | `app/AMPE` | `com.alipay.arome.app` | 10.2.3.1775 | C | 87.18 | 26.16 | 61.01 | 0.00 | 506 |  |  |  | /system/app/AMPE/AMPE.apk |
| 16 | `app/AliVideoPlayer` | `com.ailabs.youku.iot` | 2.0.2.165 | C | 45.06 | 10.98 | 21.28 | 12.80 | 21 |  |  |  | /system/app/AliVideoPlayer/AliVideoPlayer.apk |
| 17 | `app/GenieChildren` | `com.alibaba.ailabs.genie.children` | 5.11.0.19 | C | 20.14 | 9.97 | 2.76 | 7.40 | 29 |  |  |  | /system/app/GenieChildren/GenieChildren.apk |
| 18 | `app/GenieAicare` | `com.alibaba.ailabs.genie.aicare` | 4.0.26 | C | 18.50 | 2.52 | 6.90 | 9.08 | 10 |  |  |  | /data/app/com.alibaba.ailabs.genie.aicare-zsBAkMuEJlOe5ygOiDbDbw==/base.apk |
| 19 | `app/GenieBrowser` | `com.alibaba.ailabs.genie.browser` | 1.0.0.19 | C | 12.96 | 1.03 | 0.99 | 10.94 | 6 |  |  |  | /system/app/GenieBrowser/GenieBrowser.apk |
| 20 | `app/magisk.apk` | `com.topjohnwu.magisk` | 25.2 | C | 10.76 | 10.76 | 0.00 | 0.00 | 6 |  |  | **受保护** | /data/app/com.topjohnwu.magisk-EuMSu4VItaK3widDq122zw==/base.apk |
| 21 | `app/Emode` | `com.ailabs.emode` | 1.0.30 | C | 10.64 | 6.11 | 0.00 | 4.53 | 83 |  |  |  | /system/app/Emode/Emode.apk |
| 22 | `app/GenieAlbums` | `com.alibaba.ailabs.genie.albums` | 1.4.14 | C | 10.56 | 1.01 | 0.00 | 9.54 | 7 |  |  |  | /system/app/GenieAlbums/GenieAlbums.apk |
| 23 | `app/GenieRTC` | `com.alibaba.ailabs.genie.rtc` | 4.0.16 | C | 9.05 | 9.05 | 0.00 | 0.00 | 29 |  | 22329 |  | /data/app/com.alibaba.ailabs.genie.rtc-iD7ciUfp9lpYBtIqAEiqeA==/base.apk |
| 24 | `app/GenieScreensaver` | `com.alibaba.ailabs.genie.screensaver` | 2.6.18 | C | 6.67 | 6.02 | 0.65 | 0.00 | 16 |  |  |  | /system/app/GenieScreensaver/GenieScreensaver.apk |
| 25 | `app/Waft` | `com.alibaba.genie.waft` | 1.3.231.15321244 | C | 5.56 | 0.18 | 4.13 | 1.26 | 19 |  | 83190 |  | /system/app/Waft/Waft.apk |
| 26 | `app/UUID` | `com.aliyun.uuid` | 3.3.2 | C | 2.73 | 0.53 | 0.00 | 2.21 | 3 |  |  |  | /system/app/UUID/UUID.apk |
| 27 | `app/raShow` | `com.alira.info` | 1.10 | C | 0.79 | 0.01 | 0.00 | 0.78 | 2 |  |  |  | /system/app/raShow/raShow.apk |
| 28 | `app/AliSpKey` | `com.alibaba.spkey` | 1.0.01 | C | 0.13 | 0.10 | 0.00 | 0.03 | 2 |  |  |  | /system/app/AliSpKey/AliSpKey.apk |
| 29 | `app/KeyChain` | `com.android.keychain` | 8.1.0 | C | 0.11 | 0.01 | 0.00 | 0.10 | 2 |  |  |  | /system/app/KeyChain/KeyChain.apk |
| 30 | `app/CertInstaller` | `com.android.certinstaller` | 8.1.0 | C | 0.08 | 0.03 | 0.00 | 0.05 | 5 |  |  |  | /system/app/CertInstaller/CertInstaller.apk |
| 31 | `priv-app/FusedLocation` | `com.android.location.fused` | 8.1.0 | C | 0.05 | 0.01 | 0.00 | 0.04 | 1 |  |  |  | /system/priv-app/FusedLocation/FusedLocation.apk |
| 32 | `app/UserDictionaryProvider` | `com.android.providers.userdictionary` | 8.1.0 | C | 0.04 | 0.01 | 0.00 | 0.03 | 1 |  |  |  | /system/app/UserDictionaryProvider/UserDictionaryProvider.apk |
| 33 | `priv-app/AliProvision` | `com.yunos.tv.provision` | 1.2.3 | C | 0.03 | 0.01 | 0.00 | 0.03 | 2 |  |  |  | /system/priv-app/AliProvision/AliProvision.apk |
| 34 | `priv-app/ProxyHandler` | `com.android.proxyhandler` | 8.1.0 | C | 0.03 | 0.01 | 0.00 | 0.03 | 1 |  |  |  | /system/priv-app/ProxyHandler/ProxyHandler.apk |
| 35 | `app/smartapp` | `com.alibaba.ailabs.genie.smartapp` | 8.7.1.18 | D | 87.89 | 24.16 | 35.62 | 28.11 | 171 |  | 216324 |  | /system/app/smartapp/smartapp.apk |
| 36 | `app/webview` | `com.android.webview` | 61.0.3163.98 | D | 52.00 | 49.97 | 0.00 | 2.02 | 24 |  |  |  | /system/app/webview/webview.apk |
| 37 | `app/GenieMonitor` | `com.alibaba.ailabs.ar.monitor` | 2.0.16.5 | D | 47.86 | 33.19 | 14.67 | 0.00 | 9 |  |  |  | /system/app/GenieMonitor/GenieMonitor.apk |
| 38 | `app/GenieLauncher` | `com.alibaba.ailabs.genie.launcher` | 4.3.6.10 | D | 20.48 | 6.65 | 1.29 | 12.54 | 31 |  | 48762 |  | /system/app/GenieLauncher/GenieLauncher.apk |
| 39 | `app/GenieIoT` | `com.alibaba.ailabs.genie.iot` | 2.1.2.0 | D | 16.88 | 12.23 | 4.64 | 0.00 | 27 |  | 22416 |  | /system/app/GenieIoT/GenieIoT.apk |
| 40 | `app/S1Settings` | `com.android.settings` | 4.22.16 | D | 10.08 | 4.48 | 0.99 | 4.61 | 58 |  | 11825 |  | /system/app/S1Settings/S1Settings.apk |
| 41 | `app/AliSystemUI` | `com.android.systemui` | 9.0.04.01 | D | 6.19 | 1.54 | 0.38 | 4.26 | 4 |  | 20828 |  | /system/app/AliSystemUI/AliSystemUI.apk |
| 42 | `app/MtkBluetooth` | `com.android.bluetooth` | 8.1.0 | D | 3.29 | 0.10 | 0.00 | 3.19 | 35 |  | 7979 |  | /system/app/MtkBluetooth/MtkBluetooth.apk |
| 43 | `priv-app/PackageInstaller` | `com.android.packageinstaller` | 8.1.0 | D | 2.63 | 0.71 | 0.00 | 1.92 | 21 |  |  |  | /system/priv-app/PackageInstaller/PackageInstaller.apk |
| 44 | `app/AliGenieService` | `com.aligenie.ags` | 2.5.3 | D | 2.32 | 1.81 | 0.51 | 0.00 | 11 |  | 21599 |  | /system/app/AliGenieService/AliGenieService.apk |
| 45 | `priv-app/ContactsProvider` | `com.android.providers.contacts` | 8.1.0 | D | 0.98 | 0.02 | 0.00 | 0.97 | 10 |  |  |  | /system/priv-app/ContactsProvider/ContactsProvider.apk |
| 46 | `priv-app/SettingsProvider` | `com.android.providers.settings` | 8.1.0 | D | 0.59 | 0.08 | 0.00 | 0.50 | 1 |  |  |  | /system/priv-app/SettingsProvider/SettingsProvider.apk |
| 47 | `priv-app/CalendarProvider` | `com.android.providers.calendar` | 8.1.0 | D | 0.55 | 0.02 | 0.00 | 0.54 | 8 |  |  |  | /system/priv-app/CalendarProvider/CalendarProvider.apk |
| 48 | `priv-app/DownloadProvider` | `com.android.providers.downloads` | 8.1.0 | D | 0.49 | 0.06 | 0.00 | 0.43 | 5 |  |  |  | /system/priv-app/DownloadProvider/DownloadProvider.apk |
| 49 | `priv-app/MtkMediaProvider` | `com.android.providers.media` | 8.1.0 | D | 0.24 | 0.05 | 0.00 | 0.18 | 9 |  |  |  | /system/priv-app/MtkMediaProvider/MtkMediaProvider.apk |
| 50 | `priv-app/Shell` | `com.android.shell` | 8.1.0 | D | 0.21 | 0.02 | 0.00 | 0.19 | 6 |  |  |  | /system/priv-app/Shell/Shell.apk |
| 51 | `priv-app/InputDevices` | `com.android.inputdevices` | 8.1.0 | D | 0.09 | 0.07 | 0.00 | 0.02 | 1 |  |  |  | /system/priv-app/InputDevices/InputDevices.apk |
| 52 | `priv-app/ExternalStorageProvider` | `com.android.externalstorage` | 8.1.0 | D | 0.05 | 0.01 | 0.00 | 0.04 | 3 |  |  |  | /system/priv-app/ExternalStorageProvider/ExternalStorageProvider.apk |
| 53 | `priv-app/DefaultContainerService` | `com.android.defcontainer` | 8.1.0 | D | 0.03 | 0.01 | 0.00 | 0.03 | 1 |  |  |  | /system/priv-app/DefaultContainerService/DefaultContainerService.apk |
| 54 | `priv-app/ExtServices` | `android.ext.services` | 1 | D | 0.03 | 0.01 | 0.00 | 0.03 | 2 |  |  |  | /system/priv-app/ExtServices/ExtServices.apk |
| 55 | `app/ExtShared` | `android.ext.shared` | 1 | D | 0.02 | 0.01 | 0.00 | 0.02 | 0 |  |  |  | /system/app/ExtShared/ExtShared.apk |

> PSS 为空表示快照时刻该包没有进程（未运行）。PSS 单位 KB，来自 `dumpsys meminfo` 的
> `Total PSS by process`，同名包的子进程单独列出时已在此累加（如 smartapp 的 `:core` / `:business`）。
> `com.shere.assistivetouch` 的 `.service` 子进程、`com.dangbei1.tvlauncher` 的 `:xmpushservice` 子进程
> 在快照中单独成行，本表按包名前缀合并。
> 「保护」列标 `受保护` 的 5 行即第 2 节中的系统镜像内受保护 App。

## 5. 体积 TOP 15

| 包 | 类 | 总 MB | APK MB | lib MB | oat MB |
|---|---|---|---|---|---|
| `com.alibaba.ailabs.genie.smartapp` | D | 87.89 | 24.16 | 35.62 | 28.11 |
| `com.alipay.arome.app` | C | 87.18 | 26.16 | 61.01 | 0.00 |
| `com.android.webview` | D | 52.00 | 49.97 | 0.00 | 2.02 |
| `com.alibaba.ailabs.ar.monitor` | D | 47.86 | 33.19 | 14.67 | 0.00 |
| `com.ailabs.youku.iot` | C | 45.06 | 10.98 | 21.28 | 12.80 |
| `com.alibaba.ailabs.genie.launcher` | D | 20.48 | 6.65 | 1.29 | 12.54 |
| `com.alibaba.ailabs.genie.children` | C | 20.14 | 9.97 | 2.76 | 7.40 |
| `com.alibaba.ailabs.genie.aicare` | C | 18.50 | 2.52 | 6.90 | 9.08 |
| `com.alibaba.ailabs.genie.iot` | D | 16.88 | 12.23 | 4.64 | 0.00 |
| `com.alibaba.ailabs.genie.browser` | C | 12.96 | 1.03 | 0.99 | 10.94 |
| `com.topjohnwu.magisk` | C | 10.76 | 10.76 | 0.00 | 0.00 |
| `com.ailabs.emode` | C | 10.64 | 6.11 | 0.00 | 4.53 |
| `com.alibaba.ailabs.genie.albums` | C | 10.56 | 1.01 | 0.00 | 9.54 |
| `com.android.settings` | D | 10.08 | 4.48 | 0.99 | 4.61 |
| `com.alibaba.ailabs.genie.rtc` | C | 9.05 | 9.05 | 0.00 | 0.00 |

体积集中在 6 个包（smartapp 87.89、AMPE 87.18、webview 52.00、GenieMonitor 47.86、AliVideoPlayer 45.06、
GenieLauncher 20.48），合计 340 MB，占分区内 App 体积的 65%。

## 6. 与设备实际安装状态的一致性

- 设备 `pm list packages -s` 共 61 条 = 本表 55 个 App + 3 个框架资源包（`android` → `framework-res.apk`、
  `com.yunos` → `yunos-framework-res.apk`、`com.mediatek` → `framework/mediatek-res/mediatek-res.apk`）
  + `vendor/app` 2 个（`GooglePinyinIME`、`MTKThermalManager`）+ `vendor/overlay` 1 个（`android.auto_generated_rro__`）。
- 设备 `pm list packages -d` 为空 → **当前没有任何包被禁用**，`enabled=0`（默认）状态为 55 个系统包的全部现状。

### 6.1 被 `/data/app` 覆盖的系统包（3 个，rev2 修正）

下表把**系统镜像内的预装文件**与**设备当前实际加载的版本**分开列示。`pm path` 指向 `/data/app` 只说明
“设备上跑的是更新版”，**不代表 system 镜像里没有该 APK**：

| 包名 | 系统内目录 / 版本 | 设备当前加载版本 | 设备 codePath | flags |
|---|---|---|---|---|
| `com.alibaba.ailabs.genie.aicare` | `app/GenieAicare` · **4.0.26** | **4.0.62** | `/data/app/com.alibaba.ailabs.genie.aicare-zsBAkMuEJlOe5ygOiDbDbw==/base.apk` | SYSTEM · UPDATED_SYSTEM_APP |
| `com.alibaba.ailabs.genie.rtc` | `app/GenieRTC` · **4.0.16** | **5.2.78.53746723.dc** | `/data/app/com.alibaba.ailabs.genie.rtc-iD7ciUfp9lpYBtIqAEiqeA==/base.apk` | SYSTEM · UPDATED_SYSTEM_APP |
| `com.topjohnwu.magisk` | `app/magisk.apk` · **25.2** | **27.0** | `/data/app/com.topjohnwu.magisk-EuMSu4VItaK3widDq122zw==/base.apk` | SYSTEM · UPDATED_SYSTEM_APP |

由此带来的三点结论：

1. 本清单统计的 **526.72 MB 是镜像内文件体积**，与设备上实际运行版本的体积无关；
   上表三行在清单里记录的是 18.50 / 9.05 / 10.76 MB（系统内 prebuilt）。
2. **删除系统内 prebuilt 不等于“卸载应用”**：设备仍会加载 `/data/app` 版本，但该包会退化为普通数据区应用
   （失去 `SYSTEM` flag 及其默认权限授予 / 系统签名相关能力）。此后果**未做动态验证**，
   在 `risk_assessment.md` 第 2 节列为高风险项。
3. 若目标是回到“纯原厂版本”，应先 `pm uninstall` 掉数据区更新，再让系统 prebuilt 生效；
   这属于设备操作，本报告不执行。
