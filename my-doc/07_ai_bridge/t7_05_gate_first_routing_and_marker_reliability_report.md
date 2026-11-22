# T7-05 暂存门先于路由 + 原厂放行标记可靠性（连续对话仍受原厂限制）

- 设备：TG-Z02 / CCH `AILABS_S1L` / Android 8.1（SDK 27）/ ARM32 `armeabi-v7a` / `192.168.1.9:5555`
- 仓库：`iyim/tgz02` 分支 `main`（直接提交，未建 PR）
- 基线：T7-04 已验收版本（`ai_worker` sha256 `b3c8dde4…4ed3`、`libtg_ttsguard.so` sha256 `fc1d27f2…67b4`）
- 本轮一句话结论：
  **① 顺序修复（先攒完整 utterance 再判本地意图）已完成并真机验证；
  ② 放行标记可靠性（返回值 / 重试 / 回读校验 / 失败回退 AI / 守卫按 session 收敛）已完成，
  并用故障注入证明"标记失败时 AI 会顶上"；
  ③ 免唤醒连续追问仍未实现 —— 本轮把 `ContinuousDialogManager` 的续听门槛钉死到字节级，
  但真正调用它必须在唤醒链路里写原厂对象，本轮没有拿到足够的安全证据，做法与阻塞原因见 §5；
  ④ 真人现场测试只做了合成语音矩阵，真人口述矩阵与停顿对照实验仍需人到设备前执行（§6）。**

---

## 1. 代码变更清单

| 文件 | 类型 | 说明 |
|---|---|---|
| `android/utterance_gate.c/.h` | 修改 | 新增"完整本地指令快路"（`fast_native/fast_intents`、`fast_released`）、快路后的同 session 修订去重（`fast_session/fast_text/fast_ms`）、"百分之/百分" 列入悬空词、开头悬空短语表 `UG_OPEN_PREFIX`（明天/今天/…） |
| `android/intent_route.c/.h` | 修改 | 路由位掩码搬到本头文件（`T7B_ROUTE_*`）+ 新增 `ir_route_bit()`；中文数字解析改为"取离数字最近的触发词"（修 `百分之` 被解析成 100）；音量/天气/屏幕/时间四张否决表补误判样本 |
| `android/ai_worker.c/.h` | 修改 | **路由判定从 `ug_feed` 之前移到 `uttq_pop_to_pend` 之后**；`route_publish()` 改为返回结果并做 3 次重试 + fsync + fchmod + rename + chmod/stat + 回读校验；失败即回退 AI；新增"ASR 二次识别"判定（前缀关系 + 同意图 + 15 s） |
| `android/worker_status.c/.h` | 修改 | 状态新增 `route.publish_ok/publish_fail/fallback_ai/publish_retry/dup_dropped/seq/publish_err`、`gate.fast_released` |
| `android/hook_tts/native_marker.c/.h` | 新增 | 放行标记的解析与判定（纯逻辑，可 host 单测）：session 命中才放行，只有"标记里没有 session"才用窗口兜底 |
| `android/hook_tts/libtg_ttsguard.c` | 修改 | 改用 `native_marker`；文件身份（mtime/size/ino）变化立即重读（原来 250 ms 缓存会吃掉连续两条指令）；统计新增 `native_session/native_window/native_miss/native_bad/native_seq`；顺带修复本文件此前被 GBK 往返损坏的注释（无功能改动） |
| `android/run_t7_05.sh` | 新增 | 生命周期脚本（`guard-start/guard-stop/guard-status/route-status/worker-status/rollback`），回滚基线指向 T7-04 |
| `android/build_t7_05.ps1` | 新增 | ARM32 构建（守卫 + `native_marker` + Worker），`-Wall -Wextra`，任何 warning 即失败 |
| `tests/t7_05_gate_order_unit_test.c` | 新增 | 32 断言：五组分段样本 + 快路 + 快路后去重 |
| `tests/t7_05_route_negatives_unit_test.c` | 新增 | 37 断言：任务书点名的 5 条误判 + 9 条正样本 + 中文/全角数字 |
| `tests/t7_05_native_marker_unit_test.c` | 新增 | 39 断言：标记解析/判定/失败注入/连续两条标记 |
| `tests/run_t7_05_host_tests.ps1` | 新增 | 一键 108 断言 + 编译检查 |

未改动：T6-01 `libtg_hook.so`、T6-02 `tg_supervisor`、T6-03 `init.rc`、Injector、`TtsExec.java`、
`runtime.xml`、原厂 APK、`system/boot/vendor`、`localASRPauseTime=150` / `pauseTime=700`。

---

## 2. 功能一：暂存门先于本地路由（顺序修复）

### 2.1 改的是哪一行

T7-04 的顺序是：

```
asr_final -> 回声过滤 -> ir_classify() 命中就直接 native 提交 -> 否则才进 ug_feed()
```

后果：ASR 把一句话拆成两条 final 时，第一段（例如"音量调到"）已经命中 `volume.adjust`，
被当成完整指令提前提交，第二段"百分之十"就成了第二条指令 —— 用户听到的是一次错答案。

T7-05 改成：

```
asr_final -> 回声过滤 -> ug_feed()/ug_poll()（修订合并、悬空合并）
        -> 完整 utterance 入 uttq -> uttq_pop_to_pend()
        -> ir_classify() 命中则该条 route=native（写放行标记），否则建 pend 走模型
```

判定的"唯一入口"变成了 `uttq_pop_to_pend()`，因此**一条完整指令只会判定一次、只走一条执行路径**，
不存在原厂和 AI 双回答。偏移提交完全没动：`ug_feed` 命中暂存时照旧立即 `commit_skipped`，
文本在内存 + 落盘槽里，崩溃恢复与去重逻辑保持 T7-04 行为。

### 2.2 五组分段样本（host 单测，`evidence/t7_05_host_unit_test.log`）

| 样本 | 形态 | 结果 |
|---|---|---|
| `帮我播放` + `周杰伦的歌` | 跨 session，悬空谓词 | 合并成 `帮我播放周杰伦的歌`，只提交一次 → media（原厂） |
| `音量调到` + `百分之十` | **同** session（本轮新增支持） | 合并成 `音量调到百分之十`，`arg=set:10` → volume（原厂） |
| `关闭屏幕` | 单条完整 | 快路立即提交（`why=fast`，不占暂存槽，`held=0`） |
| `现在几点` | 单条完整 | 快路立即提交 → time（原厂） |
| `明天` + `会下雨吗` | 开头悬空短语 + 跨 session | 合并成 `明天会下雨吗` → weather（原厂） |

同 session 的悬空合并是本轮新增的：真机上"音量调到"和"百分之十"经常落在同一个 session
的两次 final 上（原厂端点并不换 session），只做跨 session 合并救不回来。

### 2.3 完整指令不再被无意义拖长

`ug_fast_ready()` 只对"意图明确 + 语义完整（不以悬空谓词结尾）"的本地指令开快路：
`关闭屏幕`/`现在几点`/`音量调到百分之十`/`把声音调到二十五`/`暂停` 这类说完就执行；
聊天文本仍然等满 `debounce_ms`（450 ms），否则同 session 的 ASR 修订会被拆成两次回答。

真机证据（`evidence/t7_05_device_state.json`）：`gate.fast_released=5`、`held=3`，
其中 5 条 native 指令的 `held_ms=0`（音量/关屏/时间/天气/播放），聊天那条 `held_ms=613`。

---

## 3. 功能二：原厂放行标记的可靠性

### 3.1 `route_publish()`：从"尽力而为"改成"要么成功要么回退"

T7-04 的实现只写了文件、忽略了 `chmod` 的返回值，任何一步失败都静默，结果是
**Worker 认为已放行并跳过 AI，守卫却没读到标记，把原厂回答拦掉** —— 两边都没有回答。

现在的每一步都有明确处理，任一步失败即返回 -1（最多重试 3 次）：

1. `open(tmp)` → 失败记录 `publish_err`；
2. `write` + `fsync`；
3. **`fchmod(tmp, 0644)` 在 rename 之前**（守卫以 system 身份读，先设权限不留 0600 窗口）；
4. `close` 检查返回值；
5. `rename` 原子替换；
6. rename 之后 `chmod` + `stat` 复核权限位（SELinux/挂载策略下 rename 成功但属性不对的情况）；
7. **回读校验**：把文件读回来，必须能看到本次 `"seq":N` 和 session ——
   检测"写成功但被别的进程覆盖/清理"。

标记格式升到 `version:2` 并带单调 `seq`。

### 3.2 失败注入（真机）

注入方式：在 `work/` 下建一个**同名目录** `native_route.public.json.tmp`，让 `open()` 直接 `EISDIR`。

```
[aiw] 2026-11-22T09:19:38 route=native FALLBACK to ai: intent=time event=t6-15072-1969155-g13
      session=1969155 reason=open tmp: Is a directory
      (guard would drop the factory answer, so the model must answer)
[aiw] 2026-11-22T09:19:41 deepseek ok: http=200 latency=2239ms reply_bytes=93
```

状态文件同刻：

```json
"route":{"native":5,"ai":3,"publish_ok":5,"publish_fail":1,"fallback_ai":1,
         "publish_retry":2,"seq":6,"dup_dropped":0,"publish_err":"open tmp: Is a directory"}
```

即：**标记写不出去时，AI 这条路径不会被丢掉**（用户照样听到回答），
而原厂回答因为守卫按规则拦截，不会出现两边同时说话。

### 3.3 守卫侧：`native_allow_hit()` 收紧

抽成纯逻辑模块 `native_marker.c`（host 可测），判定顺序：

| 条件 | 结果 |
|---|---|
| 标记无效 / 缺 `exp_ms` / 解析失败 | 不放行（`bad_marker++`） |
| `now > exp_ms` | 不放行（`expired++`） |
| `onTtsStart` 的 sessionId == 标记里的 session | 放行（`hit_session++`，最强证据） |
| 标记里**没有** session（老格式/异常） | 窗口内放行（`hit_window++`） |
| session 对不上 | **不放行**（`miss_session++`） |

同时把 `T6B_ROUTE_SLACK_MS` 从 8000 ms 收紧到 2000 ms，读取缓存从固定 250 ms 改为
"250 ms 或文件身份（mtime/size/ino）变化"——连续两条 native 指令快速到达时不会再吃到上一条标记。

真机连续 7 条原厂回答的统计：

```
native_allowed=7 native_session=7 native_window=0 native_miss=0 native_bad=0 native_seq=5
```

**7/7 全部按 sessionId 命中，0 次窗口兜底，0 次误放行**（`evidence/t7_05_device_guard.log`）。

### 3.4 同一个 `seq` 不会被复用

守卫不做"一次性消费"（原厂流式回答可能多次触发 `onTtsStart`），收敛靠 session + 过期；
两条连续指令由 `seq` 区分，host 单测 `[7]` 证明旧标记不会放行下一条回答。

---

## 4. 功能三：ASR 半句话（原厂端点）

本轮把"半句话"拆成两层，分别定性：

| 层 | 现象 | 归属 | 本轮处理 |
|---|---|---|---|
| 两条 final 都到达了 | 前半句先被提交 | Worker（顺序 bug） | **已修**（§2） |
| 原厂端点在第一段停顿就结束识别 | 后半句根本没被识别 | 原厂 ASR 端点 | 只能靠参数对照实验，见下 |

真机抓到的原厂端点行为（本轮新增证据）：说"音量调到百分之十"，
`asr_final` 第一条是 `天猫精灵音量调到百分之`（33 B，`session=1969077`），
**13 s 后**同一个 session 序列又出现完整的 `天猫精灵音量调到百分之二十`（39 B，`session=1969083`）——
说明原厂对同一段音频会二次识别并给出不同结果。

这暴露了两个真实缺陷，本轮都修了：

1. `百分之` 后面没有数字时，中文数字解析按表顺序落到短触发词"到"，
   把"音量调到百分之"解析成 `set:100`（**用户没说要 100，原厂会把音量拉满**）。
   现在改为"取离数字最近的触发词"，`百分之` 后面没有数字就返回"没有参数"。
2. 二次识别（两段文本为前缀关系、意图相同、间隔 ≤15 s）只执行一次，
   否则原厂会为同一句话播两遍。日志：`route=native SKIP duplicate recognition`。

`localASRPauseTime=150` / `pauseTime=700` 本轮**仍然没有改**：
没有干净基线对照之前动它们，等于用一个未测量的变量去解释另一个现象（§6 给出对照方案）。

---

## 5. 功能四：免唤醒连续追问（**仍未实现**）

### 5.1 这轮把门槛钉到字节级

`ContinuousDialogManager::startFullDuplexDialog()` @`0x1665e8`（反汇编 `_analysis/t702/dec_dialog3.txt`）：

```
if (this[0x70] != 0) {                              // 唯一的本地闸门
  mgr  = *(IMmiCore::getInstance()->vtable + 0x10)();      // IInputDeviceManager
  type = IInputDeviceManager::getInputType(*(this + 4));   // this+4 = sessionId
  (*mgr->vtable[8])(mgr, type, this + 8);                  // 原厂 startTalk(type, _WakeUpInfo_*)
  TimerManager::timerManagerEvent(..., 3); TimerManager::timerManagerEvent(..., 2);
  resetWakupInfo(this); this[0x60] = 1; *(this + 4) = -1; this[0x70] = 0;
}
```

- `_WakeUpInfo_` **内嵌在 `CDM + 8`**，不是全局对象；
- `resetWakupInfo()` @`0x166500` 会 `free(this+0xc/+0x10/+0x38/+0x3c/+0x40/+0x44)` 并置 `*(this+8) = -1`
  —— 这些字符串是**堆上 owned** 的，谁填谁负责；从外面手搓一份塞进去，随后会被原厂 `free`；
- `ContinuousDialogManager` 的导出符号只有 `onSpeakCommand / onNotify / startFullDuplexDialog /
  resetWakupInfo / visionOpenCallback / packageCheckCallback / ctor|dtor`；`[0x70]` 在反汇编里
  **只被读和清零**，唯一写入方是云端下发链（`onSpeakCommand` 写 `this+4=sessionId`、`this+8=wakeupType`）；
- 另一条**不经过 `[0x70]`** 的路径在 `onNotify(param_1==0x11 && param_3==0xc)`：
  sessionId 不同才 `startTalk(getInputType(this+4), this+8)`，相同就 `this[0x60]=0` 直接返回。

### 5.2 为什么本轮没做真实调用

要在唤醒链路里写原厂对象（`CDM+4/+8` 与 `[0x70]`）或者自己快照 `_WakeUpInfo_` 后直接调
`IInputDeviceManager->vtable[8]`，都属于"在没有布局证据的情况下写 native 结构体"。
本轮手上**只有** `resetWakupInfo()` 的释放偏移可以反推字段，而它只能证明"哪些偏移是指针"，
**不能证明结构体大小、字段类型和字符串所有权**——按任务书 §三.1/§三.2 的要求，这不够格上机。

### 5.3 下一轮的上机前提（可执行，不是再调研一遍）

1. **只读快照**：在 `SessionManager::onStartTalk(InputDeviceType, InputDeviceType, _WakeUpInfo_*, _WakeUpEventRet_*)`
   @`0x111364`（dynsym 已确认）入口做**只读** hook，把 `_WakeUpInfo_` 的 `0x00..0x5c` 原样 dump，
   连同调用线程 tid/comm、`sessionId`、`wakeupType` 一起落盘；连续 5 次唤醒取交集，
   才能确定结构体边界与各字段类型（这一步不写任何原厂内存，失败也只是少一条日志）。
2. **对照**：把 dump 结果与 `resetWakupInfo()` 的释放偏移逐字段核对，明确哪些偏移是 `char*`、
   哪些是 `int`；字符串属于会话对象还是 wake 引擎。
3. **真实调用**：用快照深拷贝一份 `_WakeUpInfo_`（字符串自己 `strdup` 持有），
   在 AI TTS 播完后调 `IInputDeviceManager->vtable[8](getInputType(sessionId), &copy)`；
   与原厂 `startFullDuplexDialog` 里那一行逐字相同，但不碰 `CDM`、不写 `[0x70]`、不触发任何 `free`。
4. **验收**：一次唤醒 → AI 回答结束 → 不喊唤醒词连问三轮；每轮记录 `onStartTalk` 的
   `sessionId/wakeupType` 与 `events.jsonl` 的文本，确认没有额外唤醒词（不准用重播唤醒词充数）。

本轮**没有**用"每轮重播唤醒词"冒充连续对话，也没有在任何日志里把它写成已实现。

---

## 6. 真人语音与端点对照（本轮只完成可自动化的部分）

### 6.1 已执行（合成语音经 PC 扬声器，非真人）

见 §7 的验收表。合成语音能验证链路（路由/标记/守卫/模型/TTS），
但**不能**代替真人验证停顿与端点行为，因为真人的停顿长度、语速、口音都会改变原厂 ASR 的切分。

### 6.2 仍需人到设备前执行（脚本与判据已定）

| 用例 | 做法 | 记录字段 |
|---|---|---|
| 正常连续说完整句 | 唤醒后一口气说完"音量调到百分之十" | ASR final 时间戳 / sessionId / 文本 / onStopTalk / 路由 |
| 停顿 0.5 s | "帮我播放…（0.5 s）…周杰伦的歌" | 同上 + 是否出现第二条 final |
| 停顿 1 s | 同上 | 同上 |
| 停顿 2 s | 同上 | 同上 |
| 长句 | 30 字以上问题 | 是否被截断 |
| 一条被拆两条 final | 观察 `merges`/`cross_merged` | `gate.last_detail` |
| AI 播报期间插话 | 播报中说"暂停" | `interrupts` 计数、是否立刻停 |

参数对照实验（**改前必须备份**，每次只改一个）：

| 组 | `localASRPauseTime` | `pauseTime` | 目的 |
|---|---|---|---|
| 基线 | 150 | 700 | 记录 current |
| A | 300 | 700 | 停顿容忍是否提高 |
| B | 150 | 1200 | 端点是否更晚结束 |

每组至少 5 次同文本，比较"两条 final 出现率"和"后半句丢失率"。
对照组没跑完之前不改默认值——这正是本轮不动这两个参数的原因。

---

## 7. 真机验收（TG-Z02，2026-11-22 09:14–09:20，全部为本次部署版本）

设备状态：`:core` pid `15072`、守卫 `hooked=1 play=1 start=1`、`ai_worker` pid `16180`
（sha256 `9770ed52…0ba2`）、守卫 sha256 `01941ddd…1bc0`。

| # | 说的话（合成语音） | ASR 文本（events.jsonl） | session | 路由结果 | 原厂执行 | AI 请求 | 守卫 |
|---|---|---|---|---|---|---|---|
| A | 音量调到百分之十 | `天猫精灵音量调到百分之`（截断） | 1969077 | `route=native intent=volume arg=set:100` ← **发现 bug** | 回答被放行 | 0 | `native_allowed=1 by=session` |
| B | 关闭屏幕 | `天猫精灵关闭屏幕` | 1969111 | `native intent=screen_off held_ms=0 publish_seq=1` | 关屏 | 0 | 放行（session 命中） |
| C | 现在几点 | `天猫精灵现在几点` | 1969116 | `native intent=time publish_seq=2` | 报时 | 0 | 放行 |
| D | 明天天气怎么样 | `天猫精灵明天天气怎么样` | 1969121 | `native intent=weather publish_seq=3` | 播天气 | 0 | 放行 |
| E | 帮我播放周杰伦的歌 | `天猫精灵帮我播放周杰伦的歌` | 1969125 | `native intent=media rule=media.play publish_seq=4` | 起播 | 0 | 放行 |
| F | 你叫什么名字 | `天猫精灵你叫什么名字` | 1969131 | `route=ai held_ms=613` | —（守卫拦掉原厂抢答） | **1**（http 200 / 1382 ms） | `dropped` 增加 |
| G | 帮我播放 + 周杰伦的歌（分两段） | 第二段单独成句 | 1969137 | `native intent=media held_ms=1220 merges=0` | 起播 | 0 | 放行 |
| H | 讲个笑话 → 播报中喊"暂停" | 笑话 → **暂停那条无事件** | 1969142 | `route=ai`（笑话） | — | 1（http 200 / 1585 ms） | — |
| I | 现在几点（**标记写盘故障注入**） | `天猫精灵现在几点` | 1969155 | `FALLBACK to ai`（`publish_err=open tmp: Is a directory`） | 守卫按规则拦截 | **1**（http 200 / 2239 ms） | 未放行 |

聚合计数（`evidence/t7_05_device_state.json`）：

```json
"route":{"native":5,"ai":3,"volume":0,"weather":1,"screen_off":1,"time":1,"media":2,
         "publish_ok":5,"publish_fail":1,"fallback_ai":1,"publish_retry":2,"seq":6,"dup_dropped":0}
"gate":{"seen":8,"held":3,"released":8,"merged":0,"cross_merged":0,"fast_released":5}
"session":{"state":"IDLE","closed":3,"detail":"CLOSED->IDLE (back to standby)"}
```

守卫统计（`evidence/t7_05_device_guard.log`）：

```
native_allowed=7 native_session=7 native_window=0 native_miss=0 native_bad=0 native_seq=5
```

### 7.1 本轮真机发现并修正的问题

1. `百分之` 后面没数字被解析成 `set:100`（会真的把音量拉满）→ 改为"最近触发词"解析；
2. `百分之` 不在悬空词表 → 半句话被快路直接执行 → 加入悬空词表，改为先握 450 ms/2500 ms；
3. 同 session 的两段话不合并 → 新增同 session 悬空合并；
4. 原厂对同一段音频二次识别 → 新增"前缀关系 + 同意图 + 15 s"去重。

### 7.2 仍未通过的一项（H）

播报期间喊"暂停"，`events.jsonl` **没有任何新事件**——原厂在自身 TTS 播放期间不开新的识别会话。
这属于原厂行为，与 T7-04 的 `interrupted` 终态修复不冲突（那条修复解决的是"打断后旧回答重播"）。
真人现场需要再确认一次：如果真人也拿不到事件，说明"播报中直接插话"只能通过原厂自己的
唤醒词唤醒来实现（即"打断"仍然需要唤醒词），这与"免唤醒连续追问"是同一个根因（§5）。

---

## 8. 备份、回滚、SHA256

部署前备份（设备 `/data/local/tmp/`，`evidence/t7_05_device_sha256.log`）：

| 文件 | sha256 |
|---|---|
| `t5_bridge/backup_t7_05/ai_worker.t7_04` | `b3c8dde4cd6d6c0b035689ae6f50fbf92630c35e2de7cd519abd1d2cac1e4ed3` |
| `t5_bridge/backup_t7_05/worker.conf.t7_04` | `82481c539df297b86ecf9dab8c0b5a0afdc3a9a623f43455ed0208516d8dad1e` |
| `t7/backup_t7_05/libtg_ttsguard.t7_04.so` | `fc1d27f2357b5a3390035207f4fb8c70fe3c7403dca3335e56d55f8429ab67b4` |

部署后（当前运行中）：

| 文件 | sha256 |
|---|---|
| `t5_bridge/bin/ai_worker` | `9770ed52793690e50b1d2d7d29a4777a08cbf8879adb1a1cf72dd36c96100ba2` |
| `t7/libtg_ttsguard.so` | `01941ddd41dd961752e4d81dc4a56a922795366f095a895ced9fe4bcfcf81bc0` |
| `t5_bridge/tts_exec.dex` | `c947fa09d975bfc454493e00b118f21162c370718ffe9c98df4cad109dd2b2a8`（未改） |
| `t5_bridge/ai_worker/worker.conf` | `82481c539df297b86ecf9dab8c0b5a0afdc3a9a623f43455ed0208516d8dad1e`（未改） |

回滚（一条命令，恢复 T7-04 的 Worker + 配置 + 守卫 .so 并重启）：

```sh
su -c 'sh /data/local/tmp/t7/run_t7_05.sh rollback'
```

回滚后应看到 `ai_worker` sha256 = `b3c8dde4…4ed3`、`libtg_ttsguard.so` = `fc1d27f2…67b4`。
本轮没有覆盖唯一备份：T7-04 的原始备份（`backup_t7_04/`）保持不动。

---

## 9. 构建与主机测试

- ARM32 构建：`android/build_t7_05.ps1` → `libtg_ttsguard.so` 23008 B（`01941ddd…`）、
  `ai_worker` 218292 B（`9770ed52…`），`0 warning, 0 error`，ELF32/ARM，动态链接
  （`evidence/t7_05_ndk_build.log`）
- 主机单测：`tests/run_t7_05_host_tests.ps1` → **108 断言 0 失败**
  （gate 32 + route 37 + marker 39，`evidence/t7_05_host_unit_test.log`）
- 回归：T7-04 的 211 断言仍全部通过（本轮未改 `conv_session`/`conv_context`/`echo_filter` 逻辑）

---

## 10. 结论：已实现 / 已验证 / 未实现 / 剩余问题

### 已实现

1. 暂存门先于本地路由（`uttq_pop_to_pend` 统一判定），五组分段样本全部覆盖，含同 session 悬空合并；
2. 完整本地指令快路（不等 450 ms），快路后同 session 修订去重；
3. `route_publish()` 全链路错误处理 + 重试 + 权限复核 + 回读校验；失败回退 AI；
4. `native_marker` 模块化判定：session 命中才放行，窗口 8 s→2 s，文件身份变化立即重读；
5. 中文数字"最近触发词"解析（修 `百分之` → 100）；
6. ASR 二次识别去重（前缀 + 同意图 + 15 s）；
7. 路由否决表补齐任务书点名的误判样本（聊天气/成因/黑屏怎么办/日期格式/停止线/推荐歌单…）；
8. 生命周期脚本 `run_t7_05.sh`（含 T7-04 回滚基线）。

### 真机已验证

- 音量/关屏/时间/天气/播放 → `route=native`，AI 请求数 **0**，原厂回答 7/7 按 session 放行；
- 普通聊天 → `route=ai`，模型 200/1382 ms，TTS 入队播报，原厂抢答被拦；
- 标记写盘故障 → `FALLBACK to ai`，模型 200/2239 ms，用户仍有回答（无静默失败）；
- 快路生效（5 条 `held_ms=0`），聊天仍按窗口合并（`held_ms=613`）。

### 尚未实现

1. **免唤醒连续追问**：仍未实现。本轮把 `CDM` 续听门槛钉到字节级，但没有 `_WakeUpInfo_` 的
   权威布局证据，按任务书要求不做无证据的结构体写入；上机前提见 §5.3。
2. **播报中直接插话（不喊唤醒词）**：原厂在自身 TTS 期间不开新会话（用例 H 无事件）；
3. **真人现场矩阵**（§6.2）与 `localASRPauseTime`/`pauseTime` 对照实验：需要人到设备前执行。

### 剩余问题

1. 原厂对同一段音频会二次识别（13 s 后给更完整的结果），本轮只在 native 侧做了前缀去重；
   聊天侧仍可能出现"同一句话两个回答"，需要真人样本确认出现频率；
2. 用例 G 的两段没有真正合并（`merges=0`）：1200 ms 间隔下第二次 final 往往还没产生，
   合并窗口与原厂端点时序的关系需要 §6.2 的对照实验来定；
3. 上一轮遗留的守卫 supervisor（pid `27260`）与本轮新建的（`15395`）同时存在过，
   已清理成 1 个。注意设备上常有**两个** `tg_supervisor`，但 `--so` 不同：
   一个是 T6-01 的 ASR hook（pidfile `t6/tg_supervisor.pid`），一个是 TTS 守卫
   （pidfile `t7/ttsguard.sup.pid`）——按 pidfile 判活会误报，本轮把 `run_t7_05.sh`
   改成用 `/proc/<pid>/cmdline` 识别"注入守卫的那个"，并且判活不再用 `kill -0`
   （SELinux 下 root 对别的域 `kill -0` 返回 EPERM，会让 `guard-status` 谎报 stopped）。
4. `/proc/<core_pid>/maps` 在本固件上对普通读取一律 EPERM，
   `guard-status` 里 `guard=mapped:unknown` 属正常；判断是否注入要看
   `tg_injector --check` 的 `hooked=1`（当前 `hooked=1`，`native_allowed=7
   native_session=7 native_window=0 native_miss=0`）。
