# 系统包清单（rev5.3 基线）

采集方式：`adb shell pm list packages -f -i -U` / `-s` / `-3` / `-d`、`pm list users`、`dumpsys package <pkg>`、
`ls -l <apk>`、`du -sk <dir>`，全部只读。原始输出见 `raw/`。

| 计数 | 值 |
|---|---|
| 已安装包总数 | **68** |
| 系统包（`-s`） | **61** |
| 特权包（/system/priv-app） | **18** |
| 第三方包（`-3`） | **7** |
| 已禁用包（`-d`） | **0** |
| 在 system 镜像 inventory 中 | **55** |
| 用户 | Users:
	UserInfo{0:机主:13} running |

口径说明：

- **`apk_size` 与 `directory_size` 分开记录**：`apk_size` 是 base.apk 文件大小；`directory_size` 是安装目录
  `du -sk` 结果（含 lib/oat），裸 APK 直接放在 `/system/app/` 或 `/system/priv-app/` 时目录大小等于 APK 大小。
- `/data/app` 目录对 shell 不可 `du`，这些包的 `directory_size` 为 `null`（json 里是 null，不是 0）。
- `label` 全部为 **unknown**：Android 8.1 的 `dumpsys package` 不返回 label，本轮没有解析 `resources.arsc`。
  桌面名称映射另见 `../desktop_app_audit.md`（有卡片/组件证据的才写名称）。
- `enabled_state` 来自 `dumpsys package` 的 `User 0: … enabled=N`：0=DEFAULT、1=ENABLED、2=DISABLED、
  3=DISABLED_USER、4=DISABLED_UNTIL_USED。
- 更新到 `/data/app` 的系统应用 `is_system=no`（如 `com.alibaba.ailabs.genie.cook`、`cn.cmvideo.car.play`），
  **它们不占 system 分区空间**。

## 全部 68 个包

| package | system | privileged | code_path | version | code | uid | installer | enabled | apk MB | dir MB | shared uid | splits | protected |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `android` | yes | no | /system/framework/framework-res.apk | 8.1.0 | 27 | 1000 | null | DEFAULT | 8.52 | 94.27 | android.uid.system | base |  |
| `android.auto_generated_rro__` | yes | no | /vendor/overlay/framework-res__auto_generated_rro.apk | 1.0 | 1 | 10000 | null | DEFAULT | 1.38 | 1.38 | — | base |  |
| `android.ext.services` | yes | yes | /system/priv-app/ExtServices/ExtServices.apk | 1 | 1 | 10005 | null | DEFAULT | 0.01 | 0.05 | — | base |  |
| `android.ext.shared` | yes | no | /system/app/ExtShared/ExtShared.apk | 1 | 1 | 10018 | null | DEFAULT | 0.01 | 0.04 | — | base |  |
| `com.ailabs.emode` | yes | no | /system/app/Emode/Emode.apk | 1.0.30 | 2100100030 | 1000 | null | DEFAULT | 6.11 | 10.65 | android.uid.system | base |  |
| `com.ailabs.youku.iot` | yes | no | /system/app/AliVideoPlayer/AliVideoPlayer.apk | 2.0.2.165 | 2120202165 | 10014 | null | DEFAULT | 10.98 | 45.14 | — | base |  |
| `com.alibaba.ailabs.ar.monitor` | yes | no | /system/app/GenieMonitor/GenieMonitor.apk | 2.0.16.5 | 210036005 | 10023 | null | DEFAULT | 33.19 | 47.90 | — | base |  |
| `com.alibaba.ailabs.genie.aicare` | yes | no | /data/app/com.alibaba.ailabs.genie.aicare-zsBAkMuEJlOe5ygOiDbDbw==/base.apk | 4.0.62 | 2100146200 | 10021 | com.alibaba.ailabs.genie.aicare | ENABLED | 10.84 | 18.81 | — | base |  |
| `com.alibaba.ailabs.genie.albums` | yes | no | /system/app/GenieAlbums/GenieAlbums.apk | 1.4.14 | 2100104014 | 1000 | null | DEFAULT | 1.01 | 10.57 | android.uid.system | base |  |
| `com.alibaba.ailabs.genie.browser` | yes | no | /system/app/GenieBrowser/GenieBrowser.apk | 1.0.0.19 | 210101019 | 10022 | null | DEFAULT | 1.03 | 12.99 | — | base |  |
| `com.alibaba.ailabs.genie.children` | yes | no | /system/app/GenieChildren/GenieChildren.apk | 5.11.0.19 | 2101511019 | 1000 | null | DEFAULT | 9.97 | 20.18 | android.uid.system | base |  |
| `com.alibaba.ailabs.genie.guide` | yes | no | /system/app/Guide/Guide.apk | 1.1.0.118 | 118 | 1000 | null | DEFAULT | 4.67 | 5.45 | android.uid.system | base |  |
| `com.alibaba.ailabs.genie.iot` | yes | no | /system/app/GenieIoT/GenieIoT.apk | 2.1.2.0 | 2100402120 | 1000 | null | DEFAULT | 12.23 | 16.92 | android.uid.system | base |  |
| `com.alibaba.ailabs.genie.launcher` | yes | no | /system/app/GenieLauncher/GenieLauncher.apk | 4.3.6.10 | 2101430610 | 10024 | null | DEFAULT | 6.65 | 20.52 | — | base |  |
| `com.alibaba.ailabs.genie.osupdate` | yes | no | /system/app/Osupdate/Osupdate.apk | 9.0.1.0 | 2100900010 | 1000 | null | DEFAULT | 1.98 | 5.48 | android.uid.system | base |  |
| `com.alibaba.ailabs.genie.rtc` | yes | no | /data/app/com.alibaba.ailabs.genie.rtc-iD7ciUfp9lpYBtIqAEiqeA==/base.apk | 5.2.78.53746723.dc | 2110502078 | 1000 | com.alibaba.ailabs.genie.rtc | ENABLED | 34.66 | 90.70 | android.uid.system | base |  |
| `com.alibaba.ailabs.genie.screensaver` | yes | no | /system/app/GenieScreensaver/GenieScreensaver.apk | 2.6.18 | 2101020618 | 10025 | null | DEFAULT | 6.02 | 6.69 | — | base |  |
| `com.alibaba.ailabs.genie.smartapp` | yes | no | /system/app/smartapp/smartapp.apk | 8.7.1.18 | 2102087118 | 1000 | null | DEFAULT | 24.16 | 88.10 | android.uid.system | base |  |
| `com.alibaba.genie.waft` | yes | no | /system/app/Waft/Waft.apk | 1.3.231.15321244 | 231 | 10027 | null | DEFAULT | 0.18 | 5.60 | — | base |  |
| `com.alibaba.spkey` | yes | no | /system/app/AliSpKey/AliSpKey.apk | 1.0.01 | 2100100001 | 1000 | null | DEFAULT | 0.10 | 0.14 | android.uid.system | base |  |
| `com.aligenie.ags` | yes | no | /system/app/AliGenieService/AliGenieService.apk | 2.5.3 | 253 | 1000 | null | DEFAULT | 1.81 | 2.34 | android.uid.system | base |  |
| `com.alipay.arome.app` | yes | no | /system/app/AMPE/AMPE.apk | 10.2.3.1775 | 517 | 10019 | null | DEFAULT | 26.16 | 87.46 | — | base |  |
| `com.alira.info` | yes | no | /system/app/raShow/raShow.apk | 1.10 | 10 | 1000 | null | DEFAULT | 0.01 | 0.81 | android.uid.system | base |  |
| `com.aliyun.uuid` | yes | no | /system/app/UUID/UUID.apk | 3.3.2 | 2100300302 | 1000 | null | DEFAULT | 0.53 | 2.75 | android.uid.system | base |  |
| `com.android.bluetooth` | yes | no | /system/app/MtkBluetooth/MtkBluetooth.apk | 8.1.0 | 27 | 1002 | null | DEFAULT | 0.10 | 3.32 | android.uid.bluetooth | base |  |
| `com.android.bluetoothmidiservice` | yes | no | /system/app/BluetoothMidiService/BluetoothMidiService.apk | 8.1.0 | 27 | 10013 | null | DEFAULT | 0.01 | 0.06 | — | base |  |
| `com.android.captiveportallogin` | yes | no | /system/app/CaptivePortalLogin/CaptivePortalLogin.apk | 8.1.0 | 27 | 10015 | null | DEFAULT | 0.01 | 0.07 | — | base |  |
| `com.android.certinstaller` | yes | no | /system/app/CertInstaller/CertInstaller.apk | 8.1.0 | 27 | 10016 | null | DEFAULT | 0.03 | 0.10 | — | base |  |
| `com.android.companiondevicemanager` | yes | no | /system/app/CompanionDeviceManager/CompanionDeviceManager.apk | 8.1.0 | 27 | 10017 | null | DEFAULT | 0.01 | 0.07 | — | base |  |
| `com.android.defcontainer` | yes | yes | /system/priv-app/DefaultContainerService/DefaultContainerService.apk | 8.1.0 | 27 | 10001 | null | DEFAULT | 0.01 | 0.06 | — | base |  |
| `com.android.externalstorage` | yes | yes | /system/priv-app/ExternalStorageProvider/ExternalStorageProvider.apk | 8.1.0 | 27 | 10006 | null | DEFAULT | 0.01 | 0.07 | — | base |  |
| `com.android.inputdevices` | yes | yes | /system/priv-app/InputDevices/InputDevices.apk | 8.1.0 | 27 | 1000 | null | DEFAULT | 0.07 | 0.11 | android.uid.system | base |  |
| `com.android.keychain` | yes | no | /system/app/KeyChain/KeyChain.apk | 8.1.0 | 27 | 1000 | null | DEFAULT | 0.01 | 0.13 | android.uid.system | base |  |
| `com.android.location.fused` | yes | yes | /system/priv-app/FusedLocation/FusedLocation.apk | 8.1.0 | 27 | 1000 | null | DEFAULT | 0.01 | 0.07 | android.uid.system | base |  |
| `com.android.mtp` | yes | yes | /system/priv-app/MtpDocumentsProvider/MtpDocumentsProvider.apk | 8.1.0 | 27 | 10004 | null | DEFAULT | 0.05 | 0.15 | android.media | base |  |
| `com.android.packageinstaller` | yes | yes | /system/priv-app/PackageInstaller/PackageInstaller.apk | 8.1.0 | 27 | 10009 | null | DEFAULT | 0.71 | 2.65 | — | base |  |
| `com.android.pacprocessor` | yes | no | /system/app/PacProcessor/PacProcessor.apk | 8.1.0 | 27 | 10026 | null | DEFAULT | 0.01 | 0.06 | — | base |  |
| `com.android.providers.calendar` | yes | yes | /system/priv-app/CalendarProvider/CalendarProvider.apk | 8.1.0 | 27 | 10002 | null | DEFAULT | 0.02 | 0.57 | android.uid.calendar | base |  |
| `com.android.providers.contacts` | yes | yes | /system/priv-app/ContactsProvider/ContactsProvider.apk | 8.1.0 | 27 | 10003 | null | DEFAULT | 0.02 | 1.00 | android.uid.shared | base |  |
| `com.android.providers.downloads` | yes | yes | /system/priv-app/DownloadProvider/DownloadProvider.apk | 8.1.0 | 27 | 10004 | null | DEFAULT | 0.06 | 0.50 | android.media | base |  |
| `com.android.providers.media` | yes | yes | /system/priv-app/MtkMediaProvider/MtkMediaProvider.apk | 8.1.0 | 803 | 10004 | null | DEFAULT | 0.05 | 0.26 | android.media | base |  |
| `com.android.providers.settings` | yes | yes | /system/priv-app/SettingsProvider/SettingsProvider.apk | 8.1.0 | 27 | 1000 | null | DEFAULT | 0.08 | 0.60 | android.uid.system | base |  |
| `com.android.providers.userdictionary` | yes | no | /system/app/UserDictionaryProvider/UserDictionaryProvider.apk | 8.1.0 | 27 | 10003 | null | DEFAULT | 0.01 | 0.05 | android.uid.shared | base |  |
| `com.android.proxyhandler` | yes | yes | /system/priv-app/ProxyHandler/ProxyHandler.apk | 8.1.0 | 27 | 10007 | null | DEFAULT | 0.01 | 0.05 | — | base |  |
| `com.android.settings` | yes | no | /system/app/S1Settings/S1Settings.apk | 4.22.16 | 2100422016 | 1000 | null | DEFAULT | 4.48 | 10.11 | android.uid.system | base |  |
| `com.android.shell` | yes | yes | /system/priv-app/Shell/Shell.apk | 8.1.0 | 27 | 2000 | null | DEFAULT | 0.02 | 0.22 | android.uid.shell | base |  |
| `com.android.statementservice` | yes | yes | /system/priv-app/StatementService/StatementService.apk | 1.0 | 1 | 10008 | null | DEFAULT | 0.01 | 0.10 | — | base |  |
| `com.android.storagemanager` | yes | yes | /system/priv-app/StorageManager/StorageManager.apk | 8.1.0 | 27 | 10011 | null | DEFAULT | 0.66 | 2.34 | — | base |  |
| `com.android.systemui` | yes | no | /system/app/AliSystemUI/AliSystemUI.apk | 9.0.04.01 | 900401 | 10012 | null | DEFAULT | 1.54 | 6.22 | android.uid.systemui | base |  |
| `com.android.vpndialogs` | yes | yes | /system/priv-app/VpnDialogs/VpnDialogs.apk | 8.1.0 | 27 | 10010 | null | DEFAULT | 0.01 | 0.05 | — | base |  |
| `com.android.webview` | yes | no | /system/app/webview/webview.apk | 61.0.3163.98 | 316409800 | 10028 | null | DEFAULT | 49.97 | 52.02 | — | base |  |
| `com.dangbei1.tvlauncher` | yes | no | /system/app/dangbei.apk | 3.3.6 | 83 | 10039 | null | DEFAULT | 8.77 | 8.77 | — | base | 当贝桌面 |
| `com.estrongs.android.pop` | yes | no | /system/app/ES.apk | 3.2.5.5 | 999999999 | 10038 | null | DEFAULT | 4.60 | 4.60 | — | base | ES 文件管理器 |
| `com.google.android.inputmethod.pinyin` | yes | no | /vendor/app/GooglePinyinIME/GooglePinyinIME.apk | 4.5.1.164561151-armeabi-v7a | 4511412 | 10030 | null | DEFAULT | 24.80 | 24.80 | — | base |  |
| `com.mediatek` | yes | no | /system/framework/mediatek-res/mediatek-res.apk | 8.1.0 | 27 | 1000 | null | DEFAULT | 0.79 | 0.80 | android.uid.system | base |  |
| `com.mediatek.thermalmanager` | yes | no | /vendor/app/MTKThermalManager/MTKThermalManager.apk | 1.0 | 1 | 1000 | null | DEFAULT | 0.03 | 0.03 | android.uid.system | base |  |
| `com.shere.assistivetouch` | yes | no | /system/app/easytouch.apk | 4.6.1 | 4060100 | 10040 | null | DEFAULT | 4.38 | 4.38 | — | base | EasyTouch |
| `com.topjohnwu.magisk` | yes | no | /data/app/com.topjohnwu.magisk-EuMSu4VItaK3widDq122zw==/base.apk | 27.0 | 27000 | 10041 | com.android.packageinstaller | DEFAULT | 11.92 | 14.55 | — | base | Magisk |
| `com.web1n.permissiondog` | yes | no | /system/app/qxg.apk | 0.1.0.45 | 71 | 10042 | null | DEFAULT | 1.37 | 1.37 | — | base | 权限狗 |
| `com.yunos` | yes | no | /system/framework/yunos-framework-res.apk | 1.0 | 1 | 1000 | null | DEFAULT | 0.58 | 94.27 | android.uid.system | base |  |
| `com.yunos.tv.provision` | yes | yes | /system/priv-app/AliProvision/AliProvision.apk | 1.2.3 | 2100100203 | 1000 | null | DEFAULT | 0.01 | 0.05 | android.uid.system | base |  |
| `bin.mt.plus` | no | no | /data/app/bin.mt.plus-xXCsOzsoTVa2gpDlsM2gnw==/base.apk | 2.10.1 | 22011900 | 10029 | com.android.packageinstaller | DEFAULT | 16.44 | 19.83 | — | base | MT 管理器 |
| `cn.cmvideo.car.play` | no | no | /data/app/cn.cmvideo.car.play-ykAZIDU3kgd3zxegEua-EQ==/base.apk | v3.1.9.7 | 3197 | 10051 | cn.cmvideo.car.play | DEFAULT | 25.35 | 38.42 | — | base |  |
| `com.alibaba.ailabs.genie.camera` | no | no | /data/app/com.alibaba.ailabs.genie.camera-UeTOZTBElqLiL9Nv3eKTVg==/base.apk | 1.0.93 | 2100103093 | 1000 | what is use for ? | DEFAULT | 5.49 | 6.95 | android.uid.system | base |  |
| `com.alibaba.ailabs.genie.cook` | no | no | /data/app/com.alibaba.ailabs.genie.cook-Y0W26Dha2xaf2E1WkY6NpA==/base.apk | 3.0.6 | 2100300006 | 10048 | what is use for ? | DEFAULT | 7.18 | 14.98 | — | base |  |
| `com.alibaba.ailabs.genie.intermediary` | no | no | /data/app/com.alibaba.ailabs.genie.intermediary-8l6RlrQNzUbivvclgDAAMg==/base.apk | 0.0.35 | 35 | 10031 | com.alibaba.ailabs.genie.intermediary | DEFAULT | 1.61 | 1.62 | — | base |  |
| `com.anthouse.ayland` | no | no | /data/app/com.anthouse.ayland-mmfjTZvgvnogpqrtY4Avrg==/base.apk | 1.0.39 | 39 | 10052 | what is use for ? | DEFAULT | 77.78 | 149.31 | — | base |  |
| `com.ktcp.aiagent` | no | no | /data/app/com.ktcp.aiagent-AACVSOzu0sDnDeil4pnfZA==/base.apk | 2.6.0.100 | 2605 | 10035 | com.ktcp.aiagent | DEFAULT | 4.01 | 5.37 | com.ktcp.aiagent | base |  |

## 分区归属与空间口径

| 类别 | 计数 | 是否计入 system 可回收空间 |
|---|---|---|
| `/system/app` + `/system/priv-app` | 58 | 是（需删目录，不是禁用） |
| `/vendor`（含 overlay/framework 同名包） | 3 | 否（vendor 分区） |
| `/data/app`（含系统应用的更新版） | 10 | 否（数据分区） |

## 未知项（明确标记）

1. 所有 `label`：unknown（缺 `resources.arsc` 解析）。
2. `/data/app` 各包的 `directory_size`：unknown（shell 无权限 `du`）。
3. `com.anthouse.ayland` 的 `installer` 字段字面值是 `what is use for ?`——这是设备上真实存在的安装来源字符串，
   不是解析错误；其真实来源 unknown。
