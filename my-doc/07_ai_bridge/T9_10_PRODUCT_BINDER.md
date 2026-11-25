# T9-10：正式产品 Binder 接入与原厂桌面接管

- 基线 `32898814`（T9-09 收尾），本阶段完成后 main 头见 §九
- 设备 AILABS_S1L，Android 8.1 / API 27 / ARM32 / 1024×600，Magisk root，SELinux Permissive
- 产品 APK `voice_ui.apk` **1.4.0（versionCode 5）**，591,388 B，sha256 `33f5d457…82aa`
- 本阶段是产品集成，不是 Demo：改动全部落在 `com.tgz02.voice` 里；worker、执行器、init 链、SQLite 一律未动

---

## 一、交付了什么

```
V2 UI（com.tgz02.voice，uid 10071）
   │   AIDL：ITgBackend / ITgBackendListener（apiLevel=1, v1.0.0）
   ▼
BackendService（com.tgz02.voice:backend，前台 + START_STICKY）
   │   文件总线（未改协议的 inbox/result/events/status/play）
   ▼
ai_worker（root，init→boot_stack.sh 拉起）
   │
   ▼
TtsExec → 原厂 smartapp :core → 唤醒/ASR/TTS
```

| 文件 | 变化 |
|---|---|
| `aidl/com/tgz02/voice/ipc/ITgBackend.aidl` | 新增：apiLevel/apiVersion/healthJson/submitAsk/submitSay/submitStop/submitModelTest/statusJson/playJson/receiptJson/registerListener/unregisterListener/listenerCount |
| `aidl/com/tgz02/voice/ipc/ITgBackendListener.aidl` | 新增：`onEvent(kind, json)`，kind ∈ turn/play/status/receipt/diag |
| `BackendService.java` | 新增：独立进程服务，**唯一轮询者**；event_id 幂等表（LRU 256）；广播容错（DeadObjectException 自动摘除） |
| `BackendClient.java` | 新增：UI 侧门面，保留原 `VoiceBridgeClient` API 形状；3 s 未连上自动本地文件回退并 `onDiag` 明示 |
| `BackendJson.java` | 新增：把观测记录序列化回 worker 的 JSON 形状（`parseStatus` 等解析器两端共用） |
| `VoiceBridgeClient.java` | 仅：`parseTurn/parseStatus` 提升为包内可见、新增 `parsePlay/parseReceipt/validEventId`、`submitKind(text,kind,eventId)` 与带 id 的 `requestStop/requestModelTest` |
| `VoiceHomeActivity / V2Shell / ModelConfigActivity` | 字段与构造换成 `BackendClient`（页面代码其余零改动） |
| `Tgz02App` | 启动时 `startForegroundService(BackendService)` |
| `AndroidManifest.xml` | 新增 service（`:backend`，exported=false）；`VoiceHomeActivity` 增加 HOME intent-filter |
| `build.ps1` | aidl 生成步骤（逐文件调用 + 输入 hash 校验）、新增源、versionCode 5 / 1.4.0 |
| `t9_10_home/HomeCtl.java` | 新增：root 侧 HOME 候选查询与组件级启停（本 ROM 的 `pm`/`cmd package` 缺这些子命令） |

**为什么服务端不承载业务**：T9-09 §4.4 已实测——Android Service 永远拿不到 root，而 worker 必须写执行器的控制文件。所以服务只做 Binder 门面 + 轮询；这不是妥协，是唯一正确的分工。

**没有两个竞争入口**：提交、停止、模型测试、事件全部经 Binder；UI 侧的 `VoiceBridgeClient` 只在服务 3 秒不可达时启用，并在诊断日志里明写 `local fallback … transitional path`。

---

## 二、真机结果：进程与 Binder

```
$ ps -A -o PID,NAME
 6114 com.tgz02.voice            ← UI
 6134 com.tgz02.voice:backend    ← 服务（独立进程，同 uid）

$ dumpsys activity services com.tgz02.voice
  ServiceRecord{… com.tgz02.voice/.BackendService}
    processName=com.tgz02.voice:backend
    app=ProcessRecord{… 6134:com.tgz02.voice:backend/u0a71}
    isForeground=true foregroundId=30992
    Bindings: IntentBindRecord{… CREATE}
      binder=android.os.BinderProxy@ebb8a48
      Client AppBindRecord{… 6114:com.tgz02.voice}
        ConnectionRecord{830b3df u0 CR com.tgz02.voice/.BackendService}

$ logcat -s T910CLIENT T910BACKEND
I T910CLIENT: backend: bound pid=6309 (com.tgz02.voice/.BackendService)
I T910BACKEND: listener added, count=1
```

`evidence/t9-10/` 里的截图与日志：

| # | 内容 |
|---|---|
| 01 | 首页正常渲染（V2 儿童模式） |
| 02 | 注入 ask → **UI 通过 Binder 收到 turn** 并显示「hello-from-binder」 |
| 03 | 成功回合：`布丁说 / answer-through-backend / stub-doubao:ok`，状态变为「在听你说」（status 也经 Binder 推送） |
| 04 | 按 HOME → `com.tgz02.voice/.VoiceHomeActivity` |
| 05 | 冷启动一次直接进入 V2 首页（见 §五的复现情况） |
| 06 | 冷启动后的语音回合 `t910cold1 → outcome=ok` |
| 07 | 播报中：`play.public.json state=playing tts_id=5245852` |
| 08/09 | 技能中心、记忆中心页面回归 |

**UI 被杀 → 服务存活 → 重连（实测）**

```
$ kill 6289            # UI 进程
 6309 com.tgz02.voice:backend     ← 仍在
W T910BACKEND: listener failed, dropping: android.os.DeadObjectException
$ am start -n com.tgz02.voice/.VoiceHomeActivity
I T910CLIENT: backend: bound pid=6309   ← 重连到同一个服务实例
I T910BACKEND: listener added, count=1
```

---

## 三、语音回归（Binder 化之后）

| 项 | 结果 |
|---|---|
| ask 回合经 worker → 模型 → TTS | `t910turn2 outcome=ok dur=1716ms`；`t910cold1 outcome=ok dur=1735ms` |
| UI 回显 | 截图 02/03/06，Binder 推送的 turn 正常显示 |
| status 推送 | 截图 03 的「在听你说」来自 `status.public.json` 的 dialog.listening |
| 定向停止 | 播报中 `tts_id=5245857` → 提交 stop → receipt `{"ok":true,"stage":"stop"}`、`play.last_outcome=stopped`、journal `stop_targeted` + `outcome":"stopped"`（终态） |
| 不重播 | 停止后 5 s 复查：`state=idle last_outcome=stopped`，journal 无新条目 |
| 连续对话 / 原厂唤醒 | 截图 03 出现真实唤醒浮窗（环境声触发），链路未改 |
| worker / 执行器 | `ai_worker` 2622、`:core` 1148、`boot_stack done`；worker 二进制与 TTS 执行器未改 |

停止请求这次是从 adb 走**同一条 Service 代码路径**（`VoiceBridgeClient.requestStop` ← `BackendService.submitStop`）提交的：UI 的「■ 停止播报」按钮只在对话播报态出现，模型回答只有 1.7 s，触点窗口太窄，本次没有用真实触点复现。这一条在「未验证」里明列。

---

## 四、五处结论修正（按审查意见收紧）

1. **平台签名不是"唯一技术门槛"**。准确表述是：`android.uid.system` 必须平台签名（实测 `Signature mismatch for shared user`，设备无 pk8）；而"装成系统应用、普通用户卸不掉"**不需要**平台签名（`adb uninstall` → `DELETE_FAILED_INTERNAL_ERROR`）。SYSTEM 标志 / priv-app 目录 / 平台签名 / system uid 是四件不同的事。
2. **Service 拉起 C 进程 ≠ 拉起 root C 进程**。T9-09 实验里 `tg_echo_daemon` 的 uid 是 `u0_a72`（服务自身），ppid 是服务。本阶段没有把任何 root 职责搬进服务。
3. **SELinux 只在 Permissive 下验证过**，enforcing 全部路径仍未测。
4. **AIDL 已进正式产品**（不是 Demo 接口）：但 CI 为空，不能称"CI 通过"；真机证据是本报告与 `evidence/t9-10/`。
5. **旧 UI 未恢复**，V2 仍是唯一界面基线。

---

## 五、HOME 接管：做到哪一步，卡在哪

### 5.1 已成立

- 给产品 Activity 增加 HOME intent-filter 后，它成为合法候选；
- `cmd package set-home-activity com.tgz02.voice/.VoiceHomeActivity` 成功写入 preferred 记录（`mAlways=true`）；
- **禁用三个竞争 HOME 组件后，按 HOME 确实进入我们的 UI**（截图 04，`mResumedActivity: com.tgz02.voice/.VoiceHomeActivity`）：
  - `com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity`
  - `com.alibaba.ailabs.genie.children/.activity.HomeActivity`
  - `com.alibaba.ailabs.genie.smartapp/….genieboot.activity.BootHomeActivity`（组件级，不碰 `:core`）
- 冷启动**成功过一次**：禁用上述三项 + 禁用第三方 `app.orchard.tv` 后重启，直接进 V2 首页（截图 05，pid 1155 / backend 1204，无 BootHome 空白页）。

### 5.2 卡点（实测，不是推断）

**组件级禁用状态在重启后被恢复。**

```
# 禁用后立即查
STATE …launcher…AdultHomeActivity = 2   (disabled)
# 重启后再查（同一命令）
STATE …launcher…AdultHomeActivity = 0   (default)
```

同时第三次冷启动又落回原厂 launcher（`mResumedActivity: …launcher/.activity.AdultHomeActivity t2`）。

可能的恢复者：原厂 root 守护 `guardians`（T9-09 实测其域为 `u:r:guardians:s0`、init 拉起），或 launcher 自身的守护路径——本次没有抓到"谁调用了 setComponentEnabledSetting"，所以只能记为**未定位**。

另一个原因是机制性的：原厂 launcher 与 `BootHomeActivity` 都是 `directBootAware` 的 system 应用，在 user 尚未解锁的启动早期只有它们可用，AMS 先用它们建立了 home task，解锁后不会主动改选。

### 5.3 因此本阶段的结论

**「HOME 键切换」已验证；「冷启动稳定进入产品 UI」未达成。** 不把一次成功当成能力。

下一步的三条候选（按成本／风险排序，均未实施）：

1. **产品 APK 进 `/system/priv-app`**（自签即可，T9-09 已验证能拿到 SYSTEM 标志且卸载不掉），再看 HOME 解析是否与 system launcher 同级竞争；
2. **整包禁用原厂 launcher**（`IPackageManager.setApplicationEnabledSetting(...,3)`）并确认 `guardians` 是否再次恢复——若恢复，需要先定位它的策略来源；
3. **给 VoiceHomeActivity 声明 `directBootAware`** 并解决 locked 状态下 DataService（CE 存储）不可用的问题——这是唯一不依赖禁用的路，但要动启动早期路径，风险高于前两条。

> 本阶段没有为了让截图好看而删除原厂 APK，也没有盲禁系统包；`app.orchard.tv` 是设备上的第三方 IPTV 应用（带 BootReceiver + HomeGuardService，会抢 HOME），实验期间临时整包禁用，**已恢复 `state=0`**。

### 5.4 恢复原厂桌面（已实测的步骤）

```powershell
$ctl='CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl'
adb shell "su 0 sh -c `"$ctl enable com.alibaba.ailabs.genie.launcher/com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity`""
adb shell "su 0 sh -c `"$ctl enable com.alibaba.ailabs.genie.children/com.alibaba.ailabs.genie.children.activity.HomeActivity`""
adb shell "su 0 sh -c `"$ctl enable com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.genie.genieboot.activity.BootHomeActivity`""
adb shell 'cmd package set-home-activity com.alibaba.ailabs.genie.launcher/com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity'
adb shell 'am force-stop com.tgz02.voice'
```

实测结果：按 HOME 立即回到 `launcher/.activity.AdultHomeActivity`（§5.2 的截图与日志即此过程的产物）。**注意**：`HomeCtl list` 打印的 `RESOLVED_HOME` 来自 `IPackageManager.resolveIntent`，与 AMS 实际启动的 home 并不总是一致；判断实际行为要看 `mResumedActivity`。

---

## 六、设备上的包盘点（回应"5 个 App"）

`system/Magisk 分区里新增 5 个 App` 这个说法需要更正，实测如下：

| 位置 | 内容 |
|---|---|
| `/data/app`（普通安装，可卸载） | `com.tgz02.voice`（产品 UI，uid 10071）、`com.tgz02.aidltest`（T9-04 probe）、`com.tgz02.providerprobe`（T9-05 probe）——**共 3 个**，T9-09 的 `com.tgz02.binderdemo.svc` 已在实验收尾时删除，`…binderdemo.ui` 本阶段也已卸载 |
| `/system` 分区新增 | **只有 1 个文件**：`/system/etc/init/tg_stack.rc`（2486 B，`190f611c…`）。`/system/app` 37 个、`/system/priv-app` 18 个均为原厂，无我们新增的 APK |
| `/data/adb/modules` | **空**（无 Magisk 模块） |
| `/data/adb/service.d` | `a.sh` 一个（修 adb_keys + `setenforce 0` + 打开 tcp 调试端口），与语音无关 |
| `/data/local/tmp` | 我们的全部运行时（t5_bridge、t9、t9_ui、home_ctl.dex、binderd.dex 等），均在 tmp 而非 system |

结论：**没有"5 个系统 App"**。要清理实验痕迹只需卸载 3 个 `/data/app` 包 + 删 `/system/etc/init/tg_stack.rc`（语音栈随之失效，见 M2 备份的回滚章节）。

---

## 七、回滚

| 场景 | 做法 |
|---|---|
| 回滚产品 APK（保留数据） | `adb install -r` 上一版（`dist/voice_ui.apk` 1.3.0，versionCode 4）——SQLite 与快照格式未变 |
| 关闭 Binder 路径 | 应用内无需开关：`BackendService` 不可用时 UI 自动本地文件回退（3 s 超时，`onDiag` 明示） |
| 恢复原厂桌面 | §5.4（组件 enable + `set-home-activity` launcher + force-stop 产品） |
| 回滚 worker / 语音栈 | 见 M2 备份手册 §四（本次未改 worker / 执行器 / init 链） |
| 撤销 HOME 声明 | 回滚到 1.3.0 APK 即无 HOME filter（本阶段新增的 filter 在 1.4.0 里） |

---

## 八、已通过 / 未通过 / 未测试

**已通过（真机）**
1. UI 与 Service 独立进程（6114 / 6134；6289 / 6309）
2. AIDL 双向：绑定（BinderProxy）、turn/status 推送、echo 级调用
3. UI 进程被杀后服务存活；重启 UI 重连到同一服务实例（同 pid）
4. 语音回合经 Binder 观测（`t910turn2`、`t910cold1`，TTS 播报 ok）
5. 定向停止（receipt `stage=stop`、`last_outcome=stopped`、journal `stop_targeted`），5 s 复查无重播
6. 技能中心 / 记忆中心 / 设置页面正常（截图 08/09 及交互）
7. HOME 键切换进入产品 UI（禁用三个竞争组件的前提下）
8. 恢复原厂桌面（§5.4 全流程实测）
9. worker / 执行器 / init 链未改，语音链路无回退

**未通过**
1. **冷启动稳定进入产品 UI**：一次成功，复现失败。根因是组件级禁用被恢复（未定位恢复者），且原厂 home 是 directBootAware 的 system 应用
2. UI 停止按钮的**真实触点**未复现（仅验证了同一 Service 代码路径）

**未测试**
1. SELinux enforcing 下的全部路径
2. priv-app 化之后 HOME 解析是否改变
3. `guardians` 的策略来源 / 如何让它停止恢复原厂组件
4. `directBootAware` 方案（locked 状态下 DataService 不可用的问题未处理）
5. 长时间运行下 Service 被回收的边界（本窗口内只能用 kill 验证存活）
6. CI：仓库没有 workflow，不能声称 CI 通过

---

## 九、证据与复现

```powershell
# 构建（含 AIDL）
powershell -ExecutionPolicy Bypass -File android\t9_07_ui\build.ps1
# 安装 + 启动
adb install -r android\t9_07_ui\build\voice_ui.apk
adb shell 'am start -n com.tgz02.voice/.VoiceHomeActivity'
# 服务与绑定
adb shell 'dumpsys activity services com.tgz02.voice'
adb logcat -s T910CLIENT:V T910BACKEND:V
# HOME 候选与启停（root）
adb push android\t9_10_home\out\dex\classes.dex /data/local/tmp/home_ctl.dex
adb shell 'su 0 sh -c "CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl list"'
# 语音验收辅助（say / stop）
adb shell 'su 0 sh -c "sh /data/local/tmp/t9_10/dev_say.sh t910say2 <长文本>"'
adb shell 'su 0 sh -c "sh /data/local/tmp/t9_10/dev_stop.sh t910stop1 <tts_id>"'
```

`evidence/t9-10/`：01–09 截图；本报告的每段命令输出都来自这些真机运行。

---

## 十、设备当前状态

产品 UI 1.4.0 已安装（普通应用，可手动启动）；`BackendService` 随 App 启动；**桌面为原厂 launcher**（本阶段未留下半接管状态）；`app.orchard.tv` 已恢复；三个原厂 HOME 组件 `state=0`。

```
ai_worker 2622 / :core 1148 / boot_stack done
t910cold1 ask → outcome=ok
```
