# T9-08A 产品方向校准：纯语音 UI、模型配置、长期记忆现状盘点

- 仓库：`iyim/tgz02`，分支 `main`，基线 `a69d875e7733ee9c02e5022411a923c4309a6f52`
- 设备：TG-Z02 / `AILABS_S1L`，Android 8.1（API 27），Magisk root
- 性质：**只读盘点**。本文件不含任何代码改动；文中所有"现状"都以当前 main 的源码与设备
  只读查询为准，不以旧报告为准。

> 一句话结论：**纯语音链路是通的；模型配置只有"文件 + 重启"这一条路，没有 UI；长期记忆
> 完全不存在（0 实现）**。文字输入/历史会话这两块与新的产品定位冲突，应删除或降级。

---

## 0. 方法与证据

| 来源 | 用途 |
|---|---|
| `my-doc/07_ai_bridge/android/**` 源码（main 分支） | 文件路径、函数、行号、调用链 |
| 设备 `su 0` 只读命令（`ls -l`、`cat`、`pidof`、`dumpsys`） | 权限、运行态、实际生效配置 |
| `evidence/t9-07r1/60_acceptance.txt` 等既有真机日志 | 已验收链路的实测证据 |

设备当前运行态（本次盘点时刻）：

```
ai_worker            pid 5633   （新二进制 sha256=9c237ae1…，deepseek provider）
com.alibaba.ailabs.genie.smartapp(:core) pid 914   （原厂 KWS/ASR/TTS，未改动）
tgb_bridge           pid 1682   （T5 桥接）
com.tgz02.voice      pid 5658   （产品 UI，uid 10071）
```

---

## 1. 现有语音链路（D）：哪里是哪里，为什么不能动

### 1.1 端到端调用链（语音）

```
麦克风
 → 原厂 :core 唤醒 KWS（smartapp.vdex，未 hook 行为）
 → 原厂 ASR → 写 events.jsonl（T5-? 的 tap 输出，只读）
 → ai_worker（root）consumer 读 events.jsonl
     ai_worker.c:worker_loop()             主循环
     ├─ factory_tap_poll()                SessionManager 日志 → 唤醒/EOU 事件（talk_tap.c）
     ├─ session_lifecycle_poll()          会话状态机（session_ctrl.c）
     ├─ interrogation: utterance_gate.c   半句合并 / 修订
     ├─ intent_route.c                    本地指令优先（音量/时间/关屏…）→ 原厂执行
     └─ provider_attempt()                ai_worker.c:1531 … 走 AI
          cv_build_messages()             conv_context.c:674  （system 在 messages[0] :717）
          t6b_provider_complete_msgs()    deepseek_provider.c
          tts_enqueue()                   → /data/local/tmp/t5_bridge/tts/queue
          cv_commit_turn()                conv_context.c:625
 → TtsExec（app_process，root，pid 2516）读队列
 → 原厂 TTS（ContentProvider `com.alibaba.ailabs.genie.assistant.provider` /GenieApi）
 → 喇叭；同时写 journal.jsonl / play.public.json（只读回读）
 → ai_worker 把状态发布到 /data/local/tmp/t9_ui/{events,status.public.json}（T9-07 新增）
 → UI 只读这些文件 + 观察 provider status（T9-05 路径）
```

### 1.2 已验收、属于"保护区"的部分

| 组件 | 实现位置 | 状态 |
|---|---|---|
| 原厂 KWS / ASR / TTS / `:core` | smartapp.vdex（未反编译改写） | 保持，不动 |
| TTS 守卫 + hook 注入 | `hook_tts/libtg_ttsguard.so`、`hook_dialog/libtg_dialog.so`（`/data/local/tmp/t7`、`t8`） | 保持，不动 |
| TTS 执行器 | `tts_exec/TtsExec.java`（root app_process） | 保持，不动 |
| 消费/去重/偏移 | `event_reader.c`、`consumer_state.c` | 保持，不动 |
| 会话与暂存门 | `session_ctrl.c`、`utterance_gate.c`、`conv_session.c` | 保持，不动 |
| 回声过滤 | `echo_filter.c` | 保持，不动 |
| Inbox 权限与限速 | `tg_inbox.c`（0700 属主 + uid 白名单 + 速率 + 队列上限） | 保持，不动 |

**结论 D：语音链路完整、有真机证据（T9-06R1 F 项、T9-07 A–H、T9-07R1 A–G），本轮及后续
T9-08B/C/D 都不应触碰上述任何一项。**

---

## 2. UI 现状（A）：文字输入、历史会话、设置分别在哪

目录：`my-doc/07_ai_bridge/android/t9_07_ui/src/com/tgz02/voice/`

### 2.1 `ConversationActivity.java`（产品主屏，586 行）

| 功能 | 位置 | 说明 |
|---|---|---|
| 顶栏（`语音助手` + 新对话/历史/设置） | `buildScreen()` L110–L145 | 三个按钮都是 `TextView` + 点击回调 |
| 状态条 / 圆点 | `updateChip()` L525、`setChip()` L555 | 待唤醒/识别/处理/播报/未连接 |
| 气泡区 | `addBubble()` L273、`metaText()` L316、`refreshMeta()` L339 | 语音与文字共用 |
| **文字输入框** | `input = new EditText(this)` L183；`inputRow` L179 | 含 hint、`IME_ACTION_SEND` L189、回车发送 L192–L196 |
| **发送按钮** | L200–L209（`Ui.action(... "发送" ...)` → `onSendClicked()`） | 点击 → `client.submit(text)` |
| **文字提交** | `onSendClicked()` L360 | 组装 `kind:"ask"` 写 inbox、追加用户气泡、置 `S_PENDING` |
| **历史会话** | `onHistory()` L396（`AlertDialog` 列表）、`renderSession()` L243、`onNewSession()` L386 | 依赖 `SessionStore` |
| 停止播报 | `onStopClicked()` L378 → `client.stop(ttsId)` | 走 provider `insert(method=5)`（T9-05 已验证） |
| 语音轮展示 | `onTurn()` L442、`onPlay()` L490、`onStatus()` L513 | 只读 worker 发布的事实 |

### 2.2 `SessionStore.java`（本地历史，279 行）

`filesDir/sessions/<id>.json`，每会话一个文件：`current()` L83、`list()` L93、`newSession()` L104、
`open()` L115、`append()` L141、`setState()` L164、`messageCount()` L273。
它**只服务界面**：worker / 上下文 / 模型都看不到它（App 私有目录）。

### 2.3 `SettingsActivity.java`（只读，213 行）

`render()` L98 一次性铺行，`section()` L174、`row()` L182 只画 `TextView`；**没有任何
`EditText`、没有写入、没有 `FileOutputStream`**。当前展示：语音后台（pid/uptime/会话）、
AI 服务（provider/model/HTTP/耗时/错误）、提交通道计数、会话条数、设备信息。

### 2.4 `VoiceBridgeClient.java`（通道封装，516 行）

| 能力 | 位置 | 去向 |
|---|---|---|
| `submit(text)` | L171，写 `"kind":"ask"` | **产品定位冲突（应移除 UI 侧调用）** |
| `stop(ttsId)` | L215 | 保留（停止播报是纯语音 UI 必需的） |
| `pollEvents()` | L254，读 `<ui>/events/<seq>.json` | 保留（语音轮文本/回答） |
| `pollPlays()` | L310，读 `play.public.json` | 保留（播报状态） |
| `pollStatus()` | L329，读 `status.public.json` | 保留（状态条 + 设置页） |
| `pollReceipts()` | L341，读 `result/<id>.json` | 只有 ask/say 需要 → 随 submit 一起可移除 |

---

## 3. 大模型配置数据流（B）

### 3.1 数据从哪里来

```
/data/local/tmp/t5_bridge/ai_worker/worker.conf      （key=value，# 注释；设备上当前 0777 shell:shell）
   provider / base_url / model / api_key_file / temperature / max_tokens / thinking /
   system_prompt(_file) / context_* / skill_* / continuous_* / factory_talk_*
        │  ai_worker.c  --conf 解析：worker_conf.c:wc_load()
        │    · 键表：worker_conf.c L174–L345（provider/base_url/model/api_key_file/…）
        │    · 明文 api_key=... 会被**拒绝**（L345–L349，返回 -2）
        ↓
     t6b_config.deepseek (deepseek_provider.h: t6b_ds_cfg)
        │  t6b_ds_init() 只在启动时：拼 URL(t6b_ds_build_url L377)、载 key(t6b_ds_load_key L428 调用点 L1169)
        ↓
     每次请求：t6b_ds_build_body_msgs(model, …) L1387 → HTTP POST {base_url}/chat/completions
                Authorization: Bearer <key>（栈上临时缓冲，L997）
```

Key 文件：`/data/local/tmp/t5_bridge/secret/deepseek_api_key`。`t6b_ds_load_key()`
（`deepseek_provider.c` L428）用 `O_NOFOLLOW` 打开、拒绝非普通文件、并把权限位回传给调用方
（`d->key_mode`）。**权限只告警不强制**：`ai_worker.c` L3853–L3859 启动时打印
`provider ready: … key_mode=0600|NOT-0600`，若组/其它位非 0 只写一条 `chmod 600 … is recommended`
告警，不会拒绝启动。

### 3.2 当前设备实际生效值（只读）

```
provider=deepseek
base_url=http://192.168.1.13:8790/v1        ← 局域网 OpenAI 兼容网关（非 api.deepseek.com）
model=deepseek-flash
api_key_file=/data/local/tmp/t5_bridge/secret/deepseek_api_key
temperature=0.3   max_tokens=120
context_enabled=1  context_max_messages=6  context_file=/data/local/tmp/t5_bridge/ai_worker/context.json
skill_dispatch_enabled=1  skill_device_status_enabled=1
continuous_dialog_enabled=1  continuous_relisten_ms=12000  continuous_max_rounds=8
factory_talk_tap_enabled=1
```

### 3.3 关键结论（B）

1. **协议只有一种形状**：OpenAI `chat/completions` 兼容。`provider` 只有 `mock|deepseek`
   两个枚举（`ai_worker.h` 的 `T6B_PROVIDER_MOCK/DEEPSEEK`），"服务商"实际由 `base_url` 决定。
   想接别家（Anthropic 等）需要新协议，本轮不做。
2. **运行时不支持切换**：配置与 key 都只在进程启动时读取；仓库里没有配置热加载
   （`grep reload|SIGHUP` 为空）。改 model/base_url/key = **重启 worker**（会打断正在播的 TTS）。
3. **没有任何 UI 写入路径**：设置页只读；也没有"root 侧配置写入器"这种通道存在。
4. **Key 不进日志、不进命令行**：`--api-key` 不存在，只有 `--api-key-file`；日志行只有
   `model/http/curl/latency/bytes`（`ai_worker.c` 的 `deepseek ok:` 行）。
5. **持久化是文件**：`worker.conf` + key 文件，重启后仍生效（已验证：重启 worker 后 provider 仍是 deepseek）。
6. **发现两个权限问题（建议在 T9-08C 一并修）**：
   - `worker.conf` 是 `-rwxrwxrwx shell:shell`（示例文档要求 0600）→ 任何应用可改 base_url；
   - `secret/deepseek_api_key` 是 `-rw------- shell:shell`（不是 root）→ adb shell 可直接读 key。
     正确目标：两者都 `0600 root:root`。

---

## 4. 长期记忆现状（C）

### 4.1 全仓检索结果

`grep -E "memory|memor|long_term|ltm_|remember|记忆" android/*.c android/*.h` 只命中：

- `consumer_state.c:t6b_state_remember()` —— 事件去重窗口，不是记忆；
- `ai_worker.c` 两处注释里的英文单词 "memory"；
- `conv_session.h`/`nlu_patch.h` 的注释文字。

**没有任何长期记忆模块、数据结构、存储文件或注入逻辑。** 唯一与"记住"有关的能力是模型自己的
上下文窗口。

### 4.2 现在实际存在的"三种东西"，必须区分清楚

| 名字 | 落盘 | 生命周期 | 上限 | 谁能看见 | 是不是长期记忆 |
|---|---|---|---|---|---|
| **短期对话上下文** | `/data/local/tmp/t5_bridge/ai_worker/context.json`（0600 root） | 跨重启保留；对话收束时按配置可清（`session_ctx_clear_on_close` 默认 0） | `context_max_messages=6`（成对淘汰） | worker / 模型 | 否 |
| **界面历史**（App 私有） | `filesDir/sessions/<id>.json`（UID 私有） | 直到用户清空/裁剪（≤40 会话 × ≤200 条） | 有界 | **只有 UI**，worker 看不到 | 否 |
| **链路日志** | `events.jsonl`、`journal.jsonl`、`ai_worker.log`、`factory_talk.log` | 轮转/裁剪 | 各自上限 | 人 | 否 |

`context.json` 实测内容（本次盘点直接读到的）：

```json
{"version":1,"messages":[
 {"role":"user","content":"Remember the code word ORANGE。"},
 {"role":"assistant","content":"好的，我记住了，代码词是 ORANGE。"},
 {"role":"user","content":"What is the code word"},
 {"role":"assistant","content":"The code word is ORANGE."},
 … ]}
```

也就是说：现在所谓的"记住 ORANGE"**只是因为最近 6 条消息还在上下文窗口里**。一旦超过
`context_max_messages`（成对淘汰）或执行 `clear-context`，它就永久丢失。这正是需要长期记忆
的地方。

### 4.3 结论（C）

- 长期记忆：**缺失（0 实现）**；
- 与对话历史完全没有分离机制（也没有任何"记忆"数据结构可以独立删除）；
- Worker 重启 / 切换模型后能不能继续用：**现在无记忆可谈**；上下文能跨重启（已验证
  `restored_msgs=6 turns=3`），但这属于短期上下文，不能当记忆交付。

---

## 5. 能力对照表（产品要求 vs 现状）

| 产品要求 | 现状 | 证据 |
|---|---|---|
| 只有语音对话 | **部分**：语音链路已通，但主屏同时有文字输入框、发送按钮、键盘输入 | `ConversationActivity` L179–L209、L360 |
| 不展示历史会话/会话管理 | **部分**：主屏有"新对话""历史"与历史弹窗 | L110–L145、L386、L396、`SessionStore` 全文件 |
| 后台上下文管理保留 | **具备** | `conv_context.c`：`cv_init` L495 / `cv_save` L540 / `cv_commit_turn` L625 / `cv_build_messages` L674 |
| 设置里配置服务商/兼容类型 | **缺失**（只有 `provider=deepseek|mock` 枚举，写死在 conf） | `worker_conf.c` L174、`ai_worker.h` |
| 配置 Base URL | **部分**：可配置，但只能改文件 + 重启，无 UI | `worker_conf.c` L178、`deepseek_provider.c` L377 |
| 配置 API Key | **部分**：文件方式已实现且拒绝明文进 conf；无 UI、无掩码回显 | `deepseek_provider.c` L428、`worker_conf.c` L345 |
| 配置模型名并切换 | **部分**：`model=` 可配，运行时不能换（需重启） | `worker_conf.c` L182、`deepseek_provider.c` L1387 |
| 配置保存 + 重启后生效 | **具备（文件级）** | `worker.conf` 持久化，重启后 `provider=deepseek` 仍生效 |
| 真实连接测试 | **缺失**（无任何"测试连接"入口；只有 worker 日志里的 http 状态） | — |
| 长期记忆：设置内有管理入口 | **缺失** | 无记忆模块 |
| 长期记忆：查看/增/改/删/启用/清空 | **缺失** | 无记忆模块 |
| 长期记忆：跨会话保留 | **缺失** | 无记忆模块 |
| 长期记忆：语音请求检索并注入 | **缺失** | `cv_build_messages` 只注入 system + 6 条上下文 |
| 长期记忆与上下文/历史三者分离 | **缺失** | 三者现在没有"记忆"这一层 |
| 技能系统 | **部分**（`skill_dispatch` 仅 `time.query`，`skill_dispatch_enabled=1`），**本轮不做** | `skill_dispatch.c` |

---

## 6. 纯语音 UI 的调整范围（T9-08B 施工清单）

### 6.1 删除（界面与通道）

| 对象 | 位置 | 处理 |
|---|---|---|
| `EditText input` + 输入行 | `ConversationActivity` L179–L198 | 删 |
| `发送` 按钮 + `IME_ACTION_SEND` + 回车发送 | L189–L209 | 删 |
| `onSendClicked()` | L360 | 删 |
| `新对话` / `历史` 按钮 | L110–L145 | 删 |
| `onNewSession()` / `onHistory()` / `renderSession()` | L386 / L396 / L243 | 删（渲染改为"只渲染当前轮"） |
| `SessionStore` 及其调用 | `SessionStore.java` 全文件、L57/L82 | 删（见下"保留"一条的替代） |
| `VoiceBridgeClient.submit()` / `pollReceipts()` | L171 / L341 | 删（UI 不再有提交通道） |
| 设置页的"会话记录"段 | `SettingsActivity` L98 区块 | 删或改为"上下文条数" |

### 6.2 保留（不能误删）

| 对象 | 理由 |
|---|---|
| 状态条 `updateChip()/setChip()`、`onStatus()` | 纯语音 UI 的核心反馈 |
| `onTurn()` / `onPlay()` 与气泡渲染 | 用户要看见"听清了什么、答了什么"（当前轮） |
| `addBubble()` / `metaText()`（简化状态词） | 复用即可，去掉 ask 相关状态 |
| `停止` 按钮 + `client.stop()` | 唯一需要的"控制" |
| `pollEvents/pollPlays/pollStatus` | 只读事实来源，纯语音也要用 |
| worker 的 `kind:"ask"` 处理与 `txtq` | **保留但不再被 UI 使用**（协议向后兼容，T9-07R1/F 已验收，删除反而扩大改动面） |
| `context.json` 与 `cv_*` | 后台上下文，产品要求第 2 条明确保留 |
| Inbox 的权限/限速/队列保护 | 已验收，不动 |

### 6.3 新增（纯语音 UI）

- 一个"当前对话"区域的空状态（"说出唤醒词「天猫精灵」"）；
- 设置入口（去掉历史入口后，设置成为唯一二级页）。

> 注意：去掉历史列表后，"屏幕上还能看到上一轮吗"需要有明确口径。建议：**只保留当前一轮
> （最近一次问答）与进行中的状态**，更早的内容不再显示——这正是"不需要显示历史对话"的字面
> 要求，也避免偷偷把 UI 变成聊天记录器。

---

## 7. 大模型配置的完整实现路线（T9-08C）

### 7.1 需求拆成 6 件事

1. UI 能编辑：服务商类型、Base URL、API Key、模型名；
2. 保存后**真正生效**（不需要用户 adb）；
3. 真实连接测试；
4. 重启后保持；
5. Key 安全（不落 App、不进日志、写入后不回显明文）；
6. 不破坏已验收链路与权限模型。

### 7.2 关键约束（决定了方案形态）

- UI 是普通应用，**不能写 root 文件**；写配置文件必须由一个 root 侧执行者完成。
- 现成的 root 侧执行者就是 `ai_worker`（已在跑、已 root、已处理 inbox）。
- 配置只在启动时读取 → 保存后必须重启 worker（或新增 reload，见 7.4 取舍）。

### 7.3 建议方案（最小、可审计）

新增一个**独立的配置通道**，与对话 Inbox 分开，避免把"控制面"混进"数据面"：

```
<ui>/cfg/inbox/<seq>.json      UI 写入（0700 UI uid，原子 tmp+rename）
<ui>/cfg/result/<seq>.json     worker 回执（0644，含 applied/err）
<ui>/cfg/current.json          worker 发布的"当前生效配置"（**不含 key**，只含 key 是否已配置/位数）
```

请求类型（`op` 字段，全部可校验）：

| op | 载荷 | 行为 |
|---|---|---|
| `get` | — | 回执返回 current（脱敏） |
| `set` | `provider_type`(openai 兼容)、`base_url`、`model`、`temperature`、`max_tokens` | 校验 → 原子重写 `worker.conf`（0600 root:root）→ 回执 |
| `set_key` | `api_key`（仅这一次传输，不落 UI） | 校验长度/字符集 → 原子写 `secret/deepseek_api_key`（0600 root:root）→ 立即 fsync → 回执只回"已配置 + 尾 4 位" |
| `test` | — | 用当前配置发一次**最小请求**（`max_tokens=1`，超时 5 s），回执 `http/curl/latency/错误类别` |
| `apply` | — | 重启 worker 使配置生效（见 7.4），回执新 pid |

安全点：
- `cfg/inbox` 也必须是 **0700 + uid 白名单**（复用 `tg_inbox` 的同一套 uid/速率/上限逻辑，参数化即可）；
- `api_key` 只在内存里经过一次：UI → 文件 → worker 写入 → 清零；**回执永远不回显 key**；
- 拒绝 `base_url` 里的控制字符、非 http(s) 协议、超长；
- 允许 `http://`（当前就是 LAN 网关），但要在 UI 与状态里明确"明文传输"。

### 7.4 "保存后如何生效"的两个选项

| 选项 | 做法 | 优点 | 缺点 |
|---|---|---|---|
| A（推荐先做） | `apply` → worker 优雅退出（commit 状态）→ 由既有 launcher 重启 | 复用已验收的启动脚本；行为可预测 | 正在播的 TTS 会被打断（约 2–3 s 不可用） |
| B | worker 在收到 `apply` 后 `execv` 自重启，保持 pid 家族不变 | 不依赖外部脚本 | 需要处理锁文件/状态落盘，风险更高 |

建议 T9-08C 先做 A；把"打断播报"在 UI 上明说（"保存会重启语音服务，约 3 秒"）。

### 7.5 "服务商及兼容类型"的口径

- 现在只有 OpenAI `chat/completions` 一种形状；`provider` 枚举只有 mock/deepseek。
- T9-08C 建议：UI 里"服务商类型"只提供 `OpenAI 兼容`（其余置灰并注明"暂不支持"），
  `base_url` 承担"接哪家"的职责。**不做多协议适配**（Anthropic/Gemini 等留给以后），
  避免本轮把范围撑大。

---

## 8. 长期记忆的完整实现路线（T9-08D）

### 8.1 三条硬要求（来自产品定位）

1. 记忆是 **AI 大脑的一部分**，不是对话历史的附属品；
2. **独立的数据生命周期**：删对话 ≠ 删记忆；清上下文 ≠ 清记忆；
3. 语音请求要**检索并注入**，且用户能在设置里**查看/增/改/删/启用/清空**。

### 8.2 数据模型（建议）

文件：`/data/local/tmp/t5_bridge/ai_worker/memory.json`（**0600 root:root**），
整体原子重写（tmp+fsync+rename），条数上限（建议 500 条 / 单条 ≤ 200 字）防膨胀：

```json
{"v":1,"next_id":7,"items":[
  {"id":6,"text":"用户的名字是 Ada","tags":["身份"],"enabled":1,
   "created_ms":1795518000000,"updated_ms":1795518000000,
   "hits":3,"last_used_ms":1795519000000,"source":"user_added|auto"}
]}
```

- `source`：`user_added`（设置里手工添加）/ `auto`（模型或规则抽取，后续再加）；
- `enabled`：单独开关，停用即不参与检索；
- 与 `context.json` **完全没有引用关系**（不同文件、不同结构、不同删除语义）。

### 8.3 产生与更新

| 来源 | 做法 | 本轮是否做 |
|---|---|---|
| 用户手工添加 | 设置页"添加记忆"（一条文本 + 可选标签） | **做** |
| 用户手工编辑/删除/停用/清空 | 列表行操作 | **做** |
| 自动抽取（"我叫 X""记住…"） | 需要模型或规则，易误记 | 先不做，留接口（`source:"auto"` 占位） |

### 8.4 检索（无网络、无新依赖）

- 候选集：`enabled=1` 的全部记忆（≤500 条，内存里线性扫描完全够）；
- 打分：查询词与记忆文本的**字符 2-gram 重叠率**（中文友好）+ 关键词命中加权 + 使用频率/时间衰减；
- 取 top-K（建议 K=4，单条 ≤200 字，总注入预算 ≤800 字）；
- 只做"相关性阈值"过滤（低于阈值不注入），避免把无关记忆硬塞给模型。

### 8.5 注入（关键设计点）

在 `conv_context.c:cv_build_messages()`（L674）里，**system prompt 之后**插入一条独立的
`role:"system"` 记忆块：

```
messages[0] = 你的 system prompt（原样）
messages[1] = "【长期记忆】以下是用户长期有效的信息，仅在相关时使用：\n- …\n- …"
messages[2..] = 历史 N 条（N ≤ context_max_messages）
messages[last] = 本轮 user
```

要求：
- 记忆块**不进历史淘汰队列**（否则 6 条上下文一滚就没了）——它每轮按检索结果临时生成；
- 记忆块与本轮问题不相关时**为空**（宁可不注入，也不要每轮都塞）；
- 注入内容与 `context.json` 的写入**互不影响**（记忆不会写进对话历史）。

### 8.6 生命周期与场景矩阵（这是本轮最容易被做错的地方）

| 操作 | 对话上下文 | 界面历史 | **长期记忆** |
|---|---|---|---|
| 清空上下文（`clear-context`） | 清 | 不变 | **不变** |
| 对话收束（`session_ctx_clear_on_close=1`） | 清 | 不变 | **不变** |
| 用户删除某条记忆 | 不变 | 不变 | 该条消失 |
| 用户清空记忆 | 不变 | 不变 | 全空 |
| worker 重启 | 恢复（已验证） | 不变 | 恢复 |
| 切换模型/Provider | 保留 | 不变 | 保留（与模型无关） |
| 重装 APK | 不受影响（在 root 侧） | **会丢**（App 私有） | 不受影响 |

### 8.7 验收方式（T9-08D 必须真机）

1. 添加"我叫 Ada"→ 重启 worker → 问"我叫什么" → 答出 Ada；
2. 清空对话上下文 → 再问 → 仍答出（证明与上下文解耦）；
3. 停用该记忆 → 再问 → 不再使用（但不能声称"忘了"，应正常回答"不知道"）；
4. 删除该记忆 → 再问 → 不再使用；
5. 新增 3 条无关记忆 + 1 条相关 → 只注入相关的那条（检索有效）；
6. 把 `context.json` 删掉 + 重启 → 记忆仍在；
7. 记忆文件权限 `0600 root:root`，其它 uid 读不到。

---

## 9. 最小必要 UI 设计（T9-08B/C/D 的落地形态）

只做两屏，不新增第三屏：

### 9.1 主屏（纯语音）

```
┌──────────────────────────────────────────────┐
│ 语音助手                              设置   │  顶栏（只剩设置）
├──────────────────────────────────────────────┤
│ ● 待唤醒 · 说「天猫精灵」                     │  状态条（待唤醒/识别/处理/播报/未连接）
├──────────────────────────────────────────────┤
│                                              │
│        你说：……（原厂 ASR 原文）              │  当前一轮（最多上一轮 + 本轮）
│        助手：……（AI 回答）                    │
│                                              │
├──────────────────────────────────────────────┤
│                                  [ 停止播报 ] │  仅此一个按钮
└──────────────────────────────────────────────┘
```

### 9.2 设置页（四段，全部有真实用途）

| 段 | 内容 | 读/写 |
|---|---|---|
| 语音服务 | worker 运行状态、pid、uptime、当前会话轮次、原厂会话 | 只读 |
| 模型配置 | 服务商类型（OpenAI 兼容）、Base URL、API Key（掩码，写后显示"已配置 · 尾 4 位"）、模型名、温度/最大长度（可选）、**测试连接**、**保存并生效** | 读写（经 cfg 通道） |
| 长期记忆 | 记忆条数、列表（文本 + 启用开关 + 编辑/删除）、添加、清空 | 读写（经 cfg 通道） |
| 关于 | 版本、设备、通道路径 | 只读 |

不做：技能开关、日志查看器、调试面板、会话列表。

---

## 10. 后续任务与验收标准（建议拆分）

### T9-08B 纯语音 UI 收敛

**改什么**：第 6 节清单。**验收**：
- 主屏没有输入框/发送/历史/新对话；输入法不会被唤起；
- 语音一轮：状态条按 待唤醒→识别→处理→播报 变化，气泡显示 ASR 原文与 AI 回答；
- `停止` 生效（原厂 STOP_TTS + journal `interrupted`）；
- 设置页仍可打开；App 无新增权限，无测试入口；
- 原厂语音链路回归通过（同 T9-07R1 C 项）。

### T9-08C 模型配置中心

**改什么**：第 7 节。**验收**：
- UI 改 model/base_url 并保存 → worker 重启 → `status.public.json` 里 `provider/model` 变化，且**连续两轮问答**成功；
- 写一个新 key → 测试连接返回 200 与耗时；写一个错 key → 返回 401 且 UI 明确报错（不臆造成功）；
- 重启设备 → 配置仍生效；
- key 文件 `0600 root:root`；UI、日志、回执中都没有明文 key（只显示尾 4 位）；
- `worker.conf` 权限修正为 `0600 root:root`；
- 保存/应用不影响已验收的语音链路（重启后自动续听仍工作）。

### T9-08D 长期记忆

**改什么**：第 8 节。**验收**：第 8.7 的 7 条，全真机，全部要有原始日志；
另加"记忆与上下文互不影响"的对照实验。

### T10 技能系统

不在本轮范围。前置条件：T9-08B/C/D 完成且稳定。

---

## 11. 风险与发现汇总

| # | 发现 | 影响 | 建议 |
|---|---|---|---|
| 1 | `worker.conf` 是 `0777 shell:shell` | 任意应用可改 base_url/model（把回答导去别处、或让服务不可用） | T9-08C 里改为 `0600 root:root`，并在 deploy 脚本里强制 |
| 2 | `secret/deepseek_api_key` 是 `0600 shell:shell`（不是 root） | `adb shell`（UID 2000）可直接读 key | 改为 `0600 root:root` |
| 3 | 配置只在启动时读，无 reload | 保存配置必须重启 worker（打断播报 ~3 s） | T9-08C 选项 A，UI 明说 |
| 4 | `base_url` 指向 LAN `192.168.1.13:8790` 且是明文 http | 该网关不可用时 AI 全挂；同网段可嗅探 | 保留现状但要在设置里显示"明文传输" |
| 5 | `SessionStore`（界面历史）在 App 私有目录 | 重装 APK 会丢；且与新产品定位冲突 | T9-08B 删除 |
| 6 | worker 的 `kind:"ask"` 通道仍存在 | UI 不再使用，但协议仍在（只有 UI uid 能写，无越权面） | 保留（删了要改已验收代码，收益低） |
| 7 | 上下文只有 6 条消息 | "记住 ORANGE"只是窗口效应，超窗即丢 | 这正是 T9-08D 的存在理由 |

---

## 12. 附录：本轮用到的只读证据

```sh
# 设备运行态
adb shell 'pidof ai_worker; pidof com.alibaba.ailabs.genie.smartapp; pidof tgb_bridge'
# 权限
adb shell 'su 0 ls -l /data/local/tmp/t5_bridge/ai_worker/worker.conf \
                       /data/local/tmp/t5_bridge/secret/deepseek_api_key \
                       /data/local/tmp/t5_bridge/ai_worker/context.json'
# 生效配置（无 key）
adb shell 'su 0 sed -n "1,80p" /data/local/tmp/t5_bridge/ai_worker/worker.conf'   # 只取 key=value 行
# 短期上下文内容
adb shell 'su 0 cat /data/local/tmp/t5_bridge/ai_worker/context.json'
# 既有真机证据
my-doc/07_ai_bridge/evidence/t9-07r1/60_acceptance.txt
my-doc/07_ai_bridge/evidence/t9-06r1-f/40_f_voice.txt
```

本轮未修改任何源代码、未改动设备状态、未新增功能。
