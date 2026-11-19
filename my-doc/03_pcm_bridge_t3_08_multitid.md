# T3-08：PCM Bridge 支持多原生生产者线程

- 基线：`main` @ `6c7597dce7ac2afde7b4b70405ded5a2359c283b`
- 提交：`fix: support multiple native producer threads in PCM bridge`
- 涉及文件：`my-doc/03_uds_test/pcm_bridge_draft.js`、`my-doc/03_uds_test/tests/bridge_unit_test.js`
- **结论：单线程路径零回归，多 TID 路径由单元测试覆盖；T3-08 的四轮真机没有再现多 TID 场景（如实记录，见 §4.1）。
  多 TID 的真机观测只有一次历史记录（T4-08 的 BC2 会话，TID 19873 / 14171），且那一次触发的是旧版自禁用。**

---

## 1. 原问题

`pcm_bridge_draft.js` 把"`AGSpeechEngine::feed` 永远由同一个线程调用"当作硬前提（无锁 SPSC 环的基础）。
一旦出现第二个 TID，就调用 `disable('multi-producer:' + tid)` 自禁用旁路。

真机证据（`my-doc/05_t4/acceptance/bridge_logs/t408_bridge_BC2.log`）：

```
[i] stats@load = {"capSeq": 0, ... }
[js] [STAT] ... frames=1 produced=1 sent=1 ...
[i] stats@stop = {"capSeq": 1, ..., "disables": 1, ...}
[i] stop() -> {..., "why": "multi-producer:14171", ...}
```

- 先出现的生产者线程：`19873`
- 第二次调用来自线程：`14171`
- 结果：`disables=1`，整轮只发出 1 帧，采集静默失败（T4 只收到 1 帧）。

补充一个容易被读错的细节：这条日志里 `tids` 只有 `{"19873": 1}`，`14171` 只出现在 `why` 字符串里。
因为旧实现在计数之前就 `disable()` 并 `return` 了。所以它证明的是"**存在第二个生产者线程**"，
**不能**用来证明"两个线程曾同时进入回调或在时间上重叠"。

原厂音频管线**确实会换线程**调用 `feed`（用户与语音助手多次交互后）。所以"单生产者"不能作为硬条件。

---

## 2. 修改内容

### 2.1 Hook 闸门 2（唯一行为改动）

修改前：

```js
var tid = Process.getCurrentThreadId();
if (st.producerTid === 0) {
  st.producerTid = tid;
} else if (tid !== st.producerTid) {
  disable('multi-producer:' + tid);      // ← 致命自禁用
  return;
}
st.producerCalls++;
st.frames++;
```

修改后：

```js
var tid = Process.getCurrentThreadId();
st.producerCalls++;
if (st.producerTid === 0) st.producerTid = tid;      /* 首个线程：仅作诊断 */
if (st.tidCalls[tid] === undefined) { st.tidCalls[tid] = 0; st.tidCount++; }
st.tidCalls[tid]++;
if (tid !== st.producerTid) st.otherTidCalls++;
st.frames++;
```

- 不再有任何 `disable('multi-producer…')`；
- `producerTid` 保留为**首个** TID（诊断/兼容旧日志）；
- 新增 `tidCount`（见过的生产者线程数）、`otherTidCalls`（非首线程的调用次数）、
  `tidCalls{tid→count}`（每线程调用次数）；
- `STAT` 行新增 `tids=<n> otherTid=<n>`；`summary()` / `rpc.exports.stats()` 新增
  `tidCount` / `otherTidCalls`，`tids` 由"只有首线程"改为"全部 TID + firstTid"。

### 2.2 保留的并发保护（一个都没删）

| 保护 | 状态 |
|---|---|
| `inHook` 重入保护（真重入 → `reentryHook++` 并丢弃该次） | 保留，位置不变 |
| `inDrain` 消费端重入保护 | 保留 |
| 环边界检查（`depth >= RING_CAP → ringDrop++`，绝不覆盖） | 保留 |
| 整帧 `Memory.copy` + `slotCapSeq/slotTsUs` + `idx.tail++` | 保留，顺序不变 |
| 生命周期 / teardown / detach / close 逻辑 | 保留 |
| 闸门顺序（enabled → reentry → 参数 → 指针 → 环满 → 时钟） | 保留 |

### 2.3 为什么多线程调用仍然安全

1. **Frida 的 JS 运行时是单线程的**：同一脚本的 `Interceptor` 回调在进入时持有脚本锁，
   两个原生线程不可能同时停留在 JS 回调内部（后到者等待前者返回）。
   因此"复制整帧 → 写 slotCapSeq/slotTsUs → `idx.tail++`"这一串仍然是**串行完成**的，
   不存在两次调用交错写同一槽位。
2. **SPSC 边界没有被破坏**：生产者只写 `idx.tail` 与 `tail % RING_CAP` 对应的槽位，
   消费者只读 `idx.tail`、写 `idx.head` 与其槽位；两侧都不触碰对方槽位。
3. **真重入仍被拦住**：JS 锁对同一线程是可重入的（在回调内部再次调用 `feed` 会再次进入 JS），
   这时 `inHook` 为真，直接 `reentryHook++` 并返回，不会重入写环。
4. **消费节奏不变**：`drain()` 仍由 20 ms tick 驱动，`inDrain` 防重入，与 Hook 侧共享同一把"JS 串行"前提。

> 这是"依赖运行时的串行化"而不是"自己加锁"的方案。若将来 Frida 后端改成多线程 JS 运行时，
> 这个前提就会失效——所以 `STAT` 里保留了 `reentry`/`hookEx` 计数作为运行时健康指标（见 §5）。

> **T3-09 修正（2026-11-19，后续轮次）**：上面第 1 条当时写得太强。Frida 的 JS 运行时确实是单线程的，
> 但**默认 `NativeFunction` 是 cooperative 调度**——调用原生函数时释放脚本锁，另一个原生线程可以在那个
> 窗口里进入同一个回调（T2/T3 的 `nowUs()` 正是这样一次 `clock_gettime` 调用）。此时后到者并不会"等待"，
> 而是被 `inHook` 当成重入直接丢弃 → **丢帧**。T3-09 把 `clock_gettime` 改成 `scheduling:'exclusive'`
> 之后，本条才真正成立；详见 `03_pcm_bridge_t3_09_clock_exclusive.md`。

### 2.4 协议/格式保持不变

Hook 地址 `libsmartbox.so+0xd455c`、签名 `_ZN14AGSpeechEngine4feedEjPKvi`、5120 B 帧长、
lane0 抽取规则、16 kHz/单声道/16-bit、TGZ2 v2 40 B 头、abstract socket 名 `tgz2_pcm`、
T4 接收端协议与代码：**全部未改**。

---

## 3. 单元测试（本机执行）

```
cd my-doc/03_uds_test
node --check pcm_bridge_draft.js          # exit 0
node tests/bridge_unit_test.js            # === 240 passed, 0 failed ===
```

（原 201 断言 → 240 断言；T14 重写为多 TID 系列，新增 T14d 重入拦截。）

| 用例 | 覆盖点 | 断言数 |
|---|---|---:|
| T14a | 单 TID 连续 5 次：`tidCount=1`、`tids[4242]=5`、`otherTidCalls=0`、不变式成立 | 9 |
| T14b | **两个 TID 交替**（19873 / 14171，正是真机那对）：`enabled=true`、`disables=0`、`why` 不含 multi-producer、`frames=6`、`produced=6`、`tidCount=2`、两线程各 3 次、`otherTidCalls=3`、消费端仍发送、每帧都算 CRC | 19 |
| T14c | **5 个 TID 轮转**（101/202/303/404/505，10 帧）：`tidCount=5`、每 TID 2 次、`otherTidCalls=8`；两个 tick 后 10 帧全部发出；**10 帧载荷逐字节等于 lane0 参考数据**（无交错/无覆盖）、序号 1..10 连续 | 22 |
| T14d | **真重入**：在 `Memory.copy` 回调里再次调用 `onEnter` → `hookReentry=1`、`frames=1`、`produced=1`、`hookEx=0` | 6 |
| T13 | 环满仍按原策略（64 槽塞满，第 65 帧 `ringDrop=1`，槽 0 未被覆盖） | 保持 |
| T15 | stop/teardown 后不再接受新帧（`feed` 后 `frames` 不变） | 保持 |

> 其余 184 条断言（整帧复制、lane0、TGZ2 头全字段、JS/C FNV 对拍、sendto 各错误码、
> 对端消失重连、stale、时钟失败、初始化回滚、DRY_RUN、Hook 纯函数性）全部保持通过。

---

## 4. 真机测试（TG-Z02）

设备：TG-Z02 / Android 8.1 / `com.alibaba.ailabs.genie.smartapp:core`；
T4 接收端：`android/out/t4_receiver`（T4-07 版本）；桥接脚本 SHA256
`058953ad79b8f1cb50ce70ed20f3e2f88cc23e5716372963602edec00c3b9556`。

| # | 场景 | 时长 | frames | produced | sent | ringDrop | sendDrop | sendErr | hookEx | **reentry** | **disables** | **tidCount** | 生产者 TID | T4 侧 |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|---|
| 1 | 唤醒词 ×7（每次等回答完） | 300 s | 7504 | 7504 | 7504 | 0 | 0 | 0 | 0 | 0/0 | **0** | **1** | 16285 | `received=accepted=processed=7504`，`missing=0`，`bad_crc=0`，`queue_drop=0`，segments 32 |
| 2 | 快速连叫 10 次（互相打断） | 150 s | 3753 | 3753 | 3753 | 0 | 0 | 0 | 0 | 0/0 | **0** | **1** | 16285 | `received=accepted=processed=3753`，`missing=0`，`bad_crc=0`，`queue_drop=0`，segments 10 |
| 3 | 让助手播放音乐/新闻 60–90 s | 300 s | 7504 | 7504 | 7504 | 0 | 0 | 0 | 0 | 0/0 | **0** | **1** | 16285 | `received=accepted=processed=7504`，`missing=0`，`bad_crc=0`，`queue_drop=0`，segments 57 |
| 4 | 复现"上一会话被强杀 + 立刻重连" | 60 s | 1505 | 1505 | 1505 | 0 | 0 | 0 | 0 | 0/0 | **0** | **1** | 16285 | `received=1726`（含被强杀会话的帧），`queue_drop=0`，`epoch_switches=1` |

每轮都满足：

- `frames == produced`（所有闸门计数为 0）
- `produced == sent + pending`（`pending=0`）
- `ringDrop = sendDrop = sendErr = clockDrop = 0`
- `hookEx = hookReentry = drainReentry = drainEx = 0`
- `disables = 0`，`why = ok`
- T4：`received == accepted == processed`、`missing = 0`、`bad_crc = 0`、`queue_drop = 0`

### 4.1 关键限制（必须如实说明）

**上述 4 轮真机都没能再现"两个生产者线程"。** 每轮 `tidCount` 恒为 1（TID 16285），
包括：多次唤醒词、快速互相打断、让助手播放音乐、以及"会话被 SIGKILL 后立刻重连"。

这里要把两件事分开（详细分级见 `03_pcm_bridge_t3_09_clock_exclusive.md` §6）：

| 命题 | 证据 | 状态 |
|---|---|---|
| 原厂会从不同线程调用 `feed` | **T4-08 真机日志 `05_t4/acceptance/bridge_logs/t408_bridge_BC2.log`**：`producerTid=19873`、`why="multi-producer:14171"`、`disables=1`、`frames=1` | **真机已观测（历史）** |
| T3-08 的四轮真机里再次出现第二个 TID | 4 轮 `tidCount` 均为 1 | **未复现** |
| 两个 TID 同时在 `clock_gettime` 窗口内重叠 | — | **从未在真机观测到**（T4-08 那次第二个线程在计数前就被 `disable()` 拦下，连 `clock_gettime` 都没走到） |

也就是说：

- 真机上**已验证**：原来的自禁用路径消失后，单线程采集 5 分钟无任何异常（`disables=0`）；
- 真机上**未验证**：多 TID 并发调用的实际行为。该现象最后一次出现在**应用重启之前**的 T4-08 会话
  （TID 19873 / 14171），重启后原厂管线一直稳定在同一线程 16285。本轮无法在不重启、
  不注入假数据的前提下把它造出来。

因此：**"多 TID 调用不会自禁用"由 T4-08 的失败记录反向验证 + T14b/T14c 单元测试覆盖；
"多 TID 并发下不丢帧"在 T3-08 阶段只有 §2.3 的运行时论证（而该论证后来被 T3-09 指出缺了
"回调内不释放脚本锁"的前提）。不做"已验证"的表述。**

---

## 5. 是否仍存在并发/重入风险

| 风险 | 现状 | 依据 |
|---|---|---|
| 两个原生线程真正同时进入 JS 回调 | **T3-08 当时写的是"无"，T3-09 已推翻其中一半** | `clock_gettime` 默认 cooperative 会放锁 → 第二个线程能进入并被误判重入（T3-09 修复） |
| 同线程重入（回调内再次 feed） | **已被 `inHook` 拦截** | 单元测试 T14d（`hookReentry=1`，重入帧不入环） |
| 消费端与 Hook 交错 | **无**（同一 JS 锁 + `inDrain`） | 4 轮真机 `drainReentry=0`、`drainEx=0`（均为单 TID 会话） |
| 环边界（生产者覆盖未消费槽位） | **不可能**：满则 `ringDrop++`，不写 | 单元测试 T13；真机 `ringDrop=0`（单 TID） |
| 运行时前提变化（未来的 Frida 改成多线程 JS） | **会成为风险** | 保留 `hookEx`/`reentry` 计数，异常时可立刻看到 |

**结论：在当前 Frida 运行时下，多线程调用不会破坏环形缓冲区；前提是"同一脚本的 JS 回调串行执行"。
T3-08 当时的依据是 `reentry=0 / hookEx=0` 的真机统计（**注意：这 4 轮都是单 TID 会话，统计值不能证明多 TID 场景**）
加 5 TID 轮转的单元测试；T3-09 之后补上了机制层面的依据：回调内唯一的原生调用已改为 exclusive 调度，
并由 T19d 正例 / T19e 负对照（模拟锁模型，**不是真机**）验证 cooperative 下会丢 5/6 帧、exclusive 下 6/6 全收。
"修复后真机上两个 TID 重叠"仍然没有观测，见 `03_pcm_bridge_t3_09_clock_exclusive.md` §6。**

---

## 6. 复现命令

```powershell
cd my-doc\03_uds_test
node --check pcm_bridge_draft.js
node tests\bridge_unit_test.js        # T3-08 时为 240 passed, 0 failed；T3-09 后为 300 passed, 0 failed

# 真机（设备已连 adb，frida-server 在跑）
python ..\04_device_t3\run_t3_uds.py 300 ..\..\_analysis\bridge_300s.log
# 观察 stats@after-stop 里的 disables / tidCount / otherTidCalls / hookEx / reentry
```
