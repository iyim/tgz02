# T9-01 设备基线固定与可恢复性验证

- 仓库：`iyim/tgz02`（git root `D:\tgz02\OS\system`，分支 `main`）
- 起点提交：`166972e9c75c262cfa15da2bddb3d4ed296d10a3`
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root，`192.168.1.9:5555`
- 采集时间：2026-11-24 11:26 – 11:57（CST）
- 本阶段只做取证、备份、只读校验，不改动任何程序；未 `pm disable` / `pm uninstall` / `am force-stop` 官方包。

---

## 1. 结论摘要

| 项目 | 结果 |
|---|---|
| 官方语音包 | `com.alibaba.ailabs.genie.smartapp` 8.7.1.18（versionCode 2102087118），系统应用，`sharedUserId=android.uid.system` |
| 官方 APK | `/system/app/smartapp/smartapp.apk`，25,336,386 B，SHA256 `1506719b…93da00`，已拉回本地保存 |
| 官方代码位置 | **APK 内没有 `classes.dex`**；代码在 `/system/app/smartapp/oat/arm/smartapp.vdex`（28,902,724 B）+ `smartapp.odex`（569,824 B） |
| 官方原生库 | `/system/app/smartapp/lib/arm`，81 个文件 37,355,373 B（含 `libagspeech.so`、`libwakeup_bin_S1L_S3.so`、`libvad_api.so`、`libsmartbox.so`） |
| 语音能力所在进程 | `:core`（基线 pid 13250）映射 47 个官方 `.so`；主进程只映射 3 个（`libcrashsdk/libmarsulog/libunet`） |
| 自有组件备份 | 19 个文件（二进制 7 + 脚本 5 + 配置 2 + 状态 5），共 4,170,220 B；主机侧逐个 SHA256 与设备清单 **19/19 完全一致** |
| API Key | 单独备份，只记录大小（36 B）与 SHA256，内容未落盘到仓库、未打印 |
| 恢复材料可用性 | 5 个脚本 `sh -n` 全通过；7 个二进制 ELF32-ARM 头正常；`tts_exec.dex` magic `dex\n038` 正常；配置可解析 |
| 当前语音链路 | 复测通过：唤醒 → ASR → 原生指令 → 播报，且续听 `CONFIRMED (+208 ms)` |

同时发现**两个已存在的缺陷**（本阶段不修，见 §8）：开机时遗留 rc 会把 T6 旧 hook 注入 `:core`；重启后两个“单调时钟毫秒”状态文件失效，导致续听被永久拒绝。

---

## 2. 官方组件基线（A）

### 2.1 包与安装信息

| 字段 | 值 |
|---|---|
| 包名 | `com.alibaba.ailabs.genie.smartapp` |
| versionName / versionCode | `8.7.1.18` / `2102087118` |
| minSdk / targetSdk | 19 / 27 |
| codePath / resourcePath | `/system/app/smartapp` |
| legacyNativeLibraryDir | `/system/app/smartapp/lib` |
| primaryCpuAbi | `armeabi-v7a` |
| dataDir | `/data/user/0/com.alibaba.ailabs.genie.smartapp`（7.9 MB） |
| sharedUser | `android.uid.system/1000` |
| flags | `SYSTEM HAS_CODE ALLOW_CLEAR_USER_DATA LARGE_HEAP` |
| lastUpdateTime | 2026-11-17 19:45:18 |
| 签名 | `PackageSignatures{[8f5cc29c]}`（v1 `META-INF/CERT.RSA`，同时存在 APK Sig Block 42 = v2 块） |

原始：证据 `evidence/t9-01/01_package_and_install_dump.txt`。

### 2.2 APK 内容

| 项目 | 值 |
|---|---|
| 大小 / SHA256 | 25,336,386 B / `1506719b63a3a5592731f80d1eca39db05537388f515f5ff69ea08b69093da00` |
| zip 条目 | 3,432（`res/` 2,843、`assets/` 118、`kotlin/` 296） |
| `classes*.dex` | **不存在**（安装时 dex 已在 `oat/arm` 预编译） |
| `lib/`（APK 内） | 不存在（原生库在安装目录 `lib/arm`） |
| 语音相关 assets | `tts.zip` 398,534 B、`tts_in.zip` 64,501 B、`asr_bg.zip` 381,131 B、`fuzzylexicon.bin` 337,101 B、`default.zip` 184,151 B、`default2asr.zip` 65,913 B、`mute.zip` 5,418 B |

### 2.3 签名证书

| 字段 | 值 |
|---|---|
| Subject / Issuer | `CN=Jason, OU=YunOSTV, O=Alibaba, L=Hangzhou, ST=ZheJiang, C=CN`（自签） |
| 序列号 | `0xbee016910161d689` |
| 有效期 | 2013-09-05 → 2041-01-21 |
| 公钥 / 签名算法 | RSA 2048 / `sha1WithRSAEncryption` |
| 证书 SHA256 / SHA1 | `71b5c58bbce7cfa095809aa5714b71b20df95f06938ab8546696e0f768975515` / `835631d2fbb137fc5fe6381219db6597fc8cdd54` |
| `CERT.RSA` SHA256 | `72ccf8cff29296cb5c896a098a6325888d1218e5974f3020dc3009d9bc38df8b` |

### 2.4 对电脑的备份

| 文件 | 位置 | 大小 |
|---|---|---|
| 原厂 APK | `_analysis/t9/official_smartapp.apk`（工作区，不进仓库） | 25,336,386 B |
| 原厂 `lib/` + `oat/` 镜像 | `_analysis/t9/official_app/`（83 个文件） | 66,827,921 B |

> 说明：`oat` 与 `lib` 只是留档（用于后续 T9-03 组件盘点），本阶段没有对其做任何反编译或改造。

### 2.5 进程与组件结构

官方语音相关的 7 个进程（基线，11:28:16）：

| pid | 进程 | 说明 |
|---|---|---|
| 898 | `…genie.osupdate` | 升级 |
| 913 | `…genie.smartapp` | **主进程（含 UI）**，99 线程 |
| 13250 | `…genie.smartapp:core` | **语音核心**，80 线程 |
| 5224 | `…genie.iot:service` | IoT |
| 14394 | `…genie.rtc` | RTC |
| 24091 | `…genie.launcher` | 桌面 |
| 29017 | `…genie.smartapp:business` | 业务 |

Manifest 中 `:core` 的关键组件（`evidence/t9-01/02_manifest_components.txt`）：

| 类型 | 名字 | 备注 |
|---|---|---|
| Service | `com.alibaba.ailabs.geniesdk.NativeService` | exported，action = `com.alibaba.ailabs.tg.ACTION_BIND` / `com.yunos.tv.alitvasr.service` / `com.alibaba.ailabs.genie.assistant.autotest` |
| Service | `…assistant.vision.AVEManagerService`、`AVEProxyService`、`VisionWakeUpService`、`DistanceDetectService` | 视觉相关 |
| Provider | `…geniesdk.provider.StatusProvider`（`com.alibaba.ailabs.genie.assistant.provider`）、`…geniesdk.AgisProvider`（`com.alibaba.ailabs.genie.assistant.server`） | exported |
| Receiver | `…assistant.PackageReceiver` | 包安装/卸载 |
| Activity | `…assistant.ui.UserInfoActivity` | 账号页 |

开机广播接收器（决定“不打开 UI 时后台会不会起”）：

| 进程 | 接收器 | action |
|---|---|---|
| 主进程 | `com.alibaba.ailabs.comm.receiver.SystemLaunchForceStopReceiver` | `BOOT_COMPLETED`、`…assistant.ONLINE` |
| `:business` | `com.alibaba.ailabs.basedomain.ui.alarm.AutoStartBroadcastReceiver` | `BOOT_COMPLETED` |
| 主进程 | `com.alibaba.ailabs.genie.datacenter.DataCenterReceiver` | `BOOT_COMPLETED`、`TIME_SET`、`WIFI_STATE_CHANGE`、`…BINDUSER` |

Manifest 里还有 HOME 类 `…genieboot.activity.BootHomeActivity`（主进程），但设备实际 HOME 是 `com.alibaba.ailabs.genie.launcher`（`cmd package resolve-activity -c HOME` 在本机返回空）。

### 2.6 语音相关私有文件 / 模型 / 配置

- 唤醒/ASR/VAD 的**模型是编译进 `.so` 的**：`libwakeup_bin_S1L_S3.so` 3,246,393 B、`libwakeup_sync_api_S1L_S3.so` 1,132,388 B、`libvad_bin.so` 59,028 B、`libvad_api.so` 566,964 B、`libagspeech.so`（引擎）。
- 私有目录里**没有**独立模型文件：`/data/data/…smartapp` 合计 7.9 MB，最大子目录是 `cache` 4,748 KB、`files` 2,248 KB；`*.bin/*.model/*.onnx/*.pcm` 检索无命中。
- 配置在 `shared_prefs/`（名称可见、内容本报告不引用）与若干 sqlite（`datacenter.db`、`agis`、`appEvent.db`、`config_info.db`…）。
- `files/` 内层级 2 无文件（仅空目录），说明运行时数据主要走数据库与缓存。

原始：证据 `evidence/t9-01/07_official_private_files.txt`。

---

## 3. 当前运行状态基线（B）

| 项目 | 基线值 | 证据 |
|---|---|---|
| 全量进程表 | 259 行（`ps -A -o USER,PID,PPID,VSZ,RSS,WCHAN,ADDR,S,NAME`） | `03_process_baseline.txt` |
| 官方进程 | 7 个（见 §2.5） | 同上 |
| `:core` 线程数 | 80 | 同上 |
| `:core` 映射 `.so` | 官方 47 个 + `libtg_hook.so` + `libtg_ttsguard_t8155r.so` | `05_maps_smartapp_core.txt` |
| 主进程映射 `.so` | 官方 3 个（`libcrashsdk`、`libmarsulog`、`libunet`） | `06_maps_smartapp_main.txt` |
| Binder/服务 | `NativeService` 有 5 条 `IMP` 连接记录，`startRequested=true callStart=true` | `04_services_audio_baseline.txt` |
| 音频 | `STREAM_MUSIC` min 0 / max 100 / 未静音 | 同上 |
| 自有常驻 | `tg_supervisor` 13193（guard）+ 31289（hook）、`tgb_bridge` 2586、`ai_worker` 21569、`app_process` 17257（TtsExec，父 17253 `tts_supervisor.sh`）、logcat tap 16497/16501/21409 | `03_process_baseline.txt`、`08_own_deploy_dirs.txt` |

开机自启只有一件事：`/data/adb/service.d/a.sh`（重写 adb_keys、`setenforce 0`、开 adb tcp 5555、重启 adbd）。**它不启动我们的任何常驻件**（原文见 `13_boot_script_a_sh.txt`，pubkey 已脱敏）。

---

## 4. 自有系统备份（C）

设备侧备份目录 `/data/local/tmp/t9/backup`，打包 `/data/local/tmp/t9/backup.tgz`（1,504,753 B，SHA256 `035864db2a7a5c7cdbc64302d621da06e0d06c5f7b1c9576ca47232f6dcdeb8a`），主机侧解包到 `_analysis/t9/backup_host/t9/backup/`。

| 类别 | 文件（设备原始路径 → 备份名） | 大小 | SHA256 |
|---|---|---|---|
| 二进制 | `/data/local/tmp/t6/tg_supervisor` → `bin/tg_supervisor` | 60,904 | `17dec6e0…6c2fa0` |
| 二进制 | `/data/local/tmp/t8/tg_injector` → `bin/tg_injector` | 80,780 | `add2c25d…412f24` |
| 二进制 | `/data/local/tmp/t7/libtg_ttsguard_t8155r.so` → `bin/libtg_ttsguard_t8155r.so` | 41,524 | `d16eefce…11edf0` |
| 二进制 | `/data/local/tmp/t8/libtg_hook.so` → `bin/libtg_hook.so` | 120,608 | `5be22690…138f85` |
| 二进制 | `/data/local/tmp/t5_bridge/tgb_bridge` → `bin/tgb_bridge` | 3,553,180 | `3d902529…78d048d` |
| 二进制 | `/data/local/tmp/t5_bridge/bin/ai_worker` → `bin/ai_worker` | 277,960 | `208f2366…30830f8` |
| 二进制 | `/data/local/tmp/t5_bridge/tts_exec.dex` → `bin/tts_exec.dex` | 35,264 | `c947fa09…12b2a8` |
| 脚本 | `run_ai_worker.sh` | 12,365 | `01f0652d…a585e431a0` |
| 脚本 | `run_bridge.sh` | 4,389 | `c8cdd129…328d03` |
| 脚本 | `run_tts_exec.sh` | 4,240 | `f4741111…6e060c` |
| 脚本 | `tts_supervisor.sh` | 869 | `12c1c401…782fcb` |
| 脚本 | `/data/adb/service.d/a.sh` | 2,112 | `f6feadbd…847bce5c` |
| 配置 | `/data/local/tmp/t7/renew.conf` | 208 | `e4c77dc3…b2b6a27` |
| 配置 | `ai_worker/worker.conf`（**不含 key**，只含 `api_key_file` 路径） | 1,620 | `96bd27f2…46440ca7` |
| 状态 | `t7/continuity.req`（易变） | 10 | `2670fcd8…c0ea19` |
| 状态 | `tts/state.json` | 537 | `6acc6399…a90397` |
| 状态 | `tts/play.public.json` | 266 | `98164e70…279fa6` |
| 状态 | `ai_worker/consumer_state.json` | 857 | `3904b12c…cead1be` |
| 状态 | `ai_worker/context.json` | 520 | `3bc8d5b5…407c3` |

完整清单（sha256+size+相对路径）：`evidence/t9-01/10_backup_manifest.tsv`；创建过程：`09_backup_create.txt`。

运行中进程的可执行文件哈希与备份一致：

```
pid=13193 exe=/data/local/tmp/t6/tg_supervisor  17dec6e0…6c2fa0
pid=31289 exe=/data/local/tmp/t6/tg_supervisor  17dec6e0…6c2fa0
pid=2586  exe=…/t5_bridge/tgb_bridge            3d902529…78d048d
pid=21569 exe=…/t5_bridge/bin/ai_worker         208f2366…30830f8
```

### 4.1 秘密材料单独备份

| 项目 | 值 |
|---|---|
| 文件 | `/data/local/tmp/t5_bridge/secret/deepseek_api_key` |
| 大小 / SHA256 | 36 B / `1da908f0751ad5ac96fd8e960161d0f2990adaee2bfb249c7e4d1e2950bd71e7` |
| 备份位置 | `_analysis/t9/backup_secret_host/backup_secret/deepseek_api_key`（**不进仓库**，未打印内容） |

`tts_supervisor.sh`、`run_ai_worker.sh` 等脚本里没有 key 明文；`worker.conf` 里只有路径。证据 `12_secret_backup.txt`。

---

## 5. 恢复能力验证（D）

### 5.1 只读校验（不改动运行环境）

| 检查 | 结果 |
|---|---|
| 主机备份 vs 设备 MANIFEST | 19/19 文件 sha256+size+path 完全一致 |
| 脚本语法 `sh -n`（在备份副本上） | 5/5 通过 |
| 二进制 magic | 7/7：6 个 `7f454c46`（ELF32，`e_machine=0x28` ARM）+ `dex\n038` |
| 配置解析 | `renew.conf` 7 项、`worker.conf` 16 个键全部可读 |
| 运行环境 | 整个过程没有覆盖、没有重新注入、没有停止现有组件（唯一的 :core 重启发生在 T9-02 的实验阶段，见 T9-02 报告） |

证据：`evidence/t9-01/11_backup_verify.txt`。

### 5.2 恢复顺序（本机实测可行的顺序）

```sh
# 0) 前提：Magisk root、SELinux Permissive、adb 可用（a.sh 已保证）
# 1) 部署目录与二进制（从备份还原）
mkdir -p /data/local/tmp/{t6,t7,t8,t5_bridge/bin}
cp backup/bin/tg_supervisor /data/local/tmp/t6/tg_supervisor
cp backup/bin/tg_injector   /data/local/tmp/t8/tg_injector
cp backup/bin/libtg_hook.so /data/local/tmp/t8/libtg_hook.so
cp backup/bin/libtg_ttsguard_t8155r.so /data/local/tmp/t7/libtg_ttsguard_t8155r.so
cp backup/bin/tgb_bridge    /data/local/tmp/t5_bridge/tgb_bridge
cp backup/bin/ai_worker     /data/local/tmp/t5_bridge/bin/ai_worker
cp backup/bin/tts_exec.dex  /data/local/tmp/t5_bridge/tts_exec.dex
cp backup/sh/*.sh           /data/local/tmp/t5_bridge/     # a.sh 单独放 /data/adb/service.d/
cp backup/conf/renew.conf   /data/local/tmp/t7/renew.conf
cp backup/conf/worker.conf  /data/local/tmp/t5_bridge/ai_worker/worker.conf
# key 另放（不放进仓库）
cp <secret backup>/deepseek_api_key /data/local/tmp/t5_bridge/secret/deepseek_api_key

# 2) 注入侧（顺序重要：hook 先、guard 后，都会懒等待 :core）
setsid /data/local/tmp/t6/tg_supervisor --injector /data/local/tmp/t8/tg_injector \
  --so /data/local/tmp/t8/libtg_hook.so --name com.alibaba.ailabs.genie.smartapp:core \
  --pidfile /data/local/tmp/t8/tg_supervisor.pid --log /data/local/tmp/t8/supervisor.log &
setsid /data/local/tmp/t6/tg_supervisor --injector /data/local/tmp/t8/tg_injector \
  --so /data/local/tmp/t7/libtg_ttsguard_t8155r.so --name com.alibaba.ailabs.genie.smartapp:core \
  --pidfile /data/local/tmp/t7/ttsguard.sup.pid --log /data/local/tmp/t7/ttsguard.sup.log &

# 3) 运行时侧
sh /data/local/tmp/t5_bridge/run_bridge.sh start
sh /data/local/tmp/t5_bridge/run_tts_exec.sh start
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-tap

# 4) 校验
grep -o 'libtg_[a-z0-9_]*\.so' /proc/<:core pid>/maps | sort -u     # 期望正好两个
sh /data/local/tmp/t5_bridge/run_ai_worker.sh status
```

### 5.3 恢复风险

| 风险 | 说明 | 缓解 |
|---|---|---|
| 换 `.so` 必须重启 `:core` | 活进程二次注入会因 `playTts` 序言已被改写而失败（实测 `e51ff004 b30db000`） | 重启 `:core` 前先确认 supervisor 已就绪；`init.svc` 停止旧 supervisor，避免抢注入 |
| 旧 rc 抢注入 | `/system/etc/init/tg_supervisor.rc` 会在开机时把 **T6 旧 hook** 注入 `:core`，导致新的 `t8/libtg_hook.so` 注入失败（`RTLD_NOLOAD`） | 见 §8.1；本次用 `setprop ctl.stop tg_supervisor` 临时停掉（不改文件、重启即恢复） |
| 状态文件跨重启失效 | `continuity.req` 的 seq 与 `listen_hold` 都是 `CLOCK_MONOTONIC` 毫秒，重启后基数回零 | 见 §8.2；恢复时必须清空这两个文件 |
| 注入依赖 SELinux/root | 非 root 或 Enforcing 下 injector 无法 ptrace | 由 `a.sh` 保证 Permissive + root |
| 备份中的状态文件是快照 | `continuity.req`、`play.public.json` 是运行态，覆盖旧值没有意义 | 恢复时只还原二进制/脚本/配置，状态文件按 §8.2 处理 |

---

## 6. 当前语音链路实测（恢复后）

时间 2026-11-24 11:49–11:56，`<:core>` 15364 → 18956（两次因换注入而重启），官方 UI 未打开（顶层 Activity 始终是 `…genie.launcher/AdultHomeActivity`）。

| 时间 | 事件 | 证据 |
|---|---|---|
| 11:52:18 | `factory wake (onStartTalk) session=1968072 wake_type=0` | `15_chain_verify_worker_delta.txt` |
| 11:52:22 | `route=skill skill=time.query` → `tts queued` | 同上 |
| 11:52:24 | `factory wake session=1972173 wake_type=1`（guard 自动续听） | 同上 |
| 11:52:51 | 唤醒 + `route=native intent=volume rule=volume.down` | 同上 |
| 11:52:56 | `continuity request: seq=907413 … CONFIRMED by factory session=1972181 (+208 ms)` | 同上 |
| 11:55:51–11:56:08 | 再测一次：`CONFIRMED (+207 ms)` | `16_chain_verify_native_relisten.txt` |

结论：唤醒、ASR、原厂指令、播报、免唤醒续听都在真机上跑通；`play.public.json` 显示 `state=idle`、`last_outcome=ok`。

---

## 7. 仍然无法取得 / 不做猜测的信息

1. **`vdex` → `dex` 的可分析形式**：本阶段只记录文件与大小，没有做 `vdex` 拆分（属 T9-03 范围）。
2. **TTS 是云合成还是本地合成**：日志显示云 NLU 返回 `spokenText` 后 `NOTIFY_TTS_PLAY_TXT` → `ApolloRenderAdapter` 渲染 → `AUDIO_STATUS_PLAY/COMPLETE`；`assets/tts.zip` 存在但用途未验证。**不据此下结论**。
3. **ASR 是否含在线成分**：会话中有 `Websocket-gateway … ListenStarted` 与 `onCloudEOUEvent`，说明云侧参与句尾判断；离线 ASR 能力边界未测。
4. **音频是否真的从扬声器出声**：本阶段只证实播放通路（AudioTrack 建立 + `AUDIO_STATUS_PLAY` → `COMPLETE`），没有做录音回采比对。
5. **官方账号/密钥类内容**：`shared_prefs` 只记录文件名，未读取内容。
6. **`:core` 与云端的鉴权刷新机制**：未测。

---

## 8. 发现的已存在缺陷（本阶段只记录，不修）

### 8.1 开机遗留 rc 把 T6 旧 hook 注入 `:core`

- 文件：`/system/etc/init/tg_supervisor.rc`（2,114 B，SHA256 `cdd947509c15b3b5facc0794529294ff94ab069ec1f0c20164fd27cfe414ec34`，`u:object_r:system_file:s0`）
- 行为：`on post-fs-data` + `on property:sys.boot_completed=1` 启动 `tg_supervisor`（无 `--so`，用编译默认 → `/data/local/tmp/t6/libtg_hook.so`）；且该 service 非 `oneshot`，被 kill 后 init 会立刻重新拉起。
- 实测后果：重启后 `11:38:08` 旧 supervisor 把 T6 hook 注入 `:core` 1151；随后 `t8/libtg_hook.so` 注入失败（`dlopen failed … RTLD_NOLOAD prevented it`，exit=17），`:core` 同时存在 T6 hook + t7 guard，**验收过的 T8 组合不成立**。
- 本次处置：`setprop ctl.stop tg_supervisor`（运行时，不改文件，重启自动恢复原样），再重启 `:core` 得到干净组合（只剩 `t8/libtg_hook.so` + `libtg_ttsguard_t8155r.so`）。
- 建议：下一阶段用“T8 版本 rc”替换，或在 `run_ai_worker.sh`/部署脚本里统一管理，避免两套 supervisor 抢注入。

### 8.2 跨重启后两个状态文件把续听永久拒掉

| 文件 | 内容 | 重启后的问题 |
|---|---|---|
| `/data/local/tmp/t7/continuity.req` | 单调时钟毫秒 seq（重启前 `166673741`） | 新 seq（本轮 `594568`）小于 guard 内存基线 → 落到 “below baseline”，不续听 |
| `/data/local/tmp/t5_bridge/ai_worker/listen_hold` | 单调时钟毫秒过期时间（`154215429`） | 重启后 `now` 只有 7.7×10⁵，`hold active for 153440578 ms more` → 所有续听被 “stop/exit hold” 丢弃 |

实测日志（`evidence/t9-02/16_stale_request_state.txt`、`evidence/t9-02/13_chain_after_restore_worker_delta.txt`）：

```
continuity req: seq=166673741 rejected (in the future; baseline=166673741, now=543264)
continuity req: seq=774732 accepted (first) -> pending
continuity: hold active for 153440578 ms more - auto-listen skipped
continuity req: seq=774732 dropped (stop/exit hold) - user asked to stop
```

清空这两个文件并重启 `:core` 后，续听恢复：`CONFIRMED (+208 ms)`。
建议（T8-15.6 候选）：seq/hold 一律带 boot 标识（如 `boot_id`+uptime），或 guard 在 `uptime < 阈值` 时重新取基线；这与 T8-15.5R“去掉时钟回退接受”并不冲突——需要的是**开机作用域**，不是“任意回退都接受”。

---

## 9. 证据索引

| 文件 | 内容 |
|---|---|
| `evidence/t9-01/01_package_and_install_dump.txt` | `pm path`、`dumpsys package` 版本/权限/签名/安装目录 |
| `evidence/t9-01/02_manifest_components.txt` | Manifest 组件 + 进程 + intent-filter 全表 |
| `evidence/t9-01/03_process_baseline.txt` | 全量 `ps` + 各官方进程 cmdline/status/exe/cwd/线程 |
| `evidence/t9-01/04_services_audio_baseline.txt` | `dumpsys activity services/processes`、`service list`、`dumpsys audio`、AudioFlinger |
| `evidence/t9-01/05_maps_smartapp_core.txt`、`06_maps_smartapp_main.txt` | 两个进程映射的 `.so` 清单（47 vs 3） |
| `evidence/t9-01/07_official_private_files.txt` | 私有目录/数据库/模型检索（只列名与大小） |
| `evidence/t9-01/08_own_deploy_dirs.txt` | 自有部署目录清单 |
| `evidence/t9-01/09_backup_create.txt`、`10_backup_manifest.tsv`、`11_backup_verify.txt` | 备份创建、清单、只读校验 |
| `evidence/t9-01/12_secret_backup.txt` | key 文件大小/哈希（无内容） |
| `evidence/t9-01/13_boot_script_a_sh.txt` | 开机脚本原文（adb pubkey 已脱敏） |
| `evidence/t9-01/14_state_before_reboot.txt` | 重启前完整状态 |
| `evidence/t9-01/15_chain_verify_worker_delta.txt`、`16_chain_verify_native_relisten.txt` | 恢复后语音链路实测 |
