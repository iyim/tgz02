# T9-10-R1 + T9-11：Binder 稳定化修复与冷启动接管

- 基线 `dad25d3b`，产品 APK **1.4.0 / versionCode 5**，591,388 B，sha256 `096e2e2d…c764`（本阶段最终构建）
- 设备 AILABS_S1L，Android 8.1 / API 27 / ARM32，Magisk root，SELinux Permissive
- 本阶段只改产品代码与设备上的接管脚本；worker、TtsExec、init 链、SQLite 未动

---

## 一、T9-10-R1：四个代码问题

### 1.1 Application 进程隔离（P0，已修，真机证据）

`Tgz02App.onCreate()` 现在按 `/proc/self/cmdline` 分流：

```
2026-11-25 17:19:45.656 proc=com.tgz02.voice         action=ui (DataService get + backend start)
2026-11-25 17:19:45.955 proc=com.tgz02.voice:backend action=backend-minimal (no DataService, no service start)
2026-11-25 17:21:24.872 proc=com.tgz02.voice         action=ui (DataService get + backend start)
2026-11-25 17:21:25.374 proc=com.tgz02.voice:backend action=backend-minimal (no DataService, no service start)
```

（`/data/data/com.tgz02.voice/files/bootstrap.log`，跨两次冷启动各一组）

为什么写文件而不只打日志：这台设备的 logcat 环形缓冲被原厂 logger 刷得太快，`logcat -s T910APP` 几秒后就已经抓不到；文件是可持续复核的证据。

`app_process` 起不来/被杀时不会误判：只在两种明确名字下分流，读不到 cmdline 时按 UI 处理（安全侧）。

### 1.2 幂等与失败重试（P0，已修）

原来 `submitStop` / `submitModelTest` 先 `markDuplicate()` 再写文件，写失败不释放 → 一次失败让该请求永久"重复"。

现在四条路径统一为 **accept → write → commit**，写失败 `release()` 让同一 id 可重试；判断逻辑抽到无 Android 依赖的 `RequestLedger`（LRU 256）：

```java
if (ledger.seen(eventId)) return eventId;          // 已接受，不重复写
written = ...;                                     // 真正写文件总线
if (written == null) { ledger.release(eventId); return "err:inbox_unwritable:..."; }
ledger.commit(eventId);
```

主机测试 `tests/T910R1_RequestLedgerTest.java`：**14/14 通过**

```
OK  fresh id is unknown / committed id is seen / committing twice does not grow
OK  released id is unknown again (retryable) / retry with the same id after release commits
OK  null ids are ignored / size stays bounded at MAX / oldest entry was evicted
RESULT passed=14 failed=0
```

真机上"写失败"场景没有构造（需要临时 chmod inbox 且只能从 UI 触发，UI 不产生重复 id）；这一点在 §五 明列。

### 1.3 Binder 连接恢复（P1，已修）

| 场景 | 现在的行为 |
|---|---|
| 绑定超时 3 s | 启动本地 fallback，日志 `channel=file-fallback` |
| **Binder 恢复** | `stopFallback("binder connected")` —— 停掉本地 poller，绝不双轮询 |
| 断开/绑定死亡 | 重试 1 s 一次，累计 3 次仍失败才 fallback；日志 `bind retry n/3` |
| 每次诊断 | 都带 `channel=binder|file-fallback|none` |
| RemoteException | 不重发、不换 id，返回错误文本 |
| 页面销毁 | `stopPolling()` → `stopFallback("page stopped")` + 解绑 + 注销监听 |

### 1.4 版本一致性（P1，已修）

根因确认：`AndroidManifest.xml` 写的是 4 / 1.3.0，而 `build.ps1` 用命令行 `--version-code 5 --version-name 1.4.0` 覆盖了它 —— 报告写的是 APK 的真实值，源码是旧值，两边都对"自己"。

修法：版本**只**来自 manifest。`build.ps1` 现在读 manifest 并把它传给 aapt2：

```
== version: code=5 name=1.4.0 (from manifest)
$ adb shell dumpsys package com.tgz02.voice | grep version
    versionCode=5 minSdk=21 targetSdk=27
    versionName=1.4.0
```

源码、构建输出、PackageManager 三处一致。

---

## 二、T9-11：冷启动接管，做到什么程度

### 2.1 先定位：到底是谁把桌面抢回去的（实测，不是猜测）

**（a）组件级 disable 本身是持久的。** 90 秒开机监控（`/data/adb/service.d` + `HomeCtl watch`，200 ms 采样）：

```
[17:09:56] watch script start
[17:10:14] boot_completed
T+1s ts=… state=2          ← launcher/AdultHomeActivity 保持 disabled，全程没有回到 0
```

T9-10 里"重启后被恢复"的观察，对 launcher 不成立。

**（b）但 `smartapp/BootHomeActivity` 在 boot_completed 之前就被改回 enabled。**

```
[17:12:24] boot_completed
T+1s ts=… state=0          ← 我们 disable 成 2，开机时已是 0
```

**（c）HOME 是被"反复主动 START"的，不是靠解析选出来的。**

```
I ActivityManager: START u0 {act=MAIN cat=[HOME] flg=0x10000100
    cmp=…smartapp/…BootHomeActivity} from uid 0
I ActivityManager: START u0 {act=MAIN cat=[HOME] flg=0x10200000
    cmp=…smartapp/…BootHomeActivity} from uid 1000
```

一次开机里出现 6 次以上，每次都是**新的 task**（t27 → t81 → t124 → …）。也就是说：有一个 root 侧（uid 0）和一个 system 侧（uid 1000，即 smartapp 自己）在开机窗口里反复把自己带回前台，并且 smartapp 会把自己的 BootHome 组件重新 enable。

**（d）`guardians` 不是"恢复组件"的那个。** 对 `/system/bin/guardians` 做字符串检索：`setComponentEnabledSetting` 0 次、`setApplicationEnabledSetting` 0 次、`launcher`/`HomeActivity` 0 次。它可能是发 HOME intent 的 uid 0（也可能不是），但**没有任何证据表明它改组件状态**。这一点必须纠正 T9-10 的措辞。

**（e）`directBootAware` 的影响**：原厂 launcher 与 BootHome 都是 directBootAware 的 system 应用，在 user 解锁前就能被启动，所以"解锁后重新解析"这条路不存在——它们早就把 home 占住了。

### 2.2 采用的接管方式（可回滚、不删不改原厂）

因为抢屏方是"反复 START 显式 BootHome"，任何 disable 都会被它盖过，所以采用**双方都在跑、由我们赢下前台**的做法：

`/data/adb/service.d/takeover.sh`（root，Magisk 开机脚本）

1. 开机后每 1 s 尝试 `am start -n com.tgz02.voice/.VoiceHomeActivity`，成功后记录耗时；
2. 之后 45 s 内每 3 s 检查 `mResumedActivity`，不是我们就再拉一次；
3. 45 s 后退出 —— 不长期跟用户/其它应用抢前台。

同时保留：`launcher/AdultHomeActivity` 与 `children/HomeActivity` 组件 disable（持久生效），`set-home-activity` 指向产品 UI。

### 2.3 连续 5 次冷启动（验收要求）

| # | 结果 | 首次拉起耗时 | BootHome 抢回次数 |
|---|---|---|---|
| 1 | 进入 V2 UI | 6 s | 6 |
| 2 | 进入 V2 UI | 5 s | 4 |
| 3 | 进入 V2 UI | 6 s | 4 |
| 4 | 进入 V2 UI | 5 s | 5 |
| 5 | 进入 V2 UI | 6 s | 6 |

原始日志：`evidence/t9-11/cold_boot_log.txt`、`cold_boot_summary.txt`

**结论**：
- ✅ 5/5 冷启动**最终**自动进入 TG-Z02 V2 UI，无需任何 adb 命令；
- ✅ HOME 键回到产品 UI（launcher 已 disable + preferred 指向产品）；
- ❌ **"不出现 smartapp BootHomeActivity 空白过渡页"未通过**：每次开机有 4–6 次抢屏、约 15–20 秒拉锯，用户会看到闪烁。

所以 **HOME 接管标记为部分通过**，不宣称完成。要真正消除过渡页，必须让 smartapp 的 boot 逻辑不再把自己带回前台（或让它的 HOME 组件彻底不可用），这需要动原厂包或 hook，超出本阶段"可回滚、不改原厂"的边界。

### 2.4 恢复原厂桌面（实测）

```powershell
adb shell 'su 0 sh -c "rm /data/adb/service.d/takeover.sh"'        # 停用接管
adb shell 'su 0 sh -c "CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl enable com.alibaba.ailabs.genie.launcher/com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity"'
adb shell 'su 0 sh -c "CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl enable com.alibaba.ailabs.genie.children/com.alibaba.ailabs.genie.children.activity.HomeActivity"'
adb shell 'cmd package set-home-activity com.alibaba.ailabs.genie.launcher/com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity'
adb reboot
```

（T9-10 已实测恢复后按 HOME 立即回原厂 launcher；本阶段在此之上只多删一个脚本文件。）

### 2.5 priv-app 部署实验：**未做**

时间与风险取舍：本阶段把预算花在"先让冷启动真的可用"（5 次记录）与定位抢屏来源上。priv-app 化会改变 `/system` 内容并需要两次重启验证，而它解决的是"防卸载"，不解决"BootHome 抢屏"（抢屏是 uid 0/1000 的主动 START，与我们的安装位置无关）。报告中明确标为未做，不做结论。

---

## 三、system / Magisk 盘点（与备份的差异）

本地仓库里的 `system/` 是解包后的 **system 分区镜像**（app 32 个目录、priv-app 18 个目录、build.prop、framework 等）。设备上：

| 项 | 设备 | 镜像 | 差异 |
|---|---|---|---|
| `/system/app` 目录数 | **37** | 32 | 设备多 5 个条目，**全部是散装 APK 文件，不是目录** |
| `/system/priv-app` | 18 | 18 | 一致 |
| 包总数 | 74（其中 /system 57） | — | — |

**设备多出来的 5 个条目**（`/system/app` 下直接放 APK，镜像按目录复制时没有收录这些文件）：

| 文件 | 大小 | mtime | 已安装包名 | sha256 |
|---|---|---|---|---|
| `ES.apk` | 4,826,567 | 2023-03-08 23:26 | `com.estrongs.android.pop` | `6e21b49c…b2bfa` |
| `easytouch.apk` | 4,595,133 | 2023-03-08 23:27 | `com.shere.assistivetouch` | `01f3ff0d…a0aa7` |
| `qxg.apk` | 1,438,313 | 2023-03-08 23:27 | `com.web1n.permissiondog` | `cbdabba4…8543f` |
| `dangbei.apk.bak` | 9,201,063 | 2023-03-08 23:27 | 未安装（`.bak` 不扫描） | `a7a1f690…87231` |
| `magisk.apk` | 11,278,270 | 2023-03-09 00:18 | 未安装（仅文件） | `0bdc3291…26d509` |

时间戳是 **2023-03**，远早于本项目（2026-11），因此它们是**刷机包自带的预装内容**，不是我们新增。用户提到的"5 个 App"即指这 5 个条目；T9-10 报告里"没有 5 个新增 App"的表述不够准确——准确说法是：**没有我们新增的 system App；设备确实比本地镜像多 5 个预装 APK 文件，原因是镜像未收录散装 APK。**

**我们的 system 足迹**：只有 `/system/etc/init/tg_stack.rc`（2486 B，`190f611c…d2b15`）。

**Magisk 实际位置**（不是"模块"）：

```
/sbin/magisk32, /sbin/magiskinit, /sbin/magiskpolicy
/sbin/{magisk,su,resetprop} -> ./magisk,  /sbin/supolicy -> ./magiskpolicy
/data/adb/magisk/            （core 文件）
/data/adb/magisk.db          （2026-11-21）
/data/adb/modules/           空 —— 只说明"没有模块"，不等于没有 Magisk
/data/adb/post-fs-data.d/    空
/data/adb/service.d/         a.sh（本项目早期：修 adb_keys + setenforce 0 + tcp 调试）
                             takeover.sh（本阶段新增，接管脚本）
```
`/data/app` 下我们的 3 个包：`com.tgz02.voice`、`com.tgz02.aidltest`、`com.tgz02.providerprobe`，签名摘要 `252b4d98`（自签测试 key），均无 SYSTEM flag。

全量分类清单：`evidence/t9-11/system_packages.tsv`（74 行：包名 / codePath / 签名摘要 / pkgFlags / 分类）。

**无法核对的部分**：boot 分区（`/dev/block/...p?` 的镜像与补丁状态）本次没有对比，因为仓库里没有 boot 分区的原始备份；需要用户提供 boot.img 才能给结论。不伪造。

---

## 四、语音回归（本阶段最终状态）

```
ai_worker 2958 / :core 1340 / UI 2083 / backend 2108
t911reg1 ask → outcome=ok, dur_ms=1781
```

原厂唤醒、ASR、TTS、连续对话、定向停止机制全部沿用未改；`boot_stack.log` 每次开机均 `done`。

---

## 五、通过 / 未通过 / 未测试

**已通过**
1. Application 进程隔离（文件 + 进程双证据）
2. 幂等统一与失败释放（主机 14/14）
3. Binder 恢复状态机（stopFallback / retry / channel 日志；代码级，见未测试项）
4. 版本一致性（manifest = APK = PackageManager = 5 / 1.4.0）
5. 5/5 冷启动最终自动进入产品 UI；HOME 键回产品
6. 恢复原厂桌面的流程
7. 语音回归无回退

**未通过**
1. 冷启动过程中的 BootHome 空白过渡页（每次 4–6 次抢屏，15–20 s）
2. UI 停止按钮真实触点（沿用 T9-10 的说明：只验证了同一 Service 代码路径）

**未测试**
1. Binder 恢复的**真机**触发（杀 backend 进程后重连 / fallback 切换）：代码已改，未构造真机场景
2. 写失败重试的真机验证（同上）
3. priv-app 部署实验
4. SELinux enforcing
5. boot 分区与 Magisk 补丁状态的比对（缺 boot.img 备份）

---

## 六、交付物

| 文件 | 内容 |
|---|---|
| `android/t9_07_ui/.../Tgz02App.java` | 进程分流 + bootstrap.log |
| `.../BackendService.java` | `accept()` 统一路径 |
| `.../RequestLedger.java` | 新增，accept/commit/release |
| `.../BackendClient.java` | stopFallback / 重试计数 / channel 日志 |
| `build.ps1` | 版本从 manifest 读取 |
| `AndroidManifest.xml` | 5 / 1.4.0 |
| `tests/T910R1_RequestLedgerTest.java` | 主机 14 项 |
| `android/t9_10_home/HomeCtl.java` | 增加 `watch` 采样模式 |
| `android/t9_10_home/takeover.sh` | 开机接管脚本 |
| `evidence/t9-11/` | 冷启动 5 次日志、盘点 TSV、截图 |

APK：`android/t9_07_ui/build/voice_ui.apk`，591,388 B，sha256 `096e2e2d5dc9616a1eb3bfa3e3258266c30b47a24ed80ae01499c30cd79dc764`
