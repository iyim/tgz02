# T7-05-R1 缺陷修复（回滚/守卫生命周期 + 不完整指令 + 放行标记）与 T7-06 状态

- 设备：TG-Z02 / CCH `AILABS_S1L` / Android 8.1（SDK 27）/ ARM32 `armeabi-v7a` / `192.168.1.9:5555`
- 仓库：`iyim/tgz02`，分支 `main`（直接提交，无 PR）
- 基线：`ccc20887`（T7-05）
- **本轮结论先说**：
  1. **rollback / guard-stop 已重写并真机验证 PASS**（恢复 T7-04 三个产物、逐项 SHA256、`hooked=0`、不碰 T6-01 ASR supervisor）；
  2. **不完整音量指令不再可执行**：`音量调到百分之` → `route=ai INCOMPLETE note=dangling`，音量零变化（真机三条证据）；
  3. **二次识别去重改为"完全同一句话 + 3 s"**，前缀规则删除（原规则会吞掉用户主动说的第二条指令）；
  4. **`native_marker` 的非法 session 直接判标记无效**，不再掉进窗口兜底；
  5. **T7-06 免唤醒连续追问仍未实现**：本轮没有新增原厂调用证据，实现路径与上机前提见 §5，状态机 `WAIT_NEXT` 依旧不算完成；
  6. **真人语音验收未执行**（本轮全部为合成语音，§6 明确标注）。

---

## 1. P1：rollback 与 Guard 生命周期

### 1.1 改了什么

`android/run_t7_05.sh` 重写（不是修补），关键点：

| 需求 | 实现 |
|---|---|
| guard-stop / rollback 清理**全部**守卫 supervisor | `guard_sup_pids()` 扫 `/proc/<pid>/cmdline`，匹配 `tg_supervisor` + `libtg_ttsguard`；`kill_guard_sups()` TERM→KILL 多轮直到 `/proc` 里不存在 |
| 绝不误杀 T6-01 ASR supervisor | 只匹配带 `libtg_ttsguard` 的；`asr_sup_pids()` 仅用于打印 |
| 先停 supervisor 再卸载 hook | `guard_stop`：`kill_guard_sups` → `uninstall_all` → 复核 `hooked=0` → 再确认没有守卫 supervisor 复活 |
| rollback 恢复三个产物 | worker / worker.conf / **libtg_ttsguard.so**（T7-05 的重写漏掉了第三个，本轮补上） |
| 恢复后逐项校验 | 三个文件逐个 `sha256sum` 与脚本内常量比对，输出 `ok/FAIL`，并跑 `tg_injector --check` 打印 `hooked=` |
| 不得覆盖唯一备份 | 只从 `backup_t7_05/` 读、向运行位置写；`selfcheck` 只读校验 |
| 用可执行检查防"报告与代码不一致" | 新增 `selfcheck`（备份齐全 + sha 与常量一致）与 `verify`（运行态三件套 sha + hooked + supervisor 列表）；`rollback` 第一步就跑 `selfcheck`，不通过直接 ABORT |

额外修掉两个只在真机上才会暴露的坑：

- **`kill -0` 不可用**：本固件 SELinux 下 root 对别的域 `kill -0` 返回 EPERM，原脚本据此判断"supervisor 已停"会谎报。改成看 `/proc/<pid>`。
- **`awk` 不存在**：原 rollback 用 `awk` 取 worker pid，设备上没有 `awk`，于是"回滚后 worker 明明在跑却报 FAIL"。改成扫 `/proc/<pid>/cmdline` 的 `worker_running()`。
- **非 root 静默失败**：本机 Magisk `su` 偶发只给 `uid=2000`，此时 `sha256sum` 对 0600 文件返回空、`cp` 失败。脚本开头加了 `id -u != 0` 立即退出（exit 9），把"半回滚"变成一条明确错误。

### 1.2 新增 `guard-reload`

换 `.so` 文件后必须重启 `:core`：`libtg_ttsguard.so` 被 `mv` 覆盖后，进程里映射的还是旧 inode，`dlopen` 报
`library ".../libtg_ttsguard.so" wasn't loaded and RTLD_NOLOAD prevented it`（真机 exit=17）。
`guard-reload` = `guard-stop` → `kill -9 :core` → `guard-start`。

### 1.3 真机验证（`evidence/t7_05r1_device_rollback.log`）

```
ok   worker sha=b3c8dde4cd6d6c0b035689ae6f50fbf92630c35e2de7cd519abd1d2cac1e4ed3
ok   conf sha=82481c539df297b86ecf9dab8c0b5a0afdc3a9a623f43455ed0208516d8dad1e
ok   guard sha=fc1d27f2357b5a3390035207f4fb8c70fe3c7403dca3335e56d55f8429ab67b4
ok   worker running
guard uninstalled: hooked=0 on every :core
guard-stop done (asr supervisor left untouched: 15812 )
rollback: PASS
```

第一次跑是 `rollback: FAIL`（`awk` 那条），修完再跑 PASS —— 这条 FAIL 本身就是"报告与代码不一致"的实例，所以把两次都留在证据里。
验证完已重新部署 T7-05-R1（worker `5df4d8e6`、guard `6d989d8d`），设备恢复可用。

---

## 2. P1：不完整音量指令 vs 重复识别

### 2.1 把"识别到意图"和"可以执行"分开

`ir_result` 新增两个字段：

```c
int  complete;      /* 1 = 参数/语义完整，可以交给原厂执行 */
char note[16];      /* 不完整原因：dangling / ambiguous-qty */
```

判定规则（`intent_route.c`）：

1. **结尾悬空** `IR_TAIL_DANGLING = {调到,调成,设成,设为,改到,改成,换成,变成,百分之,百分,到,为}`：
   `音量调到`、`音量调到百分之` → `complete=0, note=dangling`；
2. **数量歧义**：`百分之` 后面只剩一个汉字数字（`二/三/…/九`）时无法判断是 2 还是 20
   → `complete=0, note=ambiguous-qty`。这条是照任务书 §二.1 的要求做的，
   代价是"音量调到百分之二"这类真的想设 2% 的说法会被转成 AI 澄清；
3. 其余（`音量调到百分之十`、`把声音调到二十五`、`声音大一点`、`音量调小`、`关闭屏幕`、`现在几点`）
   `complete=1`。

Worker 侧（`uttq_pop_to_pend`）：

```
!ir.complete          -> route=ai INCOMPLETE（计数 route.incomplete_ai），不写放行标记、
                         不写 last_native_text
同一句话 + ≤3 s       -> 去重（route.dup_dropped）
route_publish() == 0  -> route=native（写标记、记 last_native_text）
route_publish() != 0  -> FALLBACK to ai
```

`utterance_gate.c` 的快路也加了 `if (!ir.complete) return 0;`，不完整指令不会走快路。

### 2.2 二次识别去重重新设计

原规则（T7-05）：**同意图 + 文本前缀关系 + 15 s** → 丢弃。问题：用户主动说的
`播放周杰伦` → `播放周杰伦的新歌` 会被吞；13 s 后才到的完整识别也会被吞。

新规则：**归一化后完全相同的文本 + ≤ 3 s（`T7B_NATIVE_DUP_MS`）** 才丢弃。
依据：原厂对同一段音频的重复识别在几秒内出现；用户主动重复一条指令通常要等效果出来，远超 3 s。
前缀规则整体删除，所以"先不完整、后完整"的两条各自处理：前者转 AI 澄清，后者正常执行。

### 2.3 主机测试（`evidence/t7_05_host_unit_test.log`，**188 断言 0 失败**）

新增 `tests/t7_05r1_incomplete_unit_test.c`（52 断言）覆盖任务书 §二.7 全部场景：

| 场景 | 断言结果 |
|---|---|
| `音量调到百分之` / `音量调到` | 命中 volume，`complete=0`，`note=dangling` |
| `音量调到百分之二` | `complete=0`，`note=ambiguous-qty` |
| `音量调到百分之十` / `把声音调到二十五` | `complete=1`，`arg=set:10 / set:25` |
| 不完整 → 4000 ms 超时放出 | 放出的文本仍是 `complete=0`（→ AI，不执行） |
| 第一条不完整 + 13 s 后完整 | 旧片段单独放出并保持 incomplete；新句另存、`complete=1`、`set:20` |
| `播放周杰伦` + 1.5 s 后 `播放周杰伦的新歌` | 两条都放出去，**没有被当重复吞掉** |
| 连续两次 `调大音量` | 判据是"文本完全相同 + 3 s"，语义断言覆盖 |
| `音量调到百分之十` 快路 | `why=fast`，不受本轮改动影响 |

### 2.4 真机验证（合成语音，`evidence/t7_05r1_device_worker.log` / `device_volume.log`）

| 说的话（SAPI 合成） | ASR 原文 | 路由 | 音量实际变化（dumpsys audio） |
|---|---|---|---|
| 音量调小一点 | `天猫精灵音量调小一点` | `native volume.down arg=down` | 40 → **3** |
| 音量调到百分之十 | `天猫精灵音量调到百分之十` | `native volume.set arg=set:10` | → **10** |
| 音量调大一点 | `音量调大一点` | `native volume.up arg=up` | 10 → **20** |
| 音量调到百分之（不完整） | `天猫精灵音量调到百分之` | `route=ai INCOMPLETE note=dangling` | **无变化**（连测 3 次） |
| 音量调到百分之五十 | ASR 截断成 `…百分之五` | `route=ai INCOMPLETE note=ambiguous-qty` | **无变化** |

计数器（`evidence/t7_05r1_device_state.json`）：

```json
"route":{"native":1,"ai":3,"volume":1,"publish_ok":1,"publish_fail":0,"fallback_ai":0,
         "dup_dropped":0,"incomplete_ai":3,"publish_err":""}
```

> 说明：这是修复"INCOMPLETE 分支错误地继续走 FALLBACK 并打 `publish failed` 日志"之后的版本。
> 该 bug 是本轮真机跑出来的（`route=ai INCOMPLETE` 与 `FALLBACK to ai` 同时出现），
> 已改成 `if/else if/else if/else` 的互斥链。

### 2.5 仍未验证的音量用例

- `把声音调到二十五`：`v_set.wav` 本轮没有被 ASR 识别出事件（原厂没开识别会话），**未验证**；
- `音量调到百分之五十`：ASR 把"五十"截成"五"，只能验证"不执行"这一半，**50% 未验证**；
- "不完整后再补数字"：`十` 这种一词短句原厂不给 final，**未验证**（host 单测覆盖了逻辑）。

---

## 3. P2：`native_marker` 非法 session

`nm_parse()` 现在把三种情况分开：

| `session` 字段 | 处理 |
|---|---|
| 不存在 | 兼容旧格式：`have_session=0`，窗口内兜底放行 |
| 存在且是合法十进制正整数 | `have_session=1`，必须 session 精确匹配 |
| 存在但为空 / 非数字 / 带尾巴 / 溢出 / `<=0` | **整个标记无效，拒绝放行**（不进入窗口兜底） |

主机单测新增 7 个畸形样本（空串、`abc`、`1969141x`、`-5`、`0`、超大数）+ 旧格式兼容样本，
断言"畸形 session 绝不触发 `hit_window`"（`tests/t7_05_native_marker_unit_test.c` [8]，总 67 断言）。

守卫改动的 `.so`：`sha256 6d989d8d3ea4e89491dd5348c1b1e70a965b62626fc01acf062e2d8dd983b842`。

---

## 4. 构建 / 测试 / 部署

| 项 | 结果 |
|---|---|
| ARM32 构建 `build_t7_05.ps1` | `0 warning, 0 error`，ELF32/ARM，动态链接 |
| `libtg_ttsguard.so` | 23008 B，sha256 `6d989d8d…b842` |
| `ai_worker` | 218672 B，sha256 `5df4d8e6…eb65` |
| 主机测试 `run_t7_05_host_tests.ps1` | **188 断言，0 失败**（gate 32 + route 37 + r1 52 + marker 67） |
| 备份（改前） | `backup_t7_05r1/{ai_worker.t7_05 9770ed52, worker.conf.t7_05 82481c53}`、`backup_t7_05r1_libtg_ttsguard.t7_05.so 01941ddd` |
| T7-04 回滚基线 | `backup_t7_05/{ai_worker.t7_04 b3c8dde4, worker.conf.t7_04 82481c53}`、`backup_t7_05/libtg_ttsguard.t7_04.so fc1d27f2` |

部署顺序（换 `.so` 必须重载）：`guard-start`/`guard-reload` → 停 worker → 换二进制 → `start-deepseek` → `verify`。
当前设备：`:core` pid `5869` `hooked=1`、守卫 supervisor `6829`、ASR supervisor `15812`（未触碰）、
worker `5df4d8e6`、guard `6d989d8d`。

---

## 5. T7-06 免唤醒连续追问：仍未实现

本轮**没有**新增原厂调用证据，也没有做只读快照 hook。原因与下一步（不再重复调研）：

已有结论（T7-05 §5 + `_analysis/t702/dec_dialog3.txt`）：

- `ContinuousDialogManager::startFullDuplexDialog()` @`0x1665e8`：`if (CDM[0x70] != 0)` 才继续，
  然后用 `CDM+4`（sessionId）算 `IInputDeviceManager::getInputType`，把**内嵌在 `CDM+8`** 的
  `_WakeUpInfo_` 交给 `IInputDeviceManager->vtable[8]`，最后 `resetWakupInfo()` + `CDM[0x60]=1` + `CDM[0x70]=0`；
- `resetWakupInfo()` @`0x166500` 会 `free(CDM+0xc/+0x10/+0x38/+0x3c/+0x40/+0x44)` 并置 `*(CDM+8) = -1`；
- `CDM` 的导出符号只有 `onSpeakCommand / onNotify / startFullDuplexDialog / resetWakupInfo /
  visionOpenCallback / packageCheckCallback / ctor|dtor`，`[0x70]` 只被读和清零；
- 真正的传参入口是 `SessionManager::onStartTalk(InputDeviceType, InputDeviceType, _WakeUpInfo_*, _WakeUpEventRet_*)`
  @`0x111364`（dynsym 已确认），`InputDeviceManager::startTalk` @`0x107e14`。

这一步缺的仍然是 `_WakeUpInfo_` 的**权威布局**（大小、每字段类型、字符串所有权、生命周期）。
按任务书 §五.2 的要求，不能只凭 free 偏移推断，所以本轮不动它。

下一轮第一步（可直接执行，不需要再调研）：

1. 新增只读库 `libtg_wakeinfo.so`，只 hook `SessionManager::onStartTalk` @`0x111364` 入口，
   把 `_WakeUpInfo_` 的 `0x00..0x5c`、`tid`、`comm`、`sessionId`、`wakeupType` 落盘；
   连续 5 次真实唤醒取交集；
2. 与 `resetWakupInfo()` 的释放偏移逐字段对照，确认指针/整数/字符串所有权；
3. 深拷贝 + 自己持有字符串，AI TTS 播完后调 `IInputDeviceManager->vtable[8](getInputType(sessionId), &copy)`（方案 D）；
4. 三轮验收：一次唤醒 → 问题1 → 回答 → **不喊唤醒词** → 问题2 → 回答 → 问题3 → 回答，
   每轮记录 `onStartTalk` 的 sessionId/wakeupType 与 `events.jsonl` 文本。

约束照旧：不重播唤醒词、不改原厂 APK、不动 T6-01 ASR hook 主链、可随时 `run_t7_05.sh rollback`。

---

## 6. 真人语音验收：未执行

本轮全部真机证据都是 **SAPI 合成语音经 PC 扬声器**（`Microsoft Huihui`），已在上文逐条标注。
任务书 §六 要求的真人现场测试（停顿 0.5/1/2 s、长句、播报中插话、一次唤醒连续三轮）**没有执行**，
因此不能声称任何一项"真人语音通过"。

`localASRPauseTime=150`、`pauseTime=700` 保持基线未改；参数对照实验（每次只改一个）仍未做。

---

## 7. 归档：已实现 / 通过 / 未通过

| 类别 | 内容 |
|---|---|
| **已实现** | ① 回滚与守卫生命周期重写（含 `selfcheck`/`verify`/`guard-reload`/root 检查）；② 意图识别与参数完整分离，不完整指令转 AI；③ 二次识别去重改为"完全同句 + 3 s"；④ `native_marker` 非法 session 判无效 |
| **主机测试通过** | 188 断言（含 52 条 R1 新增、7 条畸形 session） |
| **合成语音真机通过** | 音量调小 40→3、调到百分之十 →10、调大 10→20；不完整"百分之"三次均 `route=ai INCOMPLETE` 且音量无变化；`百分之五` 判 ambiguous 不执行；rollback PASS（三个 sha + hooked=0 + 不碰 ASR supervisor） |
| **真人语音通过** | 无 |
| **尚未实现** | 免唤醒连续追问（T7-06 四步全部未做）；播报中不喊唤醒词插话；`把声音调到二十五` / 50% / 不完整后补数字的真机用例 |
| **回滚是否实际验证** | **是**，两次（第一次 FAIL 暴露 `awk` bug，修完 PASS），已重新部署 R1 |
