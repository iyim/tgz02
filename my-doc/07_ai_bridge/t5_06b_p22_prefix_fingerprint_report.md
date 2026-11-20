# T5-06B P2-2 补充修复：Android 文件重建的内容身份识别（前缀指纹）+ 指纹提交原子性

- 基线提交：`2f0a08a6`（T5-06B P2 数字字段窄化修复）
- 第一轮（内容身份识别）：`40342109`
- 本轮（复审 P1，**指纹提交原子性**）：先算局部哈希，`[off,pending)` 全部字节成功后才落到正式指纹
- 本轮范围：文件身份识别 + 其提交原子性。Provider 接口、消费语义（at-least-once）、单实例锁、
  events.jsonl 协议、T5-05A/B/C 生产代码均未改。
- 证据：`evidence/device_p22_atomic_fold.log`（本轮真机原子性）、`evidence/host_prefix_atomic.log`
  （本轮主机子集）、`evidence/device_p22_prefix_fingerprint.log`、
  `evidence/device_p2p2_inode_reuse.log`、`evidence/host_unit_test.log`、`evidence/host_integration_test.log`、
  `evidence/host_recreate_longer.log`、`evidence/host_prefix_same.log`、`evidence/host_legacy_state.log`、
  `evidence/host_prefix_fault.log`、`evidence/host_append_no_reset.log`、`evidence/ndk_build.log`。

## 1. 结论摘要

| 项 | 结果 |
|---|---|
| 真机 inode 复用实证 | 删除后立刻重建，`st_dev:st_ino` **完全相同**（`45846:86205` → `45846:86205`，多次复现） |
| 真机"重建且更长" | 重启后判定 `prefix_mismatch`、偏移归零、**从新文件第一条读起**（日志有 `p22-b1`），新文件 3 条全部消费 |
| 真机运行期换文件 | 先观察到 `file_size=-1`（保留旧 fd），新文件出现后从第一条读起，`processed=5`、`invalid=0` |
| 真机"前缀相同 + 追加" | 偏移保留、只处理追加的 2 条、`identity_resets=0` |
| 真机正常追加 | 4 次真追加（inode 不变），`resets=0 / replacements=0 / truncations=0`，6 条各处理一次 |
| 真机 v1 状态迁移 | 从 0 重扫 + `recent_ids` 去重（有界重复 1 条），状态就地升级为 version=2 |
| 真机故障 | `T6B_FAULT_PREFIX=read` → 退出码 6、偏移不动；`=fold` → 退出码 6、`processed=0`、偏移 0 |
| **指纹提交原子性（本轮 P1）** | `fold_range()` 只累加局部 `next_hash`，全部字节成功后才赋值给 `r->prefix_hash`；任何失败时指纹/偏移/pending **三者都不动** |
| **真机中途失败注入** | `=fold_partial`（读完第一块 4096 B 之后失败）→ 退出码 6，落盘 `offset=285`、`prefix_hash=dcbe3ddf0f0b22f7` 与故障前**逐字节相同**；重启核对 `resets=0`，超长行重试成功 |
| **突变测试（证明用例有效）** | 把 `fold_range()` 改回"逐块写正式指纹"的旧写法：主机单元 3 项失败、集成 i25 失败（状态文件落盘 `offset=250` 配半截指纹 `f35ed3df…` ≠ `7c7db664…`） |
| 主机单元 | **401 checks / 0 failed**（P2-2 首轮 359，本轮新增 42 项） |
| 主机集成 | **27/27 PASS**（新增 i18–i24；本轮新增 i25） |
| ARM32 构建 | NDK r21e，`-O2 -Wall -Wextra`，**0 warning / 0 error** |
| 真机 ARM32 单元测试 | **401 / 401 PASS**（设备上执行，非主机） |
| 真实 `events.jsonl` | 全程 `sha256=072ea606…` 未变 |

## 2. 原问题

Android ext4/f2fs 在**同目录删除后立刻重建**时会复用 inode 号（已实测，见 §3）。
T5-06B 原来的文件身份只有 `(st_dev, st_ino)`，于是：

- 重建后的文件"看起来还是同一个"；
- 重启时会把状态里的旧 `offset` 直接套到新文件上；
- 新文件比旧偏移长 → 从**中间**开始读：开头的记录被永久跳过，甚至从半行中间解析。

上一轮已经把这条记为遗留项（"inode 复用无法检测，需要改身份存档格式，等评审"）。
本轮按评审确定的方向补齐。

## 3. 设计（按评审要求逐条对应）

### 3.1 前缀指纹：覆盖 `[0, offset)` 的增量哈希

- 哈希：FNV-1a 64（`WU_HASH64_SEED` / `wu_hash64_ext()`，见 `worker_util.h`）。
  项目内自用常量，只作身份指纹，不做密码学校验（碰撞概率 2⁻⁶⁴ 量级，且只用于"是不是同一段字节"这种判定）。
- **覆盖范围是 `[0, offset)` 的全部已提交字节**，不是文件头几个字节：
  任何一条早期记录的改动都会改变指纹。
- **增量维护**：`t6b_reader_commit()` 只把本次提交的 `[off, pending)` 并入哈希
  （`fold_range()`），因此每条事件的代价是 O(记录长度)，**不会**每处理一条就重扫整个文件。
  只有两种例外需要回读磁盘：① 跳过超长行（内容没进内存）；② 跳过非法行时缓存未覆盖。
- 前缀重算只发生在**打开一个新 fd** 时（启动、换文件、文件消失后重新出现），
  正常追加走同一个 fd，绝不重算。

### 3.2 判定规则（只有"内容"说话）

| 情况 | 处理 |
|---|---|
| 新 fd 打开时 `size < off` | 偏移归零（同文件缩水 → `truncations++`；已换文件 → `replacements++`，两者互斥） |
| 新 fd 打开时 `size >= off`，重算 `[0,off)` **不等**于存档指纹 | 判定内容身份变化：`identity_resets++`、`offset=0`、`pending=0`、清读缓存、更新身份、从第一条重读（`recent_ids` 去重） |
| 重算结果**相等**（哪怕 inode 变了） | 偏移保留：截至旧偏移字节完全相同，继续读在语义上安全 |
| 重算失败（读不出来） | **致命**：`t6b_reader_init` 返回 -2 / `t6b_reader_next` 返回 -4 → 退出码 6，绝不当"没变化"处理 |

### 3.3 文件消失时保留 FD（第二道防线）

`ensure_open()` 在路径 stat 失败时**不再关闭旧 fd**，只作废读缓存。只要这条 fd 还活着，
内核就不会把这个 inode 号复用给新文件，于是 `(dev,ino)` 在运行期重新变得可靠；
真正的判定仍然走 §3.2 的指纹比对。运行期换文件因此有两条独立证据（inode 变化 + 内容变化）。

### 3.4 状态文件 version=2（兼容 version=1）

`consumer_state.json` 新增 `"prefix_hash":"<16 位十六进制>"`，`version` 从 1 升到 2：

- **v1 读入**：`have_prefix_hash=0`，`offset` 归零重扫，**保留 `recent_ids`**，
  日志明确写 `state v1 has no prefix fingerprint (offset=…) … bounded duplicates`，
  计数器 `legacy_rescans++`。绝不把"没有指纹"当作"验证通过"。
- **v2 缺少 `prefix_hash`**：按状态损坏处理（-2，走既有的留档 `.corrupt-*` 流程）。
- **落盘**：`t6b_state_save()` 在没有指纹时**直接拒绝写入**（返回 -1），
  避免把"不可信的偏移"写进状态文件；调用方据此停止消费（既有 P1-3 路径，退出码 5）。

### 3.5 失败即停（对应要求 8）

| 失败点 | 行为 |
|---|---|
| 前缀重算失败（启动/换文件时读不出来） | 退出码 **6**，状态文件写 `state=error`、`exit_reason=identity_verify_failed`，偏移保持磁盘上的值不动 |
| 提交时指纹推进失败（回读失败） | 退出码 **6**，`offset` 不前进、`events_processed` 不计数，pending 事件保留 |
| 状态落盘失败 | 既有路径不变：停止消费、退出码 5 |

### 3.6 指纹提交的原子性（本轮复审 P1）

**问题**：`fold_range()` 原来在回读 `[off,pending)` 的循环里逐块写 `r->prefix_hash`。
如果第一块读成功、第二块 I/O 失败，函数虽然返回 -1（`commit` 不前进 offset），
但**正式指纹已经被推进了一半**；退出前 `state_save()` 会把"旧 offset + 半截指纹"写进
`consumer_state.json`，这对值互不自洽，下次启动必然把健康文件判成"内容身份变化"。

**修复**（只动 `fold_range()`，不改算法、状态格式、Provider 与消费语义）：

```
unsigned long long next_hash = r->prefix_hash;   /* 局部变量，正式指纹只读 */
...
缓存快速路径:  next_hash = wu_hash64_ext(next_hash, p, n);  /* 整段一次算完 */
回读路径:      逐块 next_hash = wu_hash64_ext(next_hash, tmp, got);
               任何 seek/read 失败 → return -1   （next_hash 丢弃）
最后一步:      r->prefix_hash = next_hash;        /* 全部字节成功，才提交 */
```

- 失败时 `r->prefix_hash` 不变、`r->off` 不变、`r->pending` 不变（`t6b_reader_commit()`
  只在 `fold_range()` 返回 0 之后才 `off = pending`；失败分支直接 return -1）。
- 因此 `state_save()` 落盘的永远是"某个 offset + 该 offset 之前的字节的指纹"这一对自洽值。
- 缓存快速路径同样"整段算完再提交"；它没有 I/O，不存在中途状态。

**中途失败注入** `T6B_FAULT_PREFIX=fold_partial`：在回读路径**读完第一块 4096 B 之后、
第二块之前**返回 -1（`injected fault: prefix fold failed mid-way (pos/to bytes)`）。
与已有的 `=fold`（一开始就失败）互补：后者证明"失败即停"，前者证明"失败不留半截指纹"。
该注入只在多块回读路径生效——缓存路径一次算完，没有"中途"这个概念（已有用例显式断言这一点）。

## 4. 修改文件

| 文件 | 改动 |
|---|---|
| `android/worker_util.{h,c}` | 新增 `WU_HASH64_SEED`、`wu_hash64_ext(seed,data,len)`；`wu_hash64()` 改为它的封装（行为不变） |
| `android/event_reader.h` | 结构体新增 `prefix_hash` / `hash_valid` / `identity_resets` / `legacy_rescans`；`t6b_reader_init()` 增加 `start_hash`、`start_hash_valid`；`t6b_reader_commit()` 改为返回 `int`；新增 `t6b_reader_prefix_hash()` / `t6b_reader_hash_valid()`；新增两个打开原因 `prefix_mismatch` / `legacy_state_rescan` |
| `android/event_reader.c` | `hash_prefix()`（重算）、`fold_range()`（增量推进/回读）、`t6b_fault_prefix()`（测试注入）、init 的核对与迁移逻辑、`ensure_open()` 保留 fd + 统一指纹判定、`commit` 返回错误 |
| `android/consumer_state.{h,c}` | version 2、`prefix_hash` / `have_prefix_hash`、v1 兼容读取、v2 缺字段判损坏、无指纹拒写 |
| `android/ai_worker.c` | init 传入指纹并处理 -2（退出码 6 + 写 error 状态）；`commit_event` 先提交偏移/指纹再计数；重复/非法/超长三条路径统一走 `commit_skipped()`；状态与状态文件写入指纹；退出摘要新增 identity 行；usage 增加退出码 6 |
| `android/worker_status.{h,c}` | 新增 `prefix_hash` / `prefix_hash_valid` 与计数 `identity_resets` / `legacy_rescans` |
| `tests/worker_unit_test.c` | `rd_init_seed()` / `rd_init_hash()` 夹具；v1 迁移、增量指纹、故障注入三组新用例；P2-2 用例改为"指纹说话"的两分支断言 |
| `tests/worker_integration_test.py` | 新增 i18–i24；`prefix_hash_of()` 独立实现用于交叉校验 |
| `tests/run_host_tests.ps1` | 新增 5 个子集日志（i18/i21/i22/i23/i24） |

本轮（复审 P1，原子提交）只改这四个文件：

| 文件 | 改动 |
|---|---|
| `android/event_reader.c` | `fold_range()` 改为局部 `next_hash` + 末尾一次性提交；新增 `T6B_FAULT_PREFIX=fold_partial` 注入（回读路径第一块之后失败）；故障注入注释同步 |
| `tests/worker_unit_test.c` | 新增 `test_reader_prefix_atomic()`：回读路径中途失败（指纹/偏移/pending 三者不动 + 恢复后等于一次性 FNV）、缓存路径"全有或全无"；新增 42 项检查 |
| `tests/worker_integration_test.py` | 新增 i25：真实进程中途失败 → 退出码 6、状态文件 offset 与 prefix_hash 仍成对、重启核对通过、未提交记录重试 |
| `tests/run_host_tests.ps1` | 新增子集日志 `host_prefix_atomic.log`（i25） |

未改动：`provider.*`、`mock_provider.c`、`seq_gap.*`、`06_t5_bridge/`、`06_t5/`、`03_uds_test/`、原厂 APK/native 库。

## 5. 真机证据（TG-Z02，Mock Provider，零网络）

原始输出：`evidence/device_p22_prefix_fingerprint.log`（含每一步的 `adb shell` 命令与完整状态 JSON）。

### 5.1 inode 复用实证

```
> stat -c '%d:%i' events.jsonl ; stat -c '%s' events.jsonl
original : 45846:86205  547
> rm -f events.jsonl ; <立刻写一个更长的新文件>
recreated: 45846:86205  847
FINDING: dev:ino reused -> (dev,ino) alone cannot detect this; prefix fingerprint is required
```

同一现象在上一轮的证据 `evidence/device_p2p2_inode_reuse.log` 里也有三连复现
（`45846:86194` 三次重建完全相同）。**这就是本轮必须引入内容指纹的原因。**

### 5.2 停止期间换文件（核心用例）

worker 停机 → 换成长文件（更长、前缀不同）→ 重启：

```
[aiw] events.jsonl content identity changed (saved offset was 547, prefix fingerprint mismatch):
      rescanning from offset 0; recent_ids suppress duplicates
[aiw] event id=p22-b1 seq=1 pid=29413 text_bytes=35 -> provider=mock status=ok
...
restart: processed=3 identity_resets=1 offset=847
ASSERT OK: restart detected the prefix mismatch and read p22-b1 (no record skipped)
```

新文件 3 条全部处理，`offset` 到达文件末尾 847，日志里能看到第一条 `p22-b1`
——**没有任何记录被跳过**。

### 5.3 运行期删除 + 重建更长文件

脚本 `p22_c.sh`（推到设备上执行，避免 adb 引号干扰）：

```
BASE_OK processed=2               # 旧文件 2 条消费完
ABSENT_OK                         # rm 之后 worker 观测到 file_size=-1（旧 fd 仍持有）
SWAP_OK processed=5 offset=871    # 新文件 3 条全部处理
replacements=1 invalid=0
REPLACED_OK
ASSERT OK (C): absent window seen, new longer file read from its first record, 0 invalid
```

### 5.4 新文件更短 / 前缀相同（语义安全的继续）

- 更短：`events_processed=1`、偏移等于新文件大小（`D` 段）。
- 前缀到旧 offset 完全相同、只在后面追加：`identity_resets=0`、只处理追加的 2 条、
  偏移到末尾（`E` 段）。这条正是"inode 变了但内容没变"的情形，**不许**误判成换文件。

### 5.5 v1 状态迁移

```
> push 一份手写 version=1 状态（offset 越过第一条，recent_ids 里已有第一条）
[aiw] state v1 has no prefix fingerprint (offset=…): cannot prove the file is the same one;
      rescanning from offset 0 and relying on recent_ids (1 ids) for bounded duplicates
[aiw] legacy state migrated: rescanning from offset 0 with prefix tracking enabled
status: legacy_rescans=1 events_processed=2 duplicates=1
state : {"version":2,…,"prefix_hash":"…"}
ASSERT OK: v1 -> v2, rescan from 0, 1 duplicate suppressed
```

### 5.6 指纹故障 → 停止消费

```
read 故障: rc=6 ; status: exit_reason=identity_verify_failed ; offset 保持 744（磁盘原值）
fold 故障: rc=6 ; prefix hash update failed … offset NOT advanced ; events_processed=0 ; offset=0
ASSERT OK: read fault rc=6 (offset kept), fold fault rc=6 (offset 0, nothing processed)
```

### 5.7 正常追加不误判

脚本 `p22_h.sh` 用 `printf >>` 真追加 4 次（**inode 前后完全一致**）：

```
inode before=45846:86222 after=45846:86222
resets=0 replacements=0 truncations=0 invalid=0 inode_same=yes
APPEND_OK   (processed=6，每条一次)
```

### 5.8 真实桥接文件未被触碰

`/data/local/tmp/t5_bridge/work/events.jsonl` 全程 `sha256=072ea606…`、111 行不变。

### 5.9 指纹提交中途失败 → 落盘的 offset/指纹仍成对（本轮 P1，真机）

原始输出：`evidence/device_p22_atomic_fold.log`（脚本 `_analysis/t506b/n4_device_atomic.ps1`，
推上去的正是本轮 ARM32 产物 `sha256=85d931ef…`）。

```
# 阶段 1：先正常消费第 1 条（285 B），拿到一对自洽的落盘值
exit reason=idle_timeout processed=1 … offset=285
file identity: reason=first_open offset=285 prefix_hash=dcbe3ddf0f0b22f7
state: {"version":2,…,"offset":285,"prefix_hash":"dcbe3ddf0f0b22f7",…}

# 阶段 2：追加一条 70297 B 的超长行 + 第 3 条（总 70582 B），注入 T6B_FAULT_PREFIX=fold_partial
skip oversize record at offset 285 (limit=8192 bytes)
prefix hash update failed (injected fault: prefix fold failed mid-way (4381/70297 bytes)):
      offset NOT advanced; stopping consumption
exit reason=identity_hash_failed … offset=285        ← rc=6
state: {"version":2,…,"offset":285,"prefix_hash":"dcbe3ddf0f0b22f7",…}   ← 与阶段 1 逐字节相同
counters: oversize_lines=1 io_errors=1 events_processed=0

# 阶段 3：去掉故障重启 → 指纹核对通过（resets=0），超长行重试提交，第 3 条处理一次
start … offset=285 → exit reason=idle_timeout processed=1 resets=0 offset=70582
file identity: reason=first_open offset=70582 prefix_hash=6ba0c7c5abfe4f72 resets=0 legacy_rescans=0
counters: oversize_lines=1 events_processed=1 duplicates=0 identity_resets=0
state: {"offset":70582,"prefix_hash":"6ba0c7c5abfe4f72","processed_total":2,…}

# 阶段 4：再重启 → 完全 no-op（processed=0、offset 不变）
# 阶段 5：真实桥接文件 sha256 仍为 072ea606…，临时目录已删除、无残留进程
ASSERT OK / RESULT: PASS
```

要点：
- 注入点 `(4381/70297)` = `285 + 4096`，即**恰好折入了第一块**之后失败——正是旧实现
  会留下半截指纹的那一步；真机落盘值与阶段 1 完全相同，说明半截结果没有泄漏。
- 阶段 3 的 `resets=0` 是**设备侧的一致性证明**：重启时 `hash_prefix([0,285))` 与落盘指纹相等，
  若写下了半截指纹，这里必然变成 `prefix_mismatch` + 归零重扫 + 重复处理。
- 超长行（第 2 条，`seq=2`）在阶段 2 未提交成功，阶段 3 被重新跳过并成功提交
  （`oversize_lines=1`），第 3 条随后处理一次，`duplicates=0`。
  阶段 3 的 `seq_unknown_start=1` 来自夹具：被跳过的超长行本身携带 `seq=2`，可见序列从 1 跳到 3；
  该计数规则属于上一轮既有语义，与本次修复无关，也不影响偏移/指纹。

## 6. 主机测试

- 单元：`evidence/host_unit_test.log` — **401 checks / 0 failed**。
  第一轮新增：v1 迁移（`legacy_rescans=1`、偏移归零、第一条重读）、增量指纹等于整段一次性哈希
  （含跳过超长行后的回读补齐）、半行不计入指纹、`T6B_FAULT_PREFIX=read` → init 返回 -2、
  `=fold` → commit 返回 -1 且偏移不动、v2 状态往返（`prefix_hash` 16 位十六进制）、
  无指纹拒写、v1 无指纹可读但不假装验证、v2 缺字段判损坏。
  本轮新增 `test_reader_prefix_atomic()`（42 项）：
  - 回读路径：70473 B 超长行（> 一个 65536 B 读块，必走文件回读）→ `fold_partial` 注入 →
    `commit` 返回 -1，**指纹 = 故障前值**、`off` 不变、`pending` 不变、`io_errors+1`，
    且显式断言"指纹 ≠ 整段哈希"（证明既没提交也没半截推进）；清故障后一次提交成功，
    指纹等于独立计算的**一次性 FNV-1a 64**，偏移等于该行结束位置；后续记录继续处理。
  - 缓存路径：20001 B 超长行（整行仍在缓存）→ `=fold` 注入 → 指纹/偏移/pending 全不变；
    `=fold_partial` 对缓存路径不生效（无"中途"概念），一次算完即提交，结果同样等于一次性哈希。
- 集成：`evidence/host_integration_test.log` — **27/27 PASS**，新增：
  i18 运行期重建更长、i19 先消失后重建更长、i20 停机期重建（重启识别）、
  i21 前缀相同继续读、i22 v1 迁移、i23 指纹故障 → 退出码 6、i24 追加不误判、
  i25（本轮）中途失败 → `rc=6`、状态文件 `offset=250` 与 `prefix_hash` 仍成对
  （等于外部独立算出的 `[0,250)` 指纹）、`exit_reason=identity_hash_failed`、
  重启 `identity_resets=0` 且未提交的超长行被重试、`processed_total=2`。
- 突变验证（证明新用例真的能抓到 P1）：把 `fold_range()` 改回"逐块写正式指纹"的旧写法后，
  主机单元该用例 **3 项失败**（指纹被推进/二次提交重复折叠导致最终值不符），
  集成 i25 在真实进程上失败：状态文件落盘 `offset=250` 配半截指纹 `f35ed3df745b0792`，
  与正确值 `7c7db664618143d6` 不等。修复版本全绿。
- 子集日志：`host_prefix_atomic.log`（本轮 i25）、`host_recreate_longer.log`、`host_prefix_same.log`、
  `host_legacy_state.log`、`host_prefix_fault.log`、`host_append_no_reset.log`（各 `RESULT: PASS`）。
- 回归未受影响：`host_provider_retry.log`、`host_state_fault.log`、
  `host_reader_half_oversize.log`、`host_file_recreate.log`、`host_lock_stress.log`
  （100 轮 × 20 进程，0 失败）。

## 7. ARM32 构建与真机

`evidence/ndk_build.log`（NDK r21e，`armv7a-linux-androideabi26-clang`，`-O2 -Wall -Wextra -std=gnu99 -fPIE -pie`）：

- `ai_worker`：106796 B，`sha256=85d931ef04f36d161f0334e98e91bd59b82974ba8415e1c23dddf5bf9305964c`；
  `ELF32 / ARM / DYN`，`NEEDED libc.so`；**编译器零输出**。
- `worker_unit_test`：173040 B，`sha256=f74eccf4b5593bf7dc3464bf400c342b237d2a4cdbc9cdbaf7a4b941daea1a6d`。
- 真机执行单元测试：`abi: 32-bit long, ULONG_MAX=4294967295`、**401 / 401 PASS**。
- 真机原子性用例：`evidence/device_p22_atomic_fold.log`（§5.9），推上去的 `ai_worker`
  与上表同一 `sha256`；`uname -m=armv7l`、`sdk=27`。

## 8. 已知限制 / 权衡（如实记录）

1. **指纹只证明"截至旧偏移的字节没变"**。若新文件的前缀恰好与旧文件逐字节相同、只是后面不同，
   则继续读是**语义安全**的（已处理过的内容没变），这也正是要求 6 的情形；本实现选择"继续"。
2. **启动/换文件时的一次性重算成本 = O(offset)**（顺序读，不解析）。当前设备 `events.jsonl`
   只有几十 KB，代价可忽略；若将来单文件达到数百 MB 且频繁重启，需要考虑把指纹改成
   "分段哈希 + 每段长度"的结构（未做，属架构变更，等评审）。
3. **运行期换文件通常走 inode 分支而不是哈希分支**：因为我们一直持有旧 fd，inode 不会被复用，
   所以 `replacements++` 先命中；哈希分支在这种情形下同样会给出相同结论（日志里两者都会出现）。
   真正只能靠哈希兜住的是"worker 停机期间换文件"——这正是 §5.2 的用例。
4. `T6B_FAULT_PREFIX` 仍是**只在环境变量存在时生效**的测试注入点（与 `T6B_FAULT_STATE` 一致），
   默认路径不变；是否在 release 构建里编译掉，仍等评审决定。
5. 去重窗口仍是 128 个 `event_id`：迁移/重建导致的重复处理是有界的，但窗口之外的极老事件
   若被重新扫到仍会再次处理（at-least-once 语义，未变）。
6. **原子性的边界**：本修复保证"一次提交里，偏移与指纹要么一起前进，要么都不动"。
   它不做跨进程/跨文件的事务，也不需要回滚——因为 `t6b_reader_commit()` 是**先算指纹、后移动
   offset**，失败时 offset 从未写过，磁盘上的旧 `(offset, prefix_hash)` 依旧自洽。
7. `fold_partial` 注入点只在**多块回读**路径（缓存路径一次算完，没有"中途"）；`fold` 注入点
   仍在两条路径之前，用来覆盖"一开始就失败"。
8. 失败后进程带退出码 6 停止；重试由外部拉起进程完成（与现有 supervisor 语义一致），
   本模块不自己重试——避免"读失败但仍继续消费"的退化。

## 9. 复现

```powershell
# 主机：单元(401) + 集成(27) + 子集 + 100 轮锁压测
cd D:\tgz02\OS\system\my-doc\07_ai_bridge\tests
powershell -ExecutionPolicy Bypass -File .\run_host_tests.ps1

# ARM32 构建 + 真机 P2-2 全套（inode 复用实证、换文件、迁移、故障、追加）
cd D:\tgz02\OS\_analysis\t506b
powershell -ExecutionPolicy Bypass -File .\n1_ndk_build.ps1
powershell -ExecutionPolicy Bypass -File .\n3_device_p22.ps1

# 本轮：真机 ARM32 单元 + 指纹提交中途失败的原子性（§5.9）
powershell -ExecutionPolicy Bypass -File .\n4_device_atomic.ps1
```

只看中途失败这一条：

```powershell
cd D:\tgz02\OS\system\my-doc\07_ai_bridge\tests
py -3 worker_integration_test.py --only i25
```
