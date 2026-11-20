# T5-06A · A：现有 Native Bridge 代码盘点

范围：`my-doc/06_t5_bridge/{android,frida,tests}` 与协议/README 文档。
所有结论标注 VERIFIED（代码可查证并可运行）/ STATIC / UNKNOWN。行号对应当前 `main`（`e6aa8110`）。

代码规模与职责分工（一行速查）：

| 文件 | 行数 | 职责 |
|---|---|---|
| `android/tgb_main.c` | 113 | 进程入口、参数解析、信号 |
| `android/tgb_server.c` | 748 | 单线程 `select` 服务：accept/读帧/校验/去重/落盘/ACK/状态文件 |
| `android/tgb_store.c` | 338 | `events.jsonl` 尾部修复、追加+fsync、回放 |
| `android/tgb_dedup.c` | 200 | 开放寻址哈希 + FIFO 环，`event_id` 幂等 |
| `android/tgb_event.c` | 621 | 手写 JSON 解析/校验 + 生成落盘记录行 |
| `android/tgb_proto.c/.h` | 116 / ~85 | 16 B 帧头编解码 + FNV-1a CRC |
| `android/build.ps1` | 71 | NDK r21e 交叉编译（armv7a / API 26 / static） |
| `android/run_bridge.sh` | 4.4 KB | 设备端 `start/status/stats/log/events/stop`（pidfile 管理） |
| `frida/t505b_asr_bridge_sender.js` | 941 | H1 Hook + 32 槽队列 + 非阻塞 UDS 发送 + ACK 状态机 |
| `frida/t505b_runner.py` | 126 | 宿主编排（加载脚本、记录消息、RPC） |
| `tests/tgb_client.c` · `tests/run_host_tests.py` | 540 / ~36 KB | 设备侧客户端 + 15 个主机集成用例 |

---

## A1. 进程入口与生命周期

**入口**：`android/tgb_main.c:47 main()`。

1. `tgb_config_defaults(&cfg)`（`:55` → `tgb_server.c:62`）填默认值：
   socket 名 `tgz2_asr_bridge`（`:65`）、工作目录 `/data/local/tmp/t5_bridge/work`（`:66`）、
   `max_clients=8`（`:67`）、`dedup_cap=8192`（`:68`）、`status_interval_ms=1000`（`:70`）。
2. 参数解析 `:57-91`（`--sock/--sock-path/--work-dir/--max-clients/--dedup-cap/
   --fault-after-writes/--status-interval-ms/--verbose`），再用 `tgb_config_check()`（`:93` →
   `tgb_server.c:74`）校验：socket 名 ≤90 B（`:85`）、`max_clients` 1..32（`:93`）、
   `dedup_cap` 64..1048576（`:97`）。
3. 信号：`SIGINT`/`SIGTERM` → `on_signal()`（`:98-105`）→ `tgb_server_request_stop()`
   （`tgb_server.c:39`，只置 `volatile sig_atomic_t g_stop`，`:37`）；`SIGPIPE` 被忽略（`:107`，
   与 T5-05B P1 的发送侧修复方向一致——接收端也不许被对端关闭打死）。
4. `tgb_server_run(&cfg,&st)`（`:110` → `tgb_server.c:620`）是唯一主流程，返回后进程退出
   （`tgb_main.c:111-112`）。

**启动顺序（`tgb_server_run`，`tgb_server.c:620-714`）**：

| 步 | 位置 | 动作 |
|---|---|---|
| 1 | `:634` | 再校验一次配置 |
| 2 | `:639` | `tgz2_sock_init()`（WSAStartup / no-op） |
| 3 | `:644` | `t5_mkdir_p(work_dir)` |
| 4 | `:649` | 计算 `bridge_status.json` 路径 |
| 5 | **`:652`** | `tgb_store_repair()`：修复崩溃留下的半行 |
| 6 | **`:660`** | `tgb_dedup_new(dedup_cap)` 建表 |
| 7 | **`:666`** | `tgb_store_replay()`：回放全量 JSONL，重建去重表、统计行数/坏行 |
| 8 | `:676` | `tgb_store_open()`：以 O_APPEND 打开 `events.jsonl` |
| 9 | `:685` | `bind_listen()`：抽象命名空间 `tgz2_asr_bridge`（`tgb_server.c:377`）；`SO_SNDBUF=8192`（`tgb_server.h:26`） |
| 10 | `:701/707` | stdout 打 `{"type":"CONFIG",...}` / `{"type":"READY","pid":…,"replay_lines":…}` |
| 11 | `:714` | 写一次 `bridge_status.json`（`state=running`） |
| 12 | `:716` | 进入 `srv_loop()`（`:550`），**永不返回**，除非 `g_stop` 或 select 出错 |

**退出顺序（`:722-747`）**：把所有连接剩余 ACK `conn_flush` 后 `conn_close`（`:725-731`）→
关监听 fd 并在用文件路径 socket 时 `unlink`（`:732-740`）→ `tgb_store_close`（`:741`）→
stdout `STATS final`（`:742`）→ `bridge_status.json` 写 `stopped`（`:743`）→ 释放去重表。

**生命周期特征**（VERIFIED）：

- 单进程、**不 fork、不 daemonize**（`grep pthread|fork|clone` 在 `android/*.c` 中零命中）。
- 前台进程，由 `android/run_bridge.sh` 用 `nohup … &` 拉起，pid 写 `tgb_bridge.pid`，
  `stop` 走 `SIGINT`（脚本内 `wait_exit` 50×100 ms，超时才 `SIGTERM`）。
- 无自恢复（无 watchdog）；进程死了只有重新执行 `run_bridge.sh start`。
- 唯一的 `SIGPIPE` 处置是 `SIG_IGN`（`tgb_main.c:107`），没有其他信号处理器。

## A2. JSONL 存储位置、格式与恢复机制

- **位置**：`<work_dir>/events.jsonl`，文件名常量 `TGB_EVENTS_FILE`（`tgb_store.h:27`），
  默认目录 `/data/local/tmp/t5_bridge/work`（`tgb_server.c:66`）。
  真机上现为 102 行 / 约 40 KB（`evidence/device_facts.txt` 的 `ls -l`）。
- **格式**：一行一条，UTF-8 JSON，无 BOM，末字节 `\n`。字段顺序固定，由
  `tgb_event_to_record()`（`tgb_event.c:583-621`）生成：

  ```
  {"version":1,"rec":"asr_final","event_id":…,"event_type":…,"pid":…,
   "session_id":…,"text":…,"text_bytes":…,"text_chars":…,"is_final":true,
   "received_at_ms":…,"recv_at_ms":…,"stored_at_ms":…,"seq":N}
  ```

  - `text` 由 `tgb_event.c` 的 `put_str` 做 JSON 转义（含 `\uXXXX` 往返，见 `:182 jstring`）；
  - `received_at_ms` 来自发送端，`recv_at_ms`/`stored_at_ms` 来自接收端 `wall_ms()`
    （`tgb_server.c:46`，`CLOCK_REALTIME`）；
  - `seq` 是本进程内单调递增的落盘序号（`tgb_server.c:290`），**不是全局唯一 id**。
  - 单行上限 `TGB_REC_LINE_MAX=4096`（`tgb_event.h:22`），超长会回 `error/record_too_long`
    （`tgb_server.c:274-278`），不会写半条。
- **写入语义**：`tgb_store_append()`（`tgb_store.c:130-174`）
  1. 若注入开关命中 → fail-stop（`:138`）；
  2. `t5_write_all()` 写整行（`:148`），失败则 `ftruncate` 回滚到写前偏移（`:151`）；
  3. **`t5_sync()` = fsync（`:161`）**；fsync 失败**不回滚**、直接 fail-stop 并拒绝后续写
     （`:161-168`，注释说明"留下完整一行比留下不确定更好"，重启后会作为已存事件被发现，
     客户端重发时得 `duplicate`，语义仍幂等）；
  4. 成功后推进 `offset/appends`（`:171-172`）。
- **恢复机制**（开机/重启时，`tgb_server_run`）：
  1. `tgb_store_repair()`（`tgb_store.c:176-283`）：从文件尾按 4 KB 块回看（`TGB_TAIL_CHUNK`），
     若最后一行没有 `\n`（崩溃截断）就 `ftruncate` 掉这半行并 fsync 父目录
     （`tgb_sync_directory`，`tgb_store.c:41`），把截断字节数写进 `--status` 的
     `truncated_bytes`；
  2. `tgb_store_replay()`（`:283-338`）逐行回调 `replay_cb`（`tgb_server.c:610`）→
     `tgb_dedup_add()` 重建去重表，同时统计 `replay_lines/replay_bad`。
  结果打在同一行 `READY` 里（实测例：`replay_lines:73 bad_lines:0 truncated_bytes:0`）。

## A3. event_id 去重机制

- 去重表结构：`tgb_dedup`（`tgb_dedup.c`）＝ **开放寻址哈希表**（`d_hash` 线性探测，`:30/:111-126`）
  + **FIFO 环形淘汰**（`tgb_dedup_add` 在满时按 `head` 淘汰最老一条 `:160-176`），
  槽位里存的是 `event_id` 字符串副本（`slot_id`，`:42`）。
- 判定点在 `handle_event()`：**解析成功之后、落盘之前**做 `tgb_dedup_contains()`
  （`tgb_server.c:259`）；命中即回 `status=duplicate, code=duplicate_event_id`（`:261`），
  **不再写盘**。
- 入表点在**落盘成功之后**：`tgb_dedup_add()`（`tgb_server.c:291`），与 `st->stored++`（`:292`）
  同一行顺位。即"先持久化、再记幂等"，fsync 失败时不会误记。
- 容量默认 8192（`tgb_server.c:68`），可 `--dedup-cap 64..1048576`（`:97`）。
  超容量是 FIFO 淘汰（`dedup_evicted` 计数，`tgb_dedup.c:192`），因此**已被淘汰的极老 id
  理论上可被再次当作新事件落盘**——T5-05A 报告已记录，本轮不改（见风险文档 R5）。
- 重启后表是**从文件重建**的（`tgb_server.c:659-673`），所以"重启不会丢幂等性"是设计承诺，
  T5-05C 的 C6 已实测（`evt-dup-1` 发 4 次仅 1 行）。
- 与发送端的关系：`event_id` 由发送端生成（`frida/t505b_asr_bridge_sender.js:289`，
  `t5b-<pid>-<sid>-g<gen>`），Bridge 只做"字符集 + 长度 ≤64"校验（`tgb_event_id_ok`）。

## A4. ACK 返回时机

**顺序是硬保证的：先 fsync，后 ACK。**

`handle_event()`（`tgb_server.c:231-298`）里：

```
:245  tgb_event_parse()      解析/校验 → 失败 :254 回 rejected（带可信 id 或 null）
:259  tgb_dedup_contains()   → :261 回 duplicate
:266  store.failed?          → :268 回 error / store_unavailable
:273  tgb_event_to_record()  → 失败 :276 回 error / record_too_long
:280  tgb_store_append()     → 失败 :283 回 error / store_failed|store_unavailable
:290  seq++  :291 dedup_add  :292 st.stored++
:296  send_ack(...,"stored","ok",...)      ← 只有到这一行才可能返回 stored
```

ACK 本身是**先入每连接的输出缓冲，再由 select 的可写事件 flush**，不是同步 `send()`：

- `send_ack()`（`:216-227`）→ `ack_body()`（`:134-165`，字段 `version/ack/status/code/
  dup_count/events_stored/recv_at_ms/stored_at_ms[/field]`）→ `conn_queue_ack()`（`:167-178`，
  写入 `c->out[TGB_OUT_BUF=4096]`）；
- flush 点：`conn_process()` 处理完一帧后立即尝试（`:342`）、以及 `srv_loop()` 里
  `FD_ISSET(fd,&ws)` 时（`:587-589`）。写不出去 → `client_overflow++` 并关连接（`:224-226`）。
- 逐连接 `SO_SNDBUF` 刻意压到 8192（`tgb_server.h:26`），ACK 面不会无限缓冲。

因此"客户端收到 stored"等价于"该行已进 `events.jsonl` 且已 fsync"（VERIFIED，代码顺序 +
T5-05C 的 C6 用例：fsync 失败注入下 `ack_stored=0`、`events.jsonl` 字节不变）。

## A5. 是否存在供其他进程读取新事件的接口

**没有。**（VERIFIED）

- 抽象 UDS 只是**生产者入口**：只 accept `REQ` 帧（`tgb_proto.c:65` 明确 `type != TGB_TYPE_REQ`
  即 `TGB_ERR_TYPE`），只回 `ACK` 帧；没有任何 subscribe/broadcast/长连接推送逻辑
  （`srv_loop` 的写方向只用于 `conn_flush` 已排队的 ACK，`tgb_server.c:587-589`）。
- 唯一的"对外可读物"是三个**被动产物**：
  1. `events.jsonl`（追加写，单写者）；
  2. `bridge_status.json`（`write_status()`，`tgb_server.c:483-533`，默认每 1000 ms 覆盖一次，
     内容见 `:500-530`：`state/pid/sock/work_dir/events_stored/duplicates/rejected/frames/
     clients*/frame_errors/store_errors/replay_lines/dedup_size/.../updated_at`）；
  3. stdout 的 `CONFIG` / `READY` / `STATS` JSON 行（`:701/:707/:534`），由 `run_bridge.sh`
     重定向进 `tgb_bridge.log`。
- 没有 inotify、没有 `fsync` 钩子回调、没有 Unix 域的第二条 socket、没有共享内存/信号量。

## A6. 能否在不影响现有接收服务的前提下增加独立消费者

分三种做法，按"是否需要改 Bridge"分类：

| 方案 | 需要改 Bridge 吗 | 可行性证据 | 备注 |
|---|---|---|---|
| (a) 另一个进程**只读 tail `events.jsonl`**（记录自己读到的字节偏移） | **不需要** | VERIFIED：文件是 O_APPEND 单写者（`tgb_store.c:87-125` open 追加）、每行自描述且带 `seq`、ACK 在 fsync 之后（A4），所以"读到的行 = 已确认持久化的行" | 唯一坑：Bridge 重启时 `tgb_store_repair` 可能**截断**尾部（`tgb_store.c:176`），消费者需检测 `size < offset` 并从新 offset 继续或重扫；另需处理"读到半行"（等到 `\n`） |
| (b) 在 Bridge 里加第二条 UDS/订阅口 | 需要（下一阶段由 ChatGPT 设计） | STATIC：`srv_loop` 是单线程 select，加一个 listen fd + 广播缓冲会改变内存模型与背压策略（现有"每连接 4 KB 输出缓冲"契约要重新定义） | 收益是低延迟推送；代价是接收面复杂度上升 |
| (c) 用 inotify/`stat` 轮询**文件变化**再读 | 不需要 | STATIC：`inotify_init1/IN_MODIFY` 在 API 26 可用（本轮未在设备实测）；`stat` 轮询零依赖 | 延迟 = 轮询间隔；`IN_MODIFY` 会在写入过程中触发（要先等到换行） |

**结论**：现状态下"不影响接收服务"的唯一零改动路径是 (a)，(c) 是它的低延迟触发方式。
(b) 属于架构改动，应写在下一阶段的接口设计里，不属本轮。

## A7. 线程模型与锁机制

- **单线程**：`srv_loop()`（`tgb_server.c:550-608`）一个 `select` 循环，
  `tv.tv_usec = 200*1000`（`:570-571`）→ 200 ms tick 用于刷新状态文件（`:598-600`）。
  全仓库 `android/*.c` 无 `pthread`、无 `fork`、无 `clone`（grep 零命中）。
- **无锁**：没有 mutex/rwlock/信号量/`fcntl` 文件锁；唯一跨上下文的共享变量是
  `g_stop`（`volatile sig_atomic_t`，`:37`），只在信号处理里写、循环里读。
- **内存全部有界、启动期一次性分配**（`tgb_server.h:7-11` 自述，代码一致）：
  连接槽 `conns[TGB_MAX_CLIENTS_LIMIT=32]`（`:24`、`tgb_server.c:123`），每槽
  `in[TGB_MAX_FRAME=16+1024]`（`tgb_proto.h:33-35`）+ `out[4096]`（`tgb_server.h:25`），
  单行记录缓冲 `TGB_REC_LINE_MAX=4096`（`tgb_event.h:22`），去重表 `dedup_cap*~66 B`。
  算下来常驻内存约 **32×5.1 KB ≈ 164 KB + 去重表 ≈ 0.5 MB**（8192 槽，STATIC 估算）。
- **阻塞点**：`fsync` 在事件路径上（`tgb_store.c:161`），一次 fsync 会暂停**所有**连接
  ——这就是"背压由 socket 缓冲 + 客户端重试承担"的原因（`tgb_server.h:4-5` 的设计说明）。
  任何新增的慢操作（HTTP/模型）**绝不能**放进这个循环（见风险文档 R2）。

## A8. 当前 NDK 构建方式与依赖库

- 工具链：`android/build.ps1:12-13` → NDK **r21e**（`source.properties: Pkg.Revision=21.4.7075529`），
  `toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd`（API 26 = Android 8.0）。
- 编译选项（`:32` / `:47`）：`-O2 -Wall -Wextra -static`，**不允许任何 `-Wno-*`**（注释 `:8-9`）。
- 源文件（`:24-26`、`:35-36`、`:18`）：
  `tgb_main.c tgb_server.c tgb_proto.c tgb_event.c tgb_dedup.c tgb_store.c`
  + **跨目录依赖** `my-doc/06_t5/android/t5_util.c`（路径在 `:18` 拼接）
  + 头文件依赖 `my-doc/03_uds_test/tgz2_frame.h`（`tgb_server.c:15` include）。
- 产物：`android/out/tgb_bridge`、`android/out/tgb_client`（`:34`、`:49`）；
  客户端只用 `tgb_proto.c`（`:51` 注释）以便单独在设备上跑冒烟。
- **依赖库：零第三方库**。除 bionic libc 之外没有任何 `-l`（`:31-36` 没有 linker 参数），
  也没有 OpenSSL/curl/json 头文件可用（见环境文档 §B4）。
- 产物属性（VERIFIED，`llvm-readelf -h/-d android/out/tgb_bridge`）：
  `ELF32 / ARM / EXEC`，**没有 `.dynamic` 段**（`-d` 输出为空）→ 全静态；
  设备上 `3,553,180 B`（`evidence/device_facts.txt`）。

> 这一条对下一阶段很关键：**静态二进制不能 dlopen**（真机实测
> `evidence/device_probe_static.txt`：`libdl.a is a stub --- use libdl.so instead`）。
> 想复用系统 BoringSSL/libcurl，AI worker 必须是**动态链接**进程（见环境文档 §B8）。

## A9. 顺带记录：发送端（T5-05B）与本轮相关的常量

`frida/t505b_asr_bridge_sender.js`：

| 常量 | 值 | 行 |
|---|---|---|
| `queueCap` | 32（满丢最老 + `queue_overflow`） | `:38` |
| `tickMs` | 20 | `:39` |
| `ackTimeoutMs` | 3000 | `:41` |
| `retryBaseMs` / `retryMaxMs` | 100 / 2000（指数退避） | `:42-43` |
| `connectBackoffMs` / `rejectBackoffMs` | 300 / 300 | `:44-45` |
| `genMapCap` | 256（session generation FIFO） | `:46` |

Hook 体内只做读取+入队（`:262-297`），partial 只计数不外发（`:267-270`），
`event_id` 生成在 `:289`。这些是 E 节风险评估的事实基础。
