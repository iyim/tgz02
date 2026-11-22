# T7-09 报告：死信回滚失败闭环 + 原厂 ASR 有效语音窗口观测

基线：`441bbe6c`（T7-08）
日期：2026-11-22（设备时间 CST）
设备：TG-Z02 `AILABS_S1L`，Android 8.1 / SDK 27，`armeabi-v7a`，`192.168.1.9:5555`

本报告严格区分四类证据：**源码** / **主机测试** / **ARM32 编译** / **真机观测**。
未做的事一律标"未做"，证据不足的一律标"证据不足"，不写成"已验证"。

---

## 一、八条最终验收

| # | 问题 | 结论 | 证据等级 |
|---|---|---|---|
| 1 | 死信 `ts_ms` 是否用墙钟？ | 是（T7-08 已修，本轮复核）：`rec.ts_ms = wu_wall_ms()`，Epoch 毫秒；单调时钟只用于超时/退避 | 源码 + 主机测试 |
| 2 | 超长半行能否正确修复？ | 能（T7-08 已修，本轮复核）：尾部反向分块扫描无 4 KB 上限；无换行则整文件视为损坏清空；不补换行 | 源码 + 主机测试 |
| 3 | 追加写是否有明确可验证的并发保护？ | 有：单写者（Worker 单实例锁）+ 死信文件排他锁（`flock`/`LockFileEx`）覆盖修复→追加→fsync；单次 write + 短写续写 + 失败回滚；6 进程 × 100 条并发实测 600 行零丢失零粘连 | 源码 + 主机测试 |
| 4 | close/fsync 失败会不会重复死信？ | 不会：write+fsync 成功即"已持久化"，close 失败只告警；fsync 失败回滚并返回可重试 `-1`；**回滚未确认时返回 `-2` 并进入持久化故障状态，绝不重试** | 源码 + 主机故障注入 + 真实进程 e2e |
| 5 | JSONL 是否全部能过标准解析器？ | 是：`json.loads` 112 项全通过（含 600 行并发文件与端到端记录） | 主机测试（Python 3） |
| 6 | ARM32 编译是否有可核验日志？ | 有：`evidence/t7_09_arm_build.log`，0 warning 0 error，ELF32/ARM/PIE，含死信符号、**不含任何测试注入符号** | ARM32 NDK 实编 |
| 7 | 当前原厂 ASR 实际用本地还是云端？ | **证据不足 / 本轮窗口未捕获语音**（详见 §四）：两套实现路径已确认存在，实际运行能力未验证 | 真机只读观测 |
| 8 | 本地/AI 分流是否受影响？ | 未受影响：本轮只改死信实现与测试；路由/放行/守卫/TTS/原厂配置一行未动；设备未部署 | 源码 diff + 真机核对 |

---

## 二、任务 A：死信回滚失败闭环（P1）

### A1 缺陷与修法

原实现把回滚结果 `(void)` 丢掉，统一返回 `-1`（可重试）。可此时文件尾部可能已留下
完整或半条记录（截断失败 / 回滚 fsync 失败），Worker 一重试就会**重复一条死信**。

现在 `t6b_dl_append()` 明确三档（`dead_letter.h`）：

| 返回 | 含义 | Worker 动作 |
|---|---|---|
| `T6B_DL_OK (0)` | write + fsync 成功（close 失败仅告警） | 提交 offset，跳过事件 |
| `T6B_DL_E_IO (-1)` | 未写入 **且已确认回滚**到写前长度 | 保持 pending，按原策略重试 |
| `T6B_DL_E_ROLLBACK (-2)` | 写失败 **且回滚未确认**（尾部状态不确定） | 进持久化故障状态：不追加、不推进 offset、不跳过 |

"回滚确认"= 截断成功 **且** seek 成功 **且** 回滚 fsync 成功；任一步失败即升级为 `-2`，
并带出 `io_stage / io_errno / rollback_stage / rollback_errno / pre_len / cur_len(cur_len_valid)`。

Worker 侧闭环：

1. `dead_letter_event()` 收到 `-2` → 写 `dead_letter.fault.json`（`.tmp` + rename）→ 返回 `-5`；
2. `provider_attempt()` 把 `-5` 原样上抛（不再落进 `-1/-2` 的可重试分支）；
3. 主循环 `rc == -5` → 置 `pend_dl_fault` 闩锁、`state="dead_letter_failed"`，
   **下一轮不再调用 provider_attempt**，因此不会二次追加；offset 不动、事件不跳过；
4. 状态文件新增 `"dead_letter":{failed,event_id,io_stage,io_errno,rollback_stage,rollback_errno,pre_len,cur_len,cur_len_valid}`；
5. 故障标记存在时，`dead_letter_event()` 直接拒绝（`-5`）——**跨重启也不会追加第二次**；
   代码里没有任何自动删除标记的路径（必须人工处理）。

关键日志（e2e C 实录）：

```
dead-letter: ROLLBACK FAILED for event e-c1 (seq=0 attempts=4) io_stage=2 io_errno=5
  rollback_stage=4 rollback_errno=5 file=…/dead_letter.jsonl pre_len=121 cur_len=232(cur_len_valid=1)
  -> persistent fault state; offset NOT advanced, append NOT retried
worker: persistent fault (dead_letter_failed) latched for event e-c1 seq=0;
  no further dead-letter append and no offset advance until the fault marker is resolved
```

### A2 故障注入矩阵

| # | 注入 | 期望 | 实测 |
|---|---|---|---|
| A2-1 | 先短写、再 write 失败（回滚成功） | `-1`，`io_stage=WRITE`，`rollback_stage=NONE`，长度回滚 | PASS |
| A2-2 | write 失败 + 回滚截断成功 | `-1` | PASS |
| A2-3 | write 失败 + 回滚截断失败 | `-2`，`rollback_stage=TRUNC`，`cur_len` 可读 | PASS |
| A2-4 | fsync 失败 + 回滚成功 | `-1`，`io_stage=FSYNC` | PASS |
| A2-5 | fsync 失败 + 回滚截断失败 | `-2`，记录**仍留在文件里**（不确定状态） | PASS |
| A2-6 | 截断成功但回滚 fsync 失败 | `-2`，`rollback_stage=ROLLBACK_SYNC` | PASS |
| A2-7 | 尾部修复截断失败（什么都还没写） | `-1`，`io_stage=REPAIR`，文件不变 | PASS |
| A2-8 | fsync 成功 + close 失败 | `0` + `close_failed=1`，无重复行 | PASS |

Worker 级（真实进程 + 环境变量注入，仅测试构建 `-DT6B_DL_TEST_ENV`）：

| 用例 | 断言 | 实测 |
|---|---|---|
| e2e C | `dead_letter.failed=1`、`event_id=e-c1`、`io_stage=2`、`rollback_stage=4`、`pre_len>0`、`counters.dead_letters=0`、`events_processed=0`、`processed_total=0`、`last_event_id=""`、`pending=e-c1`、标记文件存在、死信文件**恰好 2 行**（seed + 一条未回滚写入，无重复）、日志含 `ROLLBACK FAILED` 与 `persistent fault … latched` | PASS |
| e2e D | 带标记重启（并把消费状态复位，使该事件会被重新读到）：仍 2 行、日志含 `refusing to append` | PASS |

### A3 测试与构建

| 项 | 结果 |
|---|---|
| C 单元断言 | **108 条 / 0 失败**（T7-08 的 79 条全部保留，新增 29 条故障矩阵与诊断字段断言） |
| Python 解析器 | **112 项 / 0 失败**（含 600 行并发、端到端、时间戳语义、旧缺陷反向验证） |
| 并发追加 | 6 进程 × 100 条 = 600 行，零丢失/零粘连/全可解析 |
| 主机测试日志 | `evidence/t7_06r2_host_test.log` |
| ARM32 NDK | `evidence/t7_09_arm_build.log`：0 warning 0 error；ELF32/ARM/DYN(PIE)；`t6b_dl_format/append` 在；`t6b_dl_test_fault` / `dl_test_env_init` **不在** |

### A4 一条必须记录的既有边界（不改，只说明）

`consumer_state.json` 的 `offset` 是**读者游标**（读进 pending 即前移），这是既有设计。
后果：进程重启后，那条尚未处理的事件可能不会被重新读到。
所以"跨重启不重复"由两条独立保险共同保证：① 被重新读到 → 故障标记拒绝追加；
② 没被重新读到 → 自然不追加。两种情况都不会重复，但"事件被跳过"属于既有消费语义，
**本轮只记录、不修改**（修改它等于重做消费状态机，超出本轮范围）。

---

## 三、任务 B：高频只读采样工具

新增 `asr_independent/asr_watch2.sh`（旧 `asr_watch.sh` 原样保留，不动旧证据）：

- **先验证了设备支持小数秒 sleep**：`sleep 0.1` 实测约 150 ms，`sleep 0.02/0.05` 约 100 ms；
- **实测各步骤成本**：`grep -c` 扫 211 KB 的 maps ≈ 77 ms，`pidof` ≈ 56 ms，两次 tcp grep ≈ 68 ms；
  因此"100 ms 采样"在这台机器上做不到，改为：一次 `cat maps` + shell 内 5 次模式匹配
  （≈150 ms）＋ 443 每 5 轮更新一次（摊薄 14 ms）＋ `sleep 0.1`（≈150 ms）；
- **实测周期**：`min 320 / avg 370 / max 450 ms`（≈2.7 Hz），脚本自己在日志尾巴写 `# rate` 行，
  不靠人估；
- 采样列：`uptime_ms(毫秒) core_pid libaceAsr libmodel.bin libconfigure.bin libunet libvad_api 443_estab stale`；
- 只读：只读 `/proc/<pid>/maps`、`/proc/net/tcp{,6}`、`/proc/uptime`，只写自己的日志文件；
- 与 logcat 同步抓取（`logcat -v threadtime -f asr_watch2.logcat`），便于事后按时间对齐。

> 采样率说明（必须写清）：2.7 Hz 足以覆盖"整段会话期间引擎一直加载"的情形，
> **但不能排除瞬时加载/卸载**。所以"没采到 libaceAsr"不能直接说成"没加载"。

---

## 四、任务 B：真实语音窗口结果

**窗口 A：2026-11-22 16:52:57 起，365 个采样点、跨度 156.85 s（实测 310/430/830 ms 最小/平均/最大）。**

| 项 | 观测值 |
|---|---|
| `:core` pid | 8342（365 条全一致 → 期间没有重启） |
| `libaceAsr` / `libmodel.bin` / `libconfigure.bin` / `libunet` | **0/365**（整个窗口） |
| `libvad_api` | 恒为 1（采样链路有效） |
| 443 ESTABLISHED | 3 ~ 10 波动（空闲态本来就有） |
| logcat 中 `onWakeupCallback` / `onListenStarted` / `onStartTalk` / `onStopTalk` / `onStream` | **合计 0 条** |

**判定：本轮观测无效 —— 窗口内没有发生任何语音交互。**
按任务要求不做任何通道推断（不因"没采到本地库"说云端，也不因"443 有连接"说云端）。
详细口径、判定表与下次操作步骤见 `T7-09_CHANNEL_OBSERVATION.md`；
原始采样在 `evidence/t7_09_channel_watch.log`。

> 说明：为了让"用户说话"有机会落在采样窗口里，窗口 A 结束后已在设备上续开了一个更长的只读窗口
> （15000 点、约 110 分钟）。该窗口的原始文件留在设备 `/data/local/tmp/t7/asr_watch2.*`，
> 下一轮取用后立即删除；若该窗口内仍无语音，则继续按 §4 的步骤重开。

---

## 五、改动清单

| 文件 | 性质 |
|---|---|
| `android/dead_letter.h` / `.c` | 三档返回码、回滚确认、诊断字段、`fault2` 注入、`T6B_DL_TEST_ENV` 环境注入（仅测试） |
| `android/ai_worker.c` | 死信函数接 `-2` → 故障标记 → `-5`；主循环 `-5` 闩锁；状态字段填充 |
| `android/worker_status.h` / `.c` | 新增 `dead_letter{...}` 状态对象与 `dead_letter_failed` 字段 |
| `tests/t7_06r2_dead_letter_unit_test.c` | 108 条断言（新增 29 条） |
| `tests/run_t7_06r2_host_tests.ps1` | 新增 e2e C/D（故障 worker），保留 A/B 与并发/源码断言 |
| `android/build_t7_08_arm.ps1` | 符号检查扩展到 `t6b_dl_test_fault` + `dl_test_env_init` |
| `asr_independent/asr_watch2.sh` | 新增高频只读采样器（旧脚本保留） |
| `asr_independent/05_dead_letter_fix.md` | 追加 T7-09 语义、故障矩阵、既有边界 |
| `asr_independent/T7-08_CHANNEL_OBSERVATION.md` | 按 B4 修订结论口径（"实现路径已发现"≠"两条都能跑通"） |
| `asr_independent/T7-09_CHANNEL_OBSERVATION.md` | 本轮观测报告 |
| `evidence/t7_06r2_host_test.log`、`evidence/t7_09_arm_build.log`、`evidence/t7_09_channel_watch.log` | 真实日志 |

**未改动**：`libtg_hook.*`、`tgb_bridge`、`libtg_ttsguard.*`、`tts_exec.dex`、`native_marker`、
`run_t7_05.sh`、`runtime.xml`、`dialog.cfg`、`init.rc`、`system_debloat/`；
设备上没有部署任何新二进制、没有重启、没有卸载 Hook。

---

## 六、下一轮建议

| # | 事项 | 前提 |
|---|---|---|
| 1 | 部署修好的 `ai_worker`（含死信三档语义 + `dead_letters`/`dead_letter` 状态） | 需要部署窗口与 `restore_full.sh` 回归 |
| 2 | 完成一次"真实语音 + 高频采样"的完整窗口，得到通道归因 | 需要在窗口内真实说 3 条指令（见 `T7-09_CHANNEL_OBSERVATION.md` 的操作步骤） |
| 3 | 若只读证据仍不足，再评估"给 Hook 事件加 `is_offline`"（需批准，本轮禁止） | 需批准改 Hook 并部署 |
| 4 | 死信 `seq` 字段语义（暂存门槽位）与读者游标语义 | 属于既有设计，需单独立项 |

---

## 七、提交

| SHA | 内容 |
|---|---|
| `77ad5c22` | `fix(ai-bridge)`：死信三档返回 + 回滚确认 + 故障闩锁 + 跨重启标记 + 108 断言 + ARM 日志（10 files） |
| `a7b75d89` | `docs(ai-bridge)`：高频只读观测工具与窗口 A（无效）、口径修订（7 files） |

基线 `441bbe6c` → 本轮 `a7b75d89`，直接提交 `main`，未建分支/未开 PR、未做历史重写。