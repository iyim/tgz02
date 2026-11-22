# 05 死信 JSON 修复（Task C）

## 1. 缺陷

`android/ai_worker.c` 里 T7-06-R1 的 `dead_letter_event()` 在拼好一行 JSON 之后执行了：

```c
for (i = 0; i < o; i++) {
    if (line[i] == '"' && i > 0) {   /* 不做完整转义，只把引号压掉 */
        line[i] = '\'';
    }
}
```

它把**整行所有双引号**（包括 JSON 的结构引号）换成了单引号，于是文件里是：

```text
{'ts':2571413984,'event_id':'tgl-e-a1','seq':2,'attempts':4,'error_class':'','error_bytes':22}
```

`json.loads` / `jq` 全部报错 —— 一行都不是合法 JSON，而注释声称"保证一行一条合法 JSON"。

副作用不止"不好看"：死信是**跳过事件**的唯一证据，格式坏了等于"跳了什么、为什么跳"全部丢失。

## 2. 修法（只动死信这一处）

新增两个文件，把"格式化"和"落盘"从 Worker 里独立出来（只有这一处逻辑迁移，其它一概不碰）：

| 文件 | 内容 |
|---|---|
| `android/dead_letter.h` | 记录结构 `t6b_dl_rec`、`t6b_dl_format()`、`t6b_dl_append()` 的契约 |
| `android/dead_letter.c` | 严格 JSON 序列化 + O_APPEND 单次写 + 半行修复 + 失败回滚 |

`ai_worker.c::dead_letter_event()` 变成"填结构 → 格式化 → 追加 → 提交 offset"四步：

```c
n = t6b_dl_format(line, sizeof(line), &rec);
if (n == 0) { ...; return -1; }                  /* 放不下：不写坏行，offset 不动 */
if (t6b_dl_append(path, line, n, &repaired) != 0) { ...; return -1; }  /* 写失败：offset 不动 */
if (commit_event(w) != 0) return -2;             /* 原有语义：指纹没推进 */
```

### 2.1 转义规则（对应验收 1）

| 输入 | 输出 |
|---|---|
| `"` | `\"` |
| `\` | `\\` |
| `\b \f \n \r \t` | `\b \f \n \r \t` |
| 其它 `< 0x20` 与 `0x7f` | `\u00XX` |
| 合法 UTF-8 多字节（3/4 字节） | 原样输出（Eigen/中文/emoji 都能过） |
| **非法 UTF-8**（0xFF / 截断 / overlong / 代理区） | 逐字节替换为 `?`，并置 `"invalid_utf8":1` |

非法 UTF-8 必须处理，否则 JSON 里会留裸字节，标准解析器同样会拒绝——这一条也纳入测试。

### 2.2 严格的 JSON Lines（对应验收 2、3）

- 一条记录一行，行尾必须是 `\n`；缓冲区不够时**返回 0 拒绝写入**，绝不截断；
- 字段固定且顺序固定，每行自包含、可独立解析：
  `{"ts","event_id","seq","attempts","error_class","error_bytes","invalid_utf8"}`；
- 用 `strlen` 之外的显式长度传字符串，避免半截缓冲区混入。

### 2.3 写失败不推进 offset（对应验收 4）

顺序严格是 **写入 → fsync → `commit_event()`**。`t6b_dl_append()` 任一步失败（open / write / fsync / close）
都会 `ftruncate` 回写前长度并返回 -1；`dead_letter_event()` 直接返回 -1，`provider_attempt()` 返回 -2，
主循环保持 pending，不推进偏移。

### 2.4 崩溃 / 半行不当作成功（对应验收 5）

追加前先修尾部：

- 尾部是 `\n` → 不动；
- 尾部是半行 → 截断到最后一个 `\n`（窗口 4 KB；找不到且文件不是从 0 开始 → 先补一个 `\n` 作分隔）；
- 整个文件就是一条半行 → 清空。

截断记录本来就没有行尾、也没被计为"已处理"（offset 只在写成功后提交），所以丢掉它是安全的。
另外 `_chsize` 在 Windows 上不会移动 CRT 的 fd 位置，截断后必须显式 `lseek` 回新末尾 ——
这是本轮实测踩到的坑（不补这一步会把文件写花，见 §4 的第一次失败）。

## 3. 测试（对应验收 6）

| 测试 | 文件 | 结果 |
|---|---|---|
| C 单元测试 | `tests/t7_06r2_dead_letter_unit_test.c` | **46 断言 / 0 失败** |
| Python 解析器测试 | `tests/t7_06r2_dead_letter_json_test.py` | **68 项（仅样例）/ 87 项（含端到端）/ 0 失败** |
| 端到端 A（写成功） | `tests/run_t7_06r2_host_tests.ps1` | 3 条死信、`processed_total=3`、offset 前进 |
| 端到端 B（写失败） | 同上 | `pending_event_id` 保持、`processed_total=0`、`last_event_id` 为空、retries>0 |

覆盖的输入（验收 6 要求的四类全在）：

| 类别 | 用例 |
|---|---|
| 引号 | `a"b`、`c"d`；并断言输出里**没有单引号冒充**、结构字段不可被注入 |
| 反斜杠 | `a\b`、`x\\y` |
| 换行 / 制表 / 回车 / 其它控制字符 | `a\nb\tc\rd\be\ff`、`g\001h\177i` |
| 非 ASCII | `你好`（3 字节）、`😀`（4 字节）、非法字节序列 |
| 边界 | 缓冲区不足 → 返回 0；空指针 → 返回 0；写目录 → -1；缺失目录 → -1；半行修复 |

`json.loads` 侧还额外做了一条**反向证据**：把 T7-06-R1 的写法（引号换单引号）喂给同一个解析器，
必须抛异常 —— 证明这套测试确实能抓住这个缺陷：

```text
PASS regression: legacy quote-mangled line is NOT valid JSON
       legacy line: {'ts':1700000000000,'event_id':'t5b-4242-f000-g1',...}
```

## 4. 实测输出

端到端 A 跑完，`a_state/dead_letter.jsonl` 内容（真实 worker 进程写出来的）：

```json
{"ts":2571413984,"event_id":"e-a1","seq":2,"attempts":4,"error_class":"","error_bytes":22,"invalid_utf8":0}
{"ts":2571414093,"event_id":"e-a2","seq":3,"attempts":4,"error_class":"","error_bytes":22,"invalid_utf8":0}
{"ts":2571414546,"event_id":"e-a3","seq":0,"attempts":4,"error_class":"","error_bytes":23,"invalid_utf8":0}
```

端到端 B 的 worker 日志（路径被同名目录占住 → 拒绝跳过）：

```text
dead-letter: append(...\b_state/dead_letter.jsonl) failed errno=13; event e-b1 stays pending (offset NOT advanced)
...
exit reason=max_runtime processed=0 ... provider_retries=50
WARNING: event id=e-b1 was still unprocessed at exit (50 attempts, offset kept at 243)
```

完整日志：`../evidence/t7_06r2_host_test.log`。

## 5. 保留原策略（对应验收 7）

没有改任何阈值与路由行为：

| 项 | 是否改动 |
|---|---|
| `provider_retry_max` 语义、退避曲线 | 未改 |
| `T6B_DEAD_LETTER_EXTRA = 3`（`retry_max + 3` 次后进死信） | 未改 |
| 死信后跳过、`dead_lettered++`、`rc == -3` 处理 | 未改 |
| 本地指令 / AI 指令分流、放行标记、守卫策略 | 未改 |
| `dead_letter.jsonl` 路径与命名 | 未改 |

只多做了一件不影响决策的事：把 `dead_letters` 计数写进 `ai_worker_status.json` 的 `counters`
（原来只自增不输出，triage 里看不到）。

## 6. 已知限制（写清楚，不藏着）

死信里的 `seq` 字段来自 `w->pend.seq`，而 `pend` 是由**暂存门槽位**（`utterance_gate`）填充的，
槽位的 seq 可能对应"下一句"或为 0（本轮端到端实测就是 `2 / 3 / 0`）。
这是既有行为（`commit_event` 也用同一个字段写 `state.seq_last`），不在本轮修复范围。
**关联死信请用 `event_id`，不要用 `seq`。**

## 7. 编译验证

| 目标 | 结果 |
|---|---|
| 主机 `gcc`（TDM-GCC 10.3，`-O2 -Wall -Wextra -std=gnu99`） | 0 warning 0 error（单元测试、ai_worker 均通过） |
| 设备 `NDK r21e armv7a-linux-androideabi26-clang`（`-fPIE -pie`） | 0 warning 0 error；ELF32 / ARM / DYN，`NEEDED: libdl.so liblog.so libc.so` |

> 本轮**没有把新 `ai_worker` 推到设备**（约束：不改变运行状态）。设备上跑的仍是 T7-06-R1 的
> `32fc28001910…`，死信格式修复要等下一轮部署窗口才生效。

---

## 8. T7-09 追加：回滚失败不再伪装成"普通可重试失败"

### 8.1 原缺陷

```c
if (dl_write_all(fd, line, len) != 0) {
    (void)dl_truncate_sync(fd, end);   /* 回滚结果被丢弃 */
    goto done;                         /* 统一返回 -1 */
}
```

Worker 收到 `-1` 就按普通失败重试。可此时文件尾部**可能还留着完整/半条记录**
（截断失败、或截断成功但回滚的 fsync 失败），于是下一次追加会**重复一条死信**；
而 offset 又没推进 —— 重复与阻塞叠加。

### 8.2 现在的三档语义（`dead_letter.h`）

| 返回 | 含义 | Worker 动作 |
|---|---|---|
| `T6B_DL_OK (0)` | write + fsync 成功（`close` 失败只告警） | 提交 offset（跳过事件） |
| `T6B_DL_E_IO (-1)` | 没写进去，且**已确认**回滚到写前长度 | 保持 pending，按原策略重试（安全） |
| `T6B_DL_E_ROLLBACK (-2)` | 写失败，**回滚未确认**：尾部状态不确定 | 进持久化故障状态，**不再追加、不推进 offset、不跳过** |

回滚确认 = 截断成功 **且** 截断后 seek 成功 **且** 回滚 fsync 成功。
任一步失败都升级成 `-2`，并把 `io_stage / io_errno / rollback_stage / rollback_errno /
pre_len / cur_len(cur_len_valid)` 一起带出去。

### 8.3 Worker 侧闭环

1. `dead_letter_event()` 收到 `-2` → 写故障标记 `dead_letter.fault.json`（`.tmp` + rename，
   内容含 event_id / 阶段 / errno / 写前长度 / 当前长度）→ 返回 `-5`；
2. `provider_attempt()` 把 `-5` 原样上抛（不再落进"可重试"分支）；
3. 主循环收到 `-5` → 置 `pend_dl_fault` 闩锁 + `state="dead_letter_failed"`，
   **不再调用 provider_attempt**（因此不会二次追加）、不推进 offset、不跳过事件；
4. 状态文件新增 `"dead_letter":{"failed","event_id","io_stage","io_errno","rollback_stage",
   "rollback_errno","pre_len","cur_len","cur_len_valid"}`，triage 一眼能看到现场；
5. 标记存在时 `dead_letter_event()` 直接拒绝（返回 `-5`），**跨重启也不会重复追加**。
   标记只能人工处理（确认文件尾部后删除），代码里没有任何自动删除路径。

### 8.4 故障矩阵（主机测试，`-DT6B_DL_TESTING`）

| # | 注入 | 期望 | 实测 |
|---|---|---|---|
| A2-1 | 先短写、再 write 失败，回滚成功 | `-1`，pre_len 回滚 | PASS |
| A2-2 | write 失败，回滚截断成功 | `-1` | PASS |
| A2-3 | write 失败，回滚截断失败 | `-2`，`rollback_stage=TRUNC` | PASS |
| A2-4 | fsync 失败，回滚成功 | `-1` | PASS |
| A2-5 | fsync 失败，回滚截断失败 | `-2`，且记录**仍留在文件里**（不确定状态） | PASS |
| A2-6 | 截断成功但回滚 fsync 失败 | `-2`，`rollback_stage=ROLLBACK_SYNC` | PASS |
| A2-7 | 尾部修复截断失败 | `-1`（什么都没追加，重试安全），`io_stage=REPAIR` | PASS |
| A4 | fsync 成功、close 失败 | `0` + `close_failed=1`，只有一条记录 | PASS |

Worker 级（真实进程 + 环境变量注入，`-DT6B_DL_TEST_ENV`，仅测试构建）：

| 用例 | 断言 | 实测 |
|---|---|---|
| e2e C：`fsync_fail` + `trunc_fail` | `state=dead_letter_failed`、`counters.dead_letters=0`、`processed_total=0`、`last_event_id=""`、`pending=e-c1`、故障标记存在、死信文件恰好 2 行（seed + 一条未回滚写入，**没有重复**）、日志含 `ROLLBACK FAILED` 与 `persistent fault … latched` | PASS |
| e2e D：带标记重启（并把消费状态复位成"会再读到这条事件"） | 仍为 2 行、日志含 `refusing to append` | PASS |

> 生产构建不含任何测试符号：ARM 构建脚本会检查 `t6b_dl_test_fault` / `dl_test_env_init`
> 必须不存在，见 `../evidence/t7_09_arm_build.log`。

### 8.5 一个必须说清的既有边界

`consumer_state.json` 里的 `offset` 是**读者游标**（读入 pending 时就已前移），
这不是本轮引入的，也不在本轮修改范围内。后果是：**进程重启后，那条尚未处理的事件可能
不会被重新读到**。所以"跨重启不重复"靠的是两条独立的保险：
① 重启后若事件被重新读到 → 故障标记拒绝追加；② 若没被重新读到 → 自然也不会追加。
两种情况下都不会产生重复死信，但"事件被跳过"这件事属于既有消费语义，本轮**只记录、不改**。
