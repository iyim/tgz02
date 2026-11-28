# T9-17 原厂闹钟实现分析：为什么响铃是「歌曲」而不是系统铃声

- 目标：`com.alibaba.ailabs.genie.smartapp` **8.7.1.18**（versionCode 2102087118，targetSdk 27）
- 设备：AILABS_S1L / Android 8.1 / armeabi-v7a
- 产物：`/system/app/smartapp/smartapp.apk` 25,336,386 B，sha256 `1506719b…da00`
- 分析日期：2026-11-27

## 0. 结论先说

原厂的「闹钟」在设计上**根本没有铃声这个概念，它是「闹钟音乐 + TTS 语音」的云端内容**：

1. 建闹钟时选的是**曲库里的歌**（`MusicDTO{musicId, musicName, musicType, musicTypeName, source}`），
   闹钟数据走 MTOP 云端接口（`CreateAlarmV2 / UpdateAlarmV2 / ListAlarmV2 / DeleteAlarmV2`）。
2. 到点响铃时，云端下发 `url`（歌曲音频流）、`ttsUrl`（说话语音）、`volume`、`volumeGradual`、
   `ignoreDefault` 等字段（`AlarmInfo` / `AlarmRingInfo`）。
3. 客户端用 **AGMC 媒体播放器**（`IAgmcPlayer`，就是放音乐用的那个播放器）播这个 URL，
   TTS 与歌曲交替播；音量走 `STREAM_ALARM`，并可「自动变大音量」（`mAutoBigVolumeRunnable`）。
4. **没有使用系统铃声 API**：整个 dex 里 `RingtoneManager` 出现 **0 次**，也没有 `Landroid/media/Ringtone;`。
5. 兜底才是本地资源 `res/raw/default_ring.mp3`（30.5 秒、44.1kHz/256kbps 的音乐片段，不是「叮叮」），
   由 `MediaManager.playDefaultLocalRing()` 播放；`ignoreDefault` 为真时连兜底都不放。

所以我们听到「歌曲」不是配置错了，而是**产品设计就是放歌**。

## 1. 分析方法（为什么要先处理 vdex）

`smartapp.apk` 被抽走了 `classes*.dex`（APK 内 3432 个条目里**没有任何 .dex/.so**），
代码在设备上以 AOT 产物存在：

```
/system/app/smartapp/oat/arm/smartapp.odex   569,824 B
/system/app/smartapp/oat/arm/smartapp.vdex  28,902,724 B
```

处理流程：

1. `adb pull` 上述 vdex/odex/APK；
2. 解析 vdex 头（`magic=vdex`、`version=010`、`number_of_dex_files=4`、`dex_size=26,771,488`），
   在 dex 区间按 `dex\n035` 魔数 + 头部 `file_size` 切出 3 个完整 dex（9,726,492 / 5,045,328 / 6,182,104 B，
   分别 8,218 / 4,338 / 5,308 个 class_def）；
3. 修正被 vdex 改写的 checksum（adler32）与 SHA-1 签名，否则 jadx 直接拒收
   （`Bad dex file checksum`）；
4. JADX 1.5.6 CLI 反编译：单类模式看关键类，整包模式（`-r -j 8`）导出 8,378 个 .java 用于交叉检索。

> 限制：vdex 里的 dex 是 **quickened** 的（含 ART 内部替换过的指令），
> 含被替换指令的方法 jadx 只能输出 `UNKNOWN(0x10E9)` 之类占位，无法还原方法体。
> 因此下文的结论分两类：**字段/常量/方法签名/字符串 = 直接观测**；
> 「谁调用谁」在个别路径上是 **结构推断**（已标注）。

## 2. 关键证据（直接观测）

### 2.1 闹钟数据模型：铃声就是「音乐」

`com.alibaba.genie.alarm.bean.AlarmBean$MusicDTO`（`AlarmBean.java:267`）：

```java
private String musicId;
private String musicName;
private String musicType;
private String musicTypeName;
private String source;
```

`com.alibaba.ailabs.basedomain.model.alarm.AlarmInfo`（字段表）：

```
String url;              // 响铃音频（歌曲）地址
String ttsUrl;           // 响铃时说的话（TTS 音频）
Integer volume;
Integer volumeGradual;   // 音量渐强
int ignoreDefault;       // 忽略本地默认铃声
Integer repeat; String cron; Long startTime; Long endTime; String bizType;
// 内嵌 AlarmItem: int musicId; String musicName; int musicType; String musicCategory;
```

`com.alibaba.ailabs.basedomain.model.alarm.AlarmRingInfo`：

```java
String alarmId;
String audioUrl;   // 歌
String ttsUrl;     // 说话
int volume;
```

→ 云端「响铃指令」里带的是**两个 URL（歌 + TTS）**，没有一个「铃声 ID」。

### 2.2 播放引擎：AGMC 媒体播放器（不是 RingtoneManager）

`com.alibaba.ailabs.basedomain.common.MediaManager`（1615 行，`basedomain/common/MediaManager.java`）：

```java
private static final int NET_RING_PLAY_SESSION_ID   = 10098;
private static final int LOCAL_RING_PLAY_SESSION_ID = 10099;
private static final int TTS_PLAY_SESSION_ID        = 10096;
private static final int MIN_VOLUME = 38, MAX_VOLUME = 59;
private static final int TIME_NO_RESUME = 300000;          // 5 分钟后不再自动恢复

private IAgmcPlayer mAgmcPlayer;                            // 精灵媒体播放器
private AudioManager mAudioManager;
private RingPlayTask mRingPlayTask;
private Runnable mAutoBigVolumeRunnable;                    // 自动把音量推大

class RingPlayTask { String alarmId; String url; String ttsUrl; int volume; boolean ignoreDefault; }

public  void playAlarm(String /*alarmId*/, String /*url*/, String /*ttsUrl*/, int /*volume*/, boolean /*ignoreDefault*/);
private void playRing();
private void playMusic(String url);
private void playDefaultLocalRing();                        // 兜底：本地资源
private void playOtherDomainTts(String, int);
private boolean needPlayOtherTts(String, String);
public  void stopRing(String, String);
public  void setVolume(int);  private void volumeAdjust(boolean);  private void stopAutoBigVolume();
public  boolean isRing();
```

配套的 `AlarmHandler`（`basedomain/ui/AlarmHandler.java`）消息码：

```java
MSG_ALARM_RING = 40098;  MSG_STOP_ALARM_RING = 30000;  MSG_PLAY_TTS = 10000;
```

### 2.3 系统铃声 API 的缺席（dex 字符串统计）

| 符号 | classes.dex | classes2.dex | classes3.dex |
| --- | --- | --- | --- |
| `RingtoneManager` | 0 | **0** | 0 |
| `Landroid/media/Ringtone;` | 0 | **0** | 0 |
| `TYPE_ALARM` | 8 | 1 | 0 |
| `STREAM_ALARM` | 0 | 1 | 0 |
| `setDataSource` | 4 | 1 | 1 |
| `Landroid/media/MediaPlayer;` | 0 | 1 | 1 |

→ 用系统「闹钟音量流」和 `TYPE_ALARM`（取参数/调音量），但**从不取系统铃声对象**；
播放一律用 `MediaPlayer` / AGMC + URL 或文件路径。

### 2.4 本地兜底铃声：也是一段音乐

`res/raw/default_ring.mp3`（1,954,294 B）：

- MPEG-1 Layer III，44.1 kHz，256 kbps，**30.5 秒**，2333 帧
- ID3v2.2 头存在，但只有 TSS/COM 类技术帧，没有歌名/歌手

另有 `res/raw/sound1.wav` / `sound2.wav`（各 ~496 KB，提示音）。

字节码里能看到资源 id 立即数 `0x7f0d0003`（= `R.raw.default_ring`）：
classes2.dex 命中 1 次、classes3.dex 命中 2 次 → 确实有代码直接引用这个 mp3。

### 2.5 曲库集成的痕迹（dex 中文字符串）

```
我的网易云音乐导入歌单 / 我的网易云音乐自建歌单
我的酷狗音乐导入歌单   / 我的酷狗音乐自建歌单
我的酷我音乐导入歌单   / 我的酷我音乐自建歌单
音乐热榜 / 热门音乐 / 音乐电台 / 音乐收藏 / 精灵音乐 / 咪咕音乐
儿歌大合集 / 爱乐奇英语儿歌 / 主唱的经典英语儿歌专辑
试听 / 未知歌名 / 未知歌手 / 歌单加载超时
闹钟响了 / 闹钟播放错误 / 闹钟通知 / 闹钟删除 / 请选择闹钟时间
```

→ 选铃声的地方就是「从这些歌单/曲库里挑一首」，`闹钟播放错误` 是播放失败时的提示文案。

### 2.6 响铃 UI 与交互（顺带看到的产品细节）

- `AlarmRingDialog extends Dialog`（**不是 Activity**）：`acquireWakeLock()` / `releaseWakeLock()`、
  `getCurrentVolume()`、`setAnimAndBg()`（背景图 `alarm_ring_bg_custom`、`alarm_ring_bg_child`）、
  `sendUnmuteKey(...)`（响铃时强制解除静音）、`MyOnCommandListener`（响铃中接语音指令）、
  `HomeWatcherReceiver`（监听 Home 键把 Dialog 重新呼出）、`updateTime()`。
- `OnePixelActivity`：1 像素透明 Activity，用于锁屏/后台把进程和界面拉起来。
- 埋点：`7_play_ring_begin` / `9_play_ring_end` / `8_show_alarm_ring_ui`（`AlarmUt`）。
- `AlarmDismissReceiver` 监听 `com.android.deskclock.ALARM_DISMISS`（兼容 AOSP 时钟的关闭广播）。

## 3. 完整调用链（含推断标注）

```
语音「7点叫我起床」
  └─ 云端 NLU/技能（闹钟域）→ MTOP CreateAlarmV2（含 MusicDTO 选歌）
       └─ 客户端 AlarmDatabaseHelper 落库 + AlarmClockManager 注册闹钟
到点
  └─ AlarmReceiver / AlarmClockManager.handleAlarmRing(MSG_ALARM_RING=40098)
       └─ [推断] MediaManager.playAlarm(alarmId, url, ttsUrl, volume, ignoreDefault)
            ├─ 有 url 且 ignoreDefault 未置位 → playMusic(url)（AGMC 播网络音乐）
            ├─ 无 url / 播放失败              → playDefaultLocalRing()（R.raw.default_ring.mp3）
            └─ needPlayOtherTts → playOtherDomainTts(ttsUrl)（插播 TTS）
       └─ AlarmRingDialog 弹出（wake lock + 取消静音 + 背景动画）+ showAlarmRingUI 埋点
停止（说「关闭闹钟」/点按钮 / 5 分钟）
  └─ stopRing(alarmId, reason) → 9_play_ring_end 埋点 → Dialog dismiss
```

标注为「推断」的那一步：`playAlarm(...)` 的调用点位于 quickened 方法内，jadx 无法还原；
但它的参数形状 `(alarmId, url, ttsUrl, volume, ignoreDefault)` 与 `AlarmInfo` 字段、
`RingPlayTask` 字段**逐一对得上**，且 `AlarmRingDialog` 内确实出现 `MediaManager` 相关调用。

## 4. 这件事对我们（TG-Z02 自有闹钟）的影响

| 维度 | 原厂 | 我们现在（T9-16） |
| --- | --- | --- |
| 铃声来源 | 云端曲库歌曲 URL | 本机铃声文件（系统铃声 / `/sdcard/Alarms`） |
| 播放器 | AGMC（媒体播放器）+ `STREAM_ALARM` | `MediaPlayer` + `STREAM_ALARM` |
| 说话 | 有（`ttsUrl`，与歌交替） | 无（只有 TTS 确认「记好了」） |
| 兜底 | `res/raw/default_ring.mp3`（30 秒音乐） | 系统默认 → `Alarm_Beep_03.ogg` → 通知音 |
| 音量 | 38~59 + 自动渐强 | 起播前至少 40% |
| 离线可用 | 云端 URL 拿不到就只剩兜底 | 完全离线可用 |

结论：**我们不需要照抄云端链路**，但如果要贴近原厂体感，最划算的两件事是：

1. **响铃时说话**：用已有的 TTS（原厂 TTS 链路可用）在铃声间隙播一句「七点啦，该起床了」；
2. **音量渐强**：起播 30% → 15 秒内到 70%，比原厂固定的 38~59 更贴近真人闹钟。

自定义铃声这块我们已经比原厂更直接：把人声/歌曲丢进 `/sdcard/Alarms` 即可，不需要连云曲库。

---

## 5. 实现（T9-17 R1）：把原厂的"响铃说话 + 音量渐强"搬到我们自己的闹钟

做了两件事，都落在 `AlarmRingingService`（不动响铃页布局）：

### 5.1 音量渐强

- 起播 `30%` → `15` 秒内 30 步推到 `70%`（`RAMP_MS=15000 / RAMP_STEP_MS=500`）；
- **不会把用户音量调小**：若用户原本就 >70%，目标值取用户当前值；
- 响铃结束（关闭 / 贪睡 / 5 分钟自动停）把 `STREAM_ALARM` 恢复到响铃前的原值；
- 真机实测：原值 6 → +5s 50 → +16s 70 → 点「关闭」后回到 6。

### 5.2 响铃说话（本机没有系统 TTS，用原厂 TTS 的 provider 入口）

- 新增 `FactoryTts`：`content://com.alibaba.ailabs.genie.assistant.provider/GenieApi`
  `query(selection = {"method":4,"data":{"tts":"<文本>", "pkg":"com.tgz02.voice", "ignoreMute":true, ...}})`；
- 话术按时间生成、含具体时间、不念标签：`七点啦` / `七点半啦` / `十九点五十三分啦`；
- 节奏：起播后 1.5 秒说第一句，之后每 90 秒一次，最多 3 次；
- 说话时把铃声音量压到 12%（播放器级），按「0.8s + 230ms/字」估时后恢复 100%；
- 失败只记日志，绝不影响响铃。
- 坑：**不能读返回的 cursor**。原厂 provider 返回跨进程 cursor，一 `moveToFirst()`
  就抛 `NullPointerException: Attempt to get length of null array`（BulkCursorProxy.getWindow），
  而播报副作用在 `query()` 返回前就发生了 —— 只 `close()` 即可。

### 5.3 真机证据

`evidence/t9-17/ring_enhance.log`、`evidence/t9-17/ring_ramp_tts.png`（19:52 真闹钟全屏响铃）。

```
T916RING I ring started
T916RING I volume ramp 30 -> 70 over 15000ms
T916RING I speak#1: 十九点五十二分啦
T916TTS  I speak queued in 9ms len=13 cursor=true
TtsManager D onTtsStart: sessionId = 5246724, isStreaming = 1
TtsManager D onTtsEnd: sessionId = 5246724
```

构建 sha256 `3b241090…`（1.6.0 / vc8）。

## 6. 实现（T9-17 R2）：闹钟目的语识别 + 响铃话术跟随目的

用户反馈两件事：

1. 「闹钟不一定是起床，你不能每次都说起床」——响铃话术/界面写死了「起床」；
2. 「我说 5 分钟后提醒我起床，闹钟信息里没有识别到起床」——label 一直是写死的「布丁闹钟」。

### 6.1 worker：从话术里抽出目的语（`alarm_label()`）

- 提示词表（取最靠后命中的那个）：`记得提醒我 / 提醒一下我 / 到时候告诉我 / 提醒我 / 叫醒我 / 叫我 / 喊我 / 让我 / 记得`；
- 取提示词之后的原文，去掉前导动词（`去 / 一下 / 赶紧 / 开始`）、在第一个标点处截断、
  循环去掉尾部语气词（`了 / 吧 / 呀 / 啊 / 哦 / 呢 / 嘛 / 哈 / 呗 / 的时候 / 的时间`）；
- 按 UTF-8 边界截断（`T8_SK_ARG_MAX=48` 字节），剔除 `"` 和 `\` 保证 JSON 合法；
- 抽不到 → label = `闹钟`（不再写死「布丁闹钟」）。

### 6.2 worker：中文时间两个真 bug（同一轮回归时暴露）

| 输入 | 修复前 | 根因 | 修复后 |
| --- | --- | --- | --- |
| 五点**五十** | 5:05 | 分钟解析只吃到「五」 | **5:50** |
| **十一**点二十 | 1:20 | 「点」前反向扫描先撞到「一」就当 1 点 | **11:20** |
| **二十三**点 | 13:00 | 反向只扫 2 个字，`二十` 被截成 `十三` | **23:00** |

新增 `cn_minute()`（零X / X / 十X / X十 / X十Y），重写 `cn_hour()`（十/X十/X十Y），
反向扫描改为"先试 3 字、再 2 字、最后 1 字"。

### 6.3 worker 新增离线自测入口

`ai_worker --self-test-alarm "5分钟后提醒我起床"` → 打印 code / speech / 写出的 JSON，
不启动主循环、不碰设备。11 条用例见 `evidence/t9-17/alarm_label_test.log`。

### 6.4 App：响铃话术与提示语跟随 label

- `AlarmRingingService.ringText()`：`<时间>啦，<label>啦`；label 为空/`闹钟`/`布丁闹钟` 时 `，闹钟响啦`；
  label 从 `DataService.alarmGet(curAlarmId)` 取（`onStartCommand` 记录 alarm id）。
- `AlarmRingingActivity`：提示语 `该<label>啦`，空标签回落 `闹钟响啦，布丁叫你啦`。

真机证据：20:24「吃药」闹钟 → 界面标题 `吃药`、提示 `该吃药啦`、语音 `二十点二十四分啦，吃药啦`，
原厂 TTS `onTtsStart/onTtsEnd` 正常（`evidence/t9-17/alarm_label_test.log` + `ring_label_yaochi.png`）。

部署：worker `/system/tgz02/bin/ai_worker` sha256 `b425b122…`（备份在 `/data/local/tmp/t9_17_bak/`），
APK `21b9d5b2…`。注意：`/system` 只读，替换二进制前要 `mount -o rw,remount /system`，
且运行中的二进制会 `Text file busy` —— 必须先 `kill -INT <pid>` 再 `cp`，最后用
`/data/local/tmp/t5_bridge/run_ai_worker.sh start` 拉起。

## 7. 事故：桌面（HOME）循环崩溃与修复（T9-17 R3，2026-11-27 20:30-20:40）

### 7.1 现象

用户报"桌面程序崩了"。真机取证：

```
11-27 20:30:59.70 am_finish_activity  BootHomeActivity,app-request
11-27 20:30:59.73 am_create_activity  BootHomeActivity,android.intent.action.MAIN,flags=0x10000000
11-27 20:30:59.74 am_restart_activity BootHomeActivity
...（同一秒内 4267/4268/4269/4270/4271 …，每个实例存活约 30 ms）
```

- 60 秒内 `am_create_activity BootHomeActivity` **818 次**，`dumpsys activity` 里堆了 **919 个** ActivityRecord；
- 设备 load average 从 ~1 涨到 **12+**，整机卡死；
- 之后 HOME 又落到侧载的 `com.dangbei1.tvlauncher`，它的桌面是空的（5 个「+」占位），用户看到的就是这一屏。

### 7.2 根因

工厂 `genieboot.BootHomeActivity` 的启动逻辑是「跳到 adult home 然后 finish 自己」
（`BootUtils.jumpAndSetAdultHome()`，反编译见
`full/sources/com/alibaba/ailabs/genie/genieboot/utils/BootUtils.java:197`）。
当系统解析出的 HOME **就是它自己**时：启动 → 跳 home（= 自己）→ finish → 再启动 … 无限自激。

系统为什么会解析到它自己：

- `cmd package resolve-activity -a MAIN -c HOME` 一直返回 `BootHomeActivity isDefault=true`；
- 用 `cmd package set-home-activity --user 0 com.tgz02.voice/.VoiceHomeActivity`（root，返回 Success，
  `/data/system/users/0/package-restrictions.xml` 里确实写了 `always=true` 的偏好记录），
  但解析结果仍然是 BootHome —— 这个偏好对当前 ROM 的 HOME 解析不生效；
- 本机 `pm disable / disable-user / hide` 全部报 `unknown command`，也不允许把竞争桌面停用
  （`BootHomeActivity` 与工厂语音同属 `com.alibaba.ailabs.genie.smartapp`，更不能停）。

### 7.3 处置

1. 立即止血：重启设备（自激循环被打断，系统回到正常启动序列）。
2. 恢复 T9-11 的对抗手段，但改成**只对桌面生效**的看门狗
   （`android/t9_10_home/takeover_watchdog.sh`，部署在 `/data/adb/service.d/takeover.sh`，开机自启）：

```sh
while : ; do
  sleep 5
  top=$(dumpsys activity activities | grep -m1 mResumedActivity)
  case "$top" in
      *com.tgz02.voice*)            : ;;   # 我们的 UI 在前台：不动
      *BootHomeActivity*|*dangbei*) am start -n com.tgz02.voice/.VoiceHomeActivity ;;
                                           # 桌面抢了前台：抢回来
      *)                            : ;;   # 用户开着真正的 App：绝不打扰
  esac
done
```

与 T9-11 的 45 秒窗口不同，这一版**常驻但只针对桌面**，所以不会和用户操作打架；
开机后还会先执行一次 `cmd package set-home-activity` + `am start` 抢默认桌面。

### 7.4 验证

- 装好后 20 秒内 `BootHomeActivity` 事件数 1274 → 1274（零增长），前台稳定在
  `com.tgz02.voice/.VoiceHomeActivity`；
- 主动按 Home 键（`input keyevent 3`）做对抗测试：BootHome 起来并开始自激（5 秒内 +300 事件），
  看门狗在 ≤5 秒内把我们的 UI 抢回前台，循环随之停止；
- 桌面截图 `evidence/t9-17/desktop_after_fix.png`（布丁首页正常）；
  故障时的空桌面 `evidence/t9-17/desktop_now.png`。

### 7.5 残留风险 / 未做完

1. **按 Home 键仍会先闪 1~5 秒工厂桌面**（解析不吃我们的偏好），看门狗随后抢回。
   要彻底消除，需要让系统 HOME 真解析到我们——这版 ROM 上目前没找到可用接口
   （`set-home-activity` 无效、`pm disable` 不可用）；下一步可考虑改 `packages.xml` 的
   preferred-activity，或直接 patch `BootUtils.jumpAndSetAdultHome`。
2. load average 在故障后十几分钟仍维持 8~10，需要继续观察是否有残留进程自激；
   本次只确认了 BootHome 循环已经停下。

## 8. 永久修复：让系统 HOME 真正解析到我们（T9-17 R4）

§7 的看门狗只是止血。要彻底消掉「按 Home 先闪工厂桌面 / 工厂桌面自激」，得让系统解析出来的
HOME 是我们。这个 ROM 的 `pm` / `cmd package` 都没有 enable/disable 子命令
（`pm disable` 返回 `unknown command 'disable'`），`cmd package set-home-activity` 写进去的
preferred 记录也不被采纳。于是改用**框架自己的接口**：

`android/t9_10_home/HomeCtl.java`（T9-10/T9-11 就在仓库里）以 root 身份 `app_process` 运行，
直接调 `IPackageManager.queryIntentActivities / resolveIntent / setComponentEnabledSetting`。
uid 0 在 system_server 的权限检查里是放行的，所以能改组件状态；这是**组件级**操作
（`DONT_KILL_APP`），不会碰工厂语音所在的 `:core` 进程。

执行结果（21:00 起）：

```
$ HomeCtl list
RESOLVED_HOME=com.alibaba.ailabs.genie.smartapp/…BootHomeActivity
CANDIDATES=5
com.tgz02.voice/com.tgz02.voice.VoiceHomeActivity                priority=100 enabled=1
com.alibaba.ailabs.genie.smartapp/…BootHomeActivity              priority=0   enabled=1  <= resolved
com.dangbei1.tvlauncher/…MainActivity                            priority=0   enabled=1
app.orchard.tv/app.orchard.tv.MainActivity                       priority=0   enabled=1
com.android.settings/com.android.settings.FallbackHome           priority=-1000 enabled=1

$ HomeCtl disable com.alibaba.ailabs.genie.smartapp/…BootHomeActivity
OK … -> state=2

$ HomeCtl list
RESOLVED_HOME=com.tgz02.voice/com.tgz02.voice.VoiceHomeActivity     ← 变成我们
CANDIDATES=4
com.tgz02.voice/…VoiceHomeActivity    priority=100 enabled=1  <= resolved
```

同法再关掉两个抢 HOME 的第三方桌面后，候选只剩我们（+系统的 FallbackHome）：

```
$ HomeCtl disable com.dangbei1.tvlauncher/…MainActivity
$ HomeCtl disable com.dangbei1.tvlauncher/…dialog.home.HomeDialogActivity
$ HomeCtl disable app.orchard.tv/app.orchard.tv.MainActivity
CANDIDATES=2
com.tgz02.voice/…VoiceHomeActivity  priority=100  <= resolved
com.android.settings/…FallbackHome  priority=-1000
```

### 8.1 冷启动验证（2026-11-27 21:06 重启后）

| 检查项 | 结果 |
| --- | --- |
| 前台 Activity | `com.tgz02.voice/.VoiceHomeActivity`（开机直接落在布丁首页） |
| `BootHomeActivity` 事件数 | **0**（修复前同一窗口 800+/分钟） |
| `RESOLVED_HOME` | `com.tgz02.voice/…VoiceHomeActivity` |
| HOME 键 | 直接回到布丁首页（不再闪工厂桌面、不再弹当贝对话框） |
| 工厂语音 | 存活：`smartapp:core` 在跑；直接调它的 TTS provider 仍 `onTtsStart → onTtsData → onTtsEnd` |

### 8.2 持久化

组件状态由 PackageManagerService 持久化在 `/data/system/users/0/package-restrictions.xml`，
实测**重启后依然生效**。为防止工厂开机再把自己「解禁」，还加了
`/data/adb/service.d/20_home_lock.sh`：开机后（boot_completed+5s）用 HomeCtl 重新 disable
那 4 个组件并打印 `HomeCtl list` 到 `/data/local/tmp/home_lock/apply.log`。

### 8.3 回滚

```sh
rm /data/adb/service.d/20_home_lock.sh
CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl \
    enable com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.genie.genieboot.activity.BootHomeActivity
# 其它三个组件同理 enable；或直接 rm 脚本后重启
```

仓库里对应的文件：`android/t9_10_home/HomeCtl.java`、`home_ctl.dex`、`20_home_lock.sh`、
`takeover_watchdog.sh`（看门狗已精简为只管残留桌面：BootHome / dangbei / orchard）。

## 9. 事故：天气语音「说一句就断」（T9-17 R5，2026-11-27 21:45-22:05）

### 9.1 现象与复现

用户："原厂的天气语音怎么不管用了" → 追问后确认：**它会说话，但说一句就断**。

抓真机语音链路（hook 判定 = logcat tag `tgl`；原厂 TTS = `TtsManager`；我方 worker =
`/data/local/tmp/t5_bridge/ai_worker/ai_worker.log`），用户说「天猫精灵，明天天气怎么样」得到：

```
21:52:42 route=native intent=weather rule=weather.keyword event=t6-1088-1966868-g4
         seq=4 session=1966868 text_bytes=33 publish_seq=1 (factory answers; AI worker does not)
21:52:42 native command (weather): continuity re-listen scheduled in 1200 ms
21:52:44 START u0 {… cmp=com.alibaba.genie.waft/.ui.tpl.WaftTplActivity} from uid 10027
21:52:44 continuity request: seq=2817298 sent (after native command) n=1
21:52:44 continuity request: CONFIRMED by factory session=1970968 (+431 ms)
21:52:44 factory wake (onStartTalk): session=1970968 wake_type=1 listening=1 round=1
```

也就是说：原厂天气链路本身是好的（它打开了 Waft 天气模板页，TTS 也被 TTS 守卫放行
——守卫计数 `native_allowed=1`、`native_window=1`），**但 1.2 秒后我方 worker 按
"native command 之后补一次续听"的老规则发出 `startTalk`，把原厂刚开始播的天气答案打断了**。

### 9.2 根因

`ai_worker.c` 的 native 续听规则（T8-15.3 加）：除 `media.play` 以外，所有原厂指令执行完都
在 **1200 ms** 后补一次续听。这条规则是为"音量调到 X"这种一两秒的短回答设计的；
天气的回答有十几秒，1.2 秒就重新开麦必然把它切断 —— 用户听到的就是"说一句就断"。

T9-18 把天气关键词扩充之后，这类话术才稳定走到 native 路径，所以症状是"最近才出现"。

### 9.3 修复

`ai_worker.c`：天气不补续听，其它短回答（音量/时间/开关屏）保持原行为。

```c
} else if (ir.intent == IR_WEATHER) {
    always("native command (weather): no re-listen - the factory answer is long "
           "and startTalk would cut it");
} else if (ir.intent != IR_STOP && ir.intent != IR_EXIT) {
    w->native_relisten_due_ms = now_ms + 1200;
    …
}
```

### 9.4 隔离回放验证（不打扰真机语音链路）

用真机 events.jsonl 的真实格式造两条合成 ASR final（weather + volume），在
`/data/local/tmp/wt` 下用同一份新 worker 二进制、mock provider 跑一遍：

```
route=native intent=weather … publish_seq=1 (factory answers; AI worker does not)
native command (weather): no re-listen - the factory answer is long and startTalk would cut it
route=native intent=volume rule=volume.set arg=set:35 … publish_seq=2
native command (volume): continuity re-listen scheduled in 1200 ms
```

天气不再补续听、音量仍然补 —— 行为符合预期。

部署：`/system/tgz02/bin/ai_worker` sha256 `ccf378df…`（旧版备份
`/data/local/tmp/t9_17_bak/ai_worker.before_r8`）。

### 9.5 顺带发现

- TTS 守卫的周期性日志 `continuity req: seq=… rejected (too old; baseline=…, now=…)` 每 2 秒一条：
  `/data/local/tmp/t7/renew.conf` 里 `renew_ms=0`（续期关闭）但 `continuity_auto=1`，
  守卫仍在按旧 seq 反复请求；该 seq 文件被隔离回放覆盖后 baseline 对不上。已把 renew.conf
  恢复原样；这条噪声不影响播报，后续可以给守卫加"seq 不变就不再重试"。
- 诊断期间临时启用过工厂 `BootHomeActivity`（确认天气播报不依赖它），已重新禁用；
  系统 HOME 仍然解析到 `com.tgz02.voice/.VoiceHomeActivity`。

## 10. 收尾：所有原厂指令都不再续听 + 部署路径的坑（T9-17 R6）

### 10.1 用户要求

「音量 / 时间 / 开关屏 / 放音乐，都不要续听」——即取消 native 指令之后的自动 `startTalk`。
原因是这类续听会在原厂播报还没说完时重新开麦，把答案切断（天气那次"说一句就断"就是这个）。

### 10.2 改动

`ai_worker.c` 里原来按意图分支的续听逻辑，统一改成不排队：

```c
always("native command (%s): no re-listen (it would cut the factory answer)",
       ir_intent_name(ir.intent));
```

隔离回放（同一份新二进制、mock provider、4 条合成 ASR final）结果：

```
route=native intent=weather … publish_seq=1 → native command (weather): no re-listen (…)
route=native intent=volume  … publish_seq=2 → native command (volume):  no re-listen (…)
route=native intent=time    … publish_seq=3 → native command (time):    no re-listen (…)
route=native intent=media   … publish_seq=4 → native command (media):   no re-listen (…)
```

### 10.3 部署路径的坑（这次真正卡住的点）

用户反馈"还是被打断"，复查发现**修复根本没生效**：`/system/tgz02/bin/ai_worker` 换了新二进制，
但设备上真正被启动的是另一份：

```
$ readlink /proc/<pid>/exe
/data/local/tmp/t5_bridge/bin/ai_worker      ← 启动脚本 BIN=$D/bin/ai_worker
$ sha256sum
1add1012…   ← 旧二进制（不含修复）
ccf378df…   ← 我部署的 /system 那份（没被用到）
```

`run_ai_worker.sh` 里写死 `BIN=$D/bin/ai_worker`（注释说明了"二进制放 bin/：不能和状态目录同名"），
而 `/system/tgz02/bin/ai_worker` 只是早期 boot-stack 路径的镜像。**两份必须同时更新**。

部署脚本固化为 `android/deploy_worker_both.sh`：停 worker → 同时覆盖
`/data/local/tmp/t5_bridge/bin/ai_worker` 与 `/system/tgz02/bin/ai_worker` → 用
`run_ai_worker.sh start` 拉起 → 打印运行进程的 `readlink /proc/<pid>/exe` 与 sha256 自证。

### 10.4 真机验证（22:09，用户真人语音）

```
worker : route=native intent=weather … publish_seq=1 (factory answers; AI worker does not)
worker : native command (weather): no re-listen (it would cut the factory answer)
tgt    : onTtsStart ALLOW id=1966916 by=native_window intent=weather seq=1 … text_bytes=45
TtsMgr : onTtsStart sessionId = 1966916, tts = 明天昌平区晴，气温-2度到10度 。
TtsMgr : onTtsData … onTtsEnd sessionId = 1966916
SessionManager: onStartTalk(1966916) → onStopTalk(normal) 之后没有新的 startTalk
```

用户确认：**这次天气完整播完了**。

当前部署：`/data/local/tmp/t5_bridge/bin/ai_worker` = `/system/tgz02/bin/ai_worker`
= sha256 `13bcf6fe…`（运行进程 21110 自证同 hash；旧版备份在 `/data/local/tmp/t9_17_bak/`）。

### 10.5 遗留噪声

TTS 守卫（:core 内）每 2 秒打印一条
`continuity req: seq=… rejected (too old; baseline=…, now=…)`：
`/data/local/tmp/t7/renew.conf` 里 `renew_ms=0` 但 `continuity_auto=1`，守卫仍在按一个旧 seq 重试。
请求被拒绝、不影响播报，属日志噪声；要清掉需要给守卫加"seq 未变化就不重试"或重启 :core，
留作后续清理项。

## 11. 澄清：刷包之后到底跑的是哪个 ai_worker（T9-17 R7）

用户问得很对：「重新刷包后脚本程序不都在 `/system/tgz02/` 下吗，怎么还会执行 `/data/local/tmp` 里的程序？」

### 11.1 镜像里的启动链（T9-12 定稿，刷包后走这条）

```
/system/etc/init/tg_stack.rc
  on property:sys.boot_completed=1
      start tg_hook_sup  → /system/tgz02/bin/tg_supervisor --so /system/tgz02/lib/libtg_hook.so
      start tg_guard_sup → …--so /system/tgz02/lib/libtg_ttsguard_t8156.so
      start tg_stack     → /system/bin/sh /system/tgz02/bin/boot_stack.sh
                             ├─ BRIDGE = /system/tgz02/scripts/run_bridge.sh
                             ├─ TTS    = /system/tgz02/tts/run_tts_exec.sh
                             └─ WORKER = /system/tgz02/scripts/run_ai_worker.sh
                                            └─ run_ai_worker.sh.accepted
                                                 D=/data/local/tmp/t5_bridge      ← 只放状态/日志
                                                 BIN=/system/tgz02/bin/ai_worker   ← 程序在镜像里
```

也就是说：**刷包后程序确实全部从 `/system/tgz02/bin` 执行**，`/data/local/tmp/t5_bridge`
只保存 `work/`、`ai_worker/`（状态/日志）、`tts/`（队列）、`secret/`（key）。
`/system/tgz02/scripts/prepare_data_dirs.sh` 负责创建这些可写目录（明确写着"never writes a
program outside the image"，它不往 /data 拷任何程序）。

### 11.2 那为什么实际跑到了 /data 下

`/data/local/tmp/t5_bridge/` 里还留着**开发期**的一对启动脚本，它们的 `BIN` 指向自己目录：

```
--- /system/tgz02/scripts/run_ai_worker.sh.accepted
+++ /data/local/tmp/t5_bridge/run_ai_worker.sh.accepted
-D=/data/local/tmp/t5_bridge
-BIN=/system/tgz02/bin/ai_worker   # T9-12: binary lives in the read-only image
+BIN=$D/bin/ai_worker              # 二进制放 bin/：不能和状态目录 $D/ai_worker 同名
```

我这几天重启 worker 用的是 `/data/local/tmp/t5_bridge/run_ai_worker.sh start`（开发期习惯），
于是 `BIN=$D/bin/ai_worker` → 跑的是 `/data/local/tmp/t5_bridge/bin/ai_worker`
（那时是 `1add1012…`，一份旧二进制）。而我把新二进制只写进了 `/system/tgz02/bin/ai_worker`，
所以"改了没生效"。真机自证：

```
$ readlink /proc/16156/exe → /data/local/tmp/t5_bridge/bin/ai_worker
$ sha256sum /proc/16156/exe → 1add1012…   (旧)
$ sha256sum /system/tgz02/bin/ai_worker → ccf378df…  (新，没被用到)
```

### 11.3 收尾

1. 已改用镜像启动器 `/system/tgz02/scripts/run_ai_worker.sh start` 重启，运行进程自证：
   ```
   pid 23055 exe=/system/tgz02/bin/ai_worker
   sha256=13bcf6fe…
   ```
2. 把开发期那对脚本改名，防止再被误用：
   ```
   /data/local/tmp/t5_bridge/run_ai_worker.sh          → run_ai_worker.sh.dev_only
   /data/local/tmp/t5_bridge/run_ai_worker.sh.accepted → run_ai_worker.sh.accepted.dev_only
   /data/local/tmp/t5_bridge/bin/ai_worker             → bin/ai_worker.dev_only
   ```
3. 部署脚本固化为 `android/deploy_worker.sh <新二进制>`：停 worker → 写 `/system/tgz02/bin/ai_worker`
   → 用**镜像启动器**拉起 → 断言 `readlink /proc/<pid>/exe` 必须是
   `/system/tgz02/bin/ai_worker`，否则报 `DEPLOY FAILED`。以后不会再出现"换了镜像里的、
   跑的是 /data 的"。
4. `/data/local/tmp/t5_bridge` 保留的只是状态（work/ai_worker/tts/secret），与程序无关；
   刷包本身不需要拷贝任何程序到 /data。

## 12. /data/local/tmp 遗留脚本清理（T9-17 R8，2026-11-27 22:26）

用户要求："tmp 目录的遗留脚本全部删除"。

### 12.1 先查依赖，再动手

清理前确认"谁引用了 tmp 里的东西"：

- `/system/etc/init/tg_stack.rc`、`/system/tgz02/scripts/*.sh`、`/system/tgz02/bin/boot_stack.sh`、
  `/data/adb/service.d/*.sh` 里**没有任何**一条引用 `/data/local/tmp/*.sh`；
- `tgb_bridge` 用的是抽象 socket（`abstract:tgz2_asr_bridge`），`/data/local/tmp/tgz2_uds`
  只是 11-18 的文件 socket 试验残留（无进程打开它）。

因此 tmp 下的脚本/样本/旧二进制都是纯遗留物，可以删；要保留的是**运行态**。

### 12.2 保留清单（白名单）

| 保留 | 原因 |
| --- | --- |
| `t5_bridge/` | worker 状态：`work/`（ASR 事件）、`ai_worker/`（conf/pid/log/context）、`tts/`（队列）、`secret/`（key） |
| `t9_ui/` | App ↔ worker 通道：`inbox/ result/ rejected/ events/ snapshots/ status.public.json` |
| `t7/`、`t8/` | supervisor 的 pid/log（`tg_stack.rc` 里写死路径） |
| `t9_11/`、`home_lock/` | 首页看门狗 / 首页锁的日志 |
| `t9_16_bak/`、`t9_17_bak/` | 最近两次部署的二进制备份（回滚用） |
| `home_ctl.dex` | `HomeCtl`（`20_home_lock.sh` 每次开机调用它禁用抢 HOME 的组件） |
| `ai_worker_r9` | 当前部署的 worker 二进制副本 |
| `dalvik-cache/`、`oat/` | `app_process` 的 ART 缓存（`HomeCtl` 运行时用） |

### 12.3 删除结果

分三轮（顶层脚本 → 顶层样本/日志/镜像/旧二进制 → 白名单之外的其余全部）：

- 删除条目 **277 项**：`*.sh` 开发脚本（`dev_*`, `dep_*`, `d*.sh`, `al*.sh`, `diag_*` …）、
  旧 `ai_worker_*` 二进制 13 份、`libtg_hook_p*.so`、`dg*.so`、`*.wav` 录音样本、
  `fs*` 磁盘镜像、`req*.json`、`pr_*.xml`、`tgz02*.db` 副本、`t4/t5/t503/t6/t702/t9/…` 等开发目录；
- `/data` 空闲空间 787,568 KB → **854,220 KB**（第一轮之前更少，共释放约 100 MB 量级）；
- 复核运行态：worker `pid 23055 → /system/tgz02/bin/ai_worker`、`tgb_bridge`、两个
  `tg_supervisor`、首页看门狗、App 两个进程全部在跑；`HomeCtl list` 仍返回
  `RESOLVED_HOME=com.tgz02.voice/.VoiceHomeActivity`。

最终 `/data/local/tmp` 只剩 14 项：`t5_bridge t9_ui t7 t8 t9_11 t9_16_bak t9_17_bak home_lock
dalvik-cache oat home_ctl.dex ai_worker_r9 cleanup.log cleanup_2026-11-27.log`。

清理日志留在设备上：`/data/local/tmp/cleanup_2026-11-27.log`（逐条 `rm` 记录 + 前后空间）。

## 13. 卸载「菜谱」「咪咕视频」与原厂 appbox 的自动重装（T9-17 R9，2026-11-27 23:00-23:12）

### 13.1 卸载

| 应用 | 包名 | 结果 |
| --- | --- | --- |
| 菜谱 v3.0.6 | `com.alibaba.ailabs.genie.cook` | `adb uninstall` → Success |
| 咪咕视频 v3.1.9.7 | `cn.cmvideo.car.play` | `adb uninstall` → Success |

注意：本机 `pm` 脚本没有 `uninstall/enable/disable/hide` 子命令（`pm uninstall` 报
`Error: unknown command 'uninstall'`），能用的只有主机侧 `adb uninstall <pkg>`。

### 13.2 但原厂会把它装回来

卸掉菜谱约 1 分钟后（22:58:13）它自己回来了：

```
D PackageManager: installNewPackageLI: Package{… com.alibaba.ailabs.genie.cook}
D PackageManager: New package installed in /data/app/com.alibaba.ailabs.genie.cook-vWLpAIaHCXF197vbQ1kh7g==
```

来源是工厂的 appbox（`ApplistDb.db` 里存着云端的应用清单 + 下载地址，例如
`https://ailabs.alibabausercontent.com/largeFile/…_cook.apk`）：它只在"包不存在"时才补装，
装回来之后 `data/download` 目录已经被清空，属于一次性对账。

### 13.3 处置：改成「整包禁用」

既然 appbox 只看"装没装"，那就让它们**保持已安装但整包禁用**：图标不出现、点不开、
也不会再触发重装。

`HomeCtl` 新增整包控制（IPackageManager，root 直调）：

```
HomeCtl pkgstate   <pkg>     # 读整包 enabled 状态
HomeCtl pkgdisable <pkg>     # COMPONENT_ENABLED_STATE_DISABLED
HomeCtl pkgenable  <pkg>     # 回到 DEFAULT
HomeCtl pkgmethods           # 诊断：列出 IPackageManager 里带 EnabledSetting 的方法
```

坑：本机（API 27）的签名是
`setApplicationEnabledSetting(String, int, int, int, String)`（第五个参数 `callingPackage`），
按 4/3 参数反射会抛 `NoSuchMethodException`，被 `RuntimeInit` 当未捕获异常 **kill 掉进程**
（shell 里只看到 `Killed`，exit=137）。已按实测签名修正。

### 13.4 持久化

`/data/adb/service.d/20_home_lock.sh` 现在开机后做两件事：

1. 组件级禁用 4 个抢 HOME 的 Activity（BootHomeActivity / 当贝两个 / orchard）；
2. 对 `com.alibaba.ailabs.genie.cook`、`cn.cmvideo.car.play` 若存在则整包禁用
   （若被 appbox 重装，这一步把它重新按住）。

真机重启（23:09）日志：

```
OK pkg com.alibaba.ailabs.genie.cook -> state=2
OK pkg cn.cmvideo.car.play        -> state=2      ← 说明咪咕视频确实被 appbox 装回来了
RESOLVED_HOME=com.tgz02.voice/.VoiceHomeActivity
```

重启后核对：

```
pm list packages -d → package:com.alibaba.ailabs.genie.cook / package:cn.cmvideo.car.play
pkgstate            → 2 / 2
am start 两个 App   → Error type 3（Activity does not exist，即包被禁用）
语音栈              → :core / tgb_bridge / ai_worker / tg_supervisor 全部在跑
```

### 13.5 备份与恢复

APK 备份在 `/data/local/tmp/t9_17_bak/`：`cook_3.0.6.apk`(7.5 MB)、`migu_3.1.9.7.apk`(26.6 MB)。

```sh
# 只是重新启用
CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl pkgenable <pkg>
# 彻底装回来
adb install -r /data/local/tmp/t9_17_bak/<apk>
```

---

## 14. T9-18：桌面"消失"与 osupdate 负载

### 14.1 桌面程序没有死，是被第三方浮层盖住了

现象：过夜后桌面不显示。

实测（`dumpsys window windows`，`#0` 在最上层）：

```
#5  Dialog
#6  Dialog
#7  genieui-main                       ← 工厂语音浮层
#8  com.shere.assistivetouch  (焦点)   ← 「选择应用」全屏页
#9  com.shere.assistivetouch
#10 com.shere.assistivetouch
#11 com.shere.assistivetouch
#12 com.tgz02.voice/VoiceHomeActivity  ← 我们的桌面，被压在最后
```

- Activity 栈只有一项：`mResumedActivity = com.tgz02.voice/.VoiceHomeActivity`；
- 屏幕 `mWakefulness=Awake`、`Display Power: state=ON`；
- 因此桌面 **没崩、没被杀、没丢 HOME**，是 `EasyTouch`（`com.shere.assistivetouch`）开了 4 个 overlay 窗口，其中一个全屏「选择应用」抢了焦点，桌面收不到触摸。

处置：`am force-stop com.shere.assistivetouch` → `mCurrentFocus`/`mObscuringWindow` 立刻回到 `VoiceHomeActivity`。

注意：EasyTouch 会自启，悬浮球会再出现。若它再弹全屏页，同一命令可清。

### 14.2 osupdate 为什么长期吃 85% CPU

```
PID 903  com.alibaba.ailabs.genie.osupdate   84.8% CPU   累计 404 分钟（开机 620 分钟）
         load average: 7.88 8.18 8.49（4 核）
```

行为链：

1. 每 ~60 s 把系统日志打包成 `D43F…_AILABS_S1L_<时间>_dfmount_.zip`；
2. 逐个上传到阿里（`adashbc.ut.taobao.com`，`app_sslcache/` 里留了证书缓存）；
3. 上传全部失败（`E tv_osupdate: upload file fail: …`），**无退避、无上限**，立刻换下一个文件重来；
4. 7 天累积 `/data/user/0/…/files/log` = **10157 个 zip / 41 MB**，队列越长循环越久。

日志样本：

```
I tv_osupdate: upload log file: D43F…_20261128.090306_dfmount_.zip
E tv_osupdate: upload file fail: /data/user/0/…/20261128.090306_dfmount_.zip
  → 下一个 zip，再失败，再下一个
```

### 14.3 处置（已执行并重启验证）

1. 备份 `Osupdate.apk` → `/data/local/tmp/t9_18_bak/Osupdate-9.0.1.0.apk`；
2. 清空上传队列：10157 个 → 0（最新 20 个留档在 `t9_18_bak/log_keep/`）；
3. 整包禁用：`HomeCtl pkgdisable com.alibaba.ailabs.genie.osupdate` → `state=2`；
4. 把上述两步写进 `/data/adb/service.d/20_home_lock.sh`（每次开机复核 + 队列 >5 个就裁）。

效果：

| 指标 | 处置前 | 处置后 |
| --- | --- | --- |
| osupdate CPU | 84.8% | ~0（`/proc/<pid>/stat` 180 s 内 utime 38 ticks） |
| `tv_osupdate` 日志 | 每秒数条 | 180 s 内 0 条 |
| zip 队列 | 10157 个 / 41 MB | 0 |
| 系统 idle（`top`） | 12% | 197%~281% |
| load average | 8.18 | 6.4 → 下降中 |

重启后复核：`PKGSTATE … osupdate = 2`、zip 0 个、无新增日志、`RESOLVED_HOME=com.tgz02.voice/.VoiceHomeActivity`。

### 14.4 它到底是什么，能不能"卸载"

身份：

```
/system/app/Osupdate/Osupdate.apk   2 071 892 B   v9.0.1.0
userId=1000  sharedUser=android.uid.system
flags=[ SYSTEM HAS_CODE PERSISTENT ALLOW_CLEAR_USER_DATA ALLOW_BACKUP ]
组件：UpdateService(IUpdateService) / UpdateActivity(osupdate:// scheme)
      AppConfigInfoProvider(authority com.alibaba.ailabs.genie.osupdate.AppConfigInfoProvider)
      UpdateBroadcastReceiver
声明权限：com.alibaba.ailabs.genie.osupdate.appconfiginfo.READ / .WRITE
请求权限：INTERNET / RECEIVE_BOOT_COMPLETED / REBOOT / DELETE_PACKAGES / DEVICE_POWER …
```

结论分三层：

1. **`adb uninstall` 不解决问题**：它是 `/system` 分区应用，卸载只对 user 0 打标记，重启 PackageManager 重新扫描即恢复；这台 ROM 的 `pm` 连 `uninstall` 子命令都没有。
2. **整包禁用够用**：CPU 84% → 0，日志与队列归零，重启保持。副作用：进程仍被 `PERSISTENT` 拉起（空转 0% CPU），OTA/FOTA 升级能力失效（自建包本来不用）。
3. **要"彻底消失"只能动 /system**：`mount -o rw,remount /system` 后把 `/system/app/Osupdate` 改名（如 `Osupdate.bak`），重启后包不存在、进程不存在。可回滚（改回来）。风险点：`AppConfigInfoProvider` 会随之消失；已核对 smartapp 的 dex（`_analysis\apk\smartapp`、`_analysis\t506d\jadx_out`）**无任何 `osupdate` 引用**，`/system/etc/init`、`/system/etc/permissions` 也无引用。

### 14.5 备份与回滚

```sh
# 重新启用（不用动 /system）
CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl pkgenable com.alibaba.ailabs.genie.osupdate
# APK 备份
/data/local/tmp/t9_18_bak/Osupdate-9.0.1.0.apk
/data/local/tmp/t9_18_bak/log_keep/    # 清队列前留档的 20 个 zip
```

### 14.6 剩余负载（未处理）

`smartapp:core` 仍占 ~64%，归因到两个 `xengine_main` 线程（43.4% + 17.3%，累计 296 / 118 分钟），即阿里的语音前端（唤醒 + 降噪 + AGC）常驻推理。`tgl`/`tgt` 标签日志为 0，与本项目 hook 无关。待单独排查。

---

## 15. T9-18：后台进程盘点与 GenieIoT 禁用

### 15.1 重启后的后台清单（按 RSS 排序）

| 进程 | RSS | 说明 |
| --- | --- | --- |
| `com.alibaba.ailabs.genie.smartapp` | 118 MB | 工厂语音主进程 |
| `…smartapp:core` | 106 MB | 语音引擎/XEngine（hook 注入点） |
| `…smartapp:business` | 86 MB | 工厂业务模块 |
| `com.alibaba.ailabs.genie.rtc` | 85 MB | 阿里 RTC 音视频通话 |
| `com.tgz02.voice` | 78 MB | 本项目桌面 |
| `com.topjohnwu.magisk` | 75 MB | root 框架 |
| `com.android.systemui` | 74 MB | 系统 UI |
| `com.topjohnwu.magisk:root:0` | 70 MB | root 框架 |
| `com.aligenie.ags` | 64 MB | 阿里统计/接入（analytics） |
| `com.shere.assistivetouch.service` | 61 MB | EasyTouch 悬浮球 |
| `…assistivetouch:xg_service_v3` | 56 MB | EasyTouch 推送通道 |
| `com.android.settings:SettingsProvider` | 46 MB | 系统设置 provider |
| `com.android.bluetooth` | 43 MB | 蓝牙 |
| `com.google.android.inputmethod.pinyin` | 42 MB | 输入法 |
| `com.alibaba.ailabs.genie.osupdate` | 38 MB | 已禁用（PERSISTENT 空转） |
| `com.shere.assistivetouch` | 34 MB | EasyTouch 主进程 |
| `com.tgz02.voice:backend` | 27 MB | 本项目语音桥 |
| `com.android.keychain` | 24 MB | 系统 |
| `com.android.packageinstaller` | 24 MB | 系统 |

内存 984 MB，禁 IoT 前 used 940 / free 44；禁后 used 831 / free 153。

### 15.2 GenieIoT 身份

```
/system/app/GenieIoT/GenieIoT.apk   12 826 963 B   v2.1.2.0
userId=1000   sharedUser=android.uid.system   （无 PERSISTENT）
进程：com.alibaba.ailabs.genie.iot:service  ~66 MB
服务：HouseService / AnalyticsService / LogService
Provider：IOTProvider(ipc.service) / SecondInstaller(ipc.second.server) /
          IoTLocalExecuteProvider(local_execute.service) / PaletteProvider(agui)
权限：READ_LOGS / KILL_BACKGROUND_PROCESSES / SYSTEM_ALERT_WINDOW / WRITE_SETTINGS /
      INTERACT_ACROSS_USERS / BLUETOOTH / 定位 / 联网 / 前台服务
```

它是智能家居/物联网桥（设备接入、场景执行、本地执行、调色板通道），与语音识别链路无耦合：进程虽在连 smartapp 的 `AgisProvider`（作为 client），但没有任何包反向依赖它的 provider。

### 15.3 处置与验证

```sh
备份  /data/local/tmp/t9_18_bak/GenieIoT-2.1.2.0.apk
禁用  HomeCtl pkgdisable com.alibaba.ailabs.genie.iot   → state=2
固化  20_home_lock.sh 的 pkgdisable 列表加入该包
```

禁用后进程不会自杀（老 ROM 对 sharedUid 包不 kill），需 `kill -9`；40 秒内无重生，`dumpsys activity providers` 中该包记录归 0，`dumpsys alarm` / `jobscheduler` 也无残留调度。

重启后复核：

```
PKGSTATE com.alibaba.ailabs.genie.iot = 2
IOT-NOT-RUNNING
RESOLVED_HOME=com.tgz02.voice/com.tgz02.voice.VoiceHomeActivity
语音栈：smartapp / :core / :business / ags / tgz02.voice / :backend /
        ai_worker / tgb_bridge / 2×tg_supervisor 全部在跑
```

### 15.4 副作用

`com.alibaba.ailabs.genie.rtc` 每 30 s 轮询一次调色板服务：

```
D IPCRouter: … uri = com.alibaba.ailabs.genie.iot.palette.service
E ActivityThread: Failed to find provider info for com.alibaba.ailabs.genie.iot.palette.service
D IPCRouter: … binder = null        ← 取到 null 后走默认，不崩
```

只影响语音界面主题配色（回落到默认色）与一条 30 s 一次的 E 日志，不影响识别、TTS、桌面。

### 15.5 还能再砍的候选（未执行）

| 目标 | 可回收 | 代价 |
| --- | --- | --- |
| `com.shere.assistivetouch` 三进程 | ~151 MB | 丢悬浮球/快捷手势（正是早上遮挡桌面的东西） |
| `com.alibaba.ailabs.genie.rtc` | ~85 MB | 丢视频通话/远程看护 |
| `com.aligenie.ags` | ~64 MB | 丢阿里统计上报（纯数据采集） |
| `com.google.android.inputmethod.pinyin` | ~42 MB | 丢软键盘（本项目语音优先，几乎不用） |

---

## 16. T9-18：批量清退（rtc / ags / osupdate / EasyTouch）与内置应用管理

### 16.1 处置清单与实测结果

| 包 | 位置 | 手段 | 结果 |
| --- | --- | --- | --- |
| `com.alibaba.ailabs.genie.rtc` | `/data/app`（UPDATED_SYSTEM_APP，36 MB） | `pkgdisable` | state=2，进程 0，85 MB 回收 |
| `com.aligenie.ags` | `/system/app/AliGenieService` | `pkgdisable` | state=2，进程 0，64 MB 回收 |
| `com.alibaba.ailabs.genie.osupdate` | `/system/app/Osupdate` | APK 改名 `Osupdate.apk.bak` | 包消失，进程 0，38 MB 回收 |
| `com.shere.assistivetouch`（EasyTouch 4.6.1） | `/system/app/easytouch.apk` | APK 改名 `easytouch.apk.bak` | 包消失，三进程 0，151 MB 回收 |

关键教训：**只改目录名没用**。第一次把 `/system/app/Osupdate` 改成 `Osupdate.bak` 后，PackageManager 仍然扫到并加载了 `package:/system/app/Osupdate.bak/Osupdate.apk`——它递归扫描 `/system/app/**/*.apk`，不看目录名。必须把 **APK 文件本身**改成非 `.apk` 后缀（`Osupdate.apk.bak`）才会真正从包列表里消失。EasyTouch 因此一次做对。

两个包能"真删"还有一个前提：`/system` 是 ext4，`mount -o rw,remount /system` 可写，改完 `sync` + remount ro。`app.orchard.tv` / dangbei 那类 `/data` 应用则可以直接 `adb uninstall`。

### 16.2 重启后全量复核

```
osupdate                 GONE          （pm path 无输出）
com.shere.assistivetouch GONE
iot / rtc / ags / cook / 咪咕视频   state=2（全部）
进程：osupdate 0 · shere 0 · genie.rtc 0 · aligenie.ags 0 · genie.iot 0
语音栈：smartapp / :core / :business / tgz02.voice / :backend /
        ai_worker / tgb_bridge / 2×tg_supervisor 全部在跑
RESOLVED_HOME = com.tgz02.voice/com.tgz02.voice.VoiceHomeActivity（priority=100）
free: 123 MB → 252 MB
```

### 16.3 语音链路回归（清退后必测）

原因：`aligenie.ags` 挂着 `AccessService` / `AnalyticsService`，`genie.iot` 挂着调色板 Provider，都要确认原厂 TTS 没被带坏。

用与 `FactoryTts.java` **完全相同的 payload** 打原厂 Provider：

```sh
J='{"method":4,"data":{"sessionId":0,"tts":"语音链路测试一二三","isOpenMic":false,
     "ignoreMute":true,"feedback":false,"secretKey":"","pkg":"com.tgz02.voice","wakeupType":1}}'
content query --uri content://com.alibaba.ailabs.genie.assistant.provider/GenieApi --where "$J"
```

实测链路完整：

```
10:14:09.076 PlaybackService: playTTS, agmcId:5244230, type:'tts', ext:'{ "forcePlay": true }'
10:14:09.077 PlaybackService: playTTS 语音链路测试一二三 doesn't contain wakeup word
10:14:09.092 TtsManager: onTtsData  TTS_TIME receive stream data actually
10:14:09.125 TtsManager: onTtsEnd   sessionId = 5244230
```

两个坑记在这里：

1. payload **必须带全** `sessionId/isOpenMic/feedback/secretKey/pkg/wakeupType`，只给 `tts`+`pkg` 时 Provider 不报错也不播报，容易被误判成"被禁坏了"。
2. 查询结果**不要读 cursor**，跨进程 cursor 取窗口必抛 `NullPointerException: Attempt to get length of null array`；副作用在 `query()` 返回前已经发生。

### 16.4 新增：设置 → 应用管理（替代 EasyTouch 的应用抽屉）

`AppListActivity.java`（APK v1.7.0 / versionCode 9）：

- 入口：设置页「设备」卡片第一行「应用管理 · 本机 N 个应用，点一下就能打开」；
- 内容：`queryIntentActivities(MAIN/LAUNCHER)` 全量列出，4 列网格，每格 = 图标 + 名称 + 包名；
- **同包去重**：一个包可能有多个 LAUNCHER activity（smartapp 就出现三次），按包名只保留第一个，16 个候选 → 15 个；
- 启动用显式 `component`（`setClassName(pkg, activity)`），不依赖 `getLaunchIntentForPackage`；
- 已禁用的包天然不出现（`queryIntentActivities` 对 unprivileged 调用者本身就过滤 disabled）；
- 点「刷新」重新枚举。

真机验证：`mResumedActivity = com.tgz02.voice/.AppListActivity`；点 ES文件浏览器 → `mResumedActivity = com.estrongs.android.pop/.view.FileExplorerActivity`；按 HOME 回到 `VoiceHomeActivity`。

### 16.5 现在的后台（清退后）

| 进程 | RSS |
| --- | --- |
| `smartapp` | 113 MB |
| `smartapp:core` | 100 MB |
| `smartapp:business` | 81 MB |
| `com.tgz02.voice` | 74 MB |
| `systemui` | 56 MB |
| `bluetooth` | 30 MB |
| 输入法 | 30 MB |
| `tgz02.voice:backend` | 27 MB |
| `keychain` | 20 MB |
| `packageinstaller` | 19 MB |

内存 984 MB，free 252 MB（早上 123 MB）。剩下的主要是工厂语音三兄弟（294 MB）——那是产品赖以工作的引擎，不动。

### 16.6 备份与回滚

```sh
# /data 应用：重新启用
CLASSPATH=/data/local/tmp/home_ctl.dex app_process /system com.tgz02.home.HomeCtl pkgenable <pkg>

# /system 里被改名的 APK：改回来 + 重启
mount -o rw,remount /system
mv /system/app/Osupdate.bak/Osupdate.apk.bak /system/app/Osupdate.bak/Osupdate.apk
mv /system/app/easytouch.apk.bak /system/app/easytouch.apk
mount -o ro,remount /system && reboot

# APK 备份
/data/local/tmp/t9_18_bak/{Osupdate-9.0.1.0.apk, GenieIoT-2.1.2.0.apk,
                           AliGenieService-2.5.3.apk, Rtc-base.apk, easytouch-4.6.1.apk}
```

---

## 17. T9-19：appbox 的解剖与根治、两个 probe App、应用管理的卸载

### 17.1 我们自己的两个 probe App（已卸载）

| 包 | 路径 | 来源 | 处理 |
| --- | --- | --- | --- |
| `com.tgz02.aidltest` | `/data/app/...` DEBUGGABLE v1.0 | T9-04 AIDL 阶段的联调用例（2026-11-24 14:49 装） | `adb uninstall` → Success |
| `com.tgz02.providerprobe` | `/data/app/...` DEBUGGABLE v1.0 | T9-05 Provider 阶段的联调用例（2026-11-24 15:08 装） | `adb uninstall` → Success |

都是 `/data` 应用，卸载即消失，源码仍在 `android/t9_04_aidl`、`android/t9_05_provider`，需要时可重新装。卸载后应用管理里的"TG-Z02 AIDL probe / provider probe"两项同时消失。

### 17.2 appbox 是什么

它不是独立应用，是 **smartapp 内部的应用商店模块**：

```
sources/com/alibaba/ailabs/appbox/            219 个类
  ├─ download/MarketDownloadService.java     下载服务（独立进程 :download）
  ├─ download/{InstallBean,DownloadBean}.java
  ├─ common/installafter9/InstallAfter9.java 安装（API 28+ 路径）
  ├─ common/installunder9/InstallUnder9.java 安装（API <28 路径，本机走这条）
  ├─ adapter/applist/ApplistWithHeaderAdapter.java
  └─ fragment/{recommendvh/MarketItemView, MarketDetailsFragment}.java
```

数据在 `/data/data/com.alibaba.ailabs.genie.smartapp/databases/ApplistDb.db`（Room + SQLite）：

```sql
applist(id, appid, actionValue, appName, businessType, appVersionCode, appVersionName,
        downloadUrl, downloadSize, installSize, packageName, icon, deleteType,
        isOffline, fromType)                      -- 16 行
applistsort(sortIndex, appid)                     -- 与 applist 一一对应
child_app_list / child_app_list_sort / marketitem / applist_recent
```

`businessType` 决定行为：`apk` + `http(s)` 的 `downloadUrl` = **会被下载安装**；`h5`/`applet`/`genie://` 只是入口。实测这 4 行是安装源：

| appName | packageName | downloadUrl |
| --- | --- | --- |
| 旭慧生活 | `com.anthouse.ayland` | `…/largeFile/1629183160338_app-wuye-release.apk` |
| 手势 | `com.alibaba.ailabs.genie.intermediary` | `…/genie-screen-apk/Release_platform_57159_signed.apk` |
| 菜谱 | `com.alibaba.ailabs.genie.cook` | `…/largeFile/1654854444717_cook.apk` |
| 相机 | `com.alibaba.ailabs.genie.camera` | `…/largeFile/1647488005241_Release_platform_77056_signed.apk` |

安装权限来自 smartapp 自己：`INSTALL_PACKAGES` / `DELETE_PACKAGES` 均为 `granted=true`（uid 1000 系统签名）。所以它装应用**不需要用户点任何确认**，也不走 PackageInstaller 的可见流程。

旭慧生活的 `installerPackageName` 是 `what is use for ?` —— 安装方把 installer 名字写成了这句占位字符串，是该渠道包的典型特征。

### 17.3 改数据库为什么不算根治

把上表 4 行连同 `applistsort` 一起删掉（16 行 → 12 行）、推回数据库、重启，结果：

```
10:30  写入 12 行（md5 026a04ba…，integrity_check = ok）
10:32  重启完成，smartapp 启动后从服务器同步，16 行全部回来（md5 f489af20…）
10:32:48  旭慧生活被重新下载安装（/data/app/com.anthouse.ayland-GCLIvtinpG1ZPLxdbiLm6A==）
```

`fromType='server'` 说明清单本来就从云上拉，本地改数据只能撑过一次同步。**数据不是根，下载通道才是根。**

### 17.4 根治：在 DNS 层掐掉下载主机

清单里所有 `downloadUrl` 都指向同一个主机：

```
https://ailabs.alibabausercontent.com/largeFile/*.apk
https://ailabs.alibabausercontent.com/genie-screen-apk/*.apk
```

于是：

```sh
mount -o rw,remount /system
printf '127.0.0.1\tailabs.alibabausercontent.com\n' >> /system/etc/hosts
sync && mount -o ro,remount /system
```

验证：

```
ping ailabs.alibabausercontent.com → PING ailabs.alibabausercontent.com (127.0.0.1)
重启后 pm path com.anthouse.ayland → 空（145 秒、再 10 分钟均未回来）
```

代价：同一主机上的图标（`/images/…png`）和 UC 内核 `libkernelu4_zip_uc.so` 也一并不可达 —— 应用市场里的图标会缺图，UC 内核是内置浏览器的可选加速件，本项目不用。

**回归验证（关键）**：原厂 TTS 走的是另一条链路，屏蔽后完全正常：

```
10:36:35.660 AudioManager: playTTS, stream:5246163
10:36:35.661 PlaybackService: playTTS 语音链路测试一二三
10:36:35.699 TtsManager: onTtsData  receive stream data
10:36:35.721 TtsManager: onTtsEnd   sessionId = 5246163
```

回滚：`/data/local/tmp/t9_19_bak/hosts.orig`。

补充：这一步是"掐通道"，不是"禁功能"。若以后需要应用市场的自动安装能力，删掉这一行 hosts 即可恢复。

### 17.5 旭慧生活的卸载

```sh
adb uninstall com.anthouse.ayland     # Success（81 MB / v1.0.39）
```

它和菜谱、咪咕视频属于同一类——清单里的 `apk` 项，只要通道可用就会被补装。17.4 之后已不再回来。

`home_lock` 脚本里保持对 `cook` / `cmvideo` 的整包禁用；`anthouse` 若某天又出现，用
`HomeCtl pkgdisable com.anthouse.ayland` 即可。

### 17.6 应用管理 v1.8.0：长按卸载

`AppListActivity` 加了长按菜单（APK **1.8.0 / versionCode 10**）：

```
长按卡片 → MT管理器
           bin.mt.plus
           第三方应用 · 可卸载
           [应用信息]  [取消] [卸载]
```

- 「卸载」→ `Intent.ACTION_DELETE` + `package:` URI → 系统 `com.android.packageinstaller/.UninstallerActivity` 确认框（普通应用唯一的合法卸载路径，manifest 加了 `REQUEST_DELETE_PACKAGES`）；
- 「应用信息」→ `Settings.ACTION_APPLICATION_DETAILS_SETTINGS`；
- 系统应用会在对话框里直接标注"系统应用 · 无法从这里卸载"，点卸载只提示不跳转。

真机验证：长按 MT管理器 → 弹菜单 → 点卸载 → `mResumedActivity = com.android.packageinstaller/.UninstallerActivity`（"要卸载此应用吗？"）→ 点取消返回，`bin.mt.plus` 仍在。

### 17.7 一个必须记住的坑：Magisk 的 mount namespace

`su -c` 与 `su --mount-master -c` **看到的 /data/data 不一样**：

```
su -c "ls /data/data/com.alibaba.ailabs.genie.smartapp/databases"
  → Permission denied            （uid 0，SELinux Permissive，仍然不行）
su --mount-master -c "ls ..."
  → ApplistDb.db / agis / …      （正常）
```

所以读改系统应用的数据目录，必须 `su --mount-master -c`。

同时，`pm uninstall` 在设备端 `su -c` 下报 `unknown command 'uninstall'`；用主机 `adb uninstall` 即可。

---

## 18. T9-19b：「支付宝小程序」= arome 容器

### 18.1 它是谁

原厂「空间清理」(`com.alibaba.ailabs.cleaner.activity.CleanerMainActivity`) 里那一行：

```
支付宝小程序…     147.0 MB      很久未使用
```

对应的是 **`com.alipay.arome.app`** —— 支付宝小程序运行时容器（Arome），不是我们装的东西：

```
/system/app/AMPE/AMPE.apk     27 435 939 B (26.8MB)
userId=10019   versionName=10.2.3.1775   versionCode=517   targetSdk=29
flags=[ SYSTEM HAS_CODE ALLOW_CLEAR_USER_DATA LARGE_HEAP ]    ← 非 PERSISTENT
```

配套还有 `com.alibaba.genie.waft`（`/system/app/Waft/Waft.apk`，184 KB）—— WAFT 小程序框架，负责把 `waft://` 请求转给容器。appbox 清单里 3 个 `businessType='applet'` 的入口都靠它：

| appName | appid | actionUrl |
| --- | --- | --- |
| 人教点读机 | 2020042456013 | `webapp://…/open?appId=…` |
| 蚂蚁森林 | 2020082832006 | `waft://open?genieAppId=2020082832006&code=ant_forest` |
| 听书 | 2020091150002 | `webapp://…/open?appId=…` |

### 18.2 147 MB 是怎么来的

```
/system/app/AMPE/AMPE.apk                     26.8 MB   APK
/data/data/com.alipay.arome.app              79.0 MB   data
  ├─ app_h5container                         32.2 MB   小程序 H5 运行时缓存
  ├─ app_plugins_lib                         28.5 MB   插件库
  ├─ files                                    9.6 MB
  └─ app_ucmsdk                               8.6 MB   UC 内核缓存
                                              ------
                                              ~106 MB  + oat/dex ≈ 清理器报的 147 MB
```

进程态检查：`ps -A | grep arome` = 空，说明它从没被朗读命令用过，纯占空间。

### 18.3 处置

```sh
# 1. 备份 APK
cp /system/app/AMPE/AMPE.apk /data/local/tmp/t9_19_bak/AMPE-arome-10.2.3.1775.apk

# 2. 改名，让 PackageManager 不再扫描（同 osupdate / EasyTouch 的做法）
mount -o rw,remount /system
mv /system/app/AMPE/AMPE.apk /system/app/AMPE/AMPE.apk.bak
sync && mount -o ro,remount /system

# 3. 删掉 80 MB 数据
rm -rf /data/data/com.alipay.arome.app
```

重启后：

```
pm list packages | grep -i arome   → PACKAGE-GONE
「空间清理」页面                     → 不再出现「支付宝小程序」这一行
/data 可用空间                      → 601 MB → 800 MB
free                                → 206 MB
原厂 TTS                           → onTtsData → onTtsEnd 正常
```

`com.alibaba.genie.waft` **保留**（184 KB，框架本身不占资源），只是它以后找不到容器会失败。

### 18.4 影响

- 语音/界面里"打开蚂蚁森林""打开人教点读机"这类小程序指令会失败（容器不在）；
- 语音识别、TTS、闹钟、桌面、应用管理全部不受影响（实测 TTS 链路完整）；
- 原厂「空间清理」里剩下的条目：权限狗 3 MB、爱家看护 31 MB、菜谱 37 MB、MT管理器 40 MB。

### 18.5 回滚

```sh
mount -o rw,remount /system
mv /system/app/AMPE/AMPE.apk.bak /system/app/AMPE/AMPE.apk
mount -o ro,remount /system && reboot
# APK 备份：/data/local/tmp/t9_19_bak/AMPE-arome-10.2.3.1775.apk
```

首次打开小程序时容器会重建 `/data/data/com.alipay.arome.app`，数据是缓存，不需要备份。

---

## 19. T9-19c：菜谱为什么还在、爱家看护移除

### 19.1 菜谱还在，是因为当初做的是"禁用"而不是"卸载"

```sh
dumpsys package com.alibaba.ailabs.genie.cook
  codePath=/data/app/com.alibaba.ailabs.genie.cook-vWLpAIaHCXF197vbQ1kh7g==
  flags=[ HAS_CODE ALLOW_CLEAR_USER_DATA ]        ← 没有 SYSTEM，纯 /data 应用
  User 0: … enabled=2                             ← 我们设的 DISABLED
  /data/app 目录 21.5 MB（APK 7.5 MB + oat + lib）
```

`pkgdisable` 只写 PackageManager 的 enabled 状态，**包仍然安装着，APK 文件也还在**，所以「空间清理」照常把它列为已安装应用、按 APK+dex+data 算出 37 MB。

之前不敢真删，是因为 appbox 会补装。现在 17.4 已经把下载主机掐掉，`adb uninstall` 就是真删。

| 包 | 位置 | 真删动作 |
| --- | --- | --- |
| `com.alibaba.ailabs.genie.cook` | 只在 `/data/app`（appbox 装的，无系统副本） | `adb uninstall` 就没了 |

### 19.2 爱家看护要分两层删

```sh
flags=[ SYSTEM HAS_CODE ALLOW_CLEAR_USER_DATA UPDATED_SYSTEM_APP ]
  /system/app/GenieAicare/GenieAicare.apk   2.6 MB（目录 19 MB，含 oat+lib）
  /data/app/…aicare-zsBAkMuEJlOe5ygOiDbDbw==  11.4 MB（目录 30.5 MB）
```

它是**预置系统应用 + /data 里的更新版本**，所以单独 `adb uninstall` 只会退回系统版本，必须两层都处理：

```sh
adb uninstall com.alibaba.ailabs.genie.aicare          # 删 /data 更新 → 回退到系统版
mount -o rw,remount /system
mv /system/app/GenieAicare/GenieAicare.apk \
   /system/app/GenieAicare/GenieAicare.apk.bak          # 让 PackageManager 不再扫描
sync && mount -o ro,remount /system
rm -rf /data/data/com.alibaba.ailabs.genie.aicare /data/app/com.alibaba.ailabs.genie.aicare-*
```

### 19.3 结果

```
pm path com.alibaba.ailabs.genie.cook    → 空
pm path com.alibaba.ailabs.genie.aicare  → 空
pm path com.alipay.arome.app             → 空
「空间清理」页面                          → 菜谱 / 爱家看护 / 支付宝小程序 全部消失
/data 可用                               → 800 MB → 851 MB
```

现在「空间清理」里只剩：GenieRTC 103 MB（已禁用但 APK 还在）、相机 19 MB、屏保 10 MB、GenieIOT 0 MB。

### 19.4 一个测试注意点

在 smartapp 自己的界面（例如「空间清理」）位于前台时，通过 `content://…GenieApi` 打进去的 TTS 请求**不会播报**——hook 统计里 `play_seen=0`，回到我们的桌面后再发同一个请求立刻正常：

```
回到 VoiceHomeActivity 后：
10:55:17.733 TtsManager: onTtsEnd sessionId = 5246411
文本命中 3 次
```

所以验证原厂 TTS 时，必须先把前台切回 `com.tgz02.voice`。这不是本次改动的副作用（删 aicare 前后行为一致），只是之前几次测试碰巧都不在工厂 UI 里。

---

## 20. T9-19d：时间与闹公交回原厂（不接管、不续听）

### 20.1 为什么以前是自研

T9-15 时 IR_ALARM 分过 route 位（0x100），原厂闹钟真机验收通过；T9-16 为了做"自有闹钟体系"把位收回（`ir_route_bit(IR_ALARM)` 返回 0），于是 hook 恒 TAKE —— 原厂 NLU 被丢弃，worker 的闹钟技能接管（时间解析→自有 DB→AlarmScheduler→自有响铃）。时间（IR_TIME）则一直被 time 技能接管，播报文本是硬编码的英文 `now %02d:%02d`（`skill_dispatch.c:270`），这就是"问时间说英文"的来源。

### 20.2 决定权在谁手上

两层判定，必须先分清：

| 层 | 文件 | 作用 |
| --- | --- | --- |
| NLU 接管 | `libtg_hook.so` → `t8_to_on_final` | `enabled = hit && (route_mask & ir_route_bit(intent))`；**enabled=1 且参数完整 → PASS（原厂执行并播报）**，否则 TAKE（原厂 NLU 被跳过） |
| 技能/原生路由 | `ai_worker` | `skill_claim_id` 先抢（技能已注册 + route 位开），抢不到才走 native（写放行标记让 guard 放过原厂答案），再不行才走模型 |

所以"交回原厂"要在两处同时成立：
1. intent 必须有 route 位且 mask 打开 → hook 才 PASS；
2. 技能不能注册 → worker 才不会抢答（抢答时没写放行标记，guard 会把原厂答案 DROP）。

### 20.3 改动

```c
/* intent_route.h */
#define T7B_ROUTE_ALARM  0x100
#define T7B_ROUTE_ALL    0x1FF      /* 由 0xFF 恢复；掩码校验与 hook 上限都引用 ALL */

/* intent_route.c */
case IR_ALARM: return T7B_ROUTE_ALARM;   /* 由 return 0 改回 */

/* hook_agent/libtg_hook.c */
if (m > 0 && m <= 0x1FF) g_nlu_mask = (int)m;   /* 原为 0xFF */
slog("nlu boot: … mask=0x%03x …")               /* 原为 %02x */

/* worker_conf.c */
else if (strcmp(tok, "alarm") == 0) mask |= T7B_ROUTE_ALARM;
if (strcmp(key, "skill_time_enabled") == 0) { … }      /* 新配置项 */

/* ai_worker.h / ai_worker.c */
int skill_time_enabled;                                 /* 新字段，默认 1 */
if (!c->skill_time_enabled)  → 不注册 T8_SK_TIME_QUERY
if (!c->skill_alarm_enabled) → 不注册 T8_SK_ALARM_SET
```

设备侧 `worker.conf`：

```
skill_time_enabled=0
skill_alarm_enabled=0
```

### 20.4 部署与实测

```
/system/tgz02/bin/ai_worker          f2ecbf56…  (原 13bcf6fe…)
/system/tgz02/lib/libtg_hook.so      91af8a45…  (原 882e0d78…)
```

重启后 worker 启动日志（`/data/local/tmp/t5_bridge/ai_worker/ai_worker.log`）：

```
route: enabled=1 intents=0x1ff (volume=1 weather=1 screen_off=1 time=1 screen_on=1 media=1 exit=1)
skill: time.query NOT registered (skill_time_enabled=0) -> time goes to the factory through the native route
skill: alarm.set NOT registered (skill_alarm_enabled=0) -> alarms go back to the factory
```

- `intents=0x1ff`：闹钟位 0x100 已在掩码里 → hook 对 IR_ALARM **PASS**；
- 两个技能都未注册 → `skill_claim_id` 恒返回 0 → 时间/闹钟落到 native 路由：写 `native_route.public.json` 放行标记，原厂自己播报；
- native 路径从 T9-17 R6 起就**统一不续听**（`native command (%s): no re-listen`），所以这两类指令都不会再自动开麦。

部署注意：这台机器 `mount -o rw,remount /system` 在 `su -c` 下会报
`not user mountable in fstab`，必须 `su --mount-master -c` 执行（与第 19 章读 `/data/data` 是同一个 namespace 坑）。

### 20.5 影响与回滚

- 问时间 → 原厂中文播报（"现在是上午十点十三分"这类），再也不会说 `now 10:13`；
- 定闹钟 → 原厂闹钟（原厂列表里能看到、按原厂逻辑响），自研 `alarms` 表保持 0 行；
- 自研闹钟代码（`AlarmScheduler` / `AlarmRingingService` / `t9_skill_alarm_exec`）全部保留但不再被触发，DB 里 0 条闹钟，不会有残留响铃；
- 回滚：`skill_time_enabled=1` / `skill_alarm_enabled=1` 两个开关即可恢复接管（闹钟还要把 `T7B_ROUTE_ALARM` 位重新关掉，见 20.3 的反向改动）。

---

## 21. T9-19e：闹钟"不行"的真相 —— 答案被守卫拦掉了

### 21.1 现象与事实

用户反馈"时间可以了，但闹钟还是不行"。真机日志显示**工厂其实建成功了**：

```
11:19:28.086 I/tgt: onTtsStart DROP id=1969550 text="已为你设置好今天上午十一点二十二分的闹钟" (factory NLU answer)
11:19:48.614 I/tgt: onTtsStart DROP id=1969555 text="您在今天上午十一点二十二分已经有一个闹钟" (factory NLU answer)
```

打开工厂闹钟页（`com.alibaba.genie.alarm.ui.AlarmListActivity`）确实有两个闹钟：11:22「那片田野那片海」、11:24「橘色告白」。

**所以闹钟功能是好的，问题是确认语音被 `libtg_ttsguard_t8156.so` 丢掉了**——用户什么都没听到，自然认为没成功。

### 21.2 为什么被丢

守卫放行原厂答案只有一条路径：读 `/data/local/tmp/t5_bridge/work/native_route.public.json` 里的放行标记，然后要求 `标记.session == onTtsStart 的 sessionId`。

两处同时出问题：

1. **键名不一致**：worker 写的是 `"asr_session":"1969550"`，守卫只找 `"session":`。于是每条标记都被当成"没有 session"，精确匹配从未生效。
2. **竞态**：闹钟的原厂答复是本地 NLG 模板（"已为你设置好…"），几乎是即时产出的；而 worker 的 utterance gate 有 450 ms debounce，等它判完意图、写完标记，工厂的答案已经送去 TTS 了。实测 11:19:28.086 的 DROP，对应标记 seq=4 还没落地。

时间（IR_TIME）没暴露这个问题，是因为云端 TTS 合成要 1~2 秒，标记早就写好了。

### 21.3 修复（两层）

```c
/* native_marker.c: nm_parse —— 两个键名都认 */
if (strstr(buf, "\"session\":") != NULL) sess_key = "session";
else if (strstr(buf, "\"asr_session\":") != NULL) sess_key = "asr_session";

/* native_marker.c: nm_decide —— alarm / time 允许窗口放行 */
if (m->intent[0] != '\0' &&
    (strcmp(m->intent, "alarm") == 0 || strcmp(m->intent, "time") == 0)) {
    if (st != NULL) st->hit_window++;
    return 1;
}
```

只对 `alarm` / `time` 放宽：这两类一次指令只对应一条答案，窗口内放行不会误伤；音量/天气/媒体/开关屏继续要求 session 精确匹配。

### 21.4 部署（这次 `/system` 不能 remount，改用 Magisk 模块）

重启前后都试过 `mount -o rw,remount /system`（`su -c` 与 `su --mount-master -c` 两种），都返回：

```
mount: '/dev/block/platform/soc/11120000.mmc/by-name/system' not user mountable in fstab
```

改用 Magisk 的 magic mount 覆盖，不需要写 /system，重启即生效：

```
/data/adb/modules/t9_19e_guard/module.prop
/data/adb/modules/t9_19e_guard/system/tgz02/lib/libtg_ttsguard_t8156.so
```

重启后核对：

```
/system/tgz02/lib/libtg_ttsguard_t8156.so  76766996…   （模块覆盖成功）
/system/tgz02/bin/ai_worker                f2ecbf56…
/system/tgz02/lib/libtg_hook.so            91af8a45…
tg_supervisor ×2 / ai_worker              全部在跑
```

### 21.5 顺带记录：inbox 不能注入 ASR

`--inbox` 只接受 `ask`（文字提问）/`say`/`stop`/`modeltest` 四种 kind，没有 `asr_final`。想验证路由只能靠真实语音，或者往 `work/events.jsonl` 追事件（会牵动 consumer offset，风险更高，不建议）。

### 21.6 第二轮：放宽 session 匹配还不够，最终按措辞放行

21.3 的改动上线后用户再试，仍然听不到确认。同一时刻的日志把原因钉死了：

```
12:20:43.099 tgt: onTtsStart DROP id=1969115 text="已为你设置好今天中午十二点二十五分的闹钟"
12:20:58.906 tgt: onTtsStart DROP id=1969121 text="您在今天中午十二点二十五分已经有一个闹钟"

对应标记（12:20:59 才写入）：
{"seq":3,"wall_ms":1795839659354,"exp_ms":1795839667354,"asr_session":"1969121","intent":"alarm"}
```

`wall_ms` 折算是 **12:20:59.354**，比它要放行的那句答案（12:20:58.906）晚了 448 ms —— 正好是 utterance gate 的 debounce。也就是说：**标记永远追不上答案**，无论怎么放宽"窗口内 session 匹配"都没用，因为答案到达时文件里躺着的还是上一条（甚至已过期）。

最终改法：不再依赖时序，按**措辞**放行。闹钟已经交回原厂，这两句确认必须能听见：

```c
/* libtg_ttsguard.c, tg_start_pre()，在 DROP 之前 */
if (text != NULL && text[0] != '\0' &&
    (strstr(text, "闹钟") != NULL || strstr(text, "提醒") != NULL)) {
    INC(g_native_allowed);
    slog("onTtsStart ALLOW id=%d by=alarm_wording streaming=%u text=\"%s\"",
         id, streaming, text);
    return 1;
}
```

成本与边界：任何含"闹钟/提醒"字样的工厂回答都会被放行。由于闹钟不再由我们接管，这个方向本来就只有工厂在说话，误放行不会造成双答；真正需要守卫的还是"普通对话被工厂抢答"那一类。

新守卫 `c5dc37e7…` 通过同一个 Magisk 模块覆盖，重启后核对：

```
/system/tgz02/lib/libtg_ttsguard_t8156.so  c5dc37e7…
tg_supervisor ×2                           在跑（重新注入完成）
```

验收时 `tgt` 日志应出现 `by=alarm_wording` 而不是 `DROP`。

---

## 22. T9-19f：appbox 自动预装逻辑的解剖与「占位包」方案

### 22.1 它到底在哪判断"要不要装"

`com.alibaba.ailabs.base.util.PreinstallManager`（23 KB，被 `MarketDownloadService.onStartCommand` 调用）：

```java
checkPreinstallAndUpload(list, listener) {
    for (MarketAppItemBean bean : list) {
        if (!isUpload(bean)) {
            if (isPreinstall(bean)) installApp(bean, listener);   // 下载 + 安装
        } else {
            updateApp(bean, listener);                            // 升级
        }
    }
}

isPreinstall(bean) {
    if (!"false".equals(bean.getUninstallable()) || !"apk".equals(bean.getBusinessType()))
        return false;
    return !SystemUtil.isApkAvailable(bean.getPackageName());     // ← 判定点
}
```

两个判定函数（`com.alibaba.ailabs.appbox.utils.SystemUtil`）：

```java
isApkAvailable(pkg):
    ApplicationInfo ai = pm.getApplicationInfo(pkg, 128);
    return ai != null;                 // 只看"包能不能查到"，不校验签名、不看 enabled

isApkShouldUpdate(pkg, verCode):
    return pm.getPackageInfo(pkg,128).versionCode < verCode;   // 只看版本号
```

`installApp()` 最终走 `Market3TaskManager.downloadAndInstall(url, …)` → `PackageInstaller` 会话（`/data/app/vmdl*.tmp`），`installerPackageName` 被写成 `what is use for ?` —— 这就是每次都能看到那个字符串的原因。

### 22.2 为什么前面的办法都不够

| 尝试 | 结果 |
| --- | --- |
| 改 `ApplistDb.db`（删 4 行可下载项） | 服务器 2 分钟内同步回 16 行 |
| hosts 屏蔽 `ailabs.alibabausercontent.com` | 有效，但商店图标和"用户主动安装"一起被废掉 |
| 禁用 `MarketDownloadService` | **无效** —— 重启后 3 分钟，菜谱（13:36:02）和旭慧生活（13:36:47）照样被装回，说明还有别的触发路径（`MarketServerTaskMgr` / `BoxApplication.init`） |

### 22.3 方案：同包名占位包

既然判定是 `getApplicationInfo != null` + `versionCode >= 清单值`，那就给它一个"查得到、版本号最大、什么都干不了"的包：

```xml
<manifest package="com.alibaba.ailabs.genie.cook"
          android:versionCode="2147483647"
          android:versionName="9.9.9-placeholder">
  <uses-sdk android:minSdkVersion="21" android:targetSdkVersion="27" />
  <application android:label="cook" android:hasCode="false" android:allowBackup="false" />
</manifest>
```

- 8 532 B / 个（真包：菜谱 21 MB、旭慧生活 81 MB）；
- 无 activity、无 service、无权限、无代码 → 不出现在任何列表里，不占内存；
- `versionCode = 2147483647` → `isApkShouldUpdate` 永远 false，也不会被"升级"覆盖；
- 清单里的 `appVersionCode`：菜谱 2100300006、旭慧生活 39，都远小于它。

构建：`placeholder/build.ps1`（aapt2 link + apksigner，与主 APK 同一 keystore）。

### 22.4 实测

```
13:39  卸载真菜谱（21 MB）→ 装 cook 占位
13:40  装 ayland 占位
13:40  重启
13:43  （3 分钟后）菜谱仍是 9.9.9-placeholder
13:44  重启
13:48  （4 分半后）
        com.alibaba.ailabs.genie.cook   PLACEHOLDER-OK (9.9.9-placeholder)
        com.anthouse.ayland             PLACEHOLDER-OK (9.9.9-placeholder)
        com.alibaba.ailabs.genie.camera REAL PACKAGE (1.0.93)   ← 保留真包
       DNS: ailabs.alibabausercontent.com → 123.129.244.9（CDN 已解锁）
       free 299 MB
```

对比之前"重启 3 分钟必回"的表现，这次两个包都没有被替换，且商店图标正常、CDN 可达 —— **自动预装被掐掉，用户主动安装不受影响**。

### 22.5 覆盖范围与维护

- 已处理：`com.alibaba.ailabs.genie.cook`、`com.anthouse.ayland`
- 故意保留真包：`com.alibaba.ailabs.genie.camera`（相机，19 MB，用户可能要拍照）、`com.alibaba.ailabs.genie.intermediary`（手势，5 MB）
- 占位 APK 已放在设备 `/data/local/tmp/t9_19f_placeholder/`，仓库在 `placeholder/`
- 若某个占位包被人手动卸载（于是 appbox 又会下载真包），跑一次
  `t9_19f_reapply_placeholders.ps1` 即可恢复（主机侧 `adb uninstall` + `adb install`）。
  设备端 `pm install` / `cmd package install` 在这台 ROM 上都不可用（前者不认子命令，后者要求 `-S` 流式），所以自愈只能从主机做。

---

## 23. T9-19g：桌面程序内置「应用商店」入口（APK 1.9.0）

### 23.1 位置

设置 → 设备，紧跟「应用管理」：

```
应用管理   本机 11 个应用，点一下就能打开
应用商店   原厂精灵商店 · 浏览和安装其他应用
开机自启   …
后台服务   运行中 · pid 1805
```

### 23.2 启动方式（踩过的坑）

`MarketMainActivity.onDataLoaded()` 会取 `getIntent().getData().getQueryParameter("tabName")`，**data 为 null 直接 NPE 崩溃**（第一次用 `am start -n` 试就是这样闪退的）。`market://` scheme 又不能单独匹配 activity（filter 还要求 path），所以必须**显式 component + 带 data**：

```java
Intent it = new Intent(Intent.ACTION_VIEW);
it.setClassName("com.alibaba.ailabs.genie.smartapp",
                "com.alibaba.ailabs.appbox.activity.MarketMainActivity");
it.setData(Uri.parse("market://com.alibaba.ailabs.geniemarket?tabName=x&scene=home&myApp=0"));
it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
startActivity(it);
```

失败时 `toast("打不开应用商店：<ExceptionName>")`，不会崩。

### 23.3 真机验证

```
点击前：mResumedActivity = com.tgz02.voice/.SettingsHomeActivity
点击后：mResumedActivity = com.alibaba.ailabs.genie.smartapp/
                           com.alibaba.ailabs.appbox.activity.MarketMainActivity
```

商店完整呈现（精选推荐 / 影音娱乐 / 儿童 / 教育 / 游戏 / 休闲娱乐 / 生活服务 / 我的应用），图标全部正常 —— 因为 22 章已经把 CDN 解锁，且预装应用由占位包挡住。

APK：**1.9.0 / versionCode 11**（`66dfa471…`）。

---

## 24. T9-20：息屏后自己亮屏并弹出"续听"——工厂的误唤醒

### 24.1 现场证据

`logcat -b events` 与 `PowerManagerService` 的原始记录：

```
14:01:54.749  PowerManagerService: Going to sleep due to power button (uid 1000)
14:01:55.066  screen_toggled: 0                       ← 息屏

14:59:02.726  PowerManagerService: Waking up from sleep (uid=1000 reason=ScreenWakeManager)
14:59:02.747  screen_toggled: 1                       ← 无按键、无闹钟、无 USB，自己亮

14:59:02.924  WindowManager: Relayout Window{genieui-main} oldVis=8 newVis=0
              ← 工厂的语音浮层显示出来（用户看到的"续听"界面）
14:59:03.211  Screen on took 481 ms
```

worker 侧对同一时刻的观察（它只是旁观者）：

```
[aiw] 14:59:02 factory wake (onStartTalk): session=1973125 wake_type=1 listening=1 round=0
[aiw] 14:59:12 factory stop talk (EOU round=0 reason=0): listening=0
[aiw] 14:59:15 dialog closed: reason=deadline reached rounds_done=0
```

判据很硬：**`uid=1000`（工厂）自己调 `PowerManager.wakeUp()`，reason 就是 `ScreenWakeManager`（工厂自己的类）**；`onStartTalk` 也是工厂先发起，worker 记录的是"factory wake"。所以不是我们的 continuous dialog 在续听，也不是按键/定时唤醒。

### 24.2 它为什么会被"唤醒"

三个事实叠在一起：

1. **麦克风常开**：`dumpsys power` 里 `PARTIAL_WAKE_LOCK 'AudioIn' (uid=1041 ws=WorkSource{1000})` 从开机一直持有（2 小时 23 分没释放），`WorkSource` 是 uid 1000 —— 工厂在持续采集；
2. **本地 VAD 常开**（`runtime.xml`）：
   ```
   devicesettingInfo::localASR = true
   devicesettingInfo::localASREnergyThreshold = 60      ← 能量阈值
   devicesettingInfo::localASREnergyJudgeTime = 1750
   nightmodeInfo::dsbEasyWakeup = true
   devicesettingInfo::asrOnGW = true
   ```
   能量阈值 60 偏低，环境里正常的说话、电视声、关门声都能越过它；
3. 一旦越过，工厂就走完整唤醒流程：**亮屏（`ScreenWakeManager`）→ 显示 `genieui-main` → 开麦 10 秒**，没听到内容再 EOU 收场。

这就是"没人唤醒它、它自己弹出续听"的全部机制。

### 24.3 处置

改 `/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml`：

```
devicesettingInfo::localASR               true  → false     ← 关掉常驻本地识别
devicesettingInfo::localASREnergyThreshold 60   → 85        ← 即便再开，阈值也抬高
```

重启后复核（改的值在重启后仍然保持）：

```
<boolean name="devicesettingInfo::localASR" value="false" />
<int name="devicesettingInfo::localASREnergyThreshold" value="85" />
```

`AudioIn` wake lock 在重启后依旧被持有 —— 说明**唤醒词监听还在**（这是"天猫精灵"唤醒必需的），被关掉的只是那层"听到动静就当有人在说话"的本地能量判定。

备份：`/data/local/tmp/t9_20_bak/runtime.xml.orig`。

### 24.4 还要观察的两件事

1. 息屏放几小时，看是否还会有 `reason=ScreenWakeManager` 的唤醒（`logcat -b events | grep screen_toggled` 即可核对）；
2. 正常说"天猫精灵"是否还能唤醒 —— 如果唤醒变迟钝，说明 `localASR` 同时承担了唤醒前的能量门控，那就把它改回 `true`、只保留阈值 85。

### 24.5 为什么不能直接禁止亮屏

`ScreenWakeManager` 是工厂的 Java 类，调的是 `PowerManager.wakeUp(reason="ScreenWakeManager")`。我们的 hook 在 native 层（JNI 表），拦不到这个 Java → Binder 调用；系统侧也没有"只允许某应用亮屏/不许亮屏"的开关。所以只能从**触发源**下手：减少误触发（本次做法），或者在息屏时主动让工厂退出会话。












