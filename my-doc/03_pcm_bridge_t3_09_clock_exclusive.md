# T3-09：PCM Bridge 多线程 Hook 中 `NativeFunction` 放锁导致的丢帧修复

- 基线：`d49740c59379b29911f2c7c1d467190077838fba`（T3-08 之后）
- 对象：`my-doc/03_uds_test/pcm_bridge_draft.js`
- 结论一句话：**Hook 回调里唯一的一次原生函数调用 `clock_gettime` 原来是 cooperative 调度，
  调用期间会释放脚本锁，第二个原生生产者线程可以在这个窗口进入同一个回调、被 `inHook` 当成重入丢掉。
  T3-09 把它改成 `scheduling:'exclusive'`，窗口关闭，回调真正互斥。**

---

## 1. 问题

### 1.1 代码事实

T3-08 之后的 Hook 主体：

```js
if (inHook) { st.reentryHook++; return; }
inHook = true;
try {
  ...
  var tS = nowUs();                    /* -> libc.clock_gettime(...) */
  if (tS === 0) { st.clockDrop++; return; }
  Memory.copy(dst, src, FRAME_IN);
  slotCapSeq[slotNo] = st.capSeq++;
  slotTsUs[slotNo] = tS;
  idx.tail++;
  st.produced++;
} finally { inHook = false; }
```

`nowUs()` 里的 `clock_gettime` 由 `bindLibc()` 用默认方式创建：

```js
clock_gettime: new NativeFunction(g('clock_gettime'), 'int', ['int', 'pointer'])
```

### 1.2 机制

Frida 的 `NativeFunction` 默认是 **cooperative** 调度：执行原生函数期间**释放 JS 脚本锁**，
让其它线程/其它 JS 有机会运行，返回后再重新取锁。对"在 Hook 回调里取时间戳"这种用法来说，
这一步就是一次**主动让出**：

```
线程 A  进入 onEnter  ->  inHook = true  ->  clock_gettime  =[放锁]=>  ...
线程 B  同时调用 feed  ->  进入 onEnter  ->  inHook 仍为 true  ->  reentryHook++  ->  丢弃 B 的帧
```

A 恢复持锁继续跑完，B 的那一帧 PCM 永远不会入环。这不是"重入"，是**被误判的重入**，
而且丢帧是静默的（只体现为 `hookReentry` 计数增长，接收端表现为序号缺口）。

T3-08 修的是"第二个 TID 直接 `disable()`"，它没有触及这个窗口；当时"Frida JS 单线程 =>
回调互斥"的论证缺了"回调内不释放脚本锁"这个前提。

### 1.3 为什么之前没暴露

真机四轮（唤醒词 ×7、快速连叫、助手播放、会话重杀）以及 T3 的短测都没有复现 `tidCount ≥ 2`
（见 `03_pcm_bridge_t3_08_multitid.md` §4.1），单线程时窗口存在但没有第二个线程来利用它。
**所以 T3-09 修的是代码审阅发现的并发窗口，不是真机观测到的故障。**

---

## 2. 修改内容

### 2.1 `clock_gettime` 改 exclusive（唯一行为改动）

```diff
-  libc = {
-    socket:   new NativeFunction(...),
-    ...
-    close:    new NativeFunction(...),
-    clock_gettime: new NativeFunction(g('clock_gettime'), 'int', ['int', 'pointer'])
-  };
+  var o = {
+    socket:   new NativeFunction(...),
+    connect:  new NativeFunction(...),
+    sendto:   new NativeFunction(...),
+    fcntl:    new NativeFunction(...),
+    close:    new NativeFunction(...)
+  };
+  try {
+    o.clock_gettime = new NativeFunction(g('clock_gettime'), 'int', ['int', 'pointer'],
+                                        { scheduling: 'exclusive' });
+  } catch (e) {
+    st.clockSched = 'unsupported';
+    st.why = 'clock-exclusive-unsupported:' + String(e && e.message ? e.message : e);
+    st.enabled = false;
+    throw new Error(st.why);
+  }
+  st.clockSched = 'exclusive';
```

要点：

1. **只改这一个**。`socket/connect/sendto/fcntl/close` 全部保持默认 cooperative ——
   它们只出现在 20 ms 消费 tick 里，持锁做 socket IO 没有收益、只有风险。
2. **不接受静默降级**。构造抛异常（老 Frida 不认识该选项）时：
   `enabled=false`、`why=clock-exclusive-unsupported:*`、`clockSched='unsupported'`，然后向上抛，
   由安装流程的 catch 回滚（不装 Hook、不建定时器、不建 socket）。
3. **可观测**。`stats()` 新增 `clockSched` / `clockExclusive`，`ready` 上报新增 `clock_sched`，
   `install-failed` 消息带 `clock_sched`，控制台打印 `clock=exclusive`。

### 2.2 保留的并发保护（一条没删）

| 保护 | 状态 |
|---|---|
| `inHook` 重入保护（同线程重入 → `reentryHook++`，丢弃该次） | 保留，位置不变 |
| `inDrain` 消费端重入保护 | 保留 |
| 环边界（`depth >= RING_CAP → ringDrop++`，绝不覆盖） | 保留 |
| 整帧 `Memory.copy` + `slotCapSeq/slotTsUs` + `idx.tail++` 顺序 | 保留 |
| 闸门顺序（enabled → reentry → 参数 → 指针 → 环满 → 时钟） | 保留 |
| T3-08 的 `producerTid / tidCount / otherTidCalls / tids` 统计 | 保留 |
| 生命周期 / teardown / detach / close | 保留 |

未改：Hook 地址 `libsmartbox.so+0xd455c`、签名 `_ZN14AGSpeechEngine4feedEjPKvi`、5120 B 帧、
lane0 抽取、16 kHz/mono/16-bit、TGZ2 v2 40 B 头、abstract socket `tgz2_pcm`、T4 接收端代码。

---

## 3. Hook 内 JS 锁审计（逐项，按真实调用链）

| # | 调用 | 类型 | 会释放脚本锁？ |
|---|---|---|---|
| 1 | `Process.getCurrentThreadId()` | Frida 运行时绑定（C++ 直调），**不是** `NativeFunction` | 否 |
| 2 | `nowUs()` → `libc.clock_gettime(CLOCK_MONOTONIC, tsMem)` | `NativeFunction`，T3-09 起 `scheduling:'exclusive'` | **否**（修复前：是） |
| 3 | `decodeTimespec(tsMem)` → `readS32()` ×2 | `NativePointer` 内建读 | 否 |
| 4 | `args[2].isNull()`、`args[3].toInt32()` | `NativePointer` 内建 | 否 |
| 5 | `indexOfCapSeq` / `depth < RING_CAP` 计算 | 纯 JS | 否 |
| 6 | `Memory.copy(dst, src, 5120)` | 运行时内建（memmove 直调），不经过 `NativeFunction` 调度 | 否 |
| 7 | `slotCapSeq[..]= / slotTsUs[..]= / idx.tail++ / st.*++` | 纯 JS（Float64Array 元素写、对象属性写） | 否 |

结论：回调内**只剩一个**原生调用，且已 exclusive；不存在第二个放锁点。
`nowUs()` 之外没有任何 `libc.*` 出现在 Hook 体内（`T18` 的静态检查仍全绿）。

单元测试把这条审计变成可执行断言（T19c）：一次回调里 `NativeFunction` 调用数为 1、名字是
`clock_gettime`、调度是 `exclusive`、调用时脚本锁在本线程手上、`lockEvents` 中 release 事件为 0。

---

## 4. 单元测试（本机执行，`tests/bridge_unit_test.js`）

```
node --check pcm_bridge_draft.js   # exit 0
node tests/bridge_unit_test.js     # === 300 passed, 0 failed ===   (T3-08 时 240)
node tests/probe_detach_test.js    # === 91 passed, 0 failed ===
```

### 4.1 假 Frida 环境新增的"脚本锁"模型

原来的假环境只是顺序调用 `onEnter`，无法区分 cooperative / exclusive。T3-09 在
`tests/bridge_unit_test.js` 里加了一个最小锁模型（**不改被测代码**）：

- `env.jsLock.holder`：当前持锁 TID，`null` 表示无人持锁；
- 线程想进回调就调 `env.enter()`：锁被别的 TID 占着 → 该线程进 `env.foreign` 排队
  （真机上就是阻塞在取锁上），锁一释放就按序恢复；
- `NativeFunction` 桩解析第 4 个参数的 `scheduling`：
  - `cooperative`（默认）：调用前 `holder=null` 并 `pump()` 放行排队线程，返回后再取回锁；
  - `exclusive`：持锁执行，不放行任何人。

于是"两个原生线程的回调是否重叠"完全由被测代码的调度方式决定，不是靠测试手工改 `env.tid` 摆拍。
`env.lockEvents` 记录每次 release/reacquire，`env.nativeTrace` 记录回调内每次原生调用。

### 4.2 新增用例

| 用例 | 覆盖点 | 断言数 |
|---|---|---|
| T19a | `clock_gettime` 的 `NativeFunction` 确实收到 `{scheduling:'exclusive'}`；**只有**它带 scheduling（`socket/connect/sendto/fcntl/close` 全为默认）；`stats().clockSched/clockExclusive`；`ready.clock_sched` | 7 |
| T19b | 源码层：可执行代码里 `scheduling:'exclusive'` 恰好 1 处，且落在 `clock_gettime` 构造上；五个 libc 绑定行内无 scheduling；存在 `clock-exclusive-unsupported` 停止标记；没有 `scheduling:'cooperative'` 的退路写法 | 12 |
| T19c | **调用链审计**：一次回调内 `NativeFunction` 调用数 = 1（`clock_gettime`）、调度 = exclusive、调用时持锁、`lockEvents` release = 0；帧正常入环、`hookEx=0` | 8 |
| T19d | **放锁窗口重叠（exclusive）**：线程 A(19873) 持锁进回调，另外 5 帧来自 14171/19873 交替的线程全部阻塞在锁上 → `frames=6`、`produced=6`、`hookReentry=0`、`hookEx=0`、`clockDrop=0`、`ringDrop=0`、`tidCount=2`、5 个线程真的等锁、`pumped=5`、`pendingEq` 成立；两个 tick 后 6 帧全发出、**seq 连续 1..6**、**每帧载荷逐字节等于各自源帧**、`capSeq=6`（每帧只入环一次） | 20 |
| T19e | **负对照**：同一场景但运行时忽略 `scheduling`（全部 cooperative）→ `frames=1`、`produced=1`、**`hookReentry=5`**、确实观测到 `clock_gettime` 放锁、不变式仍成立 | 5 |
| T19f | 运行时拒绝该选项 → `enabled=false`、`clockSched='unsupported'`、`why=clock-exclusive-unsupported:*`、**没装 Hook**、没建定时器、teardown 已回滚、无 fd 泄漏 | 7 |

合计 60 条新断言，总数 240 → **300**。T14a/b/c/d、T13、T15 原样保留并通过。

### 4.3 测试鉴别力验证（不是"加断言"而是能抓到真问题）

把 `{ scheduling: 'exclusive' }` 临时从**发布文件**里删掉再跑，得到：

```
=== 277 passed, 23 failed ===
FAIL T19c: 它是 exclusive 调度 :: got=cooperative want=exclusive
FAIL T19d: produced = 6（一帧都没丢） :: got=1 want=6
FAIL T19d: hookReentry = 0（另一个 TID 没被误判成重入） :: got=5 want=0
FAIL T19d: 每帧载荷逐字节等于各自源帧 :: got=1 want=6
...
```

即：**没有修复时，6 个并发生产者帧只有 1 帧活下来，另 5 帧被当成重入丢弃。**
恢复文件后 300/0 全绿。

---

## 5. 真机测试（TG-Z02，frida-server 16.7.19 / frida-python 16.7.19）

环境：`192.168.1.9:5555`，`com.alibaba.ailabs.genie.smartapp:core` PID 16112，frida-server `fs32`（root），
`adb forward tcp:27042 tcp:27042`。接收端 `/data/local/tmp/t4/t4_receiver`（T3-09 未改动）。

### 5.1 R0：20 s 冒烟（只验"选项被真机接受"）

| 项 | 结果 |
|---|---|
| `ready` 上报 | `"clock_sched": "exclusive"`；控制台 `[v] installed … clock=exclusive` |
| `stats().clockSched / clockExclusive` | `exclusive` / `true` |
| 帧 | `frames=125 produced=125`（20 s × 25 fps） |
| 健康指标 | `disables=0`、`hookReentry=0`、`drainReentry=0`、`hookEx=0`、`clockFail=0`、`clockDrop=0`、`ringDrop=0` |
| 说明 | 本轮**故意不起接收端**，`noPeerDrop=124`、`sent=0` 属预期 |

结论：**frida-server 16.7.19 接受 `scheduling:'exclusive'`**，安装路径没有走
`clock-exclusive-unsupported` 分支（若走了，`ready` 不会出现、`why` 会是该字符串）。

### 5.2 R1：300 s 真人语音（唤醒词 ×7 + 助手播放 + 环境噪声）

窗口 308 s，Bridge 采集 300 s，T4 接收端 `--secs 308`。

**Bridge 侧**

| 指标 | 值 | 判定 |
|---|---|---|
| `frames` | 7504 | 25.0 fps × 300 s ✔ |
| `produced` | 7504 | 等于 `frames`，无丢弃 ✔ |
| `sent` | 7504 | 全部发出 ✔ |
| `pending` | 0 | 排空 ✔ |
| `crcFrames` | 7504 | 每帧都算 CRC ✔ |
| `hookReentry` / `drainReentry` | **0 / 0** | 无重入、无被误判的重入 ✔ |
| `hookEx` / `drainEx` | 0 / 0 | 无异常逃逸 ✔ |
| `disables` | **0** | 没有自禁用 ✔ |
| `ringDrop` / `sendDrop` / `sendErr` / `stale` / `noPeerDrop` | 0 / 0 / 0 / 0 / 0 | 全 0 ✔ |
| `clockFail` / `clockDrop` / `noClockTicks` | 0 / 0 / 0 | exclusive 调用没有引入时钟问题 ✔ |
| `tidCount` / `otherTidCalls` / `producerTid` | **1 / 0 / 16285** | 本轮仍是单生产者（见 §6） |
| `depthMax` | 6 | 环深度远低于 64 ✔ |
| `latP50 / latP99` | 9.09 ms / 33.13 ms | 与 T3-08 同量级，无退化 ✔ |
| `pendingEq` | true | `frames-produced = lenBad+nullPtr+ringDrop+clockDrop` ✔ |
| `sessions` / `reconnects` | 1 / 0 | 单会话 ✔ |
| `why` | `ok` | ✔ |

**T4 接收端**

| 指标 | 值 |
|---|---|
| `received / accepted / processed` | 7504 / 7504 / 7504 |
| `bad_len / bad_crc / missing / duplicate / reorder` | 0 / 0 / 0 / 0 / 0 |
| `queue_drop / queue_depth / queue_high_watermark` | 0 / 0 / 4 |
| `seq_first .. seq_last` | 1 .. 7504（连续） |
| `segments` | 37（`segment_write_errors=0`） |
| `noise_rms` | 89.22 |

即：**一侧 7504 帧全出，另一侧 7504 帧全收，序号连续、CRC 全对、零丢弃。**
（`segments=37` 比 T3-08 的 32 略多，属 VAD 对本次朗读节奏/噪声的切分差异，与 T3-09 无关——
T4 代码和阈值本轮未改动。）

原始日志：`03_uds_test/evidence_t3_09/`（`bridge_T309_300s.log`、`bridge_T309_smoke_20s.log`、
`receiver_T309_300s.log`）。

### 5.3 回归

| 项 | 结果 |
|---|---|
| `node --check pcm_bridge_draft.js` | exit 0 |
| `node tests/bridge_unit_test.js` | **300 passed, 0 failed** |
| `node tests/probe_detach_test.js` | **91 passed, 0 failed** |
| 真机 `drain_test`（T4，未改动） | **34 passed, 0 failed** |
| 采集后原厂进程 | `:core` PID 16112 仍存活，原厂唤醒/应答正常（37 段语音中含 7 次唤醒与助手播报） |

## 6. 仍然无法验证的部分

1. **真机多 TID 尚未复现**（T3-08 与 T3-09 两轮均如此：`tidCount` 恒为 1，生产者 TID 16285）。
   T3-09 因此仍然没有"真机上两个线程在 `clock_gettime` 窗口内重叠"的直接观测；
   该窗口的证据全部来自单元测试（T19d 正例 / T19e 负对照）。
   本轮的意义是：**把窗口的成因在代码层消掉**，并让"窗口是否还开着"变成一条可执行断言。
2. 单元测试的锁模型是**行为模型**，不是真实 V8/Frida 的调度器；它能区分
   cooperative/exclusive 的语义差异，但不能替代真机统计。真机上仍以
   `hookReentry / hookEx / disables` 作为健康指标。
3. `clockSched='exclusive'` 只证明"选项被接受并生效于这一个函数"，
   不等于"整条链路无放锁点"——后者靠 §3 的逐项审计 + T19c 的运行时断言共同支撑。

---

## 7. 复现

```powershell
cd my-doc\03_uds_test
node --check pcm_bridge_draft.js
node tests\bridge_unit_test.js        # 300 passed, 0 failed
node tests\probe_detach_test.js       # 91 passed, 0 failed

# 真机（frida-server 在跑，接收端先起）
python ..\04_device_t3\run_t3_uds.py 300 ..\..\_analysis\t309_run.log
# ready 行里应有 clock=exclusive；stats 里应有 clockSched=exclusive / clockExclusive=true
```
