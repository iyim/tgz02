# T5-01 实施报告：独立 ASR 任务管线（Mock 阶段）

- 日期：2026-11-19（Asia/Hong_Kong）
- 代码提交：`c6bc97f9`（`feat: add T5 mock ASR pipeline`），基线 `50c456e6`
- 分支：`main`（未创建分支/PR）
- 范围：只做 T5-01（Mock）。未接入任何真实 ASR / LLM / TTS，未改 T3/T4 生产代码、未动原厂 APK/SO/分区

---

## 0. 修正轮（T5-01 fix-1，按审查意见执行代码替换）

- 基线：`64af9b90`；本轮改动**只替换代码/补测试**，未改状态机语义、未改 JSONL 字段结构、未接真实 ASR
- 替换内容（逐项，与审查意见一一对应）：

| 文件 | 处理 | 说明 |
|---|---|---|
| `android/t5_wav.c` | 整文件替换 | 改为按文件偏移逐 chunk 读取（64 位偏移 + 每次读取前边界检查），不再把整个头读进固定小缓冲后用 `off + clen` 在缓冲里遍历 |
| `android/t5_store.c` | 替换 `json_get_str()` / `json_get_ll()` / `line_to_job()`；`t5_store_replay()` 增加 `ferror()` 检查 | 字符串必须有合法结束引号、非法转义报错、字段不允许静默截断、整数必须完整解析；真实 I/O 错误返回 -1（半条记录仍按坏行处理） |
| `android/t5_engine.c` | 替换回放失败处理 | `t5_store_replay() != 0` 时 `t5_engine_close(e); return NULL;`，历史不可用不再带空表继续跑 |
| `android/run_t5.sh` | 整文件替换 | PID 身份校验改为 `/proc/<pid>/cmdline[0] == $BIN`，不再用 `kill -0` 当身份判断 |
| `tests/t5_host_test.c` | 新增 T14/T15/T15b/T16 | 见 §2 |
| `tests/shell_test.sh` | 新增（设备端） | 见 §2 |

### 0.1 替换后必须报告的一处行为变化（未擅自改回）

新 `t5_wav.c` 把 **"riff_end < 文件长度" 判为 `INVALID`（永久失败）**。
而 T4 写盘中的文件正是这种形态：`t4_wav_open()` 把 `RIFF size` 写成 36、`data size` 写成 0，
数据边写边长。于是：

- 旧实现：`INCOMPLETE` → 延迟重试（等 T4 关闭）；
- 新实现：第二次采样就会建 Job 并判 `FAILED("riff-size-mismatch")`，不再重试。

由此派生一个窄窗口风险：Job 的键是 `(文件名, 文件大小)`，若采样恰好落在"最后一帧写完、头还没回填"
的瞬间，随后的正常关闭**大小不变** → 该片段会被去重而永远停在 `FAILED`。
单元测试 `T03a`/`T03d` 把这个行为与风险显式测出来（`T03d` 断言"停留在 FAILED"）。

**没有替审查方决定**：如需恢复"写盘中 → 延迟重试"，只需在 `t5_wav.c` 里把
`riff_end < fsize` 且 `data_len == 0` 的情况归到 `T5_WAV_INCOMPLETE`（两行分支），
本轮未改，等确认。

### 0.2 替换后必须报告的一处脚本缺陷（已做最小修复）

`run_t5.sh` 原版 `is_t5_process()`：

```sh
exe=$(tr '\000' '\n' < "/proc/$p/cmdline" 2>/dev/null | sed -n '1p')
```

`< /proc/$p/cmdline` 与前面的 `[ -r ... ]` 之间存在竞态：进程恰好在此刻退出时重定向失败，
`tr` **不报错退出而是继承 stdin**（在 `adb shell` 里就是那条永不 EOF 的管道）→ `tr` 永久阻塞
→ `is_t5_process()` 不返回 → `status`/`stop`/`wait_exit` 全部挂住。真机上已复现：
`ps` 里留下 `tr`(R) / `sed`(pipe_wait) 的僵死管线三组，`run_t5.sh stop` 卡死。

最小修复（保留原判定逻辑，只切断对 stdin 的继承）：

```diff
-    exe=$(tr '\000' '\n' < "/proc/$p/cmdline" 2>/dev/null |
-          sed -n '1p')
+    exe=$(cat "/proc/$p/cmdline" 2>/dev/null |
+          tr '\000' '\n' |
+          sed -n '1p')
```

修复后同一脚本连跑两轮 shell 测试均 `20 passed, 0 failed`，无挂起。
此改动是对审查方提供代码的唯一非逐字修改，理由与 diff 如上，供复核。

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

真实结果（完整输出见 `evidence_t5/host_tests_168.log`）：

```
=== 168 passed, 0 failed ===
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
artifact: t5_agent  3602156 B
sha256  : 862b2410328acc9360f3ce997dfaf64fcaed1de82f68b998822fd019344ec77f
```

- 目标：`armv7a-unknown-linux-android26`，静态链接，无 `-Wno-*`；
- 构建过程中修掉的两个真实警告（不是屏蔽）：
  `GetTickCount64` 未声明 → 定义 `_WIN32_WINNT=0x0601`；
  `nanosleep` 在 C99 下未声明 → 停止等待改用 `select()`（行为等价，可被信号打断）。

---

## 4. TG-Z02 真机验证（已通过）

环境：TG-Z02 / AILABS_S1L，MT8167S，armv7，Android 8.1；`adb 192.168.1.9:5555`；
T5 以 **shell 身份**运行（`/data/local/tmp/t5`，**不需要 root**，未改系统权限/SELinux）；
设备端二进制 md5 `a544262fcc1bc11d95aa4f6d28d4a71e` = 本机构建产物。

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
| `evidence_t5/host_tests_168.log` | 主机 100 条断言完整输出 |
| `evidence_t5/t5_fix_runA_firstrun.log` | 修正轮设备运行 A：首次发现 20 个 T4 片段并全部 Mock 成功 |
| `evidence_t5/t5_fix_results.jsonl` | 修正轮运行 A 的 20 条结果记录（含 `[MOCK]` 文本与 `run_id/seg_id/start_seq`） |
| `evidence_t5/t5_fix_runB_restart.log` | 修正轮运行 B：重启后 `replay_lines=100`、`new_jobs=0`、`succeeded=0` |
| `evidence_t5/shell_test_device.log` | 修正轮设备端 `run_t5.sh` 行为测试（20 条断言） |




设备端原始目录（未入库）：`/data/local/tmp/t5/{t5_agent,t5_agent.log,work/,work_v1/,work_demo/,watch_demo/}`。


---

## 8. 修正轮（fix-1）执行结果

### 8.1 实际替换的文件与函数

| 文件 | 替换范围 | 结果 |
|---|---|---|
| `android/t5_wav.c` | 整文件 | 按你提供的版本逐字替换，`t5_wav_inspect` / `t5_wav_check_name` 接口不变 |
| `android/t5_store.c` | `json_get_str()` / `json_get_ll()` / `line_to_job()` + `t5_store_replay()` 的 `ferror()` 检查 | 逐字替换；额外只加了 `#include <limits.h>`（`INT_MIN/MAX`、`LONG_MIN/MAX` 需要） |
| `android/t5_engine.c` | 回放失败分支 | 逐字替换：失败即 `t5_engine_close(e); return NULL;` |
| `android/run_t5.sh` | 整文件 | 逐字替换；**唯一非逐字修改**是 `is_t5_process()` 去掉 `tr < /proc` 的 stdin 继承（原因与 diff 见 §0.2） |

### 8.2 新增测试与逐项结果（主机，`=== 168 passed, 0 failed ===`）

原有 100 条断言全部保留并通过（T01–T13），新增 68 条：

| 组 | 用例 | 结果 |
|---|---|---|
| T14 WAV | 14.1 正常 T4 44 字节头 | ok |
| | 14.2 `fmt` 长度 8（<16） | invalid / `fmt-too-short` |
| | 14.3 `fmt` 长度 2000（超剩余） | invalid / `chunk-length-out-of-range` |
| | 14.4 data 长度 `0xFFFFFFFF` | invalid / `chunk-length-out-of-range` |
| | 14.5 fmt 长度 `0xFFFFFFF0` | invalid / `chunk-length-out-of-range` |
| | 14.6 data 长度超出 RIFF 范围 | invalid / `chunk-length-out-of-range` |
| | 14.7 RIFF 长度 > 文件 | incomplete / `riff-truncated` |
| | 14.8 RIFF 长度 < 文件 | invalid / `riff-size-mismatch` |
| | 14.9 坏 WAV 不影响同目录好 WAV | 好文件成功、坏文件 invalid、无运行期失败 |
| T15 JSONL | 15.1 正常记录回放 | 1 条、SUCCEEDED、文本正确 |
| | 15.2 缺结束双引号 | 该行被拒、计入 bad |
| | 15.3 非法转义 `\x` | 该行被拒 |
| | 15.4 不完整 `\u12` 转义 | 该行被拒 |
| | 15.5 缺 `job_id` / 15.6 缺 `state` / 15.7 缺 `file` | 均被拒 |
| | 15.8 `size` 数字溢出 | 被拒（`ERANGE`） |
| | 15.9 有效记录 + 损坏记录 | 有效仍读出、bad=1 |
| | 15.10 损坏记录 + 有效记录 | 有效仍读出（后续记录可恢复） |
| T15b | 损坏记录不覆盖有效 SUCCEEDED、不触发重复识别 | 通过 |
| T16 回放 | 16.1 `jobs.jsonl` 不存在 → 正常启动 | 通过 |
| | 16.2 正常存在 → 正常恢复 | 通过 |
| | 16.3 历史读不出来（`jobs.jsonl` 做成目录）→ `t5_store_replay` 返回 -1，`t5_engine_open` 返回 NULL | 通过（错误信息 `cannot-open-store-in` 或 `replay-failed`） |
| | 16.4 回放失败时不得调用 Provider / 不得处理 WAV | 无 `results.jsonl` 产生 |
| | 16.5 已成功任务重启后不重复执行 | 通过 |

> `ferror()` 的覆盖边界（如实说明）：`jobs.jsonl` 做成目录时，**Windows 走 `fopen` 失败路径**，
> **Linux/Android 走 `fgets` → `EISDIR` → `ferror`**，两者都让 `t5_store_replay` 返回 -1；
> 但引擎层在更早的 `t5_store_open()`（`O_WRONLY` 打不开目录）就会失败，所以设备上观察到的是
> `cannot-open-store-in`。`ferror` 分支本身在主机上无法用可移植 fixture 触发，属**防御性代码**，
> 本轮只验证了"历史不可用 → 拒绝启动"这一契约。

### 8.3 Shell 测试（设备端，`=== shell_test: 20 passed, 0 failed ===`，连跑两轮一致）

| 组 | 结果 |
|---|---|
| S1 start/status/stop 正常 | 4 条通过（pid 合法、status=0、stop 打印 stopped） |
| S2 收尾 | PID 文件删除、`/proc/<pid>` 消失、`status` 返回非 0 |
| S3 再次 start | 成功且 PID 变化 |
| S7 已在运行时重复 start | 被拒且返回非 0、原 PID 未被改写 |
| S4 过期 PID 文件 | `status` 报 not running、PID 文件被清理 |
| S5/S6 PID 被别的进程占用 | `stop` 判 stale、**不打印 stopped**、无关进程存活、不阻塞后续 start |
| S9 无 PID 文件 | 返回非 0 + `no valid pid file`，无 stopped 谎报 |
| S8（SIGINT 超时 → TERM） | **未执行**：需要一个 `argv[0]==$BIN` 且忽略 SIGINT 的 ELF 替身，本轮没有造，不谎报通过 |
| S9c（TERM 后仍运行的失败路径） | **未执行**，同上 |

### 8.4 NDK 编译

```
exit: 0
artifact: t5_agent  3602156 B
sha256  : 862b2410328acc9360f3ce997dfaf64fcaed1de82f68b998822fd019344ec77f
```

`-O2 -Wall -Wextra -static`，无 `-Wno-*`，零警告；目标 `armv7a-linux-androideabi26`。

### 8.5 设备验证（TG-Z02，二进制 md5 `a544262fcc1bc11d95aa4f6d28d4a71e`）

| 步骤 | 结果 |
|---|---|
| 部署新 `t5_agent` + `run_t5.sh` + `shell_test.sh` | 推送成功，md5 与本机产物一致 |
| `start` / `status` / `stop` | `started: pid=1655` → `running: pid=1655` → `stopped: pid=1655`；PID 文件被删除 |
| 运行 A（干净 work 目录，20 个真实 T4 片段） | `new_jobs=20 succeeded=20 failed=0 invalid=0 store_errors=0`，`results.jsonl` 20 行 |
| 运行 B（重启同一 work 目录） | `replay_lines=100 new_jobs=0 succeeded=0 dup_skips=120`，结果仍 20 行 → 不重复处理 |
| T3/T4/原厂 | 全程未启动 T4/T3 注入；`:core` PID 16112 与 `smartapp` 等原厂进程仍在（与联调前一致），未改任何分区/文件 |

### 8.6 本轮仍未执行 / 未通过

1. `run_t5.sh` 的 S8（SIGINT 超时升级 TERM）与 S9c（TERM 后仍运行 → 失败）——未执行，需要一个忽略 SIGINT 的 ELF 替身。
2. `ferror()` 分支在引擎层的端到端复现——只在 replay 层验证了"返回 -1"，引擎层先被 `store_open` 拦住。
3. §0.1 的 `riff-size-mismatch` 语义变化**未改回**，等审查决定；`T03a/T03d` 把现状与风险都测出来了。
4. 真实 ASR、LLM、TTS：按禁止事项未接。
