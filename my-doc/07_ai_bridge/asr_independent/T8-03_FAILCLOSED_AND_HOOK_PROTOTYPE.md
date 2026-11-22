# T8-03：NLU 接管安全闭环（fail-closed）+ Hook 接入原型 + 静态核对

基线：`b7d87b3d`。范围：`my-doc/07_ai_bridge/`。**未部署、未注入、未替换设备运行库、未重启设备或 `:core`、未改原厂配置。**

## 1. 三个问题逐条回答（本轮结束条件）

| 问题 | 回答 |
|---|---|
| 初始化失败是否还会导致 AI 会话误放行？ | **不会**。接管开启后，锁不可用 / 会话 id 缺失 / 状态不可确认，一律 fail-closed（`TAKE_FAILCLOSED`，`should_drop` 恒 1），并且**不触碰共享状态**；只有显式把开关关掉（`t8_to_enabled_set(…, 0)`）才回到原厂行为 —— 那是回滚路径，不是"失败后悄悄放行"。 |
| sessionId 是否已确认一致？ | **静态链已证实到 `Message->arg1`；与 ASR sessionId 的同一性本轮仍未拿到直接日志证据**（需要一次真实语音，见 §4）。不扩大调查，只给出一次可完成的只读观测步骤。 |
| ARM32 Hook 原型是否已完成静态核对？ | **完成**：库编译 0 warning；stub 的 12 个字与 `stub_skip.s` 反汇编逐条一致；序言前提、8 字节补丁、寄存器纪律、PLT 集成证明都在 `evidence/t8_03_hook_static_check.txt`。 |
| 是否达到申请设备验证的条件？ | **达到**（除 sessionId 那一条需要在设备窗口里顺带确认）。 |

## 2. P1-1 失效时的放行问题（已修）

### 旧行为（T8-02）

| 情况 | 旧返回值 | 后果 |
|---|---|---|
| `init` 失败（锁不可用） | `t8_to_on_final` → `T8_TO_PASS` | AI 会话登记不上，却按"放行"处理 |
| 锁不可用 | `t8_to_should_drop` → 0 | 原厂 CDM 照常执行 |
| session id 为空 | `T8_TO_PASS` | 无法定界就等于放行 |

### 新行为（T8-03）

| 情况 | 新返回值 / 行为 | 计数 |
|---|---|---|
| 开关关闭（默认） | 与原厂完全一致：`on_final` 恒 `T8_TO_PASS`（不写任何状态）、`should_drop` 恒 0 | 所有计数保持 0（单测断言） |
| 开关开启 + 锁不可用 | `on_final` → **`T8_TO_TAKE_FAILCLOSED`**（`why=failclosed`）、`should_drop` **恒 1**；**不访问共享状态** | hook 层 `failclosed` |
| 开关开启 + session id 缺失 | `on_final` → **`TAKE_FAILCLOSED`**（`why=no-session`），并开 5 s fail-closed 窗口：窗口内未登记结果一律拦下 | `failclosed_events` / `failclosed_passes` |
| 开关开启 + 正常判定 | `TAKE` / `PASS` / `TAKE_UNREGISTERED`（容量） | `marked` / `passed` / `overflow` |

四种状态在诊断里**互相分开**（不再混成"放行"）：正常接管 `marked`、正常放行 `passed`+`unknown`、
异常降级 `overflow`/`degraded`/`failclosed`、初始化失败 `init_error`。
`t8_to_enabled_set()` 在锁不可用时返回 -1 但**仍把开关记为开**——这样调用方看到的是"开启但不可用"，
而不是"没开"。

## 3. P1-3 Hook 接入原型（代码已写，未部署）

改动集中在 `android/hook_agent/libtg_hook.c`（新增一段，不动原有 onStream 逻辑）+ 构建脚本。

| 位置 | 内容 |
|---|---|
| `nlu_boot()` | 读环境变量 `TG_NLU_TAKEOVER`（默认关闭）/`TG_NLU_ROUTE_MASK`（默认 0x7F = T7B_ROUTE_ALL），`t8_to_init` + `t8_to_enabled_set` 各一次，并把结果写进 logcat 诊断 |
| `nlu_note_final(sid, text)` | 由现有 `tg_onstream_cb` 在 **final 分支末尾**调用；只做一次规则判定 + 一次加锁写内存（无 I/O、无日志、不入队），**不影响原有转发/Worker 路由/TTS Guard** |
| `tg_nlp_cb(self, sid, type, res)` | NLU 结果回调：`t8_to_should_drop()` → 返回 1（跳过原函数）/ 0（放行） |
| `build_nlu_stub_page()` | 可跳过 stub（12 字）+ trampoline（重放两条原厂指令后跳 `func+8`） |
| `tg_nlu_prepare/install/uninstall/patch_lo/patch_hi` | 与 onStream hook 同构：符号+偏移校验（`0x118ebc`）、序言校验、先写字面量再写跳转、卸载恢复原指令 |
| `tg_nlu_stats(buf,cap)` | 一行诊断：`enabled/init_error/active/marked/passed/dropped/unknown/overflow/degraded/failclosed/fc_events/fc_passes/final_seen/nlp_calls/nlp_skip/nlp_pass`；**不含文本、不含 Key** |

开关关闭时的保证：`tg_nlu_prepare/install` 直接返回 `TG_E_DISABLED`；即使有人强行装了，
回调第一步就 `return 0`（等价于没装）。设备行为与今天完全一致。

注入器接口：新增 `tg_nlu_prepare()` / `tg_nlu_install()` / `tg_nlu_patch_lo/hi()`。
设备验证时注入器只需在原有 `tg_hook_install()` 之后加一行 `tg_nlu_install()`，
并在暂停线程时把 `[tg_nlu_patch_lo, tg_nlu_patch_hi)` 一起纳入"没有线程停在该区间"的检查。

## 4. P1-2 sessionId（静态已到 arg1，动态待一次语音）

### 已证实（静态 + 已有真机日志）

```
SessionProxy::onHandler(Message* m)
  11c244: ldrd r8, r9, [r1]        ; r8 = m->what, r9 = m->arg1
  11cbec: mov  r1, r9              ; onNlpResult 的 arg1 = Message->arg1
  11cbf8: bl   SessionDispatch::onNlpResult
17:52:38.474 8342 8410 SessionProxy.cpp:onHandler:81 ... start talk sessionId = 1968466   [实测]
```

### 待确认的一步

`onNlpResult` 的 arg1 与 `onStream` 的 sessionId 在**数值上相同**。库自带的日志格式
`on nlp result, code = %d , sessionId = %d, data = %d` 一次真实语音就能对齐。

### 这次准备用的只读观测（无注入 / 无配置改动 / 不重启）

1. `logcat -v threadtime -f /data/local/tmp/t7/t803.logcat -r 4096 -n 4`（只写文件，不动进程）；
2. 用户说两条指令（一条 AI 对话 + 一条本地指令）；
3. 取三条记录对齐：`onStream ... sessionId = A`、`on nlp result ... sessionId = B`、
   `events.jsonl` 里同一条事件的 `session_id = A'`；
4. `A == B == A'` 即证实。若 B 与 A 不同，则如实记录差异并停止（不扩大调查）。

## 5. ARM32 编译与 Hook 静态核对（证据：`evidence/t8_03_hook_static_check.txt`）

构建：`build_t6.ps1`（`armv7a-linux-androideabi26-clang`，`-O2 -Wall -Wextra -std=gnu99 -fPIC -shared`）
→ `libtg_hook.so` 97 100 B，**0 warning / 0 error**；导出 `tg_nlu_install/prepare/uninstall/stats/patch_lo/patch_hi`。

| 核对项 | 结果 |
|---|---|
| stub 12 个字 | 库内字面量池 0x3650 起就是这 12 个常量；按源码顺序重排后反汇编 = `push {r0-r3,r4,lr}` / `ldr r4,[pc,#20]` / `blx r4` / `mov r12,r0` / `pop {…,lr}` / `cmp r12,#0` / `bne +0x28` / `ldr pc,[pc,#12]` / `mov r0,#0` / `bx lr`，与 `analysis/t8_02/stub_skip.s` 的反汇编**逐条一致** |
| 序言前提 | 目标函数首两字 `E92D4FF0`（push {r4-r11,lr}）/ `E28DB01C`（add r11,sp,#28），都不引用 PC → 可搬进 trampoline 重放；入口 `0x118ebc` 偶数 + 4 字节对齐 → ARM 模式 |
| 8 字节补丁 | `movw r8,#61444 / movt r8,#58655` → `0xE51FF004` = `ldr pc,[pc,#-4]`，与 onStream hook 同一常量（生产已跑多轮） |
| 寄存器纪律 | `r4` 是 callee-saved → 已 push/pop；判定放 `r12`（caller-saved）；`lr` 原样恢复，跳过路径 `mov r0,#0; bx lr` 直接回调用者，**不建原函数栈帧、不碰调用者栈** |
| 放行路径 | 回调返回 0 → 跳 trampoline：`push {r4-r11,lr}` + `add r11,sp,#28` 原样重放，再 `ldr pc,[pc,#-4]` 跳 `func+8` → 原函数完整执行 |
| 拦截路径 | 回调返回 1 → `bne +0x28` → `mov r0,#0` → `bx lr`；调用者（`SessionProxy::onHandler` 0x11cbfc、`SessionManager::exitTalk` 0x111138）都不读 r0，栈平衡 |
| 集成证明 | `.rel.plt` 里有 `t8_to_init / t8_to_enabled_set / t8_to_on_final / t8_to_should_drop / t8_to_snapshot_take` 五个 JUMP_SLOT —— 说明 hook 侧调用确实接进来了 |

## 6. 主机测试（`evidence/t8_02_host_test.log`，本轮扩充）

```
[G] 开关关闭 / 初始化失败 / 会话缺失
RESULT: pass=211 fail=0        # 0 warning, 0 error
```

新增断言（相对 T8-02 的 184 条 +27）：
- 关闭态：AI 文本 → PASS，且 `marked/passed/dropped/unknown` 全为 0（"不写任何状态"）；
- 打开态：同一文本 → TAKE；
- 锁不可用 + 开关开：`init(NULL)=-1`、`enabled_set`→-1 但开关记为开、`on_final`→`TAKE_FAILCLOSED`
  （`why=failclosed`）、`should_drop` 对已知/未知会话都返回 1；关掉开关后立刻回到 PASS/0（回滚路径）；
- 会话 id 缺失：`why=no-session`、`failclosed_events=1`、窗口内未登记会话被拦（`failclosed_passes=1`）、
  窗口结束后恢复放行；
- 快照区分 `enabled / init_error / failclosed / overflow / degraded`。

## 7. 设备验证最小方案（等批准）

**改动面**：`android/hook_agent/libtg_hook.c`（新增段）+ `build_t6.ps1`/`Makefile`（源文件列表）；
注入器加一行 `tg_nlu_install()`；环境变量 `TG_NLU_TAKEOVER=0/1`（默认 0）。

**验证步骤**（约 1 分钟）：

1. 装新库，`TG_NLU_TAKEOVER=0` → 说「讲个笑话」「现在几点」→ 必须与今天一致（对照组）。
2. `TG_NLU_TAKEOVER=1` → 再说：
   - 「讲个笑话」→ 我方接管：`nlu-takeover take`，原厂无技能执行、无原厂 TTS；worker `deepseek ok`；
   - 「现在几点」→ 放行：原厂照常回答；
   - 「音量调到 5」→ 音量只变一次。
3. 关掉开关重复第一步 → 原厂重新开始答复（Guard 可能静音，但 logcat 里 `TtsManager::playTts/onTtsStart` 会出现）。

**回滚（三条，命令级）**：

```sh
# 1) 首选：关开关（不重启、不换库）
adb shell su -c 'kill $(cat /data/local/tmp/t6/tg_supervisor.pid)'   # 仅重启 supervisor，不重启 :core
#    然后把 TG_NLU_TAKEOVER 置 0（或从启动脚本里删掉该变量）后按原命令重新注入

# 2) 换回旧库（回滚资产：部署前备份的同一份 libtg_hook.so）
adb shell su -c 'cp /data/local/tmp/t6/libtg_hook.so.bak /data/local/tmp/t6/libtg_hook.so'
adb shell su -c 'sh /data/local/tmp/t6/run_supervisor.sh'

# 3) 完全撤除 Hook：停 supervisor + 卸载（恢复原厂序言）
adb shell su -c 'sh /data/local/tmp/t6/run_supervisor.sh stop'
```
**回滚资产清单**：`/data/local/tmp/t6/libtg_hook.so`（部署前备份为 `.bak`）、`run_supervisor.sh`、
`tg_supervisor` / `tg_injector`、`/data/local/tmp/t7/ttsguard.sup.log`（Guard 仍在工作的判据）。
**不动**：`runtime.xml`、`dialog.cfg`、Worker 路由、TTS Guard、任何原厂文件。

## 8. 未做 / 边界

- 未部署、未注入、未重启；设备上跑的还是旧 `libtg_hook.so` 与旧 `ai_worker`。
- 未重新调查 ASR，未重复 T8-01/T8-02 的整套测试（只跑了合并后的单测）。
- sessionId 的动态一致性仍是**待确认**；本轮只保证"有一条可一次跑完的只读观测方法"。
- 注入器接口（`tg_nlu_install` 的调用 + 第二个补丁区间）属于设备窗口的改动，本轮只给出契约。

## 9. sessionId 只读关联结果（2026-11-22 18:28，真机）

原始记录与完整链路：`../evidence/t8_03_session_correlation.md`。

**已证实**（会话 1968511，本地指令「现在几点了」三方对齐）：

```
18:28:55.040 SessionManager.cpp:onStartTalk:255   sessionId = 1968511
18:28:57.563 SessionManager.cpp:onStream:641      sessionId = 1968511, text = 天猫精灵现在几点了, isFinished = 1
18:28:57.848 SessionManager.cpp:onNlpResult:895   on nlp result, code = 0 , sessionId = 1968511, data = 1
events.jsonl: session_id = "1968511"     ai_worker: route=native intent=time
```

→ `onNlpResult` 的第一个参数**就是** ASR session id（与 Hook 记录的 `session_id` 一致）。

**仍未证实**（会话 1968506，AI 对话）：该会话在过滤窗口内没有 `on nlp result` 行，它走的是
`ProtocolParser: commandDomain =AliGenie.Text type = 3` 分支；`onStream` 与 `events.json_id` 一致（1968506），
但"聊天也经过 `SessionDispatch::onNlpResult`"这条没有直接日志。

**对接管方案的影响**：设备验证时用 `tg_nlu_stats()` 的 `nlp_calls/nlp_skip` 判定 —— 若聊天时
`nlp_calls` 不动，说明聊天不经过该函数，第二个拦截点必须补在 `RouterManager::onResponse`
（`0x10fe3c`）。这是本轮唯一需要带进设备验证的开放项。
