# T8-10 NLU Hook 真机切换执行记录

执行时间：2026-11-22 20:07–20:12（设备 `192.168.1.9:5555`）。
基线提交：**`ab2f7414`**（`main`，T8-09.4）。
执行依据：[T8-09.2_NLU_SWITCH_PREFLIGHT.md](T8-09.2_NLU_SWITCH_PREFLIGHT.md) 的 S1–S10 与 R1–R5。

本轮把 `:core` 上运行的 **T6 Hook 切换为 T8 Hook**，并完成状态核验。
**未启用 NLU takeover、未执行 `--nlu-on`、未重编译、未替换任何已部署二进制。**

---

## 〇、结论摘要

| 步骤 | 内容 | 结果 |
|---|---|---|
| S1 | 设备身份 + 现场基线采集 | **通过**（PID 全部现场重新获取） |
| S2 | 停止旧 T6 Supervisor | **通过（含一处计划外处置，见 §二）** |
| S3 | 重启 `:core` | **通过**（`8342` → `30807`，< 1 s） |
| S4 | 等 TTS Guard 恢复 | **通过**（inode `86583`，`pid=30807 exit=0 hooked=1`，312 ms） |
| S5 | 无并发 Injector | **通过**（无 `tg_injector`；TracerPid 78/78 全 0） |
| S6 | 启动 T8 Supervisor | **通过**（pid `31289`，`inject end exit=0 hooked=1`，205 ms） |
| S7 | 映射核对 | **通过**（`/t8` inode `63251`；`/t7` inode `86583`；`/t6` hook 映射 0 条） |
| S8 | NLU 状态核验 | **通过**（`hook_installed=0 takeover=0 state_ready=1`，与预判一致） |

最终形态：**T6 文本转发链路（onStream）已在 T8 Hook 上重建并 `hooked=1`；NLU 入口补丁未安装、takeover=0、NLU 计数器全 0。**

---

## 一、S1 设备身份与切换前基线

### 1.1 身份

```
adb devices -l
192.168.1.9:5555  device product:full_ailabs_s1l model:AILABS_S1L device:ailabs_s1l transport_id:1

ro.product.model         -> AILABS_S1L
ro.build.version.sdk     -> 27
ro.build.version.release -> 6.1.8-RS-20221104.1459
getenforce               -> Permissive
```

与既有基线一致，继续执行。

### 1.2 进程（全部现场重新获取）

| PID | PPID | STIME | 进程与完整参数 |
|---|---|---|---|
| 8342 | 281 | 13:24:25 | `com.alibaba.ailabs.genie.smartapp:core` ← 目标 |
| 279 | 1 | 13:18:24 | `tg_supervisor --pidfile /data/local/tmp/t6/tg_supervisor.pid --log /data/local/tmp/t6/supervisor.log`（旧 T6，走默认 `/t6` 路径） |
| 4685 | 1 | 14:03:56 | `tg_supervisor --injector /data/local/tmp/t6/tg_injector --so /data/local/tmp/t7/libtg_ttsguard.so --name ...:core --pidfile /data/local/tmp/t7/ttsguard.sup.pid --log /data/local/tmp/t7/ttsguard.sup.log`（TTS Guard） |
| 2586 | 1 | 13:19:31 | `tgb_bridge --sock tgz2_asr_bridge --work-dir /data/local/tmp/t5_bridge/work` |
| 3468 | 1 | 14:02:40 | `ai_worker --work-dir ... --conf .../worker.conf --tts-queue-dir .../tts` |
| 17253 | 1 | 13:31:20 | `sh /data/local/tmp/t5_bridge/tts_supervisor.sh` |
| 17257 | 17253 | 13:31:20 | `app_process /system com.tgz02.tts.TtsExec --root .../tts --idle-ms 0 --timeout-ms 60000 --verbose` |

pidfile 交叉核对：`/t6/tg_supervisor.pid` = `279`、`/t7/ttsguard.sup.pid` = `4685`，与 `ps` 一致。

TTS 队列态：`queue_depth=0 inflight_depth=0 done=268 failed=5 played=21 ok=18`，无积压。

### 1.3 模块映射（`/proc/8342/maps`，2 628 行，快照 `evidence/t8-10/maps_pre_8342.txt`）

```
938f6000-938fa000 r-xp 00000000 b3:16 86583  /data/local/tmp/t7/libtg_ttsguard.so
938fa000-938fb000 r--p 00003000 b3:16 86583  /data/local/tmp/t7/libtg_ttsguard.so
9655e000-96563000 r-xp 00000000 b3:16 78644  /data/local/tmp/t6/libtg_hook.so
96563000-96564000 r--p 00004000 b3:16 78644  /data/local/tmp/t6/libtg_hook.so
96564000-96565000 rw-p 00005000 b3:16 78644  /data/local/tmp/t6/libtg_hook.so
```

即切换前为 **T6 Hook（inode 78644）+ TTS Guard（inode 86583）**，无 `/t8` 映射。

### 1.4 部署产物完整性（未改动）

| 文件 | SHA256 |
|---|---|
| `/t6/tg_supervisor` | `17dec6e079d7d2efd74cd6d2c49e04436d1b6d56a648024ca0f1986c646c2fa0` |
| `/t6/tg_injector` | `4d13af84d4c04898f7dd59668e5a38354c4a4b6a202a7b1477ef077323e9f677` |
| `/t6/libtg_hook.so` | `b838a731392938b0038355c3ee42af7870e6db4d4b35ef0c78d2dc36c07e67b6` |
| `/t7/libtg_ttsguard.so` | `6d989d8d3ea4e89491dd5348c1b1e70a965b62626fc01acf062e2d8dd983b842` |
| `/t8/libtg_hook.so` | `5be226901fb11d3ab5ff81410f43d834b72b7f9243d1ded58550bb0ac8138f85` |
| `/t8/tg_injector` | `add2c25d6bdd47824c4a9276c1eb81cfd3c71c79cbd06c3adefdc8e0a3412f24` |

与 T8-08/T8-09 记录逐字节一致。

---

## 二、S2 停止旧 T6 Supervisor（含计划外处置）

### 2.1 按任务书执行的部分

1. 读 `/data/local/tmp/t6/tg_supervisor.pid` → `279`；
2. `ps` 核对：PID `279`、`Name: tg_supervisor`、`Uid: 0`、cmdline 仅 `--pidfile/--log` 且指向 `/t6` → 确认为旧 T6 实例；
3. `kill -TERM 279`；
4. 3 s 后 `/proc/279` 消失，日志末行为
   `2026-11-22 20:08:11.861 sup: already hooked: pid=8342 (state=1); skip install`。

### 2.2 计划外发现：init 会自动重启它

信号发出后 **20:08:10 出现新的 `tg_supervisor` PID `30246`**，参数与 279 完全相同（同样 `/t6` pidfile/log）。

根因：本机存在 **init 服务定义** `/system/etc/init/tg_supervisor.rc`（2114 B，`sha256=cdd947509c15b3b5facc0794529294ff94ab069ec1f0c20164fd27cfe414ec34`）：

```
service tg_supervisor /data/local/tmp/t6/tg_supervisor --pidfile /data/local/tmp/t6/tg_supervisor.pid --log /data/local/tmp/t6/supervisor.log
    class late_start
    user root
    group root system
    seclabel u:r:init:s0
    disabled

on post-fs-data
    start tg_supervisor
on property:sys.boot_completed=1
    start tg_supervisor
```

`disabled` 只禁止随 class 自动启动；**一旦被 `start` 过，进程退出后 init 会按服务语义重新拉起**。所以任务书里"`kill <PID>` 即可让旧 Supervisor 退出"这一步在本机会被 init 抵消——单纯 SIGTERM 无法得到"没有 T6 Supervisor"的状态。

### 2.3 处置（外科式，未使用 `disable_rc.sh`）

仓库自带的 `/t6/disable_rc.sh` **不能直接用**：它执行 `kill -TERM $(pidof tg_supervisor)`，而 TTS Guard Supervisor（`4685`）是**同一个二进制** `tg_supervisor`，会被一起杀掉，违反"不得杀死 TTS Guard Supervisor"。

实际执行：

```
su -c 'setprop ctl.stop tg_supervisor'
```

结果：

| 检查项 | 结果 |
|---|---|
| `getprop init.svc.tg_supervisor` | `stopped` |
| `pidof tg_supervisor` | `4685`（仅 TTS Guard，T6 实例 `30246` 已随服务停止退出） |
| TTS Guard `4685` | 存活 |
| `:core` `8342` | 存活，`State: S`，`Threads: 87` |
| `:core` 映射 | `86583`（2 段）+ `78644`（3 段）**未变**，快照 `evidence/t8-10/maps_after_s2_8342.txt` |
| `pidof tg_injector` | 空 |
| `/system/etc/init/tg_supervisor.rc` | **未改动**（仍在原位，哈希同 2.2） |

**没有修改 `/system`、没有删除任何 rc 文件**，因此回滚只需 `setprop ctl.start tg_supervisor`。

---

## 三、S3 重启 `:core`

```
20:09:30  核对 /proc/8342/cmdline = com.alibaba.ailabs.genie.smartapp:core，PPid 281
20:09:30  su -c 'kill -9 8342'
20:09:30  新进程出现：30807  ppid=281  STIME=20:09:30  com.alibaba.ailabs.genie.smartapp:core
```

新 `:core` 在 0.8 s 内被拉起，远小于 30 s 上限，未触发任何重试逻辑，无需人工点图标。
新进程 `Threads: 76`。

---

## 四、S4 TTS Guard 恢复

| 判据 | 实测 |
|---|---|
| 新 `:core` 映射存在 `/t7/libtg_ttsguard.so` | 是 |
| inode = `86583` | 是（`9641c000-96420000 r-xp ... 86583`、`96420000-96421000 r--p ... 86583`） |
| 日志含本轮新 PID 成功记录 | `2026-11-22 20:09:33.749 sup: inject end: pid=30807 exit=0 hooked=1 elapsed=312ms ok` |
| 日志时间晚于新 `:core` 启动时间 | 20:09:33.749 > 20:09:30 ✓ |

注入细节：`paused 33 other threads`、`patch_range=[0x97ae7110,0x97ae7b04)`、`tg_hook_install() = 0`、`hook_status=0 hooked=1`。
耗时 312 ms，未超 30 s。

---

## 五、S5 确认不存在其他 Injector

| 检查 | 结果 |
|---|---|
| `ps` 中无 `tg_injector` 进程 | 通过（唯一匹配项是 TTS Guard Supervisor 的参数串 `--injector /data/local/tmp/t6/tg_injector`，不是 injector 进程） |
| `pidof tg_injector` | 空 |
| `/proc/30807/task` 线程总数 | 78 |
| 逐线程 `TracerPid` 覆盖数 | 78（**78 == 78**） |
| 非 0 / `MISSING` / `READFAIL` | 0 条 |

使用的判定形式（与 T8-09.4 定稿一致，glob 展开整批线程，覆盖率即正确性）：

```
su -c 'ls -1 /proc/30807/task | wc -l'                                   # 78
su -c 'grep -H ^TracerPid: /proc/30807/task/*/status'                    # 78 行，全部 TracerPid: 0
su -c 'grep -H ^TracerPid: /proc/30807/task/*/status' | grep -v 'TracerPid:[[:space:]]*0'   # 无输出
```

`grep -H` 只输出命中的文件，因此"行数 < 线程数"本身就等价于"有线程没被读到"，覆盖率缺口必然被发现，不需要额外的 `MISSING` 标记。

---

## 六、S6 启动 T8 Supervisor

```
20:09:57  su -c 'nohup /data/local/tmp/t6/tg_supervisor \
            --injector /data/local/tmp/t8/tg_injector \
            --so /data/local/tmp/t8/libtg_hook.so \
            --name com.alibaba.ailabs.genie.smartapp:core \
            --pidfile /data/local/tmp/t8/tg_supervisor.pid \
            --log /data/local/tmp/t8/supervisor.log \
            >/dev/null 2>&1 &'
```

日志（`/data/local/tmp/t8/supervisor.log`，36 行）：

```
20:09:57.861 sup: start pid=31289 target=...:core injector=/data/local/tmp/t8/tg_injector agent=/data/local/tmp/t8/libtg_hook.so interval=500ms retry=2000ms max=60000ms
20:09:57.869 sup: pidfile=/data/local/tmp/t8/tg_supervisor.pid acquired (single instance)
20:09:57.883 sup: target found: pid=30807 starttime=2467080 argv_extra=1 cmdline=...:core
20:09:57.886 sup: target ready: pid=30807 libsmartbox.so is mapped
20:09:57.954 sup: check done: pid=30807 exit=0 hooked=-1 state=unknown
20:09:57.954 sup: inject begin: pid=30807 attempt=1 injector=/data/local/tmp/t8/tg_injector
20:09:58.160 sup: inject end: pid=30807 exit=0 hooked=1 elapsed=205ms ok
```

注入细节：`already_mapped=0`、`attached tid=30807`、`dlopen ok handle=... flags=0x2`、
`patch_range=[0x97adb53c,0x97adb544)`、`paused 77 other threads`、`tg_hook_install() = 0`、
`hook_status=0 hooked=1`、`stats=... sender=1 spawns=1 ...`。

- `patch_range` 起址 `0x97adb53c` = `libsmartbox.so` 基址 + `0x11353c`（`SessionManager::onStream`，原厂首 4 字节 `0xE92D4FF0` → 8 字节补丁），与 T8 设计一致。
- `77 other threads` + `1 exec` = 78，与 S5 的 78 线程一致。
- `sender=1 spawns=1`：T6 的文本转发线程已在新进程内重建。

`hooked=-1 state=unknown` 是注入前的基线查询（此时库尚未映射），属预期。

---

## 七、S7 核对实际映射

`/proc/30807/maps`，2 563 行，快照 `evidence/t8-10/maps_s7_30807.txt`、`maps_post_s8_30807.txt`：

```
955a1000-955b4000 r-xp 00000000 b3:16 63251  /data/local/tmp/t8/libtg_hook.so
955b4000-955b5000 r--p 00012000 b3:16 63251  /data/local/tmp/t8/libtg_hook.so
955b5000-955b6000 rw-p 00013000 b3:16 63251  /data/local/tmp/t8/libtg_hook.so
9641c000-96420000 r-xp 00000000 b3:16 86583  /data/local/tmp/t7/libtg_ttsguard.so
96420000-96421000 r--p 00003000 b3:16 86583  /data/local/tmp/t7/libtg_ttsguard.so
```

| 判据 | 结果 |
|---|---|
| `/t8/libtg_hook.so` inode `63251` | 是，3 段（r-xp / r--p / rw-p） |
| `/t7/libtg_ttsguard.so` inode `86583` | 是，2 段 |
| 存在旧 `/t6/libtg_hook.so` 映射 | **0 条**（`Select-String "/t6/"` 计数 = 0） |
| 重复 Hook 实例 | 无（`63251` 只有一组连续 3 段） |

---

## 八、S8 NLU 状态核验

### 8.1 `--check`（20:10:16，exit 0）

```
[inject] already_mapped=1 (/data/local/tmp/t8/libtg_hook.so)
[inject] attached tid=30807
[inject] dlopen ok handle=0xc2e591bb flags=0x6
[inject] patch_range=[0x97adb53c,0x97adb544)
[inject] hook_status=0 hooked=1
[inject] stats=state=0 hooked=1 sender=1 spawns=1 seen=0 final=0 queued=0 ...
[inject] RESULT check pid=30807 hooked=1
```

`flags=0x6` = `RTLD_NOW|RTLD_NOLOAD`，即"只查询不重新加载"。

### 8.2 `--nlu-status`（20:10:17，exit 0）

```
[inject] nlu dlsym: prepare=0x955a4a9c install=0x955a4cd0 takeover_set=0x955a5828
[inject] nlu entry=0x97ae0ebc patch=[0x97ae0ebc,0x97ae0ec4)
[inject] nlu hook_installed=0 takeover=0 state_ready=1
[inject] nlu entry_code=np{state=none func=0x97ae0ebc}
[inject] nlu stats=nlu installed=0 takeover=0 mode=pass ready=1 ... prot_state=-1 prot_ok=0 prot_fails=0 ...
        enabled=0 active=0 marked=0 passed=0 dropped=0 unknown=0 overflow=0 degraded=0 failclosed=0
        nlp_calls=0 nlp_skip=0 nlp_pass=0 nlp_failclosed=0
[inject] RESULT nlu-status ok installed=0 takeover=0
```

| 项 | 期望（T8-09.2 §4.1 S9） | 实测 | 判定 |
|---|---|---|---|
| `hooked` | 1 | 1 | 一致 |
| `hook_installed` | 0 | 0 | 一致 |
| `takeover` | 0 | 0 | 一致 |
| `state_ready` | 1 | 1 | 一致 |
| `prot_state` | -1 | -1 | 一致（已知 P2：`tg_nlu_prot_*` 未接入 injector，非本轮引入） |
| `nlu entry` | `0x118ebc` + 基址 | `0x97ae0ebc`（`SessionDispatch::onNlpResult`） | 一致 |
| `entry_code` | 未打补丁 | `np{state=none}` | 一致 |
| NLU 业务计数 | 全 0 | 全 0 | 一致 |

**结论：T8 Hook 已在真机加载并接管 T6 文本转发（`hooked=1`），NLU 入口补丁未安装、takeover 关闭、NLU 侧零流量，符合"只加载不启用 takeover"的本轮目标。**

两次查询各执行一次 attach + 远程调用（必要时 `dlopen NOLOAD`），耗时均在 100 ms 量级，`detached (target thread resumed)` 正常收尾。

---

## 九、S8 后稳定性复核

| 检查 | 结果 |
|---|---|
| `:core` `30807` 存活 | `State: S`，`Threads: 74`（JVM 线程自然浮动 76→79→74） |
| 逐线程 `TracerPid` | 79/79（复核时刻）全 0，无异常 |
| `pidof tg_injector` | 空 |
| Supervisor 数量 | 2 个，各司其职：`4685`（TTS Guard，`--so /t7`）、`31289`（T8，`--so /t8`） |
| 映射 | 30 s 后复查仍为 `63251` + `86583`，`/t6` 计数 0 |
| `init.svc.tg_supervisor` | `stopped`（T6 未复活） |
| 30 s 观察窗内 `/t8/supervisor.log` | 无新增行（末行仍是 `20:09:58.160 inject end ... ok`），无报错 |
| `ttsguard.sup.log` | 自 `20:09:33.749` 后无新行（没有被重复注入） |

---

## 十、受保护基线核对

| 组件 | 状态 |
|---|---|
| 原厂 KWS / VAD / ASR | 未触碰（本轮无任何相关操作） |
| T6 ASR 文本转发 | **已在新 `:core` 内重建**：`hooked=1`、`sender=1 spawns=1`，`patch_range` 指向 `onStream` |
| T5 Bridge `2586` | 存活（PID/启动时间未变） |
| AI Worker `3468` | 存活（PID/启动时间未变） |
| TTS 执行器 `17257` + `tts_supervisor.sh 17253` | 存活（PID/启动时间未变） |
| TTS Guard `4685` + `/t7/libtg_ttsguard.so` | 存活，inode `86583` |
| 本地/AI 指令路由规则 | 未改任何配置 |
| 原厂抢答屏蔽机制 | 未触碰 |

未修改 Worker / Bridge / TTS Guard 的源码或配置；未改 `/t6`、`/t7`、`/t8` 内任何二进制（哈希见 §1.4）；未重编译；未执行 `--nlu-on`；未同时运行两个面向 `:core` 的注入 Supervisor。

---

## 十一、遗留问题与回滚

### 11.1 本轮产生的状态变化

1. `:core` 由 `8342` 变为 `30807`（用户已批准重启）。
2. Hook 由 `/t6/libtg_hook.so`（inode 78644）变为 `/t8/libtg_hook.so`（inode 63251）。
3. 旧 T6 Supervisor 进程消失，其 init 服务处于 `stopped`。
4. 新增 T8 Supervisor `31289`（`/t8` pidfile + `/t8` log）。

### 11.2 回滚（需要时）

同 basename 不同路径会导致 `dlopen(NOLOAD)` 返回 NULL → injector exit 17，因此**回滚必须重启 `:core`**，顺序为：停 T8 Supervisor → `setprop ctl.start tg_supervisor`（恢复 T6，init 拉起 `/t6` 实例）→ `kill -9 :core` → 等新进程 → 等 TTS Guard 恢复 → 逐线程 `TracerPid` 检查 → 确认 T6 Hook 已重新映射。详见 T8-09.2 §三 R1–R2。

### 11.3 未解决项

1. **开机后 T6 会复活**：`/system/etc/init/tg_supervisor.rc` 仍在原位（本轮刻意不动）。若期间设备重启，init 会在 `post-fs-data`/`boot_completed` 再拉起 `/t6` 实例，与 T8 Supervisor 并存。**下次重启前必须先决定 rc 策略**（移出 `/system/etc/init/` 或改指向 `/t8`）。
2. **T8 Supervisor 的重注入行为未验证**：本轮未再次重启 `:core`，因此"`31289` 发现新 pid 后自动注入 `/t8`"这条路径仍未在真机走通。
3. 已知 P2（非本轮引入）：`run_t8_01_host_tests.ps1` 引用已删除的用例、任务表字段名 `tg_nlu_installed` 与实现 `tg_nlu_hook_installed` 不一致、`tg_nlu_prot_state/prot_text/prot_restore` 未接入 injector（即 `prot_state=-1`）、`build_nlu_stub_page` 忽略 `munmap` 返回值。

---

## 十二、证据文件

`my-doc/07_ai_bridge/evidence/t8-10/`：

| 文件 | 内容 |
|---|---|
| `maps_pre_8342.txt` | S1 切换前 `:core` 完整 maps（2 628 行） |
| `maps_after_s2_8342.txt` | S2 停止 T6 Supervisor 后的 maps（对照未变） |
| `maps_s4_30807.txt` | S4 新 `:core` TTS Guard 恢复后 maps |
| `maps_s7_30807.txt` | S7 注入后 maps（2 563 行） |
| `maps_post_s8_30807.txt` | S8 查询后 maps（复核） |
| `t8_supervisor.log.txt` | `/data/local/tmp/t8/supervisor.log` 全文（36 行） |
| `ps_after_sigterm.txt` | S2 时段全进程快照（256 行） |

线程数一律由 `ls -1 /proc/<pid>/task | wc -l` 计数（本机 toolbox `ps -T` 只列主线程，不可用于线程统计）。
