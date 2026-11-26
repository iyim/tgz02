# T9-18 报告：天气数据旁路、独立 API 与意图接管验证

- 日期：2026-11-26 · 分支 main · 类型：真机技术验证（不开发正式功能）
- 设备：TG-Z02 / AILABS_S1L（Android 8.1 / ARM32 / Magisk root），adb 192.168.1.9:5555
- 基线：`c533c25e`（T9-16 自有闹钟）；语音链路（唤醒/ASR/TTS）全程未改
- 前置：T9-17《原厂天气链路研究》
- 证据目录：`evidence/t9-18/`（全部为本轮真机/主机产物）
- 标记约定：**[真机]** 设备实测 · **[主机]** host 测试 · **[静态]** 代码分析

---

## 0. 结论表（对照任务书决策标准）

| # | 决策标准 | 结论 | 证据 |
|---|---|---|---|
| 1 | 原厂天气链路可稳定旁路观察 | **通过** | 真机 5 句话术全部捕获 renderData，JSON 完整可解析，pageType→queryCase 映射齐备（§2）[真机] |
| 2 | 自有天气 API 在真机成功获取并解析 | **通过（含条件）** | Open-Meteo 主 API + 空气质量 API + geocoding 全部真机 200；生产解析器 ARM32 真机解析真实响应通过；api 主域出现过一次 TLS 层瞬时卡顿（§3）[真机] |
| 3 | 天气意图可可靠接管 | **通过** | 真机决策层 15/15：9 句正向全部命中 weather、4 句知识/影视全部否决、route_intents 开关语义验证（§4）[真机][主机] |
| 4 | 原厂语音不与自有 TTS 重复播报 | **通过（机制验证）** | 真机 hook 计数器 final_seen=7 / marked=2（TAKE：闹钟话术被抑制）/ passed=5（天气放行）；抑制机制与闹钟同一闸门，天气走同一闸门即成立（§4.3）[真机] |
| 5 | 闹钟/普通对话/音量无回归 | **通过** | 主机 23/23 路由单测全绿；真机闹钟会话 `route=skill alarm.set` 正常接管（§4.4）[主机][真机] |
| 6 | 数据模型与页面字段明确 | **通过** | §5 统一模型（两个数据源映射齐备） |

**结论：五项技术前提全部满足 → 建议批准进入天气技能正式开发（方案 D 架构，T9-19 起实施）。** 唯一保留条件见 §6 风险 R1（api.open-meteo.com 的瞬时 TLS 卡顿）。

## 1. T9-18.1 原厂天气数据旁路验证（真机语音）

### 1.1 方法
设备上启动全量 logcat 落盘（`/data/local/tmp/t9_18_logcat.txt`，峰值 ~191 MB），操作者用真实语音依次说出 5 句话术；同时从自有 `events.jsonl`（hook 旁听 ASR）取 sessionId 对照。事后以 `grep -F` 单模式分片提取（设备无 awk）。

### 1.2 会话与话术（[真机]，`evidence/t9-18/events_tail.txt`）

| # | ASR 文本（hook 旁听原文） | sessionId | 时间 |
|---|---|---|---|
| 1 | 天猫精灵今天天气怎么样 | 1967687 | 22:07:40 |
| 2 | 天猫精灵明天天气怎么样 | 1967695 | 22:07:50 |
| 3 | 天猫精灵今天会下雨吗 | 1967703 | 22:07:59 |
| 4 | 未来天气怎么样 | 1971803 | 22:08:06 |
| 5 | 今天多少度 | 1971807 | 22:08:13 |

（第 4 句 ASR 把"未来几天天气怎么样"识别成"未来天气怎么样"，仍正确触发多日页；第 5 句用户实际说的是"今天多少度"。）

### 1.3 renderData 捕获结果（[真机]，`evidence/t9-18/renderdata_capture.txt`）

5 个会话全部在 logcat 捕获到完整天气 renderData（每条被 GenieAIRouter 与 IPCRouter 各打印一次=同一条日志，非重复数据）：

| sessionId | pageType | queryCase | intentName | 报文内容 |
|---|---|---|---|---|
| 1967687 | TPL.RenderTemplate | current | base | homePage+hoursPage(6h)+daysPage(4d)+mojiLivePage(生活指数) |
| 1967695 | TPL.RenderTemplate | oneDay | base | homePage+daysPage(明天起 4d)，无 hoursPage |
| 1967703 | TPL.RenderTemplate | current | base | homePage+hoursPage(含 rainProbability)+daysPage |
| 1971803 | TPL.RenderTemplate | manyDays | base | daysPage(4d) only，无 homePage/hours |
| 1971807 | TPL.RenderTemplate | current | temperature | 同 current 全量（温度意图复用同一模板） |

**pageType→queryCase 映射**（对 T9-17 静态结论的重要修正）：原厂当前版本天气页不再走 `weatherBase*` 本地页（basedomain 的 pageType 是旧版路径），**现行路径是云端 Waft 模板**：`pageType=TPL.RenderTemplate`、`template=genie_voice_weather`、`bundle=https://ailabs-iot.aligenie.com/tpl2/f17fee5d22251a55d8c742677bd33e97/index.aot`（ Waft 小容器渲染），`queryCase ∈ {current, oneDay, manyDays}` 区分意图，`intentName ∈ {base, temperature}` 区分问法。语音 askAgain/traceId/commandId/asrLogId 齐全。

### 1.4 JSON 完整性验证（[主机]）
- 第 1 条 renderData 提取后 PowerShell `ConvertFrom-Json` 解析成功：template/bundle/dataSource.sort 全字段到位；
- 逐条统计：hoursPage/day 数、daysPage/day 数与 queryCase 语义一致（current=6h+4d、oneDay=4d、manyDays=4d）；
- **未发现截断、错配**；唯一"重复"是同一日志行被 Router/IPC 两个组件各打一遍（内容逐字节相同）。

### 1.5 屏幕显示 vs 截获数据对比（[真机]）
云端回答文本（logcat `Tts start`）：`明天昌平区晴转多云，气温-2度到9度。` —— 与 1967695 报文 `homePageData{areaName:昌平区, weatherName:晴转多云, low:-2, high:9}` 逐字段一致；屏幕弹出的 Waft 模板页与 `dataSource` 同源（bundle md5 `f17fee5d…` 一致）。**截获 JSON = 屏幕数据源，无损。**

### 1.6 旁路可靠性评估

| 方式 | 可靠性 | 说明 |
|---|---|---|
| **logcat 抓 `GenieAIRouter` 行** | 中-高 | 本轮 5/5 全捕获；缺点：a) 依赖原厂日志格式与等级（W 级，可被改）b) 设备 logcat 被原厂刷得很快，必须落盘抓 c) 无订阅语义，只能轮询/常驻 tail。**适合作为对照与降级，不适合作为主数据源** |
| **结构化旁路（Intent/Provider 拦截）** | 技术可行但不建议 | 现行天气数据走 `waft://…/tpl` 直跳（JX `AppUtils.openURIByRenderData` → GenieRouterClient → WaftTplActivity），ContentProvider/广播均无天气面；要结构化拿只能 hook `GenieRouterClient.open`（:core 内 native hook 可做到，T6 injector 框架现成），但它仍是"旁听"，且比 logcat 多一层注入维护成本 |
| **自有数据源（Open-Meteo）** | 高 | 见 §2；与原厂链路完全解耦 |

**结论**：logcat 旁路验证了"原厂数据可完整观察"，但正式天气技能应以自有 API 为主、logcat 仅作数据对照。

## 2. T9-18.2 独立天气 API 真机验证（Open-Meteo）

设备端 `/system/bin/curl` 7.52（BoringSSL，CA=/system/etc/security/cacerts，T5-06C 已验证栈）。

### 2.1 请求结果（[真机]，脚本与原始 JSON 在 evidence/t9-18/）

| 测试 | URL（无密钥参数） | HTTP | 耗时 | 结果 |
|---|---|---|---|---|
| 北京 全量预报 | `https://api.open-meteo.com/v1/forecast?latitude=39.9042&longitude=116.4074&current=temperature_2m,relative_humidity_2m,apparent_temperature,weather_code,wind_speed_10m,wind_direction_10m&hourly=temperature_2m,precipitation_probability,weather_code&daily=weather_code,temperature_2m_max,temperature_2m_min,precipitation_probability_max&timezone=Asia%2FShanghai&forecast_days=4` | 200 | 2.10 s | current{temp 6.7,feels 3.8,hum 46,code 2,wind 1.7m/s@302°}+hourly 96 项(含降水概率)+daily 4 天{codes 3,1,0,3; max 12.6/10.1/8.9/7.2; min 0.3/3.3/0.7/-0.8; rainProb 0,0,0,0} |
| 东京 | 同构（35.6895,139.6917, Asia/Tokyo） | 200 | 2.28 s | 200 OK |
| 上海 | 同构（31.2304,121.4737） | 200 | 1.06 s | 200 OK |
| 中文 geocoding | `https://geocoding-api.open-meteo.com/v1/search?name=北京&count=1&language=zh` | 200 | 3.16 s | `北京/中国 lat=39.9075 lon=116.39723 tz=Asia/Shanghai` |
| 空气质量（独立 API） | `https://air-quality-api.open-meteo.com/v1/air-quality?latitude=39.9042&longitude=116.4074&current=pm10,pm2_5,carbon_monoxide,nitrogen_dioxide,sulphur_dioxide,ozone,us_aqi` | 200 | 2.71 s | pm2.5=299.0 pm10=318.5 us_aqi=287 no2=70.4 so2=58.5 o3=0.0 |

- TLS 证书校验：全程默认开启（未用 -k），失败会 60；全部 200 = 校验通过。
- DNS：设备解析正常（ping 51.81.167.44；curl 自动解析）。
- 逐小时 + 降雨概率：hourly `precipitation_probability` 96 项真机返回。
- 中文城市→经纬度：geocoding 中文可用；**但注意 wttr.in 对中文名也可直接解析**（对照测试 §2.3）。

### 2.2 ARM32 JSON 解析验证（[真机]，`om_parse_probe_output.txt`）
用**生产 worker 同款受限解析器**（`model_json.c`，无动态分配/显式容量）编译 ARM32 探针，在设备上解析刚拉取的真实 Open-Meteo 响应（3756 B）：

```
loaded 3756 bytes
grammar: OK (full document consumed, no bad state)
current.temperature_2m = 6.7
current.apparent_temperature = 3.8
current.relative_humidity_2m = 46
current.time = 2026-11-26T21:45
daily.time[0..3] = 2026-11-26 / 27 / 28 / 29
```

语法全量校验（mj_skip 全文档消费）+ 按路径取数全部通过。**生产解析器可直接消费 Open-Meteo 报文。**

### 2.3 网络风险实测与备源（[真机]）
- `api.open-meteo.com` 出现过一次 TLS 握手无响应（ClientHello 后挂起，15 s 超时，HTTP=000）；数分钟后同一端点恢复（200）。同网络对照：`api.deepseek.com` TLS 正常、`open-meteo.com`（根域）正常、`api.seniverse.com` 正常（TLS 通、业务 401）→ **瞬时抖动，非稳定封锁，但必须按"可能失败"设计**。
- 备源真机验证：`https://wttr.in/<city>?format=j1`（北京/上海/东京/中文名均 200，1.2~2.6 s，39 KB 全量 JSON：current_condition{temp_C,FeelsLikeC,humidity,winddir16Point,windspeedKmph,uvIndex}+weather 3 天×8 时段{chanceofrain,weatherCode}+nearest_area{lat,lon}）→ **作为 Open-Meteo 的故障切换源直接可用**。
- 生产建议：双源顺序失败切换（Open-Meteo → wttr.in），各带一次重试 + 25 s 上限。

## 3. T9-18.3 天气意图接管能力验证

### 3.1 真机决策层测试（[真机]，`weather_live_decision_output.txt`，15/15 PASS）
设备上 dlopen **已部署的** `/system/tgz02/lib/libtg_hook.so`，调用真实 `t8_to_on_final`：

| 话术 | 期望 | 实测 |
|---|---|---|
| 今天/明天/后天天气怎么样 | weather 命中 → PASS(原厂) | ✅ ×3 |
| 明天会下雨吗 | 同上 | ✅ |
| 现在多少度 / 今天最高温是多少 | 同上 | ✅ ×2 |
| 空气质量怎么样 | 同上 | ✅ |
| 北京天气怎么样（城市槽位） | 同上 | ✅ |
| 未来几天天气怎么样 | 同上 | ✅ |
| 天气是怎么形成的 / 我想聊聊天气 / 天气之子好看吗 | 知识/影视 → TAKE(AI) | ✅ ×3 |
| 定早上七点的闹钟（T9-16 回归） | TAKE（自有闹钟） | ✅ |
| 把音量调到50（音量回归） | PASS(原厂) | ✅ |
| 天气位关闭（mask 0x1FD）时问天气 | TAKE + why=AI_INTENT_OFF | ✅ |

第 15 条验证了 **route_intents 开关语义**：把 weather 位从掩码去掉，同一句话立即从"放行原厂"变成"接管"——即生产上通过 `worker.conf`/injector 就能一键恢复原厂天气。

### 3.2 主机路由单测（[主机]，`weather_route_unit_test_output.txt`，23/23 PASS）
覆盖任务书全部 9 类话术 + 4 条否决 + 4 条回归。本轮修复两个分类缺口（改动已进本轮构建）：
- `intent_route.c` IR_WEATHER 命中词 += `多少度/几度/最高温/最低温/高温/低温`（"今天多少度""最高温是多少"此前漏判）；
- IR_WEATHER 否决词 += `水温/体温/室温`（非天气的"多少度"）。

### 3.3 原厂播报抑制与自有 TTS（[真机]）
- 抑制机制即 T8/T9-16 的接管闸门：hook `marked` 的会话其 spokenText 会被丢弃（T8-12.17 真机验证过终端回调保护）。本轮真机 hook 计数器：`final_seen=7, marked=2, passed=5` —— 2 个 TAKE 正是两句闹钟话术（原厂被抑制、自有闹钟接管），5 个 PASS 全部原厂正常作答，无重复播报。
- 自有 TTS 播报路径 = 技能回话术经 `skill_run rep->text` 走既有 TTS 链路（T9-16 闹钟确认话术已真机验证），天气技能复用同一条路径。
- 本轮真机旁证：22:14:25 `route=skill skill=alarm.set session=1967734`（"三分钟后提醒我"）→ 原厂侧无该会话 TTS、自有闹钟 22:23 入库（`snapshots/alarms.public.json` id=6 布丁闹钟 enabled=true）→ 抑制+自有接管+自有 TTS 全链路真实工作。

### 3.4 回归确认（[主机]+[真机]）
- 主机：t7_04 路由回归套件 **150/150 PASS**（含 1 处过时断言已按 T9-15/16 语义修正：`帮我定个闹钟` 现应为 IR_ALARM）；t9_18 新套件 23/23。
- 真机：5 个天气会话全部原厂正常应答（§1.5），闹钟接管正常，音量/时间路径未动。

## 4. 数据模型（TG-Z02 统一天气 JSON）

```json
{
  "v": 1,
  "city":    { "name": "北京", "area": "昌平区", "country": "中国",
               "lat": 39.9075, "lon": 116.39723, "tz": "Asia/Shanghai" },
  "updated": "2026-11-26T21:45",
  "source":  "open-meteo",            // open-meteo | wttr | factory-bypass
  "current": { "temp": 6.7, "feels": 3.8, "desc": "多云", "code": 2,
               "humidity": 46, "wind_dir": "西北风", "wind_power": "3~4",
               "wind_kmh": 6.1, "uv": 2 },
  "today":   { "high": 12.6, "low": 0.3, "desc": "阴转多云",
               "rain_prob": 0, "aqi": { "aqi": 287, "level_desc": "重度",
               "pm25": 299.0 } },
  "days": [ { "date": "2026-11-27", "name": "明天", "desc": "晴",
              "high": 10.1, "low": 3.3, "rain_prob": 0 } ],   // 最多 7
  "hours": [ { "time": "2026-11-26T22:00", "temp": 7, "desc": "多云",
               "rain_prob": 15 } ]                            // 最多 24
}
```

### 4.1 字段映射

| 模型字段 | 原厂 renderData（factory-bypass） | Open-Meteo |
|---|---|---|
| city.name/area | `homePageData.areaName`（昌平区）、country | geocoding `name/country` |
| city.lat/lon | 无（原厂不吐坐标） | geocoding `latitude/longitude` |
| current.temp | `homePageData.currentTemp` | `current.temperature_2m` |
| current.feels | 无 | `current.apparent_temperature` |
| current.desc/code | `homePageData.weatherName` / 无 code | `current.weather_code`（WMO 表→中文） |
| current.humidity | 无 | `current.relative_humidity_2m` |
| current.wind_dir/power | `windDirectDesc/windPower` | `wind_direction_10m/wind_speed_10m`（换算） |
| current.uv | `hoursPage[].uvi`（首项） | wttr `current_condition.uvIndex`（OM 主 API 无） |
| today.high/low | `homePageData.high/low` | `daily.temperature_2m_max/min[0]` |
| today.rain_prob | `hoursPage[].rainProbability`（未来 N 小时内最大） | `daily.precipitation_probability_max[0]` |
| today.aqi | `airQualityLevelDesc`（仅等级文字） | air-quality API `us_aqi/pm2_5/...`（独立请求） |
| days[] | `daysPageData[]{date,dayName,weatherName,high,low}`（4 天） | `daily.*[1..N]`（≤7 天） |
| hours[] | `hoursPage[]{date,hourTime,temp,weather,rainProbability,uvi}`（6 个点，夜间 0-2 点截断） | `hourly.*`（可取未来 24 点） |
| 预警 | `homePageData.warningTypeName/warningDegreeName`（大风/黄色） | OM 无（wttr 无）→ 空缺字段 |
| updated | 无（取捕获时刻） | `current.time` |

**差异要点**：原厂有预警字段（OM 无）；OM 有体感/湿度/精确坐标/更长的逐小时（原厂仅 6 点且 0-2 点被截断）。模型两源都留空位（null 即隐藏 UI 块）。

## 5. 风险与未解决问题

| # | 风险/问题 | 等级 | 处置 |
|---|---|---|---|
| R1 | api.open-meteo.com 出现过一次 TLS 层瞬时无响应（复测自愈） | 中 | 双源（OM→wttr.in，后者真机 200 已验证）+ 1 次重试 + 超时上限；技能对失败给兜底话术 |
| R2 | :core 本次未重启，生产 :core 仍映射旧 intent_route（新关键词 `多少度/最高温` 在 :core 下次重启才生效；worker 侧新词已生效——worker 与 hook 各自持有一份分类器） | 低 | 已如实记录（evidence/t9-18/deploy_correction.txt）；不强制重启（执行限制），下次自然重启后对齐 |
| R3 | logcat 旁路依赖原厂日志格式 | 低 | 定位为对照/降级，不作主源 |
| R4 | 原厂天气页已迁 Waft 云模板（T9-17 §2 的 `weatherBase*` 本地页不再是现行路径） | 信息 | 更新 T9-17 认知；对自有技能无影响 |
| R5 | wttr.in 无空气质量；OM AQI 独立请求多一次网络 | 低 | AQI 作为可选增强，失败隐藏 UI 块 |
| U1 | 用户第 4 句 ASR 实际识别为"未来天气怎么样"，"未来几天"的原话未单独验证 | 低 | 主机单测已覆盖"未来几天天气怎么样" |
| U2 | 天气位 TAKE 后自有技能的真实话术端到端（含原厂抑制听感）待 T9-19 集成时验收 | 低 | 机制已由闹钟会话真机旁证（§3.3） |

## 6. 交付物清单

| 项 | 位置 |
|---|---|
| renderData 真机捕获（10 行=5 会话×2） | `evidence/t9-18/renderdata_capture.txt` |
| ASR 会话记录 | `evidence/t9-18/events_tail.txt` |
| 语音时间线（唤醒/TTS/状态） | `evidence/t9-18/voice_timeline.txt` |
| Open-Meteo 北京/东京/上海/geocoding/AQI 原始响应 | `evidence/t9-18/om_beijing.json` 等 + 设备 `/data/local/tmp/t9_18_*.json` |
| wttr 备源响应 | `evidence/t9-18/wttr_beijing.json` + 设备 `/data/local/tmp/t9_18_wttr*.json` |
| ARM32 解析探针输出 | `evidence/t9-18/om_parse_probe_output.txt`（探针源 `tests/t9_18_om_parse_probe.c`） |
| 真机决策层 15/15 | `evidence/t9-18/weather_live_decision_output.txt`（源 `tests/t9_18_weather_live_decision_test.c`） |
| 主机路由 23/23 | `evidence/t9-18/weather_route_unit_test_output.txt`（源 `tests/t9_18_weather_route_unit_test.c`） |
| hook 计数器（marked/passed） | `evidence/t9-18/nlu_status_after_voice.txt` |
| 构建/部署/回滚 | `evidence/t9_18_ndk_build.log`、`evidence/t9-18/deploy_record.txt`、`deploy_correction.txt` |

## 7. 执行限制遵守声明

未修改原厂 APK/system 镜像（仅运行时替换了我方 `/system/tgz02/{lib,bin}` 两个自有文件，备份在 `/data/local/tmp/t9_18_bak/`，一条命令可回滚）；未动原厂唤醒/ASR/TTS、闹钟系统、天气功能；天气路由**未切生产**（route_intents 保持 weather 位开启=原厂处理；自有接管仅经"单测/探针进程"验证）；未开发天气 UI；:core 未强制重启。

## 8. 批准结论

**建议：批准进入天气技能正式开发。** 五项决策标准全部有真机或主机证据支撑（§0）。开发顺序建议：`weather_provider.c`（双源+缓存）→ `weather_skill.c`（复用 alarm_skill 模式：claim→解析→话术）→ route_intents 切换验收 → 天气卡片 UI（V3 体系）。
