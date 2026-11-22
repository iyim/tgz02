# T8-01 报告：NLU/CDM 接管点 + 最小替换原型

基线：`203ff606c1baa5a550141ee647758c9ac4563d7f`（main）
范围：`my-doc/07_ai_bridge/` 内。**未部署、未重启、未改 Hook、未改原厂配置、未动 `system_debloat/`。**

## 1. 结论

| 问题 | 答案 |
|---|---|
| 有没有找到可靠的 NLU/CDM 接管点 | **有**：`SessionDispatch::onNlpResult(int, int, NlpResult*)` @ `libsmartbox.so 0x118ebc` |
| 为什么是它 | 三条 NLU 入口（JNI `onNlpResult`、云端 `onResponse`→`onNlpResultInner`、`exitTalk` 补发）在这里汇合；往下才是 `onRouterDetailInfo`/`playAudios`/`processCommand`/TTS |
| NLU 在哪 | **云端**（本地调用链里没有任何 NLU 调用；ASR 会话自带 `needNlp`；29/29 条 `isOffline=0`） |
| TTS Guard 在哪一层 | `TtsManager::playTts`(0x11fafc) / `onTtsStart`(0x11f110)，**在技能之后** → 存在"技能已执行、回复被拦"的情况（已证） |
| 主机原型是否验证了分流 | **是**，70 条断言全过（见 §3） |
| 能否进入设备端验证 | 能，但需要批准（方案与回滚已在文档 §4/§5/§7 写好） |

## 2. 交付物

| 文件 | 内容 |
|---|---|
| `asr_independent/T8-01_NLU_CDM_TAKEOVER.md` | 调用链图（每条边标 `已证实/实测/推断/未证实`）、Q1–Q6 逐条回答、接管点论证、Hook 改动方案、回滚、设备验证步骤 |
| `android/nlu_takeover.h/.c` | 会话级接管判据（TTL / 槽位回收 / 幂等），复用 `intent_route`，不写第二套规则 |
| `android/skill_dispatch.h/.c` | 统一技能接口 + 注册表 + 音量/时间两个示例，未接入的技能明确 `NOIMPL` |
| `tests/t8_01_nlu_takeover_unit_test.c` | 70 条断言（判定 / 丢弃语义 / 技能 / 端到端分流） |
| `tests/run_t8_01_host_tests.ps1` | 一键构建运行（ASCII-only，PS 5.1 可用） |
| `analysis/t8_01/plt_calls.ps1`、`who_calls.ps1`、`make_evidence.ps1` | PLT 桩 ↔ `.rel.plt` 反解工具（正向列被调用、反向找调用者） |
| `evidence/t8_01_callchain_extract.txt` | 静态证据摘录（关键符号地址 + 8 个函数的被调用列表 + 4 条反向调用者） |
| `evidence/t8_01_host_test.log` | 主机测试真实日志 |

## 3. 主机测试（真实日志：`evidence/t8_01_host_test.log`）

```
=== build t8_01_nlu_takeover_unit_test ===
(no compiler output: 0 warning, 0 error)
=== run ===
天猫精灵现在几点   -> PASS (intent=time   rule=time.keyword   complete=1)
天猫精灵音量调到五 -> PASS (intent=volume rule=volume.set arg=set:5 complete=1)
天猫精灵暂停       -> PASS (intent=stop   rule=stop.keyword   complete=1)
天猫精灵给我讲一个笑话 -> TAKE (why=ai)
音量调到百分之     -> TAKE (why=ai-incomplete, note=dangling)
[D] summary: factory_runs=1 our_replies=1 our_apply=1 dropped_nlu=1
RESULT: pass=70 fail=0
# result: OK (70 assertions, 0 warning, 0 error)
```

判定结果与真机 17:52 的 worker 日志逐条一致（`route=native intent=time|volume.set|stop`、
`route=ai`），说明原型用的判据就是线上在用的那一套。

关键断言：
- 本地指令：`onNlpResult` **不被丢弃**，原厂 CDM 执行 1 次，我方不重复执行技能；
- AI 指令：`onNlpResult` **被丢弃**，原厂 CDM 执行 0 次；
- 半句话（参数不完整）：原厂也不执行（比现有 worker 更严格，刻意）；
- 未登记会话 / TTL 过期 / 会话结束：一律放行（不误伤）；
- 技能接口：参数不合法**不会**落到设备回调（`apply_calls` 不增长）；未实现技能返回 `NOIMPL` 而不是假成功。

ARM32 编译检查：`armv7a-linux-androideabi26-clang -c` 编 `nlu_takeover.c` 与 `skill_dispatch.c`
→ 0 warning，产物 `ELF32 / ARM`。

## 4. 证据等级

| 结论 | 等级 |
|---|---|
| onStream / SessionDispatch::onNlpResult 的调用边、三条入口汇合、TTS 在技能之后 | **静态已证实**（反汇编解析，非伪代码） |
| NLU 由云端计算 | **推断**（无报文级证据） |
| 接管后原厂技能是否真的不执行 | **未验证**（需设备窗口） |

函数级伪代码本轮**没有**：本机没有可用的 ELF/ARM 反编译 provider（Ghidra 仅 PE/6502、
Hopper 仅 macOS、IDA/Kuna 未配置），所以走符号+反汇编+调用边，够定位接管点，但没有伪代码级别的细节。

## 5. 未做

- 未改 Hook、未部署、未重启设备或 `:core`（本轮要求先报方案）。
- 未修改 `runtime.xml` / `dialog.cfg` / 路由规则 / Guard 状态。
- 未跑与本轮无关的死信历史测试；未做任何 ASR 采样。
- 未一次性复刻全部技能：只给了接口 + 音量/时间两个示例，播放/屏幕/App 启动留接口。
