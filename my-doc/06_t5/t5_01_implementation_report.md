# T5-01 实施报告：独立 ASR 任务管线（Mock 阶段）

- 日期：2026-11-19（Asia/Hong_Kong）
- 代码提交：`c6bc97f9`（`feat: add T5 mock ASR pipeline`），基线 `50c456e6`
- 分支：`main`（未创建分支/PR）
- 范围：只做 T5-01（Mock）。未接入任何真实 ASR / LLM / TTS，未改 T3/T4 生产代码、未动原厂 APK/SO/分区

---

## 1. 已实现

| 能力 | 实现位置 | 说明 |
|---|---|---|
| 独立进程 | `android/t5_agent.c` | 单个静态 ELF（armv7），只依赖 libc；不依赖 Windows 主机 |
| 文件发现 | `t5_engine.c: scan_dir()` | 周期扫描 `--watch-dir`，只认 `.wav`（大小写不敏感），跳过 `.` 开头与目录 |
| 完整性判定 | `t5_wav.c: t5_wav_inspect()` | T4 语义：`data_len==0` ⇒ 未关闭；`文件长度 >= 44+data_len`；`riff+8 == 文件长度`；另加"两样本 `(size,mtime)` 一致且间隔 ≥ `--stable-ms`" |
| 格式校验 | 同上 | `PCM(1)` / 单声道 / 16000 Hz / 16-bit / `block_align=2` / `byte_rate=32000`，逐项给出错误码 |
| 不完整处理 | `t5_engine.c` | 判 `INCOMPLETE` → 下一轮重试（不是永久失败）；超过 `--incomplete-timeout-ms` 才判 `incomplete-timeout:*` 失败 |
| Provider 抽象 | `t5_provider.h` / `t5_provider.c` | `init / submit / release` + `name` + `type`；`t5_provider_by_name()` 注册表；只注册 `mock` |
| MockASR | `t5_provider.c` | 返回 `[MOCK] recognized segment <seg_id>`、`model=mock-v1`、`type=mock`；不做任何识别、不联网 |
| 状态机 | `t5_engine.c` | `DISCOVERED → VALIDATING → PENDING → PROCESSING → SUCCEEDED / RETRY → FAILED` |
| 任务恢复 | `t5_engine_open()` | 回放 `jobs.jsonl`；`PROCESSING/DISCOVERED/VALIDATING` → `RETRY(recovered-from-*)`；`PENDING/RETRY` 立即就绪 |
| 不重复处理 | `id_table` + 回放 | 终态任务进内存表，重启后同 `(文件名,大小)` 不再建任务 |
| 失败隔离 | `process_one()` | 单文件失败只改自己的状态；进程不退出；Provider 返回非 0 也按临时错误处理 |
| 重试策略 | 同上 | `T5_ASR_TRANSIENT` 且 `attempt < --max-retries` → `RETRY`；否则 `FAILED`；`T5_ASR_PERMANENT` 直接 `FAILED` |
| 结果持久化 | `t5_store.c` | `jobs.jsonl`（每次跃迁）+ `results.jsonl`（终态）；单次 `write` + `fsync`；回放丢弃半条记录 |
| 长句切片字段 | `t5_types.h` | 每条记录带 `run_id / seg_id / start_seq`（从 T4 文件名解析），不合并、不推断 |
| 有界内存 | `t5_engine.c` | `--max-jobs` 固定槽位 + 候选表 256；超限记 `queue_full`；仅在全是活任务时淘汰最早终态（记 `evicted`） |
| 命令行 | `t5_agent.c` | `--watch-dir --work-dir --provider --scan-interval-ms --stable-ms --incomplete-timeout-ms --retry-delay-ms --max-jobs --max-retries --once --verbose --help` |
| 停止/重启 | `t5_agent.c` / `run_t5.sh` | SIGINT/SIGTERM 置标志、打印最终统计后退出；设备端 `run_t5.sh stop` 走 SIGINT |

边界：**没有**修改 `pcm_bridge_draft.js`、T3 协议、T4 生产代码（`git show --stat c6bc97f9` 只有 `my-doc/06_t5/`）。

---

## 2. 自动化测试（Windows / GCC，已通过）

命令：

```powershell
cd my-doc\06_t5\tests
powershell -ExecutionPolicy Bypass -File build_and_run.ps1
```

真实结果（完整输出见 `evidence_t5/host_tests_100.log`）：

```
=== 100 passed, 0 failed ===
```

测试驱动的是**同一份发布源码**（`t5_engine.c` / `t5_wav.c` / `t5_store.c` … 直接编译进测试），
fixture 全部在 `tests/_t5_test/<ts>/` 现造，不碰真实录音。

| 任务书 §四 | 用例 | 断言要点 |
|---|---|---|
| 1 正常发现建 Job | T01 | 两次采样各 1 次 `scan()`：第一次只登记候选、第二次建 Job；状态 `PENDING` |
| 2 非 WAV 忽略 | T02 | `.txt` / `*.wav.tmp` / `*.WAV.bak` 全部不建任务 |
| 3 不完整不处理 | T03 | 未关闭（`data_len=0`）与截断（头声称 6400 实际 3200）都不建 Job，`incomplete_skips` 增长；补全后当轮建 Job |
| 4 头/格式错误 | T04 | 44100 Hz → `not-16000hz`；立体声 → `not-mono`；垃圾字节 → `bad-magic:RIFF`；三者均 `FAILED` |
| 5 重复扫描不重复建 | T05 | 三次扫描 `new_jobs` 恒为 1，`dup_skips` 累计 |
| 6 重启不重复执行 | T06 | 关引擎再开：`replay_lines=5`、`new_jobs=0`、`succeeded=0`、状态仍 `SUCCEEDED` |
| 7 PROCESSING 崩溃恢复 | T07 | 手工写一条 `PROCESSING` 记录 → 打开引擎 `recovered=1`、状态 `RETRY`、`err_msg=recovered-from-PROCESSING`，随后识别成功 |
| 8 结果关联正确 | T08 | 文本含 `[MOCK] recognized segment 7`、`file` 指向源 WAV、`provider_type=mock`、`run_id/seg_id/start_seq` 正确；**原始 WAV 内容与大小未变** |
| 9 失败重试 | T09 | transient：`attempt≥2`、`retried=2`、错误描述写入；permanent：立即 `FAILED`、`retried=0` |
| 10 坏文件不影响其它 | T10 | 同目录 1 坏 2 好：好文件 2 成功、坏文件在扫描期判 `FAILED` |
| 11 不同 run_id 不冲突 | T11 | `seg_aaaaaaaa_0001_100` 与 `seg_bbbbbbbb_0001_100` → 两个 job_id，两个都成功 |
| 12 有界内存 | T12 | `max_jobs=8` + 40 个文件：`jobs_tracked ≤ 8`、`new_jobs == 8`、`queue_full+evicted > 0`，多轮后仍 ≤ 8 且计数自洽 |
| 附加 | T13 | `results.jsonl` 字段齐全（`state/provider_type/text/err_code/attempt/run_id`）；`jobs.jsonl` 含 `PROCESSING`；手工追加半条记录后回放 `bad≥1` 且有效行数不变 |

---

## 3. NDK 编译（已通过）

```powershell
cd my-doc\06_t5\android
powershell -ExecutionPolicy Bypass -File build.ps1
```

真实结果：

```
cc  : .../android-ndk-r21e/.../armv7a-linux-androideabi26-clang.cmd
cmd : ... -O2 -Wall -Wextra -static -o out/t5_agent t5_agent.c t5_engine.c t5_store.c t5_provider.c t5_wav.c t5_state.c t5_util.c
exit: 0
artifact: t5_agent  3598060 B
sha256  : c5a3c626ddbd195fa2c6c9a85249342a8507bbae333e4d26a363ccbcd7539868
```

- 目标：`armv7a-unknown-linux-android26`，静态链接，无 `-Wno-*`；
- 构建过程中修掉的两个真实警告（不是屏蔽）：
  `GetTickCount64` 未声明 → 定义 `_WIN32_WINNT=0x0601`；
  `nanosleep` 在 C99 下未声明 → 停止等待改用 `select()`（行为等价，可被信号打断）。

---

## 4. TG-Z02 真机验证（已通过）

环境：TG-Z02 / AILABS_S1L，MT8167S，armv7，Android 8.1；`adb 192.168.1.9:5555`；
T5 以 **shell 身份**运行（`/data/local/tmp/t5`，**不需要 root**，未改系统权限/SELinux）；
设备端二进制 md5 `ed316546a8b974771f3b207e55c46afa` = 本机构建产物。

部署与运行：

```sh
adb push android/out/t5_agent /data/local/tmp/t5/t5_agent
adb push android/run_t5.sh    /data/local/tmp/t5/run_t5.sh
adb shell "chmod 755 /data/local/tmp/t5/t5_agent /data/local/tmp/t5/run_t5.sh"
adb shell "sh /data/local/tmp/t5/run_t5.sh start"     # 监视 /data/local/tmp/t4/segments
adb shell "sh /data/local/tmp/t5/run_t5.sh status"
adb shell "sh /data/local/tmp/t5/run_t5.sh results 5"
adb shell "sh /data/local/tmp/t5/run_t5.sh stop"
```

### 4.1 运行 A：首次发现 + Mock + 落库（20 个真实 T4 片段）

监视目录里是**设备上 T4 真实生成**的 20 个 WAV（5 个 run_id × 4 段：`4bf2ce18 / 6946e916 / 80cf4653 / a545083b / d0abe037`，35,884–64,044 B）。
`--work-dir` 用干净的 `work_v1`。

```
{"t":"t5_stats","scans":7,"files_seen":140,"new_jobs":20,"dup_skips":100,
 "incomplete_skips":0,"invalid":0,"succeeded":20,"failed":0,"retried":0,
 "queue_full":0,"evicted":0,"recovered":0,"bad_lines":0,"provider_errors":0,
 "store_errors":0,"jobs_tracked":20,"replay_lines":0}
```

- `new_jobs=20` / `succeeded=20` / `failed=0` / `invalid=0`：20 个 T4 WAV 全部通过完整性+格式校验并完成 Mock；
- `results.jsonl` = 20 行，字段完整，例：

```json
{"v":1,"rec":"job","job_id":"606f65aeda67c805","file":"/data/local/tmp/t4/segments/seg_4bf2ce18_0002_74.wav",
 "name":"seg_4bf2ce18_0002_74.wav","size":64044,"state":"SUCCEEDED","attempt":0,
 "t_start":"2026-11-19T22:10:33","t_end":"2026-11-19T22:10:33",
 "provider":"mock","provider_type":"mock","text":"[MOCK] recognized segment 2",
 "err_code":0,"err_msg":"","run_id":"4bf2ce18","seg_id":2,"start_seq":74}
```

### 4.2 运行 B：重启后不重复处理

同一 `work-dir` 再启动：

```
{"t":"t5_stats","scans":6,"files_seen":120,"new_jobs":0,"dup_skips":120,
 "incomplete_skips":0,"invalid":0,"succeeded":0,"failed":0,"retried":0,
 "queue_full":0,"evicted":0,"recovered":0,"bad_lines":0,"provider_errors":0,
 "store_errors":0,"jobs_tracked":20,"replay_lines":100}
```

`replay_lines=100`（20 个任务 × 5 条状态记录）、`new_jobs=0`、`succeeded=0`，
`results.jsonl` 仍是 20 行 → **已成功的 WAV 没有被重复识别**。

### 4.3 运行 C：`--once`

```
[t5] once: rounds=2 added=0 processed=0
{"t":"t5_stats","scans":2,"files_seen":40,...,"new_jobs":0,"succeeded":0,"jobs_tracked":20,"replay_lines":100}
```

### 4.4 运行 D：进程**运行中**新增文件被实时发现

为了排除"只有启动那一刻扫一次"的怀疑，另起一个干净目录 `watch_demo` + `work_demo`，
T5 运行期间把两个 **T4 已生成**的片段拷进去（不是新录音，仅改变出现时机）：

```
启动（空目录）→ 3 s 后放入 2 个文件 → 2 s 后：
{"t":"t5_stats","scans":11,"files_seen":4,"new_jobs":2,"dup_skips":0,...,"succeeded":2,...,"jobs_tracked":2}
results.jsonl: 2 行（live_a.wav / live_b.wav，text="[MOCK] recognized segment 0"）
```

- 说明：文件名不带 T4 命名 → `seg_id=0`、`run_id=""`，同时反证 **job_id 不依赖片段序号**（`f8ae63a2…` / `4feb7359…` 两个不同 ID）；
- 该实例重启后：`replay_lines=10`、`new_jobs=0`、`succeeded=0`，结果仍 2 行。

### 4.5 停止与清理

`run_t5.sh stop` 发 SIGINT：日志出现 `[t5] stop requested; draining lightweight state` + 最终 `t5_stats`，
随后 `ps` 无 `t5_agent` 残留；`t4_receiver` 也为 `not running`。
T3/T4 代码与设备上的原厂应用未受影响（本阶段未启动 frida 注入原厂进程）。

### 4.6 WAV 体检（T5 自身的校验结果）

20 个片段全部判 `ok`（`invalid=0`、`incomplete_skips=0`），说明
`PCM(1) / 单声道 / 16000 Hz / 16-bit / data 长度自洽 / RIFF 长度自洽` 六项在真实 T4 输出上成立；
T5 只读，不改不删不移（T08 断言了内容哈希与大小不变）。

---

## 5. 尚未验证

1. **"T4 新录一段语音 → T5 当场发现"** 没有闭环：本轮两次现场尝试（25 s、45 s）T4 都拿到 PCM
   （`received=877`），但环境噪声底 `noise_rms=539`（开段阈值 ≈1618），`vad_speech_frames=0`、`segments=0`，
   没有产生新 WAV。§4.4 用"运行期拷入 T4 已生成片段"验证了实时发现链路，但没有证明"新录音"这一条。
2. **长时间稳定性**：设备上最长连续运行约 3 分钟（168 次扫描、`dup_skips=3320`、无异常），
   没有做小时级浸泡。
3. **真实识别**：按任务书禁止，未接入任何云 ASR，Mock 文本不代表识别效果。
4. **并发/多线程**：T5 单线程，未做多实例同 `work-dir` 并发写测试（`jobs.jsonl` 追加写未加文件锁）。
5. **权限边界**：只在 `/data/local/tmp` 下验证过（shell 可读写）；没有试过把 watch-dir 指向需要 root 的路径。

---

## 6. 已知问题

| # | 问题 | 影响 | 现状 |
|---|---|---|---|
| 1 | `--once` 至少要两轮采样（稳定性判定要求两个样本），实现里最多扫 4 轮、间隔 `stable_ms` | `--once` 耗时 ≈ `stable_ms`×1~3（默认 ~1.5 s） | 设计如此，已在 README/`--help` 说明 |
| 2 | 单线程调 Provider | 若将来接慢速云端 ASR，扫描会被阻塞，发现延迟变大 | 本阶段 Mock 即时返回；已在 README 列为限制 |
| 3 | job_id = hash(文件名:大小) | 若同名同大小但内容被替换（T4 不会发生，run_id 每次不同），会被当成同一任务 | 已记录；如需绝对安全可加 mtime 进 key |
| 4 | `--max-jobs` 满且全是活任务时，只能淘汰最早终态记录（`evicted`） | 被淘汰的旧文件理论上会被重新处理 | 有明确计数；本阶段 20 个文件远未触发 |
| 5 | 每条状态记录一次 `fsync` | 片段多时写放大 | 本阶段 20 文件 × 5 条记录无压力；后续可批量 |
| 6 | `incomplete-timeout` 判失败后不再重试 | T4 若在写一半时崩溃，残留 WAV 会被判失败（保留错误原因） | 符合"不能无限积累/无限重试"的要求，是否需要人工介入留待下阶段定 |

---

## 7. 原始日志（仓库内）

| 文件 | 内容 |
|---|---|
| `evidence_t5/host_tests_100.log` | 主机 100 条断言完整输出 |
| `evidence_t5/t5_runA_firstrun.log` | 设备运行 A：首次发现 20 个 T4 片段并全部 Mock 成功 |
| `evidence_t5/t5_runA_results.jsonl` | 运行 A 的 20 条结果记录（含 `[MOCK]` 文本与 `run_id/seg_id/start_seq`） |
| `evidence_t5/t5_runB_restart.log` | 运行 B：重启后 `replay_lines=100`、`new_jobs=0`、`succeeded=0` |
| `evidence_t5/t5_runC_once.txt` | 运行 C：`--once` 输出 |
| `evidence_t5/t5_run2_live_demo.log` | 运行 D：运行中放入 2 个文件被实时发现 |
| `evidence_t5/t5_run2_results.jsonl` | 运行 D 的 2 条结果 |
| `evidence_t5/t5_run3_restart_demo.log` | 运行 D 实例重启后不重复处理 |

设备端原始目录（未入库）：`/data/local/tmp/t5/{t5_agent,t5_agent.log,work/,work_v1/,work_demo/,watch_demo/}`。
