# T8-04：初始化竞态修复 + AI 对话是否经过 NLU Hook 的定论 + 三阶段真机验证材料

基线：`97141f03`。范围：`my-doc/07_ai_bridge/`。
**本轮没有部署、没有注入、没有开启接管、没有重启 `:core` 或整机、没有改原厂配置。**

## 1. 七个问题的回答

| 问题 | 回答 |
|---|---|
| nlu_boot 并发初始化竞态是否修复？ | **已修复**：改成 `pthread_once`（见 §2），初始化体严格执行一次，后到线程在完成前阻塞 |
| 初始化失败是否仍然 fail-closed？ | **是**：`g_nlu_init_failed=1` + `mutex_ready=0` → `TAKE_FAILCLOSED` / `should_drop` 恒 1；不重试、不静默放行 |
| 本地指令是否经过 NLU Hook？ | **经过**（实测：1968511 → `SessionDispatch.cpp:onNlpResult:416 sessionId = 1968511, code = 0, data= 1`） |
| AI 对话是否经过 NLU Hook？ | **经过**（实测：1968506 → `SessionDispatch.cpp:onNlpResult:416 sessionId = 1968506, code = 3, data= 0`） |
| 若 AI 不经过，最小第二接管点？ | **不需要第二接管点**（见 §3 的直接证据）；如后续设备验证仍发现漏拦，才考虑 `RouterManager::onResponse`（`0x10fe3c`），方案见 §4 的备注 |
| 是否具备"默认关闭"状态下的真机 Hook 安装验证条件？ | **具备**：阶段 A/B 的全部材料在 §5，安装校验、机器码前后对比、计数、回滚命令齐备 |
| 本轮是否严格没有部署/注入/开启接管？ | **是**（见 §7 的自查） |

## 2. P1-1：nlu_boot 竞态修复

### 旧实现的问题

```c
if (__atomic_load_n(&g_nlu_booted, ACQUIRE)) return;   /* 只有标志位原子 */
... getenv / t8_to_init(&g_to) / enabled_set ...
__atomic_store_n(&g_nlu_booted, 1, RELEASE);
```
两个线程同时首次调用时都会看到 `booted==0` → **同时执行 `t8_to_init(&g_to)`** →
`pthread_mutex_init` 对同一个 mutex 调用两次（未定义行为），且另一个线程可能在
`g_to` 半初始化时读它。

### 新实现（Android 8.1 / ARM32 原生方案）

```c
static pthread_once_t g_nlu_once = PTHREAD_ONCE_INIT;

static void nlu_boot_once(void) {            /* 只做 getenv/strtol/一次 mutex_init/一次 slog */
    ...
    rc = t8_to_init(&g_to);
    if (rc != 0) g_nlu_init_failed = 1;
    (void)t8_to_enabled_set(&g_to, 1);       /* 锁不可用 -> -1，但开关记为开 -> fail-closed */
    g_nlu_enabled = 1;
    __atomic_store_n(&g_nlu_boot_done, 1, RELEASE);
    }
static int nlu_want_enabled(void)
{
    (void)pthread_once(&g_nlu_once, nlu_boot_once);   /* 后到线程在此等待 winner 完成 */
    return __atomic_load_n(&g_nlu_enabled, ACQUIRE);
}
```

对应六条要求：

| 要求 | 实现 |
|---|---|
| ① 严格只执行一次 | `pthread_once`（bionic 保证） |
| ② 完成前不能进判定 | `pthread_once` 返回即初始化完成；`nlu_want_enabled()` 返回后才走判定 |
| ③ 不重复 init mutex | 初始化体只跑一次 ⇒ `t8_to_init` 只调一次 |
| ④ 失败仍 fail-closed | `g_nlu_init_failed` + `mutex_ready=0` → `TAKE_FAILCLOSED` / `should_drop=1` |
| ⑤ 回调无长等待/复杂嵌套 | 初始化体只有 getenv/strtol/一次 `pthread_mutex_init`/一次 `slog`（微秒级）；无锁嵌套、无 I/O 等待 |
| ⑥ 热路径轻量 | 就绪后 `pthread_once` 是一次原子 load + 分支；之后是一次查表（T8-02 的短临界区） |

诊断新增：`tg_nlu_stats()` 里多了 `boot_done` / `init_failed` 两个字段。

## 3. P1-2：AI 对话是否经过 NLU Hook —— 已用真机日志定论

证据来自 T8-03 已采集的过滤日志（`evidence/t8_03_session_correlation.log`，**没有新注入**）：

```
# AI 对话（识别成「天猫精灵郑州有什么好玩的」）
18:28:52.736  8342 8374 W SessionDispatch: SessionDispatch.cpp:onNlpResult:416  sessionId = 1968506, code = 3, data= 0
18:28:52.745  8342 8374 D SessionDispatch: SessionDispatch.cpp:onNlpResult:481  returnCode = 0
18:28:52.746  8342 8374 D SessionDispatch: SessionDispatch.cpp:onNlpResult:494  returnCode = 0, data return = 0

# 本地指令（「天猫精灵现在几点了」）
18:28:57.887  8342 8374 W SessionDispatch: SessionDispatch.cpp:onNlpResult:416  sessionId = 1968511, code = 0, data= 1
18:28:57.895  8342 8374 D SessionDispatch: SessionDispatch.cpp:onNlpResult:481  returnCode = 0
```

**两条会话都进了 `SessionDispatch::onNlpResult`**（tid 都是 8374，即代理消息泵线程），
区别只是 `code`（本地指令 0 / 聊天 3）和 `data`。

补充说明 T8-03 里那个"聊天没有 `on nlp result` 行"的疑点：那是 `SessionManager::onNlpResult:895`
（JNI 那条入口）的日志；聊天走的是 `RouterManager::onResponse → onNlpResultInner → 消息泵`，不打印那一行，
但**照样到达同一个 CDM 入口**。

因此：
- 单一接管点 `0x118ebc` 同时覆盖本地指令与 AI 对话；
- T8-01 里标"未证实"的那一条，现在**由观测关闭**；
- 阶段 C 仍然要求用 `nlp_calls/nlp_skip` 计数复核（日志行是间接证据，计数是本 Hook 的直接证据）。

## 4. 最小第二接管点（仅作备案，暂不做）

若阶段 C 发现聊天漏拦（计数 `nlp_calls` 不动或 `nlp_skip` 不涨），最小第二点：

| 项 | 内容 |
|---|---|
| 入口 | `RouterManager::onResponse(int, json_object*)` @ `0x10fe3c` |
| 参数 | `r0=this, r1=int(sessionId), r2=json_object*` |
| 跳过语义 | 前置判据命中 → 直接返回（`mov r0,#0; bx lr`），不执行后续 `ProtocolParser::onParser` / `onNlpResultInner` / `ContinuousDialogManager::onSpeakCommand` |
| 前提 | 序言必须另行核对（**不是**已知的 `push {r4-r11,lr}` 组合），并同样走"暂停线程 + 入口一致性"安装 |
| 回滚 | 与第一个点相同：关开关 / 换回备份库 |

本轮不实现、不安装，只留方案。

## 5. 三阶段真机验证材料（可直接照做）

> 前置：设备当前状态（本轮实测记录）—— `:core` pid 8342、`ai_worker` `32fc280019103d58…`、
  TTS Guard 在跑、`/data` 余 383 MB。所有阶段都在**不重启 `:core`** 的前提下完成。

### 阶段 A：默认关闭（先证明"没开=没变化"）

| 步骤 | 命令 / 动作 | 成功判据 |
|---|---|---|
| A1 确认开关未开 | `adb shell su -c 'cat /proc/<hook_pid>/environ \| tr "\0" "\n" \| grep TG_NLU_TAKEOVER'`（无输出=未设置） | 无输出，或值不为 1 |
| A2 备份当前库 | `adb shell su -c 'cp /data/local/tmp/t6/libtg_hook.so /data/local/tmp/t6/libtg_hook.so.bak'` | `.bak` 存在且 sha256 与现库一致 |
| A3 装新库（**仍需单独批准**） | `adb push out/libtg_hook.so /data/local/tmp/t6/libtg_hook.so.new` → `mv` 换名 → `sh run_supervisor.sh` | supervisor 起来，`:core` 未重启（pid 不变） |
| A4 功能不变 | 说「天猫精灵，现在几点」 | 原厂照常回答；`/data/local/tmp/t5_bridge/work/events.jsonl` 行数 +1 |
| A5 计数不动 | `tg_nlu_stats()` 输出 | `enabled=0 boot_done=1 … final_seen=0 nlp_calls=0` |
| A6 卸载复原 | `tg_nlu_uninstall()` + `tg_hook_uninstall()`，再 `tg_hook_install()` | 入口机器码恢复为 `E92D4FF0 E28DB01C`（见 B2），原厂功能正常 |

### 阶段 B：只验证 Hook 安装与计数（不开启接管）

| 步骤 | 命令 / 动作 | 成功判据 |
|---|---|---|
| B1 安装前读机器码 | `adb shell su -c 'dd if=/system/app/smartapp/lib/arm/libsmartbox.so bs=1 skip=$((0x118ebc+0x864cc)) count=8 2>/dev/null \| od -An -tx4'`（或用库内偏移换算的 `readelf -S` 值） | `e92d4ff0 e28db01c` |
| B2 安装后读进程内存 | `tg_nlu_patch_lo/hi` 由 injector 打印 → `dd` 同地址 | `e51ff004 <stub 地址>` |
| B3 `TG_NLU_TAKEOVER` 保持关闭时安装 | `tg_nlu_prepare()` / `tg_nlu_install()` | 返回 `-10 (TG_E_DISABLED)`，入口**不变** |
| B4 打开开关**但不安装** | `TG_NLU_TAKEOVER=1` 重启 supervisor（不动 `:core`） | `tg_nlu_stats()` 显示 `enabled=1 boot_done=1 nlp_calls=0`（开关可读、初始化完成） |
| B5 安装（**阶段 C 前的最后一步，需批准**） | `tg_nlu_prepare()` + `tg_nlu_install()` | 返回 0；B2 的机器码变为跳转；`:core` pid 不变 |
| B6 计数基线 | 说一句本地指令 | `final_seen=1，nlp_calls=1，nlp_skip=0，nlp_pass=1`（开关开但未接管会话→放行） |
| B7 卸载并复原 | `tg_nlu_uninstall()` | 机器码回到 `e92d4ff0 e28db01c`，原厂回答正常 |

### 阶段 C：接管验证（**必须单独批准**）

| 用例 | 说法 | 期望计数 | 期望现象 |
|---|---|---|---|
| C1 本地指令放行 | 「天猫精灵，现在几点了」 | `final_seen+1, nlp_calls+1, nlp_skip=0, nlp_pass+1, marked=0, passed+1` | 原厂照常回答（Guard 放行），音量类副作用只发生一次 |
| C2 AI 会话拦截 | 「天猫精灵，给我讲个笑话」 | `marked+1, nlp_calls+1, nlp_skip+1, dropped+1` | 原厂无技能执行、无原厂 TTS；worker `deepseek ok` + `tts queued` |
| C3 混排（连说两条） | 先 C1 再 C2 | C1/C2 计数各自独立递增，`unknown` 不增长 | 本地指令仍由原厂答，聊天只由我方答 |
| C4 异常 fail-closed（可选） | 人为把 `g_to` 置不可用（例如停掉接管初始化后强制 `enabled=1`） | `failclosed=1, fc_events>0, nlp_skip>0` | 原厂不执行技能（宁可静默，不放行） |
| C5 对照 | 关掉 `TG_NLU_TAKEOVER` 再说 C2 | `nlp_calls` 不再增长 | 原厂重新开始答复（Guard 可能静音，但 logcat 有 `TtsManager::playTts/onTtsStart`） |

**成功标准**：C1、C2、C3 全部符合期望计数与现象；任一不符即回滚（§6）。

## 6. 回滚与失败恢复（禁止把重启 :core / 整机当默认手段）

| 层级 | 命令 | 影响 |
|---|---|---|
| R1 关开关（首选） | 停 `tg_supervisor`（`kill $(cat /data/local/tmp/t6/tg_supervisor.pid)`）→ 去掉 `TG_NLU_TAKEOVER` → `sh /data/local/tmp/t6/run_supervisor.sh` | 只重启注入器，`:core` 不动；接管立即失效 |
| R2 卸载两个 Hook（不换库） | injector 调 `tg_nlu_uninstall()` / `tg_hook_uninstall()` | 入口恢复原厂指令；事件桥接同时停 |
| R3 换回备份库 | `cp libtg_hook.so.bak libtg_hook.so` → `run_supervisor.sh` | 回到本轮之前的库 |
| R4 完全停用 | `sh run_supervisor.sh stop` | 进程回退到"未注入"状态，Guard 不受影响 |

**失败恢复顺序**：R1 → R2 → R3 → R4；每一步之后都要验一次"原厂能正常回答 + `events.jsonl` 继续增长"。
`runtime.xml`、`dialog.cfg`、Worker、TTS Guard 在这一轮的任何回滚路径里都不需要改。

## 7. 本轮自查（禁止项逐条）

- ✅ 未向设备注入或部署任何新版本（`out/libtg_hook.so` 只落主机）
- ✅ 未开启 `TG_NLU_TAKEOVER`（设备环境未设置该变量）
- ✅ 未修改原厂配置；未重启 `:core`/整机；未改 Worker 路由/分流/TTS Guard；未部署新 Worker
- ✅ 未重新调查 ASR；未扩大调用链审计（只引用了 T8-03 已采集的日志）
- ✅ 设备侧只剩既有的 TTS 相关进程（`logcat -v time -s AudioStateManager/VoiceManager` 是既有进程，未动）

## 8. 测试与构建

```
evidence/t8_04_host_test.log
  [A] 8 threads x 300 iterations：init_runs=1  early_entries=0  wrong_decisions=0
  [B] hot path：init_runs 仍为 1（1000 次热调用没有再次初始化）
  [C] init failure：enabled=1 mutex_ready=0 enabled_set=-1 init_error=1；100×2 次调用全部 fail-closed
  RESULT: pass=421 fail=0
  source assertions: pthread_once 闸门 / 旧的 volatile 双检已删除 / init 失败已记录 / enabled 仍置 1

evidence/t6_01_ndk_build.log   （ARM32 重建，含 T8-04 修复）
  tg_injector   : 0 warning, 0 error
  libtg_hook.so : 0 warning, 0 error
  # result: OK (0 warning, 0 error, ELF32/ARM, dynamically linked)
  readelf: pthread_once@LIBC 已导入（证明闸门用的是 bionic 的 pthread_once）
```
