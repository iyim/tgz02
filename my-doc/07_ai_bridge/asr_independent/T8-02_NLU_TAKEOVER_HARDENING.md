# T8-02：NLU 接管并发与故障安全加固（设备验证前的最后一版原型）

基线：`ddb81839`。范围：`my-doc/07_ai_bridge/`。**未部署、未注入、未重启、未改原厂配置、未动 Guard/路由。**

## 1. 结论

| 项 | 状态 |
|---|---|
| 槽位静默淘汰 | **已修**：容量 64，满时不覆盖任何有效登记，改为显式 `overflow` + fail-closed 降级窗口 |
| 并发安全 | **已加**：一把 pthread mutex，临界区只有内存操作；并发单测（6 线程 × 400 次混合操作 + 4 线程 × 200 次重复登记）全过 |
| ABI | **已确认到可动手的程度**：ARM 模式、AAPCS 参数寄存器、三条返回路径、两个调用者都不读返回值；跳过时返回 0 安全。**返回类型本身仍未从二进制确认**（如实标注） |
| sessionId | **静态链已到 `Message->arg1 → r1`**；与 ASR 会话 id 的同一性**未完全证实**，但已有零注入的只读证实方法（库自带 `on nlp result, code = …, sessionId = …` 日志） |
| 生命周期 | 保留 TTL 兜底（论证见 §6），不新增生命周期 Hook |
| 设备验证条件 | **达到**（方案与回滚见 §7，等批准） |

主机测试：**184 条断言全过**（T8-01 的 70 条并入 A/A2/B/C/D，新增 E 容量、F 并发）；ARM32 编译 0 warning。

## 2. P1-1 槽位淘汰（已修）

**旧行为（T8-01）**：8 个槽位全被占用且都还在 TTL 内时，`t8_to_alloc()` 返回"最先过期"的那个槽位 ——
**直接覆盖一条仍在生效的接管登记**。后果：那条 AI 会话的 NLU 结果会被当成"未登记"放行，原厂 CDM
把技能执行掉，而日志里看不出任何异常。

**新行为（T8-02）**：

| 情况 | 行为 |
|---|---|
| 有空槽 | 正常登记 |
| 同一 session 重复 final | 只刷新 TTL，不占新槽（`reentrant_marks++`） |
| 槽位全满（64 条都有效） | **不覆盖任何登记**；`overflow++`；设 `degraded_until = now + 5000 ms`；返回 **`T8_TO_TAKE_UNREGISTERED`**（调用方必须按接管处理）；`why = overflow` |
| 降级窗口内，未登记会话的 NLU 结果 | **fail-closed：丢弃**（`degraded_passes++`），不放进原厂 CDM |
| 降级窗口结束 | 未登记会话恢复放行（不会永久 fail-closed） |
| TTL 到期 | 槽位回收，可重新登记；`overflow` 计数不复位（历史上发生过就是发生过） |

**容量 64 的依据**：真机实测并发 = 1（一次只有一条识别会话，session 每次识别递增；`events.jsonl` 里
从未出现两条会话交错）。64 条"尚未收到 NLU 结果"的会话同时在 TTL 内，已经不是正常现象 ——
所以耗尽按故障上报，而不是靠动态扩容或 LRU 把它藏起来。没有引入任何动态内存。

**测试（`evidence/t8_02_host_test.log` [E] 段）**：

```
A 64 条登记 -> active = 64
第 65 条     -> T8_TO_TAKE_UNREGISTERED, why=overflow, overflow=1
cap-0        -> 仍然 drop=1     （最早那条没有被覆盖）
cap-63       -> 仍然 drop=1
never-seen   -> 降级窗口内 drop=1（fail-closed），degraded_passes=1，不计入 unknown
窗口结束后   -> never-seen drop=0
TTL 到期     -> purge 回收 64 个槽，新登记成功，overflow 仍为 1
```

## 3. P1-2 并发保护（已加）

**真机线程关系（实测证据）**：同一条会话的处理跨越多个线程 —— 日志里的 tid 能直接看出来：

```
17:52:38.474  8342  8410  SessionManager.cpp:onStartTalk:255 ... sessionId = 1968466
17:52:38.731  8342  8433  SessionManager.cpp:onStream:641  ... sessionId = 1968466, text = 天, isFinished = 0
17:52:40.274  8342  8410  SessionManager.cpp:onStopTalk:697  ...
17:52:44.829  8342  8410  SessionManager.cpp:onStartTalk:255 ... sessionId = 1968470
```
（`onStream` 在 tid 8433，`onStartTalk/onStopTalk` 在 8410，消息泵 `SessionProxy::onHandler` 在 8374 ——
三条不同线程。）所以"登记"和"查询"**确实可能并发**，T8-01 的无锁实现是真问题。

**做法**：

- 结构体里放一把 `pthread_mutex_t`（Windows 主机侧是 `CRITICAL_SECTION`，行为等价的水印）；
- `t8_to_init()` 返回 0/-1；**锁初始化失败时模块整体降级为"不接管"**（`t8_to_on_final` 返回 PASS、
  `should_drop` 返回 0），绝不在无锁状态下裸跑；
- `t8_to_destroy()` 释放锁并把 `mutex_ready` 清 0，释放后所有入口安全退化（单测覆盖）；
- 临界区只做内存读写：**没有 I/O、没有日志、没有网络、没有原厂调用、不回调外部代码**，
  因此不会出现持锁回调导致的死锁；
- 每个导出函数要么整段持锁、要么在调用前不持锁；内部的 `*_locked` 函数不对外，避免重入；
- 失败/提前返回路径（`session == NULL`、`mutex_ready == 0`、容量耗尽）都显式 `unlock` 后再返回。

**测试（[F] 段）**：

```
mixed: threads=6 iters=400 marked=2400 dropped=2400 expired=0   errors=0
  每轮：登记 -> 查询(必须 drop=1) -> 会话结束 -> 查询(必须 drop=0) -> 每 25 轮 purge
重复登记: 4 线程 x 200 次同一 session
  -> active=1（只占 1 个槽）、reentrant_marks=799、marked=800、overflow=0
TTL 回收: 过期后 purge=1、drop=0、active=0
锁生命周期: init(NULL)=-1、destroy 后 mutex_ready=0、之后不接管任何会话
```

没有任何一次"重复登记占两个槽 / 错误放行 / 计数错乱"。

## 4. P1-3 ABI（`SessionDispatch::onNlpResult` @ `0x118ebc`）

证据：`dis_full` 反汇编 + `.dynsym`（`00118ebc 1952 FUNC GLOBAL DEFAULT 12`）+ ELF 头
（`Type: DYN`、`Machine: ARM`、`Flags: 0x5000200 Version5 EABI, soft-float`）。

**序言**（ARM 模式，4 字节对齐，`st_value` 偶数 = ARM 非 Thumb）：

```
118ebc: E92D4FF0   push {r4, r5, r6, r7, r8, r9, r10, r11, lr}    ; 9 寄存器 = 36 B
118ec0: E28DB01C   add  r11, sp, #28                              ; 帧指针
118ec4: E24DD034   sub  sp, sp, #52
118ec8: mov r10, r3        ; arg3 (NlpResult*)  -> r10
118ecc: mov r6,  r1        ; arg1 (int)         -> r6
118ed4: mov r4,  r2        ; arg2 (int)         -> r4
118edc: mov r8,  r0        ; this               -> r8
```

**参数传递（AAPCS，非 static 成员函数）**：`r0 = this`、`r1 = int`、`r2 = int`、`r3 = NlpResult*`，
栈上没有传参（前 4 个整数/指针参数全部走寄存器）。**已证实**：三个参数在函数体第一屏就被搬进
`r10/r6/r4`，且 `r0` 被搬进 `r8` 当 `this` 用（`ldr r0,[r8,#12]` 之类）。

**尾声 / 返回路径**：三条 `pop {r4-r11, pc}`（0x119470、0x119484、0x1195B0），对应三条 return：

| 路径 | 结尾指令 | 返回时 r0 的内容 |
|---|---|---|
| A | `ldrb r0,[sp,#39]` → `cmp r0,#0` → 直接 `pop … pc` | 一个 0/1 的字节（像真正的返回值） |
| B | `ldr r0,[r8,#12]` → `bl SessionManager::setSessionTtsStatus(i,status)` → `pop … pc` | **被调 setter 的残留 r0** |
| C | `mov r0,#1` → `bl AgutilLog` → `pop … pc` | **日志函数的残留 r0** |

**返回值类型：未确认**（不猜）。三条路径里两条返回的是被调函数（void setter / 日志）的残留值，
这在实务上说明编译器把它当 `void` 编译（r0 当草稿）；但二进制无法区分"声明 void"和"声明 int 但
调用者不用"。

**调用者是否依赖返回值：不依赖（已证实）**：

```
SessionProxy::onHandler  (0x11cbf8 处调用)
  11cbf4: mov r3, #0                 ; arg3 = NULL
  11cbf8: bl  SessionDispatch::onNlpResult
  11cbfc: ldr r0, [r4, #12]          ; 立刻覆盖 r0，不读返回值
SessionManager::exitTalk (0x111134 处调用)
  111134: bl  SessionDispatch::onNlpResult
  111138: ldr r0, [r7]               ; 同样立刻覆盖
```

**跳过原函数时的返回值**：**返回 0**。理由：两个调用者都不读 r0；0 与路径 A 的取值域（0/1）一致；
比返回垃圾更安全（若将来有人加了读返回值的调用者，0 也是这条路径最常见的"正常"值）。

**ARM / Thumb 与指令边界**：`st_value = 0x118ebc` 为偶数 → **ARM 模式**（Thumb 函数的符号是奇数）；
序言首字 `E92D4FF0` 是 32 位 ARM 指令，入口 4 字节对齐，工具链不会把 ARM 函数放在奇数地址。
所以 hook 入口不存在 ARM/Thumb 混态问题。

**现有 inline Hook 框架能否安全处理这个入口**：**入口本身可以，但框架要补一个"可跳过"的 stub**。

- 现有框架（`android/hook_agent/libtg_hook.c`）在 `onStream` 上工作正常，机制是：替换入口 8 字节为
  跳转 → stub 保存 r0-r3/lr、调 C 回调、恢复寄存器 → **无条件**跳到 trampoline（重放被覆盖的两条
  原厂指令 → 跳到 `func+8`）。
- 它的前提是**前两条指令必须与 PC 无关**。本函数前两条正好满足：
  `push {r4-r11,lr}`（E92D4FF0）与 `add r11,sp,#28`（E28DB01C）都不引用 PC，可以直接搬到 trampoline 重放，
  **不需要重定位**。
- 但"接管"要求**不执行原函数**，现有 stub 没有条件分支。T8-02 设计了一个 12 条指令的变体，
  已用 NDK clang 汇编 + `llvm-objdump` 反汇编验证编码（`analysis/t8_02/stub_skip.s`）：

```
+0x00 E92D401F  push {r0,r1,r2,r3,r4,lr}
+0x04 E59F4014  ldr  r4,[pc,#20]        -> +0x20 = C 回调
+0x08 E12FFF34  blx  r4                 ; 回调返回 0=放行原函数, 非 0=跳过
+0x0C E1A0C000  mov  r12,r0             ; 保存判定（r12 不在 pop 列表里）
+0x10 E8BD401F  pop  {r0,r1,r2,r3,r4,lr}
+0x14 E35C0000  cmp  r12,#0
+0x18 1A000002  bne  -> +0x28           ; 跳过：返回 0
+0x1C E59FF00C  ldr  pc,[pc,#12]        -> +0x30 = trampoline
+0x20 <回调地址>
+0x24 <padding>
+0x28 E3A00000  mov  r0,#0
+0x2C E12FFF1E  bx   lr
+0x30 <trampoline 地址>
```

反汇编验证输出（原文）：

```
0: 1f 40 2d e9  push  {r0, r1, r2, r3, r4, lr}
4: 14 40 9f e5  ldr   r4, [pc, #20]
8: 34 ff 2f e1  blx   r4
c: 00 c0 a0 e1  mov   r12, r0
10: 1f 40 bd e8 pop   {r0, r1, r2, r3, r4, lr}
14: 00 00 5c e3 cmp   r12, #0
18: 02 00 00 1a bne   #8 <stub_skip+0x28>
1c: 0c f0 9f e5 ldr   pc, [pc, #12]
28: 00 00 a0 e3 mov   r0, #0
2c: 1e ff 2f e1 bx    lr
```

注意 `bx lr` 的正确性：函数是被调用者的 `bl` 调进来的，进入本函数时 `lr` 就是调用者的返回地址
（PLT 桩是跳转，不改 lr）；stub 里先 `push` 再 `pop` 还原，跳过路径用 `bx lr` 返回调用者，语义正确。

## 5. P1-4 sessionId 对应关系

**静态链（已证实）**：

```
SessionProxy::onHandler(Message* m)
  11c244: ldrd r8, r9, [r1]     ; r8 = m->what, r9 = m->arg1
  ...
  11cbe8: ldr r0, [r4, #8]      ; r0 = m->ptr  (SessionDispatch*)
  11cbec: mov r1, r9            ; r1 = m->arg1  -> onNlpResult 的 arg1
  11cbf8: bl SessionDispatch::onNlpResult
```
→ `onNlpResult` 的 arg1 就是 `Message->arg1`，由消息投递方（`SessionProxy::onNlpResultInner(int,…)`）填。

**实测侧证据（已证实）**：同一条会话的消息里，同一个字段被打印成 `sessionId`：

```
17:52:38.474  8342 8410 SessionProxy  JNI_AILABS SessionProxy.cpp:onHandler:81 [8410] start talk sessionId = 1968466
```
（`onHandler` 里打印的 sessionId 与 `SessionManager::onStartTalk/onStream`、以及我方 Hook 记录的
`events.jsonl` 的 `session_id=1968466` 完全一致。）

**尚未证实的一环**：`onNlpResult` 的 arg1 与 `onStream` 的 sessionId **在数值上相同**。
静态只能证明"同一个 Message 字段"，不能证明"这个字段就是 ASR sessionId"。

**零注入的只读证实方法（下一轮设备窗口做，不改任何东西）**：库里自带这条日志格式

```
on nlp result, code = %d , sessionId = %d, data = %d
```

所以只要说一句话，就能在 logcat 里同时拿到：

1. `SessionManager.cpp:onStream:641 ... sessionId = <A>, text = ..., isFinished = 1 ...`（原厂日志）
2. `on nlp result, code = <t> , sessionId = <B>, data = <n>`（原厂日志）
3. 我方 Hook 的 `events.jsonl` 里同一条事件的 `session_id = <A>`（已验证与 1 一致）

`<A> == <B>` 即证实 arg1 就是 sessionId。全程只读 logcat，不需要注入、不需要改配置。

## 6. P2 会话生命周期

- **原厂的会话结束回调**：`SessionManager::onStopTalk(int)` / `onStopTalk(int, _WakeEndInfo_*)`、
  `SessionManager::exitTalk(int, u_char)`（`0x1110e4`，它会顺手把未处理的 NLU 结果补发给
  `SessionDispatch::onNlpResult` —— **这条路径是接管必须覆盖的**，而 `SessionDispatch` 那个点在覆盖范围内）。
- **没有正常结束回调的路径**：(1) 云端 `silenceTimeout` 之后仍有迟到的 NLU 结果；(2) 连续对话把会话续期
  （`ContinuousDialogManager`）；(3) `:core` 崩溃/重启（此时进程内状态本来就没了，重启后接管表是空的，
  不会有"残留登记"问题）。
- **TTL 是否够**：实测 `onStream final` 到原厂答复是毫秒级（W3 17:52:40.313 final → 原厂立即回答），
  TTL 30 s 是观测间隔的约 1000 倍，足够覆盖迟到结果；**且 TTL 之后是"放行"而不是"接管"**，
  所以最坏情况是"迟到的 NLU 结果回到原厂"（等于今天的行为），不会误伤本地指令。
- **清理与并发**：`t8_to_on_session_end()` 与 `t8_to_purge()` 都在锁内，和登记/查询互斥；
  单测 [F] 里每轮都做 登记→查询→清理→查询，无一次状态错乱。
- **结论**：本轮**不新增** `onStopTalk` Hook。理由：TTL 已兜底，且会话结束时"提前清登记"反而有风险
  （清早了 → 迟到的 NLU 结果漏给原厂）。生命周期 Hook 留给后续技能调度器那一轮一起做。

## 7. 最小设备验证方案（等批准，本轮不执行）

**改动面（2 处 + 1 个开关）**：

| # | 文件/函数 | 改动 |
|---|---|---|
| A | `android/hook_agent/libtg_hook.c`，`SessionManager::onStream` 现有钩子 | `isFinished==1` 时把 `(session_id, text)` 交给 `t8_to_on_final(&g_to, sid, text, now_ms, route_mask, &why)`；只写一行日志，**不改转发**。返回 `TAKE_UNREGISTERED` 时日志级别升为 WARN 并写 `overflow` 计数 |
| B | 同文件，**新增** `SessionDispatch::onNlpResult` 钩子（`0x118ebc`） | 回调里 `if (!enabled) return 0;` → `if (t8_to_should_drop(&g_to, arg1, now_ms)) { log; return 1; }` 否则 `return 0`。stub 用 §4 的"可跳过"变体：回调返回 1 → 不执行原函数并返回 0 |
| C | 开关 | `TG_NLU_TAKEOVER=0/1`（默认 **0**，即行为与今天完全一致）；`0` 时 B 点回调直接 `return 0`（等价于不装） |
| D | 观测 | 状态文件加 `nlu_takeover:{enabled,active,marked,dropped,passed,unknown,overflow,degraded}`（只增键，不改现有键） |

**必须记录的日志/计数**：判定（take/pass + why）、实际拦截（session + drops）、未知会话（放行计数）、
容量异常（overflow + degraded）。

**验证步骤（一次约 1 分钟）**：

1. 装新 Hook，`TG_NLU_TAKEOVER=0` → 说「给我讲个笑话」「现在几点」→ 行为必须与今天完全一致（对照组）。
2. `TG_NLU_TAKEOVER=1` → 再说：
   - 「给我讲个笑话」→ `nlu-takeover: take` + `on nlp result` 之后**没有**原厂技能/没有原厂 TTS；
     我方 `deepseek ok` + `tts queued`。
   - 「现在几点」→ `nlu-takeover: pass` + 原厂照常回答（Guard 放行）。
   - 「音量调到 5」→ 音量变化**一次**，不重复。
3. 关闭开关重复第 2 步第一条 → 原厂开始答复（Guard 可能静音，但 logcat 里能看到
   `TtsManager::playTts/onTtsStart`）→ 这组对照就是"接管确实生效"的直接证据。

**回滚（三条，任选其一即可）**：

1. `TG_NLU_TAKEOVER=0` —— 立即回到今天的行为，不重启、不换库（首选）。
2. 换回 `/data/local/tmp/t6/libtg_hook.so` 原文件，用同一份 `run_supervisor.sh` 重新注入。
3. `tg_supervisor` 停止 → `:core` 恢复未注入状态（Guard 不受影响，不需要动）。
**不动**：`runtime.xml`、`dialog.cfg`、任何原厂文件、Worker 路由规则、TTS Guard。

## 8. 是否达到设备验证条件

**达到。** 判定依据：

- 接管点与调用边有静态证据（T8-01），ABI 已确认到"参数寄存器 / 返回路径 / 调用者不读返回值 /
  ARM 模式 / 前两条指令可重放"，并给出了跳过所需的 stub 机器码（已反汇编验证）；
- 会话判据与线上路由逐条一致（真机 4 条文本对齐），容量与并发两个真实缺陷已修并有针对性测试；
- 设备侧改动仅 2 处 + 1 个默认关闭的开关，回滚是一条环境变量。

**仍属未证实的**（设备验证时要一并确认）：`onNlpResult` 的 arg1 与 ASR sessionId 的同一性（§5 方法）、
`RouterManager::onResponse` 里 `SpeakCommand` 分支是否绕过 CDM 出声（若发生，第二个 hook 点补在 `0x10fe3c`）。
