# T5-06B：独立 AI Worker 基础框架（实现 + 测试报告）

> 阶段定位：只做"能独立跑、能可靠消费、能被观测、能为 T5-06C 让路"的**基础框架**。
> 本阶段**不接入任何真实模型、不发任何网络请求、不使用 API Key、不做 TTS、不做技能执行器**。
> 报告中所有"模型回复"都是 **Mock Provider 的固定文本**，不是真实模型输出。

- 提交：`main` 分支（未开分支、未 rebase、未 force push）
- 设备：TG-Z02（AILABS_S1L / MT8167S / armv7l / Android 8.1 / SDK 27），core pid 29413
- 二进制：`ai_worker` 93408 B / sha256 `2cbd1f86f2b67396d8992f9e41491efa50483ca7f8601a83966e3136f9473b4f`（ELF32 / ARM / **动态链接**）
- 主机测试：单元 215 项全过，集成 14/14 全过（`evidence/host_unit_test.log`、`evidence/host_integration_test.log`）
- 真机测试：历史 102 条一次消费完成、真实语音 2 条自动消费、kill -9 后进度恢复、双实例拒绝（`evidence/device_smoke.log`、`evidence/recovery_test.log`）

---

## 1. 结论摘要（先看这一页）

| 任务书要求 | 结果 | 证据位置 |
|---|---|---|
| 1. 独立 Native Worker 进程 | `ai_worker` 独立进程，不链接桥接端代码、不共享线程/锁/内存 | `device_smoke.log`（ps 里 `ai_worker` 与 `tgb_bridge`、`smartapp:core` 并存） |
| 2. 读取 T5-05A `events.jsonl` | 按字节偏移只读消费，`O_RDONLY`，无写/截断/删除路径 | `event_reader.c:444-520`、真机 sha256 前后一致 |
| 3. 持久化消费进度 | `consumer_state.json`，tmp+fsync+rename+fsync(dir) | `consumer_state.c:303` |
| 4. 解析/去重/序号缺口 | 严格校验 + event_id 窗口去重 + seq 缺口三态判定 | `event_reader.c:66-500`、`seq_gap.c:17` |
| 5. 生命周期/状态/异常恢复 | start/stop/status/stats/state/log + 状态 JSON + 陈旧锁接管 + 损坏状态留档 | `recovery_test.log` |
| 6. Provider 抽象 + Mock | `t6b_provider_ops`（init/complete/fini），Mock 支持 ok/delay/fail/timeout | `provider.h`、`mock_provider.c` |
| 动态链接构建 | `-fPIE -pie`，`INTERP /system/bin/linker`，`NEEDED libc.so` | `evidence/ndk_build.log` |
| 不改原厂/桥接代码 | 只新增 `my-doc/07_ai_bridge/{android,tests,evidence}` | `git diff` 范围 |

真机关键数字（历史 102 条 + 后续新增）：

```
events_processed=102  duplicates=0  invalid_lines=0  gaps=0
seq_resets=11         seq_unknown_start=1          （见 §4：这是桥接端重启，不是丢事件）
state offset=31368 == events.jsonl size，state_saves=102，耗时 < 1 s
```

---

## 2. 交付文件与职责

```
my-doc/07_ai_bridge/android/
  ai_worker.h / ai_worker.c     进程入口、主循环、单实例锁、缺口上报、状态发布
  event_reader.h / .c           严格 JSON 解析校验 + 增量文件游标（偏移/半行/截断/重建/超长）
  consumer_state.h / .c         消费进度持久化（原子写）、最近 event_id 窗口
  provider.h                     Provider 抽象（+ Mock 的配置与入口声明）
  provider.c                    抽象层外壳：空指针/未初始化/返回值与状态不一致的兜底
  mock_provider.c               Mock 实现：固定回复、模拟耗时/失败/超时；零网络
  worker_status.h / .c          运行状态与计数 JSON（原子写）
  seq_gap.h / .c                seq 连续性判定（独立模块，可主机逐条打表测试）
  worker_util.h / .c            平台薄封装（时间/目录/文件身份/可靠写/UTF-8/哈希）
  build.ps1                     NDK r21e 交叉编译（动态链接）+ readelf 自检
  run_ai_worker.sh              设备端 start/stop/status/stats/state/log/events

my-doc/07_ai_bridge/tests/
  worker_unit_test.c            主机单元测试（215 项断言，覆盖 U1–U6/U9–U13）
  worker_integration_test.py    主机集成测试（真起进程，14 个用例，含崩溃/内存）
  run_host_tests.ps1            一键构建 + 跑两套主机测试并落 evidence

my-doc/07_ai_bridge/evidence/
  host_unit_test.log            单元测试输出（215 checks, 0 failed）
  host_integration_test.log     集成测试输出（14/14 PASS）
  ndk_build.log                 ARM32 构建日志 + readelf（ELF header / dynamic / INTERP）
  device_smoke.log              真机：推送/启动/历史消费/只读校验/真实语音/原厂链路
  recovery_test.log             真机：kill -9 / 陈旧锁接管 / 断点续跑 / 双实例拒绝 / SIGINT
```

文件拆分比任务书建议多两个：`provider.c`（抽象层外壳，避免每个实现重复写防御代码）和
`seq_gap.c`（缺口判定单独成模块，否则只能靠集成测试间接验证，单元测试打不到）。

---

## 3. 事件消费语义（这是本阶段的核心）

### 3.1 读取

- 只用 `O_RDONLY` 打开 `events.jsonl`；代码里不存在对它的 `write/truncate/unlink/rename`
  （测试 i1 用 sha256 + size + mtime 三重比对验证：消费 10 条前后文件完全不变）。
- 按**字节偏移**读，`T6B_READ_CHUNK=65536` 固定读缓存，一次 `malloc`，不随文件增长；
  单行上限 `--max-record-bytes`（默认 8192，桥接端硬上限 4096）。
- 只处理**以 `\n` 结尾**的完整行；没有换行符就停在原地不消费（`event_reader.c:616`）。
- 单行超过上限：整行跳过 + 计数 + 日志，**不读进内存**（`event_reader.c:582` 的超长行扫描路径，
  即使 64 KB 都没有换行也只会逐块向前找 `\n`，不会分配大缓冲）。
- 文件暂时不存在：返回 0（等待），退出统计里 `io_errors` 保持 0（"不存在"不算错误）。

### 3.2 消费进度（"处理完才推进"）

`consumer_state.json` 字段：`dev / ino / offset / seq_last / last_event_id / processed_total /
updated_at_ms / recent_cap / recent_n / recent_ids`。

- `offset` 永远指向"下一条待处理记录的起点"；写盘顺序是 **tmp 文件 → fsync → rename → fsync(父目录)**
  （`consumer_state.c:303`），任何一步失败都不动原文件。
- 每处理一条事件推进一次偏移并落盘（`--state-sync-every` 可调；默认 1，即每条都落）。
- 崩溃发生在"处理完但还没落盘"之间时：重启会**重读最后一条**，由 event_id 去重吸收，
  统计上表现为 `duplicates+1`，绝不表现为"跳过"。
- 状态文件损坏（非 JSON / 版本不符 / 缺 offset）：留档为 `consumer_state.json.corrupt-<时间戳>`，
  然后从偏移 0 重扫。**取舍**：宁可重处理（本阶段 Mock 无副作用），也绝不静默跳过未处理事件。
  代价是"最近窗口"一起丢了，重扫会重新处理已经在窗口里的事件（i10 用例明确断言了这一行为）。

### 3.3 去重

- 依据 `event_id`（不是 seq）。持久化最近 **128** 个 event_id（`T6B_STATE_RECENT`，环形，最新在末尾）。
- 作用有两条：崩溃重读、文件被截断/重建后重扫。
- **明确边界**：这是有界窗口，不是全量历史。超出窗口的极老事件在"整文件重扫"时会被再次处理；
  报告不假装全量去重。要全量去重只能落库，属于 T5-06C 之后的话题。

### 3.4 文件被截断 / 被重建

| 现象 | 判定 | 动作 |
|---|---|---|
| 文件变小（size < offset） | 桥接端重启做了尾部修复，或文件被裁剪 | `truncations+1`，偏移归零重扫 |
| `(dev, ino)` 与保存值不同 | 文件被删除后重建（**即使新文件更大也能发现**） | `replacements+1`，偏移归零重扫 |
| 缓存区间被截短 | 缓存作废，已提交偏移不变 | 重新预读 |

Windows 主机上用 `GetFileInformationByHandle` 的 (卷序列号, 文件索引) 实现同语义，
集成用例 i9 特意构造"同长度"的新文件来证明**只靠 size 判断会漏**。

### 3.5 seq 缺口（真机数据推翻了一个直觉假设）

T5-06A 只是推测 seq 语义，这次用真机数据坐实了：

- 桥接端 `seq` 是**本次进程生命周期内的落盘计数**（`tgb_server.c:273`、`:290`），重启后从 1 重新开始；
  而 `events.jsonl` 是追加写、跨重启保留。所以**文件里同一个 pid 下会出现多段 1..N**。
- 真机历史 102 条的实测分布：`pid=16112` 有 68 条、`pid=29413` 有 34 条，seq 反复回退；
  按"回退=丢事件"判会得出 11 次虚假丢失。

因此判定规则（`seq_gap.c`）：

| 情况 | 判定 | 计数 |
|---|---|---|
| 新 pid 段，seq=1 | 段开始 | — |
| 新 pid 段，seq>1 | 无法判定（文件可能被裁剪/被人工看过） | `seq_unknown_start+1`，**不判缺口** |
| seq == last+1 | 连续 | — |
| seq <= last | 桥接端重启 | `seq_resets+1`，**不判缺口** |
| seq > last+1 | 真实缺口 | `gaps+1`、`gap_missing_total += n`、记 `[from,to]` 并打卡日志 |

重复读取走不到这里（先被 event_id 去重拦下），所以"重复读"不会被误判成"真实丢失"。
缺口**只记录不补造**：不会生成任何假的 ASR 事件。

真机历史文件上的结果：`gaps=0, seq_resets=11, seq_unknown_start=1`，
与独立写的 Python 参照实现（`events_dev.jsonl` 逐行重算）逐项一致。

---

## 4. Provider 抽象（为 T5-06C 留的口）

```c
typedef struct {
    const char *name;
    int  (*init)(t6b_provider *p, char *err, size_t errlen);
    int  (*complete)(t6b_provider *p, const char *user_text, t6b_reply *out);
    void (*fini)(t6b_provider *p);
} t6b_provider_ops;
```

- 统一状态：`T6B_P_OK / T6B_P_TIMEOUT / T6B_P_ERROR`；`t6b_reply` 带 `text/text_bytes/latency_ms/mock`。
  上层只读 `status`，不关心 HTTP/SSE/JSON 细节，所以加 GPT/DeepSeek/通义/豆包适配器时
  **事件消费者一行都不用改**。
- 抽象层外壳（`provider.c`）负责：空指针、未初始化、实现返回非 0 却留 OK 状态的兜底，
  以及"错误时清空文本"，避免把半截输出当答案。
- Mock 能力（`mock_provider.c`）：固定回复 / `--mock-delay-ms` / `--mock-fail-from N` / `--mock-timeout-from N`。
  用例 i11 证明 Provider 连续失败 3/5 时，消费者照样把 5 条事件全部消费完并继续运行。
- 硬边界（写进代码注释，也写进这里）：Provider 不碰 Android 系统、不执行 shell、不调用原厂技能、
  不写日志里的 key/prompt。本阶段没有任何 socket/http/dns 代码。

---

## 5. 生命周期、单实例、可观测性

- 单实例锁：`<state>/ai_worker.lock` 写入自身 pid；启动时 `O_CREAT|O_EXCL`，
  已存在则读 pid 判活（Linux `kill(pid,0)`，Windows `WaitForSingleObject`），
  活着 → 退出码 **3**；不活着 → 判定陈旧锁并接管（日志 `stale lock removed`）。
- 信号：`SIGINT/SIGTERM` → 提交偏移、落盘进度、写状态、退出码 0；`SIGPIPE` 忽略。
- 退出原因写进状态：`signal / max_events / max_runtime / idle_timeout`。
- 状态文件 `ai_worker_status.json`（`worker_status.c:37`，同为原子写）：状态、pid、起止时间、
  事件文件与大小、`dev/ino`、offset、provider 名、`mock_calls`，以及 20 个计数器
  （lines_read / accepted / processed / duplicates / invalid / oversize / io_errors /
  truncations / replacements / gaps / gap_missing_total / seq_resets / seq_unknown_start /
  state_saves / state_errors / provider_ok|err|timeout），外加 `last_gap_from/to`、
  `last_invalid`、`last_error`、`exit_reason`。
- 设备端脚本：`start / stop / status / stats / state / log [N] / events [N]`。
- 内存：全部固定缓冲（读块 64 KB、单行 8 KB、回复 1 KB、状态 ~1 KB、状态文件 ~9 KB），
  无逐事件分配；真机 RSS 约 **2.0 MB**，主机 3000 条长跑 RSS 恒定（growth 0 KB）。

---

## 6. 主机测试（Mock，不需要设备）

### 6.1 单元测试：`evidence/host_unit_test.log` → **215 checks, 0 failed**

| 组 | 覆盖点 |
|---|---|
| 解析 | 合法记录字段全对；`\uXXXX`、代理对、转义引号/反斜杠、未知字段、`\r\n` 行尾 |
| 拒收 | 缺括号/非 JSON/尾随字节/嵌套对象/重复字段/类型错误/事件号字符集/空文本/控制字符/非法 UTF-8/seq=0/pid<=0/非 final/rec 不符/版本不等于 1/512 字节文本超限 |
| seq | 连续、缺口范围与条数、回退（重启）、同值重复、多 pid 交错、pid 表溢出 |
| 状态 | 128 窗口淘汰与命中、recall 提前、保存-读取往返（含 1.6e15 量级文件索引）、缺文件/空文件/垃圾/版本错/截断/不可写目录、无 tmp 残留 |
| 游标 | 3 条正常读、未提交不推进、半行等待补全、非法行跳过、超长行（有换行/无换行两种）、截断、重建（同长度也要发现）、文件缺席后出现、断点续读、偏移超 EOF 视为截断 |
| Provider | ok、fail-from、timeout-from、空文本不调用实现、未配置 |
| 状态文件 | 写出后能被解析、关键字段在位、无 tmp 残留 |

### 6.2 集成测试：`evidence/host_integration_test.log` → **14/14 PASS**

| 用例 | 结果摘要 |
|---|---|
| i1 正常消费 + 只读 | 10 条全消费；sha256/size/mtime 三项不变；二次运行 0 处理 |
| i2 半行 | 半条写入时进程空转、不误判；补全后立即消费 |
| i3 非法 JSON | 跳过 1 条并计数，邻居 2 条正常 |
| i4 重复 event_id | 3 条进、2 条处理、1 条 duplicate |
| i5 seq 缺口 | 记录 `[3,4]`/missing=2，未造事件 |
| i6 崩溃恢复 | kill 后 6 条已处理；重启接管陈旧锁；累计恰好 20 条、dup=0 |
| i7 增量 | 重启后追加 2 条只处理这 2 条 |
| i8 截断 | 检测到 truncation，重扫并处理新记录 |
| i9 重建 | 同长度新文件靠文件身份识别 |
| i10 状态损坏 | 留档 `.corrupt-*`，从 0 重扫（明确会重处理） |
| i11 Provider 失败 | 3/5 失败，5 条事件照样消费完 |
| i12 超长记录 | 上限 1024 时跳过 1 条，邻居正常 |
| i13 双实例 | 第二个实例退出码 3，首个实例无重复处理 |
| i14 长跑内存 | 3000 条，RSS 3920 KB 恒定，growth 0 KB |

---

## 7. 真机测试（TG-Z02 实测）

> 设备端二进制 sha256 `2cbd1f86…`，与 `evidence/ndk_build.log` 记录一致；以下全部为真机实测输出。

### 7.1 构建
ARM32 动态链接（`ndk_build.log`）：`ELF32 / ARM / Type: DYN`，`INTERP /system/bin/linker`，
`NEEDED libc.so`。零编译警告（`-O2 -Wall -Wextra`）。

### 7.2 历史事件消费（`device_smoke.log`）
```
start pid=15324 events=/data/local/tmp/t5_bridge/work/events.jsonl ... offset=0
...（102 条，逐条 state saved）
events_processed=102 duplicates=0 invalid_lines=0 gaps=0 seq_resets=11 seq_unknown_start=1
offset=31368 == file_size=31368
```
耗时 < 1 s（每条含状态文件 fsync，约 10 ms/条；语音场景约 1 条/秒，余量充足）。

### 7.3 只读验证
消费前后 `sha256sum` 相同（`4425802a…`）、`ls -l` 的 size 与 mtime 相同、`wc -l` 仍 102。

### 7.4 真实语音事件自动消费（`device_smoke.log` 阶段 2）
Frida sender（H1 hook `libsmartbox.so+0x11353c`，base `0x94c05000`）+ 主机播放 `s01/s02` 刺激语音：
```
sender: hook attached=true; stat: final=2 stored=2 rej=0 conn=true
events: 102 → 104（新增 2 条真实 ASR final）
worker: events_processed 102 → 104，state offset 同步到 31985（= 新 EOF）
```
说明 Worker 无需重启即自动消费，且 seq 正确识别为"重置后 1、2"而不是缺口。

### 7.5 崩溃与恢复（`recovery_test.log`）
```
kill -9 15324 → 进程消失、锁文件残留（内容 15324）
重启 → "stale lock removed (owner pid=15324 not alive)"，offset 32602 原样恢复，0 重复
经真实桥接端 UDS 注入 1 条（tgb_client batch, id t506b-r1-0000）→ ACK stored → worker 消费
双实例：脚本 "already running: pid=16072"（rc=1）；直接执行二进制 rc=3
SIGINT 停止：exit_reason=signal，offset 32894 == 文件大小，状态 stopped
再次启动：0 处理（幂等）
```

### 7.6 对原厂链路与桥接端的影响
- `tgb_bridge`：全程 5 frames / 5 stored / 0 rejected / 0 frame_errors，`store_failed=false`；
  Worker 起来后桥接端状态文件与计数器无异常。Worker 被 `kill -9` 时桥接端无感知。
- `smartapp:core`：pid 29413 从头到尾未变，`logcat -b crash` 无 genie/smartapp 记录。
- 原厂唤醒/ASR/TTS：在 Worker 运行期间播放 `s03`（唤醒词+问题），
  日志显示 TTS 正常播放并正常结束：
  `ApolloPlayerAdapter player:tts reset done` / `UTPPlayer [TTS] ... [8:MEDIA_STOPPED]` /
  `AudioStateManager [source switch]tts is stop now!`，音频焦点请求与释放正常。
- **音乐播放：未实测**。该 ROM 没有独立音乐 App（`pm list packages` 无 music/player 包），
  音乐由云服务经同一套 Apollo/UTP 播放器播放，需要联网与账号；本阶段不做联网验证，故不声称。
  （`tinyplay` 直接打 PCM 失败于 `hw params`，属测试工具/独占通道问题，与 Worker 无关，已留证。）

### 7.7 内存与进程
真机 `ps`：`ai_worker` RSS ≈ 2068 KB，与 `tgb_bridge`（704 KB）、`smartapp:core`（105 MB）并存。

---

## 8. 开发过程中发现并修复的缺陷（都留了测试）

1. **状态文件 64 位整数解析溢出**：初版对数字加了 `> 1e14` 的"防溢出"上限，
   而 Windows 文件索引实测 1.6e15 → 解析失败、`ino` 归零 → 每次重启都误判"文件被重建"、
   偏移归零重扫。改为真正的 64 位上界检查，并加了 `state/save+load roundtrip`（用 1.6e15 的值）用例。
2. **Windows 进程判活用错权限**：`OpenProcess(SYNCHRONIZE)` 后调 `GetExitCodeProcess` 必然失败，
   导致"双实例"永远检测不出来（集成 i13 直接暴露）。改为 `WaitForSingleObject(h,0)==WAIT_TIMEOUT`。
3. **状态 JSON 未转义路径**：Windows 路径含 `\`，把状态文件写成非法 JSON（`\t` 被当制表符）。
   已对路径与错误信息做 JSON 转义；设备上看不出这个问题，只会在主机测试里炸。
4. **`events.jsonl` 被删除后无法重建**：Windows 上 `_open` 默认不允许删除共享，
   改为 `CreateFileA(FILE_SHARE_DELETE)` + `_open_osfhandle`，与 POSIX 语义对齐（i9 依赖它）。
5. **设备端二进制与状态目录同名**：`/data/local/tmp/t5_bridge/ai_worker` 既是二进制又是状态目录 →
   改为二进制放 `bin/ai_worker`，状态目录保持任务书要求的 `ai_worker/`。
6. **首次运行被当成错误**：状态文件不存在时打了 "state read failed"，改为 `state_load` 返回 1
   （首次运行），只有真正读失败才是错误。

---

## 9. 明确未做 / 未验证（不要当成已完成）

- **没有接真实模型**：无任何 HTTP/DNS/TLS 代码，无 API Key，无付费请求；`provider=mock`，
  回复固定为 `（T5-06B Mock）我收到了你的语音，本轮不接真实模型。`
- **没有做 TTS、没有做技能执行器**，也不执行模型输出里的任何内容。
- **没有做上下文/多轮**：每条事件独立送 Provider（Mock 不需要上下文），T5-06C 才引入会话与提示词组装。
- **未验证音乐播放**（见 §7.6 说明）。
- **去重是有界窗口**（128 条）：整文件重扫时更早的事件会被重处理，这是设计取舍，不是缺陷。
- **`seq` 缺口只在"同 pid 段内"有意义**：跨 pid、跨桥接重启的"丢失"无法从文件本身推断。
- **Provider 同步调用**：Mock 用同步 sleep 模拟耗时；真实适配器的超时/并发由 T5-06C 决定，
  但接口（`complete` 立即返回状态）已按"可超时"设计。

---

## 10. 复现命令

主机（Windows，无设备）：

```powershell
cd my-doc\07_ai_bridge\tests
powershell -ExecutionPolicy Bypass -File run_host_tests.ps1
#   -> evidence/host_unit_test.log, evidence/host_integration_test.log
```

交叉编译：

```powershell
cd my-doc\07_ai_bridge\android
powershell -ExecutionPolicy Bypass -File build.ps1
#   -> android/out/ai_worker, evidence/ndk_build.log
```

设备（脚本已 push 到 `/data/local/tmp/t5_bridge/`）：

```sh
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start --verbose
sh /data/local/tmp/t5_bridge/run_ai_worker.sh status
sh /data/local/tmp/t5_bridge/run_ai_worker.sh stats
sh /data/local/tmp/t5_bridge/run_ai_worker.sh state
sh /data/local/tmp/t5_bridge/run_ai_worker.sh log 20
sh /data/local/tmp/t5_bridge/run_ai_worker.sh stop
```

单次/受限运行（测试用）：`--idle-exit-ms 300`、`--max-events N`、`--mock-fail-from N`、
`--mock-delay-ms N`、`--state-sync-every N`、`--max-record-bytes N`。

真机取证脚本（主机侧，非仓库产物）：`D:\tgz02\OS\_analysis\t506b\d1_smoke.ps1`、
`d2_voice.ps1`、`d3_recovery.ps1`、`d4_factory.ps1`。
