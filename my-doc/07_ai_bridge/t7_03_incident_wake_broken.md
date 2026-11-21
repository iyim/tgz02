# 事故复盘：原厂语音助手一度无法唤醒（T7-03 实验期间）

- 时间：2026-11-21 22:39 ～ 23:16（设备本地时间）
- 影响：原厂唤醒失效（说唤醒词无反应，或只识别出"天猫精灵"、指令部分丢失），
  持续时间约 35 分钟；**当前已恢复**，三次干净唤醒全通过。
- 责任：本次事故由 T7-03 的实验改动造成，不是原厂缺陷，也不是设备硬件问题。
- 设备状态：`:core` 现已回到纯原厂路径 + 只读的 T6-01 `libtg_hook`（ASR→Bridge 转发）。
  我的两个 hook（`libtg_dialog` / `libtg_ttsguard`）已全部摘除，两个附加 Supervisor 已停。

---

## 1. 我到底改了什么（能影响唤醒的全部改动，共 4 项）

| # | 改动 | 位置 | 回滚方式 |
|---|---|---|---|
| A | 改写 app 首选项：`localASRPauseTime` 150 → **900**，`pauseTime` 700 → **1500** | `/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml` | 已从备份 `runtime.xml.bak` 还原为 150 / 700 |
| B | `dialog.cfg` 里 `min_vad_pause_ms=900` / `min_silence_ms=900`，hook 会**真的修改** `AGSpeechEngine::setVADPauseTime` 的入参 | `/data/local/tmp/t6/dialog.cfg` + `libtg_dialog.so` | 已改为 **0 / 0（只观测，绝不改参数）** |
| C | 在 `SessionManager::onStartTalk` / `InputDeviceManager::startTalk` 入口装 inline hook（唤醒→建立会话的必经点） | `libtg_dialog.so` | 已卸载并停止注入 |
| D | 主动调用原厂未公开入口：`GenieApi::startTalk(7, …)`、`startTalk(7, NULL)`、`ContinuousDialogManager::onNotify(0x44e)`、`startFullDuplexDialog` | 通过 `libtg_dialog.so` 的控制文件 | 已随库卸载消失 |

其中 **D 造成过一次 `:core` SIGSEGV**（`startTalk(7, NULL)` → `signal 11, fault addr 0x00000007`），
后续 `:core` 反复重启也是从这时开始的。

---

## 2. 故障现象与日志证据

### 2.1 唤醒失灵期的日志（节选，均来自本轮真机 logcat）

```
D/AGSpeechEngine(28617): abortListen,395,wakeup type is active
W/SessionManager(29160): onFeed:587 [29239] on feed, invalid session id: current=-1, target=-1782374728
W/UnconvWakeupManager(28617): feed,68:feed when not started
```

`abortListen,395,wakeup type is active` 是关键：引擎认为自己处在一个"已唤醒但未结束"的状态里，
于是新的唤醒请求被 abort。这个状态是我调 `startTalk` / `cdmnotify` 之后出现的
（正常原厂流程里唤醒结束会 `onStopTalk` 把它清掉）。

### 2.2 我的 hook 确实改到了原厂参数（有日志）

```
I/TGD: setSilenceTimeout: 5000 ms (unchanged)
I/TGD: setVADPauseTime: 700 ms -> 900 ms (config floor)
```

即 `min_vad_pause_ms=900` 生效过一次，原厂的 700 ms 被判停下限覆盖成 900 ms。

### 2.3 恢复后的干净日志（同一台机器、同一段音频）

```
D/WakeupEngineWrapper: [FullLink]onWakeupCallback
D/AGSpeechEngine: onSpeechWakeup,530: tian mao jing ling
D/SessionManager: onStartTalk: sessionId = 1969024, wakeupType = 0, wakeupWord=tian mao jing ling
D/AGSpeechEngine: handleWakeupPromptFinish,895
D/SessionManager: onStopTalk: listenDuration = 6980
```

对应 `events.jsonl`：

```
asr_final pid=10414 session=1969024 text="天猫精灵现在几点" (24 B)
```

连续三次（天气、时间、时间）全部识别为**完整一句话**，`listenDuration` 约 7 s
（覆盖"唤醒词 + 3 s 停顿 + 指令"）。

---

## 3. 根因分析（诚实的置信度分级）

**结论：这次是"多个改动叠加 + 引擎状态污染"，用恢复包整体回滚解决；
目前证据能定位到"哪一类"，还不能把责任精确到单一改动。** 分级如下：

| 候选 | 证据强度 | 说明 |
|---|---|---|
| **D 引擎状态污染**（`startTalk`/`cdmnotify` 之后 `wakeup type is active` 残留） | **高** | 日志直接出现 `abortListen … wakeup type is active`；且症状是"唤醒请求被 abort"，不是"听不到" |
| **A 首选项被改写** | **中高** | `pauseTime=1500` 直接改变 ASR 停止策略的输入；还原后立刻恢复 |
| **B 判停下限 700→900** | **中** | 有日志证明生效过；但单看 900 ms 不应导致完全唤不醒 |
| **C onStartTalk hook** | **中低** | 该 hook 存在一个未彻底解释的现象：每次调用后有"同 tid、同毫秒的第二次进入"，参数是 `(全局对象, &obj+0x34, &obj+0x48, 栈地址)`（见 §4），不能排除它在某些路径上扰动了会话建立 |
| 原厂/硬件缺陷 | **排除** | 摘掉我的改动后同一段音频稳定唤醒三次 |

**为什么不是"原厂判停 700 ms 太短"**：恢复后 `pauseTime` 就是原厂 700 ms，
"唤醒 + 3 s 停顿 + 指令"照样一次收全（`listenDuration=6980`）。

---

## 4. 需要评审关注的技术事实（留给 ChatGPT）

1. **hook 点存在"成对进入"现象**（真机稳定复现，`onStartTalk` / `setVADPauseTime` /
   `setSilenceTimeout` / `startTalk` 都有）：
   ```
   onStartTalk#1: this=b01f4dcc A=7(0x7) B=0(0x0) info=92e02660 wake_type=0 lr_off=0x001078e0
   onStartTalk#2: this=963f4e84 A=0x963f4eb8 B=0x963f4ecc info=b01d3ca0 wake_type=<garbage>
   ```
   第二路的 `lr` 不在 `libsmartbox.so` 内，`this` 指向库内数据段，`A=this+0x34`、`B=this+0x48`。
   目前用"输入设备类型 ∈ [0,0x20] + `wakeupType` ∈ [0,0x11]"过滤掉它，快照不会被冲掉，
   但**原因未定论**。如果它其实是我们的 stub 在某些寄存器/栈状态下的误进入，
   那就解释了"装了 hook 之后唤醒变差"。
2. stub 页必须 `mprotect(RX)`（本机 RW 页取指 = `SIGSEGV(SEGV_ACCERR)`，已实测）；
3. `mem_sym` 必须返回 `base + st_value`，且**不能**在 Injector 的遥控调用上下文里 `dlopen`；
4. 控制文件必须放在目标进程（uid 1000）可读可 unlink 的目录（本机 `t5_bridge/work` 是 0777，
   `/data/local/tmp/t6` 是 root 0755），否则命令会无限重复。

---

## 5. 恢复动作（已执行、已核对）

1. `run_aux_supervisors.sh stop`（停掉守卫与对话库的注入器）、`run_ttsguard.sh watch stop`；
2. 用备份还原 `runtime.xml` → `localASRPauseTime=150`、`pauseTime=700`（其余原值未动）；
3. `dialog.cfg` 改为 `min_vad_pause_ms=0`、`min_silence_ms=0`（**默认只观测，永不改原厂参数**）；
4. 重启 `:core`（pid 10414），只保留 T6-01 的 `libtg_hook`；
5. 三次唤醒+指令验证：全部成功（§2.3）。

---

## 6. 订正：上一份 T7-03 报告里的两处错误结论

`t7_03_voice_ux_report.md` 的以下判断**不成立**，以本复盘为准：

1. §2.3「判停参数 700 ms 太短，导致"唤醒后停顿就切句"」→ **错**。
   干净状态下 700 ms 能收下"唤醒 + 3 s 停顿 + 指令"。
   真实原因是引擎状态被我的实验污染（`wakeup type is active`），不是参数值。
2. §3.2/§3.3 里"原厂入口不可用"的结论，是在**已污染状态**下测的，
   需要在干净基线上重测才能下结论（尤其 `promptfin` 与 CDM 两条路线）。

---

## 7. 后续规则（我会照此执行）

1. **不再改写 app 首选项**（`shared_prefs/*.xml`）做实验；确需改动必须先备份、同一会话内回滚；
2. 所有"会修改原厂参数"的开关**默认 0**，想启用必须写清回滚命令并当次验证；
3. 未公开入口（`startTalk` / CDM）**不在日常设备上调用**，只在有回滚预案的窗口内测；
4. 每次实验前记录 `:core` pid、hook 装载状态、prefs 值，实验后核对，异常立即整体回滚；
5. 唤醒是"一票否决"能力：任何改动后先验唤醒，再验其他。
