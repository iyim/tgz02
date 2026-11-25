# TG-Z02 里程碑二（M2）备份 · 部署与回滚手册

- 备份时间：2026-11-25 15:4x（Asia/Hong_Kong）
- 代码基线：`main` 头 `4677eaa4`（T9-UI-03-R1，M2 封板）
- 覆盖阶段：T9-08B-R2 定向停止 → T9-08C-R2 多厂商模型 → T9-UI-01 / 01-V2 视觉 →
  T9-UI-02 APK 落地 → T9-UI-03 / R1 统一 SQLite + 记忆中心 + 语音记忆流
- 备份位置：`my-doc/07_ai_bridge/milestone_m2/`
- 校验权威：`INVENTORY.tsv`（本地路径 ↔ 设备路径 ↔ SHA256 ↔ 角色）、`SHA256SUMS.txt`、
  `scripts/verify_m2.ps1`、`VERIFY_M2_20261125.txt`（封板时的实测输出）

> 本手册里的每条设备命令都在 2026-11-25 的实机上核对过路径、属主与 hash。
> 未经核对的推测一律标注「未验证」。

---

## 一、备份内容与构成

```
milestone_m2/
├─ INVENTORY.tsv                ← 78+ 条：archive_path / device_path / size / sha256 / role / note
├─ SHA256SUMS.txt               ← 同集合的 sha256sum 格式（verify_m2.ps1 直接消费）
├─ VERIFY_M2_20261125.txt       ← 封板实测输出（主机 + 设备逐项 hash 对照）
├─ apk/voice_ui_installed.apk   ← 设备上实际安装的包（/data/app/.../base.apk，03afb9bc）
├─ worker/
│   ├─ ai_worker                 ← 运行中的 worker（356,884B，1add1012）
│   ├─ tts_exec.dex             ← 执行器 dex（38,236B，8c79c506）＝ t5_bridge/tts_exec.dex
│   └─ t9_08c_stub_server        ← 本地协议桩（3,452,932B，5b5ac1fd；设备上磁盘副本已删）
├─ device/
│   ├─ runtime/
│   │   ├─ system_etc_init/tg_stack.rc   ← 真正生效的开机 rc（190f611c）
│   │   ├─ t5_bridge/                    ← boot_stack.sh、run_* 启动器、tts_exec.dex、tts_supervisor.sh
│   │   ├─ t5_bridge/bin/                ← 当前 ai_worker + 历史 AI_WORKER 备份链（.bak_t7_05r2 … .bak_t8_15_2）
│   │   ├─ t6/                           ← tg_supervisor / tg_injector / libtg_hook.so / system_etc_init.before
│   │   ├─ t7/libtg_ttsguard_t8156.so    ← 已验收的 TTS guard
│   │   ├─ t8/{tg_injector,libtg_hook.so}← 已验收的 :core hook
│   │   └─ t9/
│   │       ├─ tg_stack.rc、boot_stack.sh  ← deploy_boot_rc.sh 的输入（与上面同字节）
│   │       ├─ backup/                   ← 设备 /data/local/tmp/t9/backup 全量（含自带 MANIFEST.tsv）
│   │       ├─ rc_backup/                ← 开机 rc 事务基线（sha256.before、deploy.stamp、deploy.log）
│   │       ├─ boot/                     ← deploy_boot_rc.sh / rollback_boot_rc.sh / s13_restore.sh / backup.tgz …
│   │       └─ inbox/                    ← t9_06r1_inbox_perms.sh、allowed_uids
│   ├─ db/{tgz02.db, -wal, -shm}         ← SQLite 三件套（数据在 WAL 里，必须一起恢复）
│   ├─ snapshots/{memory,alarms,skills}.public.json
│   ├─ models.json                        ← 4 套配置、明文 key（M2 为 stub 凭证）
│   ├─ ui_theme.json                      ← kid|calm
│   └─ worker.conf                        ← /data/local/tmp/t5_bridge/ai_worker/worker.conf
└─ scripts/                               ← 设备端部署/回滚脚本 + gen_inventory.ps1 + verify_m2.ps1
```

自检（任何时候先跑这个，别在没自检的备份上做恢复）：

```powershell
cd my-doc\07_ai_bridge\milestone_m2
.\scripts\verify_m2.ps1            # 主机 78/78
.\scripts\verify_m2.ps1 -Device    # 追加 12 项与在跑设备逐字节对照
# 期望：host files=N mismatched=0 missing=0；device 全 OK；RESULT: PASS
```

---

## 二、M2 时点的设备真实形态

设备 `AILABS_S1L`，`192.168.1.9:5555`（adb over TCP），Android 8.1 / API 27 / ARM32 / 1024×600 mdpi，Magisk root，SELinux Permissive。

### 2.1 进程

| 进程 | 身份 | 启动者 | 作用 |
|---|---|---|---|
| `com.alibaba.ailabs.genie.smartapp:core` | App + 注入 | 系统 | 原厂大脑（未改动） |
| `tg_supervisor` ×2（pid 1158/1159） | root | init（`tg_stack.rc`，非 oneshot，被 init 保活） | 把 libtg_hook.so / libtg_ttsguard_t8156.so 注入 :core |
| `tgb_bridge` | root | `boot_stack.sh` → `run_bridge.sh start` | 原厂 ASR 事件桥 |
| `app_process … com.tgz02.tts.TtsExec`（pid ~18498） | root | `boot_stack.sh` → `run_tts_exec.sh` → `tts_supervisor.sh` | 原厂 TTS 执行器（唯一有权调 stop 的角色） |
| `ai_worker`（pid 10991） | root | `boot_stack.sh` → `run_ai_worker.sh start` | 我们的大脑：inbox/events、模型调用、TTS 排队、定向停止 |
| `t9_08c_stub_server`（pid 31366） | root | 手动启动 | 127.0.0.1:8799 三家协议桩（**磁盘副本已删，仅进程存活**） |
| `com.tgz02.voice`（uid 10071） | App | 用户/Launcher | V2 产品 UI |

### 2.2 开机链（这是恢复时最容易搞错的一段）

```
init（Android 8.1 会解析 /system/etc/init 下每个普通文件，不看后缀）
 └─ /system/etc/init/tg_stack.rc
     on property:sys.boot_completed=1
       ├─ start tg_hook_sup   → /data/local/tmp/t6/tg_supervisor --so /data/local/tmp/t8/libtg_hook.so
       ├─ start tg_guard_sup  → /data/local/tmp/t6/tg_supervisor --so /data/local/tmp/t7/libtg_ttsguard_t8156.so
       └─ start tg_stack      → /system/bin/sh /data/local/tmp/t5_bridge/boot_stack.sh   (oneshot)
                                  ├─ 等 :core 出现（≤120s）
                                  ├─ 校验 :core 的 maps 同时含
                                  │    /data/local/tmp/t8/libtg_hook.so
                                  │    /data/local/tmp/t7/libtg_ttsguard_t8156.so
                                  │  （两者缺一就什么都不启动，只写 boot_stack.log，绝不重启 :core）
                                  └─ run_bridge.sh start / run_tts_exec.sh start /
                                     run_ai_worker.sh start / run_ai_worker.sh start-tap
```

`/data/local/tmp/t9/rc_backup/tg_supervisor.rc` 是 **T6 遗留文件，早已不在 /system/etc/init 里**。
它正是 T8-15.6 修掉的那个 bug 的来源（无 `--so` 参数 → 手里拿到过期 hook → 与已验收 hook 抢注入）。
**任何情况下都不要把它部署回去。**

### 2.3 数据通道与权限（全新设备必须照此建立）

| 路径 | 权限 | 属主 | 谁写 | 谁读 |
|---|---|---|---|---|
| `/data/local/tmp/t9_ui` | 0755 | root:root | — | 所有人可穿越，不可写 |
| `…/inbox` | 0700 | 10071:10071 | App | worker |
| `…/result` | 0755 | root:root | worker（0644 文件） | App |
| `…/rejected` | 0700 | root:root | worker | root |
| `…/events` | 0750 | root:10071 | worker | App |
| `…/snapshots` | 0700 | 10071:10071 | App | worker |
| `…/allowed_uids` | 0644 | root:root | 部署脚本 | worker |
| `…/status.public.json` | 0640 | root:10071 | worker | App |
| `/data/local/tmp/t5_bridge/tts/{queue,control,journal.jsonl,play.public.json}` | root | root | worker / 执行器 | 执行器 / worker |
| `/data/data/com.tgz02.voice/databases/tgz02.db*` | 0700 目录 | 10071 | App（DataService） | 仅 App |

关键点：**写入端与读取端的 uid 是刻意分开的**，inbox 只有 App uid 能创建文件（其它 App 物理上写不进来），
worker 还会复查属主并 unlink 外来文件。

---

## 三、从备份恢复到一台全新同型号设备

前提：同一型号固件、已 root（Magisk）、adb over TCP 可达、`/system` 可写（Magisk overlay 或 `mount -o rw,remount`）。
以下命令在主机 PowerShell 里、在 `milestone_m2` 目录下执行。

### 阶段 1：把二进制与脚本放到设备（此时什么都还没启动）

```powershell
# 1.1 worker 与执行器
adb push worker\ai_worker                    /data/local/tmp/t5_bridge/bin/ai_worker
adb push worker\tts_exec.dex                 /data/local/tmp/t5_bridge/tts_exec.dex
# 1.2 运行时脚本（boot_stack 与四个启动器；run_ai_worker.sh 依赖 .accepted）
adb push device\runtime\t5_bridge\boot_stack.sh       /data/local/tmp/t5_bridge/
adb push device\runtime\t5_bridge\run_ai_worker.sh    /data/local/tmp/t5_bridge/
adb push device\runtime\t5_bridge\run_ai_worker.sh.accepted /data/local/tmp/t5_bridge/
adb push device\runtime\t5_bridge\run_bridge.sh       /data/local/tmp/t5_bridge/
adb push device\runtime\t5_bridge\run_tts_exec.sh     /data/local/tmp/t5_bridge/
adb push device\runtime\t5_bridge\tts_supervisor.sh   /data/local/tmp/t5_bridge/
adb push device\runtime\t9\backup\bin\tgb_bridge      /data/local/tmp/t5_bridge/tgb_bridge
# 1.3 注入链
adb push device\runtime\t6\tg_supervisor      /data/local/tmp/t6/
adb push device\runtime\t6\tg_injector        /data/local/tmp/t6/
adb push device\runtime\t6\libtg_hook.so      /data/local/tmp/t6/
adb push device\runtime\t8\tg_injector        /data/local/tmp/t8/
adb push device\runtime\t8\libtg_hook.so      /data/local/tmp/t8/
adb push device\runtime\t7\libtg_ttsguard_t8156.so /data/local/tmp/t7/
# 1.4 worker 配置
adb push device\worker.conf /data/local/tmp/t5_bridge/ai_worker/worker.conf
```

置权限（必须，否则脚本跑不起来）：

```powershell
adb shell 'su 0 sh -c "chmod 755 /data/local/tmp/t5_bridge/bin/ai_worker /data/local/tmp/t5_bridge/tgb_bridge /data/local/tmp/t6/tg_supervisor /data/local/tmp/t6/tg_injector /data/local/tmp/t8/tg_injector"'
adb shell 'su 0 sh -c "chmod 644 /data/local/tmp/t7/libtg_ttsguard_t8156.so /data/local/tmp/t8/libtg_hook.so /data/local/tmp/t6/libtg_hook.so"'
adb shell 'su 0 sh -c "chmod 755 /data/local/tmp/t5_bridge/boot_stack.sh /data/local/tmp/t5_bridge/run_ai_worker.sh /data/local/tmp/t5_bridge/run_ai_worker.sh.accepted /data/local/tmp/t5_bridge/run_bridge.sh /data/local/tmp/t5_bridge/run_tts_exec.sh /data/local/tmp/t5_bridge/tts_supervisor.sh"'
```

### 阶段 2：建立 UI 数据通道（inbox / result / rejected / snapshots）

```powershell
adb push device\runtime\t9\inbox\t9_06r1_inbox_perms.sh /data/local/tmp/
adb push scripts\t9_ui_03_deploy.sh                     /data/local/tmp/
# 先装 APK 拿到 uid（脚本会自己 dumpsys 解析，但顺序上先装更稳）
adb install -r apk\voice_ui_installed.apk
adb shell 'su 0 sh -c "sh /data/local/tmp/t9_06r1_inbox_perms.sh 10071"'
adb shell 'su 0 sh /data/local/tmp/t9_ui_03_deploy.sh'
# 期望：inbox 0700 u0_a71；result 0755 root；rejected 0700 root；snapshots 0700 u0_a71
```

### 阶段 3：开机 rc（写 /system，之后开机自启）

```powershell
adb push device\runtime\t9\tg_stack.rc     /data/local/tmp/t9/
adb push device\runtime\t9\boot_stack.sh   /data/local/tmp/t9/
adb push device\runtime\t9\boot\deploy_boot_rc.sh     /data/local/tmp/t9/
adb push device\runtime\t9\boot\rollback_boot_rc.sh   /data/local/tmp/t9/
adb push device\runtime\t9\boot\repair_rc_manifest.sh /data/local/tmp/t9/
adb shell 'su 0 sh /data/local/tmp/t9/deploy_boot_rc.sh'
# 脚本自行 remount、逐项校验、原子替换、并写 deploy.stamp；期望末行 success 且
# /system/etc/init/tg_stack.rc 的 sha256 = 190f611c…（与 INVENTORY 一致）
adb shell 'su 0 sh -c "sha256sum /system/etc/init/tg_stack.rc"'
```

### 阶段 4：数据库、模型、快照

```powershell
# 4.1 SQLite 三件套必须一起放回（数据在 -wal 里，单放 .db 会得到空库）
adb push device\db\tgz02.db     /data/local/tmp/m2/
adb push device\db\tgz02.db-wal /data/local/tmp/m2/
adb push device\db\tgz02.db-shm /data/local/tmp/m2/
adb shell 'su 0 sh -c "mkdir -p /data/data/com.tgz02.voice/databases"'
adb shell 'su 0 sh -c "cp /data/local/tmp/m2/tgz02.db /data/data/com.tgz02.voice/databases/tgz02.db"'
adb shell 'su 0 sh -c "cp /data/local/tmp/m2/tgz02.db-wal /data/data/com.tgz02.voice/databases/tgz02.db-wal"'
adb shell 'su 0 sh -c "cp /data/local/tmp/m2/tgz02.db-shm /data/data/com.tgz02.voice/databases/tgz02.db-shm"'
adb shell 'su 0 sh -c "chown -R 10071:10071 /data/data/com.tgz02.voice/databases"'
adb shell 'su 0 sh -c "chmod 700 /data/data/com.tgz02.voice/databases"'

# 4.2 模型配置与主题
adb push device\models.json    /data/local/tmp/m2/
adb push device\ui_theme.json  /data/local/tmp/m2/
adb shell 'su 0 sh -c "cp /data/local/tmp/m2/models.json /data/data/com.tgz02.voice/files/models.json"'
adb shell 'su 0 sh -c "cp /data/local/tmp/m2/ui_theme.json /data/data/com.tgz02.voice/files/ui_theme.json"'
adb shell 'su 0 sh -c "chown 10071:10071 /data/data/com.tgz02.voice/files/models.json /data/data/com.tgz02.voice/files/ui_theme.json"'
```

（`models.json` 也可以不恢复：App 启动时若不存在会走内置默认与界面配置；M2 的这份里是 stub 凭证。）

### 阶段 5：启动并验收

```powershell
adb reboot                       # 走完整开机链；或临时手动：
#   adb shell 'su 0 sh -c "setprop sys.boot_completed 1"'  ← 只对已 root 的调试机有效，不推荐
adb wait-for-device
adb shell 'su 0 sh -c "cat /data/local/tmp/t5_bridge/boot_stack.log"'   # 期望 injection ok: hook=N guard=N
adb shell 'su 0 pidof ai_worker'                                        # 非空
adb shell 'su 0 sh -c "pidof tg_supervisor"'                            # 两个 pid
.\scripts\verify_m2.ps1 -Device                                         # 12 项逐字节对照，期望 PASS
```

功能验收（与 T9-UI-03-R1 报告同一套）：

```powershell
# 一句真实 AI 回合（inbox 的 ask 通道，等价于孩子说话经 ASR 后进入 worker）
adb shell 'su 0 sh /data/local/tmp/t5_bridge/run_ai_worker.sh status'
adb shell 'su 0 sh -c "tail -3 /data/local/tmp/t5_bridge/tts/journal.jsonl"'
# UI：布丁首页在、五个一级页可进、语音状态与 status.public.json 同步
adb shell am start -n com.tgz02.voice/.VoiceHomeActivity
```

### 阶段 6：协议桩（仅在需要验证多厂商适配器时）

```powershell
adb push worker\t9_08c_stub_server /data/local/tmp/t9/t9_08c/t9_08c_stub_server
adb shell 'su 0 sh -c "chmod 755 /data/local/tmp/t9/t9_08c/t9_08c_stub_server"'
adb shell 'su 0 sh -c "nohup /data/local/tmp/t9/t9_08c/t9_08c_stub_server 8799 >/data/local/tmp/t9/t9_08c/stub.log 2>&1 &"'
```

> M2 时点的桩进程其磁盘文件已被删除（`/proc/31366/exe -> … (deleted)`）。
> 因此「运行中的桩」不可从设备再取，只能从本备份重新部署 —— 这正是备份存在的意义之一。

---

## 四、回滚

### A. 只回滚 UI（V2 界面出问题，语音链路无恙）

```powershell
# 旧包不在备份里（M2 只备份"当前安装的那个"），从 git 历史构建或取早期 dist：
git -C system log --oneline -- my-doc/07_ai_bridge/android/t9_07_ui/dist/voice_ui.apk
git -C system checkout 2eae3792~1 -- my-doc/07_ai_bridge/android/t9_07_ui/dist/voice_ui.apk   # 示例：T9-UI-02 之前的包
adb install -r <旧包>
```
数据层无副作用：`tgz02.db` / `snapshots/` 是新增物，旧 APK 不读不写。
（该路径未在本次封板时实测，属「按代码推断」；实测过的部分是"新包覆盖安装不丢数据"。）

### B. 回滚 worker 二进制

`device/runtime/t5_bridge/bin/` 里有每阶段一份：

| 文件 | 来源阶段 |
|---|---|
| `ai_worker`（356,884） | 当前，T9-UI-03 线 |
| `ai_worker.bak_t8_15_2` | T8-15.2 |
| `ai_worker.bak_t8_14_2` / `.bak_t8_14_1d` | T8-14.x |
| `ai_worker.bak_t8_13_3` / `.bak_t8_13_2` | T8-13.x |
| `ai_worker.bak_t7_05r2` | T7-05R2 |
| `ai_worker.before_t8155` / `.t8155r` / `_t8155` | T8-15.5 前后 |

```powershell
adb push device\runtime\t5_bridge\bin\ai_worker.bak_t8_15_2 /data/local/tmp/t5_bridge/bin/ai_worker.rollback
adb shell 'su 0 sh -c "cp /data/local/tmp/t5_bridge/bin/ai_worker.rollback /data/local/tmp/t5_bridge/bin/ai_worker"'
adb shell 'su 0 sh -c "chmod 755 /data/local/tmp/t5_bridge/bin/ai_worker"'
# 重启 worker：stop 与 start 必须是两条独立的 su 调用（见 §六 #4）
adb shell 'su 0 sh /data/local/tmp/t5_bridge/run_ai_worker.sh stop'
adb shell 'su 0 sh /data/local/tmp/t5_bridge/run_ai_worker.sh start'
```
注意：回滚 worker 后 `--models` 相关行为按旧版本来（T9-08C 之前不认识 `models.json`），
`models.json` 留着无害。

### C. 完全撤销语音栈（恢复原厂）

设备侧回滚脚本都在备份里（`device/runtime/t9/boot/`）：

```powershell
adb push device\runtime\t9\boot\s13_restore.sh /data/local/tmp/t9/
adb shell 'su 0 sh /data/local/tmp/t9/s13_restore.sh'      # T9 阶段的全栈恢复
# 或更早的分层恢复（T9-02/T9-07 既有路径，脚本在 scripts/）：
adb push scripts\t9_08b_r2_restore.sh /data/local/tmp/
adb shell 'su 0 sh /data/local/tmp/t9_08b_r2_restore.sh'
adb push scripts\t9_07_restore.sh     /data/local/tmp/
adb shell 'su 0 sh /data/local/tmp/t9_07_restore.sh'
```

### D. 撤销开机自启（只摘掉 init 入口）

```powershell
adb push device\runtime\t9\boot\rollback_boot_rc.sh /data/local/tmp/t9/
adb shell 'su 0 sh /data/local/tmp/t9/rollback_boot_rc.sh'
# 该脚本会：校验 rc_backup/sha256.before 与每个后备文件 hash（不合格就整体拒绝）→
# 只删 tg_stack.rc → 恢复被替换的文件 → 把 /system 变回只读 → 每步复算 hash
adb shell 'su 0 sh -c "ls /system/etc/init | grep tg_"'   # 期望为空
adb reboot
```
本机 `deploy.stamp` 记录 `replaced=none captured=none`，所以 D 的实际效果就是「删掉 tg_stack.rc」。
原厂本来没有这个文件，删掉即回到原厂开机链。

### E. 数据层回滚（SQLite 坏了/想清空）

```powershell
adb shell 'su 0 sh -c "rm -f /data/data/com.tgz02.voice/databases/tgz02.db*"'
# 重启 App：空库重建，DataService 会重新导出三份空快照（T9-UI-03-R1 的 ensureSnapshots）
# 若还想让旧 JSON 重新迁移一次：还要把 files/skills_alarms.json.imported 改名回 .json
```

---

## 五、数据层的备份要点（最容易踩的坑）

1. **WAL**：`tgz02.db` 主文件只有 4 KB，真正的数据在 `tgz02.db-wal`（135,992 B）。
   只拷 `.db` = 得到空库。三件套必须同进同出，且 `-shm` 只对"未关闭的库"有意义，
   恢复时三件一起覆盖最省事（SQLite 会自行校验并重放 WAL）。
2. **快照是派生物**：`snapshots/*.public.json` 由 App 从 DB 导出，可重建；
   但如果 worker 正在用旧快照，覆盖 DB 后需重开 App 触发 `ensureSnapshots()`。
3. **迁移标记**：`migration` 表里记录 `skills_alarms.json` / `skills.json` 已导入。
   恢复旧 DB 后再放回旧 JSON，不会被重复导入（这正是 T9-UI-03-R1 修的不变量）。
4. **明文 key**：`models.json` 里是明文凭证（产品要求）。备份文件本身因而敏感，
   仓库里只有 stub 凭证（`good-doubao` 等），真实 key 从未提交。

---

## 六、已知限制与坑（照做前先读）

| # | 事实 | 影响 |
|---|---|---|
| 1 | `tts_exec.dex` 在设备上存在三份不同字节：`t5_bridge/tts_exec.dex`（38,236 / 8c79c506，**运行中**）、`t5_bridge/bin/tts_exec.dex`（35,216 / 426abbcd，**未被使用**）、`t9/backup/bin/tts_exec.dex`（35,264 / c947fa09，T9 基线副本） | 恢复时只放 `t5_bridge/tts_exec.dex`；另两份是历史遗留，别搞混 |
| 2 | `/data/local/tmp/t9/backup/rc_backup/tg_supervisor.rc` 是 T6 的废弃 rc | 部署它会重新引入"过期 hook 抢注入"的 bug |
| 3 | 协议桩磁盘副本已删（进程 exe 为 `(deleted)`） | 只有本备份能重建桩 |
| 4 | `su 0 sh -c "a; b"` 在 Magisk 上第二段会掉权 | 一条命令一个 `su -c`，或写设备脚本 |
| 5 | 仓库曾有 CRLF 污染：`models.json` 被 git 转成 CRLF（1041B）与设备（1024B）不一致 | 已在 `.gitattributes` 对 `milestone_m2/**` 设 `-text`；清单按设备真实字节重算 |
| 6 | `run_ai_worker.sh` 只是薄包装，真正逻辑在 `run_ai_worker.sh.accepted` | 少 push `.accepted` 会让 worker 起不来 |
| 7 | App uid 可能不是 10071（重装可能变） | `t9_06r1_inbox_perms.sh <uid>` 与 `t9_ui_03_deploy.sh` 都从 `dumpsys package` 解析，用脚本而不是硬编码 |
| 8 | DB 备份是"冷拷贝"（App 未停） | 极端情况下 WAL 中有半提交页；SQLite 重放时通常自愈，若要严格一致，先 `pm force-stop` 再拷 |

---

## 七、已验证 / 未验证（封板时的诚实清单）

**已验证（2026-11-25 实测）**
- 主机 78 个文件 SHA256 全量匹配（`verify_m2.ps1` 无参）
- 设备 12 项逐字节对照全 OK：worker、执行器 dex、`tg_stack.rc`、`t6/tg_supervisor`、`t8` hook、`t7` guard、`models.json`、`worker.conf`、三份快照、已安装 APK
- `tg_stack.rc` 的 hash（190f611c）与设备 `rc_backup/deploy.stamp` 记录的 `new_rc_sha256` 一致
- 桩进程 exe 的 `(deleted)` 状态由脚本自动记录（不是推测）

**未验证**
- 本文档 §三 的全流程**没有在一台空白设备上整段跑过**（只有单点核对：路径存在性、hash、脚本参数），
  因此它属于"按实机拓扑写成的可执行预案"，不是"已演练过的恢复"。真正的演练需要一台可刷的备机。
- §四.A 中"从 git 历史 checkout 旧 APK"的路径依赖当时 dist 是否被提交，属于按仓库布局推断。
- 未备份项：`truth` 级证据（`evidence/` 截图与日志，已在 git 中）、`ui/prototype*`（设计原型，已在 git 中）、
  设备上大量阶段性调试脚本（`/data/local/tmp/t9/s*.sh` 等，非运行必需）。

---

## 八、git 轨迹

```
c7d03ac0  M1 头（T9-08B-R1）
51c62b2c  T9-08B-R2   定向停止
684d981a  T9-08C-R2   多厂商模型
4376edb3  T9-UI-01    设计体系
855f5086  T9-UI-01-V2 儿童友好视觉
2eae3792  T9-UI-02    APK 落地（真机）
4f8006e0  T9-UI-03    统一 SQLite + 记忆中心
4677eaa4  T9-UI-03-R1 数据可靠性 + 语音记忆流   ← M2 代码头
<this>    M2 备份封板（本提交）
```
