# 组件级清单（rev5.3）

范围：rev5.2 里仍可能进入下一阶段验证的候选（儿童模式、相册、小体积候选、B 类剩余），共
**18 个包 / 163 个组件**。六个保护 App 只做识别，不做组件审计。

数据来源：镜像内 APK 的 AXML manifest 静态解析（`raw/manifest_facts.json`）+ 设备 `dumpsys package` 的
`enabled=` 值。Direct Boot / persistent / sharedUid 取 manifest 与 dumpsys 的对应字段；
manifest 未声明的项记 unknown，不推测。

## 汇总

| package | in image | persistent | shared uid | device enabled | components |
|---|---|---|---|---|---|
| `com.alibaba.ailabs.genie.children` | yes | False | android.uid.system | 0 | 29 |
| `com.alibaba.ailabs.genie.albums` | yes | False | android.uid.system | 0 | 7 |
| `com.android.providers.userdictionary` | yes | False | android.uid.shared | 0 | 1 |
| `com.alibaba.spkey` | yes | False | android.uid.system | 0 | 2 |
| `com.alira.info` | yes | False | android.uid.system | 0 | 2 |
| `com.aliyun.uuid` | yes | False | android.uid.system | 0 | 3 |
| `com.yunos.tv.provision` | yes | False | android.uid.system | 0 | 2 |
| `com.ailabs.emode` | yes | False | android.uid.system | 0 | 83 |
| `com.android.statementservice` | yes | False | — | 0 | 2 |
| `com.android.bluetoothmidiservice` | yes | False | — | 0 | 1 |
| `com.android.pacprocessor` | yes | False | — | 0 | 1 |
| `com.android.vpndialogs` | yes | False | — | 0 | 2 |
| `com.android.captiveportallogin` | yes | False | — | 0 | 1 |
| `com.android.companiondevicemanager` | yes | False | — | 0 | 2 |
| `com.android.storagemanager` | yes | False | — | 0 | 5 |
| `com.android.mtp` | yes | False | android.media | 0 | 4 |
| `com.alibaba.ailabs.genie.osupdate` | yes | True | android.uid.system | 0 | 6 |
| `com.alibaba.ailabs.genie.guide` | yes | False | android.uid.system | 0 | 10 |

## 明细

### `com.alibaba.ailabs.genie.children`

persistent=False，sharedUid=android.uid.system，设备 enabled=0，组件数 **29**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `ChildModeSettingActivity` | no | — | VIEW | — |
| activity | `AppSettingActivity` | no | — | VIEW | — |
| activity | `ForbiddenTimeAddActivity` | no | — | VIEW | — |
| activity | `EyeyieldSettingActivity` | no | — | VIEW | — |
| activity | `AddTimeActivity` | no | — | — | — |
| activity | `GenieTimePickerActivity` | no | — | VIEW | — |
| activity | `WarningActivity` | no | — | VIEW | — |
| activity | `PermissionActivity` | no | — | — | — |
| activity | `FreedomSecondPageActivity` | no | — | VIEW, VIEW | — |
| activity | `BuyMirrorActivity` | no | — | VIEW | — |
| activity | `ChildrenAppListActivity` | no | — | — | — |
| activity | `ChildrenHomeActivity` | no | — | MAIN | — |
| activity | `VideoActivity` | no | — | VIEW | — |
| activity | `ChildInfoInputActivity` | no | — | VIEW | — |
| activity | `ChildModeCollectionAcitivity` | no | — | VIEW | — |
| activity | `FeedBackActivity` | no | — | — | — |
| activity | `StatementActivity` | no | — | VIEW | — |
| activity | `HomeActivity` | no | — | MAIN, VIEW | — |
| activity | `ChildGeneralSecondPageActivity` | no | — | VIEW, VIEW | — |
| activity | `MediaListActivity` | no | — | VIEW | — |
| service | `JobWakeUpService` | yes | android.permission.BIND_JOB_SERVICE | — | — |
| service | `ScheduleJobService` | no | — | SCHEDULE_JOB | — |
| service | `DataCenterService` | yes | — | — | — |
| service | `LogService` | yes | — | action, upload | — |
| service | `AnalyticsService` | no | — | — | — |
| service | `TimerService` | yes | android.permission.BIND_JOB_SERVICE | — | — |
| service | `MultiInstanceInvalidationService` | no | — | — | — |
| receiver | `DataCenterReceiver` | no | com.alibaba.ailabs.genie.datacenter.permission | — | — |
| provider | `ProcessLifecycleOwnerInitializer` | no | — | — | com.alibaba.ailabs.genie.children.lifecycle-trojan |

### `com.alibaba.ailabs.genie.albums`

persistent=False，sharedUid=android.uid.system，设备 enabled=0，组件数 **7**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `MainActivity` | no | — | MAIN, VIEW | — |
| activity | `ImageBrowseActivity` | no | — | — | — |
| activity | `BannerAnimationActivity` | no | — | — | — |
| service | `CmdDispatchService` | no | — | VIEW, VIEW | — |
| service | `AnalyticsService` | no | — | — | — |
| provider | `AlbumContentProvider` | yes | — | — | com.tld.albumprovider |
| provider | `ProcessLifecycleOwnerInitializer` | no | — | — | com.alibaba.ailabs.genie.albums.lifecycle-trojan |

### `com.android.providers.userdictionary`

persistent=False，sharedUid=android.uid.shared，设备 enabled=0，组件数 **1**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| provider | `UserDictionaryProvider` | yes | — | — | user_dictionary |

### `com.alibaba.spkey`

persistent=False，sharedUid=android.uid.system，设备 enabled=0，组件数 **2**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `MainActivity` | no | — | MAIN | — |
| service | `SpService` | yes | — | SpService | — |

### `com.alira.info`

persistent=False，sharedUid=android.uid.system，设备 enabled=0，组件数 **2**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| service | `raService` | no | — | raService | — |
| receiver | `DreamerReceiver` | no | — | dream | — |

### `com.aliyun.uuid`

persistent=False，sharedUid=android.uid.system，设备 enabled=0，组件数 **3**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `UUIDActivity` | no | — | MAIN | — |
| service | `RegistUUIDService` | no | — | REGIST_UUID_SERVICE | — |
| receiver | `RegistUUIDReceiver` | no | — | BOOT_COMPLETED, TEST_BOOT_COMPLETED | — |

### `com.yunos.tv.provision`

persistent=False，sharedUid=android.uid.system，设备 enabled=0，组件数 **2**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `DefaultActivity` | no | — | MAIN | — |
| activity | `DevicePassport` | no | — | MAIN, clearance | — |

### `com.ailabs.emode`

persistent=False，sharedUid=android.uid.system，设备 enabled=0，组件数 **83**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `BaseActivity` | no | — | — | — |
| activity | `EmodeSubmenu` | no | — | — | — |
| activity | `BoardMMI` | no | — | — | — |
| activity | `AutoDetect` | no | — | — | — |
| activity | `VibratorBacklightTest` | no | android.permission.CALL_PRIVILEGED | — | — |
| activity | `VibratorTest` | no | — | — | — |
| activity | `BacklightTest` | no | — | — | — |
| activity | `BTTest` | no | — | — | — |
| activity | `LCDTest` | no | — | — | — |
| activity | `VersionInfo` | no | — | — | — |
| activity | `GPSTest` | no | — | — | — |
| activity | `TouchScreenTest` | no | — | — | — |
| activity | `IMEI` | no | — | — | — |
| activity | `GSensorCalibration` | no | — | SENSOR_CALI | — |
| activity | `QrCodeProduct` | no | — | — | — |
| activity | `WriteProductCode` | no | — | — | — |
| activity | `MonkeyTestConfig` | no | — | — | — |
| activity | `IMSI` | no | — | — | — |
| activity | `KeyTest` | no | — | — | — |
| activity | `MemoryTest` | no | — | — | — |
| activity | `LedTest` | no | — | — | — |
| activity | `WifiTest` | no | — | — | — |
| activity | `TpFactoryTest` | no | — | — | — |
| activity | `TpActivity1` | no | — | — | — |
| activity | `TpActivity2` | no | — | — | — |
| activity | `TpActivityX` | no | — | — | — |
| activity | `Root` | no | — | — | — |
| activity | `MainActivity` | no | — | test1, MAIN | — |
| activity | `DtvModuleTest` | no | — | — | — |
| activity | `BackMainCameraActivity` | yes | — | — | — |
| activity | `BackSubCameraActivity` | yes | — | — | — |
| activity | `FrontCameraActivity` | yes | — | — | — |
| activity | `MSensorTest` | no | — | — | — |
| activity | `SensorAllTest` | no | — | — | — |
| activity | `GSensorTest` | no | — | — | — |
| activity | `FlashTest` | no | — | — | — |
| activity | `ProximitySensorTest` | no | — | — | — |
| activity | `HeadsetAndAudioLoopTest` | no | — | — | — |
| activity | `HeadsetHookKeyTest` | no | — | — | — |
| activity | `CustomVersionInfos` | no | — | — | — |
| activity | `SDRingTest` | no | — | — | — |
| activity | `LightSensorTest` | no | — | — | — |
| activity | `OtgTest` | no | — | — | — |
| activity | `RingTest` | no | — | — | — |
| activity | `HardwareVersion` | no | — | — | — |
| activity | `HardwareInfo` | no | — | — | — |
| activity | `KeepScreenOn` | no | — | — | — |
| activity | `UAProfile` | no | — | — | — |
| activity | `PhaseCheck` | no | — | — | — |
| activity | `GyroscopeSensorTest` | no | — | — | — |
| activity | `HallSensorTest` | no | — | — | — |
| activity | `ReceiverRingTest` | no | — | — | — |
| activity | `ProximitySensorSwitch` | no | — | — | — |
| activity | `ProximitySensorStressTest` | no | — | — | — |
| activity | `BackTouchPanelTest` | no | — | — | — |
| activity | `MicRecStressTest` | no | — | — | — |
| activity | `BatteryCheck` | no | — | — | — |
| activity | `VibratorStressTest` | no | — | — | — |
| activity | `MasterClean` | no | — | — | — |
| activity | `VideoTest` | no | — | — | — |
| activity | `BatteryTest` | no | — | — | — |
| activity | `FrontCameraTest` | no | — | — | — |
| activity | `BackMainCameraTest` | no | — | — | — |
| activity | `BackSubCameraTest` | no | — | — | — |
| activity | `SalesCountStatus` | no | — | — | — |
| activity | `FingerPrintTest` | no | — | FINGER_TEST | — |
| activity | `BackCameraTest` | no | — | — | — |
| activity | `FrontCameraTest2` | no | — | — | — |
| activity | `AutoTpTest` | no | — | TP_TEST | — |
| activity | `SarSensorTest` | no | — | — | — |
| activity | `LightLeak` | no | — | — | — |
| activity | `TesterLcd` | no | — | — | — |
| activity | `TesterCamera` | no | — | — | — |
| service | `EmodeIntentService` | yes | — | EMODE_RESTORE_WIFI, EMODE_RESTORE_BT | — |
| service | `EmptyForegroundService` | no | — | — | — |
| service | `EmodeService` | yes | — | IEmodeService | — |
| service | `OtherItemTestService` | yes | — | MAIN | — |
| service | `Helper` | yes | — | MAIN | — |
| service | `AudioTestSerivce` | no | — | — | — |
| service | `BurninService` | no | — | start, resume | — |
| receiver | `MatchingReceiver` | no | — | FACTORY_FUNC, EMODE | — |
| receiver | `AudioTestReciver` | no | — | audiotest | — |
| provider | `FileProvider` | no | — | — | com.ailabs.emode.files |

### `com.android.statementservice`

persistent=False，sharedUid=—，设备 enabled=0，组件数 **2**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| service | `DirectStatementService` | no | — | CHECK_ACTION | — |
| receiver | `IntentFilterVerificationReceiver` | no | android.permission.BIND_INTENT_FILTER_VERIFIER | INTENT_FILTER_NEEDS_VERIFICATION | — |

### `com.android.bluetoothmidiservice`

persistent=False，sharedUid=—，设备 enabled=0，组件数 **1**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| service | `BluetoothMidiService` | no | android.permission.BIND_MIDI_DEVICE_SERVICE | BluetoothMidiService | — |

### `com.android.pacprocessor`

persistent=False，sharedUid=—，设备 enabled=0，组件数 **1**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| service | `PacService` | yes | — | — | — |

### `com.android.vpndialogs`

persistent=False，sharedUid=—，设备 enabled=0，组件数 **2**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `ConfirmDialog` | no | — | MAIN | — |
| activity | `ManageDialog` | no | — | MAIN | — |

### `com.android.captiveportallogin`

persistent=False，sharedUid=—，设备 enabled=0，组件数 **1**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `CaptivePortalLoginActivity` | no | — | CAPTIVE_PORTAL | — |

### `com.android.companiondevicemanager`

persistent=False，sharedUid=—，设备 enabled=0，组件数 **2**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `DeviceChooserActivity` | no | android.permission.BIND_COMPANION_DEVICE_MANAGER_SERVICE | START_DISCOVERY | — |
| service | `DeviceDiscoveryService` | yes | android.permission.BIND_COMPANION_DEVICE_MANAGER_SERVICE | — | — |

### `com.android.storagemanager`

persistent=False，sharedUid=—，设备 enabled=0，组件数 **5**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `DeletionHelperActivity` | no | — | MANAGE_STORAGE | — |
| activity | `WarningDialogActivity` | no | — | — | — |
| service | `AutomaticStorageManagementJobService` | no | android.permission.BIND_JOB_SERVICE | — | — |
| receiver | `AutomaticStorageBroadcastReceiver` | no | — | BOOT_COMPLETED | — |
| receiver | `NotificationController` | no | — | DISMISS, ACTIVATE | — |

### `com.android.mtp`

persistent=False，sharedUid=android.media，设备 enabled=0，组件数 **4**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `ReceiverActivity` | no | — | USB_DEVICE_ATTACHED | — |
| service | `MtpDocumentsService` | no | — | — | — |
| receiver | `UsbIntentReceiver` | yes | — | USB_DEVICE_ATTACHED, USB_DEVICE_DETACHED | — |
| provider | `MtpDocumentsProvider` | yes | android.permission.MANAGE_DOCUMENTS | DOCUMENTS_PROVIDER | com.android.mtp.documents |

### `com.alibaba.ailabs.genie.osupdate`

persistent=True，sharedUid=android.uid.system，设备 enabled=0，组件数 **6**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `UpdateActivity` | no | — | VIEW, MAIN | — |
| activity | `RebootUpdateActivity` | no | — | MAIN | — |
| activity | `TestActivity` | no | — | — | — |
| service | `UpdateService` | yes | com.alibaba.ailabs.genie.osupdate.UPDATE_SERVICE | IUpdateService | — |
| receiver | `UpdateBroadcastReceiver` | yes | — | BOOT_COMPLETED, FOTA_UPDATE | — |
| provider | `AppConfigInfoProvider` | yes | — | — | com.alibaba.ailabs.genie.osupdate.AppConfigInfoProvider |

### `com.alibaba.ailabs.genie.guide`

persistent=False，sharedUid=android.uid.system，设备 enabled=0，组件数 **10**

| kind | name | exported | permission | actions（前 2） | authorities |
|---|---|---|---|---|---|
| activity | `WelcomeActivity` | no | — | MAIN | — |
| activity | `ContractActivity` | no | — | WEB_VIEW | — |
| activity | `BindAccountActivity` | no | — | — | — |
| activity | `VideoActivity` | no | — | VIEW | — |
| activity | `WifiListActivity` | no | — | — | — |
| activity | `InputPasswordActivity` | no | — | — | — |
| activity | `AddNetWorkActivity` | no | — | — | — |
| activity | `WVWebViewActivity` | no | — | VIEW | — |
| service | `AnalyticsService` | no | — | — | — |
| provider | `SecondInstaller` | no | — | — | com.alibaba.ailabs.genie.guide.ipc.second.server |


## 未取到的字段（明确 unknown）

1. **每个组件的运行时 enabled 状态**：`dumpsys package` 只给包级 `enabled=`，组件级需要
   `dumpsys package <pkg> | grep -A` 逐条解析，本轮未做，全部 unknown。
2. **directBootAware**：AXML 里多数组件未显式声明，按“未声明”处理，不等于 false。
3. **签名信息**：只确认 `apkSigningVersion`（设备上 v2），未验证是否平台签名；特权权限以
   `/system/priv-app` 路径为准。
