# T9-27 统一语音意图理解与动态技能调度（架构设计 / 迁移方案 / 风险清单 / 测试方案）

- 基线：`main` @ `bad21d0e`（T9-26，全部从 `/system` 运行）
- 设备：TG-Z02 `AILABS_S1L`，Android 8.1 / API 27，armeabi-v7a，1 GB RAM，1024×600
- 本文性质：**设计方案，不改生产代码**。所有"现状"结论都带文件与行号；所有"实测"结论都带原始证据文件。
- 交付物清单见 §9.2。

---

## 0. 结论先行

1. **问题不是"关键词表不够长"，是"能力没有描述、归属没有单一真源"。**
   现状 11 个意图、34 张表、559 条关键词（§1.2），每加一项能力要改 8 个文件 12 处（§1.2.2），
   而且判定分散在**三个互不知情的位置**（hook / worker 路由 / 技能派发）+ App 侧前缀匹配（§1.1）。
   继续加词只会让"改一处忘另一处"的概率线性上升 —— T9-26 的"下一曲"就踩过一次。

2. **设备上现役的模型端点确实支持 OpenAI 形状的工具调用**，实测 9 例全部符合预期结构
   （`finish_reason=tool_calls` + `arguments` 是合法 JSON），延迟 1.1–2.9 s（§3.1）。
   所以"AI 自动调用本地技能"不需要关键词，也不需要模型输出可执行命令：**模型只输出"选哪个技能 + 参数"，
   执行权始终在 worker 的固定回调表里。**

3. **真正必须先修的是归属（ownership）**：`route bit` 这一位字段被同时当成"要不要放行给原厂"和
   "这个能力归谁"两种语义，由 hook 与 worker 各自独立推导。配置组合不当会出现**双执行**
   （§1.3 F1）；技能关掉时会出现**静默**（§1.3 F2）。这两条今天就在代码里，只是当前
   `worker.conf` 的组合恰好绕开了它们。

4. 建议的落地顺序：**P0 注册表骨架（零行为变化）→ P1 归属单一真源（修 F1/F2/F3）→
   P2 本地语义（不再扩关键词表）→ P3 云端工具调用 → P4 App 侧技能与多意图**。
   每一阶段都有独立开关、独立回滚键、独立验证门（§6）。

---

## 1. 现状审查（基于最新 main 的代码）

### 1.1 一条语音从 ASR 到"谁执行"要过四道判定

| # | 层 | 代码位置 | 输入 | 输出 | 备注 |
|---|---|---|---|---|---|
| A | **hook（在 `smartapp:core` 进程内）** | `hook_agent/libtg_hook.c:795 nlu_note_final()` → `nlu_takeover.c:164 t8_to_on_final()` | ASR final 文本 + `g_nlu_mask` | `T8_TO_PASS` / `T8_TO_TAKE` | 判定 = `hit && (route_mask & ir_route_bit(intent))`（`nlu_takeover.c:194-195`）；PASS 才让原厂 NLU 进 CDM，TAKE 则在 `onNlpResult` 丢掉（`nlu_takeover.c:248 t8_to_should_drop`） |
| B | **worker 路由** | `ai_worker.c:2741 uttq_pop_to_pend()` | 暂存门放出的完整 utterance | skill / native / ai 三条出口 | 先 `ir_classify`（2761）→ 再 `skill_claim_id`（2762 → 2714）→ 命中技能则 `w->pend_skill_id`；否则写原厂放行标记（`route_publish`，2546）或建 pend 交给模型 |
| C | **技能派发** | `skill_dispatch.c:112 t8_skill_from_intent()` → `ai_worker.c:2087 skill_run()` | `ir_intent` + `ir.arg` | `t8_skill_req` → 回调 | 意图到技能的映射是**硬编码 switch**；参数只来自 `intent_route` 的结构化结果 |
| D | **App 侧** | `t9_07_ui/.../VoiceHomeActivity.java:615 onTurn()`，`636-641` 前缀匹配 | 用户文本 | 记忆写入（DataService.memAdd） | 第四个关键词判定点，只在 App 进程内，"记住/帮我记住/记一下" |

补充事实：

- `intent_route.c` **同一份源码被编进两个二进制**：`build.ps1:49`（worker）与 `build_t6.ps1:61`（`libtg_hook.so`）。
  两个进程各自用**各自编译进去的那份**判定，没有任何运行时一致性校验。
- hook 侧的路由掩码只来自环境变量 `TG_NLU_ROUTE_MASK`，上限写死 `0x1FF`
  （`libtg_hook.c:739-743`，默认值 `g_nlu_mask = 0x1FF` 在 `612`）；worker 侧只校验
  `route_intents & ~T7B_ROUTE_ALL`（`ai_worker.c:3879`）。两侧都不校验"对方是否一致"。
- 技能注册发生在启动时的一小段 if/else 里（`ai_worker.c:4119-4167`），开关是**每技能一个配置项**
  （`ai_worker.h:105-116`），读取在 `worker_conf.c:263` 起的一长串 `strcmp(key, ...)`。

### 1.2 量化：这套结构现在的规模与增改成本

#### 1.2.1 规模

| 项目 | 数值 | 依据 |
|---|---|---|
| 意图枚举 | 11（`IR_VOLUME`…`IR_MUSIC`） | `intent_route.h:34-59` |
| 路由位 | 9 个已分配（`0x01`…`0x100`），2 个意图**故意不分配**（`IR_DEVICE_STATUS`、`IR_MUSIC`） | `intent_route.h:75-88`、`intent_route.c:843-859` |
| 关键词/否决表 | **34 张表、559 条词** | 统计 `intent_route.c` 的 `static const char *const X[]` |
| 单文件规模 | `intent_route.c` 895 行 / 36 KB | — |
| 技能 id | 13（`T8_SK_NONE`…`T8_SK_MUSIC`），`T8_SK_MAX=14` 同时是数组上界 | `skill_dispatch.h:26-43`、`71-77` |
| 已注册技能 | 3（`time.query`、`device.status`、`music`） | `ai_worker.c:4124-4167` |

表分布（前 8）：`IR_MUSIC_CTRL` 34、`IR_MEDIA_HIT` 34、`IR_DEV_VETO` 34、`IR_TIME_VETO` 33、
`IR_WEATHER_VETO` 31、`IR_SCREEN_VETO` 23、`IR_WEATHER_HIT` 23、`IR_VOL_UP` 21。
**否决表的体量和命中表一样大** —— 每加一个说法，往往要同时加"什么情况下不算这个意图"，
这是关键词方案边际成本递增的直接证据。

#### 1.2.2 加一个"自有技能"要动的地方（以 T9-25 音乐为例，逐条可查）

| # | 文件 | 改动 |
|---|---|---|
| 1 | `intent_route.h:34-59` | 新增枚举值 |
| 2 | `intent_route.c` | 命中表 + 否决表（`IR_MUSIC_PLAY/VETO/CTRL`）、`ir_match_music()`（567）、插进优先级链（`ir_classify_norm` 805-817）、`ir_route_bit`（843）、`ir_intent_name`/`from_name` |
| 3 | `skill_dispatch.h:26-43` | 新增 `t8_skill_id`，`T8_SK_MAX` +1（**数组上界**） |
| 4 | `skill_dispatch.c` | `t8_skill_name`（70）、`t8_skill_from_intent`（112）、exec 实现 |
| 5 | `ai_worker.h:105-116` | 新增配置字段 |
| 6 | `worker_conf.c:263…` | 新增键解析 + dump |
| 7 | `ai_worker.c:2714 skill_claim_id` | 新增一段 if/else（`IR_DEVICE_STATUS`/`IR_ALARM`/`IR_MUSIC` 三个特例已经长成这样） |
| 8 | `ai_worker.c:4119-4167` | 新增注册块 + 启动日志 |
| 9 | `ai_worker.c` | 技能实现 + 命令通道（`t9_music_am` 1988） |
| 10 | `intent_route.h:75-88` | 若需要新 route 位：改 `T7B_ROUTE_ALL` |
| 11 | `hook_agent/libtg_hook.c:739-743` | 同上，环境上限 `0x1FF` 要同步 |
| 12 | `worker_status.c:181` | 状态 JSON（可选但强烈建议） |

**12 处里有 3 处（第 2、3、10/11 项）会同时改变 hook 与 worker 的判定语义** ——
因为 `intent_route.c` / `skill_dispatch.h` 被编进两个二进制、又分别部署（§1.1）。
只重编一个、或只换一个（Magisk overlay 要重启才换，见 T9-26），两边语义就漂移；
而漂移**不报错**：只会静默走错分支（放行给原厂 / 被吞掉）。

### 1.3 三个已经存在的结构性问题（不是假设，是代码路径）

#### F1 —— 目前存在"双执行"的配置组合

`skill_claim_id()` 只看技能开关（`ai_worker.c:2725-2727`），hook 只看 route 位（`nlu_takeover.c:195`）。
两者对同一句话可以给出**相反**结论：

- 编译默认 `skill_alarm_enabled = 1`（`ai_worker.c:3686`）、`route_intents = T7B_ROUTE_ALL = 0x1FF`（`3681`），
  其中包含 `T7B_ROUTE_ALARM = 0x100`；
- 若再把 `skill_dispatch_enabled = 1`（`3683` 默认 0）打开：worker 会 claim 闹钟技能并自己执行，
  **同时** hook 因 `0x100 ∈ mask` 判 PASS，原厂 NLU 进 CDM，原厂也会执行并播报；
- 结果：一句话，两套执行、两句回答（甚至两个闹钟）。

当前设备没暴露这个问题，只因为 `worker.conf` 里写了 `skill_alarm_enabled=0`（实测读出，见 §9.2 证据 E5）。
也就是说：**代码是"靠配置巧合正确"的**。

#### F2 —— "关掉技能"≠"交回原厂"，而是静默

`IR_MUSIC` **没有 route 位**（`intent_route.c:855` 返回 0），因此 hook 侧恒有
`enabled = 0`（`nlu_takeover.c:195`），走 `209-210` 的 `T8_TO_WHY_AI_INTENT_OFF` 分支 → **TAKE，丢掉原厂 NLU**。

而 worker 侧 `skill_music_enabled = 0` 时只是把意图改回 `IR_MEDIA`（`ai_worker.c:2765-2768`）并写放行标记，
但**原厂 NLU 结果已经被丢了，原厂不会产出那句回答**。用户听到的是：说了"播放晴天"，机器没声音。

代码注释写的是"行为与加音乐之前一字不差"，这句只在 worker 侧成立，在 hook 侧不成立。

#### F3 —— 两个二进制的意图语义会漂移

`intent_route.c` 编两份（§1.1），`skill_dispatch.h` 的 `T8_SK_MAX` 变化会改变数组形状，
而 `libtg_hook.so` 与 `ai_worker` 是**分别部署**的（Magisk overlay 要重启才换，T9-26 整轮都在踩这个坑）。
目前没有任何机制在启动时核对"hook 认识的意图集合 == worker 认识的意图集合"。

### 1.4 能力缺口：模型看不到本机能力

| 事实 | 位置 |
|---|---|
| Provider 只发 `messages`，请求体里从来没有 `tools` / `functions` | `deepseek_provider.c:583 t6b_ds_build_body_msgs()`、`provider.h:56 complete_msgs` |
| 响应只取 `choices[0].message.content` | `deepseek_provider.h:184 t6b_ds_parse_content()` |
| 现有"AI 选技能"的做法 = 让模型说人话，再由关键词表判断这句话像不像命令 | §1.1 B/C |

这就是"功能一多就要无限扩关键词表"的根：**模型没有可选的技能集合，也就没有可约束的输出形态**。

---

## 2. 目标架构

### 2.1 分层与判定顺序

```
                      ┌──────────────────────────────────────────────┐
 ASR final 文本  ───► │ ① 归一化（复用 ef_normalize / ef_strip_fillers）│
                      └───────────────────┬──────────────────────────┘
                                          ▼
                      ┌──────────────────────────────────────────────┐
                      │ ② 归属闸门（ownership gate）                  │
                      │   L0 命中 → 查 registry 的 owner              │
                      │       factory → 写放行标记，原厂执行（现状不变）│
                      │       local   → 交给本地技能执行               │
                      │       ai      → 交给 L3                       │
                      └───────────────────┬──────────────────────────┘
                        L0 没命中         │
                                          ▼
        ┌──────────────┬─────────────────┴───────────────┬──────────────────┐
        ▼              ▼                                 ▼                  ▼
   L1 本地语义      L2 云端工具调用                    L3 普通对话         （无 L4）
   ≤3 ms           1.1–2.9 s（实测）                  现状 provider 路径
   只能在 local    只能在 local & enabled 的技能       不得触碰 factory 能力
   技能里选        里选，单轮决策
```

**硬规则（本方案的核心约束）**：

> **L1 与 L2 永远只能选中 `owner = local` 且已启用的技能。**
> 原厂归属的能力（天气、闹钟、音量、开关屏、媒体）只能由 L0 的显式意图表命中并放行，
> 绝不出现在给模型的候选工具里。

理由不是保守，而是实测：把"天气"从工具表里去掉之后，模型会直接答"我目前还不能查询天气"（§3.1 用例 d）。
也就是说——**只要模型看得到某个能力，它就会自己答，从而绕过原厂**。所以"不给它看"比"告诉它别用"可靠。

### 2.2 归属（ownership）成为单一真源

三种归属，取代现在"route bit 兼当归属声明"的做法：

| owner | hook 行为 | worker 行为 | 谁回答 |
|---|---|---|---|
| `factory` | PASS（原厂 NLU 进 CDM） | 写放行标记，不执行技能 | 原厂（原厂音色、原厂语义） |
| `local` | TAKE（丢掉原厂 NLU） | 执行技能，`tts_enqueue` 播报 | 我们 |
| `ai` | TAKE | 走 L2/L3 | 模型（L2 则是"技能执行 + 模板回话"） |

归属由**一张表**计算出来，表来自 registry（§2.3）+ 配置开关，输出两个产物：

1. worker 内部：`sk_claim()` 用它决定要不要接管；
2. 给 hook 的只读快照 `skill_ownership.public.json`（0644，原子写，seq 单调）：

```json
{"v":1,"seq":412,"wall_ms":1795876075000,"mask":511,
 "owner":{"volume":"factory","weather":"factory","screen_off":"factory","screen_on":"factory",
          "time":"factory","media":"factory","stop":"factory","exit":"factory",
          "alarm":"factory","music":"local","device_status":"local"}}
```

hook 侧读法（**必须容错**）：

- 缓存 `(mtime, size, seq)`，最多 1 s 读一次，只在 ASR final 时读；
- 文件缺失/语法错/未知意图 → **整表回落**到现有 `g_nlu_mask` 逻辑，行为与 T9-26 完全一致；
- 表里没有的意图 → 回落 mask；
- 读到 `owner=intent` 与 `mask` 自相矛盾时，**以 owner 为准**并计数（这条矛盾本身就是 F1 的告警）。

这样 F1、F2 一处修掉：`alarm` 打开技能时 owner 变 `local`、mask 相应清掉 `0x100`（hook TAKE，
只有 worker 执行）；`music` 关掉技能时 owner 变 `factory`，hook PASS，**原厂自己回答**。

> bit 语义保留下来只做两件事：兼容旧部署（hook 未升级时仍按 mask 工作）与 `worker.conf` 兼容。
> 新代码不再从 bit 推导归属。

### 2.3 Skill Registry 数据模型

设计原则沿用现有代码风格：**固定缓冲区、无 malloc、可 host 单测、纯函数优先**。

```c
/* 新增 skill_registry.h —— 只描述"能力是什么、归谁、怎么执行"，不含任何匹配逻辑 */
typedef enum { SKP_STR = 0, SKP_ENUM, SKP_INT, SKP_TIME_OF_DAY } sk_param_type;

typedef struct {
    const char *name;        /* "query" / "direction" / "at" …            */
    sk_param_type type;
    int  required;
    int  min, max;           /* SKP_INT 用；其它忽略                     */
    const char *enum_list[6];    /* SKP_ENUM 用，NULL 结尾；JSON 里叫 "enum" */
    int  max_len;            /* SKP_STR 用（字节，UTF-8 安全截断）        */
} sk_param;

typedef int (*sk_exec_fn)(const sk_call *call, sk_result *res, void *ctx);

typedef struct {
    const char *id;          /* "music.play"：稳定标识，同时是工具名/日志键 */
    const char *title;       /* "播放音乐"（UI、播报）                      */
    const char *desc;        /* 一句话能力描述 → L2 tools[].description     */
    sk_owner    owner;       /* factory | local | ai                        */
    int         intent;      /* 对应的 ir_intent（factory/ai 必填）         */
    int         route_bit;   /* owner=factory 必填；owner=local 必须为 0    */
    const sk_param *params;  /* 参数表，NULL 结尾                           */
    sk_exec_fn  exec;        /* owner=local 必填                            */
    const char *enable_key;  /* 对应 worker.conf 的开关名（NULL=恒开）      */
    const char *examples[4]; /* L1 打分用（正例）                           */
    const char *negatives[4];/* L1 打分用（负例，取代 veto 表的一半用途）    */
    const char *reply_ok;    /* 成功模板，可含一个 %s                       */
    int         cost_ms;     /* 预估耗时：决定是否值得让模型等               */
} sk_desc;
```

**能由清单改的**：`title/desc/params/examples/negatives/reply_ok/enable_key/owner`。
**必须写代码的**：`exec` —— 一个真正的新能力需要一个新回调（这是硬边界，不打算假装可以纯配置）。

清单文件 `skills.json`（默认路径 `<state_dir>/skills.json`，缺失则用编译内置表）：

```json
{"v":1,"skills":[
  {"id":"music.play","intent":"music","owner":"local","exec":"music",
   "title":"播放音乐","desc":"播放指定歌曲或歌手；没有指出歌名时播放「我喜欢」歌单",
   "enable":"skill_music_enabled",
   "params":[{"name":"query","type":"str","required":false,"max_len":64}],
   "examples":["播放周杰伦的晴天","来点动静","放首歌听听","我想听点轻的"],
   "negatives":["音乐是怎么压缩的","推荐点好听的歌"],
   "reply_ok":"好，播放%s"},
  {"id":"music.ctrl","intent":"music","owner":"local","exec":"music",
   "title":"播放控制","desc":"暂停、继续、上一首、下一首",
   "enable":"skill_music_enabled",
   "params":[{"name":"action","type":"enum","required":true,
              "enum":["pause","resume","next","prev","stop"]}],
   "examples":["暂停","继续播放","下一曲","换首歌","别放了"],
   "reply_ok":"%s"}
]}
```

**解析失败一律不致命**：退回编译内置表 + 状态文件里记一行错误（沿用本项目"失败要显式"的一贯做法，
见 `skill_dispatch.h:47 T8_SK_E_NOIMPL` 的注释）。理由：这个文件在 `/data/local/tmp`，是 root 可写的运行时数据，
不能让一个手抖的编辑把语音整体搞哑。

### 2.4 运行时数据流（P0–P2 完成后的形态）

```
ASR final ──► utterance_gate（不变）──► uttq_pop_to_pend
                                          │
                                          ├─ ir_classify（L0，不变）
                                          ├─ sk_owner_of(intent)  ◄── registry + 配置
                                          │
              ┌───────────────────────────┼──────────────────────────────┐
        factory│                     local │                        ai    │
              ▼                           ▼                              ▼
   route_publish(marker)         sk_claim → pend_skill_id        pend (L2 或 L3)
   原厂执行/原厂播报              skill_run → exec → tts_enqueue   cv_build_messages
   （ttsguard 放行）              （no-relisten 由技能声明）        provider
```

L2 增加一步（P3）：

```
pend 为 ai 且 skill_toolcall_enabled
   ├─ tools = registry 里 owner=local & enabled 的 desc
   ├─ 单次请求：messages + tools → finish_reason=tool_calls ?
   │     ├─ 是 → 校验参数（validator）→ 执行技能 → 用 reply_ok 模板播报（不再回模型）
   │     └─ 否 → 走现有 L3 路径（一字不改）
   └─ 失败/超时 → 计数 + 一分钟内降级到 L3，不重试（避免"半句话等 3 秒"）
```

### 2.5 与原厂链路的边界

| 分类 | 对象 | 本方案是否触碰 |
|---|---|---|
| 绝对不动 | 原厂 ASR / KWS / VAD / TTS 引擎（`smartapp:core` 内 XEngine）、唤醒流程、`AudioIn` 唤醒锁 | 不触碰 |
| 绝对不动 | `hook_tts/native_marker.c`（放行窗口）、`hook_tts/libtg_ttsguard.c`（TTS 来源守卫） | 不触碰 |
| 绝对不动 | `utterance_gate.c`（半句合并）、`session_ctrl.c`（连续对话）、`echo_filter.c`（回声过滤） | 不触碰 |
| 只读扩展 | `nlu_takeover.c`：新增"按 owner 判定"的入口，旧入口保留 | P1 新增，默认关闭 |
| 只读扩展 | `libtg_hook.c`：新增 ownership 快照读取（1 s 缓存，失败回落 mask） | P1 新增，默认关闭 |
| 新增（worker 内） | `skill_registry.[ch]`、`skill_manifest.c`、`skill_ownership.c`、`skill_match.c`、`skill_toolcall.c` | 纯新增文件 |
| 新增（协议） | `deepseek_provider.c` 的 tools 编码 / tool_calls 解析；`provider.h` 加一个 vtable 成员 | P3 |

---

## 3. L2：结构化工具调用（含真机实测）

### 3.1 实测结论（证据见 §9.2，可复跑 `evidence/t9-27/t9_27_tool_probe.ps1`）

端点：设备 `models.json` 里现役的那条（`base_url=http://192.168.1.13:8790/v1`，`model=deepseek-flash`）。
工具表 4 项：`music.play` / `music.ctrl` / `volume.step` / `device.status`（**故意不含天气**）。

| 用例 | 用户说 | finish | 返回的工具调用 | 耗时 | 结论 |
|---|---|---|---|---|---|
| a | 播放周杰伦的晴天 | `tool_calls` | `music.play({"query":"周杰伦 晴天"})` | 1110 ms | ✅ 参数抽取正确 |
| b | 来点动静 | `tool_calls` | `music.play({"query":"热门流行歌单"})` | 2326 ms | ⚠ **模型自己编了参数** |
| c | 放首周杰伦然后切下一曲 | `tool_calls` | 只回 `music.play({"query":"周杰伦"})` | 1323 ms | ⚠ **第二个动作被丢掉** |
| d | 今天天气怎么样 | `stop` | 无 | 1567 ms | ⚠ 若把天气给它，它会自己答（绕过原厂） |
| e | 帮我订一张明天去上海的机票 | `stop` | 无 | 1833 ms | ✅ 老实拒绝，没有乱调工具 |
| f | 把音乐关了 | `tool_calls` | `music.ctrl({"action":"pause"})` | 1234 ms | ⚠ 只有 pause 时它退而求其次（需要 stop 动作） |
| g | 声音太大了 | `tool_calls` | `volume.step({"direction":"down"})` | 1103 ms | ✅ 隐含方向能推出来 |
| h | 还剩多少电 | `tool_calls` | `device.status({})` | 1094 ms | ✅ 无参技能正常 |
| i | 那个再放一遍 | `stop` | 无 | 2949 ms | ⚠ 无上下文时只能反问（见 §4.2） |

原始响应形态（`resp_a_play.json`）：

```json
{"choices":[{"index":0,"message":{"role":"assistant","content":"",
  "reasoning_content":"The user wants to play Jay Chou's \"晴天\". Call music.play.",
  "tool_calls":[{"id":"call_a5e2…","type":"function",
    "function":{"name":"music.play","arguments":"{\"query\": \"周杰伦 晴天\"}"}}]},
  "finish_reason":"tool_calls"}],
 "usage":{"prompt_tokens":471,"completion_tokens":58,…}}
```

五条必须进设计的观察：

1. **`content` 是空串**，`finish_reason=tool_calls`。现有解析若把"空 content"当失败，就会把一次成功的工具决策判成错误。
2. **`reasoning_content` 存在**。它是模型内部推理（英文），可以含敏感意图，**绝不播报、绝不落日志正文**，只允许计数。
3. **`prompt_tokens=471`（4 个工具）**。工具描述是要花钱和占延迟的；技能一多必须裁剪（§3.5）。
4. **延迟 1.1–2.9 s**（含代理排队；上游 `elapsed_ms` 约 245 ms）。这是"能不用就不用"的硬理由：
   L0/L1 能定的绝不上 L2。
5. **模型会给不存在的参数值**（"热门流行歌单"）。参数一律视为不可信输入，必须走 validator + 业务兜底（§3.4）。

### 3.2 需要改的代码点（精确到函数）

| 目的 | 现状 | 改法 |
|---|---|---|
| 请求带 `tools` | `deepseek_provider.c:583 t6b_ds_build_body_msgs()` 只拼 messages | 新增 `t6b_ds_build_body_tools(model, system, messages_json, tools_json, temperature, max_tokens, …)`；`tools_json == NULL` 时行为与旧函数**逐字节一致**（旧函数改成薄包装，`build.ps1` 里已有调用点不动） |
| 响应取 `tool_calls` | `deepseek_provider.h:184 t6b_ds_parse_content()` 只取 `choices[0].message.content` | 新增 `t6b_ds_parse_toolcall(json, len, name, namecap, args, argcap, finish_reason, rl)`，用现成的 `model_json.h` 游标（`mj_obj_find → mj_arr_first → mj_obj_find "message" → "tool_calls" → …`）；**不引入 DOM** |
| 结果传递 | `t6b_reply`（`provider.h:34-42`）只有文本 | 追加 `int has_tool_call; char tool_name[48]; char tool_args[256]; char finish_reason[16];`；不改变既有字段语义 |
| 统一入口 | `provider.h:56 complete_msgs` | 追加一个可选 vtable 成员 `complete_msgs_tools(p, messages_json, tools_json, out)`；`ops` 里为 NULL 时自动退回 `complete_msgs`（三家适配器里只有支持 tools 的才填） |
| 能力开关 | `models.json` 只有 `max_tokens/temperature` | 每条模型配置加 `"tools": true/false`（默认 false）；`model_cfg.c:151` 那一串键解析里加一项；`mp_send_tools()` 在 `tools==false` 时直接返回"不支持"，L2 不启动 |
| 观测 | `worker_status.c:181` 只有 skill 计数 | 增加 `toolcall:{offered,requested,executed,rejected,invented_slot,layer_counts}` |

**明确不做**：不把工具调用塞进 `complete()` 老接口；不在 provider 里执行任何技能
（`provider.h:12-16` 的"铁律"继续成立：Provider 不许操作 Android、不许执行 shell、不许调用原厂技能）。

### 3.3 一轮还是两轮

| 技能类别 | 例子 | 轮数 | 回话来源 | 理由 |
|---|---|---|---|---|
| 无副作用查询 | `device.status` | 1 | 技能返回的 `message`（如"电量 63%，已运行 1 天 6 小时"） | 结果确定，二轮纯浪费 1–3 s |
| 确定性执行 | `music.ctrl`、`volume.step` | 1 | `reply_ok` 模板（"换下一首"） | 同上；且模板可控语气 |
| 需要业务兜底的执行 | `music.play` | 1 | 模板成功/失败两套（"好，播放X" / "没找到 X，换个说法？"） | 搜不到由技能判定，不问模型 |
| 结果需要自然语言包装 | 未来的"日程摘要"类 | 2 | 第二轮 model 输出 | 只有这类才值得多一次往返 |

默认**单轮**。二轮由 `sk_desc` 的 `cost_ms`/`needs_phrasing` 显式标注开启，不靠猜。

### 3.4 模型输出的不可信清单（来自实测）

| 现象 | 证据 | 对策 |
|---|---|---|
| 编造参数值 | 用例 b："热门流行歌单" | `query` 必须"搜得到才算成功"；搜 0 条 → 不说"正在播放"，改说"没找到 X" |
| 漏动作 | 用例 c：只回 play | 执行后做**残句检测**（§4.1），检出未消费动作就明说，不假装全做了 |
| 动作近似替代 | 用例 f：stop → pause | 技能动作表补齐 `stop`；枚举里没有的动作由 validator 拒绝，不静默降级 |
| 能力越界（若有工具就会用） | 用例 d | 工具表只含 `owner=local`，物理上不给机会 |
| 反问代替执行 | 用例 i | 注入技能上下文（§4.2），并在 L1 认"再/又/还"这类续作词 |

### 3.5 工具表裁剪策略

- 只含 `owner=local && enabled` 的技能；
- 描述限一句话（≤ 40 汉字），参数描述限 8 字；
- 上限 8 个技能（实测 4 个技能 471 tokens，8 个约 800–900；1 GB 设备上 token 也是延迟）；
- 按 `cost_ms` 排序，超限先砍"读类"技能（模型对读类最不敏感，用户也能从屏幕看到）。

---

## 4. 多意图、上下文、槽位、失败

### 4.1 多意图与冲突

现状是"优先级链，命中即返回"（`intent_route.c:805-817`），一句话里两个动作只能活一个。
L2 侧实测也只有单次 `tool_call`（用例 c）。所以多意图必须**本地切分**，不能指望模型：

```
切分：按 然后 / 再 / 顺便 / 接着 / 之后 / ，/ , 切成 ≤3 段（只在段边界切，不切数字与时间）
对每段：L0 判定 → 归属
组合规则（保守，优先不打架）：
  1) 任一段 owner=factory → 整句交原厂，本地一律不执行（原厂会一次答完，避免两声）
  2) 全部 owner=local  → 顺序执行，**合并成一句**回话（"换下一首，音量也小了点"）
  3) 混合 local + ai  → 只执行 local 段，ai 段在回话后追加一句"另外那句我再说一遍"→ 不再单独请求模型
  4) 段数 >3 或切分不可靠（含"和/跟"但无动作词）→ 不切，整句走 L2/L3
残句检测：执行完 L2 后，若原文里仍存在 L0 能命中的动作词且未被消费 → 播报"先说这一件"，
          并把未消费段记入 skill_ctx.last_residual（不静默丢弃）
```

### 4.2 技能上下文（`skill_ctx.json`）

`conv_context` 管"说过什么"，但它不知道"设备现在在干什么"。用例 i（"那个再放一遍"）证明这是必须补的一层：

```json
{"v":1,"seq":88,
 "now_playing":{"track":"晴天","artist":"周杰伦","playing":true,"pos_ms":41000},
 "volume":50,
 "last_skill":"music.play","last_args":{"query":"周杰伦 晴天"},"last_ms":1795876070000,
 "pending_slot":{"skill":"volume.step","param":"direction","session":"t6-1050-1968764","deadline_ms":1795876130000},
 "last_residual":""}
```

- 写入方：技能执行成功后由 worker 更新（本地，不联网）；
- 读取方：① L1 的续作判别（"再/又/还/大点"）；② L2 的系统提示里拼一段 ≤120 字的"设备状态摘要"；
- 隐私边界：只放**技能自己知道的**结构化字段（歌名、音量、动作），不放对话正文；
  上云时与现在发送用户原话同等敏感度，不额外扩大（§7 R10）；
- 落盘 0600，重启后保留（与 `context.json` 同目录、同策略）。

### 4.3 槽位补全状态机

```
L1/L2 判定出技能 S 但 required 参数缺失
        │
        ├─ 已有 pending_slot 且 session 相同 → 用本次文本填该参数（不再追问）
        │
        └─ 没有 → 播报一句针对性追问（模板来自 sk_desc.clarify），
                  写 pending_slot{skill,param,session,deadline=now+8s}
                  超时或换 session → 丢弃并计数（绝不跨会话沿用）
                        │
                        └─ 填上后立即执行；执行成功才清 pending_slot
```

**不猜**：`volume.set` 缺数字时绝不默认 50（这正是 T7-05-R1 修过的坑，`intent_route.c:48-68`
的 `IR_TAIL_DANGLING` + `complete=0` 机制要保持）。

### 4.4 失败与播报

| 技能返回 | 播报 | 是否回落模型 | 备注 |
|---|---|---|---|
| `T8_SK_OK` | `reply_ok` 模板（可带一个槽位） | 否 | — |
| `T8_SK_E_ARG` | 针对性追问（1 次） | 否 | 第二次仍失败 → 说"没听懂这句"并结束 |
| `T8_SK_E_CTX` | "现在做不到"（如播放器没起来） | **否** | 重试 1 次（间隔 300 ms） |
| `T8_SK_E_FAIL` | 固定文案（"这次没成功"） | **否** | 计数 + 记 `last_error` |
| `T8_SK_E_NOIMPL` | "这个我还不会" | 否 | 注册表保证不出现；出现即视为缺陷并计数 |
| 超时（>2000 ms） | 同 `E_CTX` | 否 | 音乐服务这类外部依赖要有超时 |

**铁律：本地技能失败后绝不回落 L3。** 一旦回落，用户会听到两句（"没成功" + 模型另编一段），
这正是 T7-05 起就在防的"双答"（`ai_worker.c:2893-2899` 的 FALLBACK 分支是有意保留给"放行标记写失败"的，
不适用于技能失败）。

---

## 5. 六条"不得"逐条落实

| 约束 | 机制 |
|---|---|
| 不得为加功能继续无限扩关键词表 | L1 用**例句**打分（每技能 ≤4 正例 + ≤4 负例，放清单里），新增说法不改代码；L2 用工具描述。关键词表只在 L0 保留"高频、需要 0 延迟、参数需精确"的少量意图，且不再作为新能力的唯一入口 |
| 不得破坏原厂天气、闹钟等已验证能力 | ① 归属表里 `weather`/`alarm` 默认 `factory`；② 工具表物理上不含 factory 能力（§2.1 硬规则）；③ 迁移每阶段跑原厂回归套件（§8.5），`route_publish` 与 ttsguard 的 ALLOW/DROP 计数必须与基线一致 |
| 不得让 AI 直接执行任意系统命令 | 模型只能输出 `{name, arguments}`，`name` 必须是注册表里的 `id`，`arguments` 过 validator；执行者是固定的 C 回调；现状的两条特权通道（`am start` 白名单 `ai_worker.c:1464-1487`、`music` 动词白名单 `1988-2008`）保持白名单形态，**不新增"把字符串拼进命令行"的路径** |
| 不得重复开发已有语音基础设施 | 不新建 ASR/TTS/播放/唤醒；技能播报继续走 `tts_enqueue`（`ai_worker.c:1195`）与既有 `tts/queue` 协议；不新建第二条事件总线 |
| 不得立即重构生产代码 | 本文件只交付设计；P0 起每一步都是"新增文件 + 开关默认关"，`skill_registry_enabled=0` 时行为与 `bad21d0e` 完全一致（§6 门禁） |
| 必须基于最新 main 并给出文件/函数依据 | 全文行号基于 `bad21d0e`；§9.1 是完整索引 |

---

## 6. 迁移方案（P0–P4）

每个阶段都遵守同一套纪律：**新增开关默认关 → 灰度打开 → 真机验证 → 写报告 → 再进下一阶段**。
任何阶段出问题只需改一个配置键回滚，不需要回刷镜像。

### P0 —— 注册表骨架（零行为变化）

| 项 | 内容 |
|---|---|
| 新增 | `skill_registry.h/.c`（描述表 + 查表 + 校验）、`skill_manifest.c`（`skills.json` 解析，复用 `model_json.h` 游标） |
| 改编 | `ai_worker.c`：启动构建 registry；`skill_claim_id` 增加"查表"路径，旧 if/else 保留；`worker_conf.c` 增 `skill_registry_enabled`（默认 0）、`skills_manifest`；`worker_status.c` 增 registry 快照 |
| 新增测试 | `tests/t9_27_registry_unit_test.c` |
| 门禁 | ① `skill_registry_enabled=0` 时，同一批 20 条真机话术的 `route=*` 日志与基线**逐行一致**；② 40 个既有 host 测试全绿；③ 重启后 `md5sum` 与模块内一致（T9-26 的教训） |
| 回滚 | `skill_registry_enabled=0` |
| 不做 | 不动 hook、不动归属、不动匹配 |

### P1 —— 归属单一真源（修 F1 / F2 / F3）

| 项 | 内容 |
|---|---|
| 新增 | `skill_ownership.c`：`sk_owner_of(intent)`、`sk_build_ownership_json()`、启动一致性校验 |
| 新增（hook 侧） | `libtg_hook.c` 增 `ownership_read_once()`（1 s 缓存、失败回落 mask）；`nlu_takeover.c` 增 `t8_to_on_final_owner()`（旧函数保持原样） |
| 开关 | `skill_ownership_enabled`（worker，默认 0）、`TG_NLU_OWNERSHIP`（hook，默认 0） |
| 门禁（必须全过） | ① **配置矩阵 12 组**（alarm/time/music 开关 × mask 4 种）下，日志断言 `double-exec=0`（同一 event 同时出现 `route=native` 与 `skill claimed` 即失败）；② `skill_music_enabled=0` 时，说"播放晴天"必须听到**原厂**那句"我控制不了音箱里的应用"（而不是静默）；③ 两侧一致性校验的告警应可复现（故意造 mask/owner 矛盾） |
| 回滚 | 关闭两个开关 → 回到"mask 决定一切"的今天 |
| 不做 | 不改 `route_publish` 的落盘协议、不改 ttsguard |

### P2 —— L1 本地语义（停止扩表）

| 项 | 内容 |
|---|---|
| 新增 | `skill_match.c`：字符 bigram Dice 系数 + 槽位正则 + 双阈值（`accept ≥ 0.62` 且 `margin ≥ 0.08`）；只对 `owner=local` 的技能打分 |
| 开关 | `skill_semantic_enabled`（默认 0）、`skill_semantic_accept`、`skill_semantic_margin` |
| 语料 | 从 `events/*.json` 的真实 `user` 字段抽 ≥300 条（去重、去唤醒词），人工标注"应归哪个技能 / 不应接管" |
| 门禁 | ① factory 意图被误接管 **= 0**（这条是一票否决）；② local 意图召回 ≥ 90%；③ 单句打分 <5 ms（host 与真机各测一次）；④ 打不出分时**必须**返回"未命中"而不是硬选最高分 |
| 回滚 | 关闭开关 |
| 不做 | 不引入本地大模型/词向量（1 GB 机型、且 P0–P3 已能覆盖） |

### P3 —— L2 工具调用

| 项 | 内容 |
|---|---|
| 改协议 | §3.2 的 6 个改动点（`t6b_ds_build_body_tools`、`t6b_ds_parse_toolcall`、`t6b_reply` 扩展、vtable 成员、`models.json` 的 `tools` 开关、状态字段） |
| 新增 | `skill_toolcall.c`：工具表生成（裁剪）、单轮决策、validator 调用、失败降级 |
| 开关 | `skill_toolcall_enabled`（默认 0）、`models.json` 的 `"tools":true` |
| 门禁 | ① 复跑 `t9_27_tool_probe.ps1` 9 例，结果与 §3.1 一致；② 用例 b 的编造参数必须被拦住（搜不到 → "没找到"）；③ 关闭开关后 L3 请求体与基线**逐字节一致**（无 `tools` 字段）；④ 端到端"说一句话 → 开始播放"≤ 2.5 s |
| 回滚 | 关闭开关（模型不再收到 `tools`） |
| 不做 | 不做多轮 tool_call 循环、不做模型自行决定"要不要再调一次" |

### P4 —— App 侧技能与多意图

| 项 | 内容 |
|---|---|
| App | `VoiceHomeActivity.java:636-641` 的前缀匹配迁到 inbox `action`（kind=`action`，动词白名单 `{memory.add, player.open, alarm.open, market.open}`），App 不再判语义 |
| worker | 多意图切分 + 残句检测（§4.1）、`skill_ctx` 上下文注入 |
| 门禁 | ① "记住我不吃香菜"仍能写入记忆中心；② "换下一首再把音量调小"要么两个都执行、要么明确说一个；③ 全量回归 |
| 回滚 | `inbox action` 白名单保留旧 kind，App 侧一个布尔开关切回前缀匹配 |

### 各能力的接入顺序与理由

| 能力 | 现状归属 | 目标归属 | 接入阶段 | 理由 |
|---|---|---|---|---|
| 音乐 play/ctrl | local（B 层已实现） | local（迁到清单 + 补 `stop` + 上下文） | P0→P1→P2→P3 | 唯一已跑通闭环的自有能力，用它当"第一个吃螃蟹"的验证对象 |
| 设备状态 | local | local | P0 | 无副作用、无外部依赖，做 L2 的最小可用样例 |
| 时间 | factory（`skill_time_enabled=0`） | factory（保留，P1 后由归属表强制） | P1 | 原厂播报已验证，抢过来只会更差 |
| 闹钟 | factory（`skill_alarm_enabled=0`） | factory 默认；自有闹钟作为"可选 owner" | P1/P3 | 原厂链路（`AlarmManager` + 云端同步）已验证；自有实现只在离线需求明确时才切 |
| 天气 | factory | factory（**永不进工具表**） | 不迁移 | 云端技能 + 原厂播报完整可用；实测证明给它工具它就会绕开原厂 |
| 音量/开关屏 | factory | factory | 不迁移 | 见 §7 R8"已经验证的能力不重做" |
| 亮度、蓝牙等未验证能力 | 无 | 未定 | 需先做能力测绘 | 代码里没有任何实测依据，不写进设计 |

---

## 7. 风险清单

| # | 风险 | 触发条件 | 影响 | 缓解 | 残留 |
|---|---|---|---|---|---|
| R1 | 同一句话被原厂与本地各执行一次 | `skill_dispatch=1` + 自定义技能开 + 对应 route 位仍在 mask 内（F1） | 双回答 / 双闹钟 | P1 归属单一真源；启动一致性校验；日志断言 `double-exec=0` | 归属表本身算错时仍会发生 → 用 12 组配置矩阵回归兜住 |
| R2 | 关掉技能后静默 | `skill_music_enabled=0` 等（F2） | 用户说话没反应 | P1：owner 回 `factory` → hook PASS | hook 未升级时会停留旧行为 → 部署时校验 `TG_NLU_OWNERSHIP` 生效日志 |
| R3 | 两二进制语义漂移 | 只改了 worker 或只改了 hook（F3） | 放行/接管不一致 | 归属表由 worker 单侧产出；hook 只消费；启动打版本+计数 | 快照文件被删/权限错 → 回落 mask（旧行为），需状态页可见 |
| R4 | 模型编造参数 | 用户说法模糊（实测 b） | 播放错误内容 / 空结果 | validator + "搜到才算成功" + 明确失败文案 | 搜到但不相干（同名歌）→ 只能靠 UI 让用户看到并纠正 |
| R5 | 模型漏动作 | 一句话两个动作（实测 c） | 半个请求被静默吞掉 | §4.1 残句检测 + 明确播报 | 切分规则覆盖不到的说法仍可能漏 → 计数上报，靠语料迭代 |
| R6 | 模型抢答原厂能力 | 把 factory 技能放进工具表 | 天气/闹钟体验退化 | 硬规则：工具表只含 local（§2.1） | 无（物理上不给） |
| R7 | 延迟 | L2 路径 1.1–2.9 s | 用户以为没听懂、重复说 | L0/L1 优先；L2 只在不确定时；≤2.5 s 门禁 | 代理排队（本机 4090 被占用）会拉长 → 状态页暴露 `models.last_ms` |
| R8 | 已经验证的能力被"顺手重做" | 有人把音量/开关屏收进自有技能 | 原厂调音量、原厂 TTS 音量联动行为变化 | 归属表把 `owner` 写成 hard-coded factory，清单**不允许**改 owner 从 factory→local（只能由代码改） | 需要产品决策时改代码 + 报告，不能靠配置 |
| R9 | `reasoning_content` 泄露 | 解析时把整个 `message` 当文本 | 内部推理被播报/入日志 | 只取 `content` 与 `tool_calls`；`reasoning_content` 只计数 | 无 |
| R10 | 上下文摘要上云 | 注入"设备状态摘要" | 歌名/使用习惯外泄 | 摘要只含技能已知的结构化字段；与现有"发用户原话"同等级；文档明示 | 用户若在意，可关 `skill_ctx_inject` |
| R11 | 内存/CPU | bigram 表 + JSON 解析 | 1 GB 机型抖动 | 表按需构建、上限 8 技能 × 4 例句；解析栈上缓冲，无 malloc | 需实测 RSS（P2 门禁加一条） |
| R12 | 清单被改坏 | 手编 `skills.json` 语法错 | 语音整体失灵 | 解析失败 → 退回编译内置 + 状态页红字 | 静默退回会掩盖问题 → 必须有可见告警 |
| R13 | 无 AEC 导致自听 | 音乐播放中开麦 | 把歌声当命令 | 沿用 T9-25 的 hold/duck 策略；L2 等待期间不额外开麦 | 唤醒词误触发仍可能（原厂行为） |
| R14 | overlay 未生效 | 改了模块没重启 | "以为修好了其实没换" | 部署脚本核对 `md5sum`（`/system` vs 模块）；启动日志打版本 | 无 |
| R15 | 工具表 token 膨胀 | 技能增多 | 成本与延迟上升 | 上限 8 + 描述限长 + 读类优先裁剪 | 需在状态页看到 `prompt_tokens` 趋势 |

---

## 8. 测试方案

### 8.1 host 单测（新增，沿用现有 `tests/*.c` 风格）

| 文件 | 覆盖 |
|---|---|
| `t9_27_registry_unit_test.c` | 注册/重复注册/越界 id/未注册执行返回 `NOIMPL`/容量上限/`t8_skill_name` 稳定性 |
| `t9_27_manifest_unit_test.c` | 缺字段、非法 owner、未知 exec、超长字符串、UTF-8 截断、非法 JSON → 均退回内置表且**不崩** |
| `t9_27_ownership_unit_test.c` | 12 组配置矩阵下 `owner` 与 `mask` 的推导；矛盾输入以 owner 为准并计数 |
| `t9_27_match_unit_test.c` | bigram 打分边界（空串/单字/超长/全标点）、双阈值、`owner=factory` 技能永不被选中 |
| `t9_27_toolcall_unit_test.c` | `tools` 编码（与 curl 实测请求体逐字节对比）、`tool_calls` 解析（用 §9.2 的 9 个响应做 fixture）、`content=""` 不算失败、非法 `arguments` 被拒 |
| `t9_27_failmap_unit_test.c` | 6 个返回码 → 文案 + "不回落模型"断言 |

既有测试必须全绿，特别是：`t7_04_route_unit_test.c`、`t7_05r1_incomplete_unit_test.c`、
`t8_02_nlu_takeover_unit_test.c`、`t8_14_1_skill_registry_unit_test.c`、`t9_15_alarm_route_unit_test.c`。

### 8.2 联调（不发真模型）

`t9_08c_stub_server.c` 已能扮演 doubao/qwen/openai 三种形状。P3 增加"tools 回放"模式：
按 §9.2 的 `resp_*.json` 原样回放，用于验证解析与决策，不受网络与模型随机性影响。

### 8.3 真机自测入口（不开麦）

沿用 `--self-test-music` 的形态，扩成 `--self-test-skill "<话术>"`：

```
$ /system/tgz02/bin/ai_worker --self-test-skill "播放周杰伦的晴天"
owner=local intent=music rule=music.play arg=play complete=1
layer=L0 skill=music.play query=周杰伦 晴天
code=0 speech=好，播放周杰伦的晴天
→ App: cmd=play arg=周杰伦的晴天
```

要求：自测走**与正式运行同一条代码路径**（这是 T9-26 修过的坑：自测曾经不写 hold，
导致"禁止续听"这个功能自测永远验不出来）。

### 8.4 语料与准入门槛

| 指标 | 门槛 | 方法 |
|---|---|---|
| factory 意图误接管率 | **0**（一票否决） | ≥300 条真实语料里，凡 `owner=factory` 的话术不得被 local/ai 抢 |
| local 意图命中率 | ≥ 95%（L0+L1+L2 合计） | 人工标注 100 条 local 话术 |
| 静默率 | 0 | 每次命中必须"有播报"或"原厂回答"二者之一（日志断言） |
| 双执行率 | 0 | 同一 event 不得同时出现 native 与 skill |
| 响应 | L0 ≤ 300 ms 到首字；L1 +5 ms；L2 ≤ 2.5 s | 日志时间戳 |
| RSS 增量 | ≤ 512 KB | `dumpsys meminfo` 前后对比 |

### 8.5 原厂回归套件（每阶段都跑）

30 句话术、四类必测：音量（大/小/静音/具体数值）、天气（今天/明天/带伞）、
闹钟（定/取消/叫我起床）、时间与开关屏。判据：

- `route=native` 计数与基线一致；
- ttsguard 的 `ALLOW/DROP` 计数比例与基线一致（`T9_17_FACTORY_ALARM_ANALYSIS.md` 里有基线样本）；
- 用户可听结果一致（现场听 + 截图）。

### 8.6 验收标准（每一阶段独立签收）

1. 门禁全过 + 证据落盘（日志、截图、`resp_*.json`）；
2. 回滚演练做一次（改一个键 → 行为回到上一阶段）；
3. 报告追加一节（含"没做到的部分"）；
4. 提交信息写明阶段号与开关默认值。

---

## 9. 附录

### 9.1 文件与函数索引（基线 `bad21d0e`）

| 主题 | 位置 |
|---|---|
| 意图枚举 / 路由位 | `android/intent_route.h:34-59`、`75-88` |
| 归一化 | `intent_route.c:747 ir_normalize()`（复用 `ef_normalize`/`ef_strip_fillers`） |
| 分类优先级链 | `intent_route.c:790 ir_classify_norm()`，链在 `805-817` |
| 参数完整性（`complete`） | `intent_route.c:48-68 IR_TAIL_DANGLING`、`823-826` |
| 音量/天气/闹钟/设备/时间/屏幕/音乐/媒体/打断/退出 匹配器 | `intent_route.c:244 / 334 / 368 / 418 / 450 / 496+512 / 567 / 665 / 690 / 730` |
| 点歌搜索词抽取 | `intent_route.c:594 ir_music_query()` |
| 意图→路由位 | `intent_route.c:843 ir_route_bit()` |
| 技能 id / 注册表结构 | `android/skill_dispatch.h:26-43`、`71-77` |
| 技能名字 / 意图→技能 / 执行 | `skill_dispatch.c:70 / 112 / 44` |
| 技能接管判定 | `ai_worker.c:2714 skill_claim_id()` |
| 路由主流程 | `ai_worker.c:2741 uttq_pop_to_pend()`（音乐回退 2765-2768，native 2783-2901） |
| 原厂放行标记 | `ai_worker.c:2546 route_publish()` |
| 技能执行与播报 | `ai_worker.c:2087 skill_run()`、`1195 tts_enqueue()` |
| 音乐技能与命令通道 | `ai_worker.c:2021 t9_skill_music_exec()`、`1988 t9_music_am()` |
| 技能注册 | `ai_worker.c:4119-4167` |
| 配置默认值 | `ai_worker.c:3681-3688`；掩码校验 `3879` |
| 配置键解析 | `worker_conf.c:263` 起 |
| 状态输出 | `worker_status.c:181`（skill 段） |
| hook 侧判定 | `hook_agent/libtg_hook.c:612`（`g_nlu_mask` 默认）、`739-743`（env 解析+上限）、`795-815`（`nlu_note_final`） |
| 接管状态机 | `nlu_takeover.c:164-246`（关键 194-195 / 200-207 / 209-210）、`248` |
| Provider 请求体（无 tools） | `deepseek_provider.c:583 t6b_ds_build_body_msgs()` |
| Provider 响应解析 | `deepseek_provider.h:184 t6b_ds_parse_content()` |
| Provider 抽象 / vtable | `provider.h:34-57`（`t6b_reply`、`complete_msgs`） |
| JSON 游标 | `model_json.h:58-62 mj_path_string()` |
| App 侧关键词 | `t9_07_ui/.../VoiceHomeActivity.java:615`、`636-641` |

### 9.2 本次取证清单（全部可复跑）

| 编号 | 内容 | 路径 |
|---|---|---|
| E1 | 工具调用探测脚本（9 例，读设备 `models.json` 取端点） | `evidence/t9-27/t9_27_tool_probe.ps1` |
| E2 | 工具表定义（4 个技能，中文描述） | `evidence/t9-27/tools.json` |
| E3 | 用例定义（含"为什么这么问"） | `evidence/t9-27/cases.json` |
| E4 | 9 例原始请求/响应 + 汇总 | `evidence/t9-27/req_*.json`、`resp_*.json`、`SUMMARY.txt` |
| E5 | 设备现役 `worker.conf` 有效键（`skill_time_enabled=0`、`skill_alarm_enabled=0`、`skill_dispatch_enabled=1`、`models_required=1`） | 运行时读取，见 §1.3 F1 说明 |
| E6 | 关键词/表规模统计方法（`static const char *const X[]` 逐表计数） | 本文 §1.2 |

复跑方式：

```powershell
cd system\my-doc\07_ai_bridge\evidence\t9-27
powershell -ExecutionPolicy Bypass -File .\t9_27_tool_probe.ps1
# 可选：-Base http://192.168.1.13:8790/v1 -Key <key> -Model deepseek-flash
```

脚本只发探测请求，不执行技能、不改设备状态。响应里出现 `reasoning_content` 属正常
（该端点是推理型模型的代理），**不得**把它当回答播报。

### 9.3 明确不做的事（避免被误读成"后续会做"）

- 不重写原厂 ASR/KWS/TTS，也不接管音频通路；
- 不做"本地大模型/词向量"（1 GB 机型、且 L0–L2 已能覆盖目标能力）；
- 不做 WebView 套壳；
- 不把 registry 塞进 hook（`:core` 内不进 I/O、不做动态分配的约束不变，hook 只读一张小快照）；
- 不做"让模型输出可执行命令/JSON 命令串"的路径；
- 不给音量/开关屏/天气/闹钟新增自有实现（已经验证过的能力不重做）；
- 不在本文之外改任何生产代码 —— 本文只是方案。

---

## 10. 需要决策的点（已给出默认选择，不阻塞 P0）

| # | 问题 | 我的默认选择 | 备选 |
|---|---|---|---|
| D1 | 闹钟最终归谁 | **factory**（保留原厂）；自有闹钟只在离线需求明确时切 | 切 local（需要把 T9-16 的 `alarm.set` 打开并清 `0x100`） |
| D2 | L2 是否默认开 | **默认关**，P3 验证后按需打开 | 默认开（延迟与成本风险由用户承担） |
| D3 | 技能上下文是否上云 | **上**（只含结构化设备状态，≤120 字） | 不上（"那个再放一遍"这类必须反问） |
| D4 | `skills.json` 放哪 | `<state_dir>/skills.json`（root 0600，热加载） | 与 APK 一起打包（改配置要重装） |
| D5 | 多意图混 factory 时的策略 | **整句交原厂**（避免两声） | 先执行 local 再原厂（会出两个声音，不建议） |
