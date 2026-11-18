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
