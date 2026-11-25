# T9-12：System 镜像接管与原厂 UI 替换准备

- 基线 `70813294`（本阶段只做镜像与依赖研究，未刷写、未删设备文件）
- 设备 AILABS_S1L，Android 8.1 / API 27 / ARM32，Magisk root，SELinux Permissive
- 结论先行：**镜像来源、构建工具链、依赖边界都已查实；全量候选镜像因本机可用空间不足未能生成**（数字在 §3.3），不谎报

---

## 一、镜像来源与分区事实（T9-12.1）

### 1.1 原始镜像备份确实存在

| 文件 | 大小 | 时间 | 格式 |
|---|---|---|---|
| `D:\tgz02\flash\system.img` | 1,023,410,176 B（**976 MiB**） | 2026-11-17 19:22 | **ext4**（superblock magic `0xEF53` @1080） |
| `D:\tgz02\flash\boot.img` | 16,777,216 B（16 MiB） | 2026-11-17 19:15 | Android boot image（`ANDROID!`，kernel 5,869,560 B，ramdisk 2,196,605 B） |

设备分区映射（`/dev/block/bootdevice/by-name/`）：

```
system -> /dev/block/mmcblk0p19     999424 × 1K = 976 MiB
boot   -> /dev/block/mmcblk0p6      16 MiB
```

`tune2fs -l /dev/block/mmcblk0p19`（现场读取）：`block count 249856 × 4096 B = 1,023,410,176 B`，与 `system.img` 大小**逐字节一致**；features `has_journal ext_attr resize_inode filetype extent sparse_super large_file uninit_bg`，inode 62,464，label `system`。挂载参数：`ro,seclabel,relatime,data=ordered`。

### 1.2 boot 已被 Magisk 改过，system 没有 overlay

```
现场 boot 分区 sha256 : 47958d854fa6bbf0dc254b3a62e11db3809736383beda3fa20135ebc1ab7a8de
备份 boot.img  sha256 : 60df8f5913c4e2c0279c241879e0fc94684eff72e2732abd79b418325b945f83
```

两者不同 → **boot 分区被打过补丁**（Magisk：`/sbin/magisk32`、`/data/adb/magisk`、magiskinit 注入 ramdisk）。备份里的 `boot.img` 是**打补丁之前**的原厂镜像，字符串检索 `MAGISK/magisk` 均为 0 次。

`mount` 显示 `/system` 是 **ext4 分区直接挂载**（`/dev/block/mmcblk0p19 on /system type ext4 (ro,...)`），没有 Magisk overlay → **system 分区的改动是真实写入**，不是 overlay 假象；这正是我们写 `/system/etc/init/tg_stack.rc` 后重启仍存在的原因。

**对刷写的直接含义**：只刷 system 不会丢 root；**刷 boot.img 会让 Magisk 消失，`su`、`ai_worker`、`TtsExec`、`tg_supervisor` 全部失效**。所以 T9-12 的镜像方案必须把 boot 排除在外。

### 1.3 仓库解包目录 vs 设备 vs 原始镜像

| 集合 | `/system/app` | `/system/priv-app` |
|---|---|---|
| 仓库 `system/`（解包副本） | 32 个目录 | 18 个 |
| 设备 `/system` | 37 个条目（32 目录 + **5 个散装 APK**） | 18 个 |
| 原始 `system.img` | 见 §3.2 的比对方法（镜像需挂载后才能逐项列；本机无 ext4 读工具，未做） | 同左 |

5 个散装 APK（T9-11 已核）：`ES.apk`、`easytouch.apk`、`qxg.apk`、`dangbei.apk.bak`、`magisk.apk`，mtime 2023-03，**预装**，不是我们加的。仓库解包时只按目录复制，漏掉了散装文件——这是解包副本的已知缺口。

我们的 system 足迹：**仅** `/system/etc/init/tg_stack.rc`（2486 B，`190f611c…`）。

---

## 二、原厂 UI 与语音核心的依赖关系（T9-12.2）

### 2.1 三个包的静态事实（aapt2 / vdex 实测）

| 包 | APK | uid / 签名 | 关键组件 | 代码形态 |
|---|---|---|---|---|
| `com.alibaba.ailabs.genie.launcher` 4.3.6.10 | 6,968,427 B | 10024，`seinfo=platform`，`[8f5cc29c]` | `HOME: .activity.AdultHomeActivity`（singleTask, directBootAware） | APK 内**无 dex**，代码在 `oat/arm/*.vdex` |
| `com.alibaba.ailabs.genie.children` 5.11.0.19 | 10,457,738 B | 独立 uid | `HOME: .activity.HomeActivity`，`RECEIVE_BOOT_COMPLETED` | 同上 |
| `com.alibaba.ailabs.genie.smartapp` 8.7.1.18 | 25,336,386 B | **1000，sharedUser `android.uid.system`** | application = **`com.alibaba.ailabs.genie.genieboot.BootApplication`**；`HOME: …genieboot.activity.BootHomeActivity`；`RECEIVE_BOOT_COMPLETED`；`AppUpdateJob` | `oat/arm/smartapp.vdex` 28,902,724 B + odex |

`smartapp` 的 vdex 字符串检索（28.9 MB 原始字节）：

```
BootHomeActivity                  : 19
android.intent.category.HOME      :  3
startActivity                     : 26
setComponentEnabledSetting        :  0
setApplicationEnabledSetting      :  0
```

**读法**：smartapp 自己构造 HOME intent 并 `startActivity`（19 处引用 + 3 处 HOME category），但**它不调用组件启停 API**——所以 T9-10 里"smartapp 会重新 enable BootHome"的说法同样不成立；BootHome 的 `state=2 → 0` 变化另有原因（见 §2.3，未定位）。

### 2.2 可分为四类

**A. 可从镜像删除（纯 UI，无 sharedUserId 冲突）**
- `/system/app/GenieLauncher/`（APK 6.9 MB + lib + oat）
- `/system/app/GenieChildren/`（10.5 MB + lib + oat）
- 判据：两者均无 `sharedUserId`，删除 APK 只是让 PackageManager 不再扫描，不触发签名/共享用户校验；HOME 候选随之减少 2 个。运行时也已经验证"禁用它们的 HOME 组件后系统继续正常工作"（T9-10）。

**B. 保留 APK，但可移除/替换其 UI Activity**
- 本机**没有**可安全照此处理的对象：`smartapp` 的 BootHomeActivity 与 `:core` 同包同签名，移除 Activity 必须重打包 → 见 C 的红线。

**C. 必须保留（语音大脑）**
- `smartapp` 整包（`:core`、`:business`、唤醒/ASR/TTS 的 native 库、云端会话、provider）
- **红线**：重打包 smartapp 会改变签名 → `sharedUserId=android.uid.system` 校验失败 → 整个包被 PackageManager 丢弃（T9-09 已实测同类失败：`Signature mismatch for shared user`）→ **语音核心直接消失**。因此"从 manifest 里删掉 BootHomeActivity"这条路在本机不成立。

**D. 依赖未确认**
- `AligenieService`、`GenieScreensaver`、`Guide`、`AliSystemUI`、`S1Settings` 等：与桌面跳转/开机引导可能有关，未逐个验证，本阶段不动。

### 2.3 BootHome 抢屏的真实机制与唯一可行边界

已确认的部分：
- uid 0 与 uid 1000 在开机窗口反复 `START … HOME … cmp=…BootHomeActivity`，每次新 task（T9-11 日志，6 次）；
- smartapp 的 vdex 里有 HOME intent + startActivity（19/3/26），application 是 `genieboot.BootApplication`；
- 而 smartapp **不调用** `setComponentEnabledSetting`（0 次），所以"组件被它恢复"不成立；
- 我们 disable 后 90 秒监控 launcher 保持 `state=2`，但 BootHome 在下一次 boot 时已是 `state=0` —— **恢复发生在我们能开始采样的时刻之前**，恢复者仍未定位（候选：PackageManager 对 system app 的 scan/stabilize 行为、或某个我们没抓到的 root 进程）。

由此得到的结论（这是本阶段最重要的判断）：
**镜像层能"删干净"的是 launcher 与 children；smartapp 的 BootHome 既不能删包（丢语音）也不能改 manifest（丢签名），只能在运行时压制——现有 `takeover.sh` 或有界的组件 disable + hook（项目已有 `libtg_hook` 注入框架，可拦 `startActivity`）。**

---

## 三、构建能力（T9-12.4）

### 3.1 工具链：设备自带，已实测可用

```
/system/bin/make_ext4fs    /system/bin/mke2fs    /system/bin/e2fsdroid    /system/bin/tune2fs
```

**离线构建验证（已真实执行）**：用 `t912_probe.sh` 在设备上构建了一个 64 MiB 的 ext4 镜像：

```
make_ext4fs -l 64M -a /system -L t912probe /cache/t912/probe.img /cache/t912/root
  SELinux: Loaded file_contexts
  Created filesystem with 16/4096 inodes and 1299/16384 blocks
  → /cache/t912/probe.img  67,108,864 B

tune2fs -l: label=t912probe  magic=0xEF53
  features: has_journal ext_attr resize_inode filetype extent sparse_super large_file uninit_bg
  ← 与设备 /system 的 features 完全一致

sha256（设备）= b1d09ea42da948c80567ef52c9f91371eb5113e32c812116e2986d293ac0cdf5
sha256（主机，pull 后）= b1d09ea42da948c80567ef52c9f91371eb5113e32c812116e2986d293ac0cdf5
```

产物：`evidence/t9-12/probe_64M_ext4.img`（67,108,864 B）。

**注意**：`make_ext4fs -s` 产出 sparse 格式，`tune2fs` 读不了（第一次就踩到）；构建必须用 raw（去掉 `-s`），或先 `simg2img`。

`mount -o loop` 在 8.1 上不可用（`losetup failed 1`），所以镜像内容复核走 `tune2fs` + 构建日志 + 主机哈希三方对照。

### 3.2 现有镜像的核对方法（可执行，未跑）

```sh
# 设备上
mount -t ext4 -o loop   # 不可用
# 因此用：dd 抽出分区 → 主机侧用 Linux 的 debugfs 列出
adb shell 'su 0 dd if=/dev/block/mmcblk0p19 of=/data/local/tmp/system.raw bs=1M count=16'   # 仅头部
```

本机缺少 ext4 读取工具（无 7-Zip、无 debugfs、WSL 只有存根没有发行版），**因此"原始镜像 vs 仓库 vs 设备"的三方差集还没有逐文件跑过**——仓库目录 vs 设备目录已完成（§1.3），原始镜像一侧留待有 Linux 环境时补。

### 3.3 全量镜像为何没生成（硬数字）

```
/system 已用      871 MB
/data 可用        175 MB
/cache 可用       563 MB
构建需要          目录树 ~871 MB + 镜像 976 MB ≈ 1.85 GB
```

设备上没有第二块存储，主机没有 Linux ext4 工具，WSL 未安装发行版（`wsl -l -v` 只回帮助文本）。**这是本阶段唯一未完成的交付项**，不是"没做"，是做不到，缺的是空间或 Linux 环境：

- 方案 A：装一个 WSL 发行版（`wsl --install -d Ubuntu`），主机上 `mke2fs -t ext4 -d <dir>` 直接出镜像 —— 最干净；
- 方案 B：把 system 内容导出到主机（tar 保元数据），在 Linux 侧构建；
- 方案 C：外接存储/U 盘扩容后再在设备上构建。

---

## 四、TG-Z02 集成方案（T9-12.3，文件级）

```
新增  /system/priv-app/TgVoiceUI/voice_ui.apk       1.4.0，自签 252b4d98
新增  /system/priv-app/TgVoiceUI/oat/…              首次启动由系统生成（可预置）
新增  /system/etc/init/tg_stack.rc                  已存在（190f611c…），保留
删除  /system/app/GenieLauncher/                     纯 UI，无 sharedUserId
删除  /system/app/GenieChildren/                     纯 UI，无 sharedUserId
保留  /system/app/smartapp/                          语音大脑，原签名不可动
保留  /system/app/AliGenieService, GenieScreensaver, Guide, AliSystemUI, S1Settings …   依赖未确认，不动
保留  /data/local/tmp/{t5_bridge,t9,t9_ui}             root 运行时（tmp 不在 system 镜像内）
```

**为什么放 `/system/priv-app` 而不是 `/system/app`**
两者都会被扫描成 system app、都不可卸载（T9-09 实测 `adb uninstall` → `DELETE_FAILED_INTERNAL_ERROR`）。区别在 privileged 权限：`priv-app` 才能进 `privapp-permissions.xml` 白名单。当前 APK **零权限请求**，所以两者等价；选 `priv-app` 是为了将来需要 `WRITE_SECURE_SETTINGS` 之类时不必再搬家。

**平台签名**：不需要（我们不用 `android.uid.system`），设备上也没有 platform 私钥（T9-09 已确认）。`privapp-permissions` 白名单在本机 8.1 不强制（T9-09 实测自签特权 APK 未被拦），但**若目标机是 9+ 必须补白名单**。

**Direct Boot**：当前产品 UI 未声明 `directBootAware`，所以 user 解锁前它不可用——这正是 boot 早期 HOME 只能落到原厂（它们 directBootAware）的结构性原因。若要彻底消除过渡页，需要：
1. `VoiceHomeActivity` 声明 `directBootAware="true"`；
2. 启动路径在 locked 状态只能碰 DE 存储：`DataService`（CE 的 `/data/data/.../databases`）必须延后到 `ACTION_USER_UNLOCKED` 再初始化；
3. `:backend` 与文件总线（`/data/local/tmp`）在 locked 状态可用，worker 亦然。
这条路径可行但改动面在产品代码里，本阶段不实施。

**Backend/AIDL/worker 在系统启动后的可靠性**：`tg_stack.rc` 已由 init 在 `sys.boot_completed` 拉两个 supervisor + `boot_stack.sh`（bridge/tts/worker），实测每次开机 `=== boot_stack done ===`；`BackendService` 随 UI 进程启动并 `START_STICKY`。两者互不依赖启动顺序（服务只在 UI 被打开时绑）。

**init.rc / SELinux**：不需要新增 rc（tg_stack.rc 已在）；SELinux 当前 Permissive，**enforcing 下需要为 `tg_stack.rc` 的服务与 `u0_a71` 的 AIDL 访问补 policy**，未验证。

---

## 五、刷写与恢复方案（本阶段不执行）

前置判断：**只刷 system，绝不刷 boot**（§1.2）。

```powershell
# 备份现场（必须在刷写前）
adb shell 'su 0 dd if=/dev/block/mmcblk0p19 of=/data/local/tmp/system.before.img bs=4M'
adb pull /data/local/tmp/system.before.img D:\tgz02\flash\system.before.img

# 刷写（Magisk 环境下用 dd，不需要 fastboot）
adb push candidate_system.img /data/local/tmp/
adb shell 'su 0 dd if=/data/local/tmp/candidate_system.img of=/dev/block/mmcblk0p19 bs=4M'
adb reboot

# 恢复（任一时刻）
adb shell 'su 0 dd if=/data/local/tmp/system.before.img of=/dev/block/mmcblk0p19 bs=4M'
# 或使用原始备份
adb push D:\tgz02\flash\system.img /data/local/tmp/system.factory.img
adb shell 'su 0 dd if=/data/local/tmp/system.factory.img of=/dev/block/mmcblk0p19 bs=4M'
```

- 不建议 `fastboot flash system`：本机 bootloader 是否解锁**未验证**，且 fastboot 需要整包（sparse）格式。
- dd 刷分区前 `sync`；刷完不清 cache，首次启动会重新扫描（首次开机约 60–90 s）。
- **风险**：分区写坏 → 设备无法开机，只能靠 fastboot/救砖包；本阶段没有验证过救砖路径，这是刷写前必须补的一课。

---

## 六、未验证 / 风险

1. **全量候选镜像未生成**（空间/Linux 环境，§3.3）——本阶段交付的是可复现的构建脚本与参数，不是镜像本体
2. 原始 `system.img` 内部的逐文件清单未列（缺 ext4 读工具），三方差集只做到"仓库 vs 设备"
3. BootHome 的 `state=2→0` 恢复者仍未定位（已排除 smartapp 与 guardians 的组件 API 调用）
4. `directBootAware` 方案未实施，locked 状态下 DataService 的可用性未验证
5. SELinux enforcing 下的 policy 需求未验证
6. fastboot/救砖路径未验证；bootloader 状态未知
7. 若删除 launcher/children，需确认没有其它组件以显式 component 启动它们（例如 smartapp 的"返回桌面"逻辑）——未做全量引用检索

---

## 七、本阶段结论

- 镜像来源、分区参数、boot 与 system 的改造归属（boot 被 Magisk 改、system 无 overlay）**已查实**；
- 构建工具链**已在设备上跑通**并产出一个可校验的 64 MiB ext4 镜像（sha256 两端一致）；
- 原厂 UI 的删除边界**已经明确**：launcher/children 可删，smartapp 不可删不可重签，BootHome 只能运行时压制（镜像层做不到）；
- 全量镜像**卡在空间与 Linux 工具**，这是下一步必须先解决的工程前提，而不是文档问题。
