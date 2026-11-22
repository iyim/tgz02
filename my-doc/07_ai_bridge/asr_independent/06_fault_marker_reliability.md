# T7-10：死信故障标记的可靠性（写要说成功，读要说不知道）

对象：`my-doc/07_ai_bridge/android/ai_worker.c`（+ `worker_status.h/.c` 状态字段）
上下文：T7-09 建立了"死信回滚失败 → 持久化故障（`dead_letter_failed`）"这条语义，但**故障
标记本身**这一步是不可靠的：写失败无人知道，读失败被当成"没有标记"。

## 1. 两个洞

| 洞 | 原实现 | 后果 |
|---|---|---|
| 写失败静默 | `dl_write_fault_marker()` 是 `void`，`open/write/fsync/close/rename` 五步全用 `(void)` 吞掉返回值 | 标记没写进去也照样返回 `-5`，状态文件里看不出差别。设备重启后**跨重启保护凭空消失**，同一个"尾部状态不确定"的死信文件可能被再追加一次 |
| 读失败 = 没有 | `dl_marker_blocks()`：`wu_file_size()<=0` 或 `wu_read_file()!=0` 都 `return 0` | 把"读不出来"当成"没问题"。权限、IO 错误、标记文件被写成目录……全部被解读成"可以继续追加"，把一个不确定状态升级成确定的损坏 |

核心原则（本轮唯一新增的原则）：

> 只有两种结论可以驱动追加 —— **确定的"没有标记"** 或 **确定的"匹配当前事件"**。
> 其余一切（读不出、空文件、内容异常、读不全、stat 原因不明）都是**"不知道"**，
> 而"不知道"必须按故障处理：**不追加、不推进 offset、进 `dead_letter_failed`**。

## 2. 改法

### 2.1 读取三态 `dl_marker_probe()`

| 返回 | 条件 |
|---|---|
| `T6B_MARKER_ABSENT (0)` | `stat` 报 `ENOENT`（确实不存在）；或标记可读、格式正常但 `event_id` 是**别的事件**（对当前事件"明确不阻塞"，与 T7-09 行为一致） |
| `T6B_MARKER_MATCH (1)` | 可读，且内容含 `"event_id":"<当前>"` |
| `T6B_MARKER_UNKNOWN (-1)` | 文件存在但读不出（权限/是目录/IO 错误）、空文件、内容里连 `"event_id":"` 都没有、文件比读缓冲大（读不全）、`stat` 失败但不是 `ENOENT` |

### 2.2 写入四步检查 `dl_fault_marker_write()`

返回 `0` = `write` + `fsync` + `close` + `rename` **全部成功**；返回 `-1` = 某一步失败，
`t6b_marker_out{stage, io_errno, len}` 带出**失败在哪一步**（`open/write/fsync/close/rename`）。

- 失败即 bail，不往下走（例如 `write` 失败就不 `fsync` 不 `rename`）。
- **`close` 失败不做 `rename`**：数据很可能已经 `fsync` 到盘，但我们不替文件系统下结论 ——
  宁可报"保护未建立"，也不宣称一个我们没验证过的状态。
- 失败路径尽力 `unlink` 掉 `.tmp`，不留半成品。

### 2.3 决策表（`dead_letter_event()`）

| 探针结果 | 动作 | 返回 |
|---|---|---|
| `ABSENT` | 正常走原有死信追加（**正常路径完全不变**） | 见下 |
| `MATCH` | 拒绝追加；`dl_marker_state=4`；`dead_letter_failed`；偏移不动 | `-5` |
| `UNKNOWN` | 拒绝追加；`dl_marker_state=3`；`dead_letter_failed`；偏移不动；日志明说"无法确认" | `-5` |

`-5` 在主循环里落闩锁（T7-09 已有）：`pend_dl_fault=1`，之后不再调用 `provider_attempt()`，
因此不会重复追加、不会推进 offset、不会静默跳过。**无论标记写成功还是写失败，这个闩锁都成立**
—— 标记写失败只是意味着"这份保护活不过重启"，不是"可以继续写"。

### 2.4 状态可见（`worker_status`）

`dead_letter` 对象新增三个字段，triage 一眼能看出"跨重启保护到底存不存在"：

| 字段 | 值 |
|---|---|
| `marker_state` | `0` 未涉及 / `1` 已写入（保护已建立）/ `2` 写入失败（保护未建立）/ `3` 存在但无法确认 / `4` 存在且匹配（拒绝追加） |
| `marker_stage` | 写入失败发生在哪一步（`none/open/write/fsync/close/rename`） |
| `marker_errno` | 对应 errno（平台不提供时为 0） |

`marker_state=2` 的现场语义：**进程内已经停住，但"重启后仍然停住"这件事没有保障**。

## 3. 人工处理（刻意保留，不自动删）

标记文件永远不自动删除，必须由人处理：

1. 看 `ai_worker_status.json` 的 `dead_letter.marker_state / marker_stage / marker_errno`；
2. 检查 `dead_letter.jsonl` 尾部（`dead_letter.fault.json` 里记着 `pre_len/cur_len`）；
3. 修复或删除 `dead_letter.fault.json`（`marker_state=2` 时也可能是它没写成功 —— 那就得
   先修好目录权限，再人工放一份标记，或确认尾部安全后直接继续）；
4. 重启 Worker 前确认标记状态是"符合预期"的。

## 4. 测试（三个要求场景 + 病理样本）

主机自检入口 `--marker-selftest <fixture_root>`：**只在 `T6B_DL_TESTING && T6B_DL_TEST_ENV`
的测试构建里存在**，生产 ARM 产物里连字符串都没有（构建脚本会断言）。

病理样本不用写测试代码造，直接靠文件系统造：

| 场景 | 造法 | 期望 |
|---|---|---|
| 标记不存在 | 空目录 | `probe=0` |
| 标记正常存在且匹配 | 写一份带 `e-mk` 的标记 | `probe=1` |
| 标记存在但是别的事件 | 写一份带 `other-9` 的标记 | `probe=0`（明确不阻塞） |
| **标记读取失败** | 把标记路径做成**目录** | `probe=-1`，`stage=open` |
| 标记空文件 | 0 字节标记 | `probe=-1` |
| 标记内容异常 | 写 `hello, not a marker` | `probe=-1` |
| 写入正常 | 空目录 | `write=0`，随后 `probe=1`（round trip） |
| **写入失败 open** | 把 `.tmp` 路径做成**目录** | `write=-1`，`stage=open`，且**不产生假标记** |
| 写入失败 rename | 把标记路径做成**目录** | `write=-1`，`stage=rename` |

Worker 级（真实进程 + 真实文件）：

| 用例 | 造法 | 断言 |
|---|---|---|
| e2e C | 回滚失败（`fsync_fail`+`trunc_fail`），标记可写 | 标记落盘，`marker_state=1`，闩锁成立，记录数不变 |
| e2e E | 同上，但 `.tmp` 是目录（标记写不进） | `marker_state=2`/`stage=open`，日志 `FAULT MARKER WRITE FAILED` + `cross-restart protection NOT established`，仍闩锁，offset 不动，记录数不变，**没有假标记文件** |
| e2e F | 标记是目录（读不出），**不加故障注入** | 日志 `CANNOT BE CONFIRMED` + `append refused`，`marker_state=3`，`dead_letter.jsonl` 仍只有种子 1 行，offset 不动，事件仍 pending |

## 5. 刻意不做

- 不改正常死信写入 / offset 提交 / Provider 重试策略（e2e A/B 原样通过）。
- 不自动删除标记、不做"自动修复"。
- 不加目录 `fsync`（本轮要求只覆盖 `write/fsync/close/rename` 四步）—— 记为已知边界：
  `rename` 之后掉电仍可能丢目录项，属于文件系统级保证，不在本轮范围。
- 不扩展死信故障矩阵（`dead_letter.c` 的注入组合本轮没动）。
- 不部署新 Worker，不重启设备 / `:core`。
