# T5-01：独立 ASR 任务管线（Mock 阶段）

T5 从 T4 落盘的 WAV 里发现语音片段，建立识别任务，调用可替换的 ASR Provider（本阶段只有 Mock），
把任务状态和识别结果写进自己的目录。**不联网、不接真实 ASR/LLM/TTS、不改原厂链路、不改 T3/T4 代码。**

```
T4 WAV -> 文件发现 -> 完整性校验 -> Job -> MockASR -> JSONL 落库
```

## 目录

| 路径 | 内容 |
|---|---|
| `android/t5_agent.c` | 进程入口：命令行、轮询循环、信号、统计输出 |
| `android/t5_engine.c/.h` | 引擎：扫描、候选稳定性、Job 状态机、恢复、有界内存 |
| `android/t5_wav.c/.h` | WAV 完整性 + 格式校验（只读） |
| `android/t5_provider.c/.h` | Provider 接口 + `MockASRProvider` |
| `android/t5_store.c/.h` | `jobs.jsonl` / `results.jsonl` 追加写 + 回放 |
| `android/t5_state.c` | 状态名映射 |
| `android/t5_util.c/.h` | 时间、路径、目录、FNV-1a、JSON 转义、可靠写入 |
| `android/build.ps1` | NDK r21e 交叉编译 → `android/out/t5_agent` |
| `android/run_t5.sh` | 设备端 start/once/status/log/results/files/stop |
| `tests/t5_host_test.c` | Windows/GCC 自动化测试（12 项） |
| `tests/build_and_run.ps1` | 编译并运行主机测试 |
| `evidence_t5/` | 2026-11-19 真机验证的原始日志 |

## 构建

```powershell
cd my-doc\06_t5\android
powershell -ExecutionPolicy Bypass -File build.ps1      # -> out/t5_agent (ELF32 ARM, static)
cd ..\tests
powershell -ExecutionPolicy Bypass -File build_and_run.ps1   # -> out/t5_host_test.exe + 断言结果
```

编译参数固定 `-O2 -Wall -Wextra -static`，无任何 `-Wno-*`。

## 部署与运行（设备）

```sh
adb push android/out/t5_agent  /data/local/tmp/t5/t5_agent
adb push android/run_t5.sh     /data/local/tmp/t5/run_t5.sh
adb shell "chmod 755 /data/local/tmp/t5/t5_agent /data/local/tmp/t5/run_t5.sh"

adb shell "sh /data/local/tmp/t5/run_t5.sh start"          # 后台，监视 /data/local/tmp/t4/segments
adb shell "sh /data/local/tmp/t5/run_t5.sh status"
adb shell "sh /data/local/tmp/t5/run_t5.sh log 20"
adb shell "sh /data/local/tmp/t5/run_t5.sh results 5"
adb shell "sh /data/local/tmp/t5/run_t5.sh once --verbose"  # 扫完就退
adb shell "sh /data/local/tmp/t5/run_t5.sh stop"            # SIGINT，平滑退出
```

需要 root 吗？**不需要**。`/data/local/tmp/t4` 与 `/data/local/tmp/t5` 都是 shell 自己的目录。

## 命令行

| 选项 | 默认 | 说明 |
|---|---|---|
| `--watch-dir DIR` | `/data/local/tmp/t4/segments` | T4 的 WAV 目录（只读） |
| `--work-dir DIR` | `/data/local/tmp/t5` | T5 的状态/结果目录（自建） |
| `--provider NAME` | `mock` | 只有 `mock` |
| `--scan-interval-ms N` | 1000 | 轮询周期 |
| `--stable-ms N` | 500 | 判定"写完"的稳定性窗口 |
| `--incomplete-timeout-ms N` | 120000 | 一直写不完（T4 崩了）超时判失败 |
| `--retry-delay-ms N` | 1000 | 临时失败重试间隔 |
| `--max-jobs N` | 4096 | 内存里最多保留多少任务（有界） |
| `--max-retries N` | 3 | 临时失败最多重试次数 |
| `--once` | — | 最多扫 4 轮，处理完就绪任务后退出 |
| `--verbose` | — | 附加细节到 stderr |

## 判"写完了没有"的依据（重要）

T4 打开 WAV 时把 `RIFF size` 写成 36、`data size` 写成 0，**只有 `t4_wav_close()` 才回填真实长度**。
因此 T5 的判定是：

1. 连续两次采样 `(size, mtime)` 不变，且间隔 ≥ `--stable-ms`；
2. `data_len != 0`（为 0 一定还没关闭）；
3. `文件长度 >= 44 + data_len` 且 `riff_size + 8 == 文件长度`；
4. 格式：`PCM(1)` / 单声道 / 16000 Hz / 16-bit / `block_align=2` / `byte_rate=32000`。

1 或 2/3 不满足 → `INCOMPLETE`，下一轮再来（不是永久失败）；
格式不符 → `FAILED` 并写清原因（`not-16000hz` / `not-mono` / `bad-magic:RIFF` …）。
超过 `--incomplete-timeout-ms` 仍然是半截文件 → 判 `FAILED`（`incomplete-timeout:*`），避免无限重试。

## 状态机

```
DISCOVERED -> VALIDATING -> PENDING -> PROCESSING -> SUCCEEDED
                                     \-> RETRY -> PROCESSING ... -> FAILED（超过重试上限）
                        \-> FAILED（格式非法，永久失败）
```

- 重启时把 `PROCESSING` / `DISCOVERED` / `VALIDATING` 统一改成 `RETRY`（`err_msg=recovered-from-*`）；
- `SUCCEEDED` / `FAILED` 为终态，重启后不再执行（回放时进内存表用于去重）；
- 单文件失败不影响其它文件；进程不会因为某个 Provider 失败而退出。

## 去重口径

`job_id = fnv1a64("<文件名>:<文件大小>")` 的前 16 位十六进制 —— **不依赖文件名里的片段序号**，
所以不同 `run_id` 的同名片段不会撞 ID（`seg_aaaaaaaa_0001_100.wav` 与 `seg_bbbbbbbb_0001_100.wav` 是两个 job）。

内存有界：任务表固定 `--max-jobs`；满了先记 `queue_full`（新文件留在候选表等下一轮），
只有在全是活任务时才淘汰最早的终态记录（记 `evicted`，意味着放弃那一条的去重）。

## 结果格式

`<work-dir>/jobs.jsonl`（每次状态变化一条）与 `<work-dir>/results.jsonl`（只在终态写）：
一行一条 JSON，字段包含 `job_id / file / name / size / state / attempt / t_start / t_end /
provider / provider_type / text / err_code / err_msg / run_id / seg_id / start_seq`。

崩溃一致性：每条记录一次 `write()` + `fsync`；回放时最后一行没有换行符或 JSON 解析失败即视为半条记录丢弃。

## 长句切片

T4 的 `hangover_ms=600`，说话中间停顿超过 0.6 s 会被切成多个 WAV。T5 **一个 WAV 一个 Job**，
不合并、不推断"同一条指令"；但每条记录都带 `run_id / seg_id / start_seq`，
将来要做片段合并或上下文关联时按这三个字段排序即可。

## 已知限制

- Mock Provider 不做任何识别，返回 `[MOCK] recognized segment <seg_id>`，`provider_type=mock`；
- 单线程：Provider 若是慢速云端实现，扫描会被它阻塞（本阶段不涉及）；
- `--max-jobs` 是硬上限，超出后不会无限建任务（见上）；
- 目录轮询有最长 `--scan-interval-ms` 的发现延迟。
