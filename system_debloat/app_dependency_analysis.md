# 依赖关系分析

## 1. 依赖模型

分析把“依赖”拆成 6 类，分别取证，避免把“名字像”当成“有依赖”：

| 依赖类型 | 判定依据 | 危害（若删除） | 证据等级上限 |
|---|---|---|---|
| 静态库依赖 | APK 内置 `lib/<abi>/*.so` 被自身 JNI 加载；或代码引用系统 `lib/*.so` | 自身崩溃（`UnsatisfiedLinkError`） | 已验证 |
| framework 依赖 | 包名 / 组件出现在 `framework/arm/*.vdex`、`oat/arm/services.vdex` 字符串中 | 系统服务调用失败、开机异常 | 较可信 |
| Provider 依赖 | 别的包字符串里出现本包 `authorities` | 跨进程查询返回 null / 抛异常 | 较可信 |
| 显式组件依赖 | 别的包字符串里出现本包组件全限定名，且该包自身不含该类的 `L…;` 描述符（非 SDK 打包） | `ActivityNotFound` / `ClassNotFound` | 较可信 |
| 隐式 intent 依赖 | 别的包含本包声明的**私有 action**（非 `android.*`，且只被本包声明） | 功能静默失效（无异常，最难发现） | 较可信 |
| 共享 uid 依赖 | `sharedUserId=android.uid.system` 等，共享进程/权限域 | 权限被回收、跨包 Binder 调用失败 | 已验证 |

## 2. 降噪规则（为什么表里的数字比“字符串命中”少很多）

1. **平台 intent 剔除**：`android.intent.action.*`、`android.net.*` 等由 framework 定义，几乎每个 APK 的
   intent-filter 里都有，命中它不代表应用间依赖。
2. **vendored SDK 剔除**：若源包自身的字符串里存在目标组件的类型描述符 `L<包/类>;`，说明该类被**复制打包**进源包
   （典型：小米推送、淘宝 accs、agoo、GMS、mtopsdk、UC 内核），不算对目标 APK 的依赖。
   未加这条过滤时，`dangbei.apk` 会凭空得到 21 条“入向引用”，全部来自 AMPE/AliSystemUI/AliVideoPlayer 里的
   推送 SDK 副本。
3. **多 owner 剔除**：同一 action / 组件被 ≥2 个包声明 → 归入 *ambiguous*，不作为任何单包的依赖证据。
4. **短名剔除**：只保留至少 3 段的全限定组件名（否则 `BaseActivity`、`Helper` 这种类名会在全盘命中）。
5. **未知命名空间单列**：`com.talkingdata.*`、`com.umeng.*` 等统计 SDK 的 action 单列为噪声。

## 3. 跨包显式引用（应用级，已降噪）

仅列出降噪后仍有应用级入向引用的目标包；`源包` 为字符串中出现证据的一方。

| 目标包 | 源包 | 证据数 | 样例 token |
|---|---|---|---|
| `com.alipay.arome.app` | `com.alibaba.ailabs.genie.smartapp` | 4 | component:com.alibaba.ailabs.genie.webapps.app.GwaReceiv<br>action:com.alibaba.ailabs.genie.ampe.LOGOUT<br>action:com.alibaba.ailabs.genie.webapps.START |
| `com.alipay.arome.app` | `com.alibaba.ailabs.genie.guide` | 3 | component:com.alibaba.ailabs.genie.webapps.app.GwaReceiv<br>action:com.alibaba.ailabs.genie.webapps.START<br>action:com.alibaba.ailabs.genie.webapps.INIT |
| `com.alipay.arome.app` | `com.alibaba.ailabs.genie.aicare` | 1 | action:com.alibaba.ailabs.genie.webapps.INIT |
| `com.alipay.arome.app` | `com.alibaba.ailabs.genie.browser` | 1 | action:com.alibaba.ailabs.genie.webapps.INIT |
| `com.alipay.arome.app` | `com.alibaba.ailabs.genie.iot` | 1 | action:com.alibaba.ailabs.genie.webapps.INIT |
| `com.alipay.arome.app` | `com.alibaba.ailabs.genie.launcher` | 1 | action:com.alibaba.ailabs.genie.webapps.INIT |
| `com.alipay.arome.app` | `com.alibaba.ailabs.genie.rtc` | 1 | component:com.alibaba.ailabs.genie.webapps.game.H5GameAc |
| `com.aligenie.ags` | `com.android.systemui` | 2 | authority:com.aligenie.ic.icProvider<br>action:ACTION_SCREEN_SAVER |
| `com.aligenie.ags` | `com.alibaba.ailabs.genie.smartapp` | 2 | authority:com.aligenie.ic.icProvider<br>action:ACTION_SCREEN_SAVER |
| `com.aligenie.ags` | `com.ailabs.youku.iot` | 1 | action:ACTION_SCREEN_SAVER |
| `com.aligenie.ags` | `com.alibaba.ailabs.genie.screensaver` | 1 | action:ACTION_SCREEN_SAVER |
| `com.aligenie.ags` | `com.android.settings` | 1 | action:ACTION_SCREEN_SAVER |
| `com.ailabs.youku.iot` | `com.alibaba.ailabs.genie.smartapp` | 3 | component:com.youku.news.player.NewsPlayerActivity<br>component:com.youku.iot.player.CommonPlayerActivity<br>component:com.youku.shortvideo.player.ShortVideoPlayerAc |
| `com.ailabs.youku.iot` | `com.alibaba.ailabs.genie.screensaver` | 2 | component:com.aliott.m3u8Proxy.PlayerProxyService<br>action:com.aliott.m3u8Proxy.IPlayerProxy.action |
| `com.ailabs.emode` | `com.android.settings` | 1 | action:com.ailabs.emode.test1 |
| `com.ailabs.emode` | `com.yunos.tv.provision` | 1 | action:com.ailabs.emode.test1 |
| `com.alibaba.ailabs.genie.albums` | `com.alibaba.ailabs.genie.screensaver` | 1 | authority:com.tld.albumprovider |
| `com.alibaba.ailabs.genie.children` | `com.android.settings` | 6 | component:com.alibaba.ailabs.childmode.ui.page.Forbidden<br>component:com.alibaba.ailabs.genie.datacenter.DataCenter<br>component:com.alibaba.ailabs.childmode.ui.page.GenieTime |
| `com.alibaba.ailabs.genie.children` | `com.alibaba.ailabs.genie.smartapp` | 6 | component:com.alibaba.ailabs.childmode.ui.page.Forbidden<br>component:com.alibaba.ailabs.genie.childrenmodel.home.vi<br>component:com.alibaba.ailabs.genie.children.activity.Hom |
| `com.alibaba.ailabs.genie.children` | `com.android.systemui` | 3 | component:com.alibaba.ailabs.genie.childrenmodel.home.vi<br>component:com.alibaba.ailabs.genie.children.activity.Hom<br>component:com.alibaba.ailabs.genie.childrenmodel.setting |
| `com.alibaba.ailabs.genie.children` | `com.alibaba.ailabs.genie.guide` | 1 | component:com.alibaba.ailabs.genie.childrenmodel.home.vi |
| `com.alibaba.ailabs.genie.iot` | `com.alipay.arome.app` | 2 | authority:com.alibaba.ailabs.genie.iot.tmp.service<br>authority:com.alibaba.ailabs.genie.iot.local_execute.ser |
| `com.alibaba.ailabs.genie.iot` | `com.alibaba.ailabs.genie.smartapp` | 2 | component:com.alibaba.ailabs.genie.iot.house.HouseServic<br>authority:com.alibaba.ailabs.genie.iot.ipc.service |
| `com.alibaba.ailabs.genie.iot` | `com.alibaba.ailabs.genie.rtc` | 1 | authority:com.alibaba.ailabs.genie.iot.palette.service |
| `com.alibaba.ailabs.genie.launcher` | `com.aligenie.ags` | 2 | component:com.alibaba.ailabs.genie.launcher.videofind.Se<br>component:com.alibaba.ailabs.genie.launcher.video.search |
| `com.alibaba.ailabs.genie.launcher` | `com.alibaba.ailabs.genie.smartapp` | 2 | component:com.alibaba.ailabs.genie.launcher.activity.Adu<br>component:com.alibaba.ailabs.genie.launcher.activity.Cha |
| `com.alibaba.ailabs.genie.launcher` | `com.android.systemui` | 1 | component:com.alibaba.ailabs.genie.launcher.activity.Adu |
| `com.alibaba.ailabs.genie.launcher` | `com.android.settings` | 1 | component:com.alibaba.ailabs.genie.launcher.activity.Adu |
| `com.alibaba.ailabs.ar.monitor` | `com.alibaba.ailabs.genie.smartapp` | 1 | authority:com.alibaba.ailabs.ave.controlProvider |
| `com.alibaba.ailabs.genie.rtc` | `com.alibaba.ailabs.genie.smartapp` | 6 | component:com.alibaba.ailabs.genie.rtc.voip.callin.VoipC<br>component:com.alibaba.ailabs.genie.rtc.voip.callout.Voip<br>authority:com.tld.rtcProvider |
| `com.alibaba.ailabs.genie.rtc` | `com.android.systemui` | 2 | component:com.alibaba.ailabs.genie.rtc.voip.callin.VoipC<br>component:com.alibaba.ailabs.genie.rtc.voip.callout.Voip |
| `com.alibaba.ailabs.genie.rtc` | `com.alibaba.ailabs.genie.screensaver` | 1 | action:genie://com.alibaba.ailabs.genie.rtc/page/call |
| `com.alibaba.ailabs.genie.rtc` | `com.alibaba.genie.waft` | 1 | action:genie://com.alibaba.ailabs.genie.rtc/page/call |
| `com.alibaba.ailabs.genie.screensaver` | `com.alibaba.ailabs.genie.aicare` | 1 | authority:com.alibaba.ailabs.genie.screensaver.ContentPr |
| `com.alibaba.ailabs.genie.screensaver` | `com.alibaba.ailabs.genie.smartapp` | 1 | component:com.alibaba.ailabs.genie.screensaver.FlipperDr |
| `com.alibaba.ailabs.genie.osupdate` | `com.android.settings` | 2 | component:com.alibaba.ailabs.genie.osupdate.front.Update<br>action:com.aliyun.cloudapp.FOTA_UPDATE |
| `com.alibaba.ailabs.genie.osupdate` | `com.alibaba.ailabs.genie.smartapp` | 1 | action:com.aliyun.cloudapp.FOTA_UPDATE |
| `com.android.settings` | `com.android.systemui` | 2 | component:com.yunos.tv.settings.GenieLabClassifyActivity<br>component:com.android.settings.Settings |
| `com.android.settings` | `com.alibaba.ailabs.genie.smartapp` | 2 | component:com.android.settings.Settings<br>component:com.android.settings.network.wifi.WifiSettingA |
| `com.android.settings` | `com.aligenie.ags` | 1 | component:com.android.settings.Settings |
| `com.android.settings` | `com.ailabs.emode` | 1 | component:com.android.settings.network.wifi.WifiSettingA |
| `com.android.settings` | `com.alibaba.ailabs.ar.monitor` | 1 | component:com.android.settings.Settings |
| `com.android.settings` | `com.alibaba.ailabs.genie.osupdate` | 1 | component:com.android.settings.network.wifi.WifiSettingA |
| `com.android.settings` | `com.dangbei1.tvlauncher` | 1 | component:com.android.settings.Settings |
| `com.android.settings` | `com.shere.assistivetouch` | 1 | component:com.android.settings.Settings |
| `com.android.settings` | `com.android.packageinstaller` | 1 | component:com.android.settings.Settings |
| `com.alibaba.ailabs.genie.smartapp` | `com.android.settings` | 15 | component:com.alibaba.ailabs.genie.nodisturb.TimeDisturb<br>component:com.alibaba.genie.shopping.voiceprint.open.act<br>component:com.alibaba.ailabs.childmode.ui.page.ValidateL |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.launcher` | 10 | component:com.alibaba.ailabs.genie.musicplayer.service.M<br>authority:com.alibaba.ailabs.genie.smartapp.ipc.second.s<br>authority:com.alibaba.ailabs.genie.assistant.provider |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.children` | 9 | component:com.alibaba.ailabs.childmode.ui.page.ValidateL<br>component:com.alibaba.ailabs.childmode.ui.page.ApiActivi<br>authority:com.alibaba.ailabs.genie.assistant.provider |
| `com.alibaba.ailabs.genie.smartapp` | `com.android.systemui` | 7 | component:com.alibaba.ailabs.genie.task.aicare.ui.MsgSho<br>component:com.alibaba.ailabs.childmode.ui.page.ValidateL<br>authority:com.alibaba.ailabs.genie.assistant.provider |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.browser` | 7 | authority:com.alibaba.ailabs.genie.smartapp.ipc.second.s<br>authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.iot` | 7 | authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server<br>authority:com.alibaba.ailabs.genie.contacts |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.rtc` | 7 | component:com.alibaba.ailabs.genie.musicplayer.activity.<br>authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.screensaver` | 7 | component:com.alibaba.ailabs.basedomain.ui.alarm.AlarmQu<br>authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.smartapp.ipc.second.s |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.guide` | 7 | component:com.alibaba.ailabs.childmode.ui.page.ApiActivi<br>authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server |
| `com.alibaba.ailabs.genie.smartapp` | `com.aligenie.ags` | 6 | component:com.alibaba.ailabs.genie.globalsearch.MainActi<br>authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.aicare` | 6 | authority:com.alibaba.ailabs.genie.smartapp.ipc.second.s<br>authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.ar.monitor` | 5 | authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server<br>authority:com.alibaba.ailabs.genie.contacts |
| `com.alibaba.ailabs.genie.smartapp` | `com.alipay.arome.app` | 4 | authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server<br>authority:com.alibaba.ailabs.genie.router.ipc.service |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.genie.waft` | 4 | authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server<br>authority:com.alibaba.ailabs.genie.router.ipc.service |
| `com.alibaba.ailabs.genie.smartapp` | `com.ailabs.youku.iot` | 3 | authority:com.alibaba.ailabs.genie.assistant.provider<br>authority:com.alibaba.ailabs.genie.assistant.server<br>authority:com.alibaba.ailabs.genie.datacenter.DataCenter |
| `com.alibaba.ailabs.genie.smartapp` | `com.alibaba.ailabs.genie.albums` | 2 | authority:com.alibaba.ailabs.genie.assistant.provider<br>action:com.yunos.tv.alitvasr.service |
| `com.alibaba.ailabs.genie.smartapp` | `com.android.bluetooth` | 1 | authority:com.alibaba.ailabs.genie.datacenter.DataCenter |
| `com.android.webview` | `com.alipay.arome.app` | 1 | component:org.chromium.content.app.SandboxedProcessServi |
| `com.android.webview` | `com.alibaba.ailabs.genie.browser` | 1 | component:org.chromium.content.app.SandboxedProcessServi |
| `com.android.webview` | `com.alibaba.ailabs.genie.smartapp` | 1 | component:org.chromium.content.app.SandboxedProcessServi |
| `com.android.providers.contacts` | `com.dangbei1.tvlauncher` | 1 | authority:com.android.voicemail |
| `com.android.providers.contacts` | `com.web1n.permissiondog` | 1 | authority:com.android.voicemail |
| `com.android.providers.contacts` | `com.android.packageinstaller` | 1 | authority:com.android.voicemail |
| `com.android.shell` | `com.topjohnwu.magisk` | 1 | authority:com.android.shell |
| `com.android.shell` | `com.alibaba.ailabs.genie.smartapp` | 1 | authority:com.android.shell |
| `com.android.shell` | `com.android.providers.settings` | 1 | authority:com.android.shell |

**读法**：`com.aligenie.ags`（AliGenieService）被 `smartapp`、`AliSystemUI`、`GenieScreensaver`、`S1Settings`
以 authority `com.aligenie.ic.icProvider` 与私有 action `ACTION_SCREEN_SAVER` 引用——这是语音链路的硬连接。
`com.alipay.arome.app`（AMPE）被 **7 个包**（smartapp、Guide、GenieAicare、GenieBrowser、GenieIoT、
GenieLauncher、GenieRTC）以 `com.alibaba.ailabs.genie.webapps.START/INIT` 与 `GwaReceiver` 组件引用——
这是**真实的应用级耦合**（不是 SDK 噪声），rev2 据此把它从 B 调整为 C。
`ES.apk`、`qxg.apk`、`Guide` 在降噪后**没有任何**应用级入向引用；`dangbei.apk`、`Waft`、`easytouch.apk`
的命中全部落在已知推送 / 统计 SDK 命名空间，已在降噪中剔除。
（ES、权限狗、当贝、EasyTouch 已列入用户保护，上述结论只是技术事实，不构成任何执行建议。）

## 3.1 平台 Provider 的常规使用（不作为删除依据）

AOSP 的 `media`、`downloads`、`settings`、`com.android.contacts`、`com.android.calendar` 等 authority
是全平台常量，被几乎所有 APK 字符串命中，属“正常使用系统 Provider”，不是包间耦合：

| 目标 Provider | 使用方数量 | 使用方（节选） |
|---|---|---|
| `com.android.providers.media` | 37 | com.ailabs.emode, com.ailabs.youku.iot, com.alibaba.ailabs.ar.monitor, com.alibaba.ailabs.genie.aicare, com.alibaba.ailabs.genie.albums, com.alibaba.ailabs.genie.browser |
| `com.android.providers.settings` | 33 | com.ailabs.emode, com.ailabs.youku.iot, com.alibaba.ailabs.ar.monitor, com.alibaba.ailabs.genie.aicare, com.alibaba.ailabs.genie.albums, com.alibaba.ailabs.genie.browser |
| `com.android.providers.contacts` | 19 | com.alibaba.ailabs.ar.monitor, com.alibaba.ailabs.genie.aicare, com.alibaba.ailabs.genie.albums, com.alibaba.ailabs.genie.browser, com.alibaba.ailabs.genie.children, com.alibaba.ailabs.genie.guide |
| `com.android.providers.downloads` | 18 | com.ailabs.youku.iot, com.alibaba.ailabs.ar.monitor, com.alibaba.ailabs.genie.aicare, com.alibaba.ailabs.genie.albums, com.alibaba.ailabs.genie.browser, com.alibaba.ailabs.genie.children |
| `com.android.settings` | 4 | com.alibaba.ailabs.ar.monitor, com.alibaba.ailabs.genie.smartapp, com.aligenie.ags, com.android.systemui |
| `com.android.providers.calendar` | 2 | com.alipay.arome.app, com.shere.assistivetouch |

## 4. framework / system_server 侧点名

对 `framework/arm/boot.vdex`（167,839 条字符串）、`boot-framework.vdex`（143,717 条）、
`oat/arm/services.vdex`（220,518 条）检索全部系统包名，命中情况如下（命中数 = 字符串出现次数）：

| 包名 | 命中数 | 对应目录 |
|---|---|---|
| `com.android.settings` | 13 | com.android.settings |
| `com.android.systemui` | 12 | com.android.systemui |
| `com.android.bluetooth` | 7 | com.android.bluetooth |
| `com.android.webview` | 4 | com.android.webview |
| `com.android.externalstorage` | 3 | com.android.externalstorage |
| `com.android.bluetoothmidiservice` | 2 | com.android.bluetoothmidiservice |
| `com.android.certinstaller` | 2 | com.android.certinstaller |
| `com.android.keychain` | 2 | com.android.keychain |
| `com.alibaba.ailabs.genie.osupdate` | 2 | com.alibaba.ailabs.genie.osupdate |
| `com.android.pacprocessor` | 2 | com.android.pacprocessor |
| `com.android.defcontainer` | 2 | com.android.defcontainer |
| `com.android.providers.media` | 2 | com.android.providers.media |
| `com.android.proxyhandler` | 2 | com.android.proxyhandler |
| `com.android.vpndialogs` | 2 | com.android.vpndialogs |
| `com.alipay.arome.app` | 1 | com.alipay.arome.app |
| `com.android.companiondevicemanager` | 1 | com.android.companiondevicemanager |
| `android.ext.shared` | 1 | android.ext.shared |
| `com.alibaba.ailabs.genie.albums` | 1 | com.alibaba.ailabs.genie.albums |
| `com.alibaba.ailabs.genie.launcher` | 1 | com.alibaba.ailabs.genie.launcher |
| `com.alibaba.ailabs.ar.monitor` | 1 | com.alibaba.ailabs.ar.monitor |
| `com.alibaba.ailabs.genie.rtc` | 1 | com.alibaba.ailabs.genie.rtc |
| `com.alibaba.ailabs.genie.screensaver` | 1 | com.alibaba.ailabs.genie.screensaver |
| `com.aliyun.uuid` | 1 | com.aliyun.uuid |
| `com.alibaba.ailabs.genie.smartapp` | 1 | com.alibaba.ailabs.genie.smartapp |
| `com.yunos.tv.provision` | 1 | com.yunos.tv.provision |
| `com.android.providers.calendar` | 1 | com.android.providers.calendar |
| `com.android.providers.downloads` | 1 | com.android.providers.downloads |
| `android.ext.services` | 1 | android.ext.services |
| `com.android.providers.settings` | 1 | com.android.providers.settings |
| `com.android.shell` | 1 | com.android.shell |

要点：
- `services.vdex` 中出现 `com.alibaba.ailabs.genie.osupdate.front.RebootUpdateActivity`——framework 直接点名
  OTA 的**具体 Activity 类**，说明“重启升级”流程由 system_server 侧驱动。删 Osupdate 会破坏该流程，故只建议禁用。
- 同一 dex 还出现 `com.alibaba.ailabs.genie.launcher`、`...screensaver`、`...rtc`、`...smartapp`、`...albums`、
  `...ar.monitor`、`com.alipay.arome.app`、`com.aliyun.uuid`、`com.yunos.tv.provision` 等包名，
  说明 YunOS/MTK 在 SystemServer 里内置了这些包的白名单/钩子。
- `com.android.settings`(13)、`com.android.systemui`(12)、`com.android.bluetooth`(7)、`com.android.webview`(4)
  属平台自身耦合，进一步印证 D 类判定。

## 5. 共享 uid（进程/权限域）分组

| sharedUserId | 包数 | 成员（节选） |
|---|---|---|
| (无) | 28 | `android.ext.services`, `android.ext.shared`, `com.ailabs.youku.iot`, `com.alibaba.ailabs.ar.monitor`, `com.alibaba.ailabs.genie.aicare`, `com.alibaba.ailabs.genie.browser`… |
| android.uid.system | 18 | `com.ailabs.emode`, `com.alibaba.ailabs.genie.albums`, `com.alibaba.ailabs.genie.children`, `com.alibaba.ailabs.genie.guide`, `com.alibaba.ailabs.genie.iot`, `com.alibaba.ailabs.genie.osupdate`… |
| android.media | 3 | `com.android.mtp`, `com.android.providers.downloads`, `com.android.providers.media` |
| android.uid.shared | 2 | `com.android.providers.contacts`, `com.android.providers.userdictionary` |
| android.uid.systemui | 1 | `com.android.systemui` |
| android.uid.bluetooth | 1 | `com.android.bluetooth` |
| android.uid.calendar | 1 | `com.android.providers.calendar` |
| android.uid.shell | 1 | `com.android.shell` |

`android.uid.system` 下的 18 个包共享同一 Linux uid，因此：
- 任一包被删除后，其余包**不会**因为 uid 变化而失效（uid 组按包计算）；
- 但依赖该包 **Binder 服务 / Provider** 的调用方会失败，且失败发生在 system uid 下，`logcat` 里表现为
  `SecurityException` 或 `DeadObjectException`，容易被误判为系统故障。
- 这 18 个包中，`AliSpKey`、`UUID`、`raShow`、`Emode` 的功能尚未查清 → 一律 C。

## 6. ContentProvider / authority 归属（非 AOSP）

Provider 会在**任何进程查询它的瞬间**把宿主进程拉起，是“隐形常驻”的主要来源。本机非 AOSP 的 Provider 如下：

| 宿主包 | authorities | Provider 类 | exported |
|---|---|---|---|
| `com.alipay.arome.app` | com.alipay.arome.app.account.syncprovider | com.alipay.mobile.healthcommon.accountsync.SyncProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.app.configprovider | com.alipay.mobile.base.config.impl.ConfigContentProviderNew | False |
| `com.alipay.arome.app` | com.alipay.arome.app.hms.update.provider | com.huawei.hms.update.provider.UpdateProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.app.spmtracker.chinfo | com.alipay.mobile.monitor.track.spm.ChinfoChainProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.app.PermissionProvider | com.alipay.android.phone.mobilesdk.permission.guide.provider.DataProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.app.DataInMainProProvider | com.alipay.mobile.push.MainProcessDataProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.mobile.camera.fileprovider | android.support.v4.content.FileProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.mobile.monitor.ipc.storage.IpcMonitorCP | com.alipay.mobile.monitor.ipc.storage.IpcMonitorCP | False |
| `com.alipay.arome.app` | com.alipay.arome.mobile.provider | com.alipay.mobile.provider.H5NebulaFileProviderImpl | False |
| `com.alipay.arome.app` | com.alipay.arome.mobile.performance.account | com.alipay.mobile.performance.sync.PerfAccountProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.mobile.rome.voicebroadcast.dynamics.RemoteFuncsProvider | com.alipay.mobile.rome.voicebroadcast.dynamics.RemoteFuncsProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.stability.provider | com.alipay.stability.provider.StabilityProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.mobile.alertsentry.provider | com.alipay.mobile.alertsentry.content.SentryContentProvider | True |
| `com.alipay.arome.app` | com.alipay.mobile.arome.provider | com.alipay.mobile.aromeservice.AromeContentProvider | True |
| `com.alipay.arome.app` | com.alipay.arome.app.healthcommon.StepSPProvider | com.alipay.android.phone.businesscommon.healthcommon.util.StepSPProvider | False |
| `com.alipay.arome.app` | com.alipay.arome.ali.authlogin | com.alipay.mobile.authlogin.common.provider.AliAuthLoginContentProvider | True |
| `com.alipay.arome.app` | com.alipay.arome.app.asUpgradeFileProvider | com.alipay.mobile.securitycommon.upgrade.ASUpgradeFileProvider | False |
| `com.aligenie.ags` | com.aligenie.ic.icProvider | com.aligenie.ags.analytics.AliICProvider | True |
| `com.android.systemui` | com.android.systemui.ipc.second.server | com.alibaba.ailabs.genie.second.gcs.service.SecondInstaller | False |
| `com.estrongs.android.pop` | com.estrongs.files | com.estrongs.android.pop.app.FileContentProvider | True |
| `com.ailabs.emode` | com.ailabs.emode.files | android.support.v4.content.FileProvider | False |
| `com.alibaba.ailabs.genie.aicare` | com.alibaba.ailabs.genie.aicare.lifecycle-trojan | android.arch.lifecycle.ProcessLifecycleOwnerInitializer | False |
| `com.alibaba.ailabs.genie.albums` | com.tld.albumprovider | com.alibaba.ailabs.genie.albums.provider.AlbumContentProvider | True |
| `com.alibaba.ailabs.genie.albums` | com.alibaba.ailabs.genie.albums.lifecycle-trojan | android.arch.lifecycle.ProcessLifecycleOwnerInitializer | False |
| `com.alibaba.ailabs.genie.children` | com.alibaba.ailabs.genie.children.lifecycle-trojan | android.arch.lifecycle.ProcessLifecycleOwnerInitializer | False |
| `com.alibaba.ailabs.genie.iot` | com.alibaba.ailabs.genie.iot.ipc.service | com.alibaba.ailabs.genie.iot.IOTProvider | True |
| `com.alibaba.ailabs.genie.iot` | com.alibaba.ailabs.genie.iot.connection_layer.service | com.alibaba.ailabs.iot.smartapp_genie_platform_implement.service.IoTConnectionLayerProvider | True |
| `com.alibaba.ailabs.genie.iot` | com.alibaba.ailabs.genie.iot.local_execute.service | com.alibaba.ailabs.iot.iotservicesdk.IoTLocalExecuteProvider | True |
| `com.alibaba.ailabs.genie.iot` | com.alibaba.ailabs.genie.iot.event.service | com.alibaba.ailabs.genie.iot.service.MyProvider | True |
| `com.alibaba.ailabs.genie.iot` | com.alibaba.ailabs.genie.iot.ipc.second.server | com.alibaba.ailabs.genie.second.gcs.service.SecondInstaller | True |
| `com.alibaba.ailabs.genie.iot` | com.alibaba.ailabs.genie.iot.tmp.service | com.aliyun.alink.linksdk.tmp.geniebox.service.TMPGenieboxServiceProvider | True |
| `com.alibaba.ailabs.genie.iot` | com.alibaba.ailabs.genie.iot.palette.service | com.alibaba.ailabs.iot.palette.channel.agui.PaletteProvider | True |
| `com.alibaba.ailabs.genie.iot` | com.alibaba.ailabs.genie.iot.lifecycle-trojan | android.arch.lifecycle.ProcessLifecycleOwnerInitializer | False |
| `com.alibaba.ailabs.genie.launcher` | com.alibaba.ailabs.genie.launcher.activity.adultprovider | com.alibaba.ailabs.genie.launcher.activity.AdultProvider | True |
| `com.alibaba.ailabs.ar.monitor` | com.alibaba.ailabs.ave.controlProvider | com.alibaba.ailabs.ave.aceengine.AVEControlProvider | True |
| `com.alibaba.ailabs.ar.monitor` | com.alibaba.ailabs.ar.monitor.ipc.second.server | com.alibaba.ailabs.genie.second.gcs.service.SecondInstaller | True |
| `com.alibaba.ailabs.genie.rtc` | com.tld.rtcProvider | com.alibaba.ailabs.genie.rtc.provider.RtcContentProvider | True |
| `com.alibaba.ailabs.genie.rtc` | com.alibaba.ailabs.genie.rtc.ipc.second.server | com.alibaba.ailabs.genie.second.gcs.service.SecondInstaller | True |
| `com.alibaba.ailabs.genie.rtc` | com.alibaba.ailabs.genie.rtc.lifecycle-trojan | android.arch.lifecycle.ProcessLifecycleOwnerInitializer | False |
| `com.alibaba.ailabs.genie.screensaver` | com.alibaba.ailabs.genie.screensaver.ContentProvider | com.alibaba.ailabs.genie.screensaver.provider.ScreensaverContentProvider | True |

其中值得注意的“保活型 Provider”：
- `com.alibaba.ailabs.genie.smartapp` 声明了 `com.alibaba.ailabs.genie.smartapp.GenieRegistryInstaller`，
  其实现类为 `com.alibaba.genie.waft.gcs.registry.GenieRegistryInstaller`——**Waft 的 GCS 组件被 smartapp 内嵌**，
  这是 `Waft` 与主助手之间的实证耦合（因此 Waft 归 C 而非 A）。
- `com.android.arch.lifecycle` 之类 `lifecycle-process` Provider（多个 Ali 应用都有）会在开机时被系统实例化，
  属“故意保活”，禁用对应包即可一并消除。
- `com.alipay.arome.app` 有 17 个 Provider（`configprovider`、`PermissionProvider`、`arome.provider` 等），
  任一调用方查询都会把宿主进程拉起。**rev2 修正**：这既说明它是“保活型”宿主，也说明它**被真实使用**；
  因此不能因为“可以禁用”就把它当普通 B 类，现归类为 **C**（详见 `app_removal_recommendations.md` 第 4.1 节）。

## 7. native 库依赖

### 7.1 包内自带 .so（随 APK 安装，删除即消失）

| 包名 | lib MB | .so 文件（节选） |
|---|---|---|
| `com.alipay.arome.app` | 61.01 | `libAMT_number2voice.so`, `libAMapSDK_MAP_v7_1_13.so`, `libAPMUOCPLIB.so`, `libAPSE_1.6.7.so`, `libASG4FinancePot_1.1.0.so`, `libASG4Stock_1.1.0.so`, `libAWT_Generator.so`, `libAlipayBitmapNative.so` |
| `com.aligenie.ags` | 0.51 | `libaligenie_ic.so`, `libcrashsdk.so`, `liblogProducer.so` |
| `com.android.systemui` | 0.38 | `libcrashsdk.so` |
| `com.ailabs.youku.iot` | 21.28 | `libEffectsCore.so`, `libalidrm.so`, `libcrashsdk.so`, `libfirekylin.cache.so`, `libfirekylin.hwcodec.a31.so`, `libfirekylin.so`, `libirdetodrm.so`, `libirdetodrm_jni.so` |
| `com.alibaba.ailabs.genie.aicare` | 6.90 | `libapolloffmpeg.so`, `libcrashsdk.so`, `libu3player.so` |
| `com.alibaba.ailabs.genie.browser` | 0.99 | `libcrashsdk.so`, `libzcachecore.so` |
| `com.alibaba.ailabs.genie.children` | 2.76 | `libcrashsdk.so`, `libframesequence.so`, `libgiflib.so`, `libpl_droidsonroids_gif.so`, `libunet.so` |
| `com.alibaba.ailabs.genie.iot` | 4.64 | `libAGUtilsExt.so`, `libRuleEngine.so`, `libaglog.so`, `libagpal.so`, `libagutils.so`, `libcrashsdk.so`, `libcrypto.so`, `libgattcimpl.so` |
| `com.alibaba.ailabs.genie.launcher` | 1.29 | `libcrashsdk.so`, `libtnet-4.0.0.so` |
| `com.alibaba.ailabs.ar.monitor` | 14.67 | `libAliCVKit.so`, `libMNN.so`, `libMNN_CL.so`, `libMNN_Express.so`, `libMNN_NPU.so`, `libaceCompute.so`, `libaceManager.so`, `libcrashsdk.so` |
| `com.alibaba.ailabs.genie.screensaver` | 0.65 | `libcrashsdk.so`, `libjson.so`, `libsysplayer.so` |
| `com.alibaba.ailabs.genie.guide` | 0.75 | `libcomm_ali.so`, `libcommon_ali.so`, `libcrashsdk.so`, `libelink.so`, `libfastLink.so`, `libjson_c_ali.so` |
| `com.android.bluetooth` | 0.00 | `libmtkbluetooth_jni.so` |
| `com.android.pacprocessor` | 0.00 | `libjni_pacprocessor.so` |
| `com.android.settings` | 0.99 | `libcrashsdk.so`, `libidcprobe.so`, `libsgmain.so`, `libsgsecuritybody.so` |
| `com.alibaba.genie.waft` | 4.13 | `libapolloffmpeg.so`, `libcrashsdk.so`, `libjson.so`, `libu3player.so` |
| `com.alibaba.ailabs.genie.smartapp` | 35.62 | `libAGUtilsExt.so`, `libGenieCommon.so`, `libGenieJson.so`, `libace.so`, `libaceAsr.so`, `libaceNlu.so`, `libagaudio.so`, `libagaudio_system.so` |
| `com.android.defcontainer` | 0.00 | `libdefcontainer_jni.so` |

语音/视觉链路的 native 依赖集中在：`AliGenieService`（`libaligenie_ic.so`、`libcrashsdk.so`、`liblogProducer.so`）、
`GenieMonitor`（`libMNN_CL.so`、`libmnnface.so`、`libmnnkitcore.so` —— MNN 推理 + 人脸）、
`Waft`（4.13 MB，H5/JS 运行时）、`AMPE`（61.01 MB，支付宝小程序容器，体积主要在此）。

### 7.2 系统 `lib/` 引用

`system/lib` 共 482 个 `.so`（`lib/hw` 5 个 HAL、`lib/vndk-sp` 为 VNDK）。扫描各包字符串后，被引用最多的系统库为
`libandroid.so`、`libc.so`、`libm.so`、`liblog.so`、`libmediandk.so`、`libOpenSLES.so`、`libsqlite.so`
——均为 NDK 公共库，不做逐个包列举。**结论：没有任何一个 App 依赖“只被它使用”的私有系统 .so**，
因此删 App 不会造成系统库悬空；反过来删 `lib/*.so` 会同时打断多个 App，属禁止操作。

## 8. 启动与常驻链路（运行时常驻证据）

### 8.1 persistent / BOOT_COMPLETED

| 包名 | persistent | BOOT 接收器数 | 接收器 | sharedUserId |
|---|---|---|---|---|
| com.alibaba.ailabs.genie.osupdate | 是 | 1 | com.alibaba.ailabs.genie.osupdate.UpdateBroadcastReceiver | android.uid.system |
| com.dangbei1.tvlauncher |  | 2 | com.dangbei.launcher.receiver.BootReceiver, com.taobao.accs.EventReceiver |  |
| com.shere.assistivetouch | 是 | 1 | com.shere.easytouch.module.service.view.broatcast.ETServiceBroadcastReceiver |  |
| com.web1n.permissiondog |  | 1 | com.web1n.appops2.receiver.BootReceiver |  |
| com.android.storagemanager |  | 1 | .automatic.AutomaticStorageBroadcastReceiver |  |
| com.alipay.arome.app |  | 1 | com.alipay.mobile.quinox.preload.PreloadReceiver |  |
| com.alibaba.ailabs.genie.rtc |  | 1 | com.alibaba.ailabs.genie.rtc.alive.BootMsgReceiver | android.uid.system |
| com.aliyun.uuid |  | 1 | com.aliyun.uuid.RegistUUIDReceiver | android.uid.system |
| com.aligenie.ags |  | 2 | com.aligenie.ags.analytics.ICBroadcastReceiver, com.aligenie.ags.access.AccessBroadcastReceiver | android.uid.system |
| com.android.settings |  | 1 | com.android.settings.SettingBootReceiver | android.uid.system |
| com.alibaba.ailabs.genie.smartapp |  | 3 | com.alibaba.ailabs.comm.receiver.SystemLaunchForceStopReceiver, com.alibaba.ailabs.basedomain.ui.alarm.AutoStartBroadcastReceiver | android.uid.system |
| com.android.providers.calendar |  | 1 | CalendarReceiver | android.uid.calendar |
| com.android.providers.downloads |  | 1 | .DownloadReceiver | android.media |
| com.android.providers.media |  | 2 | MediaScannerReceiver, .MtpReceiver | android.media |
| com.android.packageinstaller |  | 1 | .TemporaryFileManager |  |

只有 2 个包 `persistent=true`：`com.shere.assistivetouch`（悬浮触控）、`com.alibaba.ailabs.genie.osupdate`（OTA）。
`persistent` 由 ActivityManager 在开机时强制拉起并**杀不掉**，是 RAM 占用的第一优先级清理对象。

### 8.2 快照时刻仍在运行的 Service

| 包名 | Service 数 | Service（节选） |
|---|---|---|
| `android` | 3 | `.hardware.location.GeofenceHardwareService`<br>`com.android.internal.backup.LocalTransportService`<br>`com.android.server.content.SyncJobService` |
| `com.alibaba.ailabs.genie.iot` | 2 | `.house.HouseService`<br>`com.alibaba.analytics.AnalyticsService` |
| `com.alibaba.ailabs.genie.osupdate` | 1 | `.UpdateService` |
| `com.alibaba.ailabs.genie.rtc` | 1 | `.app.RTCNotifyService` |
| `com.alibaba.ailabs.genie.smartapp` | 21 | `.service.GenieManageServerService`<br>`.service.JobWakeUpService`<br>`.task.core.ScheduleJobService`<br>`anetwork.channel.aidl.NetworkService` |
| `com.aligenie.ags` | 4 | `.access.AccessService`<br>`.analytics.AliicxService`<br>`.analytics.service.AccService`<br>`.analytics.service.ICService` |
| `com.android.bluetooth` | 7 | `.a2dp.A2dpService`<br>`.a2dpsink.A2dpSinkService`<br>`.a2dpsink.mbs.A2dpMediaBrowserService`<br>`.avrcpcontroller.AvrcpControllerService` |
| `com.android.location.fused` | 1 | `.FusedLocationService` |
| `com.android.settings` | 1 | `com.yunos.tv.settings.service.dynamic.DynamicSettingsService` |
| `com.android.systemui` | 3 | `.SystemUIService`<br>`.gesture.AccessibilityServiceGesture`<br>`com.alibaba.analytics.AnalyticsService` |
| `com.anthouse.ayland` | 1 | `com.aliyun.ayland.service.SocketServer` |
| `com.dangbei1.tvlauncher` | 5 | `com.dangbei.downloader.core.DownloadService`<br>`com.dangbei.flames.phrike.core.DownloadService`<br>`com.dangbei.launcher.service.HomeKeyEventCatchService`<br>`com.dangbei.launcher.ui.screensaver.ScreensaverService` |
| `com.google.android.inputmethod.pinyin` | 1 | `.PinyinIME` |
| `com.shere.assistivetouch` | 1 | `com.shere.easytouch.module.service.view.EasyTouchService` |

### 8.3 唤醒锁（`dumpsys power`，2026-11-20 16:03）

```
PARTIAL_WAKE_LOCK              'NativeService' ACQ=-40m34s592ms LONG (uid=1000 pid=29434)
PARTIAL_WAKE_LOCK              'AudioIn' ACQ=-40m34s556ms LONG (uid=1041 ws=WorkSource{1000})
PARTIAL_WAKE_LOCK              'NativeService' ACQ=-40m32s826ms LONG (uid=1000 pid=29413)
PARTIAL_WAKE_LOCK              'ScreenWakeManager' ACQ=-39m12s398ms LONG (uid=1000 pid=29502)
```

`NativeService` ×2 由 smartapp 的两个进程持有（`pid 29434` / `29413`），`ScreenWakeManager` 由
`smartapp:business`（`pid 29502`）持有，`AudioIn` 由 audioserver 代 `uid 1000` 持有。
**归属限定（rev2）**：这 4 个唤醒锁全部属于 `com.alibaba.ailabs.genie.smartapp` 的进程（含 audioserver 代持），
体现的是 smartapp 的“常听”行为；不能据此推断 `AliGenieService` / `GenieMonitor` / `GenieIoT` 也持有同类锁。

### 8.4 闹钟唤醒 TOP（`dumpsys alarm`）

```
+1m36s273ms running, 0 wakeups, 2619 alarms: 1000:android
*alarm*:android.intent.action.TIME_TICK
+41s489ms running, 5250 wakeups, 5250 alarms: 1000:android
*walarm*:*job.deadline*
+41s205ms running, 5260 wakeups, 5260 alarms: 1000:android
*walarm*:*job.delay*
+36s573ms running, 527 wakeups, 527 alarms: u0a39:com.dangbei1.tvlauncher
*walarm*:com.dangbei1.tvlauncher/cn.jpush.android.service.AlarmReceiver
+22s413ms running, 0 wakeups, 2621 alarms: 1000:com.aligenie.ags
*alarm*:com.yunos.tv.device.ALIICX_HEART_BEAT_START
+5s678ms running, 0 wakeups, 88 alarms: 1000:android
*alarm*:com.android.server.action.NETWORK_STATS_POLL
```

- `com.dangbei1.tvlauncher`：JPush `AlarmReceiver` 527 次 + 小米 `COCKROACH` 62 次唤醒 —— 第三方推送常驻。
- `com.aligenie.ags`：`ALIICX_HEART_BEAT` 2,621 次 —— 原厂心跳，属预期行为。
- `com.alibaba.ailabs.genie.rtc`：`COCKROACH` 29 次唤醒 —— RTC 也在用小米推送通道。

## 9. 四条关键链路的结论

| 链路 | 组成 | 结论 |
|---|---|---|
| 语音（唤醒→ASR→技能） | `AliGenieService` + `smartapp`(`:core`/`:business`) + `GenieMonitor`(AVE Wakeup/Gesture) + native `libaligenie_ic.so` | 全部 D。**运行时证据只覆盖 smartapp**：其 3 个进程 PSS 合计 216,324 kB、`:core` 单进程 72% CPU（单次区间快照）、持有 `NativeService`/`ScreenWakeManager`/`AudioIn` 锁。`GenieMonitor` 在快照中**没有进程**，其 D 级判定来自 Manifest 组件与跨包引用（较可信），未获动态验证 |
| UI（桌面/设置/系统栏） | `GenieLauncher`(HOME) + `AliSystemUI` + `S1Settings` + `Waft`(技能页) + `webview` | 全部 D/C。`Waft` 因前台渲染（`WaftTplActivity` 为 resumed activity）+ 被 smartapp 内嵌归 C |
| 小程序 / H5 技能 | `AMPE`(`com.alipay.arome.app`) + smartapp 的 `genie.webapps.*` action + `GwaReceiver` | `AMPE` **C**（rev2 由 B 上调）：7 个包有真实引用，删/禁前需产品决策 + 动态验证 |
| 设备控制（IoT） | `GenieIoT`(`HouseService`) + `GenieRTC`(通知/通话) + Provider `iot.tmp.service` | `GenieIoT` D；`GenieRTC` C（快照 PSS 22,329 kB 常驻，但断链风险未排除） |
| OTA | `Osupdate`(persistent) + framework 的 `RebootUpdateActivity` | B：可禁用，升级窗口再启用；删除会破坏 framework 侧重启升级流程 |

## 10. 修订说明

本文件为 rev3（2026-11-20）。修订项、依据与仍未验证的事项集中记录在 [revisions.md](revisions.md)。

- **rev3**：新增用户保护说明——六个 App（当贝桌面、MT 管理器、ES、权限狗、EasyTouch、Magisk）受保护，
  但这**不改变**本文件的依赖结论：依赖关系是事实，保护是可执行性约束。受保护包的技术分类照旧保留
  （如 ES 仍是 A 类候选、当贝/权限狗仍是 B 类），只是不再转化为任何删除/禁用动作。
  另外：`is_platform_authority()` 改为边界感知前缀匹配，`com.android.settingshelper.*` 不再被当作平台 Provider。
- **rev2**：平台 Provider 过滤改用 `filters.is_platform_authority()`（修复 `split('.')[0]` 缺陷）、
  AMPE 引用计数与归类修正、唤醒锁与 CPU 证据的归属限定。
