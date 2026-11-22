# T8-02 报告：接管状态加固 + ABI 确认 + 设备验证方案

基线：`ddb81839`。范围：`my-doc/07_ai_bridge/`。**未部署、未注入、未重启、未改原厂配置、未动 Guard 与路由规则。**

## 1. 一句话结论

容量与并发两个真实缺陷已修，ABI 已确认到"可动手"的程度（返回类型如实标注未确认），
sessionId 已有零注入的只读证实方法；**原型达到设备验证条件**，等批准。

## 2. 修改文件

| 文件 | 改动 |
|---|---|
| `android/nlu_takeover.h` | 容量 8 → **64**；新增 `T8_TO_TAKE_UNREGISTERED`、`why=overflow`、`degraded_until_ms`、`overflow/degraded_passes/reentrant_marks` 计数、`t8_to_snapshot*`；`t8_to_init` 改为返回 int、新增 `t8_to_destroy` |
| `android/nlu_takeover.c` | `t8_to_alloc` 改为**只找空槽**（不再淘汰有效登记）；耗尽 → `overflow++` + 5 s fail-closed 窗口 + 明确返回；全部导出函数加 pthread mutex（Windows 主机侧 `CRITICAL_SECTION`）；锁不可用时整体降级为"不接管" |
| `tests/t8_02_nlu_takeover_unit_test.c` | 新增（合并 T8-01 的 A/A2/B/C/D + 新写 E 容量、F 并发）；`tests/t8_01_nlu_takeover_unit_test.c` 删除（其断言已并入，唯一被**取代**的是"槽位满淘汰最旧"那条 —— 那正是本轮修的 bug） |
| `tests/run_t8_02_host_tests.ps1` | 新增（`-pthread`，日志落 `evidence/t8_02_host_test.log`） |
| `analysis/t8_02/stub_skip.s` | 新增：可跳过原函数的 12 条指令 stub（机器码已反汇编验证） |
| `asr_independent/T8-02_NLU_TAKEOVER_HARDENING.md` | 新增：四大项的证据与设计、设备验证方案、回滚 |
| `evidence/t8_02_host_test.log` | 本轮真实测试日志 |

## 3. 主机测试（真实日志：`evidence/t8_02_host_test.log`）

```
slots=64 ttl_ms=30000 degraded_ms=5000
[A]  天猫精灵现在几点   -> PASS (time)     天猫精灵音量调到五 -> PASS (volume.set)
     天猫精灵暂停       -> PASS (stop)     天猫精灵给我讲一个笑话 -> TAKE (ai)
[A2] 音量调到百分之 -> TAKE (ai-incomplete, note=dangling)
[D]  summary: factory_runs=1 our_replies=1 our_apply=1 dropped_nlu=1
[F]  mixed: threads=6 iters=400 marked=2400 dropped=2400 expired=0
RESULT: pass=184 fail=0
# result: OK (184 assertions, 0 warning, 0 error)
```

**E（容量）关键断言**：64 条占满 → 第 65 条返回 `TAKE_UNREGISTERED` + `overflow=1`；
`cap-0`（最早）与 `cap-63`（最新）**都仍然拦得住**（没有静默覆盖）；降级窗口内未登记会话 fail-closed
（`degraded_passes=1`，不计入 `unknown`）；窗口结束后恢复放行；TTL 回收 64 槽后新登记成功且 `overflow` 不归零。

**F（并发）关键断言**：6 线程 × 400 次"登记→查询→清理→查询"零异常；4 线程 × 200 次同一 session
只占 **1 个槽**、`reentrant_marks=799`、`overflow=0`；锁生命周期（`init(NULL)=-1`、`destroy` 后不接管）。

## 4. ARM32 编译

`armv7a-linux-androideabi26-clang -c -O2 -Wall -Wextra -std=gnu99 -fPIE -pthread`
→ `nlu_takeover.c`、`skill_dispatch.c` 均 **0 warning**，产物 `ELF32 / ARM`（`readelf -h`）。

## 5. ABI 结论（`SessionDispatch::onNlpResult` @ `0x118ebc`，尺寸 1952）

| 项 | 结论 |
|---|---|
| 模式 | **ARM**（`st_value` 偶数；序言 `E92D4FF0`） |
| 参数 | `r0=this, r1=int, r2=int, r3=NlpResult*`（AAPCS，无栈参数） |
| 序言 | `push {r4-r11,lr}` / `add r11,sp,#28` / `sub sp,sp,#52`（前两条与 PC 无关，可搬进 trampoline） |
| 尾声 | 三条 `pop {r4-r11,pc}`（0x119470 / 0x119484 / 0x1195B0） |
| 返回路径 | A: r0 = 0/1 字节；B: r0 = `setSessionTtsStatus` 的残留值；C: r0 = `AgutilLog` 的残留值 |
| 返回值类型 | **未确认**（两条路径返回被调 void 函数的残留 r0，实务上说明按 void 编译） |
| 调用者是否读返回值 | **不读**（`SessionProxy::onHandler` 0x11cbfc、`SessionManager::exitTalk` 0x111138 都立刻覆盖 r0） |
| 跳过时返回什么 | **0**（调用者不读；与路径 A 取值域一致） |
| 现有框架能否处理入口 | 入口可以；但框架原来只会"无条件放行"，本轮补了**可跳过** stub（12 条指令），机器码已用 `llvm-objdump` 反汇编核对 |

## 6. sessionId

静态：`SessionProxy::onHandler` 里 `ldrd r8,r9,[r1]` 取 `Message->arg1` → 直接作为 `onNlpResult` 的 arg1（已证实）。
实测：`onHandler` 打印的 `sessionId` 与 `onStartTalk/onStream`、以及我方 `events.jsonl` 的 `session_id` 一致（已证实）。
**未证实**：arg1 与 ASR sessionId 的同一性 —— 已设计零注入只读方法：库自带日志
`on nlp result, code = %d , sessionId = %d, data = %d`，下一轮说话时与 `onStream` 的 sessionId 对照即可。

## 7. 生命周期

不新增 `onStopTalk` Hook。理由：TTL 30 s 是实测 final→答复间隔（毫秒级）的约 1000 倍；TTL 之后是**放行**
而不是接管，最坏情况等于今天的行为；提前清登记反而会让迟到的 NLU 结果漏给原厂。
`exitTalk` 补发路径已被 `SessionDispatch::onNlpResult` 这个点覆盖。

## 8. 设备验证条件

**达到。** 改动面 2 处 + 1 个默认关闭的开关（`TG_NLU_TAKEOVER=0`），回滚首选是把这个开关关掉；
详细步骤、判据、回滚见 `T8-02_NLU_TAKEOVER_HARDENING.md` §7。

## 9. 未做

- 未部署任何 Hook、未注入、未重启设备或 `:core`、未改原厂配置文件。
- 未改 Worker 路由规则、未改 TTS Guard 行为、未部署第二套 Worker。
- 未重新研究 ASR，未跑与本轮无关的死信历史测试。
