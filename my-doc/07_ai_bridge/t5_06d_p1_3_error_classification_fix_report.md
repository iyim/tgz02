# T5-06D-P1-3 幂等记录检查的错误分类修复报告

- 设备：TG-Z02（`AILABS_S1L`，Android 8.1 / sdk 27，ARM32），真机 `192.168.1.9:5555`
- 分支：`main`（未建分支、未建 PR，未覆盖或回退已有提交）
- 代码来源：**ChatGPT 提供的完整函数代码**；本任务只做替换、补测试、验证、记录
- 状态：替换完成，主机 + 真机全部通过；**不自行宣布 P1 关闭**，等待复审

> 后续（P1-4）：本报告用 `stat()` 判断存在性，而 `stat()` 会跟随符号链接——指向真实普通文件的
> 链接会被当成正常记录。已由 ChatGPT 复审替换为 `lstat()`（POSIX）+ `GetFileAttributesA()`
> 拒绝重解析点（Windows），见 `t5_06d_p1_4_symlink_item_rejection_report.md`。
> 本报告中的 R5（自指链接 → ELOOP）在 P1-4 之后不再产生 ELOOP，已改为验证"链接本身被识别"。

---

## 一、问题回顾与修改

### 1.1 被指出的 P1 问题

旧的 `tts_existing_item_durable()` 用 `wu_file_identity()` + `wu_file_size()` + `wu_is_dir()` 三个"失败都返回 -1/0"的封装来判断存在性：

```c
if (wu_file_identity(path, &dev, &ino, &size) != 0) {
    if (wu_file_size(path) < 0 && !wu_is_dir(path)) return 0;   /* ← 任何 stat 失败都落到这里 */
    ...
```

`worker_util.c` 里这三个封装都把**任意** `stat()` 失败统一成失败，于是权限错误（EACCES）、I/O 错误（EIO）、符号链接环（ELOOP）等都会被误判成"文件不存在"，随后继续走新建入队并提交偏移。安全目标是"只有明确确认不存在才能当不存在"，因此这是必须修的问题。

### 1.2 本次修改

| 文件 | 修改 |
|---|---|
| `my-doc/07_ai_bridge/android/ai_worker.c` | ① 头部增加 `#include <sys/stat.h>`；② `tts_existing_item_durable()` **整函数替换**为指定代码：直接 `stat()`，只有 `ENOENT` / `ENOTDIR` 返回 0（不存在），其余 errno 一律 `-1` 失败关闭；③ 用 `S_ISREG()` 要求记录必须是普通文件（比"排除目录"更严格）；④ 故障注入与目录 fsync 分支保持原样 |

替换为逐字照抄，未改动任何一行逻辑；`tts_enqueue()`、`provider_attempt()`、TTS 执行器与队列协议**均未改动**（`git diff` 中 `ai_worker.c` 只有 include 与这一个函数）。

错误分类对照：

| 情况 | 旧实现 | 新实现 |
|---|---|---|
| 文件确实不存在（ENOENT） | 0（不存在） | 0（不存在）✔ |
| 父路径是普通文件（ENOTDIR） | 视 `wu_*` 实现而定 | 0（不存在）✔ |
| 权限不足（EACCES） | **0（误判为不存在）** | -1（失败关闭）+ `errno=13` ✔ |
| I/O 错误（EIO） | **0（误判）** | -1 + `errno=5` ✔ |
| 符号链接环（ELOOP） | **0（误判）** | -1 + `errno=40` ✔ |
| 条目是目录 / 其它非普通文件 | -1（靠 `wu_is_dir()`） | -1（`S_ISREG` 判定，更严）✔ |
| 目录 fsync 失败 | -1 | -1 ✔ |
| 多阶段同时存在 | -1（由 `tts_enqueue()` 判定） | -1（不变）✔ |

---

## 二、验证结果总览

| 验证面 | 结果 |
|---|---|
| 主机单元测试 | `checks passed: 621, failed: 0` |
| 主机集成测试（全集，43 例） | `cases: 43, failed: 0` |
| TTS 队列子集（i31–i39b） | `cases: 12, failed: 0` |
| 新增错误分类用例 `i41` | `cases: 1, failed: 0` |
| 主机锁压力 | `rounds: 100, failed: 0` |
| ARM32 构建 | 142 692 B，sha256 `c810727523adcdb504131d468e6b088c302e24982bd6a69b9d5aca276caacc60`，0 warning 0 error，动态链接 `NEEDED libc.so` |
| `tts_exec.dex`（本轮未改） | 33 608 B，sha256 `622067a5015c4f7b9b03678dd2785486732e42cc9fd87211451ba2654d14e7fb` |
| 真机故障注入（执行器 E1–E9 + 真机闭环 R1–R6） | **177 PASS / 0 FAIL / 0 SKIP** |

---

## 三、主机侧：错误分类用例 `i41`

| 子场景 | 构造方式 | 断言 |
|---|---|---|
| 父路径缺失（等价"不存在"） | 删除整个 `queue/` 阶段目录后再跑 | `mkdir_p` 先建回目录（`queue` 是目录），`stat` 得 ENOENT → 新建条目；`tts_queued=1`、`events_processed=1`、offset 前进 |
| 条目路径是目录（`S_ISREG` 失败） | `mkdir queue/<id>.json` | `existing queue item is not a regular file`、`tts_enqueue_failed≥1`、`tts_skipped=0`、`events_processed=0`、`offset=0`；目录原样保留；`rmdir` 后同事件入队并提交一次 |
| `done` 阶段同样处理 | `mkdir done/<id>.ok` | `existing done item is not a regular file`、不提交、`offset=0`；清理后提交一次 |

原有四阶段幂等（`i39`）、多阶段冲突（`i39b`）、目录 fsync 失败（`i36`）、文件 fsync/create/write/rename（`i35`/`i37`）、T5-06C 无回归（`i34`/`i38`）全部保持通过。

---

## 四、真机验证（真实模型 + 原厂 TTS）

独立目录：`/data/local/tmp/t5p1/{rwork,rstate,rtts}`；生产 `events.jsonl` 与生产队列未触碰。

### 4.1 R5：`stat` 无法检查（ELOOP）→ 失败关闭

构造：在 `done/` 下放一个自指符号链接 `done/<id>.ok -> <id>.ok`（`ln -s`，解析必然成环）。

```
10:57:28 tts enqueue FAILED: event=p1r5-105720 reply_bytes=45 (cannot inspect existing done item (errno=40)); offset NOT advanced, event kept and retried
10:57:32 event id=p1r5-105720 tts enqueue still failing after 3 attempts (cannot inspect existing done item (errno=40)): keeping it, no event will be skipped
10:57:40 exit reason=max_runtime processed=0 provider_retries=5 offset=1144
10:57:48 tts queued: event=p1r5-105720 reply_bytes=54 queue=/data/local/tmp/t5p1/rtts     ← 删除坏对象后（ENOENT）
10:57:48 exit reason=max_events processed=1 offset=1428
```

- 5 次尝试全部 `errno=40`（ELOOP）→ 一律 -1，**没有任何一次被当成"不存在"**；`tts_skipped=0`、`events_processed=0`、`offset 1144 → 1144`，且没有产生 queue 条目。
- 移除坏对象后变成 ENOENT → 正常入队，`offset 1144 → 1428`，只提交一次，随后由原厂 TTS 播报（journal `tts_id=5246251`、`text_bytes=54`）。

### 4.2 R6：条目路径是目录（`S_ISREG` 失败）

```
10:58:02 tts enqueue FAILED: event=p1r6-105752 reply_bytes=33 (existing queue item is not a regular file); offset NOT advanced
10:58:13 exit reason=max_runtime processed=0 provider_retries=5 offset=1428
10:58:22 tts queued: event=p1r6-105752 reply_bytes=39 queue=/data/local/tmp/t5p1/rtts     ← rmdir 之后
10:58:22 exit reason=max_events processed=1 offset=1712
```

目录被原样保留（未删除、未覆盖），事件不提交；清理后入队一次并播报（`tts_id=5246252`）。

### 4.3 offset / event_id 前后对照（本轮真机全程）

| 步骤 | event_id | offset 前 → 后 | processed | 说明 |
|---|---|---|---|---|
| R1a 队列目录被普通文件占住 | `p1r1a-105333` | 0 → **0** | 0 | 4 次真实回答，全部不提交 |
| R1b 解除占用 | `p1r1a-105333` | 0 → **291** | 1 | 入队成功才提交 |
| R1c 新建目录 fsync 注入 | `p1r1c-105356` | 291 → **291** | 0 | 文件已 rename 可见但不提交 |
| R1c2 故障解除重启 | `p1r1c-105356` | 291 → **579** | 1 | 幂等命中重新 fsync 成功后提交一次 |
| R1d 重启 | — | 579 → **579** | 0 | `idle_timeout` |
| R2 kill -9 后恢复 | `p1r2-105500` | 579 → **866** | 1 | — |
| R3 done 标记注入 | `p1r3-105543` | 866 → **1144** | 1 | 播报超时 60 s → 重试 → ok（`attempts=3`） |
| R5 ELOOP（无法检查） | `p1r5-105720` | 1144 → **1144** | 0 | `errno=40`，失败关闭 |
| R5 清理后 | `p1r5-105720` | 1144 → **1428** | 1 | ENOENT → 入队 → 提交一次 |
| R6 条目路径是目录 | `p1r6-105752` | 1428 → **1428** | 0 | `not a regular file`，失败关闭 |
| R6 清理后 | `p1r6-105752` | 1428 → **1712** | 1 | 入队 → 提交一次 |

最终状态（真实、0600）：

```json
{"version":2,"offset":1712,"prefix_hash":"a43bd291fb78d8e1","seq_last":6,"last_event_id":"p1r6-105752",
 "processed_total":6,"recent_ids":"p1r1a-105333,p1r1c-105356,p1r2-105500,p1r3-105543,p1r5-105720,p1r6-105752"}
```

### 4.4 执行器 journal（原厂 TTS 播报证据，只含 id/字节/时长）

```json
{"kind":"tts","event_id":"p1r1a-105333","tts_id":5246237,"outcome":"ok","dur_ms":4427,"text_bytes":45,"attempts":1}
{"kind":"tts","event_id":"p1r1c-105356","tts_id":5246238,"outcome":"ok","dur_ms":4704,"text_bytes":69,"attempts":1}
{"kind":"recover","event_id":"p1r2-105500","attempts":1,"age_ms":26757}
{"kind":"tts","event_id":"p1r2-105500","tts_id":5246240,"outcome":"ok","dur_ms":5194,"text_bytes":69,"attempts":2}
{"kind":"tts","event_id":"p1r3-105543","tts_id":5246241,"outcome":"ok","dur_ms":2305,"text_bytes":15,"attempts":1}
{"kind":"done_marker_failure","event_id":"p1r3-105543","outcome":"ok","attempts":1}
{"kind":"recover","event_id":"p1r3-105543","attempts":1,"age_ms":25012}
{"kind":"tts","event_id":"p1r3-105543","tts_id":5246242,"outcome":"timeout","dur_ms":60014,"text_bytes":15,"attempts":2}
{"kind":"retry","event_id":"p1r3-105543","attempts":2,"outcome":"timeout"}
{"kind":"tts","event_id":"p1r3-105543","tts_id":5246245,"outcome":"ok","dur_ms":2790,"text_bytes":15,"attempts":3}
{"kind":"tts","event_id":"p1r5-105720","tts_id":5246251,"outcome":"ok","dur_ms":4614,"text_bytes":54,"attempts":1}
{"kind":"tts","event_id":"p1r6-105752","tts_id":5246252,"outcome":"ok","dur_ms":4969,"text_bytes":39,"attempts":1}
```

done 标记：6 个（每个 event_id 一个），`queue/` 与 `inflight/` 均为空。
`p1r3-105543` 出现一次 `timeout`（原厂会话抢占音频通道，60 s 未完成）→ 重试后 `ok`：这正是 P1 的"失败回到队列、正文不丢"路径被真实触发，最终仍只留一个 done 标记。

### 4.5 原厂 ASR / 原厂 TTS / core

- `smartapp:core` 全程存活（`R4 factory core still running`）
- 原厂 TTS 真实播报 6 次（`tts_id` 5246237 / 5246238 / 5246240 / 5246241+5246242+5246245 / 5246251 / 5246252）
- 模型代理 `http=200 curl=0`（`http://192.168.1.13:8790/v1`，`deepseek-flash`）
- 原厂 ASR 共存沿用 `evidence/t5_06d_p1_asr_after_fix.log`（`t5_06d_device_e2e.ps1 -Only s8` → `RESULT: PASS`）；本轮只改了 `stat` 分类，不涉及 ASR 链路，故未重跑 s1–s8 全套

---

## 五、测试限制（必须说明，未把 ENOENT 冒充权限错误）

1. **EACCES / EIO 未能在本轮环境可靠制造**：
   - 主机是 Windows：`stat()` 不会因为"文件权限"失败（只要路径可遍历就成功），无法稳定构造 EACCES；I/O 错误需要故障盘或过滤驱动，本轮没有。
   - 真机上的 worker 以 **root** 运行：root 绕过权限检查，`chmod 000` 的父目录仍然 `stat` 成功，因此也构造不出纯 EACCES；把父目录改成 000 反而会先被 `mkdir_p` 拦下（返回 `cannot create TTS queue directories`），走不到分类代码。
   - 因此本轮用 **ELOOP（`errno=40`，自指符号链接）**作为"`stat` 失败但不是 ENOENT/ENOTDIR"的代表用例，真机实测证明该类错误一律 -1 失败关闭。这与 EACCES/EIO 走的是同一条 `saved_errno != ENOENT && != ENOTDIR` 分支，但**没有**等价于"已在真机上验证过 EACCES"。
2. **ENOTDIR 无法通过 `tts_enqueue()` 触达**：`tts_enqueue()` 在四个阶段检查之前先 `mkdir_p()` 建目录，父路径不可能还是普通文件；因此 ENOTDIR 的"按不存在处理"分支只有代码路径覆盖，没有端到端用例（主机 `i41` 的"父目录缺失"是 ENOENT 路径）。
3. 序号/事件是合成 ASR 记录（字段与桥接端 `asr_final` 完全一致），真实 ASR 链路由 `t5_06d_device_e2e.ps1 -Only s8` 单独复验。
4. 未做断电（power loss）测试；只做进程级 SIGKILL 与注入式失败。

---

## 六、遗留限制

1. **多阶段冲突会阻塞事件**（`P1-2` 设计如此）：`event_id` 同时出现在两个阶段时返回 -1，事件原地重试直到人工处理；执行器 `recoverInflight()` 在"已 rename 但目录 fsync 失败"时确实会留下双副本，需复审确认该交互可接受。
2. **每次入队失败都会重新请求模型**：失败期间事件不跳过，按退避重试，可能重复计费（真机 R5/R6 各重试 5 次）。
3. **`failed/` 无自动清理**，队列条目数量无上限。
4. **至少一次投递**：done 标记未落盘时重启会重复播报（P1 报告已记录，本轮 R3 的超时重试也再次证明"同一事件可播报多次"）。
5. 目录 fsync 依赖 `android.system.Os`（执行器侧）与 POSIX `fsync(dir)`（worker 侧）；若某文件系统对目录 fsync 返回 `EINVAL`，链路会整体失败关闭而不是"看起来成功"。

---

## 七、证据与复现

| 文件 | 内容 |
|---|---|
| `evidence/t5_06d_p1_3_host_test.log` | 单元 + 集成全集（43 例）+ TTS 子集 + `i41` |
| `evidence/t5_06d_p1_3_ndk_build.log` | ARM32 构建（readelf、sha256、0 warning） |
| `evidence/t5_06d_p1_3_device_fault.log` | 真机 E1–E9 + R1–R6（177 PASS / 0 FAIL） |
| `evidence/host_unit_test.log`、`host_integration_test.log` 等 | 主机证据（已刷新） |

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\run_t5_06d_host_tests.ps1 `
  -Log D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t5_06d_p1_3_host_test.log

powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\android\build.ps1 `
  -LogName t5_06d_p1_3_ndk_build.log

powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\t5_06d_p1_fault_inject.ps1 -Only exec
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\t5_06d_p1_fault_inject.ps1 -Only real
```

本报告与全部证据中不含 API Key、不含模型回答正文（正文只在设备本地 0600 队列文件里）。
