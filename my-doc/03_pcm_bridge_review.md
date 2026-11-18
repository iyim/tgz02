# 第三阶段代码审查回执：问题、修正与证据等级

审查对象：第三阶段提交的 `03_uds_test/`（PC 原型）+ `pcm_bridge_draft.js`（真机草稿）
审查结论：**PC 原型结果可接受；真机草稿按原样不可运行**。本文件记录逐条修正。

---

## 证据等级（全文通用）

后续所有文档中，每个结论都必须带下面之一，不许混用：

| 标记 | 含义 | 本轮是否产生 |
|---|---|---|
| **W-PC** | Windows 主机实测（TDM-GCC 编译的 C 程序，AF_UNIX **SOCK_STREAM**） | ✅ 有 |
| **A-SHELL** | Android 普通进程实测（TG-Z02 上 `/data/local/tmp`，shell 域，**不注入、不 hook**，AF_UNIX **SOCK_DGRAM**） | ✅ 有 |
| **T-DEV** | TG-Z02 **原厂进程内**实测（`smartapp:core` + hook） | ❌ 本轮为零 |
| **S-RE** | 静态逆向证据（反汇编 / ELF / 常量） | ✅ 有 |
| **U** | 尚未验证（含推测、外推、其他固件） | — |

> 关键边界：**W-PC 的 DGRAM 结论不存在**（Windows 内核无 AF_UNIX DGRAM），
> **DGRAM 的一切结论只来自 A-SHELL**；**原厂进程内的任何行为都属于 T-DEV，本轮一条都没有**。

---

## 1. `pcm_bridge_draft.js` 的 9 项修正

| # | 审查意见 | 修正前 | 修正后（本轮实现） |
|---|---|---|---|
| R1 | 非阻塞失败必须关闭 socket 并禁用 | `fcntl` 返回值被忽略，可能拿阻塞 fd 发帧 | `F_SETFL` 失败 → `close(fd)` + `disable()`；**再用 `F_GETFL` 回读确认 `O_NONBLOCK` 已置位**，未置位同样关闭并禁用。禁用后 `onEnter` 第一行就 return |
| R2 | 连接失败 fd 泄漏 / 重复创建 | 失败后没有 `close`，`sockFd` 状态混乱 | 全部路径收敛：`fd<0`/`fcntl` 失败/`connect` 失败/异常，都 `close` 后把 `sockFd` 留 `-1`；重试用 `nextTry` 节流（500 ms），不重复建 |
| R3 | 缺断线/重连/关闭机制 | 只有"建一次，失败就放弃" | 四态：`-1`（未建）/`>=0`（已连）/`nextTry` 节流/`disable` 终态。`send` 报 `EPIPE/ECONNRESET/ENOTCONN/ECONNREFUSED` → `closeSock()` + `reconnects++`，下个 tick 重建；`Script.bindWeak` 在卸载时关 fd |
| R4 | CRC 必须真算 | 头里 CRC 恒定写 0 | hook 内逐样本累加 FNV-1a（低字节→高字节，与 C/Python 端字节序一致），存 `crcArr[slot]`，发送时写入头 |
| R5 | 时间戳用 `clock_gettime` | `Date.now()`（墙钟，可被 NTP 跳变） | `clock_gettime(CLOCK_MONOTONIC)`，arm32 `timespec` 按 8 字节解析（sec@0, nsec@4），转微秒写入 `ts_us` |
| R6 | 头/载荷缓冲预分配 | 每帧 `Memory.alloc(40)+Memory.alloc(1320)` | 环形区一次性 `Memory.alloc(64 × 1320)`；**头直接写在环槽前 40 B**，发送时整槽一次 `sendto`，循环内零分配 |
| R7 | PCM 抽取别反复建 Uint8Array | 每帧 `readByteArray(5120)` + `new Uint8Array` + 再拷一次 | 改为 `readS16`/`writeS16` 直入环槽载荷区（ch0 = 每 8 字节头 2 字节），**不创建任何 ArrayBuffer/Uint8Array**，也不做第二次拷贝 |
| R8 | 失败要分项计数 | 只有一个模糊的 `sendDrop` | 分 7 项：`readFail`（源指针异常）/`hookEx`（hook 内异常）/`lenBad`（长度不符）/`ringDrop`（环满）/`sendDrop`（EAGAIN\|ENOBUFS）/`sendErr`（其他 errno）/`connectFail`+`reconnects`+`sessions`+`disables` |
| R9 | 失败不得影响原厂 `feed` | 异常可从 `onEnter` 穿出 | 整个 `onEnter` 体包 `try/catch`（含计数器本身）；只读 `args[2]`/`args[3]`；不写 `context`、不改返回值、不碰栈；禁用后立即返回 |

另外两处顺带修掉：

- 三级闸门（`dlsym` → 偏移 == `0xd455c` → 16 B 机器码签名）全部通过才装 hook，任一不符就整体不启用（`st.why` 记录原因）。
- `sockaddr_un` 用**抽象命名空间**（`sun_path[0]=0`）：不落盘、无 SELinux 文件标签问题；`SOCK_ABSTRACT=false` 可切文件路径。

**状态：仍未在真机执行（T-DEV = 0）。** 这些改动只经过人工推演与 PC 侧等价实现验证，
真正的验收是 30 秒短测（设计文档 §9 步骤 2），需单独授权。

---

## 2. SPSC 前提：先证明"只有一个生产者"

### 2.1 为什么必须先证

`tgz2_ring` 是 SPSC（无锁单生产者/单消费者）。它正确的前提是**同一时刻只有一个线程写 tail**。
第二阶段只观测到"数据从 `AG-audio_record` 线程流出来"，**没有统计过 feed 的调用线程数量**（U）。
如果固件里 `feed` 还会被别的线程调用（例如识别会话期的另一路），SPSC 会静默丢帧或写坏环。

### 2.2 只读探针设计（`03_uds_test/thread_probe.js`）

| 要求 | 实现 |
|---|---|
| 记录调用线程 ID | `Process.getCurrentThreadId()`（Android 上即 `gettid`），记 `tid → 调用次数`，另记每线程首末出现时刻 |
| 统计线程数量 | `Object.keys(tids).length`，并在 `threads > 1` 时打印 `[!!] 检出多个生产者线程 -> SPSC 前提不成立` |
| 各线程调用次数 | 每 5 s 打印一行，30 s 打印 `FINAL` |
| 不读完整 PCM | **完全不碰 `args[2]`**，只 `args[3].toInt32()` 读整数做长度直方图 |
| 不做 IPC | 不建 socket、不写文件、不 `send()` 给宿主，只 `console.log` |
| 不改参数/返回值 | `Interceptor.attach` 只读，无 `onLeave`，不写 `context` |
| ≤30 s | 脚本内 `setTimeout(30000)` 自停统计 |

### 2.3 判据（跑完怎么读）

| 输出 | 结论 | 下一步 |
|---|---|---|
| `[ok] 只有 1 个生产者线程` | SPSC 前提成立（T-DEV 证据） | 沿用 SPSC |
| `[!!] 检出多个生产者线程` | 前提不成立 | **必须换 MPSC**：每线程独立环（推荐，天然无竞争）+ 接收端按 `(epoch, tid)` 排序，或改用带 CAS 的 MPSC 队列 |
| `threads=0` | hook 没装上或没人调 | 先查偏移/闸门，不许直接改队列设计 |

**探针未执行**（本轮不允许新 hook）。它属于"下一次真机操作"的第一步，
顺序必须是：**thread_probe（只读）→ dry-run 桥（只统计）→ 打开发送**。

---

## 3. 协议完善（v1 → v2）

### 3.1 字段

| off | size | v1 | **v2（本轮）** | 作用 |
|---|---|---|---|---|
| 0 | 4 | magic | magic `'TGZ2'` | 帧同步 |
| 4 | 1 | ver=1 | **ver=2** | 版本不符直接拒 |
| 5 | 1 | flags | flags | bit0 合成载荷 |
| 6 | 2 | hdr_len | hdr_len=40 | 防御性自检 |
| 8 | 4 | seq | seq | 每 epoch 内单调 +1，缺口 = 丢帧 |
| 12 | 8 | ts_us | ts_us（CLOCK_MONOTONIC） | 端到端延迟、过期判定 |
| 20 | 4 | ~~frames_total~~（与 seq+1 重复） | **epoch（发送端实例标识）** | **识别发送端重启** |
| 24 | 4 | rate | rate=16000 | 格式校验 |
| 28/30 | 2/2 | ch/bits | ch=1 / bits=16 | 格式校验 |
| 32 | 4 | payload_len | payload_len=1280 | 帧长校验 |
| 36 | 4 | crc | crc = FNV-1a(payload) | 完整性 |

`ver` 提到 2 是刻意的：字段 20 语义变了，老接收端必须拒收而不是误读。

### 3.2 五种异常场景的处理（本轮已实现并测过）

| 场景 | 处理 | 证据 |
|---|---|---|
| **发送端重启** | 新 `epoch` ⇒ 接收端重开会话（`have_seq=0`），**不把序号跳变算成丢帧**；`epochs++` | A-SHELL case5：两个客户端（epoch 不同）共 300 帧，`missing=0` |
| **接收端重启** | 接收端重新 `bind` 即可；发送端看不到对端，`sendto` 报错由重连处理 | 设计推演（U）；PC 侧靠 `--secs` 起停覆盖 |
| **socket 断开** | 发送端 `EPIPE/ECONNRESET/ECONNREFUSED` ⇒ 关闭并 500 ms 后重连，期间帧按过期丢 | 代码路径（U，未构造真实断开） |
| **接收缓冲满** | 发送端 `EAGAIN` ⇒ 丢帧 + `send_drop_wb++`，**绝不重试/等待** | A-SHELL case2：`eagain=42`，`send_us_max=5.2 ms` |
| **过期帧** | 接收端 `--max-age-ms`（默认 500）：`rx - ts > 阈值` 直接丢并计 `stale`；发送端连不上时也把环内帧按过期清掉 | A-SHELL case2：`stale=8`；PC `stale` 场景 |

**不允许无限积累旧语音**这一点在两端各有一道闸：发送端 `MAX_AGE_MS`（JS）/`--max-age-ms`（C），
接收端同样按 `ts_us` 丢过期帧。任一端单独生效就足以封住。

### 3.3 独立验证

`verify_capture.py`（Python，独立重写协议）对同一帧独立算 FNV-1a + 重算 640 个样本做逐字节比对，
并能按 `epoch` 分组核对连续性。PC 侧 4 个 cap 全部 PASS（详见 `03_pcm_bridge_test.md` §5）。

---

## 4. Android 原生 DGRAM 测试（新增）

`03_uds_test/android_uds_test/`：`dgram_server.c` + `dgram_client.c`，用 NDK r21e
`armv7a-linux-androideabi26-clang -static` 编译为 **ELF32 ARM EABI5 静态可执行**，
推到 `/data/local/tmp/tgz2_uds/` 以 **shell 域**运行（`uid=2000(shell)`，无 root）。

结果见 `03_pcm_bridge_test.md` §6。三条新事实（A-SHELL）：

1. **帧边界成立**：一次 `recv` = 一帧，`bad.len=0`、`partial=0`。
2. **满缓冲只报 EAGAIN（errno 11）**：`enobufs` 全程为 0。原设计把 ENOBUFS 当主要错误是错的
   （ENOBUFS 是 netlink/packet 套接字的典型错误，AF_UNIX 走 `EAGAIN`）。处理逻辑保留两者，但注释与文档已改。
3. **`SO_SNDBUF/SO_RCVBUF` 请求 8192 → 内核回读 16384**：Linux 会把请求值翻倍，实际可用约 10 帧。
   设计里"设 8 KB"应理解为"内核报告约 16 KB"。

---

## 5. 仍未做（本轮明确不做）

| 项 | 状态 |
|---|---|
| Zygisk / 原生 SO 注入 | 未开始（按指示停在这里） |
| 真机 `thread_probe.js` | 未执行（属新 hook，需单独授权） |
| 真机 dry-run 桥 / 打开发送 | 未执行（T-DEV = 0） |
| 原厂唤醒成功率 | 未测 |
| 改 APK / SO / 系统分区 | 未做 |
| 设备上安装常驻模块 | 未做 |

设备上本轮只新增了 `/data/local/tmp/tgz2_uds/`（两个测试二进制 + 脚本 + 日志），
删除命令：`adb shell rm -rf /data/local/tmp/tgz2_uds`。
