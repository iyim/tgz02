# T8-09 NLU Hook 真机部署第一阶段：文件部署与环境核验

执行时间：2026-11-22 19:51–19:53（设备 `192.168.1.9:5555`）。
基线提交：**`f63287439113f1d56ed9bab2943eeae16ef0b11a`**（`main`，T8-08）。

本阶段只做：核对产物 → 核对设备 → 推送到独立目录 `/data/local/tmp/t8/` → 核对设备端身份。
**未安装 Hook、未注入、未 attach `:core`、未启停 Supervisor、未开启 takeover、未重启任何进程。**

---

## 一、版本与文件校验（主机侧）

| 项 | 结果 |
|---|---|
| `git rev-parse HEAD` | `f63287439113f1d56ed9bab2943eeae16ef0b11a`（与任务书目标一致） |
| `my-doc/07_ai_bridge/android/out/libtg_hook.so` | 120 608 B / `5be226901fb11d3ab5ff81410f43d834b72b7f9243d1ded58550bb0ac8138f85` |
| `my-doc/07_ai_bridge/android/out/tg_injector` | 80 780 B / `add2c25d6bdd47824c4a9276c1eb81cfd3c71c79cbd06c3adefdc8e0a3412f24` |
| 与任务书标准比对 | **两文件的大小与 SHA256 完全一致**，未重新编译 |

`out/` 下的这两个文件就是 T8-08 那次构建的产物（文件时间 19:45:40 / 19:45:43，
与 `evidence/t8_08_ndk_build.log` 记录一致），本轮直接使用，没有触发任何构建。

---

## 二、设备身份核验

```
adb devices -l
192.168.1.9:5555   device product:full_ailabs_s1l model:AILABS_S1L device:ailabs_s1l transport_id:1

getprop ro.product.model          -> AILABS_S1L
getprop ro.build.version.release  -> 6.1.8-RS-20221104.1459
getprop ro.build.version.sdk      -> 27
getenforce                        -> Permissive
```

设备身份与既有基线一致（TG-Z02 / AILABS_S1L / SDK 27 / Permissive），继续执行。

---

## 三、部署前基线（只读采集）

### 3.1 进程

| PID | PPID | 进程与完整参数 |
|---|---|---|
| 279 | 1 | `tg_supervisor --pidfile /data/local/tmp/t6/tg_supervisor.pid --log /data/local/tmp/t6/supervisor.log`（**无 `--so`/`--injector`，用默认值 → 指向 `/t6/`**） |
| 4685 | 1 | `tg_supervisor --injector /data/local/tmp/t6/tg_injector --so /data/local/tmp/t7/libtg_ttsguard.so --name com.alibaba.ailabs.genie.smartapp:core --pidfile /data/local/tmp/t7/ttsguard.sup.pid --log /data/local/tmp/t7/ttsguard.sup.log`（TTS Guard，独立） |
| 8342 | 281 | `com.alibaba.ailabs.genie.smartapp:core` ← 目标进程 |
| 2586 | 1 | `tgb_bridge --sock tgz2_asr_bridge --work-dir /data/local/tmp/t5_bridge/work` |
| 3468 | 1 | `ai_worker --work-dir /data/local/tmp/t5_bridge/work ...` |
| 17253 | 1 | `sh /data/local/tmp/t5_bridge/tts_supervisor.sh` |

`/data/local/tmp/t6/tg_supervisor.pid` 内容：`279`（与 ps 一致）。

### 3.2 `:core` 的模块映射（root 只读）

```
938f6000-938fa000 r-xp 00000000 b3:16 86583  /data/local/tmp/t7/libtg_ttsguard.so
938fa000-938fb000 r--p 00003000 b3:16 86583  /data/local/tmp/t7/libtg_ttsguard.so
9655e000-96563000 r-xp 00000000 b3:16 78644  /data/local/tmp/t6/libtg_hook.so
96563000-96564000 r--p 00004000 b3:16 78644  /data/local/tmp/t6/libtg_hook.so
96564000-96565000 rw-p 00005000 b3:16 78644  /data/local/tmp/t6/libtg_hook.so
```

- `libtg_hook.so`：**旧 T6 构建**，路径 `/data/local/tmp/t6/`，`dev:inode = b3:16 78644`
- `libtg_ttsguard.so`：`/data/local/tmp/t7/`，`dev:inode = b3:16 86583`（TTS Guard 在跑）

### 3.3 服务健康

- `bridge_status.json`：`state=running pid=2586 events_stored=47 frames=47 clients=1 store_errors=0 updated_at=19:51:35`
- `ai_worker_status.json`：`state=running pid=3468 provider=deepseek last_http_status=200 last_error_class=ok updated_at=19:51:35`

### 3.4 `/data/local/tmp/t6/` 部署前指纹（用于事后证明未改动）

```
b838a731392938b0038355c3ee42af7870e6db4d4b35ef0c78d2dc36c07e67b6  libtg_hook.so   (27 384 B, 2026-11-21 16:22)
4d13af84d4c04898f7dd59668e5a38354c4a4b6a202a7b1477ef077323e9f677  tg_injector     (71 884 B, 2026-11-21 16:22)
17dec6e079d7d2efd74cd6d2c49e04436d1b6d56a648024ca0f1986c646c2fa0  tg_supervisor   (60 904 B, 2026-11-21 16:22)
```

`/data/local/tmp/t8` 当时**不存在**。

---

## 四、部署过程

### 4.1 第一步失败并已如实处理（记录在案）

按任务书原样执行时，`adb push` 被拒：

```
adb shell su -c 'mkdir -p /data/local/tmp/t8'      -> drwxr-xr-x root root
adb push ... /data/local/tmp/t8/libtg_hook.so      -> remote couldn't create file: Permission denied
adb push ... /data/local/tmp/t8/tg_injector        -> remote couldn't create file: Permission denied
```

原因：目录由 root 创建（755），而 `adb push` 以 `shell` 身份写文件。
**没有**为此改动 `/t6/`，也没有放宽整个 `/data/local/tmp`。

### 4.2 改用"暂存 + root 移动"（等价结果，最小权限改动）

```bash
# 1) 以 shell 身份推到 /data/local/tmp 下的临时名（可写）
adb push my-doc/07_ai_bridge/android/out/libtg_hook.so /data/local/tmp/.t8_stage_hook
adb push my-doc/07_ai_bridge/android/out/tg_injector   /data/local/tmp/.t8_stage_inj

# 2) root 在同一文件系统内 rename 进 /t8（内容逐字节不变），再设权限
adb shell "su -c 'mv /data/local/tmp/.t8_stage_hook /data/local/tmp/t8/libtg_hook.so && \
  mv /data/local/tmp/.t8_stage_inj /data/local/tmp/t8/tg_injector && \
  chmod 755 /data/local/tmp/t8/libtg_hook.so /data/local/tmp/t8/tg_injector'"
```

未创建任何第二个 basename 的 Hook 实例，`/t6/` 未被触碰。

### 4.3 设备端核对（部署后）

```
# ls -l /data/local/tmp/t8/
-rwxr-xr-x 1 shell shell 120608 2026-11-22 19:45 libtg_hook.so
-rwxr-xr-x 1 shell shell  80780 2026-11-22 19:45 tg_injector

# sha256sum
5be226901fb11d3ab5ff81410f43d834b72b7f9243d1ded58550bb0ac8138f85  /data/local/tmp/t8/libtg_hook.so
add2c25d6bdd47824c4a9276c1eb81cfd3c71c79cbd06c3adefdc8e0a3412f24  /data/local/tmp/t8/tg_injector
```

| 项 | 期望 | 实测 | 结论 |
|---|---|---|---|
| `libtg_hook.so` 大小 | 120 608 | 120 608 | ✔ |
| `libtg_hook.so` SHA256 | `5be22690…38f85` | 一致 | ✔ |
| `tg_injector` 大小 | 80 780 | 80 780 | ✔ |
| `tg_injector` SHA256 | `add2c25d…12f24` | 一致 | ✔ |
| 权限 | 755 | `-rwxr-xr-x` | ✔（其他用户可读 → `:core` 的 app uid 能 `dlopen`） |
| 属主 | —（未强制） | `shell:shell` | 记录（root 执行 injector 不受影响；如需 root 属主可在下一阶段前 `chown`，非必需） |

---

## 五、`/data/local/tmp/t6/` 与运行基线确认未改动

部署后重新采集：

```
b838a731392938b0038355c3ee42af7870e6db4d4b35ef0c78d2dc36c07e67b6  /t6/libtg_hook.so
4d13af84d4c04898f7dd59668e5a38354c4a4b6a202a7b1477ef077323e9f677  /t6/tg_injector
17dec6e079d7d2efd74cd6d2c49e04436d1b6d56a648024ca0f1986c646c2fa0  /t6/tg_supervisor
```

三项与 3.4 的部署前指纹**逐字节相同**；`/t6` 内所有文件的 mtime 仍是 2026-11-21（无新增/删除/改名）。
`:core` 仍是 **pid 8342**，maps 仍指向 `/data/local/tmp/t6/libtg_hook.so`（inode 78644 未变）；
两个 supervisor 仍是 279 / 4685，参数未变；bridge/worker 仍 running。

**结论：运行基线完全未变，新文件只是"躺在 `/t8/` 里"，尚未被任何进程加载。**

---

## 六、下一阶段方案（只准备，未执行）

> 前置审批：**重启 `:core` 是单独审批事项**，本阶段不得执行、不得提前触发。

### 6.1 开始前再核一次（只读，约 30 秒）

```bash
adb shell "ps -A -o PID,PPID,ARGS | grep -E 'genie.smartapp:core|tg_supervisor' | grep -v grep"
adb shell "su -c 'cat /data/local/tmp/t6/tg_supervisor.pid'"     # 必须仍等于 T6 supervisor 的 PID
adb shell "su -c 'sha256sum /data/local/tmp/t8/libtg_hook.so /data/local/tmp/t8/tg_injector'"
adb shell "su -c 'cat /proc/<CORE_PID>/maps' | grep libtg_hook"  # 应仍是 /t6/ 与 inode 78644
```

预期：T6 supervisor `279`、`:core` `8342`、`/t8` 两个 sha 与 §4.3 一致、maps 指向 `/t6/`。
任何一项不符 → 停止，先报告。

### 6.2 新 Supervisor 启动参数（明确指向 `/t8/`）

```bash
nohup /data/local/tmp/t6/tg_supervisor \
  --injector /data/local/tmp/t8/tg_injector \
  --so       /data/local/tmp/t8/libtg_hook.so \
  --name     com.alibaba.ailabs.genie.smartapp:core \
  --pidfile  /data/local/tmp/t8/tg_supervisor.pid \
  --log      /data/local/tmp/t8/supervisor.log \
  >/dev/null 2>&1 &
```

要点：
- supervisor **二进制**仍用 `/t6/tg_supervisor`（本轮没有新 supervisor 构建，也不是本轮部署对象）。
- `--injector` / `--so` 必须显式给 `/t8/`，**否则默认值 `DEF_INJECTOR`/`DEF_SO` 指向 `/t6/`**
  （`tg_supervisor.c:44-45`），重启后会把旧库注回去。
- `--pidfile` / `--log` 也放 `/t8/`，这样**完全不写 `/t6/`**（保持旧目录零改动）。

### 6.3 执行顺序（建议 A 方案：先停旧守护，再重启 `:core`，最后起新守护）

| 步 | 动作 | 命令 | 判据 |
|---|---|---|---|
| 1 | 停旧 T6 supervisor | `adb shell su -c 'kill $(cat /data/local/tmp/t6/tg_supervisor.pid)'` | `ps` 中 279 消失；`:core` 仍 8342（不受影响） |
| 2 | 重启 `:core`（**需审批**） | `adb shell "ps -A -o PID,ARGS \| grep 'genie.smartapp:core' \| grep -v grep"` → `adb shell su -c 'kill -9 <PID>'` | 旧 PID 消失 |
| 3 | 起新 supervisor（6.2 的命令） | 见上 | `/t8/supervisor.log` 出现 `inject end: pid=<NEW> exit=0 hooked=1` |
| 4 | 核对加载 | `adb shell su -c 'cat /proc/<NEW_PID>/maps' \| grep libtg_hook` | 路径必须是 `/data/local/tmp/t8/libtg_hook.so`，`dev:inode` **不是** 78644 |
| 5 | 核对接口 | `adb shell su -c '/data/local/tmp/t8/tg_injector --name com.alibaba.ailabs.genie.smartapp:core --so /data/local/tmp/t8/libtg_hook.so --check'` | `hook_status=0 hooked=1` |
| 6 | 核对 NLU 侧（未装补丁） | 同上加 `--nlu-status` | 打印 `nlu hook_installed=0 takeover=0 state_ready=1`，`stats` 里 `prot_state=-1`（未打过补丁） |
| 7 | 原厂 ASR / AI / TTS 恢复检查 | 见 6.6 | 见 6.6 |

为什么"先停旧守护再重启 `:core`"：`:core` 一重启，旧 supervisor 会立刻把 `/t6/` 的旧库注回去（它用的是默认值），
新库就再也没机会成为第一个实例。

### 6.4 `:core` 重启后的自动拉起与确认

- `:core` 是 `com.alibaba.ailabs.genie.smartapp` 的子进程（原 ppid 281 = zygote 侧 fork）。
  杀掉后由应用/系统服务按需重新创建，**不保证立即**（可能等到下一次绑定/唤醒）。
- 轮询：`for i in $(seq 1 30); do ps -A -o PID,ARGS | grep -q 'genie.smartapp:core' && break; sleep 1; done`
- 若 30 s 内没有新 `:core`：请操作者在设备上打开一次精灵应用（人工动作，属审批范围），然后重新轮询；
  **不要**用 `am force-stop` / `am start` 之类命令代替，避免影响原厂语音链路。
- 新 `:core` 出现后，新 supervisor（6.2）会自动注入；判定只看它自己的日志：
  `grep 'inject end' /data/local/tmp/t8/supervisor.log` 最后一行应为 `exit=0 hooked=1`。
- TTS Guard supervisor（4685）**不停、不改**；`:core` 重启后它会按自己的 `--so /data/local/tmp/t7/libtg_ttsguard.so`
  重新注入，`ttsguard.sup.log` 应出现新的 `inject end ... ok`，`/proc/<NEW>/maps` 里应同时有
  `/t7/libtg_ttsguard.so` 与 `/t8/libtg_hook.so`。

### 6.5 失败回滚（按代价从低到高）

| 级 | 场景 | 动作 |
|---|---|---|
| R1 | 新 supervisor 起来了但注入失败（exit 17/18、`hooked=0`） | 停新 supervisor（`kill $(cat /data/local/tmp/t8/tg_supervisor.pid)`），**不要**反复重试注入；报告并保留 `/t8/supervisor.log` |
| R2 | 新库加载成功但行为异常（AI 无回复/重复、原厂技能不触发） | 停新 supervisor → 起旧 supervisor：<br>`nohup /data/local/tmp/t6/tg_supervisor --injector /data/local/tmp/t6/tg_injector --so /data/local/tmp/t6/libtg_hook.so --name com.alibaba.ailabs.genie.smartapp:core --pidfile /data/local/tmp/t6/tg_supervisor.pid --log /data/local/tmp/t6/supervisor.log &`<br>→ 再按 6.3 步 2 重启 `:core` 一次，让它干净地加载旧库 |
| R3 | 需要完全回到 T8-09 之前的状态 | `/t6/` 三个文件 sha 已核对未变（§五），旧 supervisor 参数可直接照抄；`:core` 重启一次即恢复旧库映射 |
| R4 | `/t8/` 下的文件本身有问题 | 只需 `rm -rf /data/local/tmp/t8`（**删除的是本轮新建目录，不涉及 `/t6/`**），然后报告 |

回滚不依赖任何新文件：旧库、旧 injector、旧 supervisor 二进制全部还在 `/t6/`，且指纹与部署前一致。

### 6.6 重启期间/之后的功能恢复检查

| 组件 | 检查方法 | 通过标准 |
|---|---|---|
| 原厂 ASR | 说一句唤醒词 + 本地指令（如"音量调到 40"） | 唤醒有响应、原厂执行成功 |
| AI Worker | `su -c 'cat /data/local/tmp/t5_bridge/ai_worker/ai_worker_status.json'` | `state=running`、`updated_at` 持续刷新、`last_error_class=ok`、`route.ai/native` 递增 |
| Bridge | `cat /data/local/tmp/t5_bridge/work/bridge_status.json` | `state=running`、`clients=1`、`store_errors=0`、`events_stored` 递增 |
| TTS Guard | `su -c 'tail -20 /data/local/tmp/t7/ttsguard.sup.log'` + `cat /proc/<NEW>/maps \| grep ttsguard` | 日志有新的 `inject end ... ok`，maps 有 `/t7/libtg_ttsguard.so` |
| TTS 播放 | 一次 AI 问答 | 有正常语音、无重复/截断 |
| NLU 状态 | `--nlu-status` | `hook_installed=0`（本阶段**不装**补丁）、`takeover=0` |

---

## 七、风险（下一阶段需要承担）

1. **重启窗口内语音不可用**：`:core` 被 kill 到重新拉起之间，唤醒/ASR/TTS 全部失效（数秒到数十秒，取决于应用何时重建 `:core`）。
2. **新库必须"首个加载"**：同 basename 的旧映射只要还在，新路径就加载不进来（`already=1` + `RTLD_NOLOAD` → exit 17）。
   所以顺序必须是"先停旧守护 → 再重启 `:core` → 再起新守护"。
3. **supervisor 默认值陷阱**：`tg_supervisor` 默认 `--injector/--so` 都指向 `/t6/`；漏写任一参数 → 旧库回注。
4. **`:core` 可能不自动拉起**：届时只能由操作者手动打开应用（人工动作，需事先约定）。
5. **TTS Guard 依赖同一进程**：`:core` 重启会让 TTS Guard 一起失效并重新注入；若它的 supervisor 恰好在重试窗口，可能延后几秒。
6. **重启会清空全部内存态**：`np` 事务、`nls` 状态、会话表、T6 sender 全部归零；这正是"干净起点"，但也意味着重启前若曾装过补丁，其状态不可恢复（只能重装）。
7. **`/t8/` 属主是 `shell:shell`**：功能上无影响（755 + root 执行 injector + app 只读），
   若审查要求与 `/t6` 一致，可在下一阶段前 `su -c 'chown root:root /data/local/tmp/t8/*'`（非必需，本轮未做）。

---

## 八、本轮明确没有执行的操作

1. 未覆盖 / 删除 / 重命名 `/data/local/tmp/t6/` 下任何文件（三个指纹逐字节一致，mtime 未变）。
2. 未执行 `tg_injector` 的任何子命令（包括 `--check`、`--nlu-status`、`--nlu-install`）。
3. 未对 `:core` 做 ptrace / attach / 注入 / 内存修改；`:core` 仍是 **8342**，maps 仍指向旧库。
4. 未停止或重启 T6 supervisor（279 仍在），未停止 TTS Guard supervisor（4685 仍在）。
5. 未杀死/重启 `:core`，未重启整机。
6. 未执行 `--nlu-on` 或任何 takeover 开关。
7. 未修改 Worker / Bridge / TTS Guard / 路由 / 原厂配置（两个 status JSON 仍在正常刷新）。
8. 未部署第二个不同 basename 的 Hook 实例（`/t8/` 只有 `libtg_hook.so` 与 `tg_injector` 两个文件）。
9. 未修改任何功能源码；未新增外围文档（本文件是任务要求的部署记录）。
10. 未重新编译（本地产物即 T8-08 构建，SHA256 与任务书一致）。
