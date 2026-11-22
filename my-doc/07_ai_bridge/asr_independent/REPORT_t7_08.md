# T7-08 报告：死信持久化缺陷修复 + 原厂 ASR 实际通道确认

基线：`90d32f6c`（T7-07）
日期：2026-11-22（设备时间 CST）
设备：TG-Z02 `AILABS_S1L`，Android 8.1 / SDK 27，`armeabi-v7a`，`192.168.1.9:5555`

---

## 一、八条最终验收

| # | 问题 | 结论 | 证据等级 |
|---|---|---|---|
| 1 | `ts_ms` 是否已用正确墙钟？ | **是**：`rec.ts_ms = wu_wall_ms()`（Unix Epoch 毫秒）；单调时钟只保留给超时/退避 | 源码 + 主机测试 + 端到端 |
| 2 | 超长半行能否正确修复？ | **能**：尾部扫描**没有 4 KB 上限**，逐块向前找到最近的 `\n` 后截断；找不到任何 `\n` 时整个文件视为损坏并清空；**不再"补换行"** | 源码 + 主机测试（12 000 字节半行） |
| 3 | 追加写是否有明确可验证的并发保护？ | **有**：对死信文件本身加排他锁（POSIX `flock(LOCK_EX)` / Windows `LockFileEx`），覆盖"尾部修复 → 追加 → fsync"全程；配合 Worker 单实例锁构成"单写者 + 文件级互斥"；写入先单次 `write`，短写继续写完，任何失败 `ftruncate` 回滚 | 源码 + 主机测试（6 进程×100 条并发，600 行零粘连）+ 锁失败注入 |
| 4 | close/fsync 失败会不会重复死信？ | **不会**：`write`+`fsync` 成功即判定"已持久化"，此后 `close` 失败只记告警（`out.close_failed`），**不返回失败**、不重试；`fsync` 失败才回滚并返回 -1（不推进 offset） | 源码 + 故障注入（fsync 失败回滚 / close 失败仅告警且不重复） |
| 5 | JSONL 是否全部能过标准解析器？ | **是**：`json.loads` 逐行验证 112 项全通过（含并发文件 600 行、端到端 3 行） | 主机测试（Python 3） |
| 6 | ARM32 编译是否有可核验日志？ | **有**：`evidence/t7_08_arm_build.log`（含完整命令行、编译器输出、`readelf -h/-d`、符号检查、结论），0 warning 0 error，ELF32/ARM/PIE，且**生产构建不含故障注入符号** | ARM32 NDK 实编 |
| 7 | 原厂 ASR 实际用本地还是云端？ | **已发现本地与云端两套 ASR 实现路径及相应配置；两条路径的真机实际运行能力仍需分别验证。"某一次 Final 由哪条通道产生"本轮无法确定** —— 观测窗口内没有语音活动，且 Hook 未记录 `isOffline` | 真机只读观测 + 静态分析（见 `T7-08_CHANNEL_OBSERVATION.md`） |
| 8 | 现有本地/AI 分流是否完全未受影响？ | **未受影响**：改动只在死信实现与测试；路由、放行标记、守卫、TTS 一行未动，设备上运行的二进制未替换 | 源码 diff + 真机进程/文件核对 |

---

## 二、任务 A：死信修复明细

### A1 时间戳（`android/ai_worker.c`）

```c
rec.ts_ms = wu_wall_ms();   /* T7-08：墙钟（Epoch ms），不是 CLOCK_MONOTONIC */
```

- `wu_now_ms()`（CLOCK_MONOTONIC / GetTickCount64）仍然只用于超时、退避、`last_activity_ms` 等**不跨重启比较**的地方；
- 测试：单元测试断言 `wu_wall_ms()` 与系统 Epoch 时间差 < 5 s 且 > 1.6e12（不是开机计数器）；
  格式化的行里 ts 原样等于传入值；解析器侧对样例 `wallclock` 与端到端 3 条记录都断言
  "ts 是 Epoch 毫秒且与当前时间差 < 1 h"；
- 另有一层源码断言（`run_t7_06r2_host_tests.ps1` §6）：`ai_worker.c` 必须出现
  `rec.ts_ms = wu_wall_ms();`，且**不允许**再出现 `rec.ts_ms = wu_now_ms();`。

### A2 超长半行（`android/dead_letter.c`）

```c
static long long dl_last_record_end(int fd, long long size)
/* 从文件尾向前每块 4 KB 扫描，直到找到最近的 '\n'；
   返回 size（本来就干净）/ 0（没有任何换行）/ 记录末尾偏移；-1 = IO 错误 */
```

- 4 KB 只是 **IO 分块**，不是判断上限；
- `end != size` → `ftruncate(end)` 并 `fsync`（修复本身也落盘）；
- `end == 0`（整个文件没有换行）→ 清空，等新记录；
- **删除了旧实现的 `need_sep` 补换行分支**：不再存在"把非法半行扶正成一条正式记录"的路径；
- 测试：12 000 字节无换行垃圾（远大于旧的 4096 窗口）被整段截掉，且前一条完整记录保留；
  "整个文件都没换行"的用例被清空；保留下来的行全部通过 `json.loads`。

### A3 追加写的并发与原子性

明确选择：**"单写者 + 文件级互斥 + 单次 write + 短写续写 + 失败回滚"**。

| 机制 | 实现 |
|---|---|
| 单写者 | Worker 本身由 `ai_worker.lock` 的 flock 保证单实例（既有机制，未改） |
| 文件级互斥 | `flock(fd, LOCK_EX)`（POSIX）/ `LockFileEx`（Windows），锁的是**死信文件自身的 fd**，覆盖"读尾 → 修复 → seek → 写 → fsync"整段；`close` 释放 |
| 写入 | 先一次 `write` 写整行（≤ 2047 B）；返回短写就继续写剩余（合法情况），不会当成失败 |
| 失败 | 任何 `write`/`fsync` 失败 → `ftruncate(写前长度)` 并 `fsync` → 返回 -1 → 调用方不推进 offset |
| 验证 | ① 6 个进程 × 100 条并发追加：600 行、全部可解析、`event_id` 全唯一、**没有一行被插入/粘连**；② 短写注入后仍是一整行；③ 加锁失败注入：返回 -1 且文件零改动 |

> 说明：`O_APPEND` 已去掉，改成"加锁 + 显式 seek 到末尾"。这样回滚与修复都在同一个位置模型下，
> 不会出现 Windows 上 `_chsize` 不动 fd 位置导致写花文件的问题（T7-06-R2 踩过）。

### A4 close 失败

| 阶段 | 失败时判定 | 返回 | 调用方动作 | offset |
|---|---|---|---|---|
| `write` | 数据没落盘 | -1（已回滚） | 保持 pending，重试 | 不推进 |
| `fsync` | 数据**没有**保证落盘 | -1（已回滚） | 保持 pending，重试 | 不推进 |
| `close`（fsync 之后） | 数据**已经**落盘，close 只是 fd 层报告 | **0**（`out.close_failed=1`） | 记一条告警日志，正常提交 | **推进** |

依据：`fsync` 成功即代表数据与元数据已提交到存储；`close` 的返回值只反映 fd 关闭动作
（EINTR/EIO 都可能在关闭阶段出现，但不会撤销已完成的 fsync）。
若把 close 失败当成"没写成功"，重试会产生**重复死信 + offset 永远不推进**的双重问题。
测试：`T6B_DL_FAULT_CLOSE_FAIL` 注入后断言 `rc == 0`、`out.close_failed == 1`、
文件里**恰好一条**新记录（2 行总数，没有重复）。

### 故障注入机制（不污染生产构建）

- `dead_letter.h` 里 `#ifdef T6B_DL_TESTING` 才有 `t6b_dl_test_fault` / `t6b_dl_test_fault_set()`；
- 生产构建（`build_t7_05.ps1` / `build_t7_08_arm.ps1`）不定义该宏，
  ARM 产物里 `t6b_dl_test_fault` 符号**必须不存在**，脚本会主动检查并因此失败（已实测通过）。

---

## 三、任务 D：测试与证据

| 项 | 结果 | 证据 |
|---|---|---|
| C 单元测试 | **79 断言 / 0 失败**（原 46 条全部保留，新增 33 条：墙钟、12 KB 半行、全损坏文件、短写、写失败、fsync 失败、close 失败、锁失败、无换行行拒绝） | `evidence/t7_06r2_host_test.log` |
| Python 解析器 | **112 项 / 0 失败**（含 600 行并发文件逐行解析、端到端 3 行、时间戳语义、旧缺陷反向验证） | 同上 |
| 端到端 A（写成功） | 3 条死信、`counters.dead_letters==3`、`processed_total==3`、`last_event_id==e-a3`、ts 为墙钟 | 同上 |
| 端到端 B（写失败） | `pending_event_id==e-b1`、`processed_total==0`、`last_event_id==""`、`provider_retries>0` | 同上 |
| 并发 | 6 进程 × 100 条 = 600 行，零丢失/零粘连/全可解析 | 同上 |
| ARM32 NDK | 0 warning 0 error；ELF32/ARM/DYN(PIE)；`NEEDED libdl/liblog/libc`；死信符号在、注入符号不在 | `evidence/t7_08_arm_build.log` |
| 构建脚本覆盖 | `build.ps1`、`build_t7_05.ps1`、`build_t7_08_arm.ps1`、`run_host_tests.ps1`、`run_t7_06r2_host_tests.ps1` 都包含 `dead_letter.c`（脚本自动检查） | 同上 |
| 真机全量回归 | **未执行**（本轮不要求，也不该做——没有部署新 Worker） | — |

---

## 四、任务 B：通道确认（摘要）

完整报告见 `T7-08_CHANNEL_OBSERVATION.md`。要点：

- 只读采样器（1 Hz）证明：`:core`(8342) 在**空闲态**对 `libaceAsr / libmodel.bin / libconfigure.bin`
  的映射恒为 0，而 `libvad_api` 恒为 3（说明采样链路有效）；
- 采样窗口内 `onWakeupCallback / onListenStarted / onStartTalk / onStopTalk / onStream`
  **一条都没有** → 没有"识别瞬间"的数据；
- Hook **没有记录 `isOffline`**（事件 JSON 字段清单实测），历史事件无法统计通道占比；
- 443 连接在空闲态就有 3~7 条，**不能**作为 ASR 证据；
- 因此结论是：**已发现本地与云端两套 ASR 实现路径及相应配置；两条路径的真机实际运行能力仍需分别验证**。具体"这次 Final 走的是哪条"当前无法确定（缺识别瞬间的证据）。
  下一轮按 `T7-08_CHANNEL_OBSERVATION.md` §7 的只读流程可一次性钉死。

---

## 五、任务 C：文档确定性表述修正

| 原文口径 | 修正后 |
|---|---|
| "能提取 SO 独立调用" | "**静态分析显示具备可行性，尚未验证可以独立运行**"（`03_feasibility.md` §1/§4.1） |
| 只写 `libaceNlu` 出现在依赖里 | 明确写成**动态依赖**（`DT_NEEDED`），并注明"加载必须能解析它，但不代表识别流程必须执行原厂 NLU"（`01_components.md`、`02_callchain.md` §3.2） |
| 用空闲态零映射论证"没在用本地引擎" | 改为"只能说明空闲态没加载，**不能**反推识别时也没加载"（`01_components.md` §2、`02_callchain.md` §3.2、`03_feasibility.md` §3） |
| "duplexDialogRenew=0 ⇒ 会话不能独立维持" | 改为"证明**平台会话**没有续期；不能推出**引擎级会话**无法独立维持录音"（`04_continuity.md` §0/§5/§7） |
| 单轮识别与连续对话混在一起说 | 新增 `03_feasibility.md` §6，用表格分开"单轮独立化 / 单轮全链路 / 多轮会话"三档依赖 |

---

## 六、改动清单（本轮）

| 文件 | 性质 |
|---|---|
| `android/dead_letter.h` / `android/dead_letter.c` | 重写：墙钟语义、无上限尾部修复、文件级互斥、短写续写、回滚、close 语义、测试注入开关 |
| `android/ai_worker.c` | 仅死信函数：`wu_wall_ms()` + 新的 `t6b_dl_out` 用法与告警日志 |
| `android/build_t7_08_arm.ps1` | 新增：ARM32 编译 + 真实日志 + 符号/警告断言 |
| `tests/t7_06r2_dead_letter_unit_test.c` | 扩到 79 断言（新增墙钟、超长半行、故障注入等） |
| `tests/t7_06r2_dead_letter_json_test.py` | 新增并发验证与时间戳语义验证 |
| `tests/run_t7_06r2_host_tests.ps1` | 串起单元/解析器/并发/端到端/源码断言 |
| `asr_independent/*.md` | 任务 C 的五处口径修正 + 新增观测报告 |
| `evidence/t7_06r2_host_test.log`、`evidence/t7_08_arm_build.log`、`evidence/t7_08_channel_watch.log` | 真实运行/编译/采样日志 |

**未改动**：`libtg_hook.*`、`tgb_bridge`、`libtg_ttsguard.*`、`tts_exec.dex`、`native_marker`、
`runtime.xml`、`dialog.cfg`、`run_t7_05.sh`、`init.rc`、`system_debloat/`。
设备侧没有部署任何新二进制，没有重启 `:core`，没有卸载任何 Hook。

---

## 七、遗留与下一轮

| # | 事项 | 说明 |
|---|---|---|
| 1 | 部署修好的 `ai_worker` | 设备仍跑 T7-06-R1 的 `32fc28001910…`；需要部署窗口 + `restore_full.sh` 回归 |
| 2 | 通道钉死 | 按 `T7-08_CHANNEL_OBSERVATION.md` §7 路线 1（只读）即可，或路线 2（Hook 加 `is_offline`，需批准） |
| 3 | 死信 `seq` 字段语义 | 仍来自暂存门槽位，可能与事件自身 seq 不同；关联用 `event_id` |
| 4 | `worker_unit_test.exe` 的 1 条既有失败 | `deepseek/request body escaping` 断言把 prompt 原文（裸换行）塞进期望串，与实现不符；与本轮无关，未动 |

---

## 八、提交

| SHA | 内容 |
|---|---|
| `440c1c5a` | `fix(ai-bridge)`：死信墙钟时间戳 / 无上限半行修复 / 互斥追加与 close 语义 + 扩展测试 + ARM 构建日志（9 files） |
| `05949ea7` | `docs(ai-bridge)`：通道只读观测报告、口径修正、`asr_watch.sh`、采样证据（8 files） |

基线 `90d32f6c` → 本轮 `05949ea7`，直接提交 `main`（`90d32f6c..05949ea7`），未建分支/未开 PR、未做历史重写。