# T7-10 报告：死信故障标记可靠性 + 停止空闲 ASR 采样

基线：`da11771bebe3ff53fe0c235673e01a34958738f5`（main）
范围：只动 `my-doc/07_ai_bridge/`。**没有部署新 Worker，没有重启设备 / `:core`，没改 Hook /
Guard / Bridge / TTS 执行器 / `runtime.xml` / 路由规则，没碰 `system_debloat/`。**

## 1. 结论

| 目标 | 状态 |
|---|---|
| 标记写失败必须被报告（不再静默） | 完成：四步逐一检查，失败带 `stage/errno`，状态里 `marker_state=2` |
| 读标记失败不得当成"没有标记" | 完成：三态探针，`UNKNOWN` 一律按故障处理 |
| 故障时 Worker 停止处理（不重复追加、不推进 offset） | 完成：`MATCH`/`UNKNOWN` 都返回 `-5`，主循环闩锁 |
| 正常运行路径不受影响 | 完成：e2e A/B 原样通过（死信照写、offset 照推进、503 照重试） |
| 人工处理机制保留、不自动删标记 | 完成：没有新增任何自动删除/自动修复路径 |
| 停止空闲 ASR 采样、保留工具与证据 | 完成：采样进程已停（`ps` 计数 0），A/B1/seg0 证据保留并回收到主机 |

## 2. 修改文件

| 文件 | 改动 |
|---|---|
| `android/ai_worker.c` | 新增三态探针 `dl_marker_probe()`（替换 `dl_marker_blocks()`）、四步检查写入 `dl_fault_marker_write()`（替换 `dl_write_fault_marker()`）、`dead_letter_event()` 的标记决策与日志；测试构建专属自检入口 `dl_mk_selftest()` + `--marker-selftest`（`T6B_DL_TESTING && T6B_DL_TEST_ENV` 才编译） |
| `android/worker_status.h` | `t6b_status` 新增 `dl_marker_state / dl_marker_stage / dl_marker_errno` |
| `android/worker_status.c` | `dead_letter` 对象新增 `marker_state / marker_stage / marker_errno` |
| `android/build_t7_08_arm.ps1` | 符号泄漏断言增加 `dl_mk_selftest` 与 `.rodata` 里的 `--marker-selftest` 字符串 |
| `tests/run_t7_06r2_host_tests.ps1` | 新增标记自检段（9 个 fixture）、e2e E（标记写失败）、e2e F（标记读失败）、e2e C 增加 `marker_state=1` 断言 |
| `asr_independent/06_fault_marker_reliability.md` | 新增：两个洞、三态/四步设计、决策表、人工处理、测试矩阵、刻意不做 |
| `asr_independent/T7-09_CHANNEL_OBSERVATION.md` | 追加 §7：空闲采样已停止、工具保留、证据清单、本轮不做归因 |
| `evidence/t7_06r2_host_test.log` | 本轮重跑生成 |
| `evidence/t7_10_arm_build.log` | 本轮 ARM32 构建日志 |
| `evidence/t7_09_asr_watch2.runA.log`、`t7_09_asr_watch2.runB1.log`、`t7_10_asr_watch2.seg0.log` | 从设备回收（保留窗口 A / B1，seg0 只作"工具能连跑"的存在性证据） |

## 3. 关键语义（三轮演进后的最终形态）

```
死信追加返回 T6B_DL_E_ROLLBACK（写失败 + 回滚没确认）
  ├─ 探针 MATCH      → 拒绝追加，marker_state=4，返回 -5
  ├─ 探针 UNKNOWN    → 拒绝追加，marker_state=3，返回 -5   ← T7-10 新增（T7-09 这里会当成 0）
  └─ 探针 ABSENT     → 写标记
        ├─ 四步全成功 → marker_state=1，日志 "cross-restart protection ARMED"
        └─ 任一步失败 → marker_state=2 + stage/errno，
                        日志 "FAULT MARKER WRITE FAILED ... NOT established"
                        （仍然是 -5，进程内闩锁照旧成立）
返回 -5 → 主循环 pend_dl_fault=1：不再 provider_attempt / 不再追加 / 不推进 offset
```

要点：**标记写失败不影响"本进程停住"，只影响"重启后是否还停住"** —— 这两件事在日志和状态
里被明确分开，不再混为一谈。

## 4. 主机测试（真实日志：`evidence/t7_06r2_host_test.log`，221 行，100 PASS / 0 FAIL）

| 套件 | 结果 |
|---|---|
| 单元测试（`-DT6B_DL_TESTING`，死信格式化/转义/短写/失败/回滚） | `pass=108 fail=0`（108 条断言全部保留） |
| JSON 解析器 + 并发（6×100） | `checks=112 fail=0`、`RESULT: PASS`（112 项全部保留） |
| 标记自检（新增，9 个 fixture） | `RESULT: marker selftest pass=11 fail=0` |
| e2e A（Provider 全失败 → 死信 + offset 推进） | PASS |
| e2e B（死信文件不可写 → offset 不动） | PASS |
| e2e C（回滚失败 → 闩锁；新增 `marker_state=1`） | PASS |
| e2e D（重启后凭标记拒绝再追加） | PASS |
| e2e E（**标记写失败**） | PASS 11 项 |
| e2e F（**标记读失败**） | PASS 9 项 |
| 源码断言（`wu_wall_ms`、各构建脚本含 `dead_letter.c`） | PASS |

自检输出（原样）：

```
[marker] probe probe_absent     ->  0 (expect  0) stage=none errno=0 len=-1 OK
[marker] probe probe_match      ->  1 (expect  1) stage=none errno=0 len=35 OK
[marker] probe probe_foreign    ->  0 (expect  0) stage=none errno=0 len=38 OK
[marker] probe probe_unreadable -> -1 (expect -1) stage=open errno=0 len=0 OK
[marker] probe probe_empty      -> -1 (expect -1) stage=none errno=0 len=0 OK
[marker] probe probe_garbage    -> -1 (expect -1) stage=none errno=0 len=20 OK
[marker] write write_ok         ->  0 (expect  0) stage=none errno=0 len=208
[marker]   round-trip probe -> 1 (expect 1, MATCH) ... OK
[marker] write write_fail_open  -> -1 (expect -1) stage=open errno=13 len=0
[marker]   no fake marker file left ... OK
[marker] write write_fail_rename -> -1 (expect -1) stage=rename errno=0 len=0
RESULT: marker selftest pass=11 fail=0
```

Worker 真实进程日志（原样摘录）：

```
[aiw] dead-letter: fault marker written for event e-c1 at ...\c_state -> cross-restart protection ARMED (a restart will refuse to append it again)
[aiw] dead-letter: FAULT MARKER WRITE FAILED for event e-e1 (stage=open errno=13 path=...\e_state) -> cross-restart protection NOT established. This process stays latched (no further append, no offset advance); a restart would lose the guard, so create/repair the marker by hand before restarting
[aiw] dead-letter: fault marker exists but CANNOT BE CONFIRMED (stage=open errno=0 len=0) -> treated as a fault: append refused, offset NOT advanced, event e-f1 stays pending; repair or remove the marker by hand (it is never deleted automatically)
[aiw] worker: persistent fault (dead_letter_failed) latched for event e-e1 seq=0; no further dead-letter append and no offset advance until the fault marker is resolved
```

e2e E/F 的关键断言（对应"故障时不许冒险"）：

- e2e E：`dead_letter.failed=1`、`marker_state=2`、`marker_stage=1(open)`、`dead_letters=0`、
  `consumer_state.processed_total=0`、`dead_letter.jsonl` 仍 2 行、**没有假标记文件**。
- e2e F：`marker_state=3`、`dead_letters=0`、`dead_letter.jsonl` 仍 1 行（种子）、
  offset 不动、事件仍 pending、日志 `CANNOT BE CONFIRMED` + `append refused`。

## 5. ARM32 NDK 构建（`evidence/t7_10_arm_build.log`）

```
# symbols present: t6b_dl_format/t6b_dl_append = True
# fault-injection symbols: absent (expected in a production build)
# T7-10 marker test entry string '--marker-selftest': absent (expected)
# result: OK (0 warning, 0 error; ELF32/ARM/PIE; NEEDED libc; no test hooks)
ELF32 / ARM / PIE；NEEDED: libdl.so, liblog.so, libc.so
```

产物 `android/out/ai_worker.t7_08`（**未部署**；设备上跑的还是 `32fc280019103d58…`）。

## 6. ASR 侧处置

- `asr_watch2.sh` / `asr_watch_chain.sh` **保留**，本轮不再开发新采样脚本。
- 采样已停：设备 `ps` 里 `asr_watch` 计数 **0**，logcat 抓取也已停。
- 窗口 A（365 采样）、窗口 B1（2442 采样）、B2 的 seg0 全部保留，不覆盖、不删除。
- 本轮**不做** ASR 通道归因；等用户能在设备旁边时，做**一次集中真实语音观测**
  （2 条本地指令 + 1 条普通聊天）再按 T7-09 §5 口径判定。

## 7. 证据等级与实际边界（不夸大口径）

| 结论 | 证据等级 |
|---|---|
| 三态探针 / 四步写入 / 闩锁行为 | **主机测试**（真实进程、真实文件、真实 errno） |
| 生产版本不含测试注入与自检入口 | **ARM32 编译产物**（readelf 断言） |
| 设备上实际运行的是这一版 | **没有** —— 本轮不部署，设备仍跑旧二进制 |

已知边界（本轮刻意不做）：不做目录 `fsync`（`rename` 后掉电仍可能丢目录项，属文件系统级
保证）；不自动删/修标记；不扩展死信故障矩阵；`wu_rename_replace` 在 Windows 上不设 errno，
因此 `stage=rename` 时 `errno` 可能为 0（日志已按"平台不提供时为 0"处理）。

## 8. 未做的事

- 不部署新 Worker、不重启设备 / `:core`、不重启 Guard。
- 不改 Hook（含 `isOffline` 字段的成本收益仍待批准），不改原厂配置与路由。
- 不重复跑无关的历史测试套件（`worker_unit_test` 的 1 个历史失败仍未触碰）。
- 不写空闲采样报告（按要求）。
