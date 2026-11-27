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
