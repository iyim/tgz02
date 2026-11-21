# 四个大体积候选的组件级复核（rev5.2）

对象：rev5.1 里被列为“验证禁用后删除”的四个包。本轮逐个拆到**组件**级别，判断能不能精简、能回收多少。

**结论摘要**

| 包 | APK MB | lib MB | oat MB | 整目录 MB | 最终结论 | 可回收 MB |
|---|---|---|---|---|---|---|
| `com.alibaba.ailabs.ar.monitor` | 33.19 | 14.67 | 0.00 | 47.86 | **可整包禁用验证（rev5.3）**；**不可整包删除** | 47.86 |
| `com.ailabs.youku.iot` | 10.98 | 21.28 | 12.80 | 45.06 | **必须保留**（原厂视频播放实现） | 0.0 |
| `com.alibaba.ailabs.genie.children` | 9.97 | 2.76 | 7.40 | 20.14 | **待功能确认后才可整包禁用；不得直接删除** | 20.14 |
| `com.alibaba.ailabs.genie.albums` | 1.01 | 0.00 | 9.54 | 10.56 | **待功能确认后才可整包禁用；不得直接删除** | 10.56 |

- 四个里 **1 个必须整包保留**（`ar.monitor` 含唤醒+设备控制；`youku.iot` 是原厂视频实现），
  **可回收 0 MB**；另外 **2 个**（`children` 20.14 MB、`albums` 10.56 MB）只有在“确认放弃功能 + 完成禁用验证”后才可回收。
- rev5.1 中把 `ar.monitor` 写成“验证禁用后删除”是**错误**，本版已撤销，并同步到
  `a_class_candidates.md`、`desktop_app_audit.md`、`pruning_priority.md`、`summary_stats.json`。

## 1. GenieMonitor（`com.alibaba.ailabs.ar.monitor`）专项

### 1.1 组件清单（来自 APK manifest 静态解析）

| 组件 | 类型 | 导出 | action | 角色 | 结论 |
|---|---|---|---|---|---|
| GenieGestureService | service | 导出 | android.intent.action.geniegesture | 手势/体感识别服务（AVE aceengine） | 用户不需要手势 → 随整包禁用即可；组件级禁用不省空间 |
| VisionWakeUpService | service | 导出 | android.intent.action.genieWakeUpService | **视觉**（摄像头）唤醒服务，属 AVE 视觉引擎，配合看护/摄像头场景 | **rev5.3 更正**：此前把它当作语音唤醒链路是过度推断；它属视觉引擎，用户不需要监控时可随整包禁用，但禁用后需回归语音唤醒与看护 |
| CMCCMediaService | service | 导出 | android.intent.action.CMCCMediaService | CMCC 媒体服务（运营商内容） | 证据不足，保留 |
| AwesomeService | service | 导出 | android.intent.action.genieallinone | “all in one”聚合服务（历史兼容入口） | 证据不足，保留 |
| AVEControlProvider | provider | 导出 | com.alibaba.ailabs.ave.controlProvider | AVE 控制 Provider（设备控制面） | **必须保留**（设备控制/语音联动） |
| AiCareBizService / AnalyticsService / CameraSampleActivity / SecondInstaller | service/activity/provider | mixed | — | 看护业务、统计、相机示例页、IPC 安装器 | 随整包保留 |

### 1.2 关键判断

1. **唤醒**：`VisionWakeUpService`（`android.intent.action.genieWakeUpService`）属唤醒链路，受 §六 保护。
2. **设备控制**：`AVEControlProvider`（`com.alibaba.ailabs.ave.controlProvider`）被 smartapp 以
   `controlProvider` 关联，是语音控制设备的通道之一。
3. **手势**：`GenieGestureService` 有**独立 action**，看起来可单关；但同包同进程、且与 AVE/Awesome 共用数据目录，
   **解耦未证明**。
4. **CMCC 媒体**：`CMCCMediaService` 独立 action，是否与语音技能联动未验证。
5. framework 仅命中包名（无具体类名），说明 framework 不按类名绑定它。

### 1.3 结论

- **整包必须保留**，不得整包删除/禁用；`summary_stats.json:D_forbidden` 保持包含该包是正确的。
- 唯一理论上的精简点是 `GenieGestureService` 的**组件级禁用**，前提是：① 你确认不用手势；
  ② 实测禁用后唤醒/设备控制/CMCC 不受影响；③ 接受“组件级禁用**不释放空间**”。
- 因此本包**不进任何删除清单**，也**不再出现在“验证禁用后删除”**名单里。

## 2. 优酷（`com.ailabs.youku.iot` / `AliVideoPlayer.apk`）

- 组件：`CommonPlayerActivity`、`NewsPlayerActivity`（**smartapp 直接点名**）、`PlayerProxyService`（m3u8 代理）、
  `ShortVideoPlayer`、`PassportActivity`（账号）、`StatementActivity`、`HomeActivity`。
- 桌面“优酷”入口来自 launcher 内容卡（`source: youku_news`），播放动作落到本包。
- **结论**：这是原厂视频播放的实现，不是“第三方视频客户端”。删除＝拆掉视频能力。
  **整包保留，可回收 0 MB**。

## 3. 儿童模式（`com.alibaba.ailabs.genie.children`）

- 组件：`ChildrenHomeActivity`、`HomeActivity`、`ForbiddenTimeAddActivity`（禁播时段）、
  `MediaListActivity`、`DataCenterService`、`LogService`、`TimerService`。
- 权限：`FORCE_STOP_PACKAGES`、`KILL_BACKGROUND_PROCESSES`、`INTERACT_ACROSS_USERS`、system uid
  —— 这说明它会**管控其他应用**（儿童模式的应用白名单/时长）。
- 依赖：smartapp 16 处组件引用（语音“儿童模式”技能）+ guide 引用。
- **结论**：与设置、AliSystemUI 无直接引用，但与 **smartapp 强耦合**。可回收 20.14 MB，
  条件是“确认放弃儿童模式 + 整包禁用验证 24 h + 无技能报错”。**不得直接删除。**

## 4. 相册（`com.alibaba.ailabs.genie.albums`）

- 组件：`MainActivity`（桌面入口）、`ImageBrowseActivity`、`BannerAnimationActivity`、`CmdDispatchService`、
  `AlbumContentProvider`（导出）。
- 依赖：`screensaver` 以组件引用（屏保取图）；语音“看照片”可能经 smartapp 调用 Provider。
- 体积特点：APK 仅 **1.01 MB**，但 **oat 9.54 MB** —— 只删 APK 几乎没意义，必须删整个目录才是 10.56 MB。
- **结论**：可回收 10.56 MB，条件同上（放弃相册/屏保取图 + 禁用验证）。**不得直接删除。**

## 5. 全 inventory 空间排序（Top 15，按整目录体积）

| 包 | APK MB | lib MB | oat MB | 整目录 MB | 归类 |
|---|---|---|---|---|---|
| `com.alibaba.ailabs.genie.smartapp` | 24.16 | 35.62 | 28.11 | 87.89 | 语音/媒体/UI 链路 |
| `com.alipay.arome.app` | 26.16 | 61.01 | 0.00 | 87.18 | 其他（见候选清单） |
| `com.android.webview` | 49.97 | 0.00 | 2.02 | 52.00 | 语音/媒体/UI 链路 |
| `com.alibaba.ailabs.ar.monitor` | 33.19 | 14.67 | 0.00 | 47.86 | 四个大体积候选 |
| `com.ailabs.youku.iot` | 10.98 | 21.28 | 12.80 | 45.06 | 语音/媒体/UI 链路 |
| `com.alibaba.ailabs.genie.launcher` | 6.65 | 1.29 | 12.54 | 20.48 | 语音/媒体/UI 链路 |
| `com.alibaba.ailabs.genie.children` | 9.97 | 2.76 | 7.40 | 20.14 | 语音/媒体/UI 链路 |
| `com.alibaba.ailabs.genie.aicare` | 2.52 | 6.90 | 9.08 | 18.50 | 其他（见候选清单） |
| `com.alibaba.ailabs.genie.iot` | 12.23 | 4.64 | 0.00 | 16.88 | 语音/媒体/UI 链路 |
| `com.alibaba.ailabs.genie.browser` | 1.03 | 0.99 | 10.94 | 12.96 | 语音/媒体/UI 链路 |
| `com.topjohnwu.magisk` | 10.76 | 0.00 | 0.00 | 10.76 | 受保护 |
| `com.ailabs.emode` | 6.11 | 0.00 | 4.53 | 10.64 | 其他（见候选清单） |
| `com.alibaba.ailabs.genie.albums` | 1.01 | 0.00 | 9.54 | 10.56 | 语音/媒体/UI 链路 |
| `com.android.settings` | 4.48 | 0.99 | 4.61 | 10.08 | 语音/媒体/UI 链路 |
| `com.alibaba.ailabs.genie.rtc` | 9.05 | 0.00 | 0.00 | 9.05 | 语音/媒体/UI 链路 |

说明：体积最大的几项（smartapp、AMPE、webview、GenieMonitor、launcher、iot）全部落在
“语音/媒体/UI 链路”“受保护”“禁止删除”里；**能动的空间不在最大那几项上**，这是本镜像的客观情况。

## 6. 收益口径（严格分开）

| 口径 | 数值 | 说明 |
|---|---|---|
| 删除 APK 可释放 | ar.monitor 33.19 / youku.iot 10.98 / children 9.97 / albums 1.01 MB | 但只删 APK 会留下 lib/oat，实际不可行 |
| 删除整目录可释放 | 同上四项合计 **123.62 MB** | 其中 93 MB 属“必须保留”，实际可讨论 **30.70 MB** |
| 禁用减少后台进程 | 无证据（四项快照均无进程；只有 OTA 有进程证据） | 不能声称省 RAM |
| RAM 实测收益 | **无证据** | 唯一有 PSS 的是 OTA（16,557 kB 中位），且那是占用值 |
| CPU 实测收益 | **无证据** | 同上 |

## 7. 未解决

1. `GenieGestureService` 能否在不影响 AVE/唤醒的前提下单独关——需真机组件级实验（本轮不做设备操作）。
2. 儿童模式与 smartapp 的技能契约细节（哪些技能会报错）——未实测。
3. 相册 Provider 是否被语音“看照片”使用——只有组件形态证据，无运行时证据。
