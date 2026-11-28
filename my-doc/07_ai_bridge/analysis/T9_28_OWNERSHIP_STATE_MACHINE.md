# T9-28 Ownership 单一真源与双进程一致性（状态机 + 故障场景矩阵）

对应审查意见 §二.1，四项硬要求：

1. Worker 与 Hook 的 ownership 同步机制；
2. 配置版本与代次校验；
3. 文件损坏/缺失/读失败时的安全处理；
4. 切换期间、Worker 重启、Hook 重启、设备重启的恢复；
5. **不得采用"Worker 已接管、Hook 单独回退旧 mask"这种机制。**

结论先说：**T9-27 的"回退旧 mask"确实不安全，本文件把它整条删掉**，改成
「单写者 + 延迟生效 + 租约 + 回读校验 + 回执 + 规则哈希」，并把"能不能执行"的最终否决权
放在 worker 的**前置条件检查**里（I1）。owner 判定本身仍由 hook 做，因为丢弃不可逆
（见 `T9_28_ARCHITECTURE_REVISION.md` §2）。

---

## 1. 为什么"回退旧 mask"不安全（把审查意见形式化）

设某句话 U 的意图为 i。两侧各自的判定函数：

- hook：`D_h(U) = PASS` 若 `classify_h(U) = i` 且 `mask_used & bit(i)`，否则 `TAKE`
- worker：`D_w(U) = exec_local` 若 `owner(i) = local` 且该技能已注册且开关开

T9-27 的回退规则让 `mask_used` 在"文件读失败"时退化为编译期 `g_nlu_mask`（【代码】`libtg_hook.c:612` 默认 `0x1FF`）。
于是存在一条路径：`owner(music) = local`（worker 侧），但 `mask_used` 退回 `0x1FF`，
而 `bit(music) = 0`（【代码】`intent_route.c:855`）→ `D_h = TAKE`、`D_w = exec_local`。
这一条**恰好是对的**，反而是另一种组合出问题：

| 场景 | hook 用的表 | worker 用的表 | 结果 |
|---|---|---|---|
| music 关掉（owner 改 factory）后 worker 未成功落盘 | 旧表（music=local）→ TAKE | worker 认为 factory → 不执行 | **静默**（F2） |
| music 打开（owner 改 local）后 hook 用旧 mask：`bit=0` → TAKE | 旧表 | 新表 → 执行 | 正常（碰巧一致） |
| 闹钟技能打开（owner 改 local，清 0x100）但 hook 仍旧 mask | 旧 mask 含 0x100 → **PASS** | 新表 local → 执行 | **双执行**（F1） |
| 闹钟技能关掉（owner 改 factory，加回 0x100）但 hook 用旧表 | 旧表 local → TAKE | 新表 factory → 不执行 | **静默** |

四个格子两种坏结果，全都源于"两侧各用一份可能不同的表，且没有互相确认"。
所以修订的原则是：

> **P1** 两侧**只允许**使用同一份、同一代、已确认生效的表；
> **P2** 任一侧无法确认 → 朝"I2 不静默 + I1 不双执行"同时满足的方向退化：hook PASS、worker 不执行。
> **P3** 不允许任何一侧"用旧表继续按自己的语义执行"。

注意 P2 的方向：`hook PASS + worker 不执行` ⇒ 只有原厂在动。它不是最优体验（本地技能失效），
但**既不双执行也不静默**，且用户马上能感知（说"播放晴天"得到原厂那句"我控制不了音箱里的应用"），
是可诊断的降级，不是黑洞。

---

## 2. 通道选型

### 2.1 为什么不用 in-band（改 asr 帧 / 改桥接）

【代码】hook 通过 `tg_wire`（`tg_wire.h:10-21`，abstract UDS `tgz2_asr_bridge`）把 `asr_final` 送给桥接端，
帧体是**固定 8 字段**的扁平 JSON，桥接端 `tgb_event.c:366 validate()` 逐字段校验并落库。
要把"决策/代次"塞进去，必须同时改 hook、桥接端解析、桥接端存储、worker 读取四个组件，
且会污染已通过逐字节对拍的协议（`tests/t6_wire_unit_test.c`）。
风险与收益不成比例 → **不采用**。

### 2.2 为什么不用反向 socket

worker 需要监听、hook 需要连接、还要处理 worker 重启后的重连与半开连接。
在 `:core` 里新增网络行为属于"改原厂进程的运行形态"，与"零侵入"约束冲突 → **不采用**。

### 2.3 采用：两个小文件 + 单调时钟（一个方向各一个文件）

| 方向 | 文件 | 写者 | 读者 | 权限 |
|---|---|---|---|---|
| worker → hook：**归属表 + 租约** | `<own_dir>/ownership.json` | worker（root，单写者） | hook（system, uid 1000） | 0640 root:system |
| hook → worker：**回执（代次/build/哈希/计数）** | `<own_dir>/ownership.ack.json` | hook | worker | 0660 root:system |

目录选型（【实测】设备现状）：

```
$ getenforce                     → Permissive
$ ls -ld /data/misc              → drwxrwx--t 45 system misc
$ ls -ld /data/local/tmp         → drwxrwx--x shell shell      ← system 不能创建，只能穿透
$ ls -ld /data/local/tmp/t5_bridge/work → drwxrwxrwx           ← 任何 uid 都能写，不能放安全状态
```

→ 使用 **`/data/misc/tgz02/`**，由 Magisk 模块在开机时创建 `system:system 0770`。
理由：uid 1000 可写、普通 App 不可写、root 可写。
【实测】同目录下 `ethernet/` 就是 `system:system 0770`，是这台 ROM 上已验证的形态。
【待测】`:core` 实际写入路径需要一次真机 probe（10 分钟，P1 第一步）；SELinux 若将来转为 Enforcing，
需要补 sepolicy 或退回 §7 的"日志回执"方案。

---

## 3. 归属表格式与生效规则

```json
{
  "v": 1,
  "proto": 2,
  "gen": 41,
  "seq": 412,
  "writer_pid": 1690,
  "boot_ms": 1552201,             /* CLOCK_MONOTONIC，跨进程同源 */
  "not_before_ms": 1553701,       /* boot_ms + 1500：两侧同一时刻生效 */
  "exp_ms": 1559701,              /* 租约截止（boot_ms + 7500） */
  "heartbeat_ms": 2000,
  "requires_hook_build": "c5dc37e7",   /* 部署时写入的 hook 构建指纹 */
  "rules_hash": "9f2c1a44",            /* 两侧编译期规则表的 FNV-1a */
  "mask": 511,                          /* 兼容旧 hook：factory 意图的位 */
  "owner": {
    "volume": "factory", "weather": "factory", "screen_off": "factory",
    "screen_on": "factory", "time": "factory", "media": "factory",
    "stop": "factory", "exit": "factory", "alarm": "factory",
    "music": "local", "device_status": "local"
  },
  "enabled": { "music": true, "device_status": true }
}
```

字段规则：

| 字段 | 规则 | 违反时 |
|---|---|---|
| `v` / `proto` | hook 只接受自己认识的值（`v==1 && proto<=2`） | 整表拒用（H5），写回执 reason=`proto` |
| `gen` | 单调递增；worker 每次"归属或开关变化" +1 | 回退代数视为 `stale` → 拒用 |
| `not_before_ms` | 必须 `> boot_ms`（禁止立即生效） | 拒用（防半写/防竞态） |
| `exp_ms` | 必须 `> not_before_ms + 3×heartbeat_ms` | 拒用（租约太短＝抖动） |
| `requires_hook_build` | 与 hook 自身 build 相等 | 拒用（H5），reason=`build` |
| `rules_hash` | 仅上报；worker 用来比对自身（F3 检测） | 不拒用（hook 无法独立判断），但 worker 会看到 ack 里的值 |
| `owner` | 只允许 factory/local/ai；`local` 必须对应已注册技能 | 该条视为 `factory`（保守）并计数 |
| `mask` | 不参与生效判定（只给 H6_DISABLED 回滚路径与日志阅读用）；与 owner 不一致时记 `mask_owner_inconsistent` | 不拒用（避免把一次配置笔误放大成整表失效） |
| 文件大小 | ≤4 KB | 超限拒用 |
| 写入 | tmp + fsync + rename + 目录 fsync + **回读校验** | 任一步失败 → worker 不切换行为（§4） |

`not_before_ms` 的作用是**消除"两侧看到不同表"的最后一类竞态**：
worker 写完表后不能马上按新语义执行，要等到 `not_before_ms`；hook 即使缓存了 500 ms，
也一定在 `not_before_ms` 之前看到新表（因为 `not_before - boot ≥ 3×hook_cache_ttl`）。
两侧在同一个时间点一起切换，中间不存在"一半新一半旧"的窗口。

---

## 4. Worker 侧：两阶段提交（写失败就不切换）

```
compute_new_table(gen+1, owner, enabled, not_before = now + 1500)
        │
        ├─ write tmp → fsync → rename → fsync(dir) → read_back → 校验字节/JSON/gen
        │         │失败
        │         └─► 放弃本次切换：内存行为不变，保持旧 gen，计数 write_fail，状态页红字
        │              （绝不"只改内存不落盘"）
        ▼成功
  W2_WAITING_ACTIVATION（内存里记为 pending_gen，但执行判定仍用旧 gen）
        │  now >= not_before 且 收到 ack(gen) 且 ack 新鲜
        ▼
  W3_ACTIVE（按新 gen 执行；旧 gen 表被覆盖，不可回退）
```

关键：**内存行为与磁盘表永远同代**。这条是审查意见问题 1 的核心诉求，
也是本项目既有 `route_publish()`（【代码】`ai_worker.c:2546-2664`，含回读校验 2650-2657）的同一手法。

执行本地技能前的**五个前置条件**（全部满足才允许，否则按 I1 不执行、按 I3 计数）：

```
C1  本句被 hook 判定为 TAKE（见 §5 的观测手段）
C2  当前 gen 处于 W3_ACTIVE，且 now ∈ [not_before, exp - 2×heartbeat)
C3  ack 新鲜：ack.boot_ms 距今 ≤ 3×heartbeat，且 ack.gen == table.gen
C4  ack.build == requires_hook_build，且 rules_hash 一致（两侧编译期规则未漂移）
C5  技能已注册（编译期白名单）且 owner=local 且开关开
```

任何一条不满足 → `skill_skipped[reason]++` + 一行日志 + **不当成错误**（这是设计允许的降级）。

### 4.1 C1 的判定手段：worker 怎么知道 hook TAKE 了？

不需要新通道。**两侧对同一张表推导同一个结论**：

```
hook   : PASS  ⇔ owner(i) == factory          （H3_ACTIVE 时）
         TAKE  ⇔ owner(i) ∈ {local, ai}      （local=我们自己执行；ai=交给模型）
worker : 执行  ⇔ owner(i) == local 且 C2..C5   （即"我也认为 hook 会 TAKE 并归我"）
```

`bit` / `mask` 在 ownership 生效期间**不参与判定**，只保留两个用途：

1. `H6_DISABLED`（ownership 关闭）时的旧路径 —— 即 T9-26 的行为，也是紧急回滚路径；
2. 日志可读性（表里保留 mask 便于人对照）。

这条修正是对 T9-27 的实质改进：T9-27 让归属与 mask **并存**（`bit==0` 才 TAKE），
于是"owner=local 但 bit 仍置位"必然双执行。修订后**只有一个语义来源**，
F1 从"靠配置约束避免"变成"结构上不可能"（除表本身不一致，而表由单写者 + ack 保证一致）。

`bit` 与 owner 不一致的情况（例如以后把闹钟收回本地时忘了清位）不会导致双执行，
但会让"ownership 关闭后的回滚路径"与原意不符 —— 因此仍需在**代码评审**里要求
`ir_route_bit()` 与 owner 常量同步修改，并在状态里输出 `mask_owner_inconsistent` 计数供观察。

### 4.2 为什么这条推导可以信任（而不是"两侧各算一次"）

1. 表是**单写者**（worker）产出的，hook 只读；
2. `not_before_ms` 保证两侧在**同一时刻**切换到同一张表（§3）；
3. `gen` 单调 + hook 拒绝低 gen（§8），排除"读到旧备份"；
4. ack 让 worker 能确认 hook **确实**应用了这张表（`gen`/`build`/时间新鲜度），
   不满足就按 I1 不执行。

也就是说：C1 不是"猜 hook 会怎么做"，而是"确认 hook 已经采用了同一份判据"
（对 hook 而言是结构性的：`TAKE ⇔ owner==local`）。

---

## 5. Hook 侧状态机

```
                 ┌──────────────┐
   进程启动 ────► │ H0_UNINIT    │  未读表
                 └──────┬───────┘
                        │ 首个 ASR final（或 :core 启动 1 s 后）
                        ▼
                 ┌──────────────┐  文件不存在/不可读 ──► H4_EXPIRED（PASS_ALL）
                 │ H1_READING   │  语法错/超限 ───────► H4_EXPIRED（PASS_ALL，计数）
                 └──────┬───────┘  proto/build 不符 ──► H5_REFUSED（PASS_ALL，写回执 reason）
                        │ v/字段校验通过
                        ▼
                 ┌──────────────┐  now < not_before ──► H2_PENDING（继续用上一张已生效表；无表则 PASS_ALL）
                 │ H2_PENDING   │
                 └──────┬───────┘  now >= not_before
                        ▼
                 ┌──────────────┐  now >= exp ───────► H4_EXPIRED（PASS_ALL）
                 │ H3_ACTIVE    │  下次读失败（保留旧表继续用，直到 exp）──► 仍 H3
                 └──────┬───────┘
                        └─ 配置关闭（TG_NLU_OWNERSHIP=0）──► H6_DISABLED（回编译期 mask）
```

规则细则：

| 场景 | 行为 | 理由 |
|---|---|---|
| 表读取失败一次 | **继续用上一张已生效表**，直到其 `exp_ms`；不告警刷屏（每 10 s 一行） | 一次 stat 抖动不应改变行为 |
| 表过期 | **PASS_ALL** + `own_expired++` | I2：宁可原厂回答，不可静默 |
| 表不存在（首次启动） | **PASS_ALL**（不是旧 mask） | 旧 mask 恰恰是 F1/F2 的来源；统一为"factory 全放行" |
| build 不符 | **PASS_ALL** + 回执 `reason=build` | 混版本时最安全的方向 |
| `mask` 与 `owner` 不一致 | 以 `owner` 为准 + `mask_owner_inconsistent++` | 生效期 mask 不参与判定；只是提醒代码侧位常量要同步 |
| 一句话里多意图 | 取"最保守"的那条（任一 factory ⇒ PASS） | 见 MULTI_INTENT §4 |

`PASS_ALL` 的定义要写死：对 `ir_classify` **所有** 命中（含无 route 位的 music/device_status）
都返回 `T8_TO_PASS`。这是 review 意见里"安全状态"的具体含义。

### 5.1 回执（ack）什么时候写

| 时机 | 内容 |
|---|---|
| 首次成功应用到某 gen | `{"gen":41,"state":"active","build":"…","rules_hash":"…","boot_ms":…,"applied":1}` |
| 拒用 | `{"gen":41,"state":"refused","reason":"build|proto|schema","build":"…"}` |
| 每 10 s 心跳 | `state` 保持，刷新 `boot_ms`（用于 worker 判断 hook 还活着） |
| 进入 EXPIRED | `{"state":"expired","gen":…}` |

写失败（权限/SELinux）：hook 计数并在 logcat 记一行；worker 侧则永远拿不到 ack ⇒ C3 不满足
⇒ 不执行本地技能（I1）。这是**明确的功能缺失**，必须由部署门禁检出（P1 第一步就是 probe 这个写权限）。

---

## 6. 故障场景矩阵（24 项，含"能否双执行/静默"的判定）

图例：`D` = 可能双执行，`S` = 可能静默，`-` = 都不会。

| # | 场景 | hook 行为 | worker 行为 | 用户可感 | D/S | 检测手段 |
|---|---|---|---|---|---|---|
| 1 | 两侧正常 | 按表 | C1–C5 满足→执行 | 正常 | -/- | `own_state=active` |
| 2 | 首次启动，表不存在 | PASS_ALL | 无表→不执行 local | 原厂答（music 会答"控制不了"） | -/- | `own_missing++` |
| 3 | 表被截断/语法错 | 保留旧表至 exp，之后 PASS_ALL | 心跳即刻重写，通常 2 s 内恢复 | 短暂"全原厂" | -/- | `own_parse_err++` |
| 4 | 半写（非原子写入） | 拒用（JSON 不完整） | 不会发生（写端原子） | 同 #3 | -/- | `own_parse_err` |
| 5 | `not_before` 在未来 | H2_PENDING（用上一张表；无表则 PASS_ALL） | 内存仍用旧 gen | 无感 | -/- | `own_pending_ms>0` |
| 6 | worker 卡住，租约过期 | PASS_ALL | 心跳停→C2 不满足，不执行 | 全原厂 | -/- | `own_expired++`、`skill_skipped=lease` |
| 7 | 设备休眠 10 分钟 | 单调钟暂停，租约"冻结" | 同左 | 恢复后一致 | -/- | —（CLOCK_MONOTONIC 语义） |
| 8 | worker 重启（新 gen） | 读到新表，`not_before` 到点切换 | 先写表→回读→等 ack | 1.5 s 内不出本地技能 | -/- | `own_gen` 变化 |
| 9 | worker 崩溃循环（gen 连增） | 每次读到尚未生效的表→PENDING | 始终 DEGRADED | 全原厂 + 状态页红字 | -/- | `own_gen` 跳变 |
| 10 | `:core` 重启（hook 新进程） | 冷启动 → H1 → 读表 → H3 | ack 心跳中断 ≤10 s → C3 短暂不满足 | 最多 1 句降级 | -/- | `own_ack_age_ms` |
| 11 | hook 重启 + 表已过期 | PASS_ALL | 不执行 | 全原厂 | -/- | 组合 #6+#10 |
| 12 | hook 在应用表时崩溃 | 进程重启后重新读表 | 无感知 | 重试后正常 | -/- | 日志断档 |
| 13 | 设备重启 | 全部 H0→H1；worker 起得晚时先 PASS_ALL | 启动后建表 | 开机头几秒全原厂 | -/- | `own_boot` |
| 14 | `skill_ownership_enabled=0` | `TG_NLU_OWNERSHIP=0` → H6，用编译 mask（T9-26 行为） | 不写表 | 回到今天 | -/- | 开关日志 |
| 15 | worker 写表失败（磁盘满/权限） | 读不到新表→继续旧表至 exp→PASS_ALL | **不切换**（两阶段提交） | 全原厂 + 红字 | -/- | `own_write_fail++` |
| 16 | 写入成功但回读校验失败 | 可能读到新表 | 视为失败→不切换（保持旧 gen） | 旧 gen 行为延续 | **S**（旧表与新意图不符时） | `own_readback_fail++`；需人工介入 |
| 17 | ack 从未出现（权限不成立） | 正常运行但写不出回执 | C3 失败→**永不执行 local** | 本地技能全部退化 | -/- | `own_ack_missing++`（部署门禁必须为 0） |
| 18 | ack 过期（hook 卡死） | 可能仍在跑但没写回执 | C3 失败→不执行 | 全原厂 | -/- | `own_ack_age_ms` |
| 19 | ack.gen ≠ table.gen | 按已应用的表运行 | C3 失败→不执行 | 全原厂 | -/- | `own_ack_gen_mismatch` |
| 20 | ack.build ≠ 期望（混版本） | 可能据旧协议运行 | C4 失败→不执行 | 全原厂 | -/- | `own_build_mismatch` |
| 21 | `rules_hash` 不一致（F3） | 无法自知 | C4 失败→不执行 + 每分钟一条告警 | 全原厂 | -/- | `own_rules_mismatch` |
| 22 | 墙钟被 NTP 跳变 | 不受影响（用单调钟） | 不受影响 | 无感 | -/- | — |
| 23 | 切换瞬间有语音进入 | 旧表到 `not_before` 前用旧表 | 同一时刻切换（C2） | 该句按旧语义 | -/- | `own_gen_at_decision` 日志 |
| 24 | L2 超时 + 归属同时降级 | — | 先按 C2 失败→不执行；L2 熔断 | 一句"现在做不到" | -/- | 两个计数器 |

**只有 #16 存在"可能静默"**，它的成因是"表已换但 worker 认为自己没换成"。
因此 #16 被定义为**必须人工介入**的故障，并且重试策略是：回读失败 → 用**旧 gen 重写一遍**
（写入幂等），最多 3 次；3 次都失败 → worker 主动进入 W4_DEGRADED（不执行 local）+ 锁存红字。
这样静默窗口被限制在"回读失败的那一次"而不是"一直"。

---

## 7. 备选回执通道（ack 写不进去时）

| 方案 | 时延 | 优点 | 缺点 | 采用条件 |
|---|---|---|---|---|
| `/data/misc/tgz02/` 的 ack 文件 | ≤2 s | 结构化、可校验、可心跳 | 依赖目录权限与 SELinux | **默认** |
| hook 打 logcat，worker 读 `factory_talk.log`（已有 tap 通道） | 1–3 s | 零新权限 | 需解析文本；日志可能被轮转 | ack 文件不可用时兜底 |
| 现有 `tgb_proto` ACK 帧扩展 | ~0 | 零新文件 | 需改 4 个组件、破坏协议对拍 | **不采用**（§2.1） |

兜底方案的门禁更严：`own_ack_via_log=1` 时必须验证"审计日志里 10 分钟内出现 ≥5 次回执行"，
否则视为未接通。

---

## 8. 代次（gen）与重启语义

| 事件 | gen | `not_before` | 说明 |
|---|---|---|---|
| 归属/开关变化 | +1 | now+1500 | 唯一正常增长路径 |
| worker 重启 | **保持**（从盘上读回） | 若表仍有效则不重写 | 避免每次重启都抖动 |
| worker 重启且表已过期 | +1 | now+1500 | 必须重签 |
| 设备重启 | +1 | now+1500 | 单调钟归零，旧表必然过期 |
| 紧急回滚 | +1 且 `owner` 全 factory | now+1500 | 表合法，只是全放行 |

`gen` 单调性由 worker 保证（读回旧值 +1），**hook 不接受小于自己已应用 gen 的表**
（防"恢复旧备份"导致的时间倒流）。

---

## 9. 与 F1/F2/F3 的对应关系（验收口径）

| 缺陷 | 系统性解法 | 怎么证明 |
|---|---|---|
| **F1 双执行** | ① hook 与 worker 从**同一张表**推导（PASS ⇔ factory，TAKE ⇔ local/ai），`mask` 生效期不参与；② worker 只在 C1–C5 全满足时执行；③ 单写者 + `not_before` 同时切换 + ack 确认 | 12 组配置矩阵 × 3 句/组，日志里 `route=native` 与 `skill claimed` 对同一 `event_id` 共现次数 = 0；并额外构造"owner 与 bit 矛盾"的表，验证仍不双执行 |
| **F2 关闭技能后静默** | owner 回 factory ⇒ hook PASS（H3 生效后）；worker 不执行 | `skill_music_enabled=0` 时听到原厂那句"我控制不了音箱里的应用"；`own_pass_by_factory++` |
| **F3 语义漂移** | `rules_hash` 双侧比对 + ack 上报 + C4 否决 + 每分钟告警 | 故意改一侧规则重编，必须看到 `own_rules_mismatch` 且本地技能停止执行 |

---

## 10. 可测试性（host 可覆盖 vs 只能真机）

| 部分 | host 单测可覆盖 | 说明 |
|---|---|---|
| 表解析/校验/拒载规则 | ✅ | 纯函数，喂 JSON 文本 |
| gen 单调、`not_before` 边界、租约边界 | ✅ | 注入假时钟 |
| 两阶段提交（写→回读→切换） | ✅ | 注入故障的 fs 层 |
| hook 状态机（H0–H6） | ✅ | 把"读文件"抽象成回调 |
| 单调钟 vs 墙钟跳变 | ✅ | 注入时钟 |
| `:core` 实际写 `/data/misc/tgz02` 权限 | ❌ | 真机 probe（P1 第一步） |
| `:core` 重启时 ack 中断窗口 | ❌ | 真机 `kill` + 观察 |
| 休眠后的租约语义 | ❌ | 真机息屏 10 分钟 |
| 12 组配置矩阵的双执行判定 | ❌ | 真机 + 日志断言 |
