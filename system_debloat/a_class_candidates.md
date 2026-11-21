# A 类静态删除候选（rev5 扩展）

rev1–rev4 的 A 类只有 `app/ES.apk` 一个，且它已被用户保护。本轮重新扫描 system 分区里
**非受保护、非语音链路**的预装组件，按四条线索筛选：

1. 厂商推广/注册类服务（uuid / raShow / AliSpKey / AliProvision）；
2. 演示、引导、帮助类（本镜像中与用户功能无关的一次性组件）；
3. 与核心功能无关的独立应用（逐个核对 app 级引用与 framework 绑定）；
4. 重复或功能重叠（`proxyhandler` vs `pacprocessor`、`externalstorage` vs `mtp` 的 Providers）。

## 0. 筛选结果概览

| 结论 | 数量 | 包 |
|---|---|---|
| 可进入静态删除验证 | 1 | `com.android.providers.userdictionary` |
| 先禁用观察、再评估删除 | 4 | `com.aliyun.uuid`, `com.alira.info`, `com.alibaba.spkey`, `com.yunos.tv.provision` |
| 明确不列为删除候选 | 3 | `com.alibaba.ailabs.ar.monitor`、`com.alibaba.ailabs.genie.aicare`、`com.alipay.arome.app` |

**没有找到“明显无用的推广/演示 App”**：本镜像里的厂商包要么挂在语音/媒体链路上（youku.iot、children、
waft、albums、screensaver、browser），要么是工厂/开通类（emode、provision）。因此本轮**不虚构**删除对象，
只把证据支持的四类小件列出，并把“业务用途不明”如实标注。

## 1. 逐项分析

### com.alibaba.spkey

| 项目 | 内容 |
|---|---|
| 包名 / APK 路径 | `com.alibaba.spkey` / `app/AliSpKey` |
| APK 文件大小 | **0.10 MB**（含 lib/oat 后合计 0.13 MB） |
| 角色 | 安全密钥服务（AliSpKey，system uid） |
| 直接依赖 | 无 app 级入向引用 |
| 间接依赖 | 无 App 引用；framework 0 命中；无 BOOT、无进程 |
| 是否有原厂组件调用 | 静态扫描未发现；**不能据此认定未使用** |
| 删除后可能影响 | 未知：若语音/支付链路通过未公开 action 使用它，禁用后相关能力可能静默失效 |
| 删除风险 | 中（业务用途不明，0 引用≠无用） |
| 是否值得进入后续验证 | **进入待验证（先禁用观察，不做静态删除）** |
### com.alira.info

| 项目 | 内容 |
|---|---|
| 包名 / APK 路径 | `com.alira.info` / `app/raShow` |
| APK 文件大小 | **0.01 MB**（含 lib/oat 后合计 0.79 MB） |
| 角色 | `raService` + `DreamerReceiver`（`com.alira.info.raService.dream`），system uid |
| 直接依赖 | 无 app 级入向引用 |
| 间接依赖 | framework 0 命中；无 BOOT、无进程；持有 SYSTEM_ALERT_WINDOW / WRITE_SECURE_SETTINGS |
| 是否有原厂组件调用 | 静态扫描未发现；**不能据此认定未使用** |
| 删除后可能影响 | 未知：名称与组件形态提示“推荐/展示”类能力，但未取得代码级证据 |
| 删除风险 | 中（业务用途不明） |
| 是否值得进入后续验证 | **进入待验证（禁用观察），不作为第一批删除** |
### com.aliyun.uuid

| 项目 | 内容 |
|---|---|
| 包名 / APK 路径 | `com.aliyun.uuid` / `app/UUID` |
| APK 文件大小 | **0.53 MB**（含 lib/oat 后合计 2.73 MB） |
| 角色 | 设备 UUID 注册（`RegistUUIDService` + BOOT 接收器，system uid） |
| 直接依赖 | 无 app 级入向引用 |
| 间接依赖 | framework 包名命中 1 处；BOOT_COMPLETED 接收器；无进程 |
| 是否有原厂组件调用 | framework 只出现包名（未命名具体类/action） |
| 删除后可能影响 | 厂商云侧设备注册/统计可能失效；若语音技能依赖设备 UUID，可能出现账号相关异常 |
| 删除风险 | 中（注册类服务，影响面偏云侧但无法排除本地调用） |
| 是否值得进入后续验证 | **进入待验证（禁用观察），不作为第一批删除** |
### com.yunos.tv.provision

| 项目 | 内容 |
|---|---|
| 包名 / APK 路径 | `com.yunos.tv.provision` / `priv-app/AliProvision` |
| APK 文件大小 | **0.01 MB**（含 lib/oat 后合计 0.03 MB） |
| 角色 | 阿里 TV 开通/授权（`com.yunos.intent.clearance`，priv-app） |
| 直接依赖 | 无 app 级入向引用 |
| 间接依赖 | framework 包名命中 1 处；无 BOOT、无进程 |
| 是否有原厂组件调用 | framework 只出现包名 |
| 删除后可能影响 | 开通/清关类流程可能不可用；日常使用无表现 |
| 删除风险 | 低-中（priv-app + 一次性流程） |
| 是否值得进入后续验证 | **进入待验证（禁用观察）** |
### com.android.providers.userdictionary

| 项目 | 内容 |
|---|---|
| 包名 / APK 路径 | `com.android.providers.userdictionary` / `app/UserDictionaryProvider` |
| APK 文件大小 | **0.01 MB**（含 lib/oat 后合计 0.04 MB） |
| 角色 | 用户词典 Provider（AOSP，`content://user_dictionary`） |
| 直接依赖 | 无 app 级入向引用 |
| 间接依赖 | framework 0 命中；无 BOOT、无进程 |
| 是否有原厂组件调用 | 无 |
| 删除后可能影响 | 输入法无法读写自定义词库（本机输入法为 GooglePinyin 之外的方案时无影响） |
| 删除风险 | 低（AOSP 标准件，但收益仅 0.04 MB） |
| 是否值得进入后续验证 | **可进入静态删除验证（收益极小，优先级低）** |

## 2. 依赖与证据口径

| 项 | 口径 |
|---|---|
| 直接依赖 | `dependency_edges.csv` 中 `evidence_class=app` 的入向边（已去除平台 Provider / SDK 噪声） |
| 间接依赖 | framework vdex（boot / boot-framework / services）字符串命中 + BOOT 接收器 + 导出组件 |
| “0 引用”的含义 | 只说明“没有兄弟 App 通过组件/action 点名”，**不说明无人使用**（可能在运行时用隐式调用/反射） |
| 删除风险 | 综合“用途是否明确 + 有无 framework 绑定 + 是否 priv-app/system uid + 收益大小” |

## 3. 与既有分类的关系

这些包的**技术分类保持原样**（都在 C 类），本轮新增的是 `screening_tier` / `screening_batch` /
`screening_note` 三个字段，用于表达“精简候选层次”。技术分类回答“依赖有多深”，
候选层次回答“先动谁”，两者不互相覆盖。

## 4. 体量大但**不**列为静态删除候选

| 包名 / 路径 | 合计 MB | 为什么不删 |
|---|---|---|
| `com.alibaba.ailabs.ar.monitor` / `app/GenieMonitor` | 47.86 | 见下（rev5.2 撤销删除候选身份） |
| `com.alibaba.ailabs.genie.aicare` / `app/GenieAicare` | 18.50 | /data/app 覆盖，删 prebuilt 会退化 |
| `com.alipay.arome.app` / `app/AMPE` | 87.18 | 12 处 app 级引用，禁用＝关闭小程序/H5 |

- **ar.monitor（GenieMonitor，47.86 MB）——rev5.2 统一为“必须保留整包”**：
  同包内含 `VisionWakeUpService`（`android.intent.action.genieWakeUpService`，**唤醒链路**）、
  `AVEControlProvider`（`com.alibaba.ailabs.ave.controlProvider`，被 smartapp 引用，**设备控制**）、
  `GenieGestureService`（手势）、`CMCCMediaService`/`AwesomeService`（媒体/聚合）。
  四种能力同包同进程，**未证明可分离** → 不得整包删除，也不得整包禁用；
  唯一理论上的精简点是 `GenieGestureService` 的组件级禁用（需实测且不省空间）。
  详见 [big4_component_review.md](big4_component_review.md)。
- **GenieAicare（18.50 MB）**：设备上由 `/data/app` 覆盖（4.0.26 → 4.0.62），删系统内 prebuilt 会让包退化为
  普通数据区应用（失去 SYSTEM flag 与默认权限授予）→ 不删。
- **AMPE（arome，87.18 MB）**：12 处 app 级引用（`genie.webapps.START/INIT`、`GwaReceiver`），
  禁用它等于关闭小程序/H5 能力 → 需产品决策，不是静态删除对象。

