# T8-15.6 开机作用域与自启动修复

- 仓库：`iyim/tgz02`，基线提交 `ec9cfa7f`（T9-01/T9-02 报告）
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root
- 作业时间：2026-11-24 12:23 – 12:35（CST）
- 目标：修掉 T9-01 §8 记录的两个缺陷（遗留 rc 抢注入、跨重启状态文件失效），并把“重启后整套栈不自启”一并补上
- 边界：不动原厂 APK/DEX/SO、不动原厂配置与数据；只改我们自己的 guard/worker 代码、我们自己的 rc 与脚本

---

## 1. 结论

| 缺陷 | 修法 | 真机结果 |
|---|---|---|
| A. 跨重启请求序号失效（`continuity.req` 的单调时钟值被当成基线） | guard 启动时只在 `[now-120 s, now+1.5 s]` 内采纳基线，范围外的旧值不建基线、只记日志 | 重启后 `CONFIRMED (+209 ms)`；复现实验中 guard 打印 `request baseline 150289540 ignored (implausible now=290667 …)`，基线保持 `-1`，下一条合法请求 `accepted (first)` 并 `firing` |
| B. 跨重启 listen_hold 失效（上一开机的截止时间挡掉自动续听） | guard 侧 `tg_hold_value_stale()`（>5 min 视为上一开机写的，忽略并记日志）＋ worker 启动时删除这种假 hold | guard：`hold value 150108070 is stale (41.7 h ahead of now) - ignoring`；worker：`listen hold: removed stale expiry 150255250 (written before this boot)`，文件被删除 |
| C. 重启后整套栈不自启，且遗留 rc 把 T6 旧 hook 注入 `:core` | 用 `tg_stack.rc` 替换 T6 的 `tg_supervisor.rc`：两个 supervisor（T8 hook + T8-15.6 guard）＋ 一个 oneshot 脚本拉起 bridge/tts/worker/tap | 重启后无人操作：`:core` 1150 里只有 `libtg_hook.so` + `libtg_ttsguard_t8156.so`，bridge 1602 / tts 2311+2331 / worker 2543 / tap 2639 全在；`boot_stack.log` 12:28:26–12:28:57 有完整记录 |

主机侧：新单测 47/47 通过、0 warning；T8-15.5 旧单测回归 51/51 通过；ARM32 构建 0 warning。

---

## 2. 缺陷 A：请求序号的开机作用域

### 2.1 根因（代码层面）

`libtg_ttsguard.c` 的续听线程启动时直接 `tg_req_read()` 把文件里的数字当基线：

```c
if (tg_req_read(g_cont_file, &req.last_seq) == 0) {          /* 旧代码 */
    slog("continuity: request baseline seq=%lld", req.last_seq);
}
```

worker 写的 seq 是 `CLOCK_MONOTONIC` 毫秒，重启回零。于是重启后基线停在上一开机的 `166673741`，worker 写的 `594568` 落进 “below baseline” 被静默 rebase —— 真机表现就是**重启后续听永久失效**（T9-02 实测日志）。

### 2.2 修法

`android/tg_req_seq.h`（worker 与 guard 共用的那一份头文件）新增：

```c
static inline int tg_req_plausible(long long seq, long long now_ms)
{
    if (seq < TG_REQ_MIN_SEQ) return 0;
    if (seq > now_ms + TG_REQ_CLOCK_SLACK_MS) return 0;      /* +1.5 s */
    if (seq + TG_REQ_CLOCK_STALE_MS < now_ms) return 0;      /* -120 s */
    return 1;
}
```

guard 启动改成“说得通才当基线”：

```c
if (tg_req_read(g_cont_file, &boot_seq) == 0) {
    if (tg_req_plausible(boot_seq, mono_ms())) { req.last_seq = boot_seq; slog("...baseline seq=%lld", boot_seq); }
    else slog("...baseline %lld ignored (implausible now=%lld: written before this boot) - first valid seq will fire", ...);
}
```

**没有**恢复 T8-15.5R 删掉的“时钟回退自动重置”：运行期规则原样保留（倒退只静默 rebase、绝不开麦），只有启动那一刻才判断“这个值是不是这次开机写的”。所以“同一个异常旧值读两次就开麦”的老问题不会回来——新单测 D 段专门守这条。

### 2.3 真机证据

**(a) 真实重启后的正向结果**（12:29:30，重启后第一次原生指令）：

```
factory wake (onStartTalk): session=1966899 wake_type=0
route=native intent=volume rule=volume.down …
continuity request: seq=83439 sent (after native command) n=1 - waiting for factory session
continuity request: CONFIRMED by factory session=1970999 (+209 ms)
factory wake (onStartTalk): session=1970999 wake_type=1
```

修复前同场景是 `seq=774732 … hold active for 153440578 ms more` / `below baseline`，从不成功。

**(b) 可复现的启动判定**（12:33，把“上一开机的值”写回请求文件再重启 `:core`）：

```
continuity: request baseline 150289540 ignored (implausible now=290667: written before this boot) - first valid seq will fire
continuity req: seq=150289540 rejected (in the future; baseline=-1, now=290667) - not a request written just now
（随后写入这次开机的合法值）
continuity req: seq=303220 accepted (first) -> pending (attempt window 2500 ms)
continuity req: seq=303220 firing after 1 ms
continuity: worker-request seq=303220 startTalk(type=1, info+0=1) -> 0 (n=1 ok=0)
```

最后一行 `-> 0` 是原厂在**没有对话会话**（wake-word standby）时拒绝 continuity 开麦，属既有边界（见 §5），与本次修复无关；同一份 guard 在有会话窗口时是 `CONFIRMED (+209 ms/+270 ms)`。

证据：`evidence/t8-15.6/05_seq_boot_scope_acceptance.txt`。

---

## 3. 缺陷 B：listen_hold 的开机作用域

### 3.1 根因

worker 写 `listen_hold` 的值是 `now_mono + hold_ms`（stop 20 s / exit 60 s）。重启后单调时钟回零，这个值变成“1.7 天后到期”，guard 的 `hold_active()` 一直为真，所有自动续听被 `stop/exit hold` 丢掉。

### 3.2 修法（两侧）

```c
/* tg_req_seq.h */
#define TG_HOLD_HORIZON_MS  300000LL          /* 5 min = 我们写过的最长 hold(60 s) 的 8 倍 */
static inline int tg_hold_value_stale(long long until_ms, long long now_ms)
{ return until_ms > 0 && (until_ms - now_ms > TG_HOLD_HORIZON_MS); }
```

- guard `hold_active()`：先判 stale，stale 就 `return 0` 并每 5 s 记一条日志（不再挡）；
- worker 启动：`aiw_clear_stale_hold()` 用同一个判据把这种假 hold **删掉**，日志 `listen hold: removed stale expiry …`。

方向性说明：忽略过期 hold 的最坏后果只是多开一次麦，而留着它的后果是功能永久失效；而“用户说停止”这类真实 hold 只有 20/60 s，离 5 min horizon 很远，不会被误判。

### 3.3 真机证据

guard 侧（12:30:00，人工塞入 `now+150000000`）：

```
continuity req: seq=109270 accepted (new) -> pending (attempt window 2500 ms)
continuity: hold value 150108070 is stale (41.7 h ahead of now) - ignoring, it was written before this boot
continuity req: seq=109270 firing after 0 ms
```

worker 侧（12:32，塞入假 hold 后重启 worker）：

```
listen hold: removed stale expiry 150255250 (written before this boot)
$ ls /data/local/tmp/t5_bridge/ai_worker/listen_hold
No such file or directory
```

证据：`evidence/t8-15.6/06_hold_boot_scope_acceptance.txt`、`07_worker_stale_hold_cleanup.txt`。

---

## 4. 缺陷 C：自启动与遗留 rc

### 4.1 旧 rc 的问题（T9-01 §8.1 记录）

`/system/etc/init/tg_supervisor.rc`（T6 时代）启动一个不带 `--so` 的 supervisor → 用编译默认 `/data/local/tmp/t6/libtg_hook.so`，而且这个 service **非 oneshot**，被 kill 后 init 立刻重新拉起。结果每次开机 `:core` 里是 T6 旧 hook，验收过的 `t8/libtg_hook.so` 注入失败（`RTLD_NOLOAD`，exit=17）。

### 4.2 新方案：`/system/etc/init/tg_stack.rc`

```ini
service tg_hook_sup  … --so /data/local/tmp/t8/libtg_hook.so            (class late_start, user root, seclabel u:r:init:s0, disabled)
service tg_guard_sup … --so /data/local/tmp/t7/libtg_ttsguard_t8156.so  (同上)
service tg_stack /system/bin/sh /data/local/tmp/t5_bridge/boot_stack.sh (oneshot, 同上)

on property:sys.boot_completed=1
    start tg_hook_sup
    start tg_guard_sup
    start tg_stack
```

- 仓库内模板：`android/boot/tg_stack.rc`、`android/boot/boot_stack.sh`
- 部署/回滚脚本：`android/boot/deploy_boot_rc.sh`、`android/boot/rollback_boot_rc.sh`
- 部署时把旧文件**移出** `/system/etc/init`（本机 init 会解析该目录下每个普通文件，改名不算停用），旧文件备份在 `/data/local/tmp/t9/rc_backup/tg_supervisor.rc`（`sha256 cdd94750…4ec34`）
- `boot_stack.sh` 只做四件事：等 `:core` → 等我们的 `.so` 映射上 → `run_bridge.sh start` / `run_tts_exec.sh start` / `run_ai_worker.sh start` / `start-tap` → 打一条进程快照；全部幂等（重复执行只会打印 “already running”）

### 4.3 真机结果：重启后无人干预

```
[12:28:26] === boot_stack start pid=1148 ===
[12:28:26] core=1150 after 0s
[12:28:30] our .so mapping lines in :core = 6
[12:28:32] bridge: started: pid=1602 …
[12:28:49] tts:    started: supervisor=2311 executor=2331
[12:28:52] worker: started: pid=2543 …
[12:28:54] tap:    tap started: pid=2639 …
[12:28:57] processes: 1146 tg_supervisor| 1147 tg_supervisor| 1602 tgb_bridge| 2331 app_process| 2425 logcat| 2543 ai_worker| 2639 logcat|
[12:28:57] === boot_stack done ===
```

`:core` 1150 的注入结果（只有验收过的那一对，没有 T6 hook）：

```
/data/local/tmp/t7/libtg_ttsguard_t8156.so
/data/local/tmp/t8/libtg_hook.so
```

init 服务状态：`init.svc.tg_hook_sup=running`、`init.svc.tg_guard_sup=running`、`init.svc.tg_stack=stopped`（oneshot 跑完即 stopped，属正常）、旧的 `init.svc.tg_supervisor` 已不存在。

重启后整链路复测（12:31:00–12:31:37，无人工操作）：

```
12:31:00 factory wake session=1966925 wake_type=0
12:31:04 route=skill skill=time.query … tts queued
12:31:06 factory wake session=1971026 wake_type=1        （guard 自动续听）
12:31:31 factory wake session=1966934 wake_type=0        （音量指令）
12:31:35 route=native intent=volume … continuity re-listen scheduled in 1200 ms
12:31:37 continuity request: seq=205108 … CONFIRMED by factory session=1971034 (+270 ms)
```

证据：`evidence/t8-15.6/03_boot_stack_bringup.txt`、`04_rc_state_and_hashes.txt`、`08_chain_after_unattended_boot.txt`。

---

## 5. 本次观察到的既有边界（不是本次引入）

1. **continuity 开麦只在对话窗口内有效**：设备处于 wake-word standby 时 `startTalk(type=1, …)` 返回 0（`-> 0`），只有在会话刚结束的窗口里才成功（真机 `CONFIRMED +206…+270 ms`）。这解释了 §2.3(b) 最后一行。
2. **开机后约 22 s 原厂自己开了一段 `wakeupType=1` 会话**（12:28:48，`wakeupWord` 为空，8.9 s 后 `reason = normal` 结束）。现有日志无法判定这是原厂开机行为还是我们 guard 的 auto 触发，记录在案，不臆测、也不在本次修改里处理。
3. `:core` 每次换 `.so` 仍需重启一次（活进程二次注入会因 `playTts` 序言被改写而失败）。

---

## 6. 变更与产物

| 文件 | 变更 |
|---|---|
| `android/tg_req_seq.h` | 新增 `tg_req_plausible()`、`TG_HOLD_HORIZON_MS`、`tg_hold_value_stale()` |
| `android/hook_tts/libtg_ttsguard.c` | 启动基线改为“说得通才采纳”；`hold_active()` 增加 stale 判定与日志 |
| `android/ai_worker.c` | 启动时 `aiw_clear_stale_hold()` 删除跨开机的假 hold |
| `android/boot/tg_stack.rc` | 新增：两个 supervisor + 一个 oneshot bring-up |
| `android/boot/boot_stack.sh` | 新增：等 `:core`/等注入/拉起 bridge-tts-worker-tap |
| `android/boot/deploy_boot_rc.sh`、`rollback_boot_rc.sh` | 新增：部署/回滚 |
| `tests/t8_156_boot_scope_unit_test.c` + runner | 新增 47 项主机单测 |
| `evidence/t8-15.6/…` | 9 个原始证据文件 |
| `T9_01_…md`、`T9_02_…md` | 各加一行“后续修复见 T8-15.6”指针 |

构建与单测：

| 项目 | 结果 |
|---|---|
| 主机单测（新） | 47/47 PASS，0 warning |
| 主机单测（T8-15.5 回归） | 51/51 PASS |
| ARM32 `libtg_ttsguard.so` | 42,712 B，sha256 `67d96b38870bb540a9d7f11b6e902739e5b2fcb92eaacb095e5d3d7bde0cf9e0`（部署为 `/data/local/tmp/t7/libtg_ttsguard_t8156.so`） |
| ARM32 `ai_worker` | 278,168 B，sha256 `99dd4fcdf0231fa2a2fa8c7906b8ff55edbf0eff2568030753ad97f52f17489e`（旧版保留为 `bin/ai_worker.t8155r`） |
| 构建告警 | 0 |

部署现状（真机）：

```
/system/etc/init/tg_stack.rc          sha256 190f611ca8e9e1aa8fe9729fdd23da58da76cd87984c44736de940fa53fd2b15
/data/local/tmp/t7/libtg_ttsguard_t8156.so   (在 :core 内已注入)
/data/local/tmp/t5_bridge/bin/ai_worker      (运行中)
/data/local/tmp/t5_bridge/boot_stack.sh      1961 B, 0755
init.svc.tg_hook_sup=running / tg_guard_sup=running / tg_stack=stopped(oneshot)
```

回滚路径（任一都可用）：

1. 只回滚 guard：`sh /data/local/tmp/t7/... ` 换回 `libtg_ttsguard_t8155r.so` 并重启 `:core`（旧文件仍在设备上）；
2. 只回滚 worker：`cp bin/ai_worker.t8155r bin/ai_worker && sh run_ai_worker.sh stop && sh run_ai_worker.sh start`；
3. 回滚自启动：`su -c "sh /data/local/tmp/t9/rollback_boot_rc.sh"` 然后重启（恢复 T6 rc；设备不会因为少了这些文件而无法开机）。

---

## 7. 证据索引

| 文件 | 内容 |
|---|---|
| `evidence/t8-15.6/01_host_unit_test.log` | 47 项主机单测（A 窗口判定 / B 启动基线策略 / C hold 判定 / D 运行期规则回归） |
| `evidence/t8-15.6/02_arm32_build.log` | ARM32 构建、sha256、readelf Machine=ARM、0 warning |
| `evidence/t8-15.6/03_boot_stack_bringup.txt` | 重启后 `boot_stack.log` + 注入结果 + init 服务状态 |
| `evidence/t8-15.6/04_rc_state_and_hashes.txt` | `/system/etc/init` 现状、备份、`:core` 注入、二进制哈希 |
| `evidence/t8-15.6/05_seq_boot_scope_acceptance.txt` | 缺陷 A 的可复现启动判定 + 合法请求被受理 |
| `evidence/t8-15.6/06_hold_boot_scope_acceptance.txt` | 缺陷 B 的 guard 侧（stale hold 被忽略） |
| `evidence/t8-15.6/07_worker_stale_hold_cleanup.txt` | 缺陷 B 的 worker 侧（删除假 hold） |
| `evidence/t8-15.6/08_chain_after_unattended_boot.txt` | 重启后无人工操作的完整链路（skill / 原生 / 续听 CONFIRMED） |
| `evidence/t8-15.6/09_guard_worker_swap.txt` | 新 guard/worker 上线与 `:core` 重启注入过程 |
