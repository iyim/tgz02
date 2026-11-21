# T5-06D-P1 队列持久化修复报告（回答不能因队列写失败而静默丢失）

- 设备：TG-Z02（CCH `AILABS_S1L`，Android 8.1 / sdk 27，ARM32），真机 `192.168.1.9:5555`
- 分支：`main`（未建分支、未建 PR）
- 模型代理：`http://192.168.1.13:8790/v1`，模型 `deepseek-flash`（沿用 T5-06C/D，未改）
- API Key：仍只从 `/data/local/tmp/t5_bridge/secret/deepseek_api_key`（0600）读取；本报告、日志、状态、证据里均无 key、无请求体、无回答正文
- 状态：**实现 + 主机测试 + ARM32 构建 + 真机故障注入全部通过**，提交 main 等待 ChatGPT 复审；**未自行宣布 P1 关闭**

---

## 一、结论摘要

| 验证面 | 结果 |
|---|---|
| 主机单元测试 | `checks passed: 621, failed: 0` |
| 主机集成测试（全集，含新增 P1 用例） | `cases: 40, failed: 0` |
| 主机 TTS 队列子集（i31–i38） | `cases: 10, failed: 0` |
| 主机锁压力（100 轮 × 20 进程） | `rounds: 100, failed: 0` |
| ARM32 构建（ai_worker） | 138 372 B，sha256 `9775a3f245eb3b7a4cb690650fd217080d249019cb463edf6dc742d821d92b3d`，动态链接 libc.so，0 warning 0 error |
| tts_exec.dex 构建 | 33 608 B，sha256 `622067a5015c4f7b9b03678dd2785486732e42cc9fd87211451ba2654d14e7fb`，min-api 26 |
| 真机故障注入（执行器 E1–E9 + 真机闭环 R1–R4） | **145 PASS / 0 FAIL / 0 SKIP** |
| 原厂 ASR 共存（改动后复跑 s8） | `RESULT: PASS`（认出语音、core pid 不变、events.jsonl 未被截断） |

最终目标达成方式：**目标文件没有持久化成功之前，任何源文件都不允许删除**；Worker 侧**入队没成功就不提交消费偏移**。

---

## 二、四个问题的根因

### P1-1-A `recoverInflight()` 先删后写
原实现：

```java
it.attempts = it.attempts + 1;
f.delete();                    // ← 先删掉唯一副本
if (it.attempts >= maxAttempts) { ... parkFailed(it); }
else if (writeItem(it, queueDir)) { ... }
```

`writeItem()` 内部还可能因 `rename` 失败返回 false。于是"删掉 inflight 原件 + 目标写入失败"= 回答**永久丢失**，而且只留下一行 `requeue failed` 日志，状态计数里看不出来。

### P1-1-B `drainOnce()` 失败分支先删再写
```java
claimed.delete();              // ← 先删
if (it.attempts >= maxAttempts) parkFailed(it);
else if (writeItem(it, queueDir)) { ... }
```
`parkFailed()` 本身不返回任何状态，失败只打印。

### P1-1-C `markDone()` 写标记失败仍然删原件
```java
try { ...写 done 标记... } catch (IOException e) { out("done marker failed: " + e); }
if (!it.file.delete()) out("payload delete failed: ...");   // ← 无条件删
```
标记没落盘 + 原件被删 = 回答消失，且下次启动不会重播，也不会进 failed/。

### P1-1-D `parkFailed()` 没有返回值
`tmp.renameTo(dst)` 的返回值被忽略，`chmod`/目录 fsync 完全没有，调用方无从判断"停车场是否真的存住了"。

### P1-2 Worker 入队失败仍提交偏移
```c
int q = tts_enqueue(w, &rep, terr, sizeof(terr));
... else { tts_enqueue_failed++; ... }   // 只记账
int cr = commit_event(w);                // ← 照样提交
```
回答只存在过内存里，一提交偏移就再也不会被重新回答；队列写失败 = 这条回答从此不存在。

### P1-3 `tts_enqueue()` 忽略目录 fsync
```c
(void)wu_fsync_dir(dir_queue);   // ← 返回值被丢弃
w->st.tts_queued++;              // ← 直接记成功
return 1;
```
`rename` 成功但目录项没落盘时，崩溃后文件名可能消失，却被计成"已入队"并提交偏移。

---

## 三、修改清单

### 3.1 `my-doc/07_ai_bridge/android/tts_exec/TtsExec.java`

| 函数 | 改动 |
|---|---|
| `writeItem(Item, File dir, String stage)` | **签名改为带 stage 的版本，返回 boolean**。四步全成功才 true：①写 tmp ②`flush`+`FileDescriptor.sync()` ③`rename(2)` 原子替换目标（不再先 `dst.delete()`）④目标目录 fsync。任一步失败：记 event_id + 字节数 + 错误类型（不含正文），删 tmp，**源文件由调用方保留** |
| `dirSync(File)` | 新增。Java 层没有目录 fsync API，用 `android.system.Os.open(path, O_RDONLY, 0)` 拿目录 fd + `Os.fsync()` + `Os.close()`；返回 false 即"目录项可能没落盘" |
| `markDone(Item)` | 改为 **返回 boolean**。tmp → 文件 fsync → rename 到 `done/<id>.ok` → `done/` 目录 fsync。失败时保留 inflight 原件 |
| `parkFailed(Item)` | 改为 **返回 boolean**，内部直接复用 `writeItem(it, failedDir, "failed")`（一条代码路径，不再有第二套写法） |
| `moveFile(File, File dir, String stage)` | 新增。坏条目（无法解析出 event_id）用 `rename` 原名搬进 `failed/`，再 fsync 目录；只有成功才算搬走 |
| `recoverInflight()` | 重写：读 inflight → `attempts+1` → 先写目标（`queue/` 或 `failed/`）→ **成功后才 `f.delete()`**；失败则 `recover_failed++` + journal `recover_failure{event_id,stage}` + 原件保留；未解析条目走 `moveFile`，失败计入 `bad_item_stuck`；tmp 清理只清 10 s 以上的陈旧文件 |
| `drainOnce()` | 重写：`ok/stopped` 必须先 `markDone()` 成功才删 claimed（失败 → `done_marker_failed++` + journal + continue，原件留 inflight/）；`timeout/interrupted/rejected/provider_error` 必须先 `writeItem(queue)/parkFailed()` 成功才删 claimed，失败 → `persist_failed++` + journal `persist_failure{event_id,stage,outcome}` + 原件保留 |
| `playItem(Item,int)` | 增加两个**仅测试**的故障钩子：`provider_fail`（不碰 provider，直接按 provider_error 处理）、`fake_ok`（不碰 provider，直接按 ok 处理），用于在没有音频的情况下注入 done/retry 失败 |
| `writeState()` | 新增字段 `done_marker_failed` / `persist_failed` / `recover_failed` / `bad_item_stuck` / `faults`，持久化失败不再只出现在 stdout |
| `main()` | 新增 `--fault NAME[,NAME...]`（也可用环境变量 `TTS_EXEC_FAULT`）、`--recover-only`（只做启动恢复，隔离验证 inflight→queue/failed 的持久化）、`--selfcheck`（验证写文件 + 文件 fsync + rename + 目录 fsync 在本机可用）；enqueue 模式也走 `writeItem(..., "enqueue")`；退出摘要打印四个新计数 |

### 3.2 `my-doc/07_ai_bridge/android/ai_worker.c`

| 函数 | 改动 |
|---|---|
| `tts_enqueue()` | ①新增故障注入开关 `T6B_FAULT_TTSQ=create|write|fsync|rename|dirfsync`（与 `T6B_FAULT_STATE` 同一套路）；②**检查目录 fsync 返回值**：`if (fault==DIRFSYNC \|\| wu_fsync_dir(dir_queue) != 0) return -1;`，且**不删**可能已经写好的 `queue/<id>.json`（下一次重试按 event_id 幂等识别）；③`tts_queued++` 只在四步全成功之后 |
| `provider_attempt()` | 入队失败（`q < 0`）时：**不调用 `commit_event()`**，不推进 offset / `recent_ids` / `events_processed`，`tts_enqueue_failed++` + `status_note_error` + `always("tts enqueue FAILED: ... offset NOT advanced, event kept and retried")`，然后返回 `-1`（走既有 `schedule_retry` 退避）；超过 `provider_retry_max` 时置 `pend_stuck` / `state=error` 并返回 `-2`（仍继续重试、**绝不跳过该事件**） |
| 幂等命中日志 | `tts skip (already queued/played)` 从 `logf_()` 改为 `always()`，让"幂等命中"在真机证据里直接可见 |
| 既有成功日志 | `provider recovered ...` 改为 `pending event cleared: id=... after N attempts`（同一 `pend_stuck` 现在也可能来自入队失败，措辞不能再写死 provider） |

**对 T5-06B/C 的影响**：只改 `provider_attempt()` 的一个分支，未启用 `--tts-queue-dir` 时 `tts_enqueue()` 立即返回 0、`q` 永不为负，行为与 T5-06C 完全一致（i34、i38 双用例守护）。T5-05A/B/C 模块、`system_debloat`、原厂 APK/native/boot/system 分区**均未改动**。

### 3.3 测试与工具

| 文件 | 说明 |
|---|---|
| `tests/worker_integration_test.py` | 重写 `i33`（入队失败不再提交偏移 + 故障解除后只入队一次）；新增 `i35`（文件 fsync 失败）、`i36`（目录 fsync 失败 → 幂等识别）、`i37`（create/write/rename 三种失败）、`i38`（队列关闭时故障开关不生效） |
| `tests/t5_06d_p1_fault_inject.ps1` | 新增。真机两阶段驱动：`exec`（执行器持久化故障注入 E1–E9）、`real`（真实模型 + 原厂 TTS 真机闭环 R1–R4） |
| `tests/run_t5_06d_host_tests.ps1` | 日志默认改为 `evidence/t5_06d_p1_host_test.log`，子集覆盖到 i38 |
| 设备侧辅助脚本（随测试推送，源码见报告末尾清单） | `seed_item.sh` / `run_exec.sh` / `run_worker_p1.sh` / `dump_state.sh` / `pids.sh` / `kill_pid.sh` / `kill_during_play.sh` |

---

## 四、语义：至少一次投递（at-least-once）与重复播报边界

1. 条目状态机不变：`queue/ → inflight/ → done/（<id>.ok）`，失败进 `failed/`。
2. **每一次状态迁移都是"先持久化目标、再删源"**；目标没落盘就停在原状态，重启后继续处理。
3. 播报已发生但 done 标记没落盘（磁盘满、目录 fsync 失败、rename 失败、进程被 SIGKILL）→ 重启后**允许重复播报**。这是唯一的重复边界，也是"绝不丢失"的代价。
4. 真机实测到这条边界：`p1r3-100942` 在 `done_write` 注入下播报完成后标记失败，重启重播了一次（journal 里同 id 两条 `outcome=ok`，tts_id 5246197 / 5246198）。
5. 反过来，"done 标记失败但原件被删"这种丢回答的路径**已不存在**（E6/E7/E8 断言 + 真机 R3 断言）。
6. 消费偏移语义：**回答没入队 = 事件没有消费**；Worker 会重新请求模型（可能重复计费），直到入队成功或人工介入。

---

## 五、执行器故障注入结果（真机，E1–E9）

全部用独立测试根目录 `/data/local/tmp/t5p1/tts`，`--fault` 注入，断言覆盖源文件、目标文件、event_id、journal、state 计数。

| 用例 | 注入点 | 关键断言（全部 PASS） |
|---|---|---|
| E1 | `--selfcheck` | 本机 `write=true dirfsync=true file=true`；目录 fsync 真的可用（后续判定的前提） |
| E2 | `recover_write` | inflight 原件保留、queue 为空、done 为空、`recover_failed=1`、journal `recover_failure{stage=queue}`、stdout 明确 "inflight file kept"；故障解除后恢复为 done |
| E3 | `recover_dirfsync` | queue 文件已存在（rename 已发生）**且** inflight 原件保留；`recover_failed=1`；queue 条目 event_id/正文与原件一致；故障解除后只留 1 个 done 标记 |
| E4 | `provider_fail,retry_write` | queue 为空、inflight 保留、failed 为空、`persist_failed=1`、journal `persist_failure{stage=queue,outcome=provider_error}`；恢复后 `attempts=2`、播报一次、字节数不变 |
| E5 | `provider_fail,failed_write` | failed 未写、inflight 保留、`persist_failed=1`、`stage=failed`；恢复后进 failed/、正文逐字节一致、`give_up` 只记一次 |
| E6 | `fake_ok,done_write` | `done_marker_failed=1`、done 为空、inflight 保留、正文不变；恢复后 1 个 done 标记，重复播报被记录（≥2 次 ok） |
| E7 | `fake_ok,done_rename` | 同上（rename 失败分支） |
| E8 | `fake_ok,done_dirfsync` | done 标记已进 done/ 但判定不可持久 → inflight 保留；恢复后仍只有 1 个 done 标记（rename 覆盖，不产生第二个） |
| E9 | `fake_ok`（无故障对照） | 一次播报、一个 done 标记、queue/inflight 清空、`persist_failed=0`、`done_marker_failed=0` |

---

## 六、Worker 故障注入结果（主机，i33/i35–i38）

| 用例 | 注入 | 关键断言 |
|---|---|---|
| `i33` | 队列目录被普通文件占住（真实 mkdir 失败） | `events_processed=0`、`offset=0`、`tts_queued=0`、`tts_enqueue_failed≥1`、`provider_stuck=1`、日志含 `tts enqueue FAILED` 且不含回答正文；故障解除后同一事件**只入队一次、只提交一次** |
| `i35` | `T6B_FAULT_TTSQ=fsync` | 无 queue 条目、tmp 已清理、`offset=0`、未提交、状态 `last_error` 写明注入原因；解除后一次入队 + 一次提交 |
| `i36` | `T6B_FAULT_TTSQ=dirfsync` | queue 文件已存在但 `tts_queued=0`、`tts_enqueue_failed≥1`；同一次运行内第二次尝试 `tts_skipped=1` 后提交；条目字节不变、只有一条 |
| `i37` | `create` / `write` / `rename` | 三种都无条目、无 tmp、`offset=0`、未提交、日志含注入原因且不含正文 |
| `i38` | 队列关闭 + `T6B_FAULT_TTSQ=dirfsync` | 正常提交、`tts_queued=0`、`tts_enqueue_failed=0`、不建任何 tts 目录 → T5-06C 无回归 |

---

## 七、主机测试结果

- 单元测试：`checks passed: 621, failed: 0`（`evidence/host_unit_test.log`）
- 集成测试全集：`cases: 40, failed: 0`（`evidence/host_integration_test.log`）
- TTS 队列子集：`cases: 10, failed: 0`（`evidence/t5_06d_p1_host_test.log` 第 3 段）
- 主题子集（i11/i15/i16/i17/i18/i21/i22/i23/i24/i25/deepseek/provider_config/default）：全部 `RESULT: PASS`
- 锁压力：`rounds: 100, failed: 0`

## 八、ARM32 构建结果

- 编译：NDK r21e `armv7a-linux-androideabi26-clang`，`-O2 -Wall -Wextra -std=gnu99 -fPIE -pie`，**0 warning 0 error**
- 产物：`ai_worker` 138 372 B，sha256 `9775a3f2…d92b3d`；ELF32 / ARM / DYN，`NEEDED libc.so`（动态链接保持，`dlopen("libcurl.so")` 语义不变）
- dex：`tts_exec.dex` 33 608 B，sha256 `622067a5…14e7fb`；`javac -source 8 -target 8` + `d8 --min-api 26 --release`，入口 `com.tgz02.tts.TtsExec`
- 构建日志：`evidence/t5_06d_p1_ndk_build.log`、`evidence/t5_06d_p1_tts_build.log`

---

## 九、真机验证结果（真实模型 + 原厂 TTS，R1–R4）

独立目录：work `/data/local/tmp/t5p1/rwork`、state `/data/local/tmp/t5p1/rstate`、queue `/data/local/tmp/t5p1/rtts`。
**未清空、未截断**真实 `events.jsonl`（`/data/local/tmp/t5_bridge/work/events.jsonl` 仍是 199 行，s8 复跑时也断言 "events.jsonl never shrank"）。

| 用例 | 场景 | 关键断言（全部 PASS） |
|---|---|---|
| R1a | 队列目录路径被普通文件占住（**真实** mkdir 失败）+ 真实模型 | `deepseek ok: model=deepseek-flash http=200`、`tts enqueue FAILED … cannot create queue dirs`、`events_processed=0`、`offset=0`、`tts_enqueue_failed≥1`、未创建 queue 目录 |
| R1b | 解除占用后同一事件重新回答并入队 | 同一 `event_id=p1r1a-100817` 重新回答、`tts queued`、queue 只有 1 条、`events_processed=1`、offset 前进 |
| R1c | `T6B_FAULT_TTSQ=dirfsync` + 真实模型 | `queue dir fsync failed (item maybe present)`、`tts_enqueue_failed≥1`、`tts_skipped≥1`、条目仍在且正文完整、同 event_id 不产生第二条 |
| R1d | 执行器真实播报 + worker 重启 | 两个 done 标记、inflight 清空、`tts_id=5246193` 真原厂 id、播报字节数=回答字节数、重启不再入队 |
| R2 | 播报中 `kill -9` 执行器 | 设备侧一次调用内完成"等 inflight → kill -9 → 核对"（避免主机往返把播报等完）：`pid_gone=yes`、`done_before=0`、`KEPT`、md5 前后一致；重启 `recovered inflight item` → 重播 `tts_id=5246196`、`attempts=2`、字节数不变 |
| R3 | 真实播报 + `done_write` 注入 | `done marker NOT persisted`、inflight 保留、`done_marker_failed=1`、journal `done_marker_failure`、后续 done 标记未受影响；重启重播 `tts_id=5246198`、inflight 清空（重复播报=已知边界） |
| R4 | 原厂 ASR / 模型代理 / 原厂 TTS | `smartapp:core` 存活、journal 有 `outcome:"ok"`、worker 日志 `http=200 curl=0` |

改动后另外复跑原厂 ASR 共存场景（`t5_06d_device_e2e.ps1 -Only s8`，证据 `evidence/t5_06d_p1_asr_after_fix.log`）：
`ASSERT OK factory ASR still recognises speech after all TTS activity` / `factory core pid unchanged` / `api key file still 0600` / `events.jsonl never shrank` → `RESULT: PASS`。

### offset 与 event_id 前后对照（真实 worker、真实状态文件）

| 步骤 | event_id | offset 前 → 后 | processed | 说明 |
|---|---|---|---|---|
| R1a | `p1r1a-100817` | 0 → **0** | 0 | 3 次 `provider_retries`，`deepseek ok` 但入队失败 → 偏移不动 |
| R1b | `p1r1a-100817` | 0 → **291** | 1 | 同一事件重新回答，入队成功后提交 |
| R1c | `p1r1c-100840` | 291 → **579** | 1 | dirfsync 失败 → 幂等识别已有条目后提交（`tts_skipped=1`） |
| R1d | — | 579 → **579** | 0 | 重启后无新事件（`idle_timeout`），不重复入队 |
| R2 | `p1r2-100919` | 579 → **866** | 1 | 入队成功后提交；播报中被 kill -9 |
| R3 | `p1r3-100942` | 866 → **1144** | 1 | 入队成功后提交；done 标记注入失败 |

最终状态文件（真实、0600）：

```json
{"version":2,"offset":1144,"prefix_hash":"937a2528df31e953","seq_last":3,
 "last_event_id":"p1r3-100942","processed_total":4,
 "recent_ids":"p1r1a-100817,p1r1c-100840,p1r2-100919,p1r3-100942"}
```

执行器 journal（`/data/local/tmp/t5p1/rtts/journal.jsonl`，只含 id/字号/时长，不含正文）：

```json
{"kind":"tts","event_id":"p1r1a-100817","tts_id":5246193,"outcome":"ok","dur_ms":4260,"text_bytes":57,"attempts":1}
{"kind":"tts","event_id":"p1r1c-100840","tts_id":5246194,"outcome":"ok","dur_ms":5191,"text_bytes":75,"attempts":1}
{"kind":"recover","event_id":"p1r2-100919","attempts":1,"age_ms":13176}
{"kind":"tts","event_id":"p1r2-100919","tts_id":5246196,"outcome":"ok","dur_ms":3662,"text_bytes":48,"attempts":2}
{"kind":"tts","event_id":"p1r3-100942","tts_id":5246197,"outcome":"ok","dur_ms":1208,"text_bytes":12,"attempts":1}
{"kind":"done_marker_failure","event_id":"p1r3-100942","outcome":"ok","attempts":1}
{"kind":"recover","event_id":"p1r3-100942","attempts":1,"age_ms":11350}
{"kind":"tts","event_id":"p1r3-100942","tts_id":5246198,"outcome":"ok","dur_ms":1953,"text_bytes":12,"attempts":2}
```

done 标记：4 个（每个 event_id 恰好一个，`.ok` 0600，29 B）。

---

## 十、尚未解决的风险

1. **重复播报**：done 标记没落盘时重启会重播（R3 实测）。这是至少一次投递的固有代价，产品层不能假设"只播一次"；如需"最多一次"必须引入可判定的播报确认（原厂只给 complete 反馈，目前无法区分"播完但标记没写"与"没播"）。
2. **dirfsync 失败但 rename 已成功** 时，事件在**同一次运行内**按 event_id 幂等提交（评审要求 5）。极端断电场景下该条目的目录项可能未落盘，需要重新回答才能恢复——此时回答不会被"删掉"，但可能"没被记住"。
3. **运行期不自愈**：done/queue 写入失败的条目留在 `inflight/`，只在下一次进程启动时由 `recoverInflight()` 处理；运行中的守护进程不会主动重试它（避免同一事件在运行期重复播报）。
4. **attempts 双计**：一次崩溃会先被 `recoverInflight()` +1、再被 `drainOnce()` +1，`maxAttempts=3` 时两次崩溃即进 `failed/`（不丢，但需要 dead-letter 策略人工处理）。
5. **failed/ 无自动清理**：停车场只增不减，需要人工或后续 dead-letter 机制。
6. **目录 fsync 依赖平台**：`android.system.Os.open(O_RDONLY)+Os.fsync` 在 TG-Z02（8.1/ext4）实测可用；若某内核/文件系统对目录 `fsync` 返回 `EINVAL`，则所有持久化判定都会失败（链路停摆，而不是"看起来成功"）。这是有意的保守选择。
7. **入队失败会重新请求模型**：可能产生重复计费与延迟；`provider_retry_max` 之后进入 `state=error` 并保持事件不前进（不会丢失，也不会跳过）。
8. **真机 real 阶段的输入事件是合成 ASR 记录**（字段与桥接端 `asr_final` 完全一致），真实 ASR 链路由 `t5_06d_device_e2e.ps1 -Only s8` 单独复验；真实 ASR → TTS 完整闭环仍以 T5-06D 的 S1–S8 记录为准（本次未重跑全部 8 个场景）。
9. **只做了进程级 SIGKILL**，没有做断电/掉电测试，文件系统崩溃一致性未验证。
10. **队列与状态都没有容量上限**：条目正文上限沿用 Worker 的回答上限（`T6B_REPLY_TEXT_MAX`），但条目数量无上限。

---

## 十一、证据文件与复现

| 文件 | 内容 |
|---|---|
| `evidence/t5_06d_p1_device_fault.log` | 真机两阶段全量日志（145 PASS / 0 FAIL） |
| `evidence/t5_06d_p1_host_test.log` | 主机验证总日志（单元 + 集成 + TTS 子集） |
| `evidence/t5_06d_p1_ndk_build.log` | ARM32 构建（readelf、sha256、0 warning） |
| `evidence/t5_06d_p1_tts_build.log` | dex 构建（javac + d8、sha256） |
| `evidence/t5_06d_p1_asr_after_fix.log` | 改动后原厂 ASR 共存复验（s8，PASS） |
| `evidence/host_unit_test.log` / `host_integration_test.log` / `host_lock_stress.log` 等 | 主机全套证据（已刷新到本次结果） |

复现命令：

```powershell
# 1) 主机（构建 dex + 单元 + 集成 + TTS 子集）
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\run_t5_06d_host_tests.ps1

# 2) ARM32 构建（构建完把 android\out\ai_worker 推到 /data/local/tmp/t5d06/bin/）
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\android\build.ps1 -LogName t5_06d_p1_ndk_build.log

# 3) 真机故障注入（exec 不出声 / real 会真实播报）
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\t5_06d_p1_fault_inject.ps1 -Only exec
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\t5_06d_p1_fault_inject.ps1 -Only real
```

设备侧辅助脚本（随仓库提交，驱动会自动推送到 `/data/local/tmp/t5p1/`）：
`android/t5_06d_p1/seed_item.sh`、`run_exec.sh`、`run_worker_p1.sh`、`dump_state.sh`、`pids.sh`、`kill_pid.sh`、`kill_during_play.sh`。

## 十二、本次未做的事（范围声明）

- 未改 T5-05A/B/C 任何模块；未改 `system_debloat`；未改原厂 APK / native / `boot.img` / system 分区
- 未改模型 Provider 与代理地址（`http://192.168.1.13:8790/v1`，`deepseek-flash`）
- 未新增 Provider、未扩展技能系统、未改 TTS 调用方式（仍是 `content://…/GenieApi` `method=4`）
- API Key 全程只由 Worker 从 0600 文件读取；本报告与所有证据中无 key、无请求体、无回答正文
