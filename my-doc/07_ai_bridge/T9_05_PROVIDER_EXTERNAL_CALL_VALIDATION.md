# T9-05 官方 Provider TTS 外部调用能力与自有 UI 接入边界

- 仓库：`iyim/tgz02`，基线提交 `52267e6f`（`b1984b05` 之后）
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root，`192.168.1.9:5555`
- 作业时间：2026-11-24 15:05 — 15:12（CST）
- 范围：只读分析 + 一个 17 KB 的普通 UID 探针 App；**没有改官方 App/签名/Manifest/权限/SELinux，没有重启 `:core`，没有改现有 TtsExec / queue / worker / Provider 通道**
- 证据等级：[静] 静态 / [机] 真机调用 / [主] 主机 / [未] 未验证

---

## 0. 三个验收问题的直接回答

| 问题 | 答案 |
|---|---|
| **自有 UI 能否直接调用 Provider？** | **能。** 普通第三方 App（uid 10056，无 root、无权限声明）用 `ContentResolver.query` + `insert` 就能播报、停止，并且**前台/后台都可以**；官方进程在日志里明确记下调用者包名 |
| **如果不能，现有 root Worker 是否已经提供了足够的中介能力？** | 这个问题不再成立——直连可行。但 root Worker 仍不可替代：它是唯一带"队列/重试/journal/回声过滤"记账的出口，而普通 UID **目前写不进它的队列**（`queue/` 是 `0700 root`，实测 `Permission denied`） |
| **自有 UI 最终需要通过什么最小接口接入？** | 保留 TtsExec 为唯一播报出口 + 给 UI 一条**极薄的提交通道**（推荐：一个 0777 的 inbox 目录，worker 轮询后挪进 queue，约 20–40 行改动）；完成状态用已实测可用的两条免 root 通道：`play.public.json`（0644 可读）或 `ContentObserver`（实时推送） |

---

## 1. Provider 通道的准确映射

### 1.1 端点

| 项 | 值 |
|---|---|
| authority | `com.alibaba.ailabs.genie.assistant.provider` |
| provider 类 | `com.alibaba.ailabs.geniesdk.provider.StatusProvider`（official `classes3.dex`）[静] |
| 进程 | `com.alibaba.ailabs.genie.smartapp:core`（官方语音后台） |
| Manifest | `android:exported="true"`，**没有** `android:readPermission` / `android:writePermission` [静] |
| 运行时 | `dumpsys activity providers`：`externals: w/token=1`，即系统按"导出 provider"登记 [机] |
| 相关路径 | `/GenieApi`（= `GenieTable.TABLE_NAME`，方法分发表）、`/media`、`/user_data` |

`StatusProvider.query/insert` 对 `/GenieApi` **没有任何调用者检查**（只有 `/user_data` 分支会把 `getCallingPackage()` 打到 trace 里）；`insert` 里对 method=5 会打印 `appName = SdkUtil.getAppNameByPid(callingPid)`，这正好成了本次"调用者身份"的铁证 [静]+[机]。

> Manifest 的 `exported=true` 只是必要条件。本次用普通 UID 实际打通了，才算证实。

### 1.2 播报：`query` + `method=4`

```
URI        content://com.alibaba.ailabs.genie.assistant.provider/GenieApi
selection  {"method":4,"data":{...}}      ← yes, the JSON travels in the *selection* string
data 字段   sessionId(int) tts(string) isOpenMic(bool) ignoreMute(bool)
           feedback(bool) secretKey(string) pkg(string) wakeupType(int)
返回        Cursor（不可为 null 才能取 extras）
           extras: {"data": <tts_id:int>, "ret": <bool>}
```

**坑（必须写进实现约定）**：`ret` 在 method=4 分支里被固定写成 `false`（`GenieTable` 里 `z = false; bundle.putBoolean("ret", z)`），**成功与否要看 `data > 0`**。本次三次调用全部 `ret=false`，而 `data` 分别是 5245520/5245521/5245522，三次都真的播了。

### 1.3 停止：`insert` + `method=5`

```
URI            同上
ContentValues  {"method":5, "sessionId": <tts_id>}
返回           null（StatusProvider.insert 永远返回 null）
副作用         GenieTable.insert case 5 → VoiceManager.stopTts(sessionId)
               + 日志 "stop tts sessionId = …" / "stop tts appName = <调用者包名>"
```

因为返回值恒为 `null`，**停止不能靠返回值判定**，只能靠状态回调（见 §1.4）。

### 1.4 状态与完成：`notifyChange`

`VoiceManager.onNotify(id,status)` 会 `notifyChange(content://…/GenieApi/<tts_id>?status=<n>)`：

| status | 含义（VoiceManager 侧映射） |
|---|---|
| 1 | play（开始） |
| 2 | complete（正常播完） |
| 3 | stop / interrupted / error（本次实测：被 stop 打断、以及早先 AIDL 那种"引擎立刻结束"都是 3） |

→ 任何进程只要对 `content://com.alibaba.ailabs.genie.assistant.provider`（`notifyForDescendants=true`）注册 `ContentObserver`，就能收到**带 tts_id 的状态推送**，不需要 root，也不需要读 logcat。**这是 T9-05 的新发现，现有 TtsExec 目前仍在解析 logcat。**

### 1.5 其它可用 method（未逐项实测，仅供登记）[静]

- `query` 分支：2（UI 是否显示）、8（server sessionId）、12（isOnLine）、13（wakeupType）、14（media policy）、22（orange 配置）、23（jump info）、26（standby）、30（oral TTS，多一个 `oralAppKey` 字段）
- `insert` 分支：1（显示/隐藏 UI）、3（更新字幕文本）、5（stop TTS）、6/7/9/10/11/12/13/14/15/16/18/19/20、1004–1008

本阶段只把 method 4 / 5 当真机验证对象，其余不猜、不写"已验证"。

---

## 2. 普通 UID 真机调用结果

探针：`com.tgz02.providerprobe`（单 activity，**没有任何 uses-permission**），uid 10056，普通 `untrusted_app` 域。代码层的稳定标识是 dex：`classes.dex 12,040 B sha256 e41756f5…6099`（APK 每次重新打包会因归档时间戳不同而哈希变化，设备上安装的那份是 `300df570…50f0`）。

### 2.1 三段测试

| 段 | 条件 | 请求 | 结果 |
|---|---|---|---|
| P1 | 我们的 Activity 在顶层，屏亮 | `query method=4` "第一句 普通应用前台播放测试" | `cursor=true`，`extras={ret=false,data=5245520}`，耗时 25 ms；**真播**（见 2.2）；observer 收到 `status=1`→`status=2` |
| P2 | 同前 | `query method=4` 第二句，1.5 s 后 `insert method=5 sessionId=5245521` | 播放开始 `status=1`；停止后 `status=3`（两次）；官方日志 `stop tts appName = com.tgz02.providerprobe`；ASM 记为 `interupt` |
| P3 | **HOME 退到后台**，顶层是 `…genie.launcher/.activity.AdultHomeActivity`，屏亮 | `query method=4` "第三句 后台调用测试" | `extras={ret=false,data=5245522}`；**仍然真播**：`status=1`→`status=2`，ASM `play`→`complete` |

### 2.2 "调用成功 / 官方接受 / 实际播报"三件事分开看

以 P1 为例（`evidence/t9-05/10_provider_probe.txt`）：

```
15:08:30.389 E/GenieTable( 1178): play curSessionId = 5245520, ttsInfo= TtsInfo{sessionId=0,
    text='第一句 普通应用前台播放测试', isOpenMic=false, wakeupType=1, needFeedback=false,
    isInterrupted=true, ignoreMute=false, fingerPrint='null', secretKey='',
    pkg='com.tgz02.providerprobe'}
15:08:30.397 I/T905: play(...) cursor=true extras=Bundle[{ret=false, data=5245520}] cost=25ms
15:08:30.451 D/TtsManager(1178): onTtsStart:141 sessionId = 5245520, isStreaming = 1, tts = 第一句…
15:08:30.463 D/AudioStateManager(1178): sm_permit_tts_play:2228 ttsid 5245520
15:08:30.513 D/AudioStateManager(1178): _ali_stub_json_handle_tts_feedback:status = play,  agmcId=5245520
15:08:33.683 D/AudioStateManager(1178): _ali_stub_json_handle_tts_feedback:status = complete, agmcId=5245520
15:08:33.688 I/T905: OBSERVER onChange uri=…/GenieApi/5245520?status=2
```

- **调用成功**：`query` 返回非空 Cursor，25 ms。
- **官方接受**：`data=5245520` + `GenieTable` 打出我们的包名和文本。
- **实际播报**：`sm_permit_tts_play` → `status = play` → 3.17 s → `status = complete`，并且 observer 在 app 侧收到同一对状态。

三段都没出现 AIDL 那种"0 许可、0 引擎启动"的情况——**同样的文本、同样的官方进程，只有 Provider 这条路通**。这正面解释了 T9-04 的否定结论：AIDL 的 `playTTS(String)` 无法携带 `pkg`/`wakeupType` 等字段（对比 TtsInfo 打印里 Provider 路径 `pkg='com.tgz02.providerprobe'`、`wakeupType=1`）。

### 2.3 前台/后台门禁对比（与 T9-04 结论合看）

| 通道 | 前台 | 后台 |
|---|---|---|
| AIDL `playTTSWithCallback` | `true` 但不出声、无回调 | `false`（`canPlayTts` 门禁） |
| **Provider `method=4`** | **真播 + 状态回调** | **真播 + 状态回调**（P3 实测） |

即：Provider 通道**不要求我们的 UI 在前台**，只要求官方 `:core` 在跑（它由系统常驻）。

---

## 3. 现有 root 执行链路的依赖

真机事实（`evidence/t9-05/20_device_facts.txt`、`30_app_uid_reach.txt`）：

```
pid 2388  root  app_process /system com.tgz02.tts.TtsExec \
                --root /data/local/tmp/t5_bridge/tts --idle-ms 0 --timeout-ms 60000 --verbose
/data/local/tmp                 0711 shell:shell     ← 其它 uid 只能 x（遍历），不能列目录
/data/local/tmp/t5_bridge       0777
/data/local/tmp/t5_bridge/tts   0777
…/tts/queue                     0700 root
…/tts/done                      0700 root
…/tts/journal.jsonl             0600 root
…/tts/play.public.json          0644 root            ← 普通 App 可读（实测）
```

app uid（10056）实测：

| 动作 | 结果 |
|---|---|
| 读 `play.public.json` | **可以**（拿到 state/event_id/tts_id/finished_ms） |
| 写 `queue/`（= 提交播报） | **`Permission denied`** |
| 读 `journal.jsonl` | `Permission denied`（符合设计：journal 只给 root 侧看） |

因此：

- **root 依赖点**：`getContentProviderExternal`（root-only API，TtsExec 用它拿 provider）、`queue/done` 的 0700、journal 的 0600、绑在 root 下的 logcat 抓取、以及"watchdog 拉起"。
- **不是 root 必需的**：provider 的 `query`/`insert` 本身（普通 App 已实测可用）；状态反馈（ContentObserver / `play.public.json` 都免 root）。
- 结论：**root 目前是"记账 + 兜底"的需要，不是"说话"的需要。**

---

## 4. UI 能否看到 worker 的播报完成（关键补充实测）

让 root 执行器播一句（`run_tts_exec.sh play`，event `t905worker`），同进程里的**普通 App** 的 ContentObserver 收到：

```
15:11:12.803 I/T905: OBSERVER …/GenieApi/5245525?status=1
15:11:15.670 I/T905: OBSERVER …/GenieApi/5245525?status=2      ← 2.87 s 后完成
play.public.json: {"state":"idle","event_id":"t905worker","tts_id":5245525,"last_outcome":"ok"}
```

即：**UI 不需要 root 就能知道"worker 那条话说完了"**，两条独立途径互相印证（推送 + 轮询）。

---

## 5. 推荐接入结构

### 5.1 保留什么

- 保留 `ai_worker → tts/queue → TtsExec → Provider` 作为**唯一播报出口**。它带队列、重试、`done/` 标记、`journal`、`play.public.json`、以及 worker 的回声过滤（靠 `play.public.json` 判断"这句是不是我自己在说"）。
- 不改 TtsExec、不改 worker 的现有协议、不改 `tg_stack.rc`。

### 5.2 加什么（三选一，按推荐度）

| 方案 | 改动 | 优点 | 代价 / 风险 |
|---|---|---|---|
| **A（推荐）inbox 目录** | 新建 `/data/local/tmp/t9_ui/inbox`（0777），worker 已有的 120 ms 轮询里多扫一个目录：读到 `<event_id>.json` 就 `rename` 进 `queue/`（同一文件系统内原子），非法条目移 `failed/` | UI 完全不需要 root；`queue/` 仍是 0700，权限模型不变；记账、重试、回声过滤全部保留 | ~20–40 行 C；需要一个"UI 与 worker 都认"的 JSON 结构（复用现有 `{"v":1,"event_id":…,"text":…}`） |
| B 放开 `queue/` 权限 | `chmod 0777 queue/` | 2 行改动 | 任何普通 App 都能让设备说话；`queue/` 里是明文正文，权限收紧的理由消失 |
| C UI 直接调 Provider | 0 行改动（本次已实测可用） | 最简单 | 绕过 worker 记账：`play.public.json` 不更新 → worker 的回声过滤看不到这段播报，可能把自己的声音识别成用户指令；无重试、无 journal |

结论：**A 做提交，B 不推荐，C 只限"不参与对话的短提示音"**。

### 5.3 UI 侧的完成反馈

- 首选：`ContentObserver` on `content://com.alibaba.ailabs.genie.assistant.provider`（`notifyForDescendants=true`）→ 按 `tts_id` 认领自己那一单；
- 兜底：轮询 `play.public.json`（0644，实测可读），用 `event_id` 对齐；
- 两者都不需要 root，且对"worker 发起"的播报同样有效（§4 已实测）。

### 5.4 数据流（建议形态）

```
自有 UI (普通 App)
   │  ① 提交：写 /data/local/tmp/t9_ui/inbox/<event_id>.json   {"v":1,"event_id","text"}
   │  ② 完成：ContentObserver(status=1/2/3) 或 轮询 play.public.json
   ▼
ai_worker (root, 既有)  ──rename──▶  tts/queue/<event_id>.json
   ▼
TtsExec (root, 既有)  ──query method=4 / insert method=5──▶  StatusProvider (:core)
   ▼
原厂 TtsManager / AudioStateManager ──▶ 扬声器
```

---

## 6. 验证等级汇总

| 结论 | 等级 | 依据 |
|---|---|---|
| Provider `exported=true`、无 read/writePermission、`:core` 进程 | [静] | Manifest + `dumpsys activity providers` |
| `/GenieApi` 无调用者检查；method=4/5 的字段与返回 | [静] | `StatusProvider` / `GenieTable` |
| **普通 UID 前台可播报、可停止、可收状态** | **[机]** | P1/P2 |
| **普通 UID 后台（他人 UI 在顶层）仍可播报** | **[机]** | P3 |
| `ret` 恒 false，`data` 才是 tts_id；insert 恒返回 null | [机]+[静] | 三次调用 + 代码 |
| 完成状态可经 ContentObserver 免 root 获得（含 worker 的播报） | [机] | P1–P3 + §4 |
| `play.public.json` 普通 App 可读、`queue/` 不可写 | [机] | §3 实测 |
| 其它 method（2/8/12/13/14/22/23/26/30 等）的语义 | [未] | 只登记，未调用 |
| 长驻后台（进程被系统回收后）observer 是否还能收 | [未] | 需要前台服务/常驻，本次未测 |
| 两个调用者并发播报 / 抢占 | [未] | 未测 |
| `stopTTS(sessionId=-1)` 的"停全部"语义 | [未] | 现有 TtsExec 用 -1，本次只测了显式 id |

---

## 7. 下一步建议（不启动、仅建议）

1. **T9-06 候选**：实现 §5.2 方案 A 的 inbox（worker 侧 ~30 行）+ 一个 30 行的 UI 侧提交/观察样例，然后做"UI 点一下 → worker 记账 → 播报 → UI 收到 status=2"的闭环真机验收。
2. **顺手可做的清理**：把 TtsExec 的完成判定从"解析 logcat"迁到 ContentObserver（同一份代码里两条源可并存，logcat 保留为兜底）——现在有实测依据了，但这属于改已验收链路，建议单独任务、单独回滚。
3. **不建议**：重新回到 AIDL TTS（已否决）、或让 UI 完全绕开 worker 自行播报（回声过滤会失去依据）。

---

## 8. 复现

```powershell
powershell -ExecutionPolicy Bypass -File android/t9_05_provider/build.ps1
adb install -r android/t9_05_provider/build/provider_probe.apk
adb push evidence/t9-05/dev_10_provider_probe.sh /data/local/tmp/t9/t9_05/
adb shell "su 0 sh -c 'sh /data/local/tmp/t9/t9_05/dev_10_provider_probe.sh'"     # P1/P2/P3
adb push evidence/t9-05/dev_30_app_uid_reach.sh /data/local/tmp/t9/t9_05/
adb shell "su 0 sh -c 'sh /data/local/tmp/t9/t9_05/dev_30_app_uid_reach.sh'"     # 权限边界
adb push evidence/t9-05/dev_40_observer_covers_worker.sh /data/local/tmp/t9/t9_05/
adb shell "su 0 sh -c 'sh /data/local/tmp/t9/t9_05/dev_40_observer_covers_worker.sh'"  # worker 播报可被观察
```

探针卸载：`adb shell pm uninstall com.tgz02.providerprobe`（只删这个测试包）。

### 本次踩到的构建坑

`build.ps1` 里把 `Get-ChildItem … | ForEach-Object FullName` 的结果直接 `@变量` 传给 javac 时，单文件情况下 PowerShell 会把字符串**按字符拆开**传参（javac 报 `无效的标记: :`）。改成 `$srcFiles = @(...)` 显式数组、并以 `$srcFiles`（不加 `@`）传参即可。
