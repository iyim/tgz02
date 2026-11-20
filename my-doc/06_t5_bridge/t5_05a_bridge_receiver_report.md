# T5-05A 实施报告：本机 AI Bridge 接收端

- 仓库：`iyim/tgz02`（工作分支 `main`，未建分支、未建 PR）
- 设备：TG-Z02（CCH / `AILABS_S1L`，MT8167S，armv7l，Android 8.1 / AliOS `6.1.8-RS-20221104.1459`，SDK 27）
- 本轮产物目录：`my-doc/06_t5_bridge/`
- 提交信息：`feat: add local ASR event bridge receiver`

## 0. 摘要

新增一个**独立的 Native 接收进程**（`tgb_bridge`），通过 `AF_UNIX / SOCK_STREAM`
（Android 抽象命名空间 `tgz2_asr_bridge`）接收模拟的 ASR final 事件，
完成：帧与消息的边界校验 → `event_id` 幂等去重 → `events.jsonl` 追加并 `fsync`
→ **落盘成功之后才回 ACK**；支持进程异常退出后的尾部修复、重启回放与去重状态重建。

实测结果（全部真跑，日志在 `evidence/`）：

| 项目 | 结果 |
|---|---|
| 主机单元测试 | **131 断言全通过**（帧/CRC/解析/UTF-8/记录/去重/存储） |
| 主机集成测试 | **15 用例 / 153 断言全通过**（28.2 s，含并发、kill -9、故障注入） |
| Android ARM32 编译 | `-O2 -Wall -Wextra -static`，**0 警告 0 错误**，两个产物均静态链接 |
| 真机冒烟 | 13 条事件落盘、1 条重复、2 条拒收、2 次重启（`replay_lines=13`、`dedup_size=13`） |
| T3/T4 生产代码 | **零改动**（`03_uds_test/`、`05_t4/` 无 diff） |
| 原厂 APK / native / 分区 | **零改动**（只在 `/data/local/tmp/t5_bridge/` 下新增文件） |

## 1. 任务书目标对照（§二）

| 目标 | 实现 | 证据 |
|---|---|---|
| 1 本机 UDS 接收 | `tgb_server.c`：单线程 `select`，非阻塞 accept/recv/send，抽象命名空间 + 文件路径两种地址 | 单测无（需 socket）；集成 C01–C15；真机 `run_bridge.sh start` |
| 2 消息协议校验 | `tgb_proto.c`（magic/ver/hdr_len/body_len/CRC/type）+ `tgb_event.c`（字段类型/必需/字符集/UTF-8/长度/版本/重复键/尾随垃圾） | U-F1..F16、U-E1..E33；C03–C06 |
| 3 事件去重 | `tgb_dedup.c`：`event_id` 为键，有界（8192）+ FIFO 淘汰；**只有落盘成功才入表** | U-D1..D16；C07（重复）、C08（同文本不同 session）、C12（重启后去重） |
| 4 JSONL 持久化 | `tgb_store.c`：一行一条、`write_all` 写满 + `fsync`、失败回滚、`record_too_long` 拒绝半条 | U-S1..S32；C01/C13（100 条） |
| 5 ACK 确认 | ACK 帧（同帧格式，`type=2`），`status/code/field/dup_count/events_stored/recv_at_ms/stored_at_ms` | C01/C07/C09/C10 |
| 6 重启恢复 | 启动 `repair` → `replay` → 去重重建 → append 打开 → listen；`READY` 行报告 `replay_lines/bad_lines/truncated_bytes/dedup_size` | U-S8..S18；C09/C11/C12；真机重启 |
| 7 主机自动化测试 | `tgb_unit_test.c`（131）+ `run_host_tests.py`（153，15 用例） | `evidence/host_unit_t505a.log`、`evidence/host_it_t505a.log` |

## 2. 传输方式选型（任务书"实施前必须先检查"的第 3 条）

结论：**新增 `AF_UNIX SOCK_STREAM` 端点，不复用 T3 的 `SOCK_DGRAM`**。
完整推理见 [README.md §2](README.md)，要点：

1. T3 的 DGRAM（`abstract:tgz2_pcm`）是为"高频、可丢、单向"的 PCM 设计的；本轮负载是
   "低频、不可丢、必须 ACK、必须整条校验"的文本事件，形状不同。
2. DGRAM 没有 ACK 通道：要回 ACK 客户端必须自行 `bind` 抽象地址，脚本重载/多实例会撞名，
   地址生命周期与脚本实例耦合；且没有 EOF，服务端无法区分"客户端挂了"和"暂时没说话"。
3. **主机不可测**：Windows 内核不支持 AF_UNIX DGRAM（T3 已实测 `WSAEPROTONOSUPPORT 10047`）。
   若选 DGRAM，本轮要求的 15 项主机自动化有一半跑不起来。
4. DGRAM 接收缓冲小于报文时会**静默截断**（需 `MSG_TRUNC` 才能发现），与"超长消息必须拒收"冲突。
5. STREAM 的代价（客户端要处理部分写/部分读）已在 README §2.4 逐条给出 Frida 侧的落地做法，
   包括 `NativeFunction` 调度、非阻塞 connect、ACK FIFO 匹配、退避重连、以及
   "Hook 内零 socket 调用"的硬规则。

因此：`03_uds_test/`、`05_t4/` **一行未改**；新端点的抽象名（`tgz2_asr_bridge`）与帧 magic
（`TGB1`）都与 PCM 侧（`tgz2_pcm` / `TGZ2`）区分开，两条通道可以并存。

## 3. 关键设计决定（含取舍）

| # | 决定 | 理由 | 代价 / 风险 |
|---|---|---|---|
| 1 | **先 `fsync` 再回 ACK**，且"发送成功"绝不等于"已保存" | 任务书 §四 的硬要求；也是 T5-05B 客户端唯一的完成信号 | 每条事件一次 `fsync`；单线程下慢盘会推迟其他客户端的 ACK |
| 2 | 写失败**回滚**（`ftruncate` 到写前 offset） | 半行 + 下一行会粘成一条无法解析的记录，等于丢掉一条本可保住的事件 | 回滚失败必须 fail-stop |
| 3 | `fsync` 失败 **fail-stop 且不回滚** | 完整一行的存在比"不确定"更好：重启后若在，重发得到 `duplicate`，语义仍幂等 | 之后只回 `store_unavailable`，需要人介入 |
| 4 | 崩溃尾部半条 **truncate**（不是"回放时跳过"） | 跳过会让下一次 append 接在半行后面，污染下一条好事件 | 丢掉最后半条（本来就不可解析） |
| 5 | 去重键**只用 `event_id`**，`text`/`session_id` 不参与 | "不同 session 相同文本"必须都能存（C08）；文本相等不代表事件相等 | 依赖发送端生成稳定 id（T5-05B 的职责） |
| 6 | 去重表**有界 + FIFO 淘汰** | 设备内存有限，不能随天数增长 | 比最近 8192 条更老的重复会被当新事件（README §8.2） |
| 7 | **没有事件队列**：解析→去重→落盘→ACK 同步完成 | 杜绝"入队了但没落盘"的中间态，也就不存在队列满丢事件 | 单线程；背压靠 socket 缓冲 + 客户端重试 |
| 8 | 帧级错误**一律断开**连接 | 帧头坏了无法在字节流里重找边界，继续读只会把垃圾当帧 | 客户端必须重连并从"未 ACK 事件"重发（幂等安全） |
| 9 | 拒收 ACK **回带可确认的 `event_id`**，确认不了回 `null` | 发送端要能对账"是哪一条被拒"，否则只能靠位置猜 | 需要字符集校验（`tgb_event_id_ok()`），不用未校验的原始字节 |
| 10 | 空文本按**拒收**（`empty_text`） | `asr_final` 没有文本等于没有信息；宁可让发送端看到计数，也不往库里灌噪声 | 策略决定，已固定在 C03 |
| 11 | 每连接 `SO_SNDBUF` 主动压到 8192 | ACK 不是数据面；客户端长期不读 ACK 应在数 KB 内被发现，而不是堆到 64 KB 才溢出 | Windows 会抬到系统最小值，阈值平台相关（README §8.6） |
| 12 | 提供 `--fault-after-writes N` 故障注入 | "落盘失败不得 ACK 成功"必须被**真测**，不能只靠代码阅读 | 仅测试用；默认关闭，且 `CONFIG` 行会显式打印当前值，不可能被静默打开 |

## 4. 实现范围（§四）

目录 `my-doc/06_t5_bridge/`（与 `06_t5/` 的 WAV Mock 管线完全分离）：

- `android/tgb_main.c` — 进程入口、CLI、信号（SIGINT/SIGTERM/SIGBREAK）、退出码
- `android/tgb_server.c/.h` — UDS 服务端（select 循环、每连接有界缓冲、ACK、状态文件、STATS）
- `android/tgb_proto.c/.h` — 帧编解码与边界（不依赖 socket，可主机单测）
- `android/tgb_event.c/.h` — 消息严格解析/校验、UTF-8、记录序列化
- `android/tgb_dedup.c/.h` — 幂等去重表（有界 + FIFO + 可重建）
- `android/tgb_store.c/.h` — `events.jsonl` 追加/回滚/尾部修复/回放
- `android/build.ps1`、`android/run_bridge.sh`
- `tests/tgb_unit_test.c`、`tests/tgb_client.c`、`tests/run_host_tests.py`、`tests/build_and_run.ps1`
- `evidence/`、`README.md`（协议 + 机制 + Frida 约束分析）、本报告

协议、去重/ACK/恢复机制、设备端命令的完整说明都在 [README.md](README.md)
（§3 协议、§4 落盘与 ACK、§5 去重与恢复、§6 设备端使用）。

复用而不是重造：落盘与转义用 `06_t5/android/t5_util.c` 的
`t5_write_all()/t5_sync()/t5_mkdir_p()/t5_json_escape()/t5_time_str()`，
CRC 与 T3/T4 的 `tgz2_fnv1a` **同一算法并由单测 U-C1 逐值对拍**，
socket 平台薄封装复用 `03_uds_test/tgz2_frame.h`（T3/T4 已在用）。

## 5. 测试（§五）

### 5.1 主机（一条命令：`powershell -File tests\build_and_run.ps1`）

| 要求 | 用例 | 断言 | 结果 |
|---|---|---|---|
| 1 正常事件接收 | C01 | 18 | PASS |
| 2 中文 UTF-8（原始 + `\uXXXX`） | C02 | 7 | PASS |
| 3 空文本 / 空 session_id（+ 空 event_id） | C03 | 13 | PASS |
| 4 非法 UTF-8（截断 / overlong / 孤代理） | C04 | 9 | PASS |
| 5 超长消息（511 收 / 512 拒 / 声明超长 body / 坏 CRC） | C05 | 9 | PASS |
| 6 未知协议版本（帧版本 / 消息版本 / magic） | C06 | 6 | PASS |
| 7 同一 event_id 重复 | C07 | 10 | PASS |
| 8 不同 session 相同文本 | C08 | 8 | PASS |
| 9 落盘后才 ACK（ACK 后立即 kill -9 → 重启仍在 → 重发为 duplicate） | C09 | 9 | PASS |
| 10 模拟落盘失败（注入 / fail-stop / 重启重发） | C10 | 13 | PASS |
| 11 JSONL 尾部半条恢复 | C11 | 9 | PASS |
| 12 重启后去重 | C12 | 7 | PASS |
| 13 连续 100 条 | C13 | 8 | PASS |
| 14 并发发送与队列边界（4×25 并发 / 只发不读 ACK / `max_clients`） | C14 | 18 | PASS |
| 15 客户端异常断开（半帧 / 只发头 / 静默连接） | C15 | 9 | PASS |
| 合计 | 15 用例 | **153** | **0 失败** |

单元测试 131 断言：`U-FRAME`16 / `U-CRC`3 / `U-EVENT`33 / `U-UTF8`12 / `U-RECORD`14 /
`U-DEDUP`16 / `U-STORE`37，全部通过。

### 5.2 真机（`evidence/device_smoke_t505a.log`）

```
$ sha256sum /data/local/tmp/t5_bridge/tgb_bridge
eeea0b2e4725b8403de094db60ebbd0da0341c394a6c53083f0d0336b8c49a9f   （= 本地 ARM 产物）

$ sh run_bridge.sh start
started: pid=13590 sock=abstract:tgz2_asr_bridge work=/data/local/tmp/t5_bridge/work
{"type":"READY","pid":13590,"events_stored":0,"replay_lines":0,...}

$ ./tgb_client --scenario basic          → ACK ... "status":"stored"   （中文 27 B / 9 字）
$ ./tgb_client --scenario cjk_escaped    → "status":"stored"           （\uXXXX 解出同一句）
$ ./tgb_client --scenario dup            → stored + duplicate(dup_count=1)
$ ./tgb_client --scenario empty_sid      → rejected / empty_session_id
$ ./tgb_client --scenario bad_utf8       → rejected / bad_utf8
$ ./tgb_client --scenario text_too_long  → rejected / text_too_long
$ ./tgb_client --scenario batch --count 10 → 10 条 stored

$ sh run_bridge.sh stop
{"type":"STATS","tag":"final","frames":13,"stored":13,"duplicate":1,"rejected":2,
 "frame_errors":0,"store_errors":0,"client_aborts":..,"client_overflow":0,"store_failed":false}

--- 重启：去重状态从 events.jsonl 重建 ---
$ sh run_bridge.sh start
{"type":"READY","pid":13645,"events_stored":0,"replay_lines":13,"bad_lines":0,
 "truncated_bytes":0,"dedup_size":13}
$ ./tgb_client --scenario basic → "status":"duplicate","dup_count":1
$ wc -l work/events.jsonl → 13        （重复事件没有写第二条）
```

同时确认：`/data/local/tmp/t4/segments`、`/data/local/tmp/t5/work` 的时间戳未变
（本轮只写 `/data/local/tmp/t5_bridge/`），原厂 `com.alibaba.ailabs.genie.smartapp` 进程仍在运行。

## 6. 交付清单（§七）

| # | 交付 | 位置 |
|---|---|---|
| 1 | 新增代码及构建脚本 | `android/tgb_*.{c,h}`、`android/build.ps1` |
| 2 | 主机测试代码及完整结果 | `tests/`（3 个测试文件 + 1 个编排）、`evidence/host_unit_t505a.log`、`evidence/host_it_t505a.log`、`evidence/host_it_t505a_results.json` |
| 3 | Android ARM32 编译日志 | `evidence/ndk_build_t505a.log`（含两条编译命令、退出码、产物大小与 sha256） |
| 4 | 设备端部署与运行说明 | `README.md §6`、`android/run_bridge.sh` |
| 5 | UDS 协议说明 | `README.md §3`（帧表 + 字段表 + 错误码表 + 上限推导 + 时序） |
| 6 | 去重、ACK、恢复机制说明 | `README.md §4`、`§5` |
| 7 | 已知限制和风险 | `README.md §8`（12 条，逐条含量化后果与将来的修法） |
| 8 | 本轮实施报告 | 本文件 |

## 7. 需要审查者拍板的点（偏离或新增）

1. **传输用 STREAM 而非 T3 的 DGRAM**（§2）。若要求统一到 DGRAM，主机自动化测试需要改走真机，
   且"超长消息整条拒收"要额外加 `MSG_TRUNC` 判定——请明确是否接受当前选择。
2. **拒收 ACK 回带 `event_id`**（能确认时），帧级错误才回 `null`。这是为了让发送端能对账，
   与"绝不猜测"的原则不冲突，但确实改变了"拒收就 null"的直觉。
3. **空文本按拒收**（`empty_text`）而不是"存一条空文本"。
4. **测试栈是 C 客户端 + Python 编排**：本机 CPython 3.11.9 没有编译 `AF_UNIX`
   （`socket.AF_UNIX` 不存在，与 `03_uds_test/README.md` 记录一致），
   所以"连 socket 的那一端"必须是 C；Python 只做进程编排与 JSONL 断言。
5. **`--fault-after-writes`** 属于测试专用注入，默认关闭，`CONFIG` 行显式打印其值。
   如果希望生产二进制里不含任何注入代码，可以在下一轮用编译开关（`-DTGB_FAULT_INJECT=0`）裁掉。
6. **`SO_SNDBUF` 主动压到 8192**：把"客户端不读 ACK"的发现时间从几十 KB 降到 8 KB。
   Windows 上会被系统抬高，所以该阈值平台相关（主机用例因此同时用 `max_clients` 做确定性边界验证）。
7. **未做对端鉴权**：接 LLM 之前建议加 `SO_PEERCRED` uid 白名单（README §8.7）。

## 8. 明确禁止项自查（§六）

| 禁止 | 自查 |
|---|---|
| 不修改 T3/T4 生产代码 | `git status`/`git diff --stat` 无 `03_uds_test/`、`05_t4/` 变更 |
| 不修改原厂 APK / native 库 / 系统分区 | 本轮只 `adb push` 到 `/data/local/tmp/t5_bridge/`；未 `adb remount`、未写 `/system`、未 `pm` 安装 |
| 不在本轮接入真实模型 | 无任何网络调用；`tgb_bridge` 只 `socket/bind/listen/accept/recv/send` + 文件 I/O |
| 不把 ASR final 伪装成 WAV Job | 只写 `06_t5_bridge` 自己的 `events.jsonl`；`t5_agent` 未启动、`jobs.jsonl`/`results.jsonl` 未触碰 |
| 不在 Hook 线程做阻塞/模型/磁盘操作 | 本轮没有 Hook。该约束已作为硬规则写进 README §2.4 / §9 交给 T5-05B |
| 不允许"发送成功就认为已保存" | ACK 只在 `fsync` 成功之后生成；C09（ACK 后 kill -9）与 C10（注入失败）双向验证 |
| 不创建新分支 | 全程在 `main`，无 `git branch`、无 PR |

## 9. 复现步骤

```powershell
cd D:\tgz02\OS\system
git checkout main

# 1) Android ARM32 编译（产物在 android/out/，日志在 evidence/）
powershell -ExecutionPolicy Bypass -File my-doc\06_t5_bridge\android\build.ps1

# 2) 主机全套（单测 131 + 集成 153）
powershell -ExecutionPolicy Bypass -File my-doc\06_t5_bridge\tests\build_and_run.ps1

# 3) 真机（可选）
adb push my-doc\06_t5_bridge\android\out\tgb_bridge /data/local/tmp/t5_bridge/
adb push my-doc\06_t5_bridge\android\out\tgb_client /data/local/tmp/t5_bridge/
adb push my-doc\06_t5_bridge\android\run_bridge.sh  /data/local/tmp/t5_bridge/
adb shell "chmod 755 /data/local/tmp/t5_bridge/tgb_bridge /data/local/tmp/t5_bridge/tgb_client /data/local/tmp/t5_bridge/run_bridge.sh"
adb shell "/data/local/tmp/t5_bridge/run_bridge.sh start"
adb shell "cd /data/local/tmp/t5_bridge && ./tgb_client --scenario basic"
adb shell "/data/local/tmp/t5_bridge/run_bridge.sh stop"
```

## 10. 结论

接收端已按任务书完成：真实 UDS 服务、严格边界校验、可从落盘数据恢复的幂等去重、
`fsync` 之后才发的 ACK、崩溃尾部修复与重启恢复，以及 15 项主机自动化和真机冒烟。
本轮**没有**接入 Frida、没有接任何模型、没有改动 T3/T4 与原厂任何文件。
下一轮（T5-05B）需要在 Hook 侧实现"只读入队 + 定时器非阻塞发送 + ACK 匹配重发"，
其约束与落点已在 README §2.4 / §9 写明。
