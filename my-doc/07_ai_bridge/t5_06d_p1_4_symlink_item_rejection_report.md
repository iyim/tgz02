# T5-06D-P1-4 拒绝符号链接形式的幂等记录（报告）

- 设备：TG-Z02（`AILABS_S1L`，Android 8.1 / sdk 27，ARM32），真机 `192.168.1.9:5555`
- 分支：`main`（未建分支、未建 PR、未覆盖历史提交）
- 代码来源：**ChatGPT 提供的完整函数代码**；本任务只做替换、补测试、验证、记录
- 状态：替换完成，主机 + 真机全部通过；**不自行宣布 P1 关闭**

---

## 一、问题与修复

### 1.1 被指出的 P1

`tts_existing_item_durable()` 用 `stat()` 判断存在性，而 `stat()` **跟随符号链接**：

- 自指链接 → `ELOOP`（P1-3 的 R5 已覆盖，能失败关闭）；
- **指向真实普通文件的链接 → `stat()` 成功、`S_ISREG()` 也成立** → 被当成正常持久化记录，
  只 fsync 队列目录并不能证明链接目标的内容已持久化。

### 1.2 本次修改（`my-doc/07_ai_bridge/android/ai_worker.c`）

| 位置 | 修改 |
|---|---|
| Windows 头文件区 | `#ifdef _WIN32` 内增加 `#include <windows.h>`（`fcntl.h` / `io.h` 原有保留） |
| `tts_existing_item_durable()` | **整函数逐字替换**：POSIX 改用 `lstat()` 检查目录项本身；Windows 先用 `GetFileAttributesA()` 拒绝 `FILE_ATTRIBUTE_REPARSE_POINT`（重解析点/符号链接），再 `stat()`；`!S_ISREG()`、故障注入、目录 fsync 分支保持原样 |

`tts_enqueue()`、`provider_attempt()`、TTS 执行器、队列协议**均未改动**（`git diff` 中生产代码只有上述两处）。

错误分类现在是：

| 对象 | POSIX（Android/Linux） | Windows |
|---|---|---|
| 普通文件 | `lstat` → `S_ISREG` 通过 → fsync 目录 → 1 | `GetFileAttributesA` 无 reparse 位 → `stat` → 1 |
| 符号链接（有效目标） | `lstat` → `S_IFLNK` → **-1** | reparse point → **-1** |
| 符号链接（悬空目标） | `lstat` 成功（链接本身存在）→ **-1** | `GetFileAttributesA` 跟随链接失败 → 走 `stat` → ENOENT → 0（**平台差异，见第五节**） |
| 目录等其它类型 | `!S_ISREG` → -1 | `!S_ISREG` → -1 |
| 明确不存在 | ENOENT/ENOTDIR → 0 | ENOENT/ENOTDIR → 0 |

---

## 二、验证结果总览

| 验证面 | 结果 |
|---|---|
| 主机单元测试 | `checks passed: 621, failed: 0` |
| 主机集成测试（全集，44 例） | `cases: 44, failed: 0` |
| TTS 队列子集（i31–i39b） | `cases: 12, failed: 0` |
| `i41`（P1-3 错误分类） | `cases: 1, failed: 0` |
| **`i42`（P1-4 符号链接矩阵）** | `cases: 1, failed: 0`（含 1 条明确的 `SKIP`，见下） |
| 主机锁压力 | `rounds: 100, failed: 0` |
| ARM32 构建 | 142 716 B，sha256 `30710053f29a22d1e18a00e44061a193127e95927e61031eca3497e42e0100d6`，0 warning 0 error，动态链接 `NEEDED libc.so` |
| `tts_exec.dex`（本轮未改） | 33 608 B，sha256 `622067a5015c4f7b9b03678dd2785486732e42cc9fd87211451ba2654d14e7fb` |
| 真机（执行器 E1–E9 + 闭环 R1–R8） | **253 PASS / 0 FAIL / 0 SKIP** |

---

## 三、主机侧 `i42`（符号链接矩阵）

对 **queue / inflight / done / failed 四个阶段**分别执行：

| 步骤 | 断言 |
|---|---|
| 在阶段路径创建指向真实普通文件的符号链接 | `os.path.islink` 为真 |
| 运行 worker | 日志出现 `is a reparse point`（Windows 路径）；`tts_enqueue_failed≥1`、`tts_skipped=0`、`events_processed=0`、`offset=0`；**符号链接原样保留**；不产生新的 queue 副本 |
| 删除符号链接后再运行 | 同一 `event_id` 入队（`tts_queued=1`）、`events_processed=1`、`offset` 前进 |

悬空符号链接在 Windows 上**无法断言**：`GetFileAttributesA()` 会跟随链接、链接悬空时直接返回
`INVALID_FILE_ATTRIBUTES`，代码随后走 `stat()` 得 ENOENT。因此主机侧显式打印：

```
SKIP i42 dangling symlink: Windows GetFileAttributesA follows the link, so this case cannot be asserted on the host (covered by device case R7)
```

用例结论行同样标注 `SKIPPED (not PASS): dangling`，**没有把跳过项记成 PASS**；该场景由真机 R7d 覆盖（POSIX `lstat`）。

另外修正了 `i18` 的一个既有的测试侧竞态（状态文件原子 rename 的瞬间 `counters_of()` 返回空 dict，
lambda 里直接比较 `None >= 5` 抛 `TypeError`）——只改为 `... or 0`，不影响被测逻辑，属测试健壮性修复。

---

## 四、真机验证

独立目录：`/data/local/tmp/t5p1/{rwork,rstate,rtts}`；生产 `events.jsonl` 与生产队列未触碰。
符号链接矩阵使用 **mock provider**（分类与 Provider 无关，真机跑的仍是同一份 ARM32 二进制）；R8 用**真实模型**并最终由原厂 TTS 播报。

### 4.1 四阶段：指向有效普通文件的符号链接（R7）

| 阶段 | event_id | 日志 | offset 前 → 后（失败） | offset（清理后） |
|---|---|---|---|---|
| queue | `p1r7q-113251` | `existing queue item is not a regular file` | 1712 → **1712** | 1988 |
| inflight | `p1r7i-113309` | `existing inflight item is not a regular file` | 1988 → **1988** | 2264 |
| done | `p1r7d-113327` | `existing done item is not a regular file` | 2264 → **2264** | 2540 |
| failed | `p1r7f-113344` | `existing failed item is not a regular file` | 2540 → **2540** | 2817 |

每个阶段均断言：日志**没有** `tts skip`、`tts_enqueue_failed≥1`、`tts_skipped=0`、`events_processed=0`、
offset 不动、符号链接原样保留（`test -L` 为真）；删除链接后同一 `event_id` 入队、只提交一次、
且变成真正的普通文件。

### 4.2 悬空符号链接（R7d，POSIX `lstat` 的关键用例）

```
11:34:0x tts enqueue FAILED: event=p1r7d-113401 (existing queue item is not a regular file); offset NOT advanced
         exit reason=max_runtime processed=0 provider_retries=2 offset=2817
11:34:15 tts queued: event=p1r7d-113401 reply_bytes=19 queue=/data/local/tmp/t5p1/rtts   ← 删除链接后
11:34:15 exit reason=max_events processed=1 offset=3094
```

目标不存在的链接**没有**被误判成 ENOENT：`lstat` 看到链接本身，直接 -1；删除链接后才按 ENOENT 入队。

### 4.3 真实模型 + 有效链接（R8）

```
11:34:35 exit reason=max_runtime processed=0 provider_retries=5 offset=3094    ← 链接占用 queue/<id>.json
11:34:40 tts queued: event=p1r8-113417 reply_bytes=93 queue=/data/local/tmp/t5p1/rtts
11:34:40 exit reason=max_events processed=1 offset=3376
```

日志同时含 `deepseek ok: model=deepseek-flash http=200`（真实模型回答）与
`existing queue item is not a regular file`，且没有 `tts skip`；删除链接后入队并提交一次，
随后由原厂 TTS 播报（journal：`tts_id=5246316`、`text_bytes=93`、`dur_ms=6903`）。

### 4.4 本轮真机 offset 全程（event_id 对照）

| 步骤 | event_id | offset 前 → 后 |
|---|---|---|
| R1a 队列目录被普通文件占住 | `p1r1a-112942` | 0 → **0** |
| R1b 解除占用 | `p1r1a-112942` | 0 → **291** |
| R1c 新建目录 fsync 注入 | `p1r1c-113004` | 291 → **291** |
| R1c2 故障解除（幂等重同步） | `p1r1c-113004` | 291 → **579** |
| R1d 重启 | — | 579 → **579** |
| R2 kill -9 后恢复 | `p1r2-113053` | 579 → **866** |
| R3 done 标记注入 | `p1r3-113127` | 866 → **1144** |
| R5 自指链接（done 阶段） | `p1r5-113146` | 1144 → **1144** |
| R5 清理后 | `p1r5-113146` | 1144 → **1428** |
| R6 条目路径是目录 | `p1r6-113211` | 1428 → **1428** |
| R6 清理后 | `p1r6-113211` | 1428 → **1712** |
| R7 queue 链接 | `p1r7q-113251` | 1712 → **1712** → 清理后 **1988** |
| R7 inflight 链接 | `p1r7i-113309` | 1988 → **1988** → 清理后 **2264** |
| R7 done 链接 | `p1r7d-113327` | 2264 → **2264** → 清理后 **2540** |
| R7 failed 链接 | `p1r7f-113344` | 2540 → **2540** → 清理后 **2817** |
| R7d 悬空链接 | `p1r7d-113401` | 2817 → **2817** → 清理后 **3094** |
| R8 真实模型 + 有效链接 | `p1r8-113417` | 3094 → **3094** → 清理后 **3376** |

最终状态（真实、0600）：

```json
{"version":2,"offset":3376,"prefix_hash":"37ce89057f91f740","seq_last":12,
 "last_event_id":"p1r8-113417","processed_total":12,
 "recent_ids":"p1r1a-112942,p1r1c-113004,p1r2-113053,p1r3-113127,p1r5-113146,p1r6-113211,
               p1r7q-113251,p1r7i-113309,p1r7d-113327,p1r7f-113344,p1r7d-113401,p1r8-113417"}
```

done 标记 12 个（每个 event_id 一个），`queue/` 与 `inflight/` 为空。

### 4.5 journal（原厂 TTS 播报证据，仅 id/字节/时长）

```json
{"kind":"tts","event_id":"p1r7q-113251","tts_id":5246311,"outcome":"ok","dur_ms":2185,"text_bytes":19,"attempts":1}
{"kind":"tts","event_id":"p1r7i-113309","tts_id":5246312,"outcome":"ok","dur_ms":2418,"text_bytes":19,"attempts":1}
{"kind":"tts","event_id":"p1r7d-113327","tts_id":5246313,"outcome":"ok","dur_ms":2195,"text_bytes":19,"attempts":1}
{"kind":"tts","event_id":"p1r7f-113344","tts_id":5246314,"outcome":"ok","dur_ms":2662,"text_bytes":19,"attempts":1}
{"kind":"tts","event_id":"p1r7d-113401","tts_id":5246315,"outcome":"ok","dur_ms":2298,"text_bytes":19,"attempts":1}
{"kind":"tts","event_id":"p1r8-113417","tts_id":5246316,"outcome":"ok","dur_ms":6903,"text_bytes":93,"attempts":1}
```

`smartapp:core` 全程存活；模型代理 `http=200 curl=0`（`http://192.168.1.13:8790/v1`，`deepseek-flash`）。

---

## 五、测试限制（如实记录，没有把跳过当成通过）

1. **悬空符号链接在 Windows 上无法断言**：`GetFileAttributesA()` 跟随链接，悬空时返回
   `INVALID_FILE_ATTRIBUTES`，随后 `stat()` 得 ENOENT → 按"不存在"处理。这是**平台差异**，
   主机侧以 `SKIP` 记录（不计 PASS），该场景由真机 R7d（POSIX `lstat`）覆盖并通过。
2. **EACCES / EIO 仍无复现路径**：Windows 主机的 `stat()` 不因权限失败；真机 worker 以 root 运行，
   权限检查被绕过，且把父目录改成 000 会先被 `mkdir_p` 拦成 `cannot create TTS queue directories`。
3. **`errno` 分支在真机上已无自然触发路径**：改用 `lstat` 之后，符号链接在 `lstat` 就被识别为
   `S_IFLNK`，不再产生 ELOOP；因此"`stat` 失败但不是 ENOENT/ENOTDIR"这条分支目前只有代码路径覆盖
   （P1-3 报告中的 R5 在本轮已改为验证"链接被识别为链接"）。
4. **ENOTDIR 仍无法端到端触达**：`tts_enqueue()` 在四阶段检查前先 `mkdir_p()`。
5. **未做断电测试**：本轮的故障注入是**进程级**注入（`--fault` / `T6B_FAULT_TTSQ` + `kill -9`），
   不等价于真实掉电/文件系统崩溃持久性验证；上一轮报告里的这条限制继续保留，不因本轮通过而消失。
6. 真机事件为合成 ASR 记录（字段与桥接端 `asr_final` 一致）；真实 ASR 链路由
   `t5_06d_device_e2e.ps1 -Only s8` 单独复验（`evidence/t5_06d_p1_asr_after_fix.log`，PASS）。

---

## 六、遗留限制

1. 多阶段冲突仍会阻塞事件（P1-2 设计）；执行器 `recoverInflight()` 在"已 rename 但目录 fsync 失败"
   时会留下 `inflight/` + `queue/` 双副本，需复审确认该交互。
2. 入队失败会持续重试并**重新请求模型**（本轮 R8 失败期 5 次调用），可能重复计费。
3. `failed/` 无自动清理；队列条目数量无上限。
4. 至少一次投递：done 标记未落盘时重启会重复播报。
5. 目录 fsync 依赖 `android.system.Os`（执行器）与 POSIX `fsync(dir)`（worker）；不支持目录 fsync
   的文件系统会让链路整体失败关闭。

---

## 七、证据与复现

| 文件 | 内容 |
|---|---|
| `evidence/t5_06d_p1_4_host_test.log` | 单元 + 集成全集（44 例）+ TTS 子集 + `i41` + `i42`（含 SKIP 行） |
| `evidence/t5_06d_p1_4_ndk_build.log` | ARM32 构建（readelf、sha256、0 warning） |
| `evidence/t5_06d_p1_4_device_fault.log` | 真机 E1–E9 + R1–R8（253 PASS / 0 FAIL） |
| `evidence/host_unit_test.log`、`host_integration_test.log` 等 | 主机证据（已刷新） |

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\run_t5_06d_host_tests.ps1 `
  -Log D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t5_06d_p1_4_host_test.log

powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\android\build.ps1 `
  -LogName t5_06d_p1_4_ndk_build.log

powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\t5_06d_p1_fault_inject.ps1 -Only exec
powershell -NoProfile -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\t5_06d_p1_fault_inject.ps1 -Only real
```

本报告与全部证据中不含 API Key、不含模型回答正文（正文只在设备本地 0600 队列文件里）。
