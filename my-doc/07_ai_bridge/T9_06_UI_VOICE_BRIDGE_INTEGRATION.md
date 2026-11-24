# T9-06 自有 UI 接入原厂语音后台：最小闭环实现与真机验收

- 仓库：`iyim/tgz02`，基线提交 `c14c7094`（T9-05 收尾）
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root，`192.168.1.9:5555`
- 作业时间：2026-11-24 15:25 — 15:52（CST）
- 范围：新增一个**提交通道**（worker 侧 `tg_inbox.[ch]` + 启动包装脚本）、一个**最小 UI 探针**（普通 UID），以及部署/回滚脚本；**官方 App、签名、Manifest、权限、SELinux、`:core`、原厂 KWS/ASR/TTS 全部未改**；现有 queue 仍是 `0700 root`
- 证据等级：[主] 主机测试 / [机] 真机 / [静] 静态

---

## 0. 一句话结论

普通 UID 的 UI 提交一条文本 → worker 校验后入原有队列 → TtsExec → 官方 Provider → **真实播报**，UI 通过 `result/<event_id>.json`、`ContentObserver`（`status=1/2/3`）和 `play.public.json` 拿到**准确的完成状态**；A/B/C/D 与 G 全部通过，E/F 的入口安全全部有明确拒绝结果、不静默丢失。

```
自有 UI (uid 10057, 无 root, 无权限声明)
   │  ① 原子提交 /data/local/tmp/t9_ui/inbox/<id>.json   (tmp + rename)
   ▼
worker (root, 原二进制 + tg_inbox)     ← 校验：uid 白名单 / 大小 / 版本 / event_id / UTF-8 / 速率 / 队列上限
   │  ② tts_enqueue()（原封不动的那条持久化入队）
   ▼
tts/queue → TtsExec (root)  → 官方 StatusProvider → 原厂 TtsManager → 扬声器
   │  ③ 回执 result/<id>.json 、状态 notifyChange(.../GenieApi/<tts_id>?status=1|2|3)
   ▼
自有 UI
```

---

## 1. 入口设计与权限边界（回应审查意见 §3）

审查明确要求"不能因为方案文档写了 0777 就直接开放整个目录"。最终实现：

| 项 | 取值 | 为什么 |
|---|---|---|
| 目录布局 | `/data/local/tmp/t9_ui/{inbox,result,rejected}` | 与已验收的 `t5_bridge` 分离，互不影响 |
| `inbox/` 权限 | **`01733 root:root`**（sticky，`o=wx` 无读） | 普通 App 只能创建、不能列目录、不能改/删别人的文件；比 0777 收紧了两个维度 |
| `result/` | `0755 root:root`，文件 `0644` | UI 只读回执；只有 root 能写 |
| `rejected/` | `0700 root:root` | 被拒文件留档，普通 App 看不到内容 |
| `allowed_uids` | `0644 root:root`，内容 `10057` | **白名单在 root 侧**，App 无法自称有权；文件 owner uid 由内核决定，伪造不了 |
| 原 `tts/queue` | **仍是 `0700 root`** | 未开放、未改动 |

真机实测（`evidence/t9-06/10_layout_and_perms.txt`）：

```
drwx-wx-wt 2 root root  inbox        <- app 可创建
drwxr-xr-x 2 root root  result       <- app 可读
drwx------ 2 root root  rejected
app uid: uid=10057(u0_a57) context=u:r:untrusted_app:s0
create_ok                            <- 原子提交成功
写 result/  -> Permission denied     <- 回执不可伪造
写 tts/queue -> Permission denied    <- 原有队列仍未开放
```

### 1.1 校验清单（`tg_inbox.c`，纯 POSIX，可主机测试）

| 校验 | 规则 | 拒绝原因串 |
|---|---|---|
| 文件名 | `<event_id>.json`，`[A-Za-z0-9._-]{1,64}`，非 `.`/`..` | `event_id invalid` / `event_id too long` |
| 打开方式 | `O_NOFOLLOW` + `lstat`/`fstat` | `symlink rejected` |
| 硬链接 | `st_nlink == 1` | `hardlinked file rejected` |
| 文件类型 | 必须是普通文件 | `not a regular file` |
| 文件大小 | `1..4096` 字节；**0 字节视为"还没写完"，先跳过**，30 s 仍为空才拒绝 | `file size out of range` / `empty file` |
| owner uid | 必须在 `allowed_uids` 内 | `uid not allowed` |
| JSON | 单层对象、字符串/整数、无嵌套/数组、无尾部垃圾、转义合法 | `not a json object` / `nested value not allowed` / `trailing data after object` … |
| 版本 | `"v":1` | `unsupported version` |
| event_id | 必须与文件名一致 | `event_id mismatch` |
| 文本 | 非空、≤1024 字节、合法 UTF-8（含代理对） | `empty text` / `text too long` / `text is not valid UTF-8` |
| 队列深度 | `queue + inflight` 已达上限（默认 16） | `queue full` |
| 提交速率 | 默认 10 条 / 10 s（窗口计数） | `rate limited` |
| 重复 | 复用 `tts_enqueue` 的四阶段幂等检查 | 回执 `ok:true, stage:"existing"` |

**结果永远显式**：接受 → `ok:true, stage:"queue"`；幂等 → `ok:true, stage:"existing"`；拒绝 → `ok:false, stage:"rejected", reason:"…"`；文件同时被移入 `rejected/`（`<id>.<ms>.rejected`）。不静默丢弃。

---

## 2. 提交与回执的真机形态

`result/<event_id>.json`（真机原文，`evidence/t9-06/32_entry_security.txt`）：

```json
{"v":1,"event_id":"ok-1795506564","ok":true,"stage":"queue","reason":"","ts_ms":1795506564876}
{"v":1,"event_id":"e1-1795506564","ok":false,"stage":"rejected","reason":"truncated value",…}
{"v":1,"event_id":"e2-1795506564","ok":false,"stage":"rejected","reason":"text too long",…}
{"v":1,"event_id":"e3-1795506564","ok":false,"stage":"rejected","reason":"event_id mismatch",…}
{"v":1,"event_id":"e6-1795506564","ok":false,"stage":"rejected","reason":"file size out of range",…}
{"v":1,"event_id":"root-1795506564","ok":false,"stage":"rejected","reason":"uid not allowed",…}
{"v":1,"event_id":"dup-1795506564","ok":true,"stage":"existing","reason":"already queued or played",…}
```

> `uid not allowed` 那条是**root 自己写的文件**——白名单按文件 owner 判断，root 不在名单里同样被拒。这说明它校验的是身份而不是"谁能写目录"。

---

## 3. 最小 UI（`com.tgz02.uibridge`，16,781 B，零权限声明）

- 文本输入 + 发送 + 停止 + 清屏 + 日志区（不是产品 UI，只验证接入）
- 发送：`event_id = "ui-" + 毫秒`，写 `.<id>.tmp` → `fsync` → `rename`，然后等 `result/<id>.json`（≤6 s）
- 完成：`ContentObserver`（`notifyForDescendants`）实时收 `status=1/2/3` + 轮询 `play.public.json` 把 `event_id → tts_id` 对上
- 停止：对当前 `tts_id` 走 Provider `insert{method:5}`（T9-05 已验证）
- 设备验收用两个 Intent 附加参数（`--es text`、`--ez auto`、`--es action stop`）让流程确定可重复；正常用户就是打字点按钮

---

## 4. 真机验收结果

### A. 单条闭环（前台）

```
UI  : --- submit event_id=ui-1795506038827 bytes=40
UI  : worker 应答: {"v":1,…,"ok":true,"stage":"queue",…}
UI  : status tts_id=5245536 status=1 (play)
UI  : status tts_id=5245536 status=2 (complete)  <== ours
UI  : play.public.json: 播报结束 outcome=ok
journal: {"event_id":"ui-1795506038827","tts_id":5245536,"outcome":"ok","dur_ms":3050}
```

### B. 连续三条（顺序）

```
ui-…052359 → tts_id 5245541  1938 ms  (第一句)
ui-…053634 → tts_id 5245542  2186 ms  (第二句)
ui-…054803 → tts_id 5245545  2200 ms  (第三句)
```

tts_id 与 journal 时间戳都按提交顺序递增，**没有乱序、没有合并**。

### C. 播报中停止指定 tts_id

```
journal: {"event_id":"ui-…078966","tts_id":5245548,"outcome":"interrupted","dur_ms":3134}
```

`outcome=interrupted` 是 TtsExec 对"被停止/被打断"的既有语义，UI 侧同时收到 `status=3`。

### D. UI 退到后台仍能播报

按 HOME 后再提交：

```
journal: {"event_id":"ui-…089310","tts_id":5245552,"outcome":"ok","dur_ms":4843}
```

worker 是独立进程，前台/后台与它无关；UI 侧的 observer 也照样收到状态（存在同一个进程里）。

### E. 入口安全（全部有明确拒绝）

见 §2 的六条回执；另外非法文件名（`bad name-….json`）被归入 `rejected/` 且不产生 `event_id` 回执（名字本身不合法，无从寻址，合理）。

### F. 队列上限

```
cap=1 启动 -> 第一条 ok:true stage=queue
             第二条 ok:false reason="queue full"
队列排空后 -> 第三条 ok:true stage=queue     （上限不粘滞）
恢复默认   -> cmdline 里没有 --inbox-queue-cap
```

### G. 回归

| 检查 | 结果 |
|---|---|
| 不走 inbox 的既有 TtsExec 播报 | `status=play` → 2.58 s → `status=complete`，journal `outcome=ok` |
| worker 健康 | 无 error 状态，`ai_worker_status.json` 正常刷新，factory talk tap 仍在读会话（`factory wake (onStartTalk)` 有记录） |
| `:core` / 注入 / 守护 | pid 1178 未变，仍只有 `libtg_ttsguard_t8156.so` + `libtg_hook.so`；`tg_hook_sup`/`tg_guard_sup` running；`tgb_bridge` 1602 |
| 通道可关闭（additive 证明） | 移走 `/data/local/tmp/t9_ui` 后重启 worker → cmdline **没有** `--inbox`；放回后恢复 |

> 说明：本阶段**没有**用真实语音再做一次"唤醒→ASR→回答"的闭环（需要播报唤醒词），G 的证据是"原厂会话仍被 worker 观察到（15:50:53 `factory wake onStartTalk session=1972886`）+ 原厂 TTS 链路真实播报 + 注入与守护未变"。这一点如实标注为**未用语音复验**。

---

## 5. 实现清单

| 文件 | 作用 |
|---|---|
| `android/tg_inbox.[ch]` | 入口校验 + 回执 + 队列深度/速率限制（纯 POSIX，无 Android 依赖） |
| `android/ai_worker.c` | 新增 `aiw_inbox_poll()`（每轮循环调用，`--inbox` 未给时是空操作）、`aiw_inbox_enqueue()`（调用**原** `tts_enqueue`）、CLI 与默认值；日志按"变化 + 最多 3 s 一条"节流 |
| `android/ai_worker.h` | 配置里加 `inbox_enabled` / `ti_cfg inbox` |
| `android/run_ai_worker_inbox.sh` | **包装启动器**：算好 `--inbox*` 参数后 `exec` 已验收的 `run_ai_worker.sh.accepted`；已验收脚本本身**一个字节都没改** |
| `android/t9_06_ui/**` | 最小 UI 探针（Java，`aapt2`+`d8`+`apksigner` 构建） |
| `tests/t9_06_inbox_unit_test.c` | 主机回归 **46 项** |
| `android/t9_06_restore.sh` | 回滚：恢复已验收 worker/启动器，可选删掉 UI 树 |

构建：`build_t8_15.ps1` 增列 `tg_inbox.c`；ARM32 worker `291,540 B sha256 05c5427…f8184`，**0 warning**；guard 未变（`42712 B 67d96b3…`，因此无需重新注入 `:core`）。

主机测试：`T9-06 inbox unit tests: 46 passed, 0 failed`（覆盖 §1.1 全部规则 + 空文件跳过/陈旧空文件拒绝 + 硬链接/符号链接/uid/速率/队列上限）。

既有套件回归：t8_13 547/0、t7_05 226/0、t7_04 211/0、t8_02 211/0、t8_155 51/0、t8_156 47/0、t8_14_1 47/0、t8_14_2 45/0。
**两个既有套件在本次之前就是坏的**（与 T9-06 无关，已核实基线同样失败）：`run_host_tests.ps1`（源码表缺 `utterance_gate.c`）、`run_t7_06r2_host_tests.ps1`（缺 `session_ctrl.c`/`talk_tap.c`）；`run_t8_15_continuous_dialog_tests.ps1` 37/1（`A: talk_stops = 1`，同样基线复现）。

---

## 6. 部署与回滚

部署（真机已执行，脚本见证据）：

```sh
# 1) 建目录与权限（一次）
mkdir -p /data/local/tmp/t9_ui/{inbox,result,rejected}
chown 0:0 /data/local/tmp/t9_ui{,/inbox,/result,/rejected}; chmod 0755 /data/local/tmp/t9_ui
chmod 01733 /data/local/tmp/t9_ui/inbox; chmod 0755 /data/local/tmp/t9_ui/result; chmod 0700 /data/local/tmp/t9_ui/rejected
echo 10057 > /data/local/tmp/t9_ui/allowed_uids; chown 0:0 …; chmod 0644 …
# 2) 备份 + 换 worker/启动器 + 重启
sh /data/local/tmp/t9/t9_06/dev_21_deploy_worker_v2.sh
sh /data/local/tmp/t9/t9_06/dev_22_restart_worker.sh
```

回滚（一条命令）：

```sh
su -c "sh /data/local/tmp/t9/t9_06/t9_06_restore.sh"
# 恢复 T8-15.6 worker + 原启动器，删除 /data/local/tmp/t9_ui，重启 worker
# 加 --keep-ui-tree 则保留目录（但已验收启动器不传 --inbox，通道仍为关闭）
```

备份（部署时自动建立，`/data/local/tmp/t9/t9_06/backup/`）：`ai_worker.t8156`（`99dd4fc…`）、`run_ai_worker.sh.pre_t9_06`（`01f0652…`）。

---

## 7. 本次发现并修掉的两个实现缺陷（如实记录）

1. **接受/幂等语义弄反**：`tts_enqueue()` 返回 1 = 新入队、0 = 幂等命中，而 `ti_poll` 的约定是 0 = 接受、1 = 已存在，直接把返回值透传导致回执全部写成 `stage:"existing"`（虽然真的播了）。已在 `aiw_inbox_enqueue()` 里显式映射并注明。
2. **空文件风暴**：第一次测试用 `cat > file`（非原子写），worker 读到 0 字节文件后每轮都拒绝并记日志，几十秒内出现 1267 条 `rejected` 和 1267 行日志。修法：0 字节视为"写入中"先跳过（30 s 仍为空才拒绝），并给 inbox 日志加节流（变化或 ≥3 s 一条）。修复后同一套测试的日志只有 6 行。

---

## 8. 未做 / 未验证（不得当成已通过）

| 项 | 状态 |
|---|---|
| 用真实语音复验"唤醒→ASR→回答→连续对话" | [未] 本阶段未做（需要播报唤醒词），只验证了原厂会话仍被观察到、原厂 TTS 真实出声 |
| 多个 App 同时提交的抢占/公平性 | [未] 只测了单 UI + 速率/队列上限 |
| 进程被系统回收后 observer 是否还收状态 | [未] 需要前台服务，未做 |
| `rejected/` 目录的自动清理 | 未实现（避免删除证据；可人工清） |
| `result/` 历史文件的清理 | 未实现（每个 event_id 一个文件，量小；后续可加保留策略） |
| UI 的"产品级"交互（多行、历史、错误恢复） | 明确不在本阶段范围 |

---

## 9. 下一步建议（不启动 T9-07）

1. 若 T9-07 要做正式 UI：把 §3 的提交/回执/停止封装成一个 ~100 行的 `VoiceBridgeClient`（普通 App 侧），UI 只调它；通道本身不需要再改。
2. 加快捷的运维动作：`sh t9_06_restore.sh` 之外，建议加一个 `--cap N`、`--rate N` 的调参入口（现在靠环境变量 + 重启）。
3. 若要彻底摆脱 logcat：把 TtsExec 的完成判定迁到 `ContentObserver`（T9-05 已证明可行），单独立项、单独立回滚点。

---

# T9-06R1：私有 inbox（资源耗尽修复）+ 真实语音回归

基线 `74e5d412`。本轮只做两件事：把入口从"全设备可写"改成"UI 专属私有目录"，并补做真实语音闭环。

## R1.1 P1 的修复：入口不再对全设备开放

| 项 | T9-06 | T9-06R1 |
|---|---|---|
| `inbox/` | `01733 root:root`（任何 App 可创建） | **`0700 <ui_uid>`**（只有 UI 能进；root 照读） |
| 其他 App 投放 | 能写，靠 worker 逐个拒绝 | **连 `ls` 都 `Permission denied`**，根本到不了 worker |
| 外来 uid 文件 | 写回执 + 归档到 `rejected/` | **直接 unlink，不回执、不归档**（不再制造 root 文件） |
| 单轮处理量 | 无上限 | `--inbox-scan-cap`（默认 16） |
| `rejected/` | 无上限 | 裁剪到 `--inbox-rejected-max`（默认 32，按 mtime 删最旧） |
| `result/` | 无上限 | 裁剪到 `--inbox-result-max`（默认 128） |
| 限速 | 全局单窗口（注释却写按 UID） | **按提交 UID**（`ti_rate_slot`，表满时共享最后槽，只会更严） |

真机权限核验（`evidence/t9-06r1/10_deploy.txt`）：

```
drwx------ 2 u0_a57 u0_a57  inbox          <- 归属 UI uid，0700
--- as uid 10056 (other app):
sh: can't create /data/local/tmp/t9_ui/inbox/from_other_app.json: Permission denied
ls: /data/local/tmp/t9_ui/inbox: Permission denied
--- as uid 10057 (the UI):
write_ok
{"v":1,"event_id":"perm-proof","ok":true,"stage":"queue",...}
```

目录权限收紧后 **uid 白名单仍然保留**（纵深防御）：即使哪天有人把目录改宽了，外来 uid 的文件也只会被 unlink。

## R1.2 Host 测试：46 → 70 项

新增（`tests/t9_06_inbox_unit_test.c`）：

- **17** 外来 uid 一次投放 20 个文件 → 0 次回执、`rejected/` 空、全部 unlink、且按 scan cap 分批清空（不阻塞）
- **18** 40 个正常请求 + `scan_cap=8` → 每轮恰好 8 条，后续轮次不饿死，最终 40/40 全部入队
- **19** 10 个坏文件 + `rejected_max=3` → 拒绝 10 次、`rejected/` 被裁到 ≤3、计数 `pruned_rejected>0`
- **20** 10 个正常请求 + `result_max=3` → 接受 10 次、`result/` 被裁到 ≤3
- **21** 先 6 个垃圾文件再一个正常请求 → 正常请求仍被接受、文本正确、回执 `ok:true`
- 原 15（uid 白名单）改为断言"丢弃而非归档"，其余 45 项原样保留

```
T9-06 inbox unit tests: 70 passed, 0 failed
```

## R1.3 真机验收 A–G

| 项 | 结果 | 证据 |
|---|---|---|
| A 单条闭环 | 提交 `ui-…367743` → 回执 `ok:true stage=queue` → `status=1/2` → journal `ok 2667 ms` | `20_acceptance_ae.txt` |
| B 非白名单 UID | 10056 `Permission denied`（写与列目录都不行），worker 计数不变 | `10_deploy.txt`、`20_acceptance_ae.txt` |
| C 三条顺序 | 连续三次提交，按序播报 | `20_acceptance_ae.txt` |
| D 指定停止 | `stop` → `status=3`，journal `outcome=interrupted 3045 ms` | `20_acceptance_ae.txt` |
| E 后台提交 | HOME 之后提交仍 `ok`，状态照收 | `20_acceptance_ae.txt` |
| F **真实语音** | 主机播放 `r1.wake_time.wav` → 原厂 `onStartTalk session=1968827 wakeupWord=tian mao jing ling` → ASR → `skill=time.query` → 原厂 TTS `tts_id=5245631 outcome=ok 2063 ms` → 12 s 续听窗口 → CLOSED | `30_voice.txt` |
| G **原厂指令后续听** | 播放 `wake_voldown.wav` → `route=native intent=volume rule=volume.down` → 守卫 `continuity req seq=12715009 accepted (new) → firing after 1 ms → startTalk(type=1)` → **6 ms 后原厂 `onStartTalk session=1972952 wakeupType=1`**，会话持续约 8.3 s 后 `abortListen (continuity)` | `35_g_run3.txt` |

G 的两种观测值说明：worker 侧那行 `NOT confirmed within 5000 ms` 是它靠 `factory_talk.log` 做的**保守记账**；本轮该 tap 文件在 16:20 之后被日志轮转清空（重启 tap 后仍未恢复写入），所以记账模块看不到会话。能力本身由守卫日志 + 原厂会话日志双重证明：请求被接受、1 ms 内触发、6 ms 后原厂开出 continuity 会话。这是既有的可观测性脆弱点（T8-15.6 已记录过同类现象），**不是本轮引入的退化**。

## R1.4 回滚

- 新增 `android/t9_06r1_inbox_perms.sh`（权限部署，带 uid 参数）
- 回滚仍是一条命令：`sh /data/local/tmp/t9/t9_06/t9_06_restore.sh` —— 恢复 `ai_worker.t8156` + 原启动器，删掉 `/data/local/tmp/t9_ui`，重启 worker
- 本轮部署前额外保留了 `backup/ai_worker.t906`（T9-06 那版），需要只回退到 T9-06 时可用

## R1.5 仍然未验证 / 已知限制

| 项 | 状态 |
|---|---|
| `result/`、`rejected/` 的数量上限是**按文件数**，不是按字节 | 已知；单文件 ≤4 KB、上限 128/32，最坏约 0.5 MB |
| 白名单只允许一个 uid（`allowed_uids` 支持多行，但当前只写 10057） | 设计如此 |
| factory_talk tap 在日志轮转后可能停止写入，导致 worker 的 `CONFIRMED` 记账缺失 | 既有问题，本轮未改；能力本身有守卫/原厂双重日志证明 |
| 进程被系统回收后 observer 是否还收状态、多 App 并发公平性 | 未测（与 T9-06 相同） |
