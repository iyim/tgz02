# T9-08B-R1-FIX-PREP 停止播报修复方案确认

- 基线：`d718dbb97cf5dfc24b83c81e54ff751e0e1ed987`
- 性质：只做技术确认。**未改源码、未构建、未动设备**。
- 一句话结论：修复必须同时动**执行器**和**UI 的停止发起方式**；只改 UI 无法终止重播，
  只改 `onNotify status=3` 的映射又会误伤真实故障。推荐"**带目标 id 的受控停止**"。

---

## 1. 先补齐上一份报告遗漏的事实（含证据级别）

### 1.1 `stop` 不在终态集合里 —— 是真实的代码缺口，但没有现场证据证明它会触发

```java
// TtsExec.java L453
else if (st.equals("stop") || st.equals("stopped"))  noteEnd(id, "stop");

// L879  终态判定
if (outcome.equals("ok") || outcome.equals("stopped") || outcome.equals("interrupted")) { … }
//                                              ↑ 没有 "stop"
```

- **代码事实**：若 `playItem` 返回 `"stop"`，会掉进 L897 的重试分支 → 同 event_id 重播。
- **证据事实**：全仓库证据里搜索 `status = stop|stopped|error|fail` 的工厂反馈行 —— **0 命中**。
  真机上真实出现过的只有 `status = play` / `complete` / `interupt`（拼写如此），以及
  `onNotify … status = 1|2|3`。
- 结论：这是一条**必须补上的防御性修正**，但它**不是**本次现场重播的成因；成因见 1.2。

### 1.2 现场重播的真实成因：`interupt`（终态）与 `status=3`（重试）的竞态

| 工厂输出 | 执行器映射 | 结果 |
|---|---|---|
| `status = interupt`（L455） | `interrupted` | **终态**（L879）→ 不重播 |
| `onNotify id=…,status = 3`（L465） | `error` | **重试**（L897–930）→ 2 s 后同 event_id 重播 |

`noteEnd()` L483–490 只记**第一次**结束信号（`if (s.endMs < 0)`）。用户停止时工厂两条都发，
谁先被 LogTail 读到，就决定了这一次是"停住"还是"重播"。

**同一动作、两种结果，两边都有已提交的证据：**

```
evidence/t9-07/60_acceptance.txt:42-44        ← 重播
{"kind":"tts","event_id":"ui-1795512173628-f0ea","tts_id":5245910,"outcome":"error","dur_ms":6993,"attempts":1}
{"kind":"retry","event_id":"ui-1795512173628-f0ea","attempts":1,"outcome":"error"}
{"kind":"tts","event_id":"ui-1795512173628-f0ea","tts_id":5245914,"outcome":"interrupted","dur_ms":9757,"attempts":2}

evidence/t9-08b/60_acceptance.txt             ← 停住（没重播）
{"kind":"tts","event_id":"saystop-214431","tts_id":5246480,"outcome":"interrupted","dur_ms":8695,"attempts":1}
```

### 1.3 `status=3` 不能一律当终态

`evidence/t9-04/23_app_probe_fg.txt:36` 里，`onNotify id=5245490 ,status = 3` 与
`TtsManager.cpp:playTts:388 tts = "T9 AIDL plain TTS test"` **同一毫秒**出现 —— 那次 AIDL 播报
并没有真正出声就直接 end 了。也就是说 `status=3` 既可能是"被停止"，也可能是"提交后立刻失败"。
**任何"把 3 一律改成终态"的做法都会把真故障一起吞掉。**

> 同一份日志里还有 `TtsManager.cpp:onTtsEnd:220 sessionId = …`（L37），执行器目前不解析它；
> 它是否区分"正常播完 / 被打断"没有任何证据，**在拿到证据前不要拿它当判据**。

### 1.4 `control/stop` 在播放期间读不到（这条决定修复形态）

`handleControl()` 只在主循环调一次：

```java
// L1064
while (true) { handleControl(); int n = drainOnce(); … }
```

而 `drainOnce()` 里的 `playItem()` 是**阻塞**的（最长 `playTimeoutMs`）。也就是说：
**播报进行中写 `control/stop`，执行器当前那条播放读不到它**，要等这条播完才处理。
`playItem` 里的 `if (stopRequest)`（L740）只有在"进入播放前就已经置位"时才有意义。

---

## 2. 推荐修复路径（A：复用 Inbox + 带目标 id 的受控停止）

### 2.1 为什么选它

| 方案 | 能终止当前播放 | 不误伤真故障 | 不误停下一条 | 改动面 |
|---|---|---|---|---|
| 只改 UI（清 `activeTtsId`、校验在播） | 否 | 是 | 是 | 最小 |
| 把 `status=3` 一律改终态 | 是 | **否** | 是 | 小 |
| 把 `"stop"` 加进终态集合 | 否（真机不出现该词） | 是 | 是 | 极小 |
| **带 id 的受控停止（推荐）** | **是** | **是** | **是** | 中（Inbox+worker+执行器+UI） |
| 现状 `control/stop`（不带 id） | 播放中否；**会取消队列尾巴** | 是 | **否** | 小 |

### 2.2 状态传递图（修复后）

```
① UI：用户在播报中点「停止播报」
   VoiceHomeActivity.onStopClicked()
     ├─(a) VoiceBridgeClient.requestStop(ttsId)      ← 新：写 Inbox（kind=stop，带 tts_id）
     │        <ui>/inbox/<event_id>.json
     └─(b) VoiceBridgeClient.stop(ttsId)             ← 保留：provider insert(method=5)，让音频立刻停
              │
② Worker（root）：aiw_inbox_enqueue() 收到 kind=stop
     · 校验：owner uid（allowed_uids）、rate、event_id 合法、tts_id 为正整数
     · 立刻回执 result/<id>.json {"ok":true,"stage":"stop"}
     · 调用现有 tts_request_stop(w, "ui stop")
          → 写 <tts_queue>/control/stop ，内容 = 目标 tts_id（新）
③ TtsExec：
     · playItem() 的轮询循环内新增一次"读 control/stop"（修复 1.4 的缺口）
     · 读到后：若目标 id == 当前 id → stopTts(id) → outcome="stopped" → 终态（不重试）
               若目标 id != 当前 id → 不取消、不停止，留给对应那条或直接忽略并记录
     · 队列里其余项**不再被无条件 cancel**（现有 L847–861 的"取消尾巴"改为仅对旧式
       `control/stop`（无 id、无内容）保留，保证 T7-04 的旧语义不丢）
④ 执行器写 journal / play.public.json（不变）→ UI 读到 idle → 清 activeTtsId
```

### 2.3 为什么这样不会误伤普通失败

- 只有"**目标 id 匹配当前播放 id**"的停止请求才把该条收敛成 `stopped`；
- `timeout` / `provider_error` / `rejected` / **没有匹配停止请求的 `status=3`** 仍走 L897–930 重试；
- `interupt` 仍映射 `interrupted`（终态，行为不变）；
- `"stop"` 加进终态集合只是补一条防御分支。

### 2.4 队列语义（需要你确认的一点）

| 场景 | 现状 | 本方案 |
|---|---|---|
| 停止当前条 | 可能重播 | **终止，不重播** |
| 队列里的后续条目 | **被取消**（L847–861） | **照常播放** |
| "停止并清空后续" | 现状即如此 | 需要显式开关/另一种请求（例如 `kind:"stop-all"`），默认不做 |

「不能误停下一条任务」这条验收要求对应右边的选择；如果你其实想要"停止=清空队列"，请明确说，
那会变成 `stop-all` 语义（改动更小，但和验收要求 5 冲突）。

---

## 3. 需要修改的准确位置（供替换代码使用）

### 3.1 执行器 `android/tts_exec/TtsExec.java`

| # | 位置 | 改什么 |
|---|---|---|
| 1 | L879 终态判定 | 终态集合加入 `"stop"` |
| 2 | L740–743 `playItem` 的 stop 分支 | 按目标 id 匹配：`stopId < 0` 视为"全部"（兼容旧路径），`stopId > 0` 时仅当 `stopId == id` 才停 |
| 3 | `playItem` 轮询循环（L739–751） | 每轮调用一次轻量 `pollStopFile()`（抽出 `handleControl()` 的读文件部分），让播放期的停止请求生效 |
| 4 | L941–950 `handleControl()` | 读 `control/stop` 的**内容**作为目标 id（空/旧格式 → `-1` 全部）；读后删除 |
| 5 | L847–861 cancel 逻辑 | 只有"无目标 id 的旧式 stop"才取消队列尾巴；带 id 的停止不取消 |
| 6 | L819 / L934 的清零 | 保持不变（队列空/本轮结束清零），但需确认"带 id 的停止"不会在清零前影响下一条 |

### 3.2 Worker `android/ai_worker.c`

| # | 位置 | 改什么 |
|---|---|---|
| 1 | `tts_request_stop()` L2752–2776 | 写入 `control/stop` 时带上目标 tts_id（新增参数）；保持"已有请求则不重复写"的判断 |
| 2 | `aiw_inbox_enqueue()` L1374 | 新增 `kind == "stop"` 分支：校验 `tts_id`、调 `tts_request_stop(w, "ui stop", id)`、立即回执、不进入 `txtq` |
| 3 | 现有调用点 L2496 / L2799 | 传 `-1`（全部），保持 T7-04 行为不变 |

### 3.3 Inbox `android/tg_inbox.h` / `tg_inbox.c`

| # | 位置 | 改什么 |
|---|---|---|
| 1 | `TI_KIND_*` | 增加 `TI_KIND_STOP "stop"` |
| 2 | `ti_parse_msg()` 的 kind 分支 | 白名单加 `stop`；`stop` 允许没有 `text`，但**必须**有正整数 `tts_id` |
| 3 | `ti_poll()` 的字段检查 | 现有"必须有 text"的规则对 `stop` 放宽；回执 stage 写 `"stop"` |
| 4 | `ti_enqueue_fn` 回调签名 | 需要把 `tts_id` 传给 worker（或在 worker 侧重新解析同一文件——不建议） |

### 3.4 UI

| # | 位置 | 改什么 |
|---|---|---|
| 1 | `VoiceHomeActivity` L57 / L219–227 | `onPlay` 里 `state=="idle"` 时清 `activeTtsId = -1`；`onStopClicked()` L182–187 先判"是否在播"，不在播就提示而不发请求 |
| 2 | `VoiceHomeActivity` L182–187 | 改为：`requestStop(id)`（Inbox，终止语义）+ `stop(id)`（provider，立刻停音频） |
| 3 | `ConversationActivity` L69 / L378–384 / L490–500 | 同上（同一个 bug，同样的两处清理） |
| 4 | `VoiceBridgeClient` L227–247 | 新增 `requestStop(int ttsId)`：原子写 `<ui>/inbox/ui-stop-<ts>.json`，`{"v":1,"kind":"stop","event_id":…,"tts_id":N}`；`stop()` 保持不变 |

---

## 4. 普通故障重试不受影响的保证方式

1. **判定只看"是否有匹配的停止请求"**，不看 outcome 字面；
2. 三条例行路径保持原样：`timeout`、`provider_error`、`rejected` → L897 重试；
3. `status=3` 在**没有**匹配停止请求时仍是 `error` → 仍重试（T9-04 那种"根本没播起来"的场景继续按失败处理）；
4. 回归手段：用 `--deepseek-timeout-ms 100 --deepseek-connect-timeout-ms 100` 重启 worker 造一次真实失败，
   确认 journal 仍有 `retry` 与 `attempts` 递增。

---

## 5. 仍需真机验证的具体事项

| # | 事项 | 为什么必须真机 |
|---|---|---|
| 1 | `status = stop` 在本机是否会出现 | 全部证据 0 命中，只能算防御性分支 |
| 2 | `status=3` 在"用户停止"与"真故障"上的分布 | 需要各做 ≥5 次受控实验（停止 5 次 / 100 ms 超时 5 次），统计两条日志的出现顺序 |
| 3 | 播放期间写 `control/stop` 的实际响应时间 | 取决于新增轮询间隔（`pollMs`），要量 |
| 4 | 带 id 的停止是否真的不取消队列尾巴 | 连续提交两条，停第一条，看第二条是否照常播 |
| 5 | 两次连按停止是否误停后续 | 边播边连按 3 次 |
| 6 | provider insert 与 Inbox stop 的先后顺序是否影响结果 | 两种顺序各跑 3 次 |
| 7 | 原厂语音回归 | 唤醒→ASR→AI→TTS；`interupt`（用户插话）仍不重播 |

---

## 6. 本轮没做的事

- 没有改 `TtsExec.java` / `ai_worker.c` / `tg_inbox.*` / UI 任何一行；
- 没有构建、没有碰设备；
- 没有替你选"停止是否清空队列"这个产品语义，只把两种选择的后果写清楚（2.4）。
