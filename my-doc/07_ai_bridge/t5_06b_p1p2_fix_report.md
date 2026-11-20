# T5-06B P1/P2 修复报告（Worker 消费可靠性与生命周期加固）

- 基线：`d3e17d49af27fb3f738b6ae5be66f71e875f55cb`
- 分支：`main`（未开分支、未 reset、未 force push）
- 设备：TG-Z02（AILABS_S1L / MT8167S / armv7l / Android 8.1 / SDK 27），`smartapp:core` pid **29413**
- 二进制：`ai_worker` **102204 B** / sha256 `a0bd55cfd0033e43cf244e294c49acfb0ef9b04e478fc91c8c04a746b9b51471`（ELF32 / ARM / 动态链接）
- 主机测试：单元 **258 项全过**、集成 **19/19 全过**、并发锁 **100 轮 × 20 进程全过**、故障注入 **5 种全过**
- 真机测试：历史 107 条消费、真实语音 2 条自动消费、`kill -9` 后接管、双实例拒绝、Provider 重试/卡住、进度落盘失败退出码 5、TTS 正常
- 未改动：T5-05A/B/C（`06_t5_bridge/**`、`06_t5/**`、`03_uds_test/**`）、T3/T4、原厂 APK/SO/配置/分区

---

## 1. 五个问题与修复方式（对照任务书）

| 编号 | 问题 | 修复 | 代码位置 |
|---|---|---|---|
| P1-1 | 单实例锁靠 `O_EXCL` + 判活 + unlink，存在并发窗口（两个进程可能都认为自己是唯一） | 改为**内核 advisory lock**：`flock(LOCK_EX|LOCK_NB)`，fd 持有到进程退出；Windows 用 `LockFileEx`。锁文件不再 unlink，PID 只做诊断 | `worker_util.c` `wu_lock_acquire/release`；`ai_worker.c` `lock_acquire` |
| P1-2 | Provider 失败也推进偏移/写 recent_ids/计成功 → **事件被永久丢弃** | 失败事件保留在内存并退避重试；成功才提交偏移与 recent_ids；超上限进入 error（provider_stuck）继续重试，绝不跳过 | `ai_worker.c` `provider_attempt/schedule_retry/worker_loop` |
| P1-3 | `state_save()` 返回 void，落盘失败仍继续消费 → 进度与磁盘不一致却继续跑 | 改返回 int；失败立即停止读取、状态转 error、退避重试；`--state-fail-exit-ms` 后带错误退出（退出码 5）；退出前最后一次保存失败也如实上报 | `ai_worker.c` `state_save/state_persist_recover/worker_loop` |
| P2-1 | EOF 时"半行超过 max_record"直接返回 -3 并推进偏移 → 丢掉一条还没写完的超长记录 | EOF 且无 `\n` 一律返回 0（不推进、不计数）；只有真正读到 `\n` 且整行超长才 -3 | `event_reader.c` `t6b_reader_next` 的 EOF 分支 |
| P2-2 | 文件删除后重建时，因 fd 已关闭（`have_fd==0`）跳过身份比较 → 用旧偏移读新文件 | 保存传入的 dev/ino（即使文件不存在也保留）；**每次（重新）打开**都比对；不同则 replacements++/off=0/清缓存 | `event_reader.c` `t6b_reader_init/ensure_open` |

---

## 2. P1-1：单实例锁

### 2.1 实现
- POSIX：`open(path, O_CREAT|O_RDWR|O_CLOEXEC, 0600)` → `flock(fd, LOCK_EX|LOCK_NB)`；
  成功即**保持 fd 打开**，直到 `wu_lock_release()`（进程退出时内核自动释放，`kill -9` 也一样）。
- 锁文件内容（PID）只用于诊断：拿锁后 `ftruncate + write + fsync`；
  **正确性完全由 flock/LockFileEx 保证**，不再有"读 PID 判断是否存活"的逻辑。
- 输家：`flock` 返回 `EWOULDBLOCK` → 退出码 **3**，日志 `another ai_worker is running: pid=… (flock held)`。
- 释放：`flock(LOCK_UN)` + `close()`，**不 unlink**（unlink 会让并发进程在旧 inode 上拿锁、新进程在新 inode 上拿锁，等于没锁）。
- 重启诊断：新实例拿锁后会读文件里的旧 PID，如果 `!= 自己` 就打一行
  `lock acquired; previous owner pid=N no longer holding it`（证据里能看到 kill -9 的场景）。

### 2.2 Windows 差异（实现要点，报告如实记录）
1. `_open()` 的默认共享模式会让**其它进程连只读打开都失败**（主机测试读不到锁文件 PID），
   因此 Windows 分支改用 `CreateFileA(GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ|WRITE|DELETE)`
   + `_open_osfhandle`。
2. `LockFileEx` 会阻止别人**读被锁区间**。如果锁整个文件，`cat ai_worker.lock` 会失败，
   "PID 供诊断"就落空。因此只锁 **偏移 64 起的 1 个字节**（PID 文本写在 0..31）：
   互斥性不变，PID 可读。

### 2.3 并发锁压力测试（新脚本 `tests/worker_lock_stress_test.py`）
每轮：同时起 **20** 个 worker → 断言恰好 1 个存活、19 个 `rc=3` → `kill -9` 持锁者 →
立刻再起一个必须 `rc=0`（马上拿到锁）→ 锁文件必须仍然存在。**100 轮**：

```
rounds: 100, failed: 0, 32.7s
RESULT: PASS
invariant: exactly 1 holder, 19 refusals (rc=3), lock acquired immediately after kill -9,
           lock file never unlinked
```
证据：`evidence/host_lock_stress.log`（逐轮 `lock_pid=` 与 `new_worker_rc=0`）。

---

## 3. P1-2：Provider 失败不再消费事件

### 3.1 新状态机
```
读一条记录 → 去重 → [待处理事件 pending]
                       ↓
             Provider.complete()  ←──────────────┐
                       ↓                          │
        OK ──→ commit(offset++ / recent_ids / processed_total++) → state_save
        TIMEOUT/ERROR ──→ 退避（200ms 起，×2，上限 2s）────────┘
                        （偏移不动、recent_ids 不动、成功计数不动）
        尝试次数 ≥ --provider-retry-max → provider_stuck=1, state=error，
        但继续按上限间隔重试；**永不跳过、永不读取下一条**
```
- 偏移只在 `commit_event()` 里推进（`ai_worker.c`），失败路径根本不调用它。
- `recent_ids` 只在成功提交时写入 → 失败事件既不会被"记住"，也不会被误判重复。
- 退出时若仍有 pending 事件：日志明确写 `WARNING: event id=… was still unprocessed at exit
  (N attempts, offset kept at X)`，偏移停在事件之前，重启后必然重新读到。

### 3.2 新增可观测字段（`ai_worker_status.json`）
`provider_retries`（重试总次数）、`stuck_attempts`（当前事件尝试次数）、
`provider_stuck`（0/1）、`pending_event_id`（正在重试/卡住的事件）。

### 3.3 语义声明（不许含糊）
- 这是 **at-least-once**：Provider 成功但进度未落盘（崩溃 / 落盘失败）时，重启会**再次调用**
  同一个 event_id。失败事件重试期间 `event_id` 恒定不变（事件对象只在成功后才清除）。
- **不是 exactly-once**，报告与代码注释都不做这个承诺。

### 3.4 测试（主机 `evidence/host_provider_retry.log` + 集成全量日志）
| 用例 | 断言 |
|---|---|
| `i11_provider_retry_recover` | 前 2 次失败、第 3 次成功 → `events_processed=3`、`provider_ok=3`、`provider_err=2`、`provider_retries=2`、`provider_stuck=0`、`processed_total=3`、offset=EOF、`recent_n=3` |
| `i11b_provider_stuck_no_skip` | 永久失败 → `events_processed=0`、`provider_stuck=1`、offset=0、`pending_event_id=第一条`、`recent_n=0`、`processed_total=0`；随后换不失败的上游重启 → `processed_total=3`、offset=EOF、`duplicates=0` |
| `i11c_kill9_keeps_failed_event` | 失败重试期间 `kill -9` → 重启拿锁（`previous owner pid=`）→ 该事件仍被处理，`processed_total=1`、offset=EOF |

真机（`evidence/device_p1p2_fix.log` 段 A/B/B2）：
```
A summary: processed=1 provider_ok=1 provider_err=2 retries=2 offset=305 file_size=32894
A: PASS (2 failed attempts, then success; offset advanced exactly one record)
B summary: processed=0 stuck=1 pending=t5b-16112-1967345-g1 state=stopped
B: PASS (stuck on t5b-16112-1967345-g1, offset 0, no skip)
B2 state: {... "offset":926,"processed_total":3,"recent_n":3 ...}
B2: PASS (processed_total=3 after recovery)
```

---

## 4. P1-3：进度落盘失败必须阻止继续消费

### 4.1 行为
1. `state_save()` 返回 `int`（0/-1）；目录重建 + 二次保存保留在内部。
2. 事件提交路径（`commit_event`）与跳过路径（重复/非法/超长）都检查返回值。
3. 失败即刻：`state_persist_failed=1`、`state="error"`、`state_errors++`、`last_error` 记录原因，
   **不再读取任何事件**，进入 `state_persist_recover()`：每 `--state-retry-ms` 重试，
   上限 `--state-fail-exit-ms`。
4. 仍然失败 → 退出前做最后一次保存（失败也打印 `FINAL state save failed`），进程退出码 **5**，
   `exit_reason=state_persist_failed`。
5. `consumer_state.json` 的原子写保证"磁盘上永远是上一次成功的内容"：
   失败发生在 tmp/fsync/rename 任一步，原文件不被触碰、不被截断。

### 4.2 故障注入（测试）
真实故障不可控，`consumer_state.c` 增加**只在环境变量存在时生效**的注入点：
`T6B_FAULT_STATE = create | write | fsync | rename | dirfsync`（生产路径默认不进入任何分支）。

主机结果（`evidence/host_state_fault.log`）：
```
create : rc=5, processed<=1, durable offset=0/732
write  : rc=5, processed<=1, durable offset=0/732
fsync  : rc=5, processed<=1, durable offset=0/732
rename : rc=5, processed<=1, durable offset=0/732
dirfsync: rc=5, processed<=1, durable offset=244/732   ← 见下
```
`dirfsync` 一项 `offset=244` 是**正确**的：rename 已成功、数据已在文件里，只有目录项未确认落盘。
Worker 依然拒绝把这次写入当作"已持久化"（退出码 5、状态 error），因此不会继续消费。

真机真实故障（`evidence/device_p1p2_fix.log` 段 C1/C2，未用注入）：
```
C1 (consumer_state.json.tmp 是一个目录 → 临时文件创建失败)
   rc=5, processed=1, offset=305, state=error, state_persist_failed=1
   last_error: state save failed (exit): state temp open failed: …/consumer_state.json.tmp
C2 (consumer_state.json 是一个目录 → rename 无法替换)  rc=5
```
两次都只处理了 1 条就停住，磁盘上没有"假装前进"的进度。

---

## 5. P2-1：半行超长不得提前跳过

修复点（`event_reader.c`，EOF 分支）：只要没读到 `\n`，无论缓冲区里堆了多少字节，都返回 0
（不推进 `off/pending`、不记 `oversize_skips`）；只有找到 `\n` 且 `行长 > max_record` 才 `-3`。
>64 KB 的单行仍走既有分块扫描（`scan_past_long_line`），内存不增长。

测试：
- 单元（`test_reader_half_line_oversize`）：写入 8500 B 无换行、`max_record=8192`
  → 首次读返回 **0**、`off/pending` 不变、`oversize_skips=0`；补写剩余内容 + `\n` → 返回 **-3**、
  提交整行偏移；随后写入的合法记录仍可读。
- 集成 `i15_half_line_oversize`（真进程）：`oversize_lines=0`、offset=0 持续 1 s；
  补 `\n` 后 `oversize_lines=1`、offset=文件末尾、`events_processed=0`（没有凭空造事件）；
  再追加一条 → `events_processed=1`。
- 真机：同一份代码（P2 修复在读取层，设备与主机一致），历史/新增事件消费无回归（见 §7）。

---

## 6. P2-2：文件消失后重建的身份检测

- `t6b_reader_init()` 保存 `saved_dev/saved_ino`（**即使此刻文件不存在也保存**），
  `have_saved` 表示"有历史身份"；首次运行（0/0）不参与判定。
- `ensure_open()` 在**每次重新打开**时比较：不同 → `replacements++`、`last_reason=T6B_OPEN_REPLACED`、
  `off=0`、`pending=0`、清空缓存；相同 → 保留旧偏移。
- `size < off` 仍单独判为截断（`truncations++`），两种原因不会互相掩盖。

测试：
- 单元 `test_reader_recreate_while_absent`：保存身份 → 文件消失（返回 0、`replacements` 不增）→
  出现**更短**的新文件 → `replacements=1`、首条事件被读出（`new-1`，未被跳过）；
  同身份重开不误判；首次运行无历史身份不误判。
- 集成 `i16_file_deleted_while_running`（真进程）：读 2 条 → 删除（`file_size=-1`，offset 保留）→
  重建**更短**文件 → `replacements=1` 且从 0 读完 → 再删除重建**更长**文件 →
  `replacements=2` 且从 0 读完（证明只靠 size 会漏）。

---

## 7. 真机回归（`evidence/device_smoke.log`、`recovery_test.log`、`device_p1p2_fix.log`）

| 项目 | 结果 |
|---|---|
| 二进制 | sha256 `a0bd55cf…`（与 `ndk_build.log` 一致），ARM32 动态链接，`--help` 正常 |
| 正常启动 | `start pid=23443 … offset=0 (mock only, no network)`；`status` 显示 running |
| 历史消费 | 107 条全部消费：`events_processed=107, duplicates=0, invalid=0, gaps=1[3,4], seq_resets=12, seq_unknown_start=1`；offset=32894=文件大小 |
| events.jsonl 只读 | 消费前后 sha256 均为 `d9e40a83…`（size/mtime 不变） |
| 真实 ASR final 自动消费 | 播 s01/s02 + Frida sender：`events 109 → 111`，`worker processed 0 → 2`，`RESULT: PASS` |
| Mock 正常回复 | 日志 `provider=mock status=ok latency=0ms reply_bytes=71`（固定文本，非真实模型） |
| `kill -9` 后恢复 | 锁文件残留 pid=24028 → 重启 `lock acquired; previous owner pid=24028 no longer holding it`，offset 原样恢复、0 重复 |
| 双实例拒绝 | 脚本 `script_rc=1`（`already running`）、直接执行二进制 `binary_rc=3` |
| Provider 重试 / 卡住 | 段 A：2 次失败后成功、offset 只前进一条；段 B：stuck、offset=0、事件保留；B2：重启后处理完 |
| 进度落盘失败 | 段 C1/C2 真实故障 → `rc=5`、`state=error`、`state_persist_failed=1`、未继续消费 |
| 原厂 TTS | `UTPPlayer [TTS]onPlayerDriverMsg msg:[8:MEDIA_STOPPED]`、`ApolloPlayerAdapter player:tts reset done`、`AudioStateManager [source switch]tts is stop now!`、`SOURCE_TTS` 消息流正常 |
| 唤醒 | `XEGNLocalEngine algtracelog: {"low_wakeup_score":…,"wakeup_words":"tian mao jing ling"}` |
| `smartapp:core` | pid 29413 全程未变；`logcat -b crash` 无 genie/smartapp 记录 |
| `tgb_bridge` | 5 frames / 4 stored / 1 duplicate / 0 rejected / `store_failed=false`；worker 启停对其无影响 |
| 音乐播放 | **未实测**（该 ROM 无独立音乐 App，音乐走云服务同一套 Apollo/UTP 播放器；TTS 播放已证明该通路正常） |

---

## 8. 主机测试总览

| 套件 | 结果 | 日志 |
|---|---|---|
| 单元测试（258 项） | PASS | `evidence/host_unit_test.log` |
| 集成测试（19 用例） | PASS | `evidence/host_integration_test.log` |
| Provider 重试/卡住子集（i11/i11b/i11c） | PASS | `evidence/host_provider_retry.log` |
| 半行超长子集（i15） | PASS | `evidence/host_reader_half_oversize.log` |
| 文件删除重建子集（i16） | PASS | `evidence/host_file_recreate.log` |
| 状态落盘故障注入（i17，5 种） | PASS | `evidence/host_state_fault.log` |
| 并发锁压力（100 轮 × 20 进程） | PASS | `evidence/host_lock_stress.log` |
| ARM32 NDK 构建 | 0 warning；DYN/INTERP/libc.so | `evidence/ndk_build.log` |

回归项（未改动但每轮都跑）：只读消费、半行等待、event_id 去重、seq 缺口诊断、原子状态写、
Mock Provider、start/stop/status/stats/state/log/events（i1–i10、i12–i14 全过）。

---

## 9. 新增/变更的接口面

新增启动参数（都有默认值，旧命令不受影响）：

```
--provider-retry-max N       超过 N 次尝试仍失败 → provider_stuck（默认 5，继续重试不跳过）
--provider-backoff-ms N      首次重试间隔（默认 200）
--provider-backoff-max-ms N  重试间隔上限（默认 2000）
--state-retry-ms N           进度落盘失败后的重试间隔（默认 100）
--state-fail-exit-ms N       持续失败多久后带错误退出（默认 3000，0 = 立即退出）
--mock-fail-times N          Mock 前 N 次调用失败、之后成功（模拟"临时失败后重试成功"）
```

退出码：`0` 正常 / `2` 参数错误 / `3` 已有实例 / `4` 初始化失败 / **`5` 消费进度无法落盘**。

状态文件新增字段（都在 `counters` 对象内，其余字段名与嵌套结构保持不变，脚本兼容）：
`provider_retries`、`stuck_attempts`、`provider_stuck`、`state_persist_failed`；
另在顶层新增 `pending_event_id`（正在重试/卡住的事件，空串表示无）。

---

## 10. 已知限制

1. **at-least-once**：Provider 成功后若进度未落盘（崩溃/磁盘故障），重启会再次调用同一事件。
   本阶段不做幂等去重的"已发送"记录，也不承诺 exactly-once。
2. **卡住事件没有死信队列**：超过 `--provider-retry-max` 后停在 error 状态继续重试，
   后续事件全部阻塞（这是任务书要求的行为，不是缺陷）。死信策略留待后续阶段。
3. **去重窗口 128 条**：整文件重扫时更早的事件可能被重处理（与上一阶段一致）。
4. `T6B_FAULT_STATE` 注入点长期保留（默认不生效），用于回归"落盘失败"路径；
   若评审要求，可加编译开关在 release 构建中移除。
5. Windows 锁只锁 1 个字节（偏移 64），这是为了"PID 可读"；POSIX 侧 `flock` 锁整文件，
   两者互斥语义一致，但**跨平台不共享同一个锁**（本来也不会同时跑两个平台）。

---

## 11. 复现

```powershell
# 主机：单元 + 集成 + 子集 + 100 轮锁压力（约 2 分钟）
cd my-doc\07_ai_bridge\tests
powershell -ExecutionPolicy Bypass -File run_host_tests.ps1

# 单独跑某一组
py -3 worker_integration_test.py --only i17 --log ..\evidence\host_state_fault.log
py -3 worker_lock_stress_test.py --rounds 100 --procs 20

# ARM32 构建
cd ..\android
powershell -ExecutionPolicy Bypass -File build.ps1
```

真机取证脚本（主机侧，非仓库产物）：`D:\tgz02\OS\_analysis\t506b\d1_smoke.ps1`、
`d2_voice.ps1`、`d3_recovery.ps1`、`d4_factory.ps1`、`d5_fix.ps1`。
