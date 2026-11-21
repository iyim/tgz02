# T7-02-R1 / T7-03 语音交互体验修复报告（角色提示词 / 连续对话 / ASR 提前结束）

- 分支：`main`
- 前置：T7-01（多轮上下文）`b65117ed`、T7-02（原厂回答屏蔽 + 回声隔离）`f5f2eeb9`
- 设备：TG-Z02（CCH `AILABS_S1L`，Android 8.1 / SDK 27，armeabi-v7a，`192.168.1.9:5555`）
- 本轮不改：boot.img / system / vendor / 原厂 APK / PCM Hook / Injector / Supervisor 二进制

---

## 0. 一句话结论

| 问题 | 状态 | 依据 |
|---|---|---|
| 一、大模型反复声明"我不是天猫精灵" | **已修复并验收** | 5 次真实请求均带 `messages[0]=system`（603 B），回答自然；主机测试 159/0 |
| 二、每轮都要重新唤醒 | **未达成（原厂能力受限，已定位到入口）** | 原厂 `startTalk` 入口可调用但不建立会话；原厂唤醒走的是私有栈上 `_WakeUpInfo_` 路径 |
| 三、ASR 提前结束、半句话提交 | **根因已定位并加了可配置下限；端到端仍需一次稳定的真人复测** | 实测 `setVADPauseTime: 700 ms -> 900 ms (config floor)`，`setSilenceTimeout: 5000 ms` |
| T7-02 遗留（守卫 5 s 空窗） | **已解决** | 守卫/对话库改由 T6-02 Supervisor 注入：进程起来 1.6 s 内 `hooked=1` |

---

## 1. 问题一：AI 助手角色与统一系统提示词

### 1.1 改前的真实情况（不是"凭回答猜"）

改前 `deepseek_provider.h` 里只有一条固定宏：

```c
#define T6B_DS_SYSTEM_PROMPT \
    "你是一个运行在手机上的中文语音助手。回答要简短、直接、口语化，通常不超过两句话。"
```

问题点有二：

1. **角色错位**：说的是"运行在**手机**上"，模型不知道自己在音箱里，被问到身份时只能自己猜，
   于是出现"我不是天猫精灵"这类自我声明；
2. **"通常不超过两句话"** 与多轮对话/解释类回答冲突。

传递路径本身是对的：`deepseek_provider.c` 在拼请求体时插入 `{"role":"system"}`（改前
`t6b_ds_build_body_msgs` 的 `esc_sys`），所以 system 一直是第一条，但从**没有可配置性**，
也没有"system 不占上下文名额"的保证（改前 system 由 Provider 临时插入，Worker 侧看不到）。

### 1.2 改法（三处，全部配置化）

1. **`deepseek_provider.h`**：`T6B_DS_SYSTEM_PROMPT_DEFAULT` 换成任务书 §2.2 的角色定义
   （音箱 AI、不主动声明/不反复否认、只在被问时回答身份、适合播报、不虚报设备能力）；
   新增 `t6b_ds_cfg.system_prompt[T6B_DS_SYS_PROMPT_MAX=1536]`。
2. **`conv_context.c/.h`**：`cv_build_messages(ctx, system_prompt, current_user, ...)`
   把 system 显式放在数组首位；system **不进 `ctx->msgs`**，因此天然不参与
   `cv_evict()` 的按轮次淘汰；system 放不下时**报错**而不是静默丢弃。
3. **`ai_worker.c` / `worker_conf.c`**：新增 `--system-prompt` / `--system-prompt-file` /
   配置键 `system_prompt=` / `system_prompt_file=`；`messages[0]` 由 Worker 负责，
   Provider 侧只在"数组里还没有 system"时才补一条（`t6b_ds_build_body_msgs`，
   覆盖 mock / 真实 Provider / 以后接 GPT、通义、自定义兼容接口）。

### 1.3 证据一：每轮请求结构（真机、本地 DeepSeek 代理）

`evidence/t7_03_request_shape.log`:

```
[aiw] 23:04:00 system prompt: 603 bytes, placed at messages[0] (role=system, outside context eviction)
[aiw] 23:04:22 request shape: event=t703-syn-2 system=1(role=system,bytes=603) history_msgs=6 user_msgs=1 req_msgs=7
[aiw] 23:04:30 request shape: event=t703-syn-3 system=1(role=system,bytes=603) history_msgs=6 user_msgs=1 req_msgs=7
[aiw] 23:04:38 request shape: event=t703-syn-4 system=1(role=system,bytes=603) history_msgs=6 user_msgs=1 req_msgs=7
[aiw] 23:04:47 request shape: event=t703-syn-5 system=1(role=system,bytes=603) history_msgs=6 user_msgs=1 req_msgs=7
[aiw] 23:04:55 request shape: event=t703-syn-6 system=1(role=system,bytes=603) history_msgs=6 user_msgs=1 req_msgs=7
```

说明：`system=1` 每轮都在、`history_msgs=6` 是 3 轮完整对话（T7-01 的 6 条），
`req_msgs=7 = 1 system + 6 history + 1 user`。上下文淘汰只动 6 条历史，system 不参与。

### 1.4 证据二：真实回答（`evidence/t7_03_replies.jsonl`，本地代理 `deepseek-flash`，http=200）

| 提问 | 回答 |
|---|---|
| 你是谁 | 我是你音箱里的 AI 语音助手，可以陪你聊天、回答问题、讲点小知识。想聊什么，跟我说就行。 |
| 我该怎么称呼你 | 你想怎么叫都行，叫"小助手"最顺口。要是想给我起个专属名字，也可以告诉我，我记着。 |
| 你是不是天猫精灵 | 不是，我是你这台音箱里的 AI 语音助手，不是天猫精灵。 |
| 你能做什么 | 我能陪你聊天、回答各种问题、解释不懂的概念……设备控制方面我目前不能随便承诺…… |
| 讲个笑话吧 | 有一天，0 对 8 说：胖就胖呗，还系什么腰带呀。 |

- 前两轮**没有任何**"我不是天猫精灵"式的主动声明；
- 第三轮是用户**直接点名问**身份，回答直接、不回避（符合"除非用户主动询问身份"）；
- 回答长度、口语化程度适合播报（最长 261 B，最短 65 B）。

### 1.5 主机测试

`tests/run_t7_host_tests.ps1` → `SUMMARY: pass=159 fail=0`（新增 §13b 用例：system 在首位、
只有一条、永远在 user 之前、空 system 时不插、小缓冲区报错而不是丢 system、
`context.json` 里不落 system）。

---

## 2. 问题三（先讲清，因为它同时卡住问题二）：ASR 提前结束

### 2.1 实测到的判停参数

新增 `libtg_dialog.so` 对 `AGSpeechEngine::setVADPauseTime(int,bool)` 与
`setSilenceTimeout(int)` 装只读 hook，进程启动时抓到（`evidence/t7_03_hook_trace.logcat`）：

```
23:09:10 setSilenceTimeout: 5000 ms (unchanged)
23:09:10 setVADPauseTime: 700 ms -> 900 ms (config floor)
```

- **静音超时 5000 ms**：不是问题根源；
- **VAD 判停 700 ms**：这是"说完一句就 end"的参数，对"停顿 0.5 s 接着说"来说太短；
- 另外 app 首选项里还有一组本地参数（`/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml`）：

```xml
<int name="devicesettingInfo::localASRPauseTime" value="150" />
<int name="devicesettingInfo::pauseTime" value="700" />
<int name="devicesettingInfo::ASRStopPolicy" value="2" />
<int name="devicesettingInfo::localASRStopPolicy" value="3" />
```

`localASRPauseTime=150 ms` 对应"本地 ASR 一有 150 ms 静音就判停"，
与现场现象（唤醒词后稍一停顿，会话就拿着半句话结束）完全一致。

### 2.2 已实现的修法（配置化、只动真正参数）

`libtg_dialog.so` 安装时读 `/data/local/tmp/t6/dialog.cfg`：

```
input_type=7
min_vad_pause_ms=900     # >0 时把 setVADPauseTime 的下限抬到 900 ms（0 = 只观测）
min_silence_ms=900
debug=0
```

hook 只在该参数**低于下限**时改这一个寄存器，其余一律原样放行；计数器
`vad_clamp` / `sil_clamp` 可在 `--check` 的 `stats` 里核对（实测 `vad_clamp=1`，
即配置里确实有低于 900 ms 的值被抬上来）。

> 注意：这是"改原厂参数"，不是"Worker 侧延迟掩盖问题"。如果以后云端把
> `pauseTime` 调大，clamp 自动失效（不再改动）。

### 2.3 还没做完的部分（必须说清楚）

端到端"真人停顿不切句"的复测**没有拿到干净证据**：本轮多次重启 `:core` 之后，
设备上的唤醒引擎变得不稳定——同样的 `wake.wav` 播放在 23:09:28 能触发
`onStartTalk#1: A=7 B=0 info=... wake_type=0`，随后 23:10 的同序列却完全不触发，
`events.jsonl` 也不再新增记录。因此：

- 判停参数（700 ms）与修复手段（下限 900 ms）是**实测确认**的；
- "停顿 0.5 s / 1 s 不再切句"的最终验收**还需要一次设备冷启动后的真人复测**。

---

## 3. 问题二：连续对话（免唤醒续听）——原厂能力调查结论

### 3.1 原厂确实有"连续对话"的东西（反汇编 + 真机符号）

`libsmartbox.so`（未 strip，dynsym 完整）里存在：

| 符号 | 偏移 | 说明 |
|---|---|---|
| `AliAiLabs::AGUI::GenieApi::startTalk(InputDeviceType, const _WakeUpInfo_*)` | `0xfcff8` | Java 层可调用的"开始说话"桥接 |
| `AliAiLabs::AGUI::SessionManager::onStartTalk(typeA, typeB, _WakeUpInfo_*, _WakeUpEventRet_*)` | `0x111364` | 唤醒后建立会话（session id 来源） |
| `AliAiLabs::AGUI::InputDeviceManager::wakeupPromptFinish()` | `0x10809c` | 唤醒提示音播完 → 开始收音 |
| `AliAiLabs::AGUI::ContinuousDialogManager::{onNotify, startFullDuplexDialog, onSpeakCommand, resetWakupInfo}` | `0x156900/0x1565e8/0x1566f0/0x156500` | 全双工/连续对话管理器 |
| `AGSpeechEngineProxy::startTalk(_WakeUpInfo_*)` | `0xe90a8` | 真正启动识别（返回 0 = 成功，0xffffffff = 失败） |

真机实测唤醒路径（`evidence/t7_03_hook_trace.logcat`）：

```
onStartTalk#1: this=af474dcc A=7(0x7) B=0(0x0) info=91e82660 wake_type=0 lr_off=001078e0
```

即：**输入设备类型 = 7**、`wake_type = 0`、`_WakeUpInfo_` 是调用方**栈上**的临时对象
（`info` 与栈帧只差几 KB）、调用点 `lr_off=0x1078e0` 在 `InputDeviceManager` 内。

### 3.2 三种"主动续听"都试过，结果一致（真机）

| 尝试 | 调用 | 结果 |
|---|---|---|
| 合成 `_WakeUpInfo_` + `GenieApi::startTalk(7, info)` | 依次试 type 0..8 | `InputDeviceManager::startTalk` 被调用（`imStartTalk#N`），但 recognizer 返回 0，`isTalk=0`，没有 `onListenStarted`，没有 `onStream` |
| 真实快照重放（唤醒后抓 `_WakeUpInfo_` 副本再传） | 同上 | 同样 `-> 0 (isTalk=0)` |
| `ContinuousDialogManager` | `cdminfo` 读状态：`flags70=0 wake=ffffffff ts=0`；`cdmnotify 0x44e` / `cdmstart` | 管理器对象存在（`cdm=0xa7d34610`）但**从未被填充**：本机原厂回答走我们屏蔽掉的 `onTtsStart`，云端 `Speak` 里的连续对话信息没有落到 CDM |

另外一次 `startTalk(7, NULL)` 直接让 `:core` SIGSEGV（`fault addr 0x00000007`），
证明 recognizer 会解引用 `_WakeUpInfo_`，不能用"空结构"糊过去。

### 3.3 结论与可行方案

- **结论**：在这台机器的固件上，`GenieApi::startTalk` 这条"公开入口"**不能**在没有唤醒词的
  情况下建立 ASR 会话；原厂续听走的是私有接口 + 栈上 `_WakeUpInfo_`，我们无法安全伪造。
  因此"AI 回答播完，用户直接说下一句"这一条**本轮没有做到**，不做"测试脚本每轮重放唤醒词"
  式的冒充。
- **可行方案（按优先级）**：
  1. **在唤醒事件源头做虚拟唤醒**：hook `WakeupEngineWrapper::onWakeupEvent`
     （`0xe139c`，796 B）或 `AGSpeechEngine::onSpeechWakeup`（`0xd3398`），
     把一次真实唤醒的事件结构整体复制并重放（结构里含窗口/时间戳，需要按真实内存布局深拷贝）；
  2. **把 CDM 填起来**：在云端 `Speak` 到达时抓一份 `onSpeakCommand` 的入参（session id、
     `wakeupType`、时间戳），再调 `onNotify(0x44e)`，让原厂自己走 `startFullDuplexDialog`；
  3. 以上两条都需要"每轮真实语音"的稳定复测环境，本轮设备唤醒引擎在多次 `:core` 重启后
     变得不稳定（见 §2.3），属于环境问题，不是设计问题。

`libtg_dialog.so` 已经把命令通道做好了（`run_dialog.sh talk / talk-saved / probe / promptfin /
cdmnotify / cdmstart / cdminfo`），方案 1/2 落地时不用再改注入/守护这一层。

---

## 4. T7-02 遗留：守卫不再有 5 s 空窗

T7-02 用独立 watch 每 5 s `ensure`，`:core` 重启后最多 5 s 里原厂回答可能抢播一次。
本轮**不改 Supervisor 代码**，只用它已有的 `--so` 参数再起两个实例：

```
tg_supervisor --injector tg_injector --so /data/local/tmp/t7/libtg_ttsguard.so --name ...:core
tg_supervisor --injector tg_injector --so /data/local/tmp/t7/libtg_dialog.so  --name ...:core
```

实测（`dialog.sup.log`）：进程出现 → 注入 → `hooked=1`，`elapsed=1573ms`；
`run_ttsguard.sh watch` 仍可保留作为兜底，但已不是唯一手段（`run_aux_supervisors.sh start|stop|status`）。

---

## 5. 本轮改动的文件

新增：

- `android/hook_dialog/libtg_dialog.c`（约 800 行）：4 个只读 hook + 控制命令通道
  （`starttalk / starttalk_saved / starttalk_clean / probe / promptfin / cdmnotify / cdmstart /
  cdminfo / snap / istalk / stoptalk / vad / silence / debug`）；
- `android/hook_dialog/Makefile`
- `android/run_dialog.sh`（install / status / uninstall / restart / cmd / talk / talk-saved /
  vad / silence / snap / watch start|stop|status）
- `android/run_aux_supervisors.sh`（把守卫与对话库纳入 Supervisor 注入流程）
- `evidence/t7_03_request_shape.log`、`evidence/t7_03_replies.jsonl`、
  `evidence/t7_03_hook_trace.logcat`、`evidence/t7_03_vad_clamp.log`

修改：

- `android/deepseek_provider.h`（角色提示词默认值 + 可配置字段 + 上限）
- `android/deepseek_provider.c`（用配置里的 system prompt；数组已有 system 时不重复插）
- `android/conv_context.c/.h`（system 永远第一条、不参与淘汰、放不下就报错）
- `android/ai_worker.c`（CLI `--system-prompt` / `--system-prompt-file`；启动与每轮请求结构日志）
- `android/worker_conf.c`（`system_prompt=` / `system_prompt_file=`，支持 `\n` 转义）
- `tests/t7_conv_context_unit_test.c`（新增 13b 用例 + 修断言）

---

## 6. 复现方式

```sh
# 主机（零网络）
powershell -ExecutionPolicy Bypass -File my-doc/07_ai_bridge/tests/run_t7_host_tests.ps1

# 设备
sh /data/local/tmp/t7/run_aux_supervisors.sh start     # 守卫 + 对话库跟随 :core 注入
sh /data/local/tmp/t7/run_dialog.sh status             # hooked=1 / stats 里看 vad_clamp
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek --reply-log /data/local/tmp/t5_bridge/ai_worker/replies.jsonl
```

---

## 7. 遗留问题（明确列出）

1. **连续对话未达成**：原厂 `startTalk` 不建立会话（§3.2），需按 §3.3 的方案 1/2 继续；
2. **端到端停顿验收缺一次干净复测**：设备唤醒引擎在多次 `:core` 重启后不稳定（§2.3）；
3. `setVADPauseTime` / `onStartTalk` 等 hook 点会出现"同 tid、同毫秒的第二次进入"
   （参数是 `(全局对象, &obj+0x34, &obj+0x48, 栈地址)`），已用"输入设备类型范围 +
   `wakeupType ∈ [0,0x11]`"两条校验过滤，快照不会被冲掉；现象已记录，原因未彻底定论；
4. `libtg_hook.so`（ASR→Bridge）与 `libtg_ttsguard.so`（原厂回答屏蔽）本轮未改，
   两者与 `libtg_dialog.so` 各挂不同函数，可共存（真机同进程三者同时 `hooked=1`）。
