# 精简优先级与批次（rev5）

本文件回答：**在已经完成分类与观测的前提下，先动哪些、后动哪些、哪些永远不动，以及每一步到底换来什么。**

- 数据来源：`app_inventory.json`（体积/组件/PSS/persistent）、`dependency_edges.csv`（app 级引用）、
  framework vdex 扫描、`ota_observation_report.md`（6 h 实测）。
- 三条口径（全表通用）：**APK 体积 ≠ RAM；禁用不释放 system 空间；无引用 ≠ 无用**。
- 本轮**没有任何设备操作**：未禁用、未卸载、未改镜像/boot、未新增采样工具。

## 1. 统一优先级表

| 候选 | 技术类 | APK/lib/oat MB | 后台进程/常驻减少潜力 | RAM 减少潜力 | CPU 负担减少潜力 | system 空间释放潜力 | 功能破坏风险 | 回退难度 | 依据 |
|---|---|---|---|---|---|---|---|---|---|
| `com.android.statementservice` | B | 0.01 / 0.00 / 0.08 | 无证据（快照无进程） | 无证据 | 无证据 | **仅删除**：0.08 MB | 低 | 低 | 仅在安装/校验 App Links 时被绑定；vdex 0 命中 |
| `com.android.bluetoothmidiservice` | B | 0.01 / 0.00 / 0.03 | 无证据 | 无证据 | 无证据 | **仅删除**：0.04 MB | 低 | 低 | framework 按类名绑定；本机无 MIDI 外设 |
| `com.android.pacprocessor` | B | 0.01 / 0.00 / 0.02 | 无证据 | 无证据 | 无证据 | **仅删除**：0.03 MB | 低 | 低 | framework 按类名绑定 `PacService`；仅 PAC 代理场景 |
| `com.android.vpndialogs` | B | 0.01 / 0.00 / 0.02 | 无证据 | 无证据 | 无证据 | **仅删除**：0.04 MB | 低 | 低 | framework 按类名绑定 `ManageDialog`；仅 VPN 授权场景 |
| `com.android.captiveportallogin` | B | 0.01 / 0.00 / 0.04 | 无证据 | 无证据 | 无证据 | **仅删除**：0.05 MB | 低 | 低 | 仅强制门户 Wi-Fi 场景拉起 |
| `com.android.companiondevicemanager` | B | 0.01 / 0.00 / 0.04 | 无证据 | 无证据 | 无证据 | **仅删除**：0.05 MB | 低 | 低 | 仅伴生设备配对场景 |
| `com.alibaba.ailabs.genie.osupdate` | B | 1.98 / 0.00 / 3.49 | 高：persistent + started service 73/73 样本常驻 | 中：PSS 中位 16,557 kB（n=73） | 高：6 h 均值 21.53%（72/72 区间 ≥10%） | **仅删除**：5.47 MB | 高 | 低（`pm enable` + 重启一次） | rev4.1 观测 + system uid/升级权限 + framework 点名 |
| `com.alibaba.ailabs.genie.guide` | B | 4.67 / 0.75 / 0.00 | 低：快照无进程，仅首启使用 | 无证据 | 无证据 | **仅删除**：5.42 MB | 中 | 低 | 一次性向导；`NETWORK_SETUP_WIZARD` |
| `com.android.storagemanager` | B | 0.66 / 0.00 / 1.66 | 低：BOOT 接收器开机会拉起一次（未测量） | 无证据 | 无证据 | **仅删除**：2.32 MB | 低 | 低 | AOSP 存储 UI；无 app 级引用 |
| `com.android.mtp` | B | 0.05 / 0.00 / 0.08 | 低：仅 USB 连接时启用 | 无证据 | 无证据 | **仅删除**：0.13 MB | 低-中（USB 传文件） | 低 | 导出 DocumentsProvider + USB 接收器 |
| `com.android.providers.userdictionary` | C | 0.01 / 0.00 / 0.03 | 无证据 | 无证据 | 无证据 | **仅删除**：0.04 MB | 低 | 低（回刷/回推 APK） | AOSP 词典 Provider，0 app 级引用 |
| `com.aliyun.uuid` | C | 0.53 / 0.00 / 2.21 | 无证据（有 BOOT 接收器，未测量） | 无证据 | 无证据 | **仅删除**：2.73 MB | 中 | 低-中 | UUID 注册服务；framework 仅包名命中 |
| `com.alira.info` | C | 0.01 / 0.00 / 0.78 | 无证据 | 无证据 | 无证据 | **仅删除**：0.79 MB | 中（用途不明） | 低-中 | `raService` + dream 接收器；0 引用、0 framework 命中 |
| `com.alibaba.spkey` | C | 0.10 / 0.00 / 0.03 | 无证据 | 无证据 | 无证据 | **仅删除**：0.13 MB | 中（用途不明） | 低-中 | 导出 SpService；0 引用、0 framework 命中 |
| `com.yunos.tv.provision` | C | 0.01 / 0.00 / 0.03 | 无证据 | 无证据 | 无证据 | **仅删除**：0.03 MB | 低-中 | 低-中 | priv-app 开通/清关；0 app 级引用 |

> “空间释放潜力”只对**删除**成立；全部禁用方案的空间收益为 **0**。
> “RAM/CPU 减少潜力”只有 OTA 有实测数字（PSS 中位 16,557 kB、CPU 均值 21.53%），其余为**无证据**。

## 2. 第一批：低风险禁用候选（6 个）

| 包名 | 合计 MB | 禁用后失去的功能 | 为什么算低风险 |
|---|---|---|---|
| `com.android.statementservice` | 0.08 | App Links（http/https 深度链接）校验 | 无进程、无 app 级引用；仅在安装/校验时被 PackageManager 绑定 |
| `com.android.bluetoothmidiservice` | 0.04 | BLE-MIDI 外设 | 无进程、无引用；本机无 MIDI 外设；framework 仅按类名按需绑定 |
| `com.android.pacprocessor` | 0.03 | PAC 代理脚本解析 | 无进程、无引用；只在配置 PAC 代理时被绑定 |
| `com.android.vpndialogs` | 0.04 | VPN 授权对话框 | 无进程、无引用；不装 VPN 客户端就永不触发 |
| `com.android.captiveportallogin` | 0.05 | 强制门户 Wi-Fi 登录页 | 无进程、无引用；普通 Wi-Fi 不走这条路 |
| `com.android.companiondevicemanager` | 0.05 | 伴生设备配对入口 | 无进程、无引用；不配对伴生设备就不触发 |

**诚实结论**：这 6 个都属于“功能明确独立、依赖面小、风险低”，但**禁用的收益是 0（无可测量 RAM/CPU 减少）、
空间收益也是 0（禁用不释放空间）**。它们的价值只在“去掉不需要的功能面，减少潜在拉起路径”，
不应被描述为“能省资源”。若要拿空间，只能删 APK，而它们合计只有
**0.29 MB**。

## 3. 第二批：待验证禁用候选（4 个）

| 包名 | 合计 MB | 为什么要验证 | 验证通过后能得到什么 |
|---|---|---|---|
| `com.alibaba.ailabs.genie.osupdate` | 5.47 | 唯一有实测占用的候选（CPU 21.53%、PSS 16,557 kB），但切断升级链路、framework 点名、system uid | **实测**禁用后 CPU/RAM 的真实变化（这才是“省资源”的唯一硬证据） |
| `com.alibaba.ailabs.genie.guide` | 5.42 | 无进程 → 禁用无 RAM 收益；价值在 5.42 MB，且只有删除才释放 | 确认“移除引导”不影响使用，为是否删除提供依据 |
| `com.android.storagemanager` | 2.32 | 同上：2.32 MB 只有删除才释放；有 BOOT 接收器 | 确认低存储场景无告警缺失 |
| `com.android.mtp` | 0.13 | 功能影响明确（USB 传文件），需要你确认不用 | 去掉一个常驻可被 USB 拉起的 Provider |

## 4. 静态删除候选（1 个）

| 包名 | APK 路径 | 合计 MB | 结论 |
|---|---|---|---|
| `com.android.providers.userdictionary` | `app/UserDictionaryProvider` | 0.04 | 可进入静态删除验证（收益极小，优先级低） |

## 5. 先禁用、后评估（4 个）

这 4 个的共同点：**静态扫描 0 引用，但业务用途不明**，因此既不能算“无用”，也不能直接删。

| 包名 | APK 路径 | 合计 MB | 0 引用 ≠ 无用 的理由 |
|---|---|---|---|
| `com.aliyun.uuid` | `app/UUID` | 2.73 | 厂商云侧设备注册/统计可能失效；若语音技能依赖设备 UUID，可能出现账号相关异常 |
| `com.alira.info` | `app/raShow` | 0.79 | 未知：名称与组件形态提示“推荐/展示”类能力，但未取得代码级证据 |
| `com.alibaba.spkey` | `app/AliSpKey` | 0.13 | 未知：若语音/支付链路通过未公开 action 使用它，禁用后相关能力可能静默失效 |
| `com.yunos.tv.provision` | `priv-app/AliProvision` | 0.03 | 开通/清关类流程可能不可用；日常使用无表现 |

详细逐项分析见 [a_class_candidates.md](a_class_candidates.md)。

## 6. 明确禁止精简

### 6.1 六个受用户保护 App

| 包名 | 技术类 | 合计 MB | 规则 |
|---|---|---|---|
| `com.dangbei1.tvlauncher` | B | 8.77 | **受用户保护：不得删除/禁用/清数据/限制自启与权限** |
| `bin.mt.plus` | 设备侧 | — | **受用户保护：不得删除/禁用/清数据/限制自启与权限** |
| `com.estrongs.android.pop` | A | 4.60 | **受用户保护：不得删除/禁用/清数据/限制自启与权限** |
| `com.web1n.permissiondog` | B | 1.37 | **受用户保护：不得删除/禁用/清数据/限制自启与权限** |
| `com.shere.assistivetouch` | B | 4.38 | **受用户保护：不得删除/禁用/清数据/限制自启与权限** |
| `com.topjohnwu.magisk` | C | 10.76 | **受用户保护：不得删除/禁用/清数据/限制自启与权限** |

### 6.2 原厂语音 / UI / 设备控制链路（不动）

| 包名 | 合计 MB | 技术类 | 原因 |
|---|---|---|---|
| `com.alibaba.ailabs.genie.smartapp` | 87.89 | D | 语音/UI/Provider 核心 |
| `com.aligenie.ags` | 2.32 | D | 语音/UI/Provider 核心 |
| `com.alibaba.ailabs.genie.iot` | 16.88 | D | 语音/UI/Provider 核心 |
| `com.alibaba.ailabs.genie.launcher` | 20.48 | D | 语音/UI/Provider 核心 |
| `com.android.systemui` | 6.19 | D | 语音/UI/Provider 核心 |
| `com.android.settings` | 10.08 | D | 语音/UI/Provider 核心 |
| `com.android.webview` | 52.00 | D | 语音/UI/Provider 核心 |
| `com.alibaba.ailabs.genie.rtc` | 9.05 | C | 语音技能/媒体耦合 |
| `com.ailabs.youku.iot` | 45.06 | C | 语音技能/媒体耦合 |
| `com.alibaba.ailabs.genie.children` | 20.14 | C | 语音技能/媒体耦合 |
| `com.alibaba.genie.waft` | 5.56 | C | 语音技能/媒体耦合 |
| `com.alibaba.ailabs.genie.browser` | 12.96 | C | 语音技能/媒体耦合 |
| `com.alibaba.ailabs.genie.albums` | 10.56 | C | 语音技能/媒体耦合 |
| `com.alibaba.ailabs.genie.screensaver` | 6.67 | C | 语音技能/媒体耦合 |

### 6.3 体量大但禁止静态删除的项

| 包名 | 合计 MB | 原因 |
|---|---|---|
| `com.alibaba.ailabs.ar.monitor` | 47.86 | 47.86 MB（`app/GenieMonitor`）：**不可删除**（smartapp 引用 `genieWakeUpService`/`geniegesture`/`ave.controlProvider`/`genieallinone` 四个入口，S1Settings 引用手势 action）；**rev5.3：可整包禁用验证**（操作者已确认不需要设备控制/监控/手势），禁用后需回归语音唤醒与看护。详见 big4_component_review.md |
| `com.alibaba.ailabs.genie.aicare` | 18.50 | 18.50 MB：`/data/app` 覆盖的系统 prebuilt（4.0.26→4.0.62），删除会让包退化为普通应用 → 不删 |
| `com.alipay.arome.app` | 87.18 | 87.18 MB：12 处 app 级引用（小程序/H5 容器），禁用它等于关闭小程序能力 → 需产品决策 |

## 7. 下一阶段可进入设备验证的候选

| 顺序 | 候选 | 验证形式 | 前置条件 | 回退 |
|---|---|---|---|---|
| 1 | 第一批 6 个平台组件 | 单包 `pm disable-user`，每项 ≥24 h | 你确认不需要对应功能 | `pm enable` |
| 2 | `com.alibaba.ailabs.genie.osupdate` | 单包禁用 + 24 h 对比（同 uptime 区间） | 你接受升级链路切断 | `pm enable` + 重启一次 |
| 3 | `com.alibaba.ailabs.genie.guide` / `storagemanager` / `mtp` | 单包禁用观察 | 同上 | `pm enable` |
| 4 | 4 个“先禁用后评估”项 | 单包禁用 24 h，观察语音/账号/开通流程 | 你授权 | `pm enable` |
| 5 | `com.android.providers.userdictionary` | 用户态卸载验证 → 再谈静态删除 | 输入法使用情况确认 | 回推 APK / 回刷 system |

## 8. 不承诺的东西

1. 不承诺任何候选“禁用后释放 X MB RAM”——除 OTA 的 PSS 观测值外没有测量，且禁用≠释放。
2. 不承诺“删除后省 X MB 内存”——删 APK 只省分区空间。
3. 不把“扫描不到引用”当成“可以删”：`spkey` / `alira` / `uuid` / `provision` 都属此类。
4. 不把 OTA 的 21.53% 直接换算成“禁用后省 21.53% CPU”——需要 V1 实测。
