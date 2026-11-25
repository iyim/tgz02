# TG-Z02 里程碑二（M2）备份与部署/回滚说明

- 备份日期：2026-11-25
- 代码基线：main `4677eaa4`（T9-UI-03-R1）
- 覆盖阶段：T9-08B-R2（定向停止）→ T9-08C-R2（多厂商模型）→ T9-UI-01/01-V2（V2 视觉）→
  T9-UI-02（APK 落地）→ T9-UI-03/R1（统一 SQLite + 记忆中心 + 语音学习）
- 备份位置：`my-doc/07_ai_bridge/milestone_m2/`（36 个文件，`SHA256SUMS.txt` 为校验清单）

---

## 一、备份内容清单

| 目录 | 内容 | 对应仓库源 |
| --- | --- | --- |
| `apk/voice_ui_installed.apk` | 设备上**实际安装**的 APK（从 /data/app 拉取） | `android/t9_07_ui/dist/voice_ui.apk`（SHA256 一致：`03afb9bc…`） |
| `worker/ai_worker` | 当前运行的 worker 二进制（356,884B） | 源码 `android/*.c`（build.ps1 编译） |
| `worker/tts_exec.dex` | 原厂 TTS 执行器 dex（8c79c506…，未改动过） | `android/tts_exec/` |
| `worker/t9_08c_stub_server` | 设备本地协议桩（3,452,932B） | `android/t9_08c_stub_server.c` |
| `device/t9_backup/` | 设备 `/data/local/tmp/t9/backup/` 全量（bin/conf/state/MANIFEST） | supervisor 管理的部署基线 |
| `device/t5_bridge_bin/` | `/data/local/tmp/t5_bridge/bin/`（含历史版本备份链 ai_worker.bak_*） | — |
| `device/models.json` | 当前 4 套模型配置（stub 凭证） | App 私有文件 |
| `device/tg_supervisor.rc` + `deploy.stamp` | init.rc 部署状态 | `android/init_rc/` |
| `scripts/` | 部署/回滚脚本集（t9_07/08b_r2/08c/ui_03 deploy+restore、seed_models、stub_start/stop） | `android/*.sh` |
| `SHA256SUMS.txt` | 全部 36 个文件的 SHA256 | — |

**未纳入备份但可随时重建**：`tgz02.db`（App 数据，重装 APK 后由用户重建；无用户真实数据）、
`evidence/`（验收截图，已在 git）、`ui/prototype*`（设计原型，已在 git）。

---

## 二、当前设备部署形态（M2 时点快照）

```
设备 AILABS_S1L @ 192.168.1.9:5555（adb over TCP）

进程（root）：
  tg_supervisor ×2（pid 1158/1159，init.rc: tg_supervisor.rc，deployed_at=20261124_143437）
  ai_worker（pid 10991，356,884B，--inbox --models，4 套配置，default=m-doubao→127.0.0.1:8799 桩）
  tts_exec（执行器，由 supervisor 监管，tts_exec.dex 8c79c506…）
  t9_08c_stub_server（127.0.0.1:8799，三家协议桩）

进程（App）：
  com.tgz02.voice（uid 10071 / u0_a71，voice_ui.apk v1.3.0，579,100B）

数据通道：
  /data/local/tmp/t9_ui/{inbox,result,rejected,events,allowed_uids,status.public.json}
  /data/local/tmp/t9_ui/snapshots/{memory,alarms,skills}.public.json（App 写 → worker 读）
  /data/local/tmp/t5_bridge/tts/{queue,done,control,journal.jsonl,play.public.json}

App 数据：
  /data/data/com.tgz02.voice/databases/tgz02.db（WAL，memory_items/alarms/schedules/
  skills/execution_logs/migration 六表）
  /data/data/com.tgz02.voice/files/models.json（worker 热加载源）
  /data/data/com.tgz02.voice/files/ui_theme.json（kid|calm）
```

---

## 三、全新设备部署说明（从备份恢复到一台同型号设备）

前置条件：设备已 root（Magisk）、adb over TCP 可达、与主机同网段。

### 步骤 1：部署 root 侧运行时

```bash
# 1a. 二进制入位
adb push milestone_m2/worker/ai_worker          /data/local/tmp/t5_bridge/bin/ai_worker.new
adb push milestone_m2/worker/tts_exec.dex       /data/local/tmp/t5_bridge/bin/tts_exec.dex
adb push milestone_m2/device/t5_bridge_bin/*    /data/local/tmp/t5_bridge/bin/   # 或仅 ai_worker

adb shell "su 0 sh -c 'cat /data/local/tmp/t5_bridge/bin/ai_worker.new > /data/local/tmp/t5_bridge/bin/ai_worker && chmod 755 /data/local/tmp/t5_bridge/bin/ai_worker && rm /data/local/tmp/t5_bridge/bin/ai_worker.new'"
# 校验（必须与 SHA256SUMS.txt 的 1add1012… 一致）
adb shell "su 0 sha256sum /data/local/tmp/t5_bridge/bin/ai_worker"
```

```bash
# 1b. supervisor + init.rc（开机自启）
adb push milestone_m2/device/tg_supervisor.rc /data/local/tmp/t9/rc_backup/
# 按既有 T9-03 流程写入 /etc/init.d（或 vendor rc）后重启；stamp 校验 deployed_at
```

### 步骤 2：部署 UI App

```bash
adb install -r milestone_m2/apk/voice_ui_installed.apk
adb shell "su 0 sh -c 'sh /data/local/tmp/t9_ui_03_deploy.sh'"   # 建 snapshots/ 并 chown 给 App uid
```

### 步骤 3：模型配置

```bash
adb push milestone_m2/device/models.json /data/local/tmp/m.json
adb shell "su 0 sh -c 'cp /data/local/tmp/m.json /data/data/com.tgz02.voice/files/models.json \
  && chown 10071:10071 /data/data/com.tgz02.voice/files/models.json'"
# 注意：内含 stub 凭证（127.0.0.1:8799）。接真实厂商时在 App 配置页替换 base_url 与 key。
```

### 步骤 4：启动与验证

```bash
adb shell "su 0 sh -c 'sh /data/local/tmp/t9/backup/sh/…'"   # 或手动：supervisor 拉起
# 快速验收（照 T9-UI-03-R1 报告 §三）：
adb shell "su 0 pidof ai_worker"                              # 非空
adb install -r milestone_m2/apk/voice_ui_installed.apk        # 已装则跳过
adb shell am start -n com.tgz02.voice/.VoiceHomeActivity      # 布丁首页出现
adb shell "su 0 cat /data/local/tmp/t9_ui/snapshots/memory.public.json"   # 快照存在
```

---

## 四、回滚说明

### 场景 A：只回滚 UI（V2 界面出问题，语音链路无恙）

```bash
adb install -r <上一里程碑 APK>          # M1 = T9-08C 时的 1.2.0 包（深色 V1 壳）
# 数据兼容：tgz02.db / snapshots/ 是新增物，旧 APK 不读不写，回滚无副作用
```

### 场景 B：回滚 worker 二进制（worker 行为异常）

```bash
adb shell "su 0 sh -c 'cp /data/local/tmp/t5_bridge/bin/ai_worker.bak_t8_15_2 \
  /data/local/tmp/t5_bridge/bin/ai_worker && chmod 755 /data/local/tmp/t5_bridge/bin/ai_worker'"
# 通用做法：从 t5_bridge/bin/ 的 .bak_* 链选目标版本（每阶段一份，见备份清单）
adb shell "su 0 sh -c 'pidof ai_worker'"  # 确认新 pid；失败则看 journal 与 logcat
```

### 场景 C：完全恢复出厂语音（撤销本项目的全部注入）

```bash
# T9-02/T9-07 既有的 restore 路径（备份目录含 MANIFEST.tsv 全量基线）：
adb push milestone_m2/scripts/t9_08b_r2_restore.sh /data/local/tmp/
adb shell "su 0 sh /data/local/tmp/t9_08b_r2_restore.sh"
# 或更早的：t9_07_restore.sh（恢复原厂 :core 状态与 guard/hook 前置）
# 最终手段：milestone_m2/device/t9_backup/ 内的 bin/conf/state 原样覆盖回去
```

### 场景 D：撤销 init.rc 自启

```bash
adb shell "su 0 sh -c 'cat /data/local/tmp/t9/rc_backup/sha256.before'"  # 原厂 rc 基线
# 按 T9-03 的 rollback_boot_rc.sh 流程恢复原厂 rc，删除 tg_supervisor.rc
adb shell "su 0 reboot"
```

### 场景 E：数据层回滚（SQLite 出问题）

```bash
adb shell "su 0 sh -c 'rm /data/data/com.tgz02.voice/databases/tgz02.db*'"
# 重启 App：空库重建 + 旧 JSON 迁移重放（若 .imported 存在则先删掉以允许重迁移）
```

---

## 五、备份完整性校验

任何恢复前先校验：

```powershell
# 主机侧
Get-ChildItem milestone_m2 -Recurse -File | Where-Object Name -ne 'SHA256SUMS.txt' |
  ForEach-Object { "{0}  {1}" -f (Get-FileHash $_.FullName -Algorithm SHA256).Hash.ToLower(),
    $_.FullName.Substring((Split-Path (Split-Path (Get-Item $_.FullName) )).Length+1) } |
  Compare-Object (Get-Content milestone_m2\SHA256SUMS.txt)
```

设备侧关键 hash（与备份对照）：

| 产物 | SHA256（前 16 位） |
| --- | --- |
| ai_worker | `1add101210dfd2e8` |
| tts_exec.dex | `8c79c5067c185aa0` |
| voice_ui.apk | `03afb9bcac2c6f0b` |
| t9_08c_stub_server | `5b5ac1fdc9868ca5` |

---

## 六、git 提交记录（M2 区间）

| 提交 | 内容 |
| --- | --- |
| `51c62b2c` | T9-08B-R2 定向停止 |
| `684d981a` | T9-08C-R2 多厂商模型配置 |
| `4376edb3` | T9-UI-01 设计体系 |
| `855f5086` | T9-UI-01-V2 儿童友好视觉 |
| `2eae3792` | T9-UI-02 APK 落地（真机） |
| `4f8006e0` | T9-UI-03 统一 SQLite + 记忆中心 |
| `4677eaa4` | T9-UI-03-R1 数据可靠性 + 语音记忆流（**M2 头**） |

M2 头 = `4677eaa4`；上一里程碑头 = `c7d03ac0`（T9-08B-R1）。
