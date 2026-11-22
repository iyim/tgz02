# T7-05-R2 回滚 fail-closed + 去重改造 + T7-06 WakeUpInfo 只读采集报告

- 仓库 `iyim/tgz02`，分支 `main`，基线 `a7deab1280695a361ae0d440f309552aac734277`
- 设备：TG-Z02（CCH `AILABS_S1`，Android 8.1 / SDK 27，`armeabi-v7a`，`192.168.1.9:5555`）
- 本轮不动：`runtime.xml`、`boot.img/system/vendor`、原厂 APK、T6-01/T6-02/T6-03 已验收组件、
  `localASRPauseTime=150`、`pauseTime=700`

## 0. 结论一览

| 项目 | 状态 | 证据 |
|---|---|---|
| §二 Guard 生命周期/回滚 fail-closed | 已实现 | 主机故障注入 73 断言 0 失败；真机 `guard-stop: PASS`、`rollback: PASS`（rc=0）、错误 SHA 时 `ABORT`（rc=5，产物未变） |
| §二 真机暴露的两个新缺陷 | 已修复 | ① 恢复 `.so` 后 `--check` 给不出判定 ② 旧 inode/双份映射导致 `--uninstall` exit=19（`remote fault sig=11`） |
| §三 重复识别去重 | 已实现（按事件身份） | 537 条真实 `asr_final` 全量字段统计 + 37 条主机断言（走真实 `t7_dup.c` / `utterance_gate.c`） |
| §三 真机"连说两遍"实测 | **未取得** | 见 §6：本环境原厂识别侧不出 `asr_final`（`seen=0/final=0`），已用 A/B 证明与我们的 hook 无关 |
| §四 `libtg_wakeinfo.so` 只读采集 | 已实现并上机 | 32 次调用落盘，16 条可信唤醒快照 + 16 条"第二路调用"鉴别，字段表见 §4.3 |
| §四 快照 ↔ ASR session 关联 | **未完成** | 同一原因（无 final 就没有 session_id 可关联） |
| §五 方案 D 前置评估 | 部分回答 | vtable[8] 签名/所有权**仍无证据**，因此**未**实现连续对话调用 |
| §六 真人语音验收 | **未执行** | 本轮全部为合成语音；且 §6 的识别侧故障使真机语音链路不可用 |
| 回滚 | 已真机验证 | `evidence/t7_05r2_device_rollback.log`（fail-closed → abort → 真实回滚 PASS → 装回 R2） |

## 1. §二 Guard 生命周期与回滚：fail-closed

### 1.1 代码改动（`android/run_t7_05.sh`）

T7-05-R1 的问题：`uninstall_all` 返回非零时 `guard_stop()` 只打 WARN 后 `return 0`，回滚因此可以"报告成功"但 hook 还在进程里。现在：

- `kill_guard_sups` 失败 → 立刻 `return 3`；
- `uninstall_all` 失败 → 立刻 `return 5`，不再降级成 WARN；
- 任意 `:core` 仍 `hooked=1` → `return 6`（`uninstall_all` 内已逐个复核，`guard_stop` 收尾再查一次）；
- 守卫 supervisor 残留/复活 → `return 4`；
- `guard_start`：`kill_guard_sups` 失败即终止；启动前确认没有残留守卫；启动后要求**恰好 1 个**守卫 supervisor，并比对启动前后的 T6-01 ASR supervisor 完全一致（不一致 `return 6`）；
- `rollback`：`guard_stop` 非零即 `ABORT`；恢复三个产物后逐项校验 **sha256 + 权限**（worker 755 / conf 600 / guard 644）；Worker 启动返回码非零或进程不在 → 失败；终检要求"无守卫 supervisor + 每个 `:core` hooked=0 + ASR supervisor 未变"；只有全部通过才打印 `rollback: PASS`，否则只打印 `rollback: FAIL` 并返回非零；
- 回滚备份只读（`selfcheck` 只读 sha，`restore_one` 只从备份 `cp` 出来），任何分支都不写 `backup_t7_05/`。

为了"用真脚本跑故障注入"而不是复制一份伪代码自证，脚本里所有外部依赖都留了重定向点（设备上全部用默认值）：
`TG_PROC/TG_PS/TG_SHA/TG_KILL/TG_SLEEP/TG_CP/TG_PERM/TG_STAT/TG_SETSID/TG_SUP/TG_INJ/TG_T5/TG_T7/TG_NO_ROOT/TG_WORKER_START/TG_WORKER_STOP/TG_SHA_*_T704`。

### 1.2 真机暴露的两个新缺陷（本轮修复）

1. **恢复 `.so` 之后 `--check` 给不出判定**：进程里映射的还是旧 inode，Injector 报
   `already_mapped ... (deleted)` / `RTLD_NOLOAD prevented it`，输出里没有 `hooked=`。
   改之前这会被判成 `FAIL core pid=... no verdict`，把一次正确回滚变成 FAIL（首次真机跑
   `rollback: FAIL`，见 `evidence/t7_05r2_device_rollback.log` 的第二次尝试）。现在分类为
   `note core pid=...: state not queryable after .so replacement`，并明确说明"guard-stop 在恢复产物
   之前已经逐个 `:core` 验过 hooked=0"，既不算 PASS 也不误判失败。
2. **旧 inode / 双份映射导致 `--uninstall` 彻底失败**：真机实测
   `ERROR stage=prepare_call rc=-7 err=remote fault sig=11`（exit=19）。此时"就地卸载"没有可行路径，
   唯一干净做法是让 `:core` 重启（补丁随进程消失）。`uninstall_all` 现在对
   `rc!=0 / RTLD_NOLOAD / wasn't loaded / remote fault / exit=17` 统一走"重启该 `:core` → 等新 pid →
   在新 pid 上复核 hooked=0"；复核失败仍然失败（fail-closed），只是不再伪装成"卸掉了"。
   同时补了一个真实语义：全新 `:core` 上 Injector 的回答是
   `check_only with no library mapped: nothing to query`，这等于"没有注入"，`guard_state_of()` 归类为
   `hooked=0`（此前会被误判成"无判定"）。

### 1.3 主机故障注入（`tests/t7_05r2_fault_inject.sh`）

在假设备根（假 `/proc`、假 `tg_injector/kill/sleep/cp/chmod/stat/setsid`、假 worker 启停）里跑**真实**
`run_t7_05.sh`。10 个用例、**73 条断言全部通过**（`evidence/t7_05r2_fault_inject.log`）：

| 用例 | 注入 | 期望 |
|---|---|---|
| `happy` | 无 | `guard-stop: PASS`、`rollback: PASS`、权限 755/600/644、ASR supervisor 从未被 kill |
| `uninstall_fail` | `--uninstall` 返回 3 | `guard-stop` 非零、无 PASS、`rollback` ABORT 且产物未变 |
| `still_hooked` | `--check` 恒 `hooked=1` | 非零，打印仍在 hooked 的 pid |
| `no_verdict` | `--check` 无判定 | 非零（fail-closed） |
| `sup_cannot_stop` | kill 无效 | 非零，打印残留 pid |
| `start_after_failed_cleanup` | 清理失败后 `guard-start` | 非零、**没有**启动第二个 supervisor、ASR supervisor 仍在 |
| `restore_worker/conf/guard` | `cp` 分别失败 | 非零、`rollback: FAIL`、备份未被改写 |
| `sha_mismatch_after_copy` | 复制出坏内容 | 非零、打印 sha 不符 |
| `selfcheck_bad_backup` | 记录 SHA 错误 | ABORT（rc=5） |
| `worker_start_fail` | worker 起不来 | 非零、`FAIL worker not running` |
| `no_core` | 没有 `:core` | 非零、`no :core` |
| `replace_then_unqueryable` | 恢复 `.so` 后 `--check` 不可查 | 仍 PASS，并打印"不可查 + 之前已验过" |
| `uninstall_rtld` | 首次 `--uninstall` 走 RTLD 路径 | PASS：重启 `:core` 后在新 pid 复核 hooked=0 |

### 1.4 真机验证（`evidence/t7_05r2_device_guard_cycle.log`、`evidence/t7_05r2_device_rollback.log`）

```
guard-stop: PASS (asr supervisor untouched: 279 )
  check pid=6672 hooked=0 / uninstall: hooked=0 on every :core
guard-start: guard supervisor: pid=11001 / asr supervisor unchanged: 279
  （启动后恰好 1 个守卫 supervisor，hooked=1）

回滚前：worker=3ff34009 conf=82481c53 guard=6d989d8d
① 错误 SHA：selfcheck: FAIL → ABORT rollback → rc=5，三个 sha 一个字节都没动
② 真实回滚：uninstall pid=32742 rc=0 → hooked=0 → guard-stop PASS
   ok restore worker b3c8dde4 perm=755 / conf 82481c53 perm=600 / guard fc1d27f2 perm=644
   ok worker running / ok no guard supervisor
   note core pid=32742: state not queryable after .so replacement
   ok asr supervisor untouched: 279
   rollback: PASS      rollback_rc=0
③ 用 guard-reload 把 R2 装回：core 11805 hooked=1、守卫 sup 13119、asr 279 未动、selfcheck PASS
```

## 2. §三 ASR 重复识别：改成按"事件身份"

### 2.1 先看原厂事件到底有什么字段

设备 `work/events.jsonl` 现有 **537 条 `asr_final`** 全量统计（脚本见 §8）：

- 字段：`version, rec, event_id, event_type, pid, session_id, text, text_bytes, text_chars, is_final, received_at_ms, recv_at_ms, stored_at_ms, seq`
- `event_id` 形如 `t6-<pid>-<session_id>-g<gen>`，**537 条里 0 条重复**；
- `session_id` 每次识别会话一个；`seq` 是记录写入序号（重放同一条记录时不变）；
- 只有 `rec=asr_final` 一种记录（**没有** wake 记录，所以"有没有新唤醒"无法从事件流判断）。

结论：能用来判定"是不是同一次识别"的只有 `event_id`（以及 `session_id + seq + 文本` 这个组合）。
**没有任何字段能把"同一句话被重新识别成一条新 final"与"用户主动说了两遍"区分开**——这一点在报告里明写，不用更短的时间窗掩盖。

### 2.2 新规则（`android/t7_dup.c`，Worker 路由前调用；`utterance_gate.c` 同步改）

```
A. event_id 相同                        -> 同一条 final 重复投递，跳过
B. session + seq + 文本 都相同           -> 同一条记录换路径又到一次，跳过
C. 其余一切（含"文本完全相同、event_id 不同"）-> 新指令，必须执行
```

- 上限窗口常量 `T7B_NATIVE_DUP_MS`(3000) **删除**，`ai_worker.h` 里改为注释说明；
- 暂存门 `ug_feed` 的同 session 同文本分支：同一 `event_id` → 丢弃；不同 `event_id` → 立即 `UG_RELEASE`
  （`why=repeat`），暂存里那条仍按超时放行，两条都执行；
- 快路去重：`fast_event_id` 相同 → 丢弃；文本**严格前缀/被截断**（长度不同）→ 仍按"同一次识别的修订"合并；
  文本完全相等但 `event_id` 不同 → 不丢，按新指令走；
- 新增计数（`ai_worker_status.json` 的 `route` 段）：`dup_same_event`、`dup_same_report`、`same_text_new_event`。

### 2.3 主机测试（`tests/t7_05r2_dedupe_unit_test.c`）

直接链接生产代码 `t7_dup.c` + `utterance_gate.c`（不是 strcmp 自证），**37 条断言全过**，覆盖任务书 6 个场景：
同一条 final 重复上报只执行一次；连说两遍"调大音量"两次都执行；连说两遍"播放周杰伦"两次都处理；
"播放周杰伦"→"播放周杰伦的新歌"不吞（前缀合并只在暂存窗口内、且是长度不同时）；
"音量调到百分之"→"音量调到百分之十"完整的那句不被吞；不同 session 相同文本不判重。

`tests/run_t7_05_host_tests.ps1` 合计 **225 断言 0 失败**（含 T7-05/R1 的 188 条与新 37 条）。

### 2.4 限制（明写）

原厂把同一句话重新识别成新 final 时（13 s 后到的那种），新规则**会执行两次**。这是有意选择：宁多答一次，
也不吞用户主动重复的指令；`same_text_new_event` 计数就是给这种情形留的观测口子。

## 3. §四 T7-06：`_WakeUpInfo_` 只读采集

### 3.1 新库 `android/hook_wake/libtg_wakeinfo.c` → `out/libtg_wakeinfo.so`

- Hook 点：`_ZN9AliAiLabs4AGUI14SessionManager11onStartTalkENS0_19IInputDeviceManager15InputDeviceTypeES3_PNS2_12_WakeUpInfo_EPNS2_16_WakeUpEventRet_E`
  （dynsym 解析，**不用** `0x111364` 这种偏移；日志里同时打印解析到的实际地址/偏移，实测本轮两次都是
  `...364` 结尾，与反汇编一致）。序言逐字校验 `E92D4FF0 E28DB01C`，不符拒绝安装。
- 只读：回调只 `memcpy`+写日志，不写参数、不改返回值、不调任何原厂函数；stub 末尾无条件跳 trampoline，
  原厂函数始终按原参数执行。
- 记录：`seq / t_ms / pid / tid / comm / this / typeA / typeB / info / info_null / bytes / wake_type /
  raw(0x00..0x5c 十六进制) / probes`。
- 指针处理：不假设任何指针有效。`safe_read()` 用"写管道再读回"的方式取内存（内核遇到不可读页时返回已拷字节数，
  进程不会收到 SIGSEGV）；只对"4 字节对齐、落在用户空间"的字做 64 字节探测，且只保留可打印比例 ≥60% 的结果。
- 日志独立：`/data/local/tmp/t7/wake/wakeinfo.jsonl` 与 `wakeinfo.status`，完全不碰 `events.jsonl`。
- 导出与其它 hook 库同一套 ABI（`tg_hook_prepare/patch_lo/patch_hi/install/uninstall/status/last_error/is_initialized/hooked/stats`）。
  单 hook 只改 8 字节，所以 `patch_hi = func + 8`（Injector 要求 `hi > lo`，这一点是第一次注入失败后才确认的）。

### 3.2 真机采集

注入：`tg_injector --pid <core> --so /data/local/tmp/t7/libtg_wakeinfo.so` → `tg_hook_prepare()=0`、
`patch_range=[0x953d4364,0x953d436c)`、`tg_hook_install()=0`、`hooked=1`。

采集到 **32 次调用**（`evidence/t7_06_wakeinfo_snapshots.jsonl`，原始文件原样保存）。按
"`typeA∈0..0x11` 且 `typeB==0` 且 `wake_type∈0..0x11`"筛出 **16 条可信唤醒快照**，另 16 条是同一次唤醒里
紧跟的"第二路调用"（`typeA/typeB/info/wake_type` 都是指针值，例如 `A=-1790247240 B=-1790247220`），
与 T7-03 记录的现象一致。

采集过程中的两个现场问题（都已修/已记录）：

1. 日志目录原为 `root:root 0755`，`:core` 是应用 uid，前 12 次调用写盘 EACCES（计数在涨、文件没长）。
   改成目录 `0777`、文件 `0666` 后正常。**计数器与文件行数不一致就是这个原因**，不是 hook 没触发。
2. 第一版 `jesc()` 把 0x80+ 字节原样输出、控制字符写成 `\xNN`，导致行不是严格 JSON（`probes` 字段）。
   已改成 `\u00NN`（按 latin-1 码点保真）；本轮已采的 32 行**未重采**（重采需要在旧 inode 仍映射的进程上再注入一次，
   会引入双份映射，见 §1.2），分析脚本用 `\xNN → \u00NN` 兼容读入，`raw` 字段本身是十六进制，不受影响。

### 3.3 字段表（16 条可信快照的实测差异）

| 偏移 | 类型 | 稳定/动态 | 观测值 | 说明 |
|---|---|---|---|---|
| `+0x00` | int | **稳定** | 恒 `0` | 与 T7-03 的 `wakeupType(0..0x11)` 一致，本轮全是 0 |
| `+0x04` | char* | 指针 | 同进程内恒定，重启后变（`0x8feff380` → `0x93fb0460`） | 探测内容 `tian mao jing ling`（唤醒词拼音）→ **进程级生命周期**，不是每次唤醒新分配 |
| `+0x08` | char* | 指针 | 恒定，重启后变（`0x8feff620` → `0x93fb0480`） | 第二个字符串，可打印比例常 <60%，未取到稳定内容（疑似同一唤醒词的 UTF-8 形式） |
| `+0x0c` | int | **稳定** | 恒 `0` | `resetWakupInfo` 释放的偏移之一，但这里恒 0 → 不能据此认定是本结构成员 |
| `+0x10` | int | 动态(7 种) | 多为 0，偶有非 0 | 与 `+0x14` 相邻，疑为 float 的高/低半 |
| `+0x14` | float | **动态** | `1.8080 / 1.8027 / 1.8012 / 1.7982 ...` | 每次唤醒都变、量级固定 1.8 附近，**疑似**唤醒置信度/阈值类量 |
| `+0x18` | int | 半稳定(4 种) | 多为 `0x34`(52) | 疑似采样/beam 类整数，语义未证 |
| `+0x1c..+0x30` | — | **稳定** | 全 `0` | 未使用/保留 |
| `+0x34` | char* | 指针，动态 | 每次指向新的堆串，内容是 32 位十六进制（如 `f8a763e6cbfd11221029148440007394`） | **每次唤醒新分配**，疑似请求/UUID 类 |
| `+0x38` | char* | 指针，动态 | 多数与 `+0x34` 指向同一地址 | 与 `+0x34` 别名（或 64 位指针被写成两段） |
| `+0x3c..+0x54` | — | **稳定** | 全 `0` | 未使用/保留 |
| `+0x58` | 指针 | 动态 | 同进程恒定（`0xaf480930`），重启后变 | 疑似对象/回调指针，语义未证 |
| `+0x5c` | int | 半稳定 | 多为 `0x16`(22)，偶见其他 | 语义未证 |

**已确认**：`+0x00` 是唤醒类型；`+0x04` 是唤醒词字符串指针（内容已读出）。
**疑似**：`+0x14` 浮点分数、`+0x34/+0x38` 每次唤醒的标识串、`+0x58/+0x5c` 成对字段。
**未知**：`+0x10/+0x18/+0x5c` 的确切语义、`+0x08` 字符串内容。

### 3.4 与 `resetWakupInfo()` 的对照（不做过度推断）

`resetWakupInfo()`（`CDM+0` 起）释放 `CDM+0xc/+0x10/+0x38/+0x3c/+0x40/+0x44`，并把 `*(CDM+8)=0xffffffff`。
把这份快照当成"同一个结构"会立刻自相矛盾：

- 本快照 `+0x04/+0x08` 是**有效字符串指针**，但它们不在 `resetWakupInfo` 的释放列表里；
- `resetWakupInfo` 释放的 `+0x0c/+0x3c/+0x40/+0x44` 在本快照里**恒为 0**；
- `resetWakupInfo` 明确把 `+0x08` 写成 `0xffffffff`，可本快照 `+0x08` 是一个可读字符串指针。

因此：**不能**用 free 偏移反推成员类型。合理解释有两种，都还没有证据排除：
(a) 我们 hook 的是调用方栈上的 `_WakeUpInfo_`，`resetWakupInfo` 处理的是 CDM 里**归一化后的另一份**结构（布局不同）；
(b) `+0x04/+0x08` 指向的是**借用**的静态/进程级字符串（实测同进程恒定），结构体不拥有它们，所以不释放。
`+0x34/+0x38` 每次唤醒都变、且 `resetWakupInfo` 的列表里恰好有 `+0x38`，更像"结构体拥有、由原厂释放"的那一类。

### 3.5 深拷贝是否安全：**当前证据不足**

- 直接 `memcpy 0x60` 字节当然可以，但复制后 `+0x34/+0x38` 指向的还是原厂堆；
- 若原厂在会话结束/`resetWakupInfo` 里释放它，我们的副本就是悬空指针；
- 若要深拷贝，必须知道原厂是否会 `free` 这两个指针、以及是否要求长度/分配方式匹配 —— 目前**没有**证据。
- 所以本轮**停在只读采集**，没有写 CDM、没有调用 `startTalk`、没有做深拷贝注入。

## 4. §五 方案 D 前置问题：逐条给出"已证/未证"

| 问题 | 结论 |
|---|---|
| 1. `IInputDeviceManager->vtable[8]` 的准确签名 | **未证**。反汇编只能看到 `(*mgr->vtable[8])(mgr, type, this+8)` 三个参数，参数名、返回类型、是否 `const`、是否要求线程上下文都没有证据 |
| 2. `getInputType(sessionId)` 的返回值含义 | **部分证**：`startFullDuplexDialog` 用 `getInputType(*(CDM+4))` 的结果作为 startTalk 的第一个参数；本轮快照里 `typeA` 恒 7（`InputDeviceType`），但"7 = 哪个设备/哪种模式"没有枚举证据 |
| 3. 深拷贝后的 WakeUpInfo 是否满足原厂生命周期 | **未证**，见 §3.5 |
| 4. 原厂是否会释放传入结构体里的字符串 | **未证**。`resetWakupInfo` 只处理 CDM 内嵌那份，调用方那份由谁释放没有任何观测 |
| 5. 是否需要为每一轮重新创建 session | **未证**。本轮 16 次唤醒里 `session_id` 无法取得（识别侧没出 final） |
| 6. 如何避免重复释放/悬空指针 | **未证**，取决于 4 |
| 7. AI 播报回声隔离是否仍有效 | 现有回声过滤按"播报状态文件 + 时间窗 + 相似度"工作，与唤醒入口无耦合；但"续听必然紧跟在我们自己的 TTS 之后"这一点**没有实测**（需要连续对话真能跑起来） |

结论：**不实现**方案 D 的调用。下一轮要补的最小证据集：① 用 `onSpeakCommand`/`setWakeUpInfo` 的调用点确认真实 `_WakeUpInfo_` 大小与字段写入顺序；② 在 `free` 处下断点或 hook `free`，确认 `+0x34/+0x38` 的所有者；③ 拿到 session 与唤醒的关联（需要识别侧恢复）。

## 5. §六 环境限制：本环境原厂识别侧不出 `asr_final`

这不是本轮代码引起的，证据链如下（全部留在设备与日志里）：

1. `events.jsonl` 从 09:56 起 **537 行再没增加**（多次唤醒 + 说话之后仍然不变）；
2. ASR hook（T6-01，pid 279 的 supervisor 注入，`/proc/<core>/maps` 里 3 处 `libtg_hook.so`）自报
   `seen=0 final=0`（`/data/local/tmp/t6/supervisor.log`），即**识别回调一次都没发生**；
3. A/B 对照：把 `libtg_wakeinfo.so` **卸载**后再说"天猫精灵现在几点"，仍然没有 final →
   与本轮新增 hook 无关；
4. 网络侧发现重启后**默认路由丢失**（只有 `192.168.1.0/24` 直连），补回 `default via 192.168.1.1` 后
   公网 ICMP 仍 100% 丢包（`114.114.114.114`），说明本实验网段没有外网出口；
   唤醒（本地 KWS）不受影响，所以"能唤醒、能触发 `onStartTalk`，但没有识别结果"这一现象与"识别走了云端"高度吻合；
5. 整机重启与应用级重启（`am force-stop` + `monkey`）都试过，识别侧仍未恢复。

因此本轮：
- **没有**真人语音验收数据（§六整节未执行，不允许用合成语音替代）；
- **没有**"连说两遍相同指令"的真机证据（任务书 §三.3/§三.4 的真机部分）；
- 快照上机是真的、唤醒是真的，但**快照 ↔ session 关联做不到**。

## 6. 交付物

源码/脚本：
- `android/run_t7_05.sh`（fail-closed + 重启兜底 + 可测 seam）
- `android/t7_dup.c` `android/t7_dup.h`（事件身份去重）
- `android/ai_worker.c` `android/ai_worker.h` `android/utterance_gate.c` `android/utterance_gate.h`
- `android/worker_status.c` `android/worker_status.h`（新计数）
- `android/hook_wake/libtg_wakeinfo.c`（只读采集库）
- `android/build_t7_05.ps1`（加 `t7_dup.c`）、`android/build_t7_06.ps1`（新）

测试：
- `tests/t7_05r2_fault_inject.sh`（10 用例 / 73 断言，跑真实脚本）
- `tests/t7_05r2_dedupe_unit_test.c`（37 断言，链接真实去重代码）
- `tests/run_t7_05_host_tests.ps1`（合计 225 断言）

证据（`evidence/`）：
- `t7_05r2_fault_inject.log`（73 断言）
- `t7_05r2_host_unit_test.log`（225 断言）
- `t7_05r2_ndk_build.log`、`t7_06_ndk_build.log`（ARM32，0 warning）
- `t7_05r2_device_guard_cycle.log`（真机 guard-stop/guard-start）
- `t7_05r2_device_rollback.log`（fail-closed abort + 真实回滚 PASS + 装回 R2）
- `t7_05r2_device_state.log`（终态 verify/status）
- `t7_06_wakeinfo_snapshots.jsonl`（32 次调用原始快照）
- `t7_06_wakeinfo_analysis.log`（字段差异/指针候选/raw 十六进制）

设备终态：worker `3ff34009`（755）、worker.conf `82481c53`（600）、libtg_ttsguard.so `6d989d8d`（644）、
守卫 supervisor `13119`、T6-01 ASR supervisor `279`（未受影响）、`:core` `11805` `hooked=1`、`selfcheck: PASS`。
`libtg_wakeinfo.so` 设备上是修正转义**之前**的构建 `41cd14a6`；仓库里的构建是 `eb3345f5`（含 `\u00NN` 修正）。

## 7. 复现命令

```powershell
# 主机：故障注入（跑真实 run_t7_05.sh）与单元测试
& 'C:\Program Files\Git\bin\bash.exe' -lc 'cd /d/tgz02/OS/system/my-doc/07_ai_bridge/tests && bash t7_05r2_fault_inject.sh'
powershell -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\tests\run_t7_05_host_tests.ps1

# ARM32 构建（0 warning 才算过）
powershell -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\android\build_t7_05.ps1
powershell -ExecutionPolicy Bypass -File my-doc\07_ai_bridge\android\build_t7_06.ps1
```

```sh
# 设备（root）
su -c 'sh /data/local/tmp/t7/run_t7_05.sh selfcheck'
su -c 'sh /data/local/tmp/t7/run_t7_05.sh verify'
su -c 'sh /data/local/tmp/t7/run_t7_05.sh guard-stop'    # PASS 才算停干净
su -c 'sh /data/local/tmp/t7/run_t7_05.sh guard-start'
su -c 'sh /data/local/tmp/t7/run_t7_05.sh rollback'      # 只有全部校验通过才打印 PASS
```

## 8. 遗留问题

1. **识别侧无 final**（环境/云端，未定位到可修复项）：这挡住真人验收、连说两遍实测、快照 ↔ session 关联。
2. **13 s 二次识别会双答**（有意为之，见 §2.4），需要在连续对话实现后重新评估。
3. `_WakeUpInfo_` 的 `+0x08` 字符串内容、`+0x10/+0x18/+0x5c` 语义、`+0x34/+0x38` 所有权都未证 →
   方案 D 的 7 个前置问题有 5 个仍是"未证"。
4. `libtg_wakeinfo.so` 采集侧 JSON 转义已修，但设备上仍是旧构建；下次部署会顺带更新（需重启 `:core` 以免双份映射）。
5. `localASRPauseTime=150` / `pauseTime=700` 的对照实验（T7-05 遗留）仍未做。
