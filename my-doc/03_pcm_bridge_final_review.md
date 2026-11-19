# 第三阶段最终修订回执（`pcm_bridge_draft.js` 修订 3）

对象：`03_uds_test/pcm_bridge_draft.js`
本轮范围：**只修现有问题**。没有跑真机 Hook、没有跑 thread_probe、没有跑 PCM Bridge、没有开发 Zygisk、
没有改动原厂 APK / SO / boot / system。

---

## 0. 证据等级（全文统一）

| 标记 | 含义 | 本轮 |
|---|---|---|
| **W-PC** | Windows 主机实测（本机进程/本机编译，非目标设备） | ✅ 有 |
| **A-SHELL** | TG-Z02 普通 shell 进程实测（不注入、不 hook） | 本轮未新增（沿用上一轮） |
| **T-DEV** | TG-Z02 **原厂进程内**实测（`smartapp:core` + hook） | ❌ **0** |
| **S-RE** | 静态逆向（反汇编 / ELF） | ✅（见 01/02 文档） |
| **DOC** | Frida 官方 API 文档语义 | ✅ 引用 |
| **U** | 尚未验证 | — |

> 本文件里所有"实测"都是 **W-PC**：在本机进程里跑的 JS 与 C 程序。
> **没有任何一条来自原厂进程。**

---

## 1. 必须修复项

### 1.1 FNV-1a 的 32 位乘法精度（已修，W-PC 已验证）

**问题**：修订 2 写的是 `((h ^ byte) * 16777619) >>> 0`。
JS 的 `*` 是 IEEE-754 double，`h ^ byte` 最大 2³²−1，乘 16777619 后约 7.2×10¹⁶，
**远超 2⁵³（9.0×10¹⁵）**，低位被舍入 → 与 C 的 `h *= 16777619u`（uint32 回绕）不一致。
协议里 `crc` 是接收端校验完整性的依据，JS 端算错就等于**每帧都带着错误的 CRC**（接收端会全丢）。

**修正**：
```js
/* FNV-BEGIN */
function fnvStep(h, byte) {
  return Math.imul(h ^ byte, 16777619) >>> 0;   /* imul: int32×int32 保留低 32 位 */
}
function fnv2(h, v) {
  h = fnvStep(h, v & 0xFF);
  h = fnvStep(h, (v >> 8) & 0xFF);              /* 小端：先低字节后高字节，与 C 逐字节同序 */
  return h;
}
/* FNV-END */
```
这两行夹在 `FNV-BEGIN/END` 标记之间，**测试直接用标记把它从发布文件里抽出来执行**，
所以测的就是跑在设备上的那段代码，不存在"测试副本与实际实现漂移"。

**对照测试**：`03_uds_test/crc_crosscheck/`

```
gen_cases.py     -> cases.bin（18 个固定缓冲区，字节级共享）
crc_c.c          -> 编译时 #include "../tgz2_frame.h"，直接调用 tgz2_fnv1a()
crc_test.js      -> 从 pcm_bridge_draft.js 抽取 FNV 块后 eval，逐 case 计算
run_crosscheck.py-> 编译 + 运行两侧 + 逐行比对 + 跑反面对照
```

18 个用例覆盖（**W-PC**）：

| # | 用例 | len | 覆盖点 | C | JS |
|---|---|---|---|---|---|
| 0 | `real_ch0` | 1280 | **真实设备 PCM**（`pcm_talk.raw` 第 0 帧 ch0） | `0x38ea3a26` | 同 |
| 1 | `zeros_1280` | 1280 | 全零 | `0x09d6a1c5` | 同 |
| 2 | `ones_ffff` | 1280 | 全 `0xFF` | `0xef05fec5` | 同 |
| 3 | `minus1_x640` | 1280 | **负数 int16**（−1 × 640） | `0xef05fec5` | 同 |
| 4 | `min_int16_x640` | 1280 | 边界 `INT16_MIN` | `0xa7baa1c5` | 同 |
| 5 | `max_int16_x640` | 1280 | 边界 `INT16_MAX` | `0x192dfec5` | 同 |
| 6 | `alt_minmax` | 1280 | 正负边界交替 | `0xd54f5345` | 同 |
| 7 | `neg_ramp` | 1280 | 负数斜坡（逐样本变化） | `0xdc0d8cd6` | 同 |
| 8–10 | `synth_seq*` | 1280 | 协议合成载荷（seq 0/1/12345） | `0xfafd7bfe` / `0xee980ac9` / `0x1b24072d` | 同 |
| 11 | `len0` | 0 | 空输入 → 应为 offset basis | `0x811c9dc5` | 同 |
| 12–16 | `len1/2/3/7/13` | 1…13 | **奇数长度**（考验尾部单字节处理） | … | 同 |
| 17 | `len1023` | 1023 | 奇数长 + 跨 1 KB | `0x5a2412a1` | 同 |

结果：**18/18 与 C 完全一致，RESULT: PASS**。
反面对照（把 `Math.imul` 换回普通 `*`，即修订 2 的写法）：**17/18 与 C 不一致**
（唯一"碰巧一致"的是 `len0`——没有发生乘法）。这证明这条修正是必需的，不是洁癖。

> 附带的语义确认：`minus1_x640` 与 `ones_ffff` 的 CRC 相同，因为二者字节完全相同（−1 的 LE 表示就是 `FF FF`）——
> 说明 JS 侧按字节喂入、按 `& 0xFF` / `>> 8 & 0xFF` 拆分的确与 C 的顺序一致。

### 1.2 `Script.bindWeak({}, cb)` 的生命周期隐患（已修，DOC + W-PC）

**先查证 Frida API 的实际语义**（DOC，`Script.bindWeak` 官方 Typedoc）：

> `bindWeak(target: any, callback: WeakRefCallback): WeakRefId`
> "Starts monitoring the lifetime of `target`. Calls `callback` as soon as **value has been garbage-collected,
> or the script is about to get unloaded**."
> — <https://rada.re/doc/frida/functions/Script.bindWeak.html>

也就是说：回调有 **两个** 触发条件——**对象被 GC**，**或脚本即将卸载**。
`{}` 没有强引用，第一个条件随时可能成立 → **回调会在脚本还活着的时候触发**，
也就是把正在用的 fd 关掉（旁路当场断流，且看似"莫名失败"）。

**W-PC 实测**（`bindweak_probe.js` + `bindweak_run.py`，在本机 `cmd.exe` 进程里跑，不 attach 任何目标、不装 Interceptor）：

```
64 个无强引用的 {}      → 回调触发 64 次（全部在脚本运行期间）
1  个强引用对象 KEEPER  → 回调触发 0 次
迭代 120 次、堆约 6.1 MB 时结束
VERDICT: unreferenced {} WAS collected during run -> callback fired early
```

即：**64/64 提前触发**。这不是理论风险。

**修正后的清理设计**（三级，且都不依赖"不可靠的额外机制"）：

| 优先级 | 机制 | 可靠性 | 说明 |
|---|---|---|---|
| 1 | `rpc.exports.stop()`（宿主在 `script.unload()` 前显式调用） | 确定 | `teardown()`：`clearInterval` + `closeSock()`；返回当前统计 |
| 2 | `Script.bindWeak(LIFECYCLE, teardown)`，`LIFECYCLE` 是**模块级强引用对象** | 确定（按上面的文档语义） | 不再可能被提前回收，因此只会因"即将卸载"触发 |
| 3 | 目标进程退出 | 由内核保证 | fd 随进程一起回收 —— 这是唯一真正"自动"的路径，本文件如实写明 |

**没有引入的东西**：没有用 `{}` 作触发器；没有加"空闲 N 秒自动关 socket"之类的猜测性机制
（理由：那会引入自己的时序 bug，而 fd 泄漏已有上面三级覆盖；
若 frida-server 被 `kill -9`（既无 unload 也无进程退出），fd 会残留到目标进程结束为止 —— 这一点在 §3 明确列为 U）。

另外把 `disable()` 里的 `close()` 挪出了 hook：现在只置 `st.wantsClose = true`，
由 **tick 线程**执行真正的 `close()`，保证 hook 内不做任何 syscall。

---

## 2. 逐项核对（对应审查意见 §二）

| # | 项目 | 核对结果 | 状态 |
|---|---|---|---|
| 2.1 | `sendto()` 连接式 DGRAM 的参数与返回值 | 已 `connect()` 的 dgram 用 `sendto(fd, buf, len, 0, NULL, 0)`：目标地址由内核记录的 peer 决定，`addrlen=0` 是**唯一正确**写法（传地址反而可能被拒）。返回值按 `ssize_t` 处理：`=== MSG_LEN` 成功、`<0` 按 `errno` 分类、`0<n<MSG_LEN` 记为异常（dgram 不应出现半包）。发送端只判 `EAGAIN(11)/ENOBUFS(105)` 为"丢弃"，其余按"对端消失/其它"分流 | 修正（F3） |
| 2.2 | ARM32 `NativeFunction` 类型 | `int(socket/connect/fcntl/close/clock_gettime)`、`long(sendto→ssize_t)`、`ulong(size_t)`、`pointer`、`int(socklen_t)`——arm32 ILP32 下 `int=long=4B`，声明一致。注意：**若日后移植 arm64，`ssize_t/long` 变 8 字节，`sendto` 的 `long` 仍然正确**，但 `int` 类的 `socklen_t` 需复核 | 已核（S-RE ABI 常识） |
| 2.3 | `clock_gettime` / `timespec` / `writeU64` | arm32 `timespec` = `{int32 tv_sec; int32 tv_nsec;}`（8 B），按 `readS32`×2 读取；新增校验 `0 ≤ nsec < 1e9`，异常计入新计数器 `clockFail`（原来失败会静默返回 0，导致该帧被误判为"极旧"而丢弃）。`ts = sec*1e6 + nsec/1000` 最大约 1e11，**< 2⁵³**，`writeU64(number)` 精确 | 修正（F4） |
| 2.4 | 抽象命名空间 `sockaddr` 长度 | `sun_family(2B) + sun_path`；抽象：`sun_path[0]=0` + 名字 → `2 + 1 + strlen`，**不计结尾 NUL**；文件：`2 + strlen + 1`（**计 NUL**）。两者都写成 `3 + strlen` 但成因不同，代码里已分别注释，避免后人误改 | 已核（与 Linux `offsetof(sun_path)+1+len` 一致） |
| 2.5 | socket 错误路径 / 重复关闭 / 泄漏 | 收敛成**单一所有者** `fdOwner.owned` + `st.fd`，任何关闭都必须走 `closeSock()`（幂等：先置 `owned=false`）。6 条失败路径逐条核：`socket()<0`（无 fd 可关）、`F_SETFL<0`（关一次后 disable）、`F_GETFL` 未置位（同）、`connect()<0`（关一次）、`try/catch` 中已 connect（交给 `closeSock()`）、`send` 报对端消失（`closeSock()`）。**未发现重复关闭或泄漏** | 修正（F5） |
| 2.6 | `DRY_RUN` 是否真的不建 socket、不发送 | `ensureSock()` 第一行 `if (DRY_RUN) return false;`，且 `drain()` 里写成 `if (!DRY_RUN && !ensureSock(now))`，**DRY_RUN 下根本不会进入 `socket()/connect()`**；发送分支是 `if (DRY_RUN) { st.sent++; } else { sendto(...) }`。仍然保留 `bindLibc()`（只为 `clock_gettime`，不产生 fd），并照常装 hook + 统计 —— 这正是"闸 4 只统计"想要的行为 | 修正（F6） |
| 2.7 | hook 异常是否可能影响原厂 `feed` | `onEnter` 整体包 `try`；`catch` 里连 `st.hookEx++` 也再包一层 `try`（防止计数路径自身抛错穿出）；只读 `args[2]/args[3]`，**不写 `context`、不改返回值、不动栈**；`disable()` 不再在 hook 内做 syscall；异常只让"这一帧作废"（`idx.tail` 未推进，槽位不会被发出去）。没有 `onLeave`，因此不可能影响返回路径 | 修正（F8） |
| 2.8 | 环形缓冲的并发风险 | **不得宣称 SPSC 已安全**。现在的处理是"**未验证 + 运行时守卫**"：首次进入 hook 的 tid 记为 `producerTid`，一旦出现**不同** tid 立即 `disable('multi-producer:<tid>')`（宁可停掉旁路，也不冒写坏数据的风险）。守卫的**局限**也写明：它只能发现"跨线程交替调用"，无法证明"只有一个线程"（线程自己重入不存在，ARM 上单线程内不会并发）。真正的结论要等 `thread_probe.js` 跑出来（本轮禁止执行） | 未解决（U）+ 有守卫 |

---

## 3. 仍未解决 / 仍未验证

| # | 项 | 等级 | 说明 |
|---|---|---|---|
| 1 | `feed` 是否单生产者 | **U** | `thread_probe.js` 已就绪但**本轮不执行**；在此之前 SPSC 只有运行时守卫，不算证明 |
| 2 | 桥在真机上的一切行为（hook 耗时、CRC 端到端、唤醒成功率） | **U**（T-DEV=0） | 需要单独授权的 30 秒短测 |
| 3 | `kill -9 frida-server`（既无 unload 也无进程退出）时的 fd 归属 | **U** | 按设计 fd 会残留到目标进程结束；是否需要在方案 B（Zygisk 原生 SO）里彻底消除，留给下一阶段 |
| 4 | 抽象命名空间在 `:core` ↔ 助手进程之间是否可达 | **U** | A-SHELL 只证明了 shell↔shell |
| 5 | `Math.imul` 在目标 Frida 版本 V8 中可用 | **U**（但依据充分） | `Math.imul` 是 ES2015，Frida 16.x 的 V8 必然具备；真机首次运行会由 `ready` 消息里的统计暴露（CRC 全帧被接收端拒收即为异常信号） |
| 6 | 固件 OTA 后三级闸门是否仍拦得住 | **U** | 每次 OTA 重跑闸 1~3 |

---

## 4. 本轮没有做的事（按禁止事项逐条确认）

| 禁止项 | 状态 |
|---|---|
| 真机 Hook | ❌ 未执行（`Interceptor.attach` 只在脚本里，没在任何设备上加载） |
| `thread_probe` | ❌ 未执行 |
| PCM Bridge | ❌ 未执行 |
| Zygisk | ❌ 未开始 |
| 改 APK / SO / boot / system | ❌ 未改动 |
| 把 PC / Android shell 结果说成原厂实测 | ✅ 全文按 W-PC / A-SHELL / T-DEV / S-RE / U 标注 |

设备侧本轮**零操作**（没有新的 push、没有新的进程）。

---

## 5. 复现

```powershell
# 1) 语法检查（真实 ES 解析器）
node --check D:\tgz02\OS\system\my-doc\03_uds_test\pcm_bridge_draft.js

# 2) JS/C CRC 对照（18 个用例 + 反面对照）
cd D:\tgz02\OS\system\my-doc\03_uds_test\crc_crosscheck
python run_crosscheck.py

# 3) bindWeak 语义实测（本机进程，不 attach 任何目标）
cd ..
python bindweak_run.py
```

---

## 6. 本轮新增/修改的文件

| 文件 | 变化 |
|---|---|
| `03_uds_test/pcm_bridge_draft.js` | 修订 3：F1–F8（FNV `Math.imul`、生命周期、sendto、timespec、fd 所有者、DRY_RUN、单生产者守卫、hook 异常） |
| `03_uds_test/crc_crosscheck/gen_cases.py` | 新增：18 个用例生成（含真实 ch0） |
| `03_uds_test/crc_crosscheck/crc_c.c` | 新增：C 侧，直接 `#include "../tgz2_frame.h"` |
| `03_uds_test/crc_crosscheck/crc_test.js` | 新增：JS 侧，从发布文件抽取 FNV 块执行 |
| `03_uds_test/crc_crosscheck/run_crosscheck.py` | 新增：编译 + 运行 + 比对 + 反面对照 |
| `03_uds_test/crc_crosscheck/crosscheck_result.json` | 新增：18/18 一致的机读结果 |
| `03_uds_test/bindweak_probe.js` / `bindweak_run.py` | 新增：`Script.bindWeak` 生命周期实测（本机） |
| `03_pcm_bridge_final_review.md` | 本文件 |

---

## 7. 补充审查（round 4）—— 三个缺陷 + 文档同步

本轮证据等级：全部为 **W-PC**（node 单测 / 本机编译），**T-DEV 仍为 0**。

### 7.1 timespec 指针偏移错误（已修，W-PC）

```js
// 错（修订 3）：两次读同一个地址，tv_nsec 恒等于 tv_sec
var s = tsMem.readS32(), n = tsMem.readS32();

// 对（修订 4）：arm32 struct timespec { int32 tv_sec; int32 tv_nsec; } 共 8 字节
var s = buf.readS32();
var n = buf.add(4).readS32();
```

**影响（这不是"略微偏一点"）**：`ts_us = sec*1e6 + sec/1000`，等于把秒数当纳秒用。
例如真实 `sec=12345, nsec=678901234` 应为 `12345678901 µs`，旧代码得到 `12345000012 µs`；
差值 178 889 µs ≈ **179 ms 的固定偏移**，且随运行时间线性变差（sec 越大偏得越多）。
后果：接收端 `--max-age-ms` 的过期判定、端到端延迟统计全部失真。

修正做法：把解码单独抽成 `decodeTimespec(buf)`，用 `/* TS-BEGIN */ … /* TS-END */` 标记包住，
**单元测试直接从发布文件抽取这段执行**（与 FNV 同一套做法，杜绝测试副本漂移）。

| 用例 | 期望 | 说明 |
|---|---|---|
| (0, 0) | 0 | 基准 |
| (12345, 678901234) | 12345678901 | 常规值；旧代码得 12345000012 |
| (100, 500) | 100000000 | 500 ns 截断为 0 µs（`|0` 语义，与 C 一致） |
| (1, 999999999) | 1999999 | nsec 上界 |
| **(7, 999999)** | **7000999** | **陷阱用例：旧写法会得 7000000，测试显式断言 ≠ 7000000** |
| (−1, 0) / (0, −1) / (0, 1e9) | −1 | 非法值全部返回 −1 |
| (0, 999999999) | 999999 | 上界内 |

**顺带更正上一轮 §2.3 的结论**：该表当时写"按 `readS32`×2 读取"——语义没错，但**代码实际写成了同一地址读两次**，
而我当时只核对了"8 字节、sec@0/nsec@4"这一层，没有核到调用点。这一轮把核对下沉成单元测试，就是为了不再犯同类错误。

### 7.2 时钟失败时必须丢帧（已修，W-PC）

修订 3 的行为：`nowUs()` 失败返回 0，但调用方照用 → **ts=0 的帧被放进环并发送**。
接收端看到 `ts=0` 时 `rx - ts` 是一个巨大的数，会被 `--max-age-ms` 全部判成过期（或反之，取决于实现），
属于"静默产生毒帧"。

修正（两处独立拦截）：

| 位置 | 代码 | 计数 |
|---|---|---|
| hook | `var ts = nowUs(); if (ts === 0) { st.clockDrop++; return; }` —— 不写 ts、不进环 | `clockDrop` |
| drain | `if (now === 0) { st.noClockTicks++; return; }` —— 不发，也**不拿 0 去算 age**（否则整环会被误判过期） | `noClockTicks` |

两个计数都已并入 `stat` 消息与 `rpc.exports.stats()`。

**故障注入测试**（`tests/bridge_unit_test.js` T3，两种故障）：
`clock_gettime` 返回 −1；`tv_nsec = 1e9`（非法）。两种情况下都验证：

- `frames = 0`、`clockDrop = 1`、`clockFail ≥ 1`
- tick 触发后 `sendto` 调用 **0 次**、`sent = 0`
- 环槽前 8 字节仍全零 → **不存在 ts=0 的帧**被发出去
- T4 另测"时钟恢复后立刻恢复正常发送"（`frames=1`、有 `sendto`）

### 7.3 `thread_probe` 到点自动卸载（已修，W-PC + 代码审查）

修订 3 的探针到 30 秒只是 `stopped = true`，**Interceptor 一直挂着**（继续吃 CPU、继续计数、还占着 trampoline）。

修订 4 改成单一收尾函数 `finish(reason)`：

```js
dump('FINAL'); verdict();
if (listener !== null) { listener.detach(); listener = null; }
if (dumpTimer !== null) { clearInterval(dumpTimer); dumpTimer = null; }
if (stopTimer !== null) { clearTimeout(stopTimer); stopTimer = null; }
```

并保证：`stopped` 守卫使 `finish()` 幂等；**安装阶段任何失败**（模块缺失 / 符号缺失 / 偏移不符 / 签名不符 / attach 抛异常）
都走同一条 `finish()`，此时 listener 还没有，因此既不 detach 也不创建任何定时器。

验证：`tests/probe_detach_test.js`，**43 条断言全过**（在本机 node 里加载原文件，不连设备）：

| 组 | 断言数 | 内容 |
|---|---|---|
| P1 正常 | 13 | Hook=1、interval=1、timeout=1；到点后 detach 1 次、FINAL 打印 1 次、clearInterval/clearTimeout 各 1 次 |
| P2 幂等 | — | 重复触发不再 detach / 不再 clear；停止后 `onEnter` 直接返回 |
| P3 安装失败 | 25 | 五种失败各自 Hook=0、interval=0、timeout=0、detach=0，且打印停止原因 |
| P4 统计 | 5 | 双线程 `threads=2`、长度直方图 `5120→2`/`320→1`、多线程给出 MPSC 警告、仍会 detach |

### 7.4 协议版本注释同步（已修）

`tgz2_frame.h` 文件头注释仍是 `wire protocol v1`、字段表仍是 `ver 1`，而 `TGZ2_VER` 早已是 2。已改为：

- 标题：`wire protocol v2`
- 字段表：`4  1  ver  2`
- 增补一句：`v1 -> v2 的唯一变化：offset 20 由 frames_total 改为 epoch …`

### 7.5 本轮验证门禁（全部通过）

| 门禁 | 结果 |
|---|---|
| `node --check pcm_bridge_draft.js` | 通过 |
| `node --check thread_probe.js` | 通过 |
| `node --check tests/*.js` | 通过 |
| JS/C CRC 18 组对照 | **18/18 一致**（反面对照 17/18 不一致） |
| timespec 单元测试 | 11 条断言（含陷阱用例） |
| 时钟失败丢帧测试 | 14 条断言（两种故障 + 恢复） |
| bridge 单测合计 | **61 passed / 0 failed** |
| thread_probe detach 单测 | **43 passed / 0 failed** |
| UTF-8 完整性扫描 | 35 个文本文件，**0 损坏** |

### 7.6 仍未解决（U，未变）

| # | 项 | 说明 |
|---|---|---|
| 1 | `feed` 是否单生产者 | `thread_probe` 本轮禁止执行，SPSC 仍只有运行时守卫 |
| 2 | 桥在真机的一切行为 | **T-DEV = 0**；单测跑的是**假 Frida 环境**，不等于真机 |
| 3 | `kill -9 frida-server` 时的 fd 归属 | 设计上残留到目标进程退出 |
| 4 | 抽象命名空间跨 `:core` 可达性 | 仅 A-SHELL 级别证据 |
| 5 | 本次 `decodeTimespec` 修正未在真机复核 | 需真机首次运行确认 `ts_us` 与 `CLOCK_MONOTONIC` 一致 |

> 特别声明：本节所有"通过"都是 **W-PC（本机 node / 编译）**，与 TG-Z02 原厂进程无关。

---

## 8. 修订 5：生命周期闭环（按 `_analysis/11.txt` 的补丁）

依据 `11.txt` 的 §6 规则清单、§1.1/§1.2 的可见补丁块、§4/§5 的测试要求实施。
本轮仍然**没有**跑真机 Hook / thread_probe / PCM Bridge，**T-DEV 仍为 0**。

### 8.1 代码改动

| # | 位置 | 改动 |
|---|---|---|
| 1.1 | `LIFECYCLE` 之后 | 新增 `hookListener / hookDetachAttempted / hookDetached / hookDetachError / tick / stat / teardownDone` |
| 1.2 | `installHook()` | 生命周期不活跃时抛 `lifecycle-not-active`；**保存 `Interceptor.attach()` 返回值**；attach 返回 null 也抛错；`onEnter` 三道闸门（`teardownDone` / `LIFECYCLE.alive` / `st.enabled`） |
| 1.3 | 启动段 | 抽出 `startTimers()`；启动失败统一 `catch → st.why='install:…' → teardown()` 回滚 |
| 1.4 | teardown 段 | `teardown()` 幂等；顺序固定为 **关数据闸门 → 清 tick/stat → 最多一次 detach → 关 socket**；新增 `teardownStatus()`，`rpc.stop` 返回 `stopped / hookDetachAttempted / hookDetached / hookDetachError / tickActive / statActive / fd` |
| — | hook 回调 | 不做 detach / close / 定时器清理（`disable()` 只置 `wantsClose`，真正的 close 在 tick 里） |

### 8.2 与 `11.txt` 的一处偏离（需要你确认）

`11.txt` §8.3 要求把 `tgz2_frame.h` 的 seq 注释改成"从 1 开始"。

**但 C 发送端首帧是 0**：`uds_source.c` 第 249 行 `uint32_t seq = 0;`、第 261 行 `h.seq = seq;`（先打包后自增，第 293 行才 `seq++`）。
只有 `pcm_bridge_draft.js` 是"先自增再写帧"，首帧为 1。接收端不依赖起始值（只按增量算缺口）。

若按原文写"从 1 起"，会把 `uds_source.c` 描述错。实际改成：

```
seq  生产序号，同一发送实例内单调 +1（缺口 = 丢帧）；
     起始值由发送端决定：uds_source.c 首帧 0，pcm_bridge_draft.js 首帧 1
```

### 8.3 `thread_probe.js` 判定措辞（已改）

| 场景 | 现在的输出 |
|---|---|
| 窗口内 1 个 tid | `[??] 观察窗口内仅发现 1 个 feed 调用线程；尚不能证明长期单生产者，SPSC 前提仍需谨慎验证` |
| 窗口内 >1 个 tid | `[!!] 观察窗口内发现多个 feed 调用线程 -> SPSC 前提不成立，必须改 MPSC（或每线程独立环）` |
| 0 个 tid | `[..] 观察窗口内没有观测到任何 feed 调用：hook 没装上或该时段无音频` |

头注释也补上了同一限定：**只能观测一个时间窗口**，要真正证明需覆盖静默/唤醒/识别会话/播放全部状态。

### 8.4 实际运行结果（非预估）

| 命令 | 结果 |
|---|---|
| `node --check pcm_bridge_draft.js` | exit 0 |
| `node --check thread_probe.js` | exit 0 |
| `node --check tests/bridge_unit_test.js` | exit 0 |
| `node --check tests/probe_detach_test.js` | exit 0 |
| `node tests/bridge_unit_test.js` | **92 passed / 0 failed**（上一轮 61，本轮 +31） |
| `node tests/probe_detach_test.js` | **44 passed / 0 failed**（上一轮 43，措辞断言更新后 +1） |
| `python crc_crosscheck/run_crosscheck.py` | **RESULT: PASS，18/18 与 C 一致**（反面对照 17/18 不一致） |

完整输出留档：`03_uds_test/_run/round5_test_output.txt`。

### 8.5 新增的生命周期测试（T7–T11，31 条断言）

| 用例 | 覆盖 |
|---|---|
| T7 `stop` 正常路径 | 先关闸门 → `clearInterval` 两次 → `detach` 一次 → `close` 一次；`tickActive/statActive=false`；stop 后 tick 不再 `sendto`、hook 不再入环 |
| T8 幂等 | 三次 `stop()` 都返回 `stopped=true`；detach 只 1 次、clearInterval 只 2 次 |
| T9 detach 抛异常 | `hookDetachError` 记录异常，`hookDetached=false`，但定时器与 socket 仍被清理（先建 socket 再 stop，断言 `close` 恰好 +1） |
| T10 attach 失败 | `enabled=false`、`why` 以 `install:` 开头、无 hook、**无任何定时器**、`hookDetachAttempted=false` |
| T11 stop 后不再发送 | stop 关闭 socket 恰好一次，之后 tick 不再 `sendto` |

### 8.6 过程中修掉的一处**测试自身**缺陷

T9 最初断言"socket 仍然被关闭"，但该用例从未建过 socket（`fd=-1` → `closeSock()` 正确什么都不做），
断言因此失败。已改为先 `feed + tick` 真建出 socket，再 `stop`，断言 `close` 增量恰好 1 —— 属于**测试补强**，不是放宽断言。

### 8.7 本轮仍未解决（U）

| # | 项 | 说明 |
|---|---|---|
| 1 | 测试环境是**假 Frida**，不是真机 | `Interceptor`/`Memory`/`NativeFunction` 全是桩；真机行为仍需 T-DEV 验证 |
| 2 | `teardown` 与 `drain` 的并发 | JS 单线程，不存在真正并发；但若 `stop()` 恰在 `drain()` 执行中到来，会排在其后执行——行为上安全，未做显式建模 |
| 3 | `feed` 是否单生产者 | 探针仍未执行；守卫只能发现跨 tid 交替 |
| 4 | frida-server 被 `kill -9` 时的 fd 归属 | 设计上残留到目标进程退出 |

> 再次声明：§8 全部为 **W-PC**，`T-DEV = 0`。

---

## 8.8 修订 5 补充审查：初始化失败路径

依据 `11.txt` 的补充要求，补上"初始化失败时资源未清理干净"的缺口。基线：`main @ b9434fdc`，
`pcm_bridge_draft.js` blob `6c7277f4…`、`thread_probe.js` blob `46fb3409…`（改前已核对一致）。

### 8.8.1 代码已修改（本轮实际改动）

| # | 文件 | 改动 | 状态 |
|---|---|---|---|
| 1 | `pcm_bridge_draft.js` | `installHook()` 尾部：`if (hookListener === null \|\| undefined)` → `if (!hookListener \|\| typeof hookListener.detach !== 'function')`，并把 `hookListener` 置空后抛 `attach-returned-invalid-listener`。**无效 listener 不再被当成"已卸载"** | 已改 |
| 2 | `pcm_bridge_draft.js` | 启动块：`startTimers()` 移进 `if (st.enabled)` 内部。模块缺失/符号缺失/偏移不符/签名不符时**根本不会创建 tick/stat** | 已改 |
| 3 | `thread_probe.js` | `feed.readByteArray(16)` 包 `try/catch` → `finish('sig-read-failed')`，不再可能异常退出 | 已改 |
| 4 | `thread_probe.js` | attach 后校验 `typeof listener.detach === 'function'`，否则 `listener = null` + `finish('invalid-listener')`；无效 listener 不进入定时器阶段 | 已改 |
| 5 | `thread_probe.js` | 两个定时器创建包 `try/catch` + 句柄校验 → `finish('timer-setup-failed')`；`finish()` 改为每一步独立 `try`，且只清理"确实创建成功"的资源 | 已改 |

未触碰：PCM 抽取、FNV/CRC、时间戳、socket 协议、`drain()`、`teardown()` 清理顺序、帧格式/采样参数/通道抽取。

### 8.8.2 一处行为说明（不是遗漏）

`startTimers()` 内部两个 `setInterval` 之间**没有**提前返回：若第 1 个返回 `null/undefined`（而不是抛异常），
第 2 个仍会被调用，随后由合并守卫抛错并交给 `teardown()` 清理。
结果是**没有存活的定时器**（`tickActive=false && statActive=false`），只是多了一次创建 + 一次清理。
本轮按"不扩大修改范围"的要求没有改这个执行流，单测改为断言"存活定时器数量 = 0"而不是断言"第二次没有被调用"。

### 8.8.3 测试已运行且通过（W-PC）

| 命令 | 结果 |
|---|---|
| `node --check pcm_bridge_draft.js` | exit 0 |
| `node --check thread_probe.js` | exit 0 |
| `node --check tests/bridge_unit_test.js` | exit 0 |
| `node --check tests/probe_detach_test.js` | exit 0 |
| `node tests/bridge_unit_test.js` | **153 passed / 0 failed**（上一轮 92，新增 61 条） |
| `node tests/probe_detach_test.js` | **91 passed / 0 failed**（上一轮 44，新增 47 条） |
| `python crc_crosscheck/run_crosscheck.py` | **RESULT: PASS，18/18 与 C 一致**（反面对照 17/18 不一致） |

完整日志：`my-doc/03_uds_test/_run/round5_supplement_test_output.txt`（已入库）。

### 8.8.4 bridge 单测新增项

| 用例 | 覆盖 |
|---|---|
| T12 预检失败 ×4 | 模块缺失 / 符号缺失 / 偏移不符 / 签名不符：`Hook=0`、`interval 创建=0`（`setInterval` 根本没被调用）、`stats.enabled=false` |
| T13 无效 listener ×2 | 返回 `null` 与 `{}`：`enabled=false`、`why=install:attach-returned-invalid-listener`、`interval=0`、`detachCount=0`（**不声称已卸载**）、`stop()` 可安全调用、重复 `stop()` 不重复清理 |
| T14 定时器失败 ×4 | 第 1 次 `setInterval` 抛异常（detach 1、clear 0）；第 2 次抛异常（detach 1、clear 1、`fd=-1`、重复 stop 不重复清理）；第 1/2 次返回 `null`（存活定时器 = 0） |

### 8.8.5 probe_detach_test 新增项（P5）

| 用例 | 断言要点 |
|---|---|
| P5.1 读签名抛异常 | `reason=sig-read-failed`；Hook/interval/timeout/detach 全 0；`finish` 只执行一次 |
| P5.2 attach 返回 null | `reason=invalid-listener`；同上全 0 |
| P5.3 attach 返回 `{}` | `reason=invalid-listener`；同上全 0 |
| P5.4 `setInterval` 抛异常 | detach=1、clearInterval=0、clearTimeout=0 |
| P5.5 `setInterval` 返回 null | detach=1、**未创建 timeout**、无残留 interval |
| P5.6 `setTimeout` 抛异常 | detach=1、clearInterval=1、clearTimeout=0 |
| P5.7 `setTimeout` 返回 null | detach=1、clearInterval=1、无残留 timeout |
| P5.8 重复触发 | 正常路径与失败路径都：detach 不重复、clear 不重复、`probe stopped` 只打印一次 |

### 8.8.6 尚未验证（U，保持不变）

| # | 项 | 说明 |
|---|---|---|
| 1 | 真机行为（hook 耗时、detach 实效、唤醒成功率） | **T-DEV = 0**，本轮未运行 frida-server / thread_probe / bridge |
| 2 | 测试环境是假 Frida | `Interceptor`/`Memory`/`NativeFunction` 全是桩，只证明"代码路径与资源处置逻辑正确" |
| 3 | `feed` 是否单生产者 | 仍需真机探针；当前只有运行时守卫 |
| 4 | `kill -9 frida-server` 时 fd 归属 | 设计上残留到目标进程退出 |

> 本节所有"已通过"均为 **W-PC**。是否进入真机验证由你决定。
