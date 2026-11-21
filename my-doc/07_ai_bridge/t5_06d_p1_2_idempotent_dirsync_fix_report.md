# T5-06D-P1-2 TTS 幂等持久化修复报告（按指定代码原样替换）

- 设备：TG-Z02（`AILABS_S1L`，Android 8.1 / sdk 27，ARM32），真机 `192.168.1.9:5555`
- 分支：`main`（未建分支、未建 PR）；改动范围仅 `my-doc/07_ai_bridge/`
- 代码来源：**ChatGPT 提供的完整替换代码**；本任务只做替换、验证、记录，未重新设计
- 状态：替换完成、主机 + 真机全部通过；**不自行宣布 P1 关闭**，等待 ChatGPT 复审

---

## 一、代码替换（`my-doc/07_ai_bridge/android/ai_worker.c`）

### 1.1 替换了什么

| 位置 | 处理 |
|---|---|
| `tts_existing_item_durable()`（新增） | 按指定代码**原样**加在 `tts_enqueue()` 之前：检查某阶段文件是否存在、是否是普通文件、故障注入、`wu_fsync_dir()`；返回 1 / 0 / -1 |
| `tts_enqueue()`（替换） | 按指定代码**原样**替换整个函数：四阶段幂等检查（逐一重新 fsync 各自目录）→ 多阶段冲突拒绝 → 新建路径 `open tmp → write → fsync → close → rename → 目录 fsync` |
| 原函数上方的旧说明注释 | 随函数一起被替换（旧注释写的是 “0 = 重复（跳过）”“入队失败不改偏移语义”，与指定代码不符，保留会误导） |

### 1.2 接口核对（任务书第一条要求）

| 接口 | 声明/实现 | 与指定代码是否一致 |
|---|---|---|
| `wu_rename_replace(const char *from, const char *to)` | `worker_util.h:82` / `worker_util.c`（POSIX `rename`，Windows `MoveFileEx(...WRITE_THROUGH)`） | 一致，返回 0 = 成功 |
| `wu_fsync(int fd)` | `worker_util.h` / `worker_util.c:263` | 一致 |
| `wu_fsync_dir(const char *dirpath)` | `worker_util.h:73` / `worker_util.c:269`（Windows 恒返回 0，POSIX `open(O_DIRECTORY)`+`fsync`） | 一致 |
| `wu_file_identity(const char *, unsigned long long *, unsigned long long *, long long *)` | `worker_util.h` / `worker_util.c` | 一致（dev/ino/size） |
| `wu_is_dir(const char *)`、`wu_file_size(const char *)` | `worker_util.h` | 一致 |
| `wu_open_excl` / `wu_write_all` / `wu_close` / `wu_unlink` / `wu_mkdir_p` / `wu_json_escape` / `wu_utf8_validate` / `wu_wall_ms` | `worker_util.h` | 一致 |

**结论：无编译接口差异，不需要停下来报告。**

### 1.3 唯一的必要适配（请复审确认）

指定代码的 `tts_enqueue()` 不再修改 `w->st.tts_queued`（原实现里那行 `w->st.tts_queued++` 随函数一起被替换）。为了让状态计数保持原语义（“新条目成功落盘数”），在调用点补了一行：

```c
int q = tts_enqueue(w, &rep, terr, sizeof(terr));
if (q > 0) {
    /* P1-2：tts_enqueue() 只负责持久化，成功计数由调用方记（1 = 新条目已落盘） */
    w->st.tts_queued++;
    always("tts queued: event=%s ...");
}
```

除此之外没有改动任何生产逻辑（`provider_attempt()` 的其它分支、失败计数、`-1/-2` 返回、日志文案均未变）。

### 1.4 语义变化（相对 P1）

| 场景 | P1 行为 | P1-2 行为（指定代码） |
|---|---|---|
| 新建入队时 `rename` 成功但目录 fsync 失败 | 返回 -1，文件保留，**同一次运行内**下一次尝试命中幂等分支 → 视为"已入队"→ 提交偏移 | 幂等分支**自己也要 fsync 目录**；故障仍在则继续返回 -1，**不提交**；故障解除后才 `0`（命中）→ 提交 |
| 幂等命中 | 文件存在即跳过 | 文件存在**且**该阶段目录 fsync 成功才算命中；否则 -1 |
| 同一 event_id 出现在多个阶段 | 任一存在即跳过 | 拒绝静默成功，返回 -1（`event_id exists in multiple TTS queue stages`） |
| `done` 标记存在但在 `queue` 也有副本 | 跳过 | 拒绝（同上） |

---

## 二、验证结果总览

| 验证面 | 结果 |
|---|---|
| 主机单元测试 | `checks passed: 621, failed: 0` |
| 主机集成测试（全集） | `cases: 42, failed: 0` |
| TTS 队列子集（i31–i39b，含 P1-2 新用例） | `cases: 12, failed: 0` |
| 主机锁压力 | `rounds: 100, failed: 0` |
| ARM32 构建 | 142 692 B，sha256 `a82183c95c9b787f5832f9d1c73e3b7e2606c9d9f7472fbaa1ff1cdd1519c41f`，0 warning 0 error，动态链接 libc.so |
| tts_exec.dex（本轮未改） | 33 608 B，sha256 `622067a5015c4f7b9b03678dd2785486732e42cc9fd87211451ba2654d14e7fb` |
| 真机故障注入（执行器 E1–E9 + 真机闭环 R1–R4） | **153 PASS / 0 FAIL / 0 SKIP** |

---

## 三、必须验证的行为（任务书第二节）

### A. 新建入队（tmp → write → fsync → close → rename → 目录 fsync）

| 检查 | 用例 | 结果 |
|---|---|---|
| 文件 fsync 失败 → 无条目、无 tmp、不提交 | `i35` | PASS（`offset=0`、`events_processed=0`、tmp 已清理） |
| create / write / rename 失败 → 无条目、不提交 | `i37` | PASS（三种各一条，`offset=0`） |
| 目录 fsync 失败 → 文件已 rename 可见但**不提交** | `i36` 第 1 轮、真机 R1c | PASS（`sha256` 与失败前一致） |
| 全部成功 | `i31`、真机 R1b/R2/R3 | PASS（`tts_queued=1`、`tts_id>0`） |

### B. 幂等命中（四个阶段都要重新 fsync）

| 阶段 | 用例 | 断言 |
|---|---|---|
| `queue/<id>.json` | `i36` 第 2/3 轮、真机 R1c2 | 故障下不 skip 不提交；故障解除后 `tts_skipped=1`、提交一次、`sha256` 不变 |
| `inflight/<id>.json` | `i39` | 命中时执行该阶段目录 fsync；失败不提交；解除后提交一次、不产生 queue 副本 |
| `done/<id>.ok` | `i39` | 同上 |
| `failed/<id>.json` | `i39` | 同上 |
| 多阶段冲突 | `i39b` | `tts_enqueue_failed≥1`、`tts_skipped=0`、`events_processed=0`、`offset=0`、日志含 `multiple TTS queue stages`、两个文件都未被删除 |

### C. 故障注入清单对照

| 任务书要求 | 覆盖用例 | 结果 |
|---|---|---|
| 1. 新建入队目录 fsync 失败（文件已可见） | `i36`（host）、真机 R1c | PASS |
| 2. 同一事件重试、幂等目录 fsync 再失败 | `i36` 第 2 轮、真机 R1c（同一进程内重试 4 次） | PASS（`injected dirfsync failure for queue`） |
| 3. 再次重启、幂等 fsync 成功后才提交 | `i36` 第 3 轮、真机 R1c2 | PASS（`offset 291 → 291` 不动，恢复后 `291 → 579` 只前进一次） |
| 4. inflight / done / failed 三种命中目录 fsync 失败 | `i39` | PASS |
| 5. 多阶段同时存在 | `i39b` | PASS（拒绝静默成功） |
| 6. queue 文件 SHA256 前后一致 | `i36`（SHA256）、真机 R1c/R1c2（sha256sum） | PASS |
| 7. 失败期间 offset 不推进、events_processed 不增加 | `i36`/`i37`/`i39`/`i39b`、真机 R1a/R1c | PASS |
| 8. 恢复后 offset 只推进一次、无重复条目 | `i36` 第 3 轮、真机 R1b/R1c2 | PASS（`events_processed=1`、queue 条目数不变） |

---

## 四、真机日志与数值（真实模型 + 原厂 TTS）

工作目录全部为独立测试目录：`/data/local/tmp/t5p1/{rwork,rstate,rtts}`；真实生产 `events.jsonl` 与真实队列**未触碰**（生产 `events.jsonl` 仍为 200 行，队列 queue/inflight 为 0、done 66、failed 0）。

### 4.1 关键日志（worker，摘自证据文件，原文未改）

```
10:35:29 start pid=15481 ... provider=deepseek offset=0
10:35:33 deepseek ok: ... reply_bytes=45 event=p1r1a-103524
10:35:33 tts enqueue FAILED: event=p1r1a-103524 reply_bytes=45 (cannot create TTS queue directories); offset NOT advanced, event kept and retried (no answer is dropped)
10:35:34 deepseek ok: ... reply_bytes=30 event=p1r1a-103524
10:35:34 tts enqueue FAILED: ... reply_bytes=30 (cannot create TTS queue directories)
10:35:36 deepseek ok: ... reply_bytes=45 event=p1r1a-103524
10:35:36 tts enqueue FAILED: ... reply_bytes=45 (cannot create TTS queue directories)
10:35:38 exit reason=max_runtime processed=0 provider_retries=3 offset=0
10:35:42 start pid=15658 ... offset=0
10:35:43 deepseek ok: ... reply_bytes=57 event=p1r1a-103524
10:35:43 tts queued: event=p1r1a-103524 reply_bytes=57 queue=/data/local/tmp/t5p1/rtts
10:35:43 exit reason=max_events processed=1 offset=291
10:35:53 deepseek ok: ... reply_bytes=63 event=p1r1c-103547
10:35:53 tts enqueue FAILED: event=p1r1c-103547 reply_bytes=63 (queue directory fsync failed after rename); offset NOT advanced
10:35:54 deepseek ok: ... reply_bytes=84 event=p1r1c-103547
10:35:54 tts enqueue FAILED: ... reply_bytes=84 (injected dirfsync failure for queue)
10:35:57 deepseek ok: ... reply_bytes=105 event=p1r1c-103547
10:35:57 tts enqueue FAILED: ... reply_bytes=105 (injected dirfsync failure for queue)
10:36:00 deepseek ok: ... reply_bytes=99 event=p1r1c-103547
10:36:00 tts enqueue FAILED: ... reply_bytes=99 (injected dirfsync failure for queue)
10:36:04 deepseek ok: ... reply_bytes=72 event=p1r1c-103547
10:36:04 tts enqueue FAILED: ... reply_bytes=72 (injected dirfsync failure for queue)
10:36:05 exit reason=max_runtime processed=0 provider_retries=5 offset=291
10:36:11 deepseek ok: ... reply_bytes=75 event=p1r1c-103547
10:36:11 tts skip (already queued/played): event=p1r1c-103547 reply_bytes=75 queue=/data/local/tmp/t5p1/rtts
10:36:11 exit reason=max_events processed=1 offset=579
```

第一条 `queue directory fsync failed after rename` 与随后的 `injected dirfsync failure for queue` 分别对应**新建路径**和**幂等命中路径**的目录 fsync，两条都在同一进程内返回 -1，`offset` 全程停在 291。

### 4.2 offset / event_id 前后对照

| 步骤 | event_id | offset 前 → 后 | processed | skipped | 说明 |
|---|---|---|---|---|---|
| R1a 目录被占（新入队失败） | `p1r1a-103524` | 0 → **0** | 0 | 0 | 3 次真实回答全部因目录创建失败不提交（`provider_retries=3`） |
| R1b 解除占用 | `p1r1a-103524` | 0 → **291** | 1 | 0 | 新条目落盘后提交 |
| R1c 新建目录 fsync 注入 | `p1r1c-103547` | 291 → **291** | 0 | **0** | 文件已 rename 可见，但新建路径与幂等命中路径都 fsync 失败 → 不提交、不计 skip |
| R1c2 故障解除重启 | `p1r1c-103547` | 291 → **579** | 1 | 1 | 幂等命中并重新 fsync 成功，只提交一次，条目 sha256 不变 |
| R1d 重启 | — | 579 → **579** | 0 | 0 | `idle_timeout`，无新条目 |
| R2 kill -9 恢复 | `p1r2-103636` | 579 → **866** | 1 | 0 | — |
| R3 done 标记失败 | `p1r3-103705` | 866 → **1144** | 1 | 0 | — |

最终消费状态（真实、0600）：

```json
{"version":2,"offset":1144,"prefix_hash":"3dc95a892419576f","seq_last":3,
 "last_event_id":"p1r3-103705","processed_total":4,
 "recent_ids":"p1r1a-103524,p1r1c-103547,p1r2-103636,p1r3-103705"}
```

### 4.3 执行器 journal（真机播报证据）

```json
{"kind":"tts","event_id":"p1r1a-103524","tts_id":5246217,"outcome":"ok","dur_ms":3861,"text_bytes":57,"attempts":1}
{"kind":"tts","event_id":"p1r1c-103547","tts_id":5246218,"outcome":"ok","dur_ms":4585,"text_bytes":63,"attempts":1}
{"kind":"recover","event_id":"p1r2-103636","attempts":1,"age_ms":20212}
{"kind":"tts","event_id":"p1r2-103636","tts_id":5246220,"outcome":"ok","dur_ms":2818,"text_bytes":39,"attempts":2}
{"kind":"tts","event_id":"p1r3-103705","tts_id":5246221,"outcome":"ok","dur_ms":1460,"text_bytes":15,"attempts":1}
{"kind":"done_marker_failure","event_id":"p1r3-103705","outcome":"ok","attempts":1}
{"kind":"recover","event_id":"p1r3-103705","attempts":1,"age_ms":10998}
{"kind":"tts","event_id":"p1r3-103705","tts_id":5246222,"outcome":"ok","dur_ms":2311,"text_bytes":15,"attempts":2}
```

注意 `p1r1c-103547` 的 `text_bytes=63`（journal）：R1c 期间模型被重新回答了 5 次（字节数 63/84/105/99/72），但队列里始终是最早那次 `rename` 已落盘的 63 字节版本——幂等分支既没有覆盖它，也没有产生第二条，R1c2 的 sha256 比对与"条目数仍为 2"都验证了这一点。

### 4.4 原厂 ASR / 原厂 TTS / smartapp:core

- `smartapp:core` 全程存活（`R4 factory core still running`）
- 原厂 TTS 真实播报 4 次（`tts_id` 5246217 / 5246218 / 5246220 / 5246221+5246222），`outcome=ok`
- 模型代理 `http=200 curl=0`（`http://192.168.1.13:8790/v1`，`deepseek-flash`）
- 原厂 ASR 共存复验见 `evidence/t5_06d_p1_asr_after_fix.log`（`t5_06d_device_e2e.ps1 -Only s8` → `RESULT: PASS`，本轮改动未触碰 ASR 链路，故未重跑全部 8 个场景）

---

## 五、遗留限制

1. **多阶段冲突会阻塞事件**：`event_id` 同时出现在两个阶段时按指定设计返回 -1，事件停在原地反复重试直到人工处理。执行器的 `recoverInflight()` 在"目标已 rename 但目录 fsync 失败"时确实会留下 `inflight/` + `queue/` 双副本；如果该事件之后又被 worker 重新读到，就会命中这条拒绝分支（实践中该事件的偏移通常早已提交，worker 不会重读；但这是需要复审确认的交互点）。
2. **幂等命中失败会让事件一直重试**：目录 fsync 持续失败时 worker 不会跳过事件，会按退避一直重试（`provider_retry_max` 后进入 `state=error` 但仍保留事件），并在每次重试时重新请求模型（可能重复计费）。这是"回答绝不能丢"的代价。
3. **队列文件可能"可见但未持久化"**：新建路径 `rename` 成功、目录 fsync 失败时，文件在页缓存里可见；进程崩溃后可能消失。指定代码保留该文件并在幂等分支重新 fsync，正是为此设计；真正掉电（未做掉电测试）后的结果仍依赖文件系统。
4. **未做断电测试**：只做进程级 SIGKILL 与注入式失败。
5. **`failed/` 无自动清理**，条目数量与队列总量无上限。
6. **至少一次投递**：执行器 done 标记未落盘时重启会重复播报（真机 R3 实测同一条目播报两次），与 P1 报告一致。

---

## 六、证据与复现

| 文件 | 内容 |
|---|---|
| `evidence/t5_06d_p1_2_host_test.log` | 单元 + 集成全集 + TTS 子集（P1-2） |
| `evidence/t5_06d_p1_2_ndk_build.log` | ARM32 构建（readelf、sha256、0 warning） |
| `evidence/t5_06d_p1_2_device_fault.log` | 真机 E1–E9 + R1–R4（153 PASS / 0 FAIL） |
| `evidence/host_integration_test.log`、`host_unit_test.log` 等 | 主机证据（已刷新） |

```powershell
# 主机：构建 dex + 单元 + 集成 + TTS 子集
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\run_t5_06d_host_tests.ps1 `
  -Log D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t5_06d_p1_2_host_test.log

# ARM32（产物推到 /data/local/tmp/t5d06/bin/ai_worker）
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\android\build.ps1 -LogName t5_06d_p1_2_ndk_build.log

# 真机故障注入（exec 不出声 / real 会真实播报）
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\t5_06d_p1_fault_inject.ps1 -Only exec
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\t5_06d_p1_fault_inject.ps1 -Only real
```

本报告与全部证据中不含 API Key、不含模型回答正文（队列正文只在设备本地 0600 文件里）。
