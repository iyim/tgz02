# T8-03 报告：fail-closed 闭环 + Hook 接入原型 + ARM32 静态核对

基线：`b7d87b3d`。范围：`my-doc/07_ai_bridge/`。**未部署、未注入、未重启设备或 `:core`、未改原厂配置、未动 Guard 与 Worker 路由。**

## 1. 结论（对应本轮结束条件）

| 问题 | 回答 |
|---|---|
| 初始化失败是否还会导致 AI 会话误放行？ | **不会**（fail-closed，且不访问共享状态） |
| sessionId 是否已确认一致？ | 静态到 `Message->arg1`；**动态同一性仍待一次真实语音**（方法已备好，零注入） |
| ARM32 Hook 原型是否完成静态核对？ | **完成**（stub 12 字、序言、补丁字面量、寄存器纪律、PLT 集成） |
| 是否达到申请设备验证的条件？ | **达到**（sessionId 那条在设备窗口顺带确认） |

## 2. 修改文件

| 文件 | 改动 |
|---|---|
| `android/nlu_takeover.h/.c` | 新增开关（`t8_to_enabled_set/enabled`，默认关）；新增 `T8_TO_TAKE_FAILCLOSED` + `why=failclosed/no-session`；锁不可用/会话缺失一律 fail-closed 且不触碰状态；快照新增 `enabled/init_error/failclosed/fc_events/fc_passes` |
| `android/hook_agent/libtg_hook.c` | 新增 NLU hook 段：`nlu_boot()`（环境变量开关）、`nlu_note_final()`（onStream final 末尾登记）、`tg_nlp_cb()`（NLU 结果判定）、`build_nlu_stub_page()`（可跳过 stub）、`tg_nlu_prepare/install/uninstall/patch_lo/patch_hi/stats`；`tg_onstream_cb` 末尾加一行调用，**不改原有转发** |
| `android/build_t6.ps1`、`android/hook_agent/Makefile` | hook 库加入 `nlu_takeover.c / intent_route.c / echo_filter.c` 与 `-I ..` |
| `tests/t8_02_nlu_takeover_unit_test.c` | 新增 [G] 段（关开关/初始化失败/会话缺失），并让其余用例在"接管开启"下跑 |
| `asr_independent/T8-03_FAILCLOSED_AND_HOOK_PROTOTYPE.md` | 设计、证据、设备验证方案、回滚命令 |
| `evidence/t8_02_host_test.log`、`evidence/t8_03_hook_static_check.txt`、`evidence/t6_01_ndk_build.log` | 本轮真实日志 |

## 3. 关键行为表（fail-closed）

| 状态 | `on_final` | `should_drop` | 计数 |
|---|---|---|---|
| 开关关（默认） | `PASS`（不写状态） | `0` | 全 0 |
| 开 + 正常 AI | `TAKE` | 已登记 → 1 | `marked` / `dropped` |
| 开 + 正常本地 | `PASS` | 未登记 → 0 | `passed` / `unknown` |
| 开 + 容量满 | `TAKE_UNREGISTERED` | 窗口内 → 1 | `overflow` / `degraded_passes` |
| 开 + 锁不可用 | `TAKE_FAILCLOSED` | **恒 1** | hook 层 `failclosed` |
| 开 + 会话缺失 | `TAKE_FAILCLOSED` | 窗口内 → 1 | `failclosed_events` / `failclosed_passes` |

## 4. 测试（`evidence/t8_02_host_test.log`）

```
[G] 开关关闭 / 初始化失败 / 会话缺失
RESULT: pass=211 fail=0      # 0 warning, 0 error
```

## 5. ARM32 构建（`evidence/t6_01_ndk_build.log`）

```
tg_injector      : 0 warning, 0 error
libtg_hook.so    : 0 warning, 0 error   (97 100 B, ELF32/ARM, shared)
# result: OK (0 warning, 0 error, ELF32/ARM, dynamically linked)
```

静态核对（`evidence/t8_03_hook_static_check.txt`）：stub 12 个字与 `analysis/t8_02/stub_skip.s`
反汇编逐条一致；`TG_PATCH_JUMP` 由 `movw #61444 / movt #58655` 生成；`.rel.plt` 里五个
`t8_to_*` JUMP_SLOT 证明 hook 侧调用已接入。

## 6. 未做

- 未部署新 `libtg_hook.so`、未注入、未重启 `:core`/设备；设备仍跑旧库旧 Worker。
- 未改原厂配置、Worker 路由、TTS Guard；未重新研究 ASR。
- 未重复跑死信历史测试与 T8-01/T8-02 的整套历史套件（只跑合并后的单测）。
- sessionId 动态一致性待设备窗口（已备好只读方法）。
