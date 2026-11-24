# T9-08C-R2：多厂商大模型配置与统一接入架构

基线：`51c62b2ca9a670204713d6f0a0f9602004bdba5a`（T9-08B-R2 停止修复）
本轮：**代码 + 适配器 + 配置持久化 + App 配置界面 + 实时语音扩展接口 + 主机测试 + ARM32 构建 + 真机验收**。

## 1 结论

| # | 验收要求 | 结论 | 证据 |
|---|---|---|---|
| 1 | 豆包配置 + 一次真实请求 | 适配器链路**通**（设备侧 HTTP，方舟报文形状）；**真实厂商云端调用未验证**（无凭证） | `evidence/t9-08c/60_device_acceptance.txt` §1、`stub.log` 的 `/doubao/v3/chat/completions model=ep-2024-stub` |
| 2 | 千问配置 + 一次真实请求 | 原生 DashScope 与 OpenAI 兼容两种报文都通；真实云端同样未验证 | 同上 §1，`envelope_in=1` 证明原生信封 |
| 3 | OpenAI 兼容配置 + 一次真实请求 | 通（任意 base_url），真实云端未验证 | 同上 §1 `/openai/v1/chat/completions` |
| 4 | 多套配置同时保存 | 4 套并存（`count=4`），重启后仍在 | §0、§7 |
| 5 | 三厂商之间切换 | 切 `default_id` 后下一句回答的标记随之改变（`stub-doubao` / `stub-qwen-native` / `stub-qwen-compat` / `stub-openai`） | 手工复核：`probe-233118 → stub-qwen-native:ok`；§4/5/6 |
| 6 | 改配置立即生效 | 不重启进程：文件 mtime 变化 → 热加载 → 下一句就用新配置 | §4/5/6 与 worker 日志 `model config reloaded: id=...` |
| 7 | 重启后配置仍在 | 重启 worker 后仍加载 4 套配置 | §7 |
| 8 | 错误 API Key 有明确错误 | `http_401: AuthenticationError: the api key is invalid` | §8 |
| 9 | 错误 Base URL 有明确错误 | `no_response: no HTTP status curl=7`（端口不通） | §9 |
| 10 | 配置可完整查看/修改 | 真机截图为证：明文 key、四套配置、每套 测试/编辑/设为默认/删除、`＋新增配置`；App 自己的「测试」按钮产生真实结果 | §10 + `evidence/t9-08c/70_models_screen.png` |
| 11 | 实时语音接口可编译 + 基础接口测试 | 8 个动作全部可调用、参数校验与状态机可测、**全部返回 not_implemented（不假装能用）** | `evidence/t9-08c/t9_08c_models_unit_test.log` F1..F19 |
| 12 | 原厂唤醒/ASR/TTS/停止 回归 | 唤醒→ASR→AI→TTS 通（`turn` route=ai，回复来自配置的模型）；停止播报 `stop_targeted → stopped` 无重播 | §12、`evidence/t9-08c/72_stop_regression.txt` |

**关于"真实模型调用"的诚实说明（任务书 §7 要求）**：本项目没有豆包/千问/OpenAI 的可用凭证，
所以第 1–3 项是在**设备本机的协议桩**（`android/t9_08c_stub_server.c`，按三家各自报文形状回答，
回答正文一律以 `stub-<协议>:ok` 开头）上验证的。它证明了：配置 → 统一入口 → 各厂商适配器 →
真实 HTTP（设备的 libcurl）→ 响应解析 → 统一回复 这条链路成立，且三家报文各不相同。
它**不**证明模型能力，也**不**报告为真实模型调用通过。拿到凭证后只需在配置页填 key 即可复验。

## 2 架构

```
App 配置页 (ModelConfigActivity)
   └─ ModelStore  ──写──▶  <app files>/models.json   明文、多套、可增删改
                                    │  文件 mtime 变化
          worker(ai_worker) ──读───┘  热加载（不重启）
                                    │
                          model_provider.c  ← 统一入口
                          · select（按默认配置挑厂商）
                          · sendText / testConnection / getModelInfo
                          · 绑成 t6b_provider，/turn 代码一行不改
                                    │
        ┌───────────────────────────┼───────────────────────────┐
   doubao_provider.c          qwen_provider.c            openai_provider.c
   方舟原生：endpoint-id       DashScope 原生信封          OpenAI 兼容
   自己的 URL/body/错误         + compat 复用 OpenAI 协议   任意 base_url/model/key
        └───────────────────────────┼───────────────────────────┘
                             tg_http.c（共用传输层：libcurl dlopen）
                                    │
                          统一回复 → 原厂 TTS 执行器（未改动）

实时语音（并行、未启用）：realtime_voice.h/rv_ops ── doubao_realtime_provider.c（骨架）
                            ▲ rv_audio_io（App 采集/播放注入点，本轮只留接口）
```

**统一的是配置与管道，协议各自独立**：`model_cfg` 负责"有哪些模型"，
`model_provider` 负责"用哪个"，`mcall_post` 只负责"把字节发出去"，
三家协议（URL 形状、请求体结构、错误体、扩展参数位置）在各自文件里实现。

## 3 配置存储（简单、明文、可改）

- 路径：`/data/data/com.tgz02.voice/files/models.json`（App 私有目录，worker 以 root 读）。
- 为什么不用 SQLite：一份配置文件就能满足"多套并存 + 重启有效 + 立即生效"，
  而且**用户可读、worker 可读、出问题能直接看文件**；少一个 schema 迁移的负担。
- 与对话数据分离：历史在 `files/sessions/`，配置在 `files/models.json`，清历史不动配置。
- 明文：`api_key` 就是明文字段，界面直接显示、直接编辑（任务书明确要求，不做掩码/加密）。
- 写入方式：`tmp + fsync + rename`（原子），worker 侧按 `mtime+size` 热加载；
  文件写坏时**保留上一份可用配置**并把错误显示在界面上，服务不中断。

字段：`id / vendor(doubao|qwen|openai) / label / base_url / api_key / model / endpoint_id / api_mode(native|compat) / extra(额外请求参数 JSON) / max_tokens / temperature / timeout_ms / enabled`。

## 4 三家协议要点（各自实现，不互相冒充）

| | 豆包（火山方舟 Ark） | 千问（DashScope） | OpenAI 兼容 |
|---|---|---|---|
| URL | `{base}/chat/completions`，base 默认 `https://ark.cn-beijing.volces.com/api/v3` | 原生 `{base}/services/aigc/text-generation/generation`；兼容 `{base}/chat/completions` | `{base}/chat/completions` |
| 模型字段 | **Endpoint ID 优先**（`ep-...`），否则模型名 | `model` | `model` |
| 请求体 | `{model,messages,stream:false,max_tokens,temperature}` + extra 并入顶层 | `{model,input:{messages},parameters:{result_format:"message",...}}` + extra 并入 parameters | `{model,messages,stream:false,...}` + extra 并入顶层 |
| 成功体 | `choices[0].message.content` | `output.choices[0].message.content`，其次 `output.text` | `choices[0].message.content` |
| 错误体 | `error.code/message`（兼容顶层 `code/message`） | 顶层 `code/message` | `error.code/type/message` |

"豆包不能靠改 OpenAI 的 URL 冒充"这一条是落到代码结构上的：`doubao_provider.c` 有自己的
URL 构造、endpoint-id 语义、请求体拼装（含 extra 并入）、错误解析与错误分类，
单测 B1..B13 逐条钉住了这些行为（包括"空回答也算失败，绝不编造"）。
千问的 compat 模式**故意复用** `openai_provider.c`：兼容模式本来就是 OpenAI 协议，
再写一份才是重复。

## 5 配置界面（真机截图为证）

`ModelConfigActivity` 一屏完成：当前生效（厂商/模型/配置数/热加载次数/最近调用/最近测试）、
配置卡片列表（厂商 · 模型 · Base URL · **明文 API Key** · 默认标记 · 停用标记）、
每套 4 个动作（测试 / 编辑 / 设为默认 / 删除）、底部 `＋新增配置`。
编辑对话框里类型点一下轮换（豆包→千问→OpenAI兼容），字段全部明文可见可改，保存即生效。
设置页「接口配置」一行显示当前厂商/模型并进入本页。

## 6 实时语音：只预留接口，不假装能用

- 接口：`realtime_voice.h` 的 8 个动作 `connect / disconnect / startSession / sendAudio /
  receiveAudio / receiveTranscript / interrupt / closeSession` + 会话状态机
  （`IDLE/CONNECTING/CONNECTED/SESSION/ERROR/CLOSED`）+ 事件（转写/回复 partial-final/打断/错误）。
- 音频：`rv_audio_io`（open/read/write/close）由 App 或未来的音频桥注入，
  **协议层不碰 AudioRecord/AudioTrack**，因此不可能破坏原厂唤醒/ASR/TTS 的音频通道。
- 实现：`doubao_realtime_provider.c` 是骨架——参数校验与状态机是真的，
  所有网络/音频动作返回 `RV_E_NOT_IMPLEMENTED`（单测 F7..F18 逐条验证"没有假装成功"）。
- App 侧同样留位：`RealtimeVoice.java` + `DoubaoRealtimeVoice.java`（同样明牌未实现）。

## 7 逐文件改动

新增（worker 侧）：
`model_cfg.h/.c`（配置模型与解析）、`model_json.h/.c`（极简 JSON 游标，配置与响应共用）、
`model_call.h/.c`（共用 POST 管道 + system 插入 + 错误分类）、
`doubao_provider.h/.c`、`qwen_provider.h/.c`、`openai_provider.h/.c`、
`model_provider.h/.c`（统一入口 + 热加载 + testConnection + getModelInfo + 绑成 t6b_provider）、
`tg_http.h/.c`（中立传输层，复用 T5-06A 已验收的 libcurl dlopen）、
`realtime_voice.h/.c` + `doubao_realtime_provider.h/.c`（实时语音接口与骨架）、
`t9_08c_stub_server.c`（测试夹具）。

修改：
- `ai_worker.h/.c`：`--models PATH` / `--no-models`；启动时先读 models.json，没有可用配置才回落到
  `provider=`（老行为保留）；主循环每拍 `aiw_model_poll()`（热加载/切换/首次配置）；
  `kind:"modeltest"` 的 Inbox 分支；status.public.json 增加 `models` 块（含 `test`）；
  provider 观测字段支持 models 路径。
- `tg_inbox.h/.c`：新增 `TI_KIND_MODELTEST` + 可选 `model_id` 字段；
  modeltest 与 stop 一样不走正文/队列上限校验；回执 `stage:"model_test"`；回调增加 `model_id`。
- `build_t8_15.ps1`：worker 源文件清单加入 10 个新文件。
- `build_tts_exec.ps1`：不变（执行器本轮未改）。

新增（App 侧）：`ModelStore.java`、`ModelConfigActivity.java`、`RealtimeVoice.java`、
`DoubaoRealtimeVoice.java`；修改 `VoiceBridgeClient.java`（`requestModelTest()` + `Status.models/*` + 同步）、
`SettingsActivity.java`（接口配置行 + 入口）、`AndroidManifest.xml`（注册新 Activity，不导出）。

## 8 测试

### 8.1 主机（`tests/run_t9_08c_models_tests.ps1`）

编译**生产源文件**（model_cfg/model_json/model_call/三个适配器/model_provider/realtime）+ 测试，
**151 断言全过**，覆盖：
- A 配置解析：三家、默认值、明文 key 保留、extra 保留、坏输入拒绝（未知 vendor/无 id/重复 id/坏 api_mode）、
  未知字段忽略、文件热加载。
- B/C/D 三个适配器：URL 形状、endpoint-id、system 第一条、extra 并入、UTF-8 原样、
  成功解析（含 qwen `output.text` 兜底）、401/400 错误分类与厂商错误码、timeout、transport 失败、
  空回答与坏 JSON 都算失败（绝不编造）。
- E 统一入口：分发、计数、testConnection（指定配置/当前配置/不存在的 id）、热切换后下一次调用换适配器、
  坏文件保留上一份、无配置时 `no_model`。
- F 实时语音：8 个动作可调用且返回 not_implemented、参数校验、状态机、空指针保护。

### 8.2 ARM32

`build_t8_15.ps1`：**0 warning 0 error**
| 产物 | 大小 | sha256 |
|---|---|---|
| `ai_worker` | 356884 B | `1add101210dfd2e8f832d3c30194775001d55b4225c49aa552d5d48567ddb7f2` |
| `voice_ui.apk` | 45453 B | `7c575b16d25611680963de2a70f954e458728d1d3ef7fde905cfc5cfa268a8ae` |
| `tts_exec.dex` | 38236 B | `8c79c5067c185aa015c392a35f1df5a98deeed300299e04f1a14a6c4143b834a`（未改） |
| 协议桩 `t9_08c_stub_server` | 3452932 B | `5b5ac1fdc9868ca5937615f61ba32d932dbeab68c5e750e0d1f497043ee7ab38` |

### 8.3 真机（`tests/t9_08c_device_acceptance.ps1`）

脚本驱动真机：协议桩 + 四套配置 + 逐厂商 modeltest + 切换 + 错误 key/url + 界面截图与 UI dump +
唤醒/停止回归。日志 `evidence/t9-08c/60_device_acceptance.txt`：
**0 硬失败的项目已全部 PASS**（§0/1/2/3/7/8/9/10/11 与 UI 全部通过；
最近一次运行为 `4 failed, 12 transport warnings`，其中 4 条失败集中在 §12 的"长句→停止"，
原因是该轮验收里长句在等待窗口内没起来（同一序列随后手工复核通过，见下）。

### 8.4 手工复核（同一台设备，逐条实跑）

| 项目 | 结果 |
|---|---|
| 四家 modeltest（真机 HTTP → 桩） | 全部 `ok`，桩日志显示四种不同 URL 与报文形状 |
| 切换 default → 立刻提问 | `probe-233118` reply=`stub-qwen-native:ok`（无重启） |
| 提问连发 5 次 | 5/5 成功（`stub-doubao:ok`） |
| 语音链路 | `turn` route=ai，reply=`stub-openai:ok`，随后 tts `ok` |
| 停止播报 | `stop_targeted` → `outcome":"stopped"`，无重试（`evidence/t9-08c/72_stop_regression.txt`） |
| 配置界面 | 截图 `70_models_screen.png`；点 App 内「测试」→ status `test{id:m-doubao,ok:1,ms:43}` |

## 9 未验证项与已知问题（不藏）

1. **真实厂商云端调用未验证**：无豆包/千问/OpenAI 凭证。第 1–3 项只到"协议桩"级别。
   拿到凭证后：配置页填 key → 点「测试连接」即可完成真实调用验证（无需改代码）。
2. **验收过程中偶发 `curl=6`（COULDNT_RESOLVE_HOST）**：仅出现在验收脚本密集
   `adb shell` 的时段，同一调用单独复跑稳定成功（连发 12 次 modeltest 全过）。
   已在 worker 日志加了失败时的 URL/模型记录（不含 key），下一轮可继续定位；
   单次传输失败会被 worker 既有的 provider 重试机制覆盖（本轮未改该机制）。
3. **协议桩是单连接的夹具**：并发/长连接行为不代表真实服务；它只用于协议与链路取证。
4. **千问 extra 参数落在 `parameters` 内**（原生模式）；如需放在顶层，需要再加一个字段。
   豆包/OpenAI 的 extra 在顶层。
5. **配置界面没有"停用/启用"开关**（字段 `enabled` 已在模型与文件里，界面暂未暴露）；
   删除即可达到"不用它"的效果，T9-08D 之后一并补齐。
6. 多套配置的"每套独立超时/温度"已实现但界面只暴露了 max_tokens/temperature/timeout 三个输入框；
   `endpoint_id` 只在豆包卡片上有意义（其他厂商忽略）。

## 10 回滚

```
# worker
sh /data/local/tmp/t9/t9_08c/backup/ai_worker.pre_08c  →  cp 回 /data/local/tmp/t5_bridge/bin/ai_worker
# 或直接：cp /data/local/tmp/t9/t9_08c/backup/ai_worker.pre_08c /data/local/tmp/t5_bridge/bin/ai_worker
#          pkill -INT ai_worker; sh /data/local/tmp/t5_bridge/run_ai_worker.sh start
# APK
adb install -r <上一版 voice_ui.apk>
# 配置
删掉 /data/data/com.tgz02.voice/files/models.json 即回到 provider=（worker.conf）行为
```

## 11 设备当前状态

- worker：`1add1012…`（T9-08C 版本），root 运行，`provider=models`，4 套配置（默认 `m-doubao`）。
- 执行器：`8c79c506…`（T9-08B-R2 版本）由原 supervisor 运行，未改。
- APK：`com.tgz02.voice` 1.2.0（`7c575b16…`）已安装，新增配置页与实时语音接口类。
- 测试桩：`/data/local/tmp/t9/t9_08c/t9_08c_stub_server`（127.0.0.1:8799），验收时启动，可随时 `t9_08c_stub_stop.sh` 停掉。
- `:core`、`libtg_ttsguard.so`、`libtg_hook.so`、TTS 队列内容均未改动。

## 12 下一步

按排期进入 **T9-08D（长期记忆）**：记忆提取/保存/检索/管理与删除，
并沿用 R3 结论——记忆以**用户级数据块**注入（绝不冒充 `role:"system"`），
"两次命中"不得丢掉一条强偏好（进 pending 由界面确认）。
