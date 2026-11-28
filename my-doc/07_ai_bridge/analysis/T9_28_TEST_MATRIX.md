# T9-28 测试矩阵（可执行用例 + 注入手段 + 验收清单）

对应审查意见 §五（验收要求）与各文档里的门禁。原则：**每条断言都能被机器判定**，
不能判定的（如"用户听感"）必须降级为人工签字项并写明由谁签。

测试分层：

| 层 | 环境 | 判定 | 频率 |
|---|---|---|---|
| H | host 单测（现有 `tests/*.c` 风格） | 返回码/结构体字段/日志行 | 每次提交 |
| S | stub provider（`t9_08c_stub_server.c`，回放 `evidence/t9-27/resp_*.json`） | 请求体/决策/播报文本 | 每次提交 |
| D | 真机自测（`--self-test-skill`，不开麦） | 退出码 + 结构化输出 | 每次部署 |
| R | 真机语音（真人说） | 日志断言 + 录屏 | 每阶段 |
| L | 现场长跑（24 h） | 计数器 | 发布前 |

---

## 1. 注册表与清单（REG-*）

| ID | 前置 | 步骤 | 期望 | 层 |
|---|---|---|---|---|
| REG-01 | 空清单 | 启动 | 用编译内置表；`registry.source=builtin`；不报错 | H |
| REG-02 | 清单含未知 `exec` | 启动 | 该技能被拒载；`manifest_reject[unknown_exec]=1`；其余技能正常 | H |
| REG-03 | 清单把 `alarm` 的 owner 写成 `local` | 启动 | 拒载 + `[owner_conflict]=1`；alarm 仍走 factory | H |
| REG-04 | 清单给 `weather` 加 `enable` | 启动 | 拒载 + `[factory_toggle]=1` | H |
| REG-05 | 清单把 `music.ctrl.action` 的枚举去掉 `stop` | 启动 | 拒载 + `[param_loosen]=1`（只能收紧） | H |
| REG-06 | 清单 4 KB+ | 启动 | 拒载该条 + 计数；健康技能不受影响 | H |
| REG-07 | 清单 UTF-8 被截断在多字节中间 | 启动 | 拒载 + 不崩溃；日志包含 `utf8` | H |
| REG-08 | 重复注册同一 id | 启动 | 后注册的失败并计数；先注册的生效 | H |
| REG-09 | `T8_SK_MAX` 越界（构造 id） | 调用 | `E_ARG`，不越界写 | H |
| REG-10 | App `skills.public.json` 存在且过期 10 min | 启动 | 打日志 `snapshot stale` 并用 conf | H+D |
| REG-11 | 快照把 music 关掉 | 启动 | 归属表 music 变 factory；hook 放行 | D |

## 2. Ownership（OWN-*，与 OWNERSHIP §6 的 24 场景一一对应）

注入手段（host 侧统一抽象）：`fake_fs`（可注入 open/stat/read/write/rename 失败）、`fake_clock`
（单调钟与墙钟可分别调）、`fake_ack`。

| ID | 场景 | 注入 | 期望 | 层 |
|---|---|---|---|---|
| OWN-01 | 两侧正常 | — | 本地技能执行；`own_state=active` | H+S |
| OWN-02 | 表不存在 | 删文件 | hook `PASS_ALL`；worker 不执行 local；`own_missing++` | H+D |
| OWN-03 | 表截断 | 写半截 JSON | hook 用上一张表至 `exp`；之后 PASS_ALL | H |
| OWN-04 | 表语法错 | 写 `{"v":1,` | 同 OWN-03；`own_parse_err++` | H |
| OWN-05 | `not_before` 在未来 | 时钟提前 | hook `PENDING`（无表则 PASS_ALL）；worker 用旧 gen | H |
| OWN-06 | 租约过期（worker 卡死） | 停心跳 | hook PASS_ALL；worker `C2` 失败 | H+D |
| OWN-07 | 休眠 10 min | 真机息屏 | 单调钟不前进；恢复后一致，无抖动 | D |
| OWN-08 | worker 重启 | `kill` | 新 gen；1.5 s 内不出本地技能 | D |
| OWN-09 | worker 崩溃循环 | 反复 kill | 始终 DEGRADED；状态页红字；无双执行 | D |
| OWN-10 | `:core` 重启 | `kill` smartapp:core | ack 中断 ≤10 s；之后恢复 | D |
| OWN-11 | hook 重启 + 表过期 | 组合 | 全原厂 | D |
| OWN-12 | 设备重启 | `reboot` | 开机数秒全原厂；随后恢复 | D |
| OWN-13 | 写表失败 | `fake_fs.write=EIO` | **不切换**；旧行为延续；`own_write_fail++` | H |
| OWN-14 | 回读校验失败 | `fake_fs.readback=mismatch` | 不切换；重写 3 次；3 次失败 → DEGRADED + 红字 | H |
| OWN-15 | ack 从未出现 | 删 ack 且禁写 | 本地技能永不执行（I1）；`own_ack_missing++` | H+D |
| OWN-16 | ack 过期 | 冻结 ack 时间 | `C3` 失败 → 不执行 | H |
| OWN-17 | ack.gen 不符 | 改 ack.gen | `C3` 失败 → 不执行 | H |
| OWN-18 | ack.build 不符 | 改 ack.build | `C4` 失败 → 不执行 | H |
| OWN-19 | `rules_hash` 不符 | 改表 hash | `C4` 失败 + 每分钟告警（F3 检测） | H+D |
| OWN-20 | 墙钟跳变 | 墙钟 +1 h | 无影响（用单调钟） | H |
| OWN-21 | 切换瞬间来语音 | 在 `not_before` 前 10 ms 注入 | 按旧语义执行一次；日志 `own_gen_at_decision` 可见 | H |
| OWN-22 | 表里 `owner=local` 但 mask 仍有该位 | 构造 | **不双执行**（生效期以 owner 为准）；`mask_owner_inconsistent=1` 可见 | H+D |
| OWN-23 | 表里 `owner=factory` 但该意图没有 route 位（如 music） | 构造 | hook 按 owner PASS；原厂回答；不静默 | H+D |
| OWN-24 | 归位回滚 | 关 `skill_ownership_enabled` | 回到 T9-26 行为（mask 决定一切） | D |

**一票否决**：任意配置组合下，同一 `event_id` 同时出现 `route=native` 与 `skill claimed` 的次数必须为 **0**。

## 3. L1 语义（L1-*）

| ID | 输入 | 期望 | 层 |
|---|---|---|---|
| L1-01 | 42 句验证集（`t9_28_l1_experiment.py` 的 CASES） | M3 ≥ 38/42；factory 误接管 = 0 | H |
| L1-02 | 审查意见 4 条音量变体 | 全部判为 factory.volume（或至少不判为 local） | H |
| L1-03 | `播放《然后》这首歌` | 不切分；query=`然后` | H |
| L1-04 | `电池是什么原理` | **不得**判为 `device.status`（T9-27 未覆盖的误判） | H |
| L1-05 | 空串/单字/纯标点 | 弃权，不崩溃 | H |
| L1-06 | 超长（512 B） | 截断并弃权 | H |
| L1-07 | 两层都弃权 | `l1_abstain++` 并进 L2 | H |
| L1-08 | hook 侧耗时 | ≤1 ms（真机埋点 1000 次均值/最大值） | D |
| L1-09 | hook 侧 rodata 增量 | ≤8 KB | D（`size` 对比） |

## 4. L2 工具调用（TC-*）

| ID | 输入 | 期望 | 层 |
|---|---|---|---|
| TC-01 | 回放 `resp_a_play.json` | 解析出 `music.play` + `query`，执行，播报"好，播放周杰伦 晴天" | S |
| TC-02 | 回放 `resp_b_vague.json`（编造 `热门流行歌单`） | 搜索 0 条 → 播报"没找到…"，**不**说"正在播放"；`invented_slot++` | S+D |
| TC-03 | 回放 `resp_c_multi.json` | 只执行 1 个；残句反馈一句 | S |
| TC-04 | 回放 `resp_d_weather.json` | 工具表里无天气 ⇒ 该响应不可能出现；若构造出现 → 拒绝执行 | S |
| TC-05 | 回放 `resp_f_stop.json`（pause 代替 stop） | 按枚举校验：`pause` 合法则执行；若要 `stop` 必须由清单提供枚举 | S |
| TC-06 | `arguments` 非法 JSON | `tool_badargs++` + 追问；不执行 | H |
| TC-07 | `arguments` 含未知字段 | 同上 | H |
| TC-08 | `name` 不在本轮工具表 | 丢弃 + `tool_unknown++` | H |
| TC-09 | 两个 tool_call | 只执行第一个 + 明确反馈 | S |
| TC-10 | 模型超时（5 s） | 2 s 超时 → L3；60 s 熔断生效 | S |
| TC-11 | `tools=false` 的模型配置 | 不发明 `tools` 字段；请求体与基线逐字节一致 | S |
| TC-12 | `content=""` + `finish_reason=tool_calls` | 视为成功决策，不判失败 | H |
| TC-13 | `reasoning_content` 存在 | 不播报、不落盘正文（只计数） | H |

## 5. 多意图与上下文（MI-*）

用例表见 `T9_28_MULTI_INTENT_DESIGN.md` §9（MI-01…MI-20），全部要求：
- 每条在 host 层可回放（归一化 + 切分 + 调度决策都是纯函数）；
- 真机层验证"实际执行了哪些动作"（日志 `nlu: segs=…` 行）。

| 附加 ID | 内容 | 期望 |
|---|---|---|
| MI-21 | 切分不可靠（动作跨度交叠 >50%） | 不切 + 仲裁 + `l1_overlap++` |
| MI-22 | 4 个动作 | 不切；只做最长跨度；residual 反馈 |
| MI-23 | local + AI：两句播报顺序 | local 先，AI 后，不重叠（TTS 队列顺序断言） |
| MI-24 | local + factory（MIX-0） | 本地执行 + 明确告知未执行部分 |
| MI-25 | 槽位补全 8 s 超时 | 丢弃 + `slots.expired++`；不跨 session |

## 6. 原厂回归（FW-*，每阶段必跑）

30 句固定话术，四类：音量（大/小/静音/具体值）、天气（今天/明天/带伞）、闹钟（定/取消/叫我起床）、
时间与开关屏。判据：

| 断言 | 方法 |
|---|---|
| `route=native` 计数与基线一致（±0） | 日志 grep |
| ttsguard `ALLOW/DROP` 比例与基线一致 | 守卫日志计数 |
| 原厂播报内容一致 | 录音/录屏人工签字（1 人） |
| 无"双回答" | 每句只出现一条播报（`play.public.json` 的 tts_id 单调 + 无重叠） |

## 7. 语料与指标（沿用 T9-28 修订后的分层门槛）

| 层 | 样本 | 门槛 | 现状（【实测】，本轮） |
|---|---|---|---|
| 真实语料总量 | 去重唯一话术 | 6 周内 ≥600 | **275**（1463 条 final） |
| 原厂回归 | 30 句 | 误接管 0 | 待跑 |
| 本地技能 | 60 句 | 弃权 ≤20%，误命中 ≤1 | 42 句上 M3=90.5% |
| 易混/对抗 | 40 句 | 误接管 0 | 待跑 |
| 多意图 | 30 句 | 见 MI-* | 待跑 |

## 8. 观测与证据归档

每次测试产出的最小集合：

```
evidence/t9-28/<阶段>/<用例组>/
  run.txt              # 命令 + 时间 + 构建指纹(md5 of ai_worker/libtg_hook.so/APK)
  worker.log           # 断言用的行（grep 后的，不整份）
  status.json          # 状态快照（含 nlu/own/skills 计数）
  ack.json / ownership.json   # 归属表与回执实样
  shots/               # 需要看的界面
```

构建指纹必须来自**设备上的 `/system`**（T9-26 的教训：`/data/local/tmp` 的副本会骗人）：

```
adb shell "md5sum /system/tgz02/bin/ai_worker /system/tgz02/lib/libtg_hook.so"
```

## 9. 验收清单（对应审查意见 §五）

| # | 验收要求 | 判定用例 | 通过条件 |
|---|---|---|---|
| A1 | F1 双执行有系统性方案 | OWN-22、OWN-01/08/09 + 12 组配置矩阵 | 双执行计数 = 0，且机制在文档中可指向具体代码位置 |
| A2 | F2 关闭技能能交还原厂 | OWN-23、REG-11、R 层"播放晴天"（music 关） | 听到原厂回答；非静默 |
| A3 | F3 不再无检测漂移 | OWN-19 | `rules_hash` 不符时本地技能停止执行且告警 |
| A4 | 原厂天气/闹钟不受影响 | FW-* | 计数与内容一致 |
| A5 | AI 不能越权 | TC-04/06/07/08、SECURITY §2 V1–V7 | 全部拒绝并计数 |
| A6 | 多意图有调度与失败反馈 | MI-01…MI-25 | 每条有明确播报，不静默吞动作 |
| A7 | 适合 1 GB / ARM32 | L1-08/09、L 层长跑 | 耗时/内存/rodata 在预算内，24 h 无崩溃无泄漏 |

## 10. 人工签字项（机器判不了的）

| 项 | 谁签 | 内容 |
|---|---|---|
| 播报自然度 | 用户 | 合并回话（"换下一首，音量也小了点"）是否别扭 |
| 原厂回归听感 | 用户 | 30 句里是否有"变差"的 |
| MIX-2 是否值得做 | 用户 + 架构 | 基于 A/B 数据（`MULTI_INTENT §4.3`） |
| 降级可接受度 | 用户 | 全原厂降级时"播放晴天"得到"控制不了音箱里的应用"是否可接受 |
