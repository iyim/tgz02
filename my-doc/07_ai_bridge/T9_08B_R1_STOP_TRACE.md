# T9-08B-R1 停止播报：现状定位（只定位，不含修改）

- 基线：`b63e85e2905b6d469a122b49b63dbb845fae3f97`
- 性质：按执行纪律，本轮**只做定位**——列出真实文件、行号、代码上下文与状态传播路径，
  并更正上一份报告里的一处证据引用错误。**未修改任何源码**，不提交猜测性修复。
- 结论先说：停止只有一个"半成品"通道——worker 能发起**终态**停止，UI 不能。
  UI 走 provider 停止时，执行器不知道"这是用户主动停止"，于是可能把这次中断当成播放失败重入队。

---

## 一、三条真实的停止路径（谁按下了停止）

```
① UI 按钮（主屏 / 文字页）
   VoiceHomeActivity.onStopClicked()          L182–187
   ConversationActivity.onStopClicked()       L378–384
        → VoiceBridgeClient.stop(ttsId)       L227–247
              → ContentValues{method=5, sessionId=ttsId}
              → ContentResolver.insert(content://com.alibaba.ailabs.genie.assistant.provider/GenieApi)
   ── 这条路径**只有 provider 知道**；TtsExec 完全看不见"有人按了停止"。

② Worker（root）发起
   ai_worker.c: tts_request_stop()            L2752–2776
        → 写 <tts_queue>/control/stop            L2758
   TtsExec.handleControl()                    L941–950
        → stopRequest = true; stopId = -1; 删除 control/stop
   TtsExec.playItem() 轮询到 stopRequest      L740–743
        → stopTts(stopId) ; outcome = "stopped"
   ── 这条路径是**终态**：L879 把 "stopped" 当完成，nStopped++，不进重试分支。

③ 执行器启动参数 --stop / --stop-id（运维用）
   TtsExec.java                              L1160–1161, L1037–1041
```

**差别就是全部问题的根源**：②有 `stopRequest` 标记，①没有。

---

## 二、outcome 从哪来（决定"终态"还是"重试"）

### 2.1 工厂反馈 → outcome 映射

`TtsExec.LogTail.handle()` L446–467：

```java
448  if (m.find()) {                                  // P_FB: audioHandleTtsFeedback ... status=X,type=tts,agmcId(tts_id)=N
451      if (st.equals("play")) noteStart(id);
452      else if (st.equals("complete")) noteEnd(id, "complete");
453      else if (st.equals("stop") || st.equals("stopped")) noteEnd(id, "stop");
455      else if (st.equals("interupt") || st.equals("interrupted")) noteEnd(id, "interrupted");
456      else if (st.contains("fail") || st.contains("error")) noteEnd(id, "error");
458  }
459  m = P_NT.matcher(line);                          // P_NT: onNotify id= N ,status = M
463      if (code == 1) noteStart(id);
464      else if (code == 2) noteEnd(id, "complete");
465      else if (code == 3) noteEnd(id, "error");     // ← UI 停止时最常见到的就是 status=3
```

`noteEnd()` L483–490 只记**第一次**结束事件（`if (s.endMs < 0)`），先到先得——所以同一次停止
到底落成 `interrupted` 还是 `error`，取决于两条日志谁先被读到。**这正是缺陷"有时重播、有时不重播"的原因。**

### 2.2 终态与重试的分岔

`drainOnce()` L879–930：

```java
879  if (outcome.equals("ok") || outcome.equals("stopped") || outcome.equals("interrupted")) {
         ... markDone / 删除 inflight 负载            // 终态：不再播
897  } else {
         /* timeout / error / rejected / provider_error：不丢正文，回到队列重试 */
899      if (outcome.equals("timeout")) nTimeout++; else nError++;
902      boolean toFailed = it.attempts >= maxAttempts;      // maxAttempts = 3（L75）
903      boolean persisted = toFailed ? parkFailed(it) : writeItem(it, queueDir, "retry");
924      journal("…\"kind\":\"retry\",\"event_id\":\"" + it.eventId + "\"…");
927      Thread.sleep(2000);                                  // 2 s 后再播一遍
     }
```

也就是说：**`outcome == "error"` ⇒ 同一个 event_id 回到 queue/ ⇒ 2 秒后重播**；
只有 `ok / stopped / interrupted` 才会进终态。

### 2.3 公开状态（UI 读的就是这个）

- `pubState/pubEventId/pubTtsId/pubLastOutcome` 在 L864–875 写入 `play.public.json`；
- **`last_outcome` 是最终 outcome**，所以 UI 其实能从 `play.public.json` 看出这次是
  `error`（会重播）还是 `interrupted`（结束）。

---

## 三、三个具体缺陷点（含行号）

### D1（根因）执行器不知道"这是用户主动停止"

- UI 停止只走 provider `insert(method=5)`（`VoiceBridgeClient.stop` L227–247）；
- 执行器唯一的"用户停止"信号是 `stopRequest`，而它只能由 `control/stop` 文件（root）或启动参数设置
  （L941–950 / L1160–1161）；
- 于是 UI 停止只能通过工厂反馈间接体现，而反馈可能落成 `onNotify status=3 → "error"`（L465）→ 重试（L897–928）。

### D2（表现）同一次停止的结果不确定

- `noteEnd()` 先到先得（L488）：`status = interupt/interrupted`（L455）与 `onNotify status=3`（L465）
  谁先到，决定了 `interrupted`（终态）还是 `error`（重播）；
- 这解释了为什么同一条命令，有时 `interrupted, attempts=1`，有时 `error → retry → attempts=2`。

### D3（UI 侧）`activeTtsId` 生命周期不完整，停止请求不校验"当前是否在播"

- `VoiceHomeActivity.activeTtsId` 声明 L57，赋值 L223（`if (p.ttsId > 0) activeTtsId = p.ttsId;`），
  **没有任何地方清零**；
- `onStopClicked()` L182–187 直接用这个值调 `client.stop(id)`；
- `ConversationActivity` 同样：L69 声明、L494 赋值、L378–384 使用，同样不清零；
- `VoiceBridgeClient.stop(ttsId)` L227–231 只判 `ttsId <= 0` 就返回"还没有可停止的播报"，
  **不判断当前是否真的在播**；
- 后果：播完之后再点停止，会对着**上一条**（甚至更早）的 tts_id 发 `insert(method=5)`；
  原厂对不存在的 id 一般无动作，但这属于"用过期句柄操作"——如果恰好有新一条在播，
  就有误停的可能（需要真机验证，见第五节）。

---

## 四、如果要修，只有两个落点（供决定，本轮不实现）

| 落点 | 做法 | 代价 / 风险 |
|---|---|---|
| **A. 执行器侧（根治）** | 让"用户停止"以 `stopRequest` 之外的方式被识别：例如把 provider 层 `onNotify status=3`（或 `status=stop/interrupted`）在**当前正在播的 tts_id** 上视为**终态**，不进入重试；或新增一个"受控停止"信号（`control/stop` 已有语义，但需要 root 侧代写） | 动的是已验收模块（T5-06D/T7-04），要保证"普通播放失败仍重试"（`timeout/provider_error`）不被误伤 |
| **B. UI 侧（收口）** | `activeTtsId` 在 `idle` 时清零；`stop()` 前校验"当前在播且 id 匹配"；必要时连续两次强调 | 只能消除"过期 id"和"按一次没停住"的体验问题，**无法根治重播**（因为重播是执行器的重试） |

判断：**A 是必须的，B 是配套**。只做 B 不能满足"停止必须是终止操作"的验收标准。

---

## 五、证据更正（重要）

上一份报告（`T9_08B_VOICE_FIRST_UI.md` 第四节）引用的 `error → retry → interrupted` 来自
**21:04 的一次手动运行**，那段 journal 是我在会话里直接读的，**不在**本次提交的验收日志里。

本次提交的 `evidence/t9-08b/60_acceptance.txt` 里，停止测试的事件是：

```
{"kind":"tts","event_id":"saystop-214431","tts_id":5246480,"outcome":"interrupted","dur_ms":8695,"attempts":1}
```

即这次**没有**重现重播。因此正确的表述是：

- **机制存在且可复现**（有一次完整的 `error → retry → interrupted` journal，来自 21:04 手动运行）；
- **但不是每次都发生**（本次验收命中的是 `interrupted` 终态），因为 D2 的竞态；
- 所以既不能说"已修复"，也不能把"这次没重播"当成通过。

已按此更正 `T9_08B_VOICE_FIRST_UI.md` 第四节。

---

## 六、修复后必须真机验证的 7 条（对应验收标准）

| # | 验证 | 观察点 |
|---|---|---|
| 1 | 正常播完不重播 | journal 只有一条 `outcome:"ok"`，无 `retry` |
| 2 | 播报中按**一次**停止即终止 | journal 该 event 只有一条记录且 outcome ∈ {stopped, interrupted} |
| 3 | 停止后 ≥10 s 不重播 | 10 s 内该 event_id 不再出现任何 journal 行，`play.public.json` 保持 idle |
| 4 | 连续按 3 次停止 | 不产生异常（无 `provider_error`），不误停后续任务 |
| 5 | 普通故障仍重试 | 用 100 ms provider 超时造失败：仍应看到 `retry` 与 `attempts` 递增（不能把重试一刀切掉） |
| 6 | 两条连续播报 | 停止第 1 条后，第 2 条按原有队列规则播放；停止不得串到第 2 条 |
| 7 | 语音回归 | 唤醒 → ASR → AI → TTS 全通；`interrupted`（用户插话打断）仍不被重播 |

每条都要留：原始 `journal.jsonl` 行、`play.public.json` 快照、截图。

---

## 七、本轮没有做的事

- 没有修改 `TtsExec.java`、`VoiceHomeActivity.java`、`ConversationActivity.java`、`VoiceBridgeClient.java` 任何一行；
- 没有重新构建 APK，没有改设备状态；
- 没有在报告里写任何"修复方案代码"——等替换内容下来后按原样替换、构建、真机验证。
