# T9-17：原厂天气语音链路与接口能力全面研究报告

- 日期：2026-11-26 · 分支 main · 类型：纯研究（零代码修改、零设备写入）
- 仓库：`iyim/tgz02`（工作区 `D:\tgz02\OS\system`，基线 `c61c093e`）
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），armeabi-v7a，Magisk root
- 原厂语音宿主：`com.alibaba.ailabs.genie.smartapp` 8.7.1.18（uid 1000，sharedUser `android.uid.system`）
- 反编译源：`_analysis/t506d/jadx_out/sources/`（vdex→dex→jadx，12,091 类；下文简称 **JX**）
- 资源目录：`system/app/smartapp/smartapp_decompiled/res/`（下文简称 **RES**）
- 结论标记：**[静]** 静态代码证据（给文件:行号）· **[机]** 真机日志实证 · **[推]** 由代码关系推断，未单独验证 · **[未]** 无证据，不做假设

---

## 0. 一页结论（对应任务书 12 问）

| # | 问题 | 结论 | 证据 |
|---|---|---|---|
| 1 | 原厂天气语音完整链路？ | 唤醒/ASR 在 `:core`（云端流式识别）→ 云端 NVU 出 `domain=weather` 结果 → `:core` 主进程把它转成"直跳"（pageType + renderData）→ GenieRouter → `BaseService`（`:business` 进程）→ `MainActivity` → `DomainFragmentFactory` → 天气 Fragment。语音回答由云端 `spokenText` 走原厂 TTS | §2 [静][机] |
| 2 | 天气意图谁识别谁处理？ | **识别全在云端**（NVU），本地不做 NLU；本地只负责把云端结果分发到 UI。设备上没有任何本地天气意图解析代码 | §2.3 [静] |
| 3 | 天气数据从哪来？ | 两条独立通道：①语音链路：云端 DM 协议随会话下发 renderData（不需要设备再请求）；②设备主动拉取：MTOP 接口 `mtop.alibaba.aicloud.t.desktop.getweather`（目前仅闹钟"天气闹钟"在用，30 分钟缓存） | §3 [静] |
| 4 | 有可直接调用的天气接口吗？ | 有：`mtop.alibaba.aicloud.t.desktop.getweather` v1.0，参数 `authInfo`（{token,userId,uuid} JSON）+ `timestamp`，POST/HTTPS。但鉴权依赖 SecurityGuard 签名指纹白名单（appKey 26062527 + authCode），非原厂签名 App 无法复用 | §3.2 [静] |
| 5 | 有独立天气 SDK/so？ | **没有**。天气是纯 Java（mtopsdk + fastjson），没有任何天气专用 so；libsmartbox/agspeech 都不含天气逻辑 | §3.4 [静] |
| 6 | 天气 UI 由谁负责？ | smartapp 内 `:business` 进程的 `com.alibaba.ailabs.basedomain.ui.MainActivity`（singleInstance）+ 5 个天气 Fragment；没有独立天气 APK | §4 [静] |
| 7 | 数据与 UI 之间怎么传？ | Intent extra：`renderData`（JSON 字符串，可 Serializable 的 `WeatherData`）+ `pageType` + `reply` + `sessionId`，从 `BaseService` `startActivity` 传入，Fragment `getArguments().getSerializable("data")` 读取 | §4.2 [静] |
| 8 | 能否不启动原厂界面独立取数？ | 语音链路的数据与 UI 不可拆（数据随云端会话下发，UI 是它唯一落点）；MTOP 主动接口理论上可拆，但被 SecurityGuard 签名鉴权挡住。**结论：天气数据不适合独立复用** | §5 [静] |
| 9 | 保留原厂 ASR/TTS、TG-Z02 自己处理天气意图？ | **可以，且基础设施全部现成**：`intent_route` 已有 `IR_WEATHER` 分类（目前 `route=native` 放行原厂）；照 T9-15/16 闹钟模式换成自有 `weather_skill` + 独立天气 API + TtsExec 播报即可，一行配置切换、可回退 | §5/§6 [静][机] |
| 10 | 能否完全用自己的 UI？ | **能**。原厂天气 UI 只是 renderData 的展示壳，与语音引擎零耦合（T9-02 已证第 4 级独立）。我们用自己的页面 + 自己的数据源即可，不需要原厂任何 UI 组件 | §4/§5 [静][机] |
| 11 | 不能复用时的替代方案？ | 独立天气 API（方案 D）：设备端 `ai_worker` 里 dlopen 系统 libcurl（T5-06C 已验证 TLS/HTTP 200）请求免费天气源，格式归一化后供技能与 UI 共用 | §5.5 |
| 12 | 推荐架构？ | **方案 D**：`IR_WEATHER` → `weather_skill`（独立 HTTP 天气 Provider，城市来自语音槽位或固定城市）→ `t8_skill_result` 文本 → TtsExec 播报；TG-Z02 天气页用同一份 JSON。原厂链路作为回退保留（route_intents 里把 weather 位去掉即回原厂） | §6 |

---

## 1. 原厂天气整体架构图

```
                         ┌──────────────────────────────────────────────────────┐
                         │                 阿里云端（天猫精灵）                    │
                         │  NVU/DM：domain=weather → spokenText + renderData     │
                         │  appDetailInfo{url=genie://com.alibaba.ailabs.basedomain│
                         │                pageType=weather*.xxx, renderData=…}   │
                         └───────▲──────────────────────────────▲───────────────┘
                                 │ websocket 会话               │ MTOP(HTTPS)
                                 │ (唤醒/ASR/TTS/DM)            │ mtop.alibaba.aicloud.t.desktop.getweather
┌────────────────────────────────┴───────────────┐   ┌──────────┴─────────────────────────┐
│ smartapp :core（语音引擎，uid 1000）             │   │ smartapp :business（业务/UI 进程）   │
│                                                │   │                                    │
│ KWS libagspeech/libwakeup_bin (本地唤醒)         │   │ BaseService (exported Service,     │
│ ASR AGSpeechEngine → 云端流式识别                │   │   action=VIEW genie://…basedomain) │
│ NLU 结果: ProtocolData{writtenText,spokenText,  │   │   ├ weather*.xxx → WeatherData     │
│   extra.appDetailInfo[], commandInfo}           │   │   └ startActivity(MainActivity)    │
│ PreResultScreenMode.preOnNLPResult              │──▶│ MainActivity (singleInstance)      │
│   → AppUtils.openAppBySessionID                 │路由│   └ DomainFragmentFactory           │
│   → GenieRouterClient.open(uri)                 │   │       ├ WeatherTodayFragment       │
│ AiLabsCore(JNI→libsmartbox) TtsManager 播报      │   │       ├ WeatherOtherDayFragment    │
│   (云端 TTS 流 → UTPPlayer → OpenSL ES)          │   │       ├ FourDaysWeatherFragment    │
│                                                │   │       ├ AqiFragment                │
│ LocationManager (高德 AMap) → GpsStatus{lat,    │   │       └ WeatherSpfTodayFragment    │
│   lon, city} → statusChange(204) → 云端上下文    │   │ AlarmClockManager.getWeatherData   │
└────────────────────────────────────────────────┘   │   (MTOP, 30min 缓存, 天气闹钟专用)   │
                                                     └────────────────────────────────────┘
TG-Z02 自有侧（现状）：ai_worker (root) ← events.jsonl ← tgb_bridge(hook) ← :core ASR
   intent_route: IR_WEATHER → route=native（放行原厂）→ TtsExec 守卫放行原厂播报
```

关键事实：**语音与天气 UI 分属两个进程**（`:core` vs `:business`），之间只有"路由 Intent"一条弱耦合通道——这正是"保留语音引擎、替换 UI"可行的结构性依据（与 T9-15 闹钟放行、T9-02 UI 独立结论一致）。

## 2. 天气语音完整时序（逐环节代码证据）

### 2.1 唤醒与 ASR（复用 T8/T9 既有结论，[机]）

- 唤醒：`libagspeech.so` `XEGNLocalEngine::startWakeupEngine` / `ALIUnconvWakeup::startWakeup`，模型 `libwakeup_bin_S1L_S3.so`（非 ELF blob）。证据：`T9_03_FACTORY_BACKEND_INTERFACE_MAP.md` §4.1-4.3。
- ASR：`GenieApi::startTalk → SessionManager::onStartTalk → AGSpeechEngine::startListen`，识别在云端（`onStream` 流式文本 → `onCloudEOUEvent` 结束）。真机日志样本：`T9_02_OFFICIAL_UI_INDEPENDENCE.md` §5（`onStartTalk sessionId=… → onStream 天天/天猫/天猫精灵 → onCloudEOUEvent`）。

### 2.2 NLU 与天气意图（[静]+[机]）

- 本地**没有任何天气意图解析**：JX 全库检索 `"weather"` 作为意图串只出现在 `SessionPreference.DOMAIN_WEATHER = "weather"`（`com/alibaba/ailabs/genie/assistant/action/SessionPreference.java:104`）；无本地规则、无本地分词。
- 意图结果对象：`ProtocolData`（`geniesdk/protocol/ProtocolData.java`）携带 `writtenText`（识别文本）、`spokenText`（云端回答文本）、`retCode`、`extraData = ProtocolExtra`：
  - `nluResultJSON / nlgResultJSON / dmResultJSON`（`geniesdk/protocol/ProtocolExtra.java:11-13`）
  - `appDetailInfo: List<AppDetailInfo>`（:5）——**天气直跳的载体**
  - `commandInfo{commandDomain, command, commandParams}`（`CommandInfo.java:4-8`）
- 回调入口：native 引擎 → `NativeUIManager.onRecognizeResult(sessionId, protocolData)`（`geniesdk/ui/NativeUIManager.java:235`）→ 主线程 MSG 1009 → `onNLPResult()`（:251-280）→ 先给 `AguiCtx.getPreOnResultScreenMode().preOnNLPResult(...)` 一次本地预处理机会，再 `iBaseView.onRecognizeResult(...)`。
- `AguiCtx` 装配（`:core` 启动时）：`assistant/MainApplication.java:143-152` —— `AguiCtx.init` + `setUiManager(new GenieAssistantUIManager)` + `setPreResultScreenMode(new PreResultScreenMode)`。

### 2.3 天气直跳的路由（[静]）

`PreResultScreenMode.preOnNLPResult → onCommand → onInnerCommand`（`assistant/controller/PreResultScreenMode.java:91-149`）里，**只有闹钟域**在本地构造跳转（:142-148，`url="genie://com.alibaba.ailabs.basedomain"`、`pageType = commandDomain + "." + command`、`renderData = jSONObject.toString()`）。天气域走的是通用分支：

- `onAppsJump(protocolData, i)`（:310-336）：遍历 `protocolExtra.appDetailInfo`，对每一项调 `AppUtils.openAppBySessionID(...)`。
- `AppUtils.openAppBySessionID`（`assistant/Utils/AppUtils.java:250-297`）→ `openURIByRenderData`（:101-159）：构造 Bundle `{renderData, sessionId, pageType, extension, agmcCallbackId, renderType, askAgain, fromtype="voice"}` → `GenieRouterClient.getInstance(context).open(url, jumpType, packageName, map, bundle)`（:125）。
- `GenieRouterClient.open`（`genie/router/client/GenieRouterClient.java:60-124`）→ `GenieAIRouter.openByUri`（`genie/router/GenieAIRouter.java:573-649`）：jumpType==1 时 `intent = VIEW(genie://com.alibaba.ailabs.basedomain)` + putExtras(bundle) + `setPackage` + **`context.startService(intent)`**（:626，失败回退 startActivity）。

天气的 `appDetailInfo`（url/pageType/renderData）由云端 DM 协议随会话下发（`AppDetailInfo.java:4-20` 字段即协议字段）。**[推]**：`pageType` 取值 `weatherBaseRealtime` 等（见 §4.3）只能来自云端下发——本地代码没有任何地方为 weather 构造这些串（全库检索 `weatherBase` 只在 BaseService/DomainFragmentFactory 的消费端出现）。

### 2.4 BaseService 接收与二次分发（[静]）

- Manifest：`RES/AndroidManifest.xml:969-975` —— `com.alibaba.ailabs.basedomain.ui.BaseService`，`exported=true`，`process=":business"`，intent-filter = `VIEW + DEFAULT + scheme=genie host=com.alibaba.ailabs.basedomain`（与跳转 url 精确匹配）。
- `BaseService.onHandleWork`（`basedomain/ui/BaseService.java:129-752`）：
  - 读 extras：`renderData`(:148)、`reply`(:150)、`sessionId`(:151)、`pageType`(:155)、`askAgain`(:156)；
  - pageType 哈希 switch（:162-495）：`weatherBaseRealtime→case 18`、`weatherBaseSingleToday→19`、`weatherBaseSingleNotToday→20`、`weatherBaseMultiWithoutToday→22`、`weatherTemperatureRealtime→23`、`weatherTemperatureToday→24`、`weatherTemperatureNotToday→25`、`weatherAqiToday→26`、`weatherCarwashRealtime→27`、`weatherCarwashToday→28`、`weatherDryingRealtime→29`、`weatherDryingToday→30`、`weatherDryingNotToday→31`、`weatherDressRealtime→32`、`weatherDressToday→33`、`weatherDressNotToday→34`、`weatherTemperatureMultiWithToday→35`、`weatherTemperatureMultiWithoutToday→36`、`weatherBaseMultiWithToday→21`（case 18-37 全部走 :666-688 同一段：`new WeatherData(stringExtra)` + `setPageType`）；
  - `preproccessWeatherData`（:764-770）：`weatherData.size() >= 1` 才继续，否则"empty weather data, just result"（只播报不开屏）；
  - 闹钟页走 `AlarmListActivity`，其余（含天气）走 `MainActivity`（:729-733），extras 同名透传 + `startActivity`（:734-740）。
- 运行日志可观测（[机] 复核方式）：`APPLog.e("BaseService", "BaseService renderData:" + …)`（:152）——真机 logcat 会直接打出云端下发的天气 JSON 原文，这是后续"旁听原厂数据"最省力的观察点。

### 2.5 MainActivity → Fragment（[静]）

- `MainActivity`（`basedomain/ui/MainActivity.java`，singleInstance，`RES/AndroidManifest.xml:965-968`）：`onCreate` 里 `UIManager.getFragmentClass().observe(...)`（:216-224）→ `handleNewFragment`（:245-251）→ `replaceFragment`（:348-353，replace `R.id.root_layout`）。
- `handleDomain(pageType, data)`（:355-362）→ `DomainFragmentFactory.getFragment(str, serializable)`（`basedomain/ui/DomainFragmentFactory.java:35-96`）：

| pageType | Fragment |
|---|---|
| weatherBaseRealtime / weatherCarwashRealtime / weatherDryingRealtime / weatherDressRealtime / weatherTemperatureRealtime | `WeatherTodayFragment` |
| weatherSpfToday | `WeatherSpfTodayFragment` |
| weatherAqiToday | `AqiFragment` |
| weatherBaseSingleNotToday / weatherTemperatureNotToday / weatherDryingNotToday / weatherDressNotToday / weatherBaseSingleToday / weatherTemperatureToday / weatherCarwashToday / weatherDryingToday / weatherDressToday | `WeatherOtherDayFragment` |
| weatherBaseMultiWithToday / weatherBaseMultiWithoutToday / weatherTemperatureMultiWithToday / weatherTemperatureMultiWithoutToday | `FourDaysWeatherFragment` |

数据以 `bundle.putSerializable("data", (WeatherData) serializable)` 传入（:57/62/66/78/85）。

### 2.6 语音播报与屏幕同步（[静]+[机]）

- 回答文本 `spokenText` 在 `:core` 由 `TtsManager::playTts`（libsmartbox.so 0x11fafc）走云端 TTS 流 → `AudioManager::processTtsStart` → `NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_PLAY/COMPLETE`（真机日志样本：`T9_02` §5；事件枚举：`geniesdk/ui/NativeUIManager.java:446-485`，`AUDIO_STATUS_PLAY=0 / COMPLETE=12`）。
- UI 与播报的生命周期通过 session 同步：`GenieAssistantUIManager.onRecognizeResult`（`assistant/GenieAssistantUIManager.java:660-690`）在 retCode==0/4 时延迟 1-2 秒收 UI（MSG 10008）；TTS 播放中 `setScreenAlwaysOn(true)` + 70 s 唤醒锁（:849-853）。
- 天气页自身不参与播报；`WeatherData` 里也没有任何播报字段。**[推]** 播报文本完全由云端 NLG 生成。

### 2.7 错误与边界处理（[静]）

| 场景 | 处理 | 证据 |
|---|---|---|
| renderData 为空/解析失败 | `WeatherData` 构造函数 try/catch，`weathers` 保持空列表；`preproccessWeatherData` 判 `size()<1` 不开屏，只留语音回答 | `model/weather/WeatherData.java:10-23`、`BaseService.java:764-770` |
| 路由跳转失败 | `GenieAIRouter.openByUri` 异常时回退 `startActivity`，再失败仅打日志 | `GenieAIRouter.java:644-649` |
| appDetailInfo 版本不匹配 | `openAppBySessionID` 检查 minVersion/maxVersion，不满足直接返回 false（不跳转，原厂靠 spokenText 兜底回答） | `AppUtils.java:284-292` |
| 网络失败（MTOP 路径） | `GCSMtop.Builder` 对 `FAIL_SYS_SERVICE_TIMEOUT / ANDROID_SYS_NETWORK_ERROR` 自动重试 3 次（连接/读超时各 30 s） | `genie/second/gcs/service/GCSMtop.java:277-298, 336-347` |
| 定位失败 | `LocationManager` 重试最多 5 次（每次失败 `stopLocation()+startLocation()`），仍失败只打日志放弃；GPS 状态不上报云端 | `assistant/location/LocationManager.java:80-98` |

## 3. 天气接口与数据来源

### 3.1 两条数据通道

| 通道 | 触发方 | 数据去向 | 证据 |
|---|---|---|---|
| ① 云端 DM 会话下发（**语音主通道**） | 用户问天气，云端 NVU/DM 直接把结果放进 `appDetailInfo.renderData` | `BaseService → WeatherData → UI` | §2.3-2.5 [静][推] |
| ② 设备主动 MTOP 拉取（**仅天气闹钟**） | `AlarmClockManager.readyWeatherData()`（闹钟 category==6 时取天气码选闹钟背景图） | `WeatherBaseInfo{weatherCode, temperature, city}`，30 min 内存缓存 | `basedomain/ui/alarm/AlarmClockManager.java:580-637`、`mtop/response/WeatherBaseInfo.java` |

**没有本地天气数据库、没有天气缓存文件、没有逐小时/预警的本地存储**——全库无 SQLite 天气表、无 weather 缓存目录（`zcachecore`/`sqlcipher` 是其他业务）。

### 3.2 MTOP 接口（通道②，[静]）

请求（`basedomain/mtop/request/GetweatherRequest.java`、`basedomain/mtop/NetApi.java:13-18`）：

```
API_NAME   = mtop.alibaba.aicloud.t.desktop.getweather
VERSION    = 1.0
NEED_ECODE = false, NEED_SESSION = false
data = { authInfo: GenieSDK.getAuthInfoStr(),      // JSON 字符串 {"token":…,"userId":…,"uuid":…}
         timestamp: System.currentTimeMillis()+"" }
调用   = MtopHelper.getInstance().asyncRequestApi(req, GetweatherResponse.class, listener, flag, null)
协议   = mtopsdk 默认（HTTPS，POST），网关域名由 mtopsdk 环境配置决定（静态未固定，[未]）
```

- `authInfo` 来源：`GenieSDK.loadAuthInfo()` → `UserDataProvider.getInfo(context)` → `content://com.alibaba.ailabs.genie.assistant.provider/user_data` 的 extras（`uuid_key/userid_key/token_key`）（`genie/second/genie/GenieSDK.java:137-144`、`genie/assistant/sdk/asr/UserDataProvider.java:28-59`）。**即 token 由 `:core` 登录态持有，任何进程都能读该 Provider（T9-05 已验证可外部访问），但 token 只在设备已绑定账号时有效。**
- MTOP 签名链：`SmartAppApplication.initAppEnv()`：appKey `"26062527"`、authCode = `SignUtils.getSecurityGuardAuthCode(ctx)` = **对 APK 签名证书做 SHA-1 指纹 → 查 `SignAuthMaps` 白名单**（主签名指纹 `27196e386b875e76adf700e7ea84e4c6eee33dfa` → `"magicbox_d"`）（`tg/mtop/SignUtils.java:51-57`、`tg/mtop/SignAuthMaps.java:14-25`、`genie/smartapp/SmartAppApplication.java:353-369`）。SDK 初始化：`SDKInitController.initMtop()`（`genie/second/SDKInitController.java:201-212`，`Mtop.instance(INNER, ctx, ttid)`，SecurityGuard 先行 `initSecurityGuard()` :197-199）。
- **含义**：第三方 App 直接调该接口需要 ①拿到设备 user_data token，②通过 SecurityGuard 签名校验（签名指纹必须在白名单）。TG-Z02 自有 APK 两者都不满足 → 方案 A/C 的硬障碍（详见 §5）。

### 3.3 响应数据结构（[静]，直接来自反编译代码）

`GetweatherResponseData.ModelBean`（`basedomain/mtop/response/GetweatherResponseData.java:24-105`）：

```
model: {
  dateTime  : String(毫秒时间戳)
  weather   : { code: "000"(晴)/"100"(多云)/"2xx"(雨)/"3xx"(雪)/"400"(雾)/"5xx"(霾沙尘), name: "晴" }
  temperature:{ current, currentDesc, feelLike, high, highDesc, low, lowDesc }   // 全 String
  wind      : { direct, directDesc, power, powerDesc, powerName, speed }
  humidity  : { value }
  airQuality: { aqi, level, levelDesc, airQualityDesc, pm25, pm10, no2, so2, co, o3 }
  area      : { area, areaCode, city, province, country, countryId, countryType,
                latitude, longitude, address, detail, fullName, isCapital, mobile }
  indexMap  : { ZWX_INDEX:{code,degree,desc,name}(紫外线), CY_INDEX(穿衣), YD_INDEX(运动),
                JT_INDEX(交通), GM_INDEX(感冒), HZ_INDEX(化妆), DY_INDEX(钓鱼),
                KQWRKS_INDEX(空气污染), BXGM_INDEX, XC_INDEX(洗车) }        // :365-846
  warnings  : List<?>                                                        // :31，类型未反序列化，结构[未]
}
```

`WeatherData`（语音 UI 用）= **renderData 是"每日对象"的 JSON 数组**，每个元素就是上面 ModelBean 的同构 JSON（`WeatherData.java:12-19` 对 `JSONArray` 逐元素 `new WeatherOneDay(String)`，`WeatherOneDay.java:15-78` 按字段 `airQuality/area/dateTime/temperature/weather/wind/indexMap` 惰性解析）——即语音通道与 MTOP 通道**共享同一份数据 schema**（[推]，由两组解析代码的字段一致性得出）。`FourDaysWeatherFragment` 用 `mData.getWeatherCode(0..3)` + 折线（`WeatherBrokenLine`），说明多日报文至少含 4 天。

**字段存在性结论**：当前温度/最高最低温/体感/湿度/风力风向/空气质量全项/生活指数(含紫外线) → 存在 [静]；逐小时预报 → **不存在**（ModelBean 无 hourly/hourlyForecast 字段）[静]；天气预警 → 仅有 `warnings` 占位（类型未解析、UI 无消费点）→ 存在字段但**实际能力[未]**；逐 4 天预报 → 存在 [静]（UI 消费 4 天）。

### 3.4 天气专用 SDK/so（[静]）

- `libsmartbox.so`/`libagspeech.so`/`libaceNlu.so` 等全部 `:core` 库的 `.dynsym` 中无任何 weather 符号（T9-03 §4.1 符号清单复核）。
- 天气逻辑 100% 在 Java 层：`com.alibaba.ailabs.basedomain.(mtop|model.weather|ui.weather)` + mtopsdk + fastjson。
- **不存在独立天气 SDK 或 so。**

### 3.5 城市/定位来源（[静]）

- 高德定位（`:core` 主进程装配时启动，`MainApplication.java:151` `LocationManager.getInstance().startLocation`）：`AMapLocationClient` 单次定位，成功后 `StatusManager.statusChange(204, GpsStatus{latitude, longitude, city}, true)` 交 native 层上报云端（`assistant/location/LocationManager.java:80-126`、`geniesdk/status/StatusManager.java:8,19-23`）。
- 天气报文里的城市（`area.city/province`）由**云端**按设备上报的 GPS 状态与账号设置解析，设备端代码不做城市编码转换；`Area.areaCode` 只在报文中出现（消费端未用）。
- 语音问"某城市天气"时城市槽位同样由云端 NVU 解析（本地无城市词典）[推]。

### 3.6 鉴权汇总

| 校验 | 是否存在 | 说明 |
|---|---|---|
| 设备身份/账号 | 存在 | MTOP `authInfo{token,userId,uuid}`；语音会话本身在 `authorize/bindUser` 登录态 websocket 内 |
| MTOP 签名 | 存在 | SecurityGuard + 签名指纹白名单（§3.2） |
| 语音会话鉴权 | 存在 | 原厂 ws-gateway 会话（T9-03 §4 已记录） |
| 接口返回的 token 刷新 | 未知 [未] | 未见天气专用 token 逻辑 |

## 4. 原厂天气 UI 全面研究

### 4.1 归属与进程

- 全部在 smartapp（`com.alibaba.ailabs.genie.smartapp`），`:business` 进程；**没有独立天气 APK/应用**。
- 宿主 Activity：`basedomain/ui/MainActivity`（singleInstance，landscape）。天气卡片不能脱离它独立运行（Fragment 依赖 AppCompatActivity + `DayWeatherConfig` ViewModel + `GenieLayoutInflater`）。

### 4.2 数据传入方式

Intent extra（`renderData` String + `sessionId` int + `pageType` + `reply`）→ BaseService 组装 `WeatherData`（Serializable）→ `intent.putExtra("renderData", serializable)` → Fragment `arguments.getSerializable("data")`。无 AIDL、无 ContentProvider、无跨进程数据面——**UI 与数据面解耦点是"一个 Intent"**，这对 TG-Z02 意味着：我们完全可以用自己的 Activity 消费同构 JSON，而不需要碰原厂任何代码。

### 4.3 布局与资源（[静]，RES 实测）

| 资源 | 路径（RES 相对） |
|---|---|
| 今日天气布局 | `layout/base_domain_weather_today_fragment.xml` + `_hd` 变体 |
| 单日(非今天)布局 | `layout/base_domain_weather_other_day_fragment.xml` + `_hd` |
| 四日布局 | `layout/base_domain_weather_four_days_weather.xml` + `_hd` |
| AQI 布局 | `layout/base_domain_weather_aqi_fragment.xml` + `_hd` |
| 单日全屏背景 | `drawable/weather_domain_single_bg_{qin,duoyun,yin,yu,xue,wu,shachen,mai}.webp` |
| 多日背景 | `drawable/weather_domain_mutil_bg_{同上9种}.webp` |
| 多日图标 | `drawable/weather_domain_mutil_icon_{qing,duoyun,yin,yu,xiaoyu,zhongyu,dayu,baoyu,…共35种}.webp` |
| AQI 图标 | `drawable/weather_domain_aqi_{very_good,fine,mild,middle,serious,very_serious}.webp` + `weather_domain_today_aqi_icon_*` |
| 折线控件 | 自定义 View `basedomain/ui/weather/WeatherBrokenLine.java`（最高/最低温折线） |

- 背景映射逻辑：`DayWeatherConfig.java:58-167`（weatherCode→背景/图标 ResourceId 的 HashMap，含按首字符降级）。
- 今日页布局结构（`base_domain_weather_today_fragment.xml`）：`ExitView(退出热区) + date_location(日期 星期 城市) + temperature(130dp 大字)+°C + weather_name + wind + aqi_bg/aqi`。
- **昼夜主题：未发现**。背景只有按天气现象的 9 种，无 day/night 资源变体（[静] 资源目录穷举）。动画：天气页无 Lottie/帧动画（仅有通用 loading_anim），无字体资源（继承系统/AlibabaFont 是 smartapp 其他页面用的）。
- 页面自动退出：MainActivity MSG_AUTO_BACK（20 s 或 TTS 结束后延迟，`MainActivity.java:13-38`）。

### 4.4 可复用性评估

- 布局 XML/webp 可以直接拷贝进 TG-Z02 工程（资源无混淆、无运行时加密）[静]。
- 但**不建议复用**：原厂页面绑定 `GenieLayoutInflater`（按名字串 inflate 的私有机制，`basedomain/GenieLayoutInflater.java`）、`ExitView`、UT 埋点、`DayWeatherConfig` ViewModel —— 拷过来要连带一堆依赖。TG-Z02 已有 V3 设计体系（`ui/UI_DESIGN_SYSTEM_V2_RULES.md`），按自家规范重画成本更低、一致性更好。
- **可以保留的"原厂数据能力"** = ①renderData JSON schema（字段结构照抄进自有解析器）；②weatherCode→现象名映射表（`DayWeatherConfig` 里的 000/100/2xx/3xx/400/5xx 语义可参考）；③（可选）MTOP 接口（受鉴权限制，见 §5）。**原厂 UI 组件一概不留。**

## 5. 原厂能力独立复用分析（四方案对比）

### 5.1 方案 A：自有 App 直接调原厂 MTOP 天气接口

| 维度 | 评估 |
|---|---|
| 技术可行性 | 低。依赖：mtopsdk 全家桶（anet/avenger/RemoteBusiness…）+ SecurityGuard 本地签名库（`libsgmainso-*.so` 等，需原厂 appKey+白名单指纹）+ `:core` 的 user_data token |
| 依赖原厂进程 | 是（token 来源 + SecurityGuard 初始化都锚定原厂环境） |
| 系统权限 | 不需要额外系统权限，但需要原厂签名（不可能） |
| Android 8.1/ARM32 | 兼容（原厂自己就在跑） |
| 长期维护 | 差：mtopsdk 版本绑定原厂 APK，设备侧无升级通道 |
| 产品化 | **不适合**。签名白名单无解；即使伪造也违反接口稳定性前提 |
| 变通（记入候选） | 不走 MTOP，**旁听语音链路**：BaseService 会把云端 renderData 打进 logcat（§2.4 [静]），TG-Z02 可从 logcat 抓 `"BaseService renderData:"` 拿到与原厂 UI 完全相同的天气 JSON —— 免鉴权、免网络请求、数据源与原厂 100% 一致；缺点是依赖原厂链路存活与日志格式。**[未] 未真机验证 JSON 完整性**，列为 T9-18 首个验证项 |

### 5.2 方案 B：复用原厂天气 SDK/so

**不成立**：不存在天气 SDK/so（§3.4）。可"复用"的只有 Java 类，而 Java 类同方案 A 的鉴权墙。排除。

### 5.3 方案 C：逆向原厂请求协议自实现

- 与 A 同一堵墙：MTOP 签名（SecurityGuard 动态签名，`wua`/sign 由 native 生成）不可离线复刻，工程量与风险极高。
- 云端 DM 语音协议（websocket-gateway）同样绑定设备会话鉴权，且格式随版本漂移（T8/T9 系列已多次观察到服务端开关可改变行为，如 `duplexDialogRenew`）。
- 结论：**不适合产品化**。仅"旁听"形态（§5.1 变通）值得投入——它是观察而非重放，不受签名墙限制。

### 5.4 方案 D：独立天气服务（自有 API）

| 维度 | 评估 |
|---|---|
| 技术可行性 | 高。`ai_worker` 已有 dlopen 系统 `libcurl.so` + BoringSSL + CA 校验 + 受限 JSON 解析的完整栈（T5-06C 真机 HTTP 200 验证）；加一个 `weather_provider.c` 即可 |
| 依赖原厂 | 零依赖（可完全脱离原厂运行） |
| 数据质量 | 免费源可选 Open-Meteo（免 key、全球、含逐小时）、和风天气免费档（含预警、需 key）、心知免费档；城市→经纬度可用内置城市表或 Open-Meteo geocoding |
| Android 8.1/ARM32 | 兼容（T5-06A 已验证设备 TLS/HTTP 能力清单） |
| 长期维护 | 好：不绑原厂版本；数据源抽象成 provider 接口可替换 |
| 产品化 | **适合**，是唯一满足"彻底摆脱原厂界面 + 保留可用底层能力之外自主可控"的方案 |

### 5.5 明确推荐

**推荐组合 = D 为主 + 原厂链路回退（A 的旁听变通为观测手段）**：

1. TG-Z02 语音天气默认走自有 `weather_skill`（方案 D）。
2. `worker.conf` 保留 `route_intents` 的 weather 位开关：置位时天气仍放行原厂（与 T9-15 闹钟完全同构，回退零成本）；自有技能验证稳定后把 weather 从 `route_intents` 摘除即可整体切换。
3. 原厂 renderData 旁听作为数据对照与降级源（可选阶段，验证后决定去留）。

**为什么不选"复用原厂天气数据"（任务书倾向）**：语音链路的天气数据被云端和 UI 绑死在一个 Intent 上，且主动拉取接口被签名白名单锁死——"保留原厂数据 + 换自家 UI"在天气域**没有干净的接缝**（闹钟域有 `AlarmQueryReceiver` 这样的显式接口，天气域没有等价物）。旁听 logcat 是唯一接缝，但它依附原厂进程存活，不符合"彻底摆脱"的核心方向，因此只作为对照/降级而非主路径。

## 6. TG-Z02 自有天气技能推荐架构与产品设计

### 6.1 架构（与既有栈对齐）

```
用户语音 ─ 原厂唤醒/ASR（不动） ─ events.jsonl ─ ai_worker
   intent_route: IR_WEATHER（命中词已有：天气/下雨/气温/空气质量/…，VETO 已有）
   └ weather_skill（新增，模式照 alarm_skill.c）
        ├ 城市解析：语音槽位[未，先固定城市] → conf: weather.city=…
        ├ weather_provider：dlopen libcurl → Open-Meteo（免 key）→ 归一化 JSON
        │   {city, cur:{temp,desc,code}, today:{high,low,aqi?}, days[4]:{date,desc,high,low,code}, updated}
        └ t8_skill_result.text → 既有 TTS 通道（TtsExec → 原厂 GenieApi method=4 → 原厂 TTS 播报）
TG-Z02 UI（t9_07_ui，V3 体系）：WeatherActivity（新增）
   └ 读同一份 weather JSON（backend 文件总线/Binder，模式同 play.public.json）
```

- 意图分类已就位：`intent_route.c:313-336`（IR_WEATHER hit/veto 表，真机已回归通过 `t7_04/t7_05`）。
- 技能注册位：`skill_dispatch.h` 的 `t8_skill_id` 追加 `T8_SK_WEATHER`；开关照 `skill_alarm_enabled` 增加 `skill_weather_enabled`（`worker_conf.c` 解析）。
- 与原厂的互斥：命中自有技能时按 T7-02 机制丢弃原厂回答（`route=native` 标记改为 take 标记，机制同 alarm_skill 的 PASS/TAKE 决策层，T9-15 §2 已有完整实现模式）。

### 6.2 产品方案（只给方案，不开发）

**天气主页**（VoiceHome 内新卡片 + 全屏页二选一先做卡片）：
- 大字当前温度（≥60sp）+ 天气现象图标（自有插画，青蓝系，按 `UI_DESIGN_SYSTEM_V2` 分类色）；
- 城市名 + 更新时间（"刚刚 / x 分钟前"）；
- 今日高/低温、空气质量（仅当数据源可靠时展示，否则整块隐藏——**儿童设备宁缺勿错**）；
- 点击卡片进详情页；卡片 15/30 min 定时刷新（BackendService 既有轮询器加一个 tick），无键盘、无输入框。

**天气详情页**：
- 4 日列表（对齐原厂 FourDays 的信息密度：日期/星期/图标/高低温），横向大卡片；
- 逐小时（若选 Open-Meteo）：8 个时间点横滑，只显示 图标+温度，儿童可读；
- 数据不可用时显示"天气开小差了，稍后再问我吧"空态（与 V3 空态规范一致）。

**语音交互**：
- 支持：今天天气/明天天气/会不会下雨（看 days[1] 的降水概率）/未来几天/几度/最高最低温/空气质量；
- 其他城市：第一阶段固定城市 + "换城市"语音指令在预设列表（≤8 个）里循环选择（点击列表也行）；第二阶段再考虑云端城市槽位；
- 播报模板（短句，儿童语速）：今天{desc}，{low}到{high}度{tail}；明天{desc}，{low}到{high}度，记得{action}；
- 播报与屏幕同步：复用 `play.public.json` 的 event_id/tts_id 状态（T9-06 已验证），天气页收到 PLAY→高亮，COMPLETE→恢复。

### 6.3 任务拆分建议

| 任务 | 内容 | 前置 |
|---|---|---|
| T9-18.1 | 真机旁听验证：问 5 类天气话术，抓 `BaseService renderData:` 原文，固化 schema 样例库 | 无 |
| T9-18.2 | `weather_provider.c`（Open-Meteo，设备端真机连通性 + 城市固定配置） | 无 |
| T9-18.3 | `weather_skill.c` + `T8_SK_WEATHER` + 开关配置 + host 单测（照 alarm 三件套） | 18.2 |
| T9-18.4 | 决策层切换验证（take 路径、回退开关、真人语音验收） | 18.3 |
| T9-18.5 | 天气卡片 + 详情页（V3 体系，VoiceHome 接入） | 18.2（UI 可先行用假数据） |
| T9-18.6 | 空态/失败/超时与"换城市"语音 | 18.4/18.5 |

## 7. 原厂语音指令能力矩阵

| 场景话术 | 原厂支持 | 依据 |
|---|---|---|
| 今天天气怎么样 | 支持 [机] | 真机日志 `route=native intent=weather` 原厂回答（`t7_04_voice_ux_and_native_routing_report.md` §真机 08:03:05）；pageType `weatherBaseRealtime` [静] |
| 明天天气怎么样 | 支持 [机] | `t7_05` 真机样本 D：`天猫精灵明天天气怎么样` → `native intent=weather` 原厂播报；pageType `weatherBaseSingleNotToday`/`weatherTemperatureNotToday` [静] |
| 今天会下雨吗 | 支持 [推]（决策层真机 PASS，原厂侧未单独留日志样本） | `t7_05` 悬空句合并样本 `明天会下雨吗` → weather；云端槽位页型未留证 |
| 未来几天天气 | 支持 [静] | `weatherBaseMultiWithToday/WithoutToday` → FourDaysWeatherFragment（4 日折线） |
| 某城市天气 | 支持 [推] | 云端槽位机制通用；本地无城市处理代码但也没有拦截点 |
| 现在多少度 | 支持 [静] | `weatherTemperatureRealtime`（temperature 域独立页型存在） |
| 今天最高最低温 | 支持 [静] | `weatherTemperatureToday/NotToday/Multi*` |
| 空气质量 | 支持 [静] | `weatherAqiToday` → AqiFragment（AQI 全项字段在 schema 中） |
| 穿衣/洗车/晾晒 | 支持 [静] | `weatherDress*/weatherCarwash*/weatherDrying*` 全系列页型 + indexMap 生活指数 |
| 紫外线 | 支持 [静] | `weatherSpfToday` → WeatherSpfTodayFragment（ZWX_INDEX） |
| 天气预警 | **[未]** | schema 有 `warnings` 字段但类型未解析、无 UI 消费点，真机表现未知 |

- 所有页面型**都有语音播报**（ spokenText 由云端生成）+ **全部有屏幕页**（除解析失败时只播不显，§2.7）。
- "代码中发现支持" vs "真机实际验证支持"已按 [静]/[机]/[推]/[未] 分列；真机专项验收建议并入 T9-18.1。

## 8. 代码证据索引

| 证据 | 位置 |
|---|---|
| 反编译源（vdex→dex→jadx） | `_analysis/t506d/jadx_out/sources/`（classes.dex×4，12,091 类；修复校验和方法见 `T9_03` §6） |
| 天气模型/MTOP | `com/alibaba/ailabs/basedomain/model/weather/*.java`（8 文件）、`basedomain/mtop/{NetApi,request,response}/*` |
| 链路核心 | `basedomain/ui/BaseService.java`、`basedomain/ui/MainActivity.java`、`basedomain/ui/DomainFragmentFactory.java`、`basedomain/ui/UIManager.java`、`basedomain/ui/weather/*.java`（5 Fragment + DayWeatherConfig + WeatherBrokenLine） |
| 路由层 | `genie/assistant/controller/PreResultScreenMode.java`、`genie/assistant/Utils/AppUtils.java`、`genie/router/client/GenieRouterClient.java`、`genie/router/GenieAIRouter.java`、`genie/second/gcs/service/GCSMtop.java` |
| SDK/鉴权 | `genie/smartapp/SmartAppApplication.java:353-369`、`genie/second/SDKInitController.java`、`tg/mtop/{SignUtils,SignAuthMaps}.java`、`genie/second/genie/{GenieSDK,AuthInfo}.java`、`genie/assistant/sdk/asr/UserDataProvider.java` |
| 定位 | `genie/assistant/location/LocationManager.java`、`geniesdk/status/{StatusManager,StatusModel}.java` |
| Manifest | `RES/AndroidManifest.xml:965-1015`（MainActivity/BaseService/闹钟 receiver 群）、`_analysis/manifests/Waft.xml`（WaftTpl 容器，与天气无关） |
| UI 资源 | `RES/layout/base_domain_weather_*.xml`（8 个）、`RES/drawable/weather_domain_*`（约 60 个 webp） |
| 真机日志（既有） | `my-doc/07_ai_bridge/t7_04…/t7_05…` 报告内嵌日志；`T9_02` §5 零注入链路日志 |
| 自有侧现状 | `my-doc/07_ai_bridge/android/intent_route.{c,h}`（IR_WEATHER/T7B_ROUTE_WEATHER）、`android/conf/worker.conf.example`、`android/tts_exec/TtsExec.java:345-382` |

## 9. 未确认事项与缺失材料

1. **云端→pageType 映射表**：`weatherBaseRealtime` 等串由云端下发（[推]），完整映射与触发话术对应关系需 T9-18.1 真机抓取后固化。
2. **MTOP 网关域名/环境**：由 mtopsdk 运行时配置决定，静态未见固定 host；若未来要走方案 C 需真机抓包。
3. **warnings 预警结构**：字段存在但未消费，实际形态未知 [未]。
4. **逐小时天气**：原厂 schema 无此维度，原厂能力上限为 4 日 [静]。
5. **昼夜背景**：未发现昼夜双主题资源 [静]（穷举 res 目录）。
6. **未绑定账号时天气是否可用**：语音链路依赖登录态 websocket [推]，离线表现未验证。
7. **jadx 局部反编译失败**：`GCSMtop.<init>`、`ASRManager.<init>`、`NativeClientCallback.onASRStatus` 等方法（unknown insn 0x0073），均为方法级缺口，不影响本报告结论链。
8. **真机"某城市天气"槽位样例**：未留日志样本。

## 10. 执行限制遵守声明

本轮零修改：未改原厂 APK/镜像、未动闹钟系统、未动唤醒/ASR/TTS 链路、未新增任何测试代码与设备写入；`git` 仅新增本报告文件（仓库中其他未提交改动属 T9-16 闹钟技能工作树，与本任务无关，未纳入本次提交）。
