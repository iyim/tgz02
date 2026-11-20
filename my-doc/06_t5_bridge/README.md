# 06_t5_bridge — 本机 ASR 事件桥接（接收端）

把 **T5-04 已经能只读抓到的 ASR final 文本**，交给一个**独立 Native 进程**收下：
校验 → 幂等去重 → 可靠落盘（fsync）→ 回 ACK。

本轮（T5-05A）**只有接收端**：不接 Frida、不接任何模型、不做 TTS、
不动原厂 APK / native 库 / 系统分区，也不碰 T3 的 PCM 传输和 T4 的 WAV 落盘。

```
   [T5-05B 将来] Frida 客户端            [本轮] tgb_bridge（独立进程）
   SessionManager::onStream (H1)  ──►   AF_UNIX SOCK_STREAM (abstract:tgz2_asr_bridge)
   Hook 内只入队                         ├─ 帧校验（magic/ver/hdr/len/crc）
   定时器里非阻塞发送 ───────────────►    ├─ 消息校验（字段/UTF-8/长度/版本）
   收到 ACK 才算完成   ◄─────────────    ├─ 幂等去重（event_id）
                                        ├─ 追加写 events.jsonl + fsync
                                        └─ 落盘成功才回 ACK
```

---

## 0. 本轮范围

| 做 | 不做 |
|---|---|
| UDS 接收（AF_UNIX STREAM）、帧/消息协议校验 | 不接 Frida、不发真实 ASR 事件（本轮用模拟事件） |
| event_id 幂等去重（状态可从落盘数据恢复） | 不接 GPT / DeepSeek / 通义，不做意图理解 |
| JSONL 追加 + fsync，**落盘后才 ACK** | 不做 TTS、不播报、不写原厂数据目录 |
| 重启恢复（尾部半条修复 + 回放 + 去重重建） | 不做自定义唤醒词 |
| 主机自动化测试（15 用例 / 153 断言）+ 单元测试（155 断言） | 不改 T3/T4 生产代码、不改原厂 APK/SO/分区 |
| 设备端 start/status/stop/log/events 脚本 + 真机冒烟 | 不把 ASR final 伪装成 T5 WAV Job |

与 T5 WAV Mock 管线的隔离：**目录独立**（`06_t5_bridge/` vs `06_t5/`）、
**进程独立**（`tgb_bridge` vs `t5_agent`）、**文件独立**（`events.jsonl` vs `jobs.jsonl`/`results.jsonl`）、
**命名独立**（`tgb_*` vs `t5_*`）。唯一复用的是 `06_t5/android/t5_util.c` 里的
`t5_write_all()/t5_sync()/t5_mkdir_p()/t5_json_escape()/t5_time_str()` —— 落盘和转义
是全项目同一份实现，不重新发明（见 §4）。

`03_uds_test/` 与 `05_t4/` 本轮**零改动**（`git diff --stat` 可验证）。

---

## 1. 目录与产物

```
06_t5_bridge/
├── android/
│   ├── tgb_proto.h/.c     帧编解码 + 边界常量 + CRC（不依赖 socket，可在主机直接单测）
│   ├── tgb_event.h/.c     消息体严格解析/校验（扁平 JSON、\uXXXX、UTF-8）、记录序列化
│   ├── tgb_dedup.h/.c     event_id 去重表（有界 + FIFO 淘汰 + 可重建）
│   ├── tgb_store.h/.c     events.jsonl：追加+fsync+失败回滚、尾部修复、回放
│   ├── tgb_server.h/.c    UDS 服务端：单线程 select、每连接有界缓冲、ACK 生成、状态文件
│   ├── tgb_main.c         CLI / 信号 / 退出码
│   ├── build.ps1          NDK 交叉编译（armv7a / API 26 / static）
│   └── run_bridge.sh      设备端 start|status|stats|log|events|stop
├── tests/
│   ├── tgb_unit_test.c    纯逻辑单元测试（155 断言）
│   ├── tgb_client.c       集成测试客户端（也是"最小可用发送端"参考实现）
│   ├── run_host_tests.py  15 个集成用例（153 断言），真起进程/真收发/真落盘
│   └── build_and_run.ps1  主机全套：编译 + 单测 + 集成
├── frida/
│   ├── t505b_asr_bridge_sender.js    T5-05B 发送端（H1 hook + 有界队列 + 非阻塞 STREAM + ACK）
│   └── t505b_runner.py               宿主编排：加载脚本、记录消息、RPC stats/stop
├── evidence/              编译日志、单测日志、集成日志+结果 JSON、真机冒烟日志、T5-05B 验收证据
│   └── t505b/             Frida 侧 JSONL、播放日志、events.jsonl 快照、对照表
├── t5_05a_bridge_receiver_report.md   接收端实施报告
├── t5_05a_p1p2_fix_record.md          接收端 P1/P2 修复记录
└── t5_05b_asr_bridge_sender_report.md 发送端实施报告（含真机验收）
```

构建：

```powershell
# Android armv7（产物 android/out/tgb_bridge、out/tgb_client，静态链接）
powershell -ExecutionPolicy Bypass -File android\build.ps1

# 主机全套（Windows + TDM-GCC，不需要设备）
powershell -ExecutionPolicy Bypass -File tests\build_and_run.ps1
```

---

## 2. 传输层选型：为什么是 AF_UNIX **SOCK_STREAM**

### 2.1 现有设计（T3）

T3/T4 的 PCM 旁路用 **AF_UNIX SOCK_DGRAM + 抽象命名空间**（`abstract:tgz2_pcm`），
40 B 头 + 1280 B 载荷，一帧 40 ms，Frida 侧 `connected DGRAM + O_NONBLOCK`，
发送失败按 EAGAIN/ENOBUFS → 丢帧计数、对端消失 → 关 socket 重连。
那份设计对"高频、可丢、单向"的音频是合适的。**本轮的负载不是那个形状**：

1. 事件必须 **ACK 后才算完成**（T5-04 的文本就是要一路可靠地落到磁盘）；
2. 事件**不能丢**（丢一条就丢一句话），但**可以重复**（用 event_id 兜底）；
3. 消息体是 UTF-8 文本，**必须整条校验**，不能接受被截断的报文；
4. 必须在**主机上能跑完整自动化测试**（这是本轮任务书的硬要求）。

### 2.2 为什么不能照搬 T3 的 DGRAM

| 问题 | 说明 |
|---|---|
| 没有 ACK 通道 | DGRAM 无连接，服务端要回 ACK 就得知道客户端地址：客户端必须自己 `bind` 一个抽象名。脚本重载/多实例会撞 `EADDRINUSE`，地址生命周期和脚本实例绑在一起，出错面比 STREAM 大得多 |
| 主机不可测 | Windows 内核不支持 AF_UNIX DGRAM（T3 已实测 `WSAEPROTONOSUPPORT 10047`）。若选 DGRAM，"落盘失败、尾部半条恢复、重启去重、并发"这些用例只能上真机跑，本轮要求的主机自动化直接断掉 |
| 静默截断 | DGRAM 接收缓冲小于报文时会**静默截断**（要 `MSG_TRUNC` 才能发现）。对"超长消息必须拒收"的硬要求是硬伤 |
| 没有 EOF | 服务端无法区分"客户端挂了"和"客户端暂时没说话"，连接生命周期只能靠超时猜 |

结论：**为事件桥接新开一个 STREAM 端点**，抽象名 `tgz2_asr_bridge`，
与 T3 的 `tgz2_pcm` 并存、互不冲突；帧 magic 用 `TGB1`，与 PCM 的 `TGZ2`
不可能互相误判。**T3/T4 一行代码都不改**。

### 2.3 候选方案对比

| | SOCK_DGRAM（T3 现用） | SOCK_STREAM（本轮选用） |
|---|---|---|
| 报文边界 | 内核保证（一条 = 一个报文） | 自己做（16 B 头给长度） |
| 部分写 | 不存在 | 存在，要 write-offset 状态机 |
| ACK | 要客户端 bind + recvfrom 轮询 | 同一连接反方向，天然有序 |
| 断线检测 | 无 EOF | EOF / EPIPE 立刻可见 |
| 背压 | 发送方 EAGAIN | 发送方 EAGAIN + 服务端 ACK 缓冲可见 |
| 截断风险 | 有（静默） | 无（按长度精确读满） |
| 主机（Windows）| **不支持** | 支持（文件路径），T3/T4 已实测 |
| Frida 侧成本 | 略低（无需组帧状态机） | 约 40 行（write-offset + 组帧缓冲） |

选 STREAM 换到的三件事：**ACK 有确定顺序、断线有确定信号、主机能全测**。
代价是客户端要多写一个"部分写/部分读"的状态机（§2.4 已逐条说明怎么写在 Frida 里）。

### 2.4 Frida 侧的真实约束（这一轮不实现，但接收端必须为它留好形状）

任务书要求"不得假设普通 C 客户端实现可以直接照搬到 Frida"。逐条对照：

| Frida 侧约束 | 具体表现 | 客户端必须怎么做 | 接收端如何配合 |
|---|---|---|---|
| 只有一条 JS 执行线程 | Hook 回调与定时器在同一线程；任何阻塞调用都会拖住原厂语音链路 | socket 调用**全部**在消费定时器里；Hook 里只做"整帧复制 + 入环形队列"（T3 R2 规则） | 不要求客户端在 Hook 内等待：ACK 是异步的，晚到也合法 |
| `NativeFunction` 默认 `scheduling:'cooperative'` | 调用期间可能释放 JS 锁，重入风险由调用方自己保证 | 只用 T3 已验证的绑定方式；socket/fcntl/send/recv 不进 Hook | 服务端单线程顺序处理，同一连接上的 ACK 顺序 = 请求顺序，客户端可以按序对账 |
| 不能 `connect()` 阻塞 | 阻塞 connect 会卡住 JS 线程几百 ms | `O_NONBLOCK` 后 `connect` 返回 `EINPROGRESS`，下一 tick 用 `select` 判可写（或直接在独立 tick 里重试） | `listen(16)` + 非阻塞 accept，连接建立不依赖客户端阻塞等待 |
| 没有结构化 I/O | `send` 可能只吃一半；`recv` 可能只到半帧 | 每帧维护 `write_off`，未写完下一 tick 续写；4 KB 组帧缓冲按头长切帧 | 帧头 16 B 定长、`body_len` 显式，客户端永远知道还差多少字节 |
| 定时器节流 | 20 ms 级 tick，JS 侧不能忙等 | 每 tick 设预算（如 ≤4 次 send、≤8 KB），EAGAIN 就留到下 tick | 服务端每次事件 fsync 后立刻回 ACK，客户端不会长期"半开" |
| 断线/重启 | 服务端重启后旧 fd 变 EPIPE | 关 socket、`reconnects++`、把**未 ACK** 的事件重新入队，带退避地重连 | `event_id` 幂等 ⇒ 重发安全；重复只会得到 `duplicate` |
| "发了不能算成功" | 只有 ACK 才是"已保存" | 维护 ACK FIFO，用 `event_id` 匹配，未匹配 = 未完成 | ACK 只在 **fsync 之后**发出（§4），ACK 里带 `events_stored`/`stored_at_ms` 可核对 |
| 抽象命名空间 | 没有文件，但仍受 SELinux 域检查 | 客户端在被注入的 app 域，接收端在 shell 域 | T3 的 `tgz2_pcm` 已在本机证明 app→shell 的 AF_UNIX 通路可用；本轮真机冒烟也用同一形态（`abstract:tgz2_asr_bridge`） |

一句话：**接收端把"最多一次乱序 + 至少一次重发"都当成正常输入**（幂等去重兜底），
客户端只要保证"没收到 ACK 的事件不丢"即可，不需要在 Hook 里做任何等待。

---

## 3. 协议

传输：`AF_UNIX` / `SOCK_STREAM`
- Android/Linux：抽象命名空间 **`tgz2_asr_bridge`**（无文件、无目录权限要求）
- Windows（主机测试）：文件系统路径（`--sock-path`）
- 一条连接上**双向**都是"16 B 头 + body"，请求 `type=1`、ACK `type=2`

### 3.1 帧格式（16 B 头 + body，全部小端，手工序列化，不依赖 struct 对齐）

| off | size | 字段 | 说明 |
|---|---|---|---|
| 0 | 4 | `magic` | `'T','G','B','1'`（`0x31424754`） |
| 4 | 1 | `ver` | **帧格式版本**，当前 1；不等于 1 直接拒收并断开 |
| 5 | 1 | `type` | 1 = REQ（客户端→接收端），2 = ACK（接收端→客户端） |
| 6 | 2 | `hdr_len` | 16；不等于 16 直接拒收（防止流对不齐） |
| 8 | 4 | `body_len` | body 字节数，必须 ≤ **1024** |
| 12 | 4 | `crc` | FNV-1a 32(body)，与 T3/T4 的 `tgz2_fnv1a` **同一算法**（单测 U-C1 逐值对拍） |

`ver`（帧格式版本）与 body 里的 `version`（消息版本）是**两个独立的东西**：
帧版本不认识 ⇒ 连长度都不可信 ⇒ 必须断开；消息版本不认识 ⇒ 帧还能读 ⇒ 回一条
`rejected` ACK 即可。两者都不猜、不静默降级。

### 3.2 请求 body（JSON，扁平对象）

| 字段 | 类型 | 必需 | 约束 / 拒收码 |
|---|---|---|---|
| `version` | int | 是 | 必须 = 1，否则 `bad_protocol_version` |
| `event_id` | string | 是 | 1..64 字节，字符集 `[A-Za-z0-9._:-]`；空 → `empty_event_id`，非法 → `bad_event_id` |
| `event_type` | string | 是 | 本轮只接受 `asr_final`，否则 `bad_event_type` |
| `pid` | int | 是 | 1..2147483647，否则 `bad_pid` |
| `session_id` | string | 是 | 1..64 字节，同字符集；空 → `empty_session_id` |
| `text` | string | 是 | 1..**511** UTF-8 字节；空 → `empty_text`；非法 UTF-8 → `bad_utf8`；含控制字符（含 NUL）→ `text_has_control`；超长 → `text_too_long` |
| `is_final` | bool | 是 | 必须 `true`，否则 `bad_is_final` |
| `received_at_ms` | int | 是 | 1..2^53，否则 `bad_received_at` |

补充规则（都有单测）：
- 未知字段**允许**（前向兼容），但其值仍必须是标量（string/int/bool/null）；**嵌套对象/数组一律拒收**。
- 同名字段**重复出现直接拒收**（`dup_field`）：`event_id` 出现两次而取值不同时，去重会失去意义，必须当错误。
- 顶层对象结束后还有字节 → `trailing_garbage`。
- `\uXXXX` 转义会被解码（含代理对）；孤立代理项 → `bad_utf8`。

文本上限的推导（不拍脑袋）：T5-04 的 Hook `MAX_TEXT = 512` 且遇 NUL 即停，
所以一条 final 文本最多 **511 字节 + 1 字节 NUL**。桥接端就按 511 设界——
既不会接受 Hook 产不出的数据，也不会比 Hook 更早截断。

body 上限 1024 的推导：511 B 文本最坏转义 2×（只有 `"` 和 `\` 会膨胀，控制字符已被拒收）
≈ 1022 B，加字段名/时间戳/pid 约 200 B，1024 在实测记录（含 511 B 文本）下留有余量，
**并由 `tgb_event_to_record()` 的缓冲检查 + 单测 U-R14 兜底**：放不下就拒，绝不生成半条。

### 3.3 ACK body

| 字段 | 说明 |
|---|---|
| `version` | 1 |
| `ack` | 能确认的 `event_id`；解析不出可信 id 时为 `null`（绝不猜） |
| `status` | `stored` / `duplicate` / `rejected` / `error` |
| `code` | `ok` / `duplicate_event_id` / 具体拒收码（§3.4）/ `store_failed` / `store_unavailable` / `record_too_long` |
| `field` | 仅拒收时出现，指出是哪个字段出的问题 |
| `dup_count` | 本进程累计重复命中次数 |
| `events_stored` | 本进程累计落盘条数（不含回放） |
| `recv_at_ms` | 服务端收到该帧的墙钟毫秒 |
| `stored_at_ms` | 落盘完成时刻；非 `stored` 时为 0 |

示例：

```
ACK {"version":1,"ack":"evt-basic-1","status":"stored","code":"ok",
     "dup_count":0,"events_stored":1,"recv_at_ms":1795145959176,"stored_at_ms":1795145959176}
ACK {"version":1,"ack":"evt-basic-1","status":"duplicate","code":"duplicate_event_id",
     "dup_count":1,"events_stored":0,"recv_at_ms":1795145965126,"stored_at_ms":0}
ACK {"version":1,"ack":"evt-dup-1","status":"rejected","code":"text_too_long",
     "field":"text","dup_count":0,"events_stored":2,...}
```

### 3.4 错误码总表

| 层级 | code | 含义 | 之后连接 |
|---|---|---|---|
| 帧 | `bad_magic` | magic 不对 | 断开（流不可对齐） |
| 帧 | `bad_frame_version` | 帧版本不认识 | 断开 |
| 帧 | `bad_hdr_len` | `hdr_len != 16` | 断开 |
| 帧 | `oversize_frame` | `body_len > 1024` | 断开 |
| 帧 | `bad_crc` | CRC 不符 | 断开 |
| 帧 | `bad_frame_type` | 不是 REQ 帧 | 断开 |
| 消息 | `bad_json` / `trailing_garbage` / `dup_field` / `bad_field_type` / `missing_field` / `field_too_long` | 结构问题 | **保持**，继续服务 |
| 消息 | `bad_protocol_version` | 消息版本不认识 | 保持 |
| 消息 | `bad_event_type` / `bad_is_final` / `bad_pid` / `bad_received_at` | 字段值不合规 | 保持 |
| 消息 | `empty_event_id` / `bad_event_id` / `empty_session_id` / `bad_session_id` / `empty_text` / `bad_utf8` / `text_has_control` / `text_too_long` | 字段值不合规 | 保持 |
| 存储 | `store_failed` | 本次写盘失败（已回滚） | 保持（下一条会重试） |
| 存储 | `store_unavailable` | 已 fail-stop，不再接受事件 | 保持（只回错误，不写盘） |
| 存储 | `record_too_long` | 记录序列化放不下（理论上不可达） | 保持 |

"断开"是刻意的：帧头坏掉之后无法从字节流里重新找边界，继续读只会把垃圾当帧。

---

## 4. 落盘与 ACK

### 4.1 顺序（这是本轮的核心不变式）

```
recv 帧 → 校验 → 去重查询 → 序列化一行
        → write_all() 写满 → fsync() → 成功后：seq++、写入去重表、events_stored++
        → 生成 ACK 并 send（失败就留在输出缓冲，下轮 select 再发）
```

**先落盘，再 ACK**。因此"客户端收到 stored"⇒"这一行已经在磁盘上"。
反过来，任何一步失败都**不会**得到 `stored`。

### 4.2 记录格式（`events.jsonl`，一行一条）

```json
{"version":1,"rec":"asr_final","event_id":"evt-basic-1","event_type":"asr_final",
 "pid":16112,"session_id":"1967001","text":"天猫精灵现在几点了",
 "text_bytes":27,"text_chars":9,"is_final":true,
 "received_at_ms":1763000000000,"recv_at_ms":1795145959176,"stored_at_ms":1795145959176,
 "seq":1}
```

- `received_at_ms` = 客户端说的"我看到这条 final 的时刻"（来自 Hook）
- `recv_at_ms` / `stored_at_ms` / `seq` = **服务端事实**，客户端无法伪造
- 记录是请求字段的超集，因此**回放时用同一个解析器**校验（坏行能被同一套规则发现）

### 4.3 失败处理

| 情形 | 处理 |
|---|---|
| 短写（写了一半） | `ftruncate` 回滚到写前 offset（避免"半行 + 下一行"粘成一条坏记录），本次 ACK 报 `store_failed` |
| 回滚也失败 | 进入 **fail-stop**：不再接受任何事件，ACK 报 `store_unavailable` |
| `fsync` 失败 | 进入 **fail-stop**，但**不回滚**：完整一行的存在比"不确定"更好——重启后它若在，重发会得到 `duplicate`，语义仍然幂等 |
| 进程被 kill -9 | 已 ACK 的事件全部在盘上（每条都 fsync 过）；未 ACK 的客户端会重发 |
| 目录项未落盘（首次创建 `events.jsonl`） | `tgb_store_open()` 在打开文件后对工作目录做一次 `open(O_RDONLY\|O_DIRECTORY)` + `fsync` + `close`；失败则关闭 fd 并**拒绝启动**（不允许带着"文件名可能没落盘"的状态 ACK stored）。Windows 无等价接口，主机测试跳过 |
| 崩溃留下半行 | 下次启动 `tgb_store_repair()` 截断到最后一个 `\n` 之后，且截断后必须 `fsync` 成功才算修复完成（§5.4） |

fail-stop 是刻意的：文件是否可信已经不可知，继续"写成功就 ACK"等于撒谎。
运维可见性：`bridge_status.json` 的 `store_failed` + 日志里 `[tgb] store append failed`。

---

## 5. 去重与恢复

### 5.1 key 只用 `event_id`

- 不同 session 文本相同 ⇒ **不是**重复（单测 U-D16、用例 C08 覆盖）
- 同一 event_id 重复到达 ⇒ 不写第二条，回 `duplicate`，`dup_count++`，**照样回 ACK**
  （客户端要知道"这条已经安全落地"，不能让它等超时后无限重发）
- 大小写不同视为不同事件（id 是标识符，不做归一化）

### 5.2 有界表 + FIFO 淘汰

开放寻址哈希表（`cap × 2` 槽）+ 插入顺序环，容量默认 **8192**（向上取整到 2 的幂）。
满了淘汰最老的 event_id，`dedup_evicted++`。内存上界 ≈ 8192×65 B（环）+ 16384×4 B（表）
≈ 0.6 MB，**不随运行时间增长**。

### 5.3 重启恢复：去重状态完全来自落盘数据

启动顺序：`repair 尾部` → `replay events.jsonl` → 把每条记录的 `event_id` 灌回去重表 →
`append` 打开 → `listen`。**内存里没有任何"只存在于内存"的已见事件**。
真机验证：重启后 `READY {"replay_lines":13,"dedup_size":13,...}`，
再发同一个 event_id 得到 `duplicate`，文件仍然 13 行（见 `evidence/device_smoke_t505a.log`）。

### 5.4 尾部半条必须 truncate（不是"跳过"）

崩溃可能留下没有 `\n` 的最后一行。如果只是"回放时跳过"，下一次 append 会**接在同一行后面**，
把"半条 + 一条完整记录"粘成一行垃圾，等于**丢掉一条本可以保住的事件**。
所以启动第一步就是把文件截断到最后一个 `\n` 之后，并记入 `truncated_bytes` / 日志。
单测 U-S11..U-S18 覆盖（含"全是半条 ⇒ 清空"与"修复后追加不与旧内容粘连"）。

### 5.5 背压与"队列边界"（本项目**没有**事件队列）

解析 → 去重 → 落盘 → ACK 在同一轮循环里同步完成，因此不存在"入队了但没落盘"的中间层，
也就没有队列满丢事件的语义。边界有三层，全部固定大小：

| 边界 | 值 | 越界的后果 |
|---|---|---|
| 每连接输入缓冲 | 16 + 1024 = 1040 B | 收满还凑不出一帧 ⇒ 帧头必定非法 ⇒ 拒收并断开 |
| 每连接 ACK 缓冲 | 4096 B（另加 `SO_SNDBUF` 8192） | 客户端长期不读 ACK ⇒ 立即断开（`client_overflow++`），不阻塞别人、不丢已落盘数据 |
| 连接数 | 默认 8，硬上限 32（`FD_SETSIZE`） | 超出的 accept 立即 close（`client_overflow++`），客户端重连即可（幂等安全） |

推论：**一条慢 fsync 会推迟同进程内其他客户端的 ACK**（单线程、无写线程）。
这是刻意的取舍——不做无界写队列，也就不存在"进程被杀时队列里还没落盘的一大堆事件"。
设备上单条 fsync 成本远小于一帧语音，量级可接受（真机冒烟：13 条事件 + 2 次重启，全程 < 2 s）。

### 5.6 运维可见性

- `bridge_status.json`：每秒刷新（`--status-interval-ms`），含 state/pid/sock/工作目录、
  stored/duplicates/rejected/frames、clients_accepted/closed、client_aborts/overflow、
  frame_errors、store_errors、replay_lines/bad_lines、truncated_bytes、dedup_size/evicted、store_failed。
- stdout：启动 `CONFIG`/`READY` 各一行；退出 `STATS final` 一行（全 JSON，便于采集）。
- `--verbose`：每条事件/每条拒收原因（含字段名）打 stderr，**默认关闭**。

---

## 6. 设备端使用

### 6.1 部署

```sh
adb push android/out/tgb_bridge  /data/local/tmp/t5_bridge/tgb_bridge
adb push android/run_bridge.sh   /data/local/tmp/t5_bridge/run_bridge.sh
adb shell chmod 755 /data/local/tmp/t5_bridge/tgb_bridge /data/local/tmp/t5_bridge/run_bridge.sh
```

产物只落在 `/data/local/tmp/t5_bridge/`：

```
/data/local/tmp/t5_bridge/
├── tgb_bridge            接收端（静态 ARM32，3.4 MB）
├── run_bridge.sh
├── tgb_bridge.log        进程日志（CONFIG/READY/STATS）
├── tgb_bridge.pid
└── work/
    ├── events.jsonl      事件（一行一条，写满 + fsync 后才回 ACK）
    └── bridge_status.json
```

### 6.2 五个命令

```sh
sh run_bridge.sh start            # 抽象命名空间 tgz2_asr_bridge；额外参数原样传给 tgb_bridge
sh run_bridge.sh status           # 是否在跑 + 最近状态（直接 cat bridge_status.json）
sh run_bridge.sh stop             # SIGINT → 超时 SIGTERM，退出后清 pid
sh run_bridge.sh log 20           # 进程日志
sh run_bridge.sh events 10        # 最近 10 条事件
sh run_bridge.sh stats            # 只打印状态文件
```

实测（`evidence/device_smoke_t505a.log`）：

```
$ sh run_bridge.sh start
started: pid=17813 sock=abstract:tgz2_asr_bridge work=/data/local/tmp/t5_bridge/work
{"type":"READY","pid":17813,"events_stored":0,"replay_lines":0,...}   （READY 出现 = 目录 fsync 成功）

$ ./tgb_client --scenario basic
ACK {"version":1,"ack":"evt-basic-1","status":"stored","code":"ok",...}

$ sh run_bridge.sh stop
stopped: pid=17813
{"type":"STATS","tag":"final","frames":17,"stored":13,"duplicate":1,"rejected":3,...}
```

### 6.3 清理

```sh
sh run_bridge.sh stop
adb shell rm -rf /data/local/tmp/t5_bridge      # 只删自己这个目录
```

---

## 7. 主机测试

### 7.1 一条命令

```powershell
powershell -ExecutionPolicy Bypass -File tests\build_and_run.ps1
```

它做四件事：编单测并跑 → 编集成客户端 → 编 Windows 版接收端 → 跑 15 个集成用例。
日志写到 `evidence/host_unit_t505a.log`、`evidence/host_it_t505a.log`、
`evidence/host_it_t505a_results.json`。

### 7.2 15 项要求 → 用例 → 实测

| 任务书要求 | 用例 | 断言 |
|---|---|---|
| 1 正常事件接收 | C01 | 18 |
| 2 中文 UTF-8（原始 + `\uXXXX`） | C02 | 7 |
| 3 空文本 / 空 session_id（+ 空 event_id） | C03 | 13 |
| 4 非法 UTF-8（截断 / overlong / 孤代理） | C04 | 9 |
| 5 超长消息（text 511 收 / 512 拒、body 声明超长、CRC） | C05 | 9 |
| 6 未知协议版本（帧版本 / 消息版本 / magic） | C06 | 6 |
| 7 同一 event_id 重复发送 | C07 | 10 |
| 8 不同 session、相同文本 | C08 | 8 |
| 9 落盘后才 ACK（ACK 后立即 kill -9，重启仍在） | C09 | 9 |
| 10 模拟落盘失败（注入 + fail-stop + 重启重发） | C10 | 13 |
| 11 JSONL 尾部半条记录恢复 | C11 | 9 |
| 12 Bridge 重启后去重 | C12 | 7 |
| 13 连续 100 条事件 | C13 | 8 |
| 14 并发发送与队列边界（4×25 并发 / 只发不读 / max_clients） | C14 | 18 |
| 15 客户端异常断开（半帧 / 只发头 / 静默连接） | C15 | 9 |
| **合计** | **15 用例** | **153 断言** |

### 7.3 单元测试（155 断言）

`U-FRAME`(16) 帧编解码与边界 · `U-CRC`(3) 与 `tgz2_fnv1a` 逐值对拍 ·
`U-EVENT`(33) 解析/校验/转义/长度边界 · `U-INT`(16) 整数安全边界（2^53、超长、前导零、`-0`）·
`U-UTF8`(12) 严格 UTF-8 · `U-RECORD`(14) 记录序列化与反解 · `U-DEDUP`(16) 幂等与 FIFO 淘汰 ·
`U-STORE`(45) 追加/回放/尾部修复（含跨 4 KB 回扫）/目录同步/故障注入/只读 fd 写失败。

另有 `-ftrapv` 有符号溢出探测（A 修复后 / B 修复前 / C 去掉每位检查的反面对照）：

```powershell
powershell -ExecutionPolicy Bypass -File tests\run_ub_probe.ps1   # -> evidence/host_trapv_t505a.log
```

（TDM-GCC 没有 libubsan，`-ftrapv` 是等价手段：有符号溢出会直接 trap。）
细节与"为什么 P1 描述的溢出在旧代码里不可复现"见 [P1/P2 修复记录 §2](t5_05a_p1p2_fix_record.md)。

### 7.4 实测结果

```
unit:        155 passed, 0 failed
integration: 153 通过 / 0 失败  （15 用例，27.9 s）
```

（完整逐条见 `evidence/host_it_t505a.log`，机器可读见 `evidence/host_it_t505a_results.json`。）

### 7.5 真机

`tgb_client` 也编了 ARM32 版，可在设备上直接跑（`--sock tgz2_asr_bridge`），
本轮实测覆盖：basic / cjk_escaped / dup / empty_sid / bad_utf8 / text_too_long / batch10 / 重启恢复。
日志：`evidence/device_smoke_t505a_p1p2.log`（P1/P2 之后的复验）、`evidence/device_smoke_t505a.log`（首轮）。

---

## 8. 已知限制与风险

1. **本轮没有 Frida 客户端**。抽象命名空间通路在真机用独立客户端验证过（同形态、同 SELinux 域间路径，
   与 T3 的 `tgz2_pcm` 一致），但"Hook 里入队 + 定时器发送"这一层尚未实机联调（T5-05B）。
2. **去重表有界（8192）**。比"最近 8192 条"更老的重复事件会被当成新事件再写一条。
   正常链路不会触发（客户端只在收到 ACK 后才丢弃事件，不会重发几分钟前的旧事件）；
   如果将来事件率突增，需要调大 `--dedup-cap` 或加分片。
3. **回放成本线性于 `events.jsonl` 大小**，且**没有轮转/压缩**。按当前量（每次唤醒 1 条、
   每条约 0.3 KB）估算：一天数百 KB、一年几十 MB，启动回放约 1 s。真到需要时再加轮转。
4. **每条事件一次 `fsync`**：单条延迟可接受（毫秒级），但不要用它承接高频流式写入。
5. **单线程同步落盘**：一个客户端的慢写会推迟其他客户端的 ACK；`max_clients` 上限 32（`FD_SETSIZE`）。
   这是"不做无界队列"的代价，换来的是"进程被杀也不会丢一堆未落盘事件"。
6. **`SO_SNDBUF` 压小只在 Linux/Android 确定生效**：Windows 上会被抬到系统最小值，
   所以"只发不读 → 被断开"的阈值是平台相关的（主机实测约 600 条 ACK、设备上更早）。
   主机用例因此断言"要么被断开、要么不丢数据且不崩"，并单独用 `max_clients` 做确定性边界验证。
7. **无鉴权**：同机任何 uid 只要 SELinux 允许，都能连 `abstract:tgz2_asr_bridge` 并写事件。
   本设备是单用户调试镜像、本轮不接模型，风险可接受；接入 LLM 之前应加 `SO_PEERCRED` 的 uid 白名单。
8. **`received_at_ms` 由客户端提供**：可用 `stored_at_ms - received_at_ms` 观察链路时延，
   但设备改时间会让这个差值失真（`seq` 单调不受影响）。
9. **空文本按拒收处理**：`asr_final` 没有文本等于没有信息，宁可让发送端看到 `empty_text`
   并计数，也不往库里灌噪声。这是策略决定，已在本文件和用例 C03 中固定。
10. **帧级错误一律断开连接**（不可重同步），发送端必须重连并从"未 ACK 的事件"重发；
    因为幂等，重复安全。
11. **`text_chars` 是 Unicode 码点数**，不是字素簇数（emoji 组合序列会与"看起来几个字"不同），
    只作参考字段，不参与任何判定。
12. **Windows 上没有抽象命名空间**：主机侧用文件路径，同一份代码两种地址形态；
    abstract 语义只在设备上验证。
13. **目录 fsync 在 Windows 上被跳过**（没有等价且稳定的目录同步接口），
    所以"目录项落盘"这一条只在 Android（ext4，实测支持）上验证过；
    主机测试覆盖的是相邻分支（工作目录不存在时 `open` 失败并报错，U-S33/U-S34）。

---

## 9. T5-05B 发送端（已实现）

发送端已落地：`frida/t505b_asr_bridge_sender.js` + `frida/t505b_runner.py`，
真机验收（13 条真实语音、离线重连、存储故障重试、原厂共存）见
[t5_05b_asr_bridge_sender_report.md](t5_05b_asr_bridge_sender_report.md)。
下面是当初给客户端定的要点，现已逐条实现，留作约束记录：

接收端已经为客户端留好的形状：帧长自描述、CRC 可校验、ACK 按请求顺序、
`event_id` 幂等、拒收带 `field`、断线可重连重发。客户端侧需要做到：

1. Hook（`SessionManager::onStream`，H1）里**只做**：读 sessionId / 文本（沿用 T5-04 的
   P2 逐字节读到 NUL）、生成 event_id、整帧复制进固定容量环形队列；**零 socket、零分配、零日志**。
2. 20 ms 级定时器里：非阻塞 connect（带退避）→ 每 tick 有预算地 flush 未写完字节 →
   读满一帧就校验 CRC → 用 `event_id` 匹配 ACK FIFO → 只有匹配到 `stored`/`duplicate` 才算完成。
3. `EPIPE`/`ECONNRESET`：关 socket、未 ACK 的事件回到队列头、下一 tick 重连；
   队列满时**优先丢最老的未 ACK 事件**并计数（并明确记录丢了多少文本），绝不阻塞 Hook。
4. 与 T5-04 的关系：T5-04 的探针只读、只打印；T5-05B 在同一位置做同样的只读读取，
   唯一的额外动作是"把复制出来的字符串交给队列"。
