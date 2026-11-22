# T7-06-R1：采集权限、回调轻量化、ASR 恢复与唤醒关联报告

- 仓库 `iyim/tgz02`，分支 `main`，基线 `bb9b567afb6c77f086fef31e7bcdd03daaff2711`
- 设备：TG-Z02（`AILABS_S1`，Android 8.1 / SDK 27，`armeabi-v7a`，`192.168.1.9:5555`）
- 本轮不写 CDM、不调 `startTalk`、不实现方案 D，也不动 `runtime.xml` / `dialog.cfg` / 唤醒参数 / 系统镜像

## 0. 结论一览

| 项目 | 状态 | 证据 |
|---|---|---|
| §二 采集权限 0700/0600、按自身 UID 建目录 | 已实现并上机 | `drwx------ system system`、`-rw-------`；状态里 `uid=1000 dir_mode=0700 file_mode=0600`；`evidence/t7_06r1_device_permissions.log` |
| §二 旧文件/旧目录不只不管 | 已实现 | `wake_store.c` 决策：别人的 → 改名归档让开；自己的过宽 → chmod；主机 14 断言 |
| §三 回调轻量化（不 pipe、不 IO、不 JSON、不等锁） | 已实现并上机 | 回调只做 `process_vm_readv` 拷贝 + 入队；实测 `cb_us max=28 avg=16`（10 次唤醒统计 8~12 次调用） |
| §三 固定队列 + 后台线程 + 指标 | 已实现 | `max_depth=2 dropped=0 write_errors=0`；主机压测 8 万次入队，`bad_content=0 bad_order=0`，31 断言 |
| §三 install/uninstall 生命周期 | 已实现，发现并修掉"卸载伪报成功" | 卸载后 `hooked=0` + `thread_exited=1`；同一进程内重复 install 存在双份映射歧义（见 §3.4） |
| §四 ASR final 恢复 | **已定位并恢复投递** | 根因是 **ASR 事件桥 `tgb_bridge` 没在跑**（抽象 socket 不存在，hook `conn_fail=10`）；启动后 12:01 收到 `t6-11805-1968336-g3`，Worker `route=native intent=time publish_seq=1` |
| §四 恢复后识别是否持续 | **不稳定** | 之后 4 次唤醒只有 `onStartTalk`、`seen=0 final=0`；A/B（卸掉本轮 hook）结果相同 → 与本轮代码无关 |
| §五 五次 WakeUpInfo ↔ ASR 关联 | **未成立** | 窗口内 0 条新 final，关联判定输出 0 条 MATCH；见 §5.3 的方法学与所需证据 |
| §六 结构体生命周期 | 有实质进展（静态证据） | `freeWakeupInfo` 的完整释放列表、`setWakeUpInfo` 的 strDup 归一化、`onSpeakCommand` 写入点、`vtable+0x08` 调用现场寄存器 |
| ARM32 构建 | 0 warning | `evidence/t7_06r1_ndk_build.log` |

## 1. §二 采集权限

### 1.1 问题与修法

第一版为了绕开"root 建的目录应用写不进"，把目录放到 `0777`、文件 `0666`。现在：

- 落点优先 **应用自己的数据目录**：`/data/data/com.alibaba.ailabs.genie.smartapp/files/wake`
  （`:core` 的 uid 实测 **1000 / system**，这里它既是 owner 又有写权限，不需要任何 world-writable 父目录）；
- 建目录时 `umask(0077)` + `mkdir(0700)`，随后 `chmod 0700` 并 `stat` 回读确认 `uid==getuid() && mode==0700`；
- 文件 `open(..., 0600)` + `fchmod(0600)` + `fstat` 回读确认；
- 主落点不可用时才回退 `/data/local/tmp/t7/wake`，同样按 0700/0600 处理；
- root 因为 DAC 豁免仍可读/归档/清理（本轮所有证据都是 root 拷出来再拉回主机的）。

### 1.2 旧文件的 owner/mode

决策抽成纯逻辑模块 `hook_wake/wake_store.c`（可在主机单测）：

| 现场 | 目录动作 | 文件动作 |
|---|---|---|
| 不存在 | 建 0700 | 建 0600 |
| 本人所有、权限对 | 不动 | 不动 |
| 本人所有、权限过宽 | `chmod 0700` | `chmod 0600` |
| **别人所有**（例如 root 早先留下的 0777/0666） | 改名 `…foreign.<pid>` 让开，再新建 | 改名 `…foreign.<pid>` 让开，再新建 |

### 1.3 真机证据

```
drwx------ 2 system system 4096 2026-11-22 12:39 …/files/wake
-rw------- 1 system system 7904 2026-11-22 12:41 wakeinfo.jsonl
-rw------- 1 system system  258 2026-11-22 12:41 wakeinfo.status
状态文件：uid=1000 dir_mode=0700 file_mode=0600 dir=/data/data/…/files/wake
```

`rm -f` 掉两个文件后重新注入，目录/文件由 hook 自己按 0700/0600 重建（12:39 的时间戳），
不是靠部署脚本 chmod 出来的。

## 2. §三 回调轻量化 + 后台线程

### 2.1 分工

| 执行体 | 做什么 | 不做什么 |
|---|---|---|
| 回调（原厂 `AG-speech_engin` 线程） | 读 r0..r3；`process_vm_readv(self)` 安全拷 0x60 字节；取 `seq/时间戳/tid`；计时；`wq_push` 入固定队列；返回 | 不 pipe、不 open/write、不 JSON、不等锁、不等后台线程 |
| 后台线程（install 时创建） | 出队；指针探测（同样是 `process_vm_readv`）；JSON 编码；追加写；每秒刷新状态；退出前把队列刷完 | 不碰原厂线程栈/参数 |

`process_vm_readv(getpid(), …)` 是**单次 syscall**，遇到不可读页返回 EFAULT（部分拷回），不会 SIGSEGV，
替换了原来的 pipe 探测；`ENOSYS` 时置 `vm_readv=0` 并停止快照，而不是冒险直接解引用。

### 2.2 队列（`hook_wake/wake_queue.c`，主机可测）

- 容量固定 `WQ_CAP=32`，`head` 用 CAS 取号（不是 fetch_add 后补救，避免"取了号却不写"让消费者永久等一个
  永远不 ready 的 slot）；
- 队列满 → 丢**新**快照、`dropped++`，生产者不阻塞；
- 每 slot 一个 `ready` 标志（release/acquire），消费者只等当前 tail 这一个位置；
- 指标：`depth / max_depth / dropped / write_errors / cb_us_last / cb_us_max / cb_us_avg`。

主机压测（`tests/t7_06r1_wake_queue_unit_test.c`，4 生产者 × 20000 次、消费者并发排空）：

```
stress: attempts=80000 accepted=30182 dropped=49818 popped=30182 max_depth=32 bad_content=0 bad_order=0
```

`accepted + dropped == attempts`、`popped == accepted`、内容校验和逐一相等 → 没有静默丢失、没有半写。
队列/权限两块合计 **31 条主机断言 0 失败**（`evidence/t7_06r1_host_unit_test.log`）。

### 2.3 真机耗时与队列表现

5 次唤醒采集（12:41）：

```
calls=8 queued=0 sent=8 depth=0 max_depth=2 dropped=0 write_errors=0
cb_us_last=12 cb_us_max=28 cb_us_avg=16 vm_ok=8 vm_fail=0 threaded=1 thread_exited=0
```

回调最长 28 µs（含 `process_vm_readv` 拷 0x60 字节），队列峰值深度 2（因为一次唤醒会产生 2 次调用，
后台 10 ms 内就消费掉）。

### 2.4 生命周期：一个真实缺陷

第一次跑 install→uninstall→install 时发现：

```
=== 1) uninstall ===  [inject] hooked=0  (thread exited=1)
=== 3) reinstall ===  ERROR prologue e51ff004 b443e000 != expected e92d4ff0 e28db01c
```

即 **uninstall 报了成功，但入口里还是我们的 patch**。原因：`restore_one()` 在 `mprotect` 失败时静默 return，
`g_patched` 却被置 0，于是 `tg_hook_hooked()` 说谎。修法（本轮）：

- `restore_one()` 返回错误码，写完**回读校验**两条指令；
- 还原失败时 `tg_hook_uninstall()` 返回 `WI_E_PROT`，并保持 `hooked=1`（如实上报，绝不伪报 uninstalled）；
- `tg_hook_hooked()` 改成读**入口实际字节**（`ldr pc,[pc,#-4]` + 我们的 stub 地址）而不是看标志位；
- `tg_hook_prepare()` 自愈：如果发现入口还是自己的 stub，就用内存里保存的原始两条指令写回再继续，
  这样上一次失败的 uninstall 不会把后续 install 永久卡死。

修完后的实测：

```
=== 1) uninstall ===  [inject] hooked=0 after uninstall / RESULT uninstalled
=== 2) check ===      stats … thread=0 exited=1        ← 后台线程已退出
=== 3) reinstall ===  RESULT ok … hooked=1             ← 入口 prologue 正常，说明还原成功
```

**已知限制（未解决，如实记录）**：同一个进程里反复 install 会 `dlopen` 到同一路径，注入器的
`already_mapped=1` 分支会让"哪一份库在回答 `--check`"变得不确定（step 4 出现 `hook_status=0 hooked=0`
而同一时刻 `stats` 里 `hooked=1`）。这不是本轮能靠库内代码消除的；工程上的做法仍是**换版本/往返注入后重启
`:core`**（T7-05 的 `guard-reload` 就是这个）。本轮所有正式采集都遵守这条：每次采集前 `guard-reload` 一次，
只保留一份映射。

### 2.5 事故记录（写清楚，不掩盖）

写清理脚本时用了 `ps | grep tg_injector` 这种**子串**匹配，把守卫 supervisor（cmdline 里带
`--injector …/tg_injector`）一起 `kill -9` 了。已立刻 `guard-start` 恢复（现 pid 15893，`:core` hooked=1）。
教训：进程识别必须锚定可执行文件路径/进程名，不能拿参数里的子串当判据。

## 3. §四 恢复 ASR final 观测

### 3.1 实际根因：不是网络，是事件桥没在跑

按任务书逐项检查的结果：

| 检查 | 结果 |
|---|---|
| 默认路由 | 本轮开始时已存在（上一轮补的 `default via 192.168.1.1 dev wlan0`） |
| 网关可达 | `ping 192.168.1.1` 0% 丢包 |
| 公网 | `ping 223.5.5.5` 0% 丢包、RTT 7.8 ms；DNS 可解析（`www.aliyun.com` → 220.194.69.85） |
| 原厂进程 | `:core` 在跑，`libtg_hook.so` 在 maps 里（3 处） |
| T6-01 Supervisor | pid 279 正常，未被动过 |
| **ASR 事件桥** | **`/proc/net/unix` 里没有 `tgz2_asr_bridge`，`tgb_bridge` 进程不存在**；hook 计数 `conn_fail=10` |
| 识别回调 | 说话时 hook `seen=18 final=2` → **识别本身是好的，只是发不出去** |

`sh /data/local/tmp/t5_bridge/run_bridge.sh start` 之后立刻恢复：

```
=== bridge ===  running: pid=20416   {"state":"running","sock":"abstract:tgz2_asr_bridge",…}
=== events ===  538 /data/local/tmp/t5_bridge/work/events.jsonl
{"rec":"asr_final","event_id":"t6-11805-1968336-g3","pid":11805,"session_id":"1968336",
 "text":"天猫精灵现在几点了","is_final":true,"received_at_ms":1795320061268,"seq":1}
=== worker ===  route=native intent=time rule=time.keyword event=t6-11805-1968336-g3 seq=1
                session=1968336 publish_seq=1
=== marker ===  {"version":2,"seq":1,"session":"1968336","event_id":"t6-11805-1968336-g3","intent":"time"}
```

也就是说：**投递链路（hook → 桥 → events.jsonl → Worker → 原厂放行标记）已经端到端恢复**，
并且这一条 final 是真实识别产生的（不是我们伪造的事件）。

网络侧本轮只做了一件事：确认/保留默认路由，没有改任何原厂参数。

### 3.2 但识别随后又不产 final（未解决，证据齐全）

12:01 之后，`guard-reload` / 应用重启 / 重新注入之后共做了 3 轮唤醒采集，全部是：

- `onStartTalk` 正常触发（快照照常落盘）；
- ASR hook `seen=0 final=0`；
- `events.jsonl` 停在 538 行；
- 再把本轮 hook **卸载**后重试，结果相同（A/B）；
- 屏幕 ON、无音频占用、TV 应用在前台（focus=app.orchard.tv），未见 SELinux 拒绝。

结论只能到这里：**投递侧已修好并有证据，识别侧不稳定**，而且与附加 hook 无关。要进一步定位需要动原厂
识别侧（本轮禁止），所以留作遗留问题，而不是把锅甩给本轮代码。

## 4. §五 WakeUpInfo ↔ ASR session 关联

### 4.1 采集

12:41 一轮 5 次唤醒（`wake.wav:2200 + time.wav:9000` × 5），落盘 8 条快照、4 个唤醒批次：

| 批次 | pid | t_ms | 调用数 | 形态 | info |
|---|---|---|---|---|---|
| wake#1 | 14515 | 1795322408928 | 2 | real + 第二路 | `0x95682660` / `0xb2ad3d80` |
| wake#2 | 14515 | 1795322440881 | 2 | real + 第二路 | 同上 |
| wake#3 | 14515 | 1795322456800 | 2 | real + 第二路 | 同上 |
| wake#4 | 14515 | 1795322472835 | 2 | real + 第二路 | 同上 |

- 5 次播放只识别到 4 次唤醒（第 1 次或第 5 次没被 KWS 接受），**不是** 5 次都成功；
- 同一批次里的两次调用相隔 < 60 ms、`this` 不同（`0xb2af4dcc` vs `0x984b4e84`），参数形态完全不同 →
  这就是 T7-03 记过的"第二路调用"，不能当成第二次唤醒；
- 每批的 `info` 指针在**同一进程内恒定**（`0x95682660`），说明 `_WakeUpInfo_` 对象是复用同一块内存，
  内容每次重写（`+0x14` 的浮点、`+0x34/+0x38` 的字符串指针每次都变）。

### 4.2 关联判定：0 条成立

判定规则（写死在 `correlate2.py`，不靠"时间接近"单独声称）：

1. 必须同 pid；
2. final 必须落在某条**可信**快照之后 0..8000 ms；
3. 该窗口内**只能有一条**可信快照，多于一条就是 AMBIGUOUS，不算成立。

窗口内新 final 数 = **0**（`evidence/t7_06r1_correlation.log`），因此没有任何 MATCH。
所以本轮**没有**"五次唤醒与 ASR 会话关联"的结论，也不会用"时间上接近"去凑一个。

### 4.3 要成立还需要什么

- 识别侧恢复后，一次唤醒 → 一条 final（带 `session_id`）；
- 快照侧要有能唯一标识该次唤醒的字段（现在 `this` 恒定、`info` 指针对复用，只有 `seq/t_ms/tid` 会变）；
- 候选办法（未实施，需下一轮验证）：`onSpeakCommand` 里 `CDM+4 = sessionId`、`CDM+8 = wakeupType` 是
  写在同一对象上的，若能把 `SessionManager::onStartTalk` 的 `this` 与 CDM 的 `this` 建立映射，
  就能用**指针关系**而不是时间来关联。

## 5. §六 结构体生命周期（静态证据，`evidence/t7_06r1_disasm_*.txt`）

从设备拉取 `/system/app/smartapp/lib/arm/libsmartbox.so`，用 NDK objdump 反汇编（REA 在本机没有可用的
ARM ELF provider：Ghidra P0 只吃 PE、Hopper 只支持 macOS、IDA/Kuna 未配置，如实记录）。

### 5.1 `IInputDeviceManager::freeWakeupInfo(_WakeUpInfo_*)` @0x107a80 —— 权威所有权

```
+0x04 free -> 0        +0x08 free -> 0        +0x34 free -> 0
+0x38 free -> 0        +0x30 free -> 0        +0x3c free (不置 0)
最后：mov r0,r4; b free@plt      → 结构体本身也被释放
```

**结论**：`_WakeUpInfo_` 拥有 `+0x04/+0x08/+0x30/+0x34/+0x38/+0x3c` 六个堆串，并且结构体本身也是堆对象。
这直接回答 §五 的 4/5/6：原厂**会**释放传入结构体里的字符串，释放完连结构体一起 `free`。

### 5.2 `SessionManager::setWakeUpInfo(int, _WakeUpInfo_*)` @0x111c08 —— 归一化副本

```
target = this->[0x48]
free(target+0x04, +0x08, +0x34, +0x38, +0x3c, +0x30)   ← 先释放旧的
str  r0,[target+0x00]                                    ← wakeupType 等标量
vstr d16,[target+0x10]                                   ← 0x10..0x17 直接拷
ldr  [src+0x28]/[src+0x2c] → str [target+0x28]/[target+0x2c]
StrUtils::isEmpty + StrUtils::strDup → +0x34, +0x38, +0x04, +0x08, +0x30
```

**结论**：CDM 侧那份是 **strDup 深拷贝**（不是偷指针），并且会先释放旧值。
这把"调用方栈/堆上的 `_WakeUpInfo_`" 和 "CDM 内嵌/归一化副本"彻底分开了 —— 上一轮
"`resetWakupInfo` 的 free 偏移对不上快照"的矛盾由此解释：那是**两个不同的对象**，
不是同一个结构体的两套推测。

### 5.3 `ContinuousDialogManager::onSpeakCommand(int, json_object*, uchar)` @0x1566f0

```
str r1,[r4+0x04]                      ← sessionId
ProtocolBuilder::getWakeupType(str) → str r0,[r4+0x08]
getJsonInt × 3 → …（0x24/0x28/0x2c 区域）
getJsonBoolean → str r0,[r4+0x30]
getJsonBoolean → str r0,[r4+0x34]
```

字段写入顺序：`sessionId → wakeupType → 三个 int → 两个 bool`。注意这是 **CDM 自己的偏移**，
不是 `_WakeUpInfo_` 的。

### 5.4 `resetWakupInfo()` @0x156500 与 `startFullDuplexDialog()` @0x1565e8

```
reset: free(CDM+0x0c,+0x10,+0x38,+0x3c,+0x40,+0x44) 然后清 CDM+8 起的一块（0x54 字节步长）
startFullDuplexDialog:
  if (CDM[0x70]==0) return
  mmi = IMmiCore::getInstance()
  mgr = (*(mmi->vtable[+0x10]))(mmi)          ← getInputDeviceManager()
  r1  = getInputType(CDM[+0x04])              ← 参数2 = InputDeviceType
  r2  = CDM + 0x08                            ← 参数3 = &_WakeUpInfo_（内嵌副本）
  r3  = (*(mgr->vtable[+0x08]))               ← 参数1 = mgr(this)，返回值被忽略
  (*r3)(mgr, r1, r2)
  然后 TimerManager 两次事件、resetWakupInfo()、CDM[0x60]=1、CDM[4]=-1、CDM[0x70]=0
```

**修正一个长期说法**：`IInputDeviceManager->vtable[8]` 实际是 **字节偏移 0x08（索引 2）** 的槽位，
签名 `(IInputDeviceManager *this, InputDeviceType type, _WakeUpInfo_ *info)`，返回值忽略；
`info` 指向的是 **CDM 内嵌那份**（而且紧接着就会被 `resetWakupInfo()` 释放字段）。

### 5.5 对方案 D 的判断（仍然不实现）

- 深拷贝在**技术上可行**：按 `freeWakeupInfo` 的列表给六个字段各自 `malloc` 一份，结构体也用堆。
  但必须注意 `+0x34/+0x38` 在快照里有时**指向同一个地址**，如果直接 `free` 两次就是 double free —— 深拷贝
  必须给它们各自独立分配；
- 仍然**不知道**：传给 `startTalk` 之后，原厂是否会用 `freeWakeupInfo` 接管这份内存（若接管，我们就不能
  再释放；若不接管，我们就必须自己释放）—— 这一步需要一次受控实验（例如传一份"可识别"的拷贝，观察谁
  free 了它），本轮不做；
- 因此连续对话调用继续不写。

## 6. 交付物

源码：
- `android/hook_wake/libtg_wakeinfo.c`（重写：回调轻量化 + 后台线程 + 私有权限 + 回读校验/自愈）
- `android/hook_wake/wake_queue.c/.h`（固定容量无锁队列，drop 计数）
- `android/hook_wake/wake_store.c/.h`（权限决策，纯逻辑可测）
- `android/build_t7_06.ps1`（多源文件构建）

测试：
- `tests/t7_06r1_wake_queue_unit_test.c`（容量/丢弃/多线程压测 17 断言）
- `tests/t7_06r1_wake_store_unit_test.c`（权限决策 14 断言）
- `tests/run_t7_06_host_tests.ps1`（合计 31 断言）

证据（`evidence/`）：
- `t7_06r1_host_unit_test.log`、`t7_06r1_ndk_build.log`
- `t7_06r1_device_permissions.log`（0700/0600 + owner）
- `t7_06r1_device_lifecycle.log`（install/uninstall/reinstall）
- `t7_06r1_device_asr_restore.log`（桥、final、路由、标记、supervisor）
- `t7_06r1_wakeinfo_snapshots.jsonl`（4 批次 8 条快照，合法 JSON）
- `t7_06r1_wakeinfo.status`、`t7_06r1_correlation.log`（关联判定 0 条）
- `t7_06r1_disasm_*.txt`（5 个函数的反汇编）

设备终态：`:core` 14515（`hooked=1` 的守卫 + wakeinfo 一份映射）、守卫 supervisor 15893、T6-01 ASR supervisor 279
（未受影响）、worker `3ff34009`、桥 pid 20416。

## 7. 遗留问题

1. **识别侧不出 final**（投递侧已修好）：`seen=0 final=0`，A/B 与 hook 无关；要定位必须动原厂识别链，
   本轮禁止。这挡住"五次关联"和真人验收。
2. **同一进程重复 install 的映射歧义**：库内无法彻底消除，工程做法是往返注入后重启 `:core`。
3. **卸载失败时的自愈只在同进程内有效**：进程重启后原厂字节当然是对的，但如果 `:core` 里留下一个
   "指向已卸载库的 stub"，只能靠重启进程。
4. `freeWakeupInfo` 是否被 `startTalk` 路径调用（即所有权是否转移）**未证**，方案 D 继续冻结。
5. `+0x34/+0x38` 同址现象需要单独解释（可能是"两个字段指向同一块"或"一个 64 位指针被拆成两段"），
   深拷贝前必须确认，否则会 double free。
