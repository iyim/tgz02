# T9-17 åŸå‚é—¹é’Ÿå®ç°åˆ†æï¼šä¸ºä»€ä¹ˆå“é“ƒæ˜¯ã€Œæ­Œæ›²ã€è€Œä¸æ˜¯ç³»ç»Ÿé“ƒå£°

- ç›®æ ‡ï¼š`com.alibaba.ailabs.genie.smartapp` **8.7.1.18**ï¼ˆversionCode 2102087118ï¼ŒtargetSdk 27ï¼‰
- è®¾å¤‡ï¼šAILABS_S1L / Android 8.1 / armeabi-v7a
- äº§ç‰©ï¼š`/system/app/smartapp/smartapp.apk` 25,336,386 Bï¼Œsha256 `1506719bâ€¦da00`
- åˆ†ææ—¥æœŸï¼š2026-11-27

## 0. ç»“è®ºå…ˆè¯´

åŸå‚çš„ã€Œé—¹é’Ÿã€åœ¨è®¾è®¡ä¸Š**æ ¹æœ¬æ²¡æœ‰é“ƒå£°è¿™ä¸ªæ¦‚å¿µï¼Œå®ƒæ˜¯ã€Œé—¹é’ŸéŸ³ä¹ + TTS è¯­éŸ³ã€çš„äº‘ç«¯å†…å®¹**ï¼š

1. å»ºé—¹é’Ÿæ—¶é€‰çš„æ˜¯**æ›²åº“é‡Œçš„æ­Œ**ï¼ˆ`MusicDTO{musicId, musicName, musicType, musicTypeName, source}`ï¼‰ï¼Œ
   é—¹é’Ÿæ•°æ®èµ° MTOP äº‘ç«¯æ¥å£ï¼ˆ`CreateAlarmV2 / UpdateAlarmV2 / ListAlarmV2 / DeleteAlarmV2`ï¼‰ã€‚
2. åˆ°ç‚¹å“é“ƒæ—¶ï¼Œäº‘ç«¯ä¸‹å‘ `url`ï¼ˆæ­Œæ›²éŸ³é¢‘æµï¼‰ã€`ttsUrl`ï¼ˆè¯´è¯è¯­éŸ³ï¼‰ã€`volume`ã€`volumeGradual`ã€
   `ignoreDefault` ç­‰å­—æ®µï¼ˆ`AlarmInfo` / `AlarmRingInfo`ï¼‰ã€‚
3. å®¢æˆ·ç«¯ç”¨ **AGMC åª’ä½“æ’­æ”¾å™¨**ï¼ˆ`IAgmcPlayer`ï¼Œå°±æ˜¯æ”¾éŸ³ä¹ç”¨çš„é‚£ä¸ªæ’­æ”¾å™¨ï¼‰æ’­è¿™ä¸ª URLï¼Œ
   TTS ä¸æ­Œæ›²äº¤æ›¿æ’­ï¼›éŸ³é‡èµ° `STREAM_ALARM`ï¼Œå¹¶å¯ã€Œè‡ªåŠ¨å˜å¤§éŸ³é‡ã€ï¼ˆ`mAutoBigVolumeRunnable`ï¼‰ã€‚
4. **æ²¡æœ‰ä½¿ç”¨ç³»ç»Ÿé“ƒå£° API**ï¼šæ•´ä¸ª dex é‡Œ `RingtoneManager` å‡ºç° **0 æ¬¡**ï¼Œä¹Ÿæ²¡æœ‰ `Landroid/media/Ringtone;`ã€‚
5. å…œåº•æ‰æ˜¯æœ¬åœ°èµ„æº `res/raw/default_ring.mp3`ï¼ˆ30.5 ç§’ã€44.1kHz/256kbps çš„éŸ³ä¹ç‰‡æ®µï¼Œä¸æ˜¯ã€Œå®å®ã€ï¼‰ï¼Œ
   ç”± `MediaManager.playDefaultLocalRing()` æ’­æ”¾ï¼›`ignoreDefault` ä¸ºçœŸæ—¶è¿å…œåº•éƒ½ä¸æ”¾ã€‚

æ‰€ä»¥æˆ‘ä»¬å¬åˆ°ã€Œæ­Œæ›²ã€ä¸æ˜¯é…ç½®é”™äº†ï¼Œè€Œæ˜¯**äº§å“è®¾è®¡å°±æ˜¯æ”¾æ­Œ**ã€‚

## 1. åˆ†ææ–¹æ³•ï¼ˆä¸ºä»€ä¹ˆè¦å…ˆå¤„ç† vdexï¼‰

`smartapp.apk` è¢«æŠ½èµ°äº† `classes*.dex`ï¼ˆAPK å†… 3432 ä¸ªæ¡ç›®é‡Œ**æ²¡æœ‰ä»»ä½• .dex/.so**ï¼‰ï¼Œ
ä»£ç åœ¨è®¾å¤‡ä¸Šä»¥ AOT äº§ç‰©å­˜åœ¨ï¼š

```
/system/app/smartapp/oat/arm/smartapp.odex   569,824 B
/system/app/smartapp/oat/arm/smartapp.vdex  28,902,724 B
```

å¤„ç†æµç¨‹ï¼š

1. `adb pull` ä¸Šè¿° vdex/odex/APKï¼›
2. è§£æ vdex å¤´ï¼ˆ`magic=vdex`ã€`version=010`ã€`number_of_dex_files=4`ã€`dex_size=26,771,488`ï¼‰ï¼Œ
   åœ¨ dex åŒºé—´æŒ‰ `dex\n035` é­”æ•° + å¤´éƒ¨ `file_size` åˆ‡å‡º 3 ä¸ªå®Œæ•´ dexï¼ˆ9,726,492 / 5,045,328 / 6,182,104 Bï¼Œ
   åˆ†åˆ« 8,218 / 4,338 / 5,308 ä¸ª class_defï¼‰ï¼›
3. ä¿®æ­£è¢« vdex æ”¹å†™çš„ checksumï¼ˆadler32ï¼‰ä¸ SHA-1 ç­¾åï¼Œå¦åˆ™ jadx ç›´æ¥æ‹’æ”¶
   ï¼ˆ`Bad dex file checksum`ï¼‰ï¼›
4. JADX 1.5.6 CLI åç¼–è¯‘ï¼šå•ç±»æ¨¡å¼çœ‹å…³é”®ç±»ï¼Œæ•´åŒ…æ¨¡å¼ï¼ˆ`-r -j 8`ï¼‰å¯¼å‡º 8,378 ä¸ª .java ç”¨äºäº¤å‰æ£€ç´¢ã€‚

> é™åˆ¶ï¼švdex é‡Œçš„ dex æ˜¯ **quickened** çš„ï¼ˆå« ART å†…éƒ¨æ›¿æ¢è¿‡çš„æŒ‡ä»¤ï¼‰ï¼Œ
> å«è¢«æ›¿æ¢æŒ‡ä»¤çš„æ–¹æ³• jadx åªèƒ½è¾“å‡º `UNKNOWN(0x10E9)` ä¹‹ç±»å ä½ï¼Œæ— æ³•è¿˜åŸæ–¹æ³•ä½“ã€‚
> å› æ­¤ä¸‹æ–‡çš„ç»“è®ºåˆ†ä¸¤ç±»ï¼š**å­—æ®µ/å¸¸é‡/æ–¹æ³•ç­¾å/å­—ç¬¦ä¸² = ç›´æ¥è§‚æµ‹**ï¼›
> ã€Œè°è°ƒç”¨è°ã€åœ¨ä¸ªåˆ«è·¯å¾„ä¸Šæ˜¯ **ç»“æ„æ¨æ–­**ï¼ˆå·²æ ‡æ³¨ï¼‰ã€‚

## 2. å…³é”®è¯æ®ï¼ˆç›´æ¥è§‚æµ‹ï¼‰

### 2.1 é—¹é’Ÿæ•°æ®æ¨¡å‹ï¼šé“ƒå£°å°±æ˜¯ã€ŒéŸ³ä¹ã€

`com.alibaba.genie.alarm.bean.AlarmBean$MusicDTO`ï¼ˆ`AlarmBean.java:267`ï¼‰ï¼š

```java
private String musicId;
private String musicName;
private String musicType;
private String musicTypeName;
private String source;
```

`com.alibaba.ailabs.basedomain.model.alarm.AlarmInfo`ï¼ˆå­—æ®µè¡¨ï¼‰ï¼š

```
String url;              // å“é“ƒéŸ³é¢‘ï¼ˆæ­Œæ›²ï¼‰åœ°å€
String ttsUrl;           // å“é“ƒæ—¶è¯´çš„è¯ï¼ˆTTS éŸ³é¢‘ï¼‰
Integer volume;
Integer volumeGradual;   // éŸ³é‡æ¸å¼º
int ignoreDefault;       // å¿½ç•¥æœ¬åœ°é»˜è®¤é“ƒå£°
Integer repeat; String cron; Long startTime; Long endTime; String bizType;
// å†…åµŒ AlarmItem: int musicId; String musicName; int musicType; String musicCategory;
```

`com.alibaba.ailabs.basedomain.model.alarm.AlarmRingInfo`ï¼š

```java
String alarmId;
String audioUrl;   // æ­Œ
String ttsUrl;     // è¯´è¯
int volume;
```

â†’ äº‘ç«¯ã€Œå“é“ƒæŒ‡ä»¤ã€é‡Œå¸¦çš„æ˜¯**ä¸¤ä¸ª URLï¼ˆæ­Œ + TTSï¼‰**ï¼Œæ²¡æœ‰ä¸€ä¸ªã€Œé“ƒå£° IDã€ã€‚

### 2.2 æ’­æ”¾å¼•æ“ï¼šAGMC åª’ä½“æ’­æ”¾å™¨ï¼ˆä¸æ˜¯ RingtoneManagerï¼‰

`com.alibaba.ailabs.basedomain.common.MediaManager`ï¼ˆ1615 è¡Œï¼Œ`basedomain/common/MediaManager.java`ï¼‰ï¼š

```java
private static final int NET_RING_PLAY_SESSION_ID   = 10098;
private static final int LOCAL_RING_PLAY_SESSION_ID = 10099;
private static final int TTS_PLAY_SESSION_ID        = 10096;
private static final int MIN_VOLUME = 38, MAX_VOLUME = 59;
private static final int TIME_NO_RESUME = 300000;          // 5 åˆ†é’Ÿåä¸å†è‡ªåŠ¨æ¢å¤

private IAgmcPlayer mAgmcPlayer;                            // ç²¾çµåª’ä½“æ’­æ”¾å™¨
private AudioManager mAudioManager;
private RingPlayTask mRingPlayTask;
private Runnable mAutoBigVolumeRunnable;                    // è‡ªåŠ¨æŠŠéŸ³é‡æ¨å¤§

class RingPlayTask { String alarmId; String url; String ttsUrl; int volume; boolean ignoreDefault; }

public  void playAlarm(String /*alarmId*/, String /*url*/, String /*ttsUrl*/, int /*volume*/, boolean /*ignoreDefault*/);
private void playRing();
private void playMusic(String url);
private void playDefaultLocalRing();                        // å…œåº•ï¼šæœ¬åœ°èµ„æº
private void playOtherDomainTts(String, int);
private boolean needPlayOtherTts(String, String);
public  void stopRing(String, String);
public  void setVolume(int);  private void volumeAdjust(boolean);  private void stopAutoBigVolume();
public  boolean isRing();
```

é…å¥—çš„ `AlarmHandler`ï¼ˆ`basedomain/ui/AlarmHandler.java`ï¼‰æ¶ˆæ¯ç ï¼š

```java
MSG_ALARM_RING = 40098;  MSG_STOP_ALARM_RING = 30000;  MSG_PLAY_TTS = 10000;
```

### 2.3 ç³»ç»Ÿé“ƒå£° API çš„ç¼ºå¸­ï¼ˆdex å­—ç¬¦ä¸²ç»Ÿè®¡ï¼‰

| ç¬¦å· | classes.dex | classes2.dex | classes3.dex |
| --- | --- | --- | --- |
| `RingtoneManager` | 0 | **0** | 0 |
| `Landroid/media/Ringtone;` | 0 | **0** | 0 |
| `TYPE_ALARM` | 8 | 1 | 0 |
| `STREAM_ALARM` | 0 | 1 | 0 |
| `setDataSource` | 4 | 1 | 1 |
| `Landroid/media/MediaPlayer;` | 0 | 1 | 1 |

â†’ ç”¨ç³»ç»Ÿã€Œé—¹é’ŸéŸ³é‡æµã€å’Œ `TYPE_ALARM`ï¼ˆå–å‚æ•°/è°ƒéŸ³é‡ï¼‰ï¼Œä½†**ä»ä¸å–ç³»ç»Ÿé“ƒå£°å¯¹è±¡**ï¼›
æ’­æ”¾ä¸€å¾‹ç”¨ `MediaPlayer` / AGMC + URL æˆ–æ–‡ä»¶è·¯å¾„ã€‚

### 2.4 æœ¬åœ°å…œåº•é“ƒå£°ï¼šä¹Ÿæ˜¯ä¸€æ®µéŸ³ä¹

`res/raw/default_ring.mp3`ï¼ˆ1,954,294 Bï¼‰ï¼š

- MPEG-1 Layer IIIï¼Œ44.1 kHzï¼Œ256 kbpsï¼Œ**30.5 ç§’**ï¼Œ2333 å¸§
- ID3v2.2 å¤´å­˜åœ¨ï¼Œä½†åªæœ‰ TSS/COM ç±»æŠ€æœ¯å¸§ï¼Œæ²¡æœ‰æ­Œå/æ­Œæ‰‹

å¦æœ‰ `res/raw/sound1.wav` / `sound2.wav`ï¼ˆå„ ~496 KBï¼Œæç¤ºéŸ³ï¼‰ã€‚

å­—èŠ‚ç é‡Œèƒ½çœ‹åˆ°èµ„æº id ç«‹å³æ•° `0x7f0d0003`ï¼ˆ= `R.raw.default_ring`ï¼‰ï¼š
classes2.dex å‘½ä¸­ 1 æ¬¡ã€classes3.dex å‘½ä¸­ 2 æ¬¡ â†’ ç¡®å®æœ‰ä»£ç ç›´æ¥å¼•ç”¨è¿™ä¸ª mp3ã€‚

### 2.5 æ›²åº“é›†æˆçš„ç—•è¿¹ï¼ˆdex ä¸­æ–‡å­—ç¬¦ä¸²ï¼‰

```
æˆ‘çš„ç½‘æ˜“äº‘éŸ³ä¹å¯¼å…¥æ­Œå• / æˆ‘çš„ç½‘æ˜“äº‘éŸ³ä¹è‡ªå»ºæ­Œå•
æˆ‘çš„é…·ç‹—éŸ³ä¹å¯¼å…¥æ­Œå•   / æˆ‘çš„é…·ç‹—éŸ³ä¹è‡ªå»ºæ­Œå•
æˆ‘çš„é…·æˆ‘éŸ³ä¹å¯¼å…¥æ­Œå•   / æˆ‘çš„é…·æˆ‘éŸ³ä¹è‡ªå»ºæ­Œå•
éŸ³ä¹çƒ­æ¦œ / çƒ­é—¨éŸ³ä¹ / éŸ³ä¹ç”µå° / éŸ³ä¹æ”¶è— / ç²¾çµéŸ³ä¹ / å’ªå’•éŸ³ä¹
å„¿æ­Œå¤§åˆé›† / çˆ±ä¹å¥‡è‹±è¯­å„¿æ­Œ / ä¸»å”±çš„ç»å…¸è‹±è¯­å„¿æ­Œä¸“è¾‘
è¯•å¬ / æœªçŸ¥æ­Œå / æœªçŸ¥æ­Œæ‰‹ / æ­Œå•åŠ è½½è¶…æ—¶
é—¹é’Ÿå“äº† / é—¹é’Ÿæ’­æ”¾é”™è¯¯ / é—¹é’Ÿé€šçŸ¥ / é—¹é’Ÿåˆ é™¤ / è¯·é€‰æ‹©é—¹é’Ÿæ—¶é—´
```

â†’ é€‰é“ƒå£°çš„åœ°æ–¹å°±æ˜¯ã€Œä»è¿™äº›æ­Œå•/æ›²åº“é‡ŒæŒ‘ä¸€é¦–ã€ï¼Œ`é—¹é’Ÿæ’­æ”¾é”™è¯¯` æ˜¯æ’­æ”¾å¤±è´¥æ—¶çš„æç¤ºæ–‡æ¡ˆã€‚

### 2.6 å“é“ƒ UI ä¸äº¤äº’ï¼ˆé¡ºå¸¦çœ‹åˆ°çš„äº§å“ç»†èŠ‚ï¼‰

- `AlarmRingDialog extends Dialog`ï¼ˆ**ä¸æ˜¯ Activity**ï¼‰ï¼š`acquireWakeLock()` / `releaseWakeLock()`ã€
  `getCurrentVolume()`ã€`setAnimAndBg()`ï¼ˆèƒŒæ™¯å›¾ `alarm_ring_bg_custom`ã€`alarm_ring_bg_child`ï¼‰ã€
  `sendUnmuteKey(...)`ï¼ˆå“é“ƒæ—¶å¼ºåˆ¶è§£é™¤é™éŸ³ï¼‰ã€`MyOnCommandListener`ï¼ˆå“é“ƒä¸­æ¥è¯­éŸ³æŒ‡ä»¤ï¼‰ã€
  `HomeWatcherReceiver`ï¼ˆç›‘å¬ Home é”®æŠŠ Dialog é‡æ–°å‘¼å‡ºï¼‰ã€`updateTime()`ã€‚
- `OnePixelActivity`ï¼š1 åƒç´ é€æ˜ Activityï¼Œç”¨äºé”å±/åå°æŠŠè¿›ç¨‹å’Œç•Œé¢æ‹‰èµ·æ¥ã€‚
- åŸ‹ç‚¹ï¼š`7_play_ring_begin` / `9_play_ring_end` / `8_show_alarm_ring_ui`ï¼ˆ`AlarmUt`ï¼‰ã€‚
- `AlarmDismissReceiver` ç›‘å¬ `com.android.deskclock.ALARM_DISMISS`ï¼ˆå…¼å®¹ AOSP æ—¶é’Ÿçš„å…³é—­å¹¿æ’­ï¼‰ã€‚

## 3. å®Œæ•´è°ƒç”¨é“¾ï¼ˆå«æ¨æ–­æ ‡æ³¨ï¼‰

```
è¯­éŸ³ã€Œ7ç‚¹å«æˆ‘èµ·åºŠã€
  â””â”€ äº‘ç«¯ NLU/æŠ€èƒ½ï¼ˆé—¹é’ŸåŸŸï¼‰â†’ MTOP CreateAlarmV2ï¼ˆå« MusicDTO é€‰æ­Œï¼‰
       â””â”€ å®¢æˆ·ç«¯ AlarmDatabaseHelper è½åº“ + AlarmClockManager æ³¨å†Œé—¹é’Ÿ
åˆ°ç‚¹
  â””â”€ AlarmReceiver / AlarmClockManager.handleAlarmRing(MSG_ALARM_RING=40098)
       â””â”€ [æ¨æ–­] MediaManager.playAlarm(alarmId, url, ttsUrl, volume, ignoreDefault)
            â”œâ”€ æœ‰ url ä¸” ignoreDefault æœªç½®ä½ â†’ playMusic(url)ï¼ˆAGMC æ’­ç½‘ç»œéŸ³ä¹ï¼‰
            â”œâ”€ æ—  url / æ’­æ”¾å¤±è´¥              â†’ playDefaultLocalRing()ï¼ˆR.raw.default_ring.mp3ï¼‰
            â””â”€ needPlayOtherTts â†’ playOtherDomainTts(ttsUrl)ï¼ˆæ’æ’­ TTSï¼‰
       â””â”€ AlarmRingDialog å¼¹å‡ºï¼ˆwake lock + å–æ¶ˆé™éŸ³ + èƒŒæ™¯åŠ¨ç”»ï¼‰+ showAlarmRingUI åŸ‹ç‚¹
åœæ­¢ï¼ˆè¯´ã€Œå…³é—­é—¹é’Ÿã€/ç‚¹æŒ‰é’® / 5 åˆ†é’Ÿï¼‰
  â””â”€ stopRing(alarmId, reason) â†’ 9_play_ring_end åŸ‹ç‚¹ â†’ Dialog dismiss
```

æ ‡æ³¨ä¸ºã€Œæ¨æ–­ã€çš„é‚£ä¸€æ­¥ï¼š`playAlarm(...)` çš„è°ƒç”¨ç‚¹ä½äº quickened æ–¹æ³•å†…ï¼Œjadx æ— æ³•è¿˜åŸï¼›
ä½†å®ƒçš„å‚æ•°å½¢çŠ¶ `(alarmId, url, ttsUrl, volume, ignoreDefault)` ä¸ `AlarmInfo` å­—æ®µã€
`RingPlayTask` å­—æ®µ**é€ä¸€å¯¹å¾—ä¸Š**ï¼Œä¸” `AlarmRingDialog` å†…ç¡®å®å‡ºç° `MediaManager` ç›¸å…³è°ƒç”¨ã€‚

## 4. è¿™ä»¶äº‹å¯¹æˆ‘ä»¬ï¼ˆTG-Z02 è‡ªæœ‰é—¹é’Ÿï¼‰çš„å½±å“

| ç»´åº¦ | åŸå‚ | æˆ‘ä»¬ç°åœ¨ï¼ˆT9-16ï¼‰ |
| --- | --- | --- |
| é“ƒå£°æ¥æº | äº‘ç«¯æ›²åº“æ­Œæ›² URL | æœ¬æœºé“ƒå£°æ–‡ä»¶ï¼ˆç³»ç»Ÿé“ƒå£° / `/sdcard/Alarms`ï¼‰ |
| æ’­æ”¾å™¨ | AGMCï¼ˆåª’ä½“æ’­æ”¾å™¨ï¼‰+ `STREAM_ALARM` | `MediaPlayer` + `STREAM_ALARM` |
| è¯´è¯ | æœ‰ï¼ˆ`ttsUrl`ï¼Œä¸æ­Œäº¤æ›¿ï¼‰ | æ— ï¼ˆåªæœ‰ TTS ç¡®è®¤ã€Œè®°å¥½äº†ã€ï¼‰ |
| å…œåº• | `res/raw/default_ring.mp3`ï¼ˆ30 ç§’éŸ³ä¹ï¼‰ | ç³»ç»Ÿé»˜è®¤ â†’ `Alarm_Beep_03.ogg` â†’ é€šçŸ¥éŸ³ |
| éŸ³é‡ | 38~59 + è‡ªåŠ¨æ¸å¼º | èµ·æ’­å‰è‡³å°‘ 40% |
| ç¦»çº¿å¯ç”¨ | äº‘ç«¯ URL æ‹¿ä¸åˆ°å°±åªå‰©å…œåº• | å®Œå…¨ç¦»çº¿å¯ç”¨ |

ç»“è®ºï¼š**æˆ‘ä»¬ä¸éœ€è¦ç…§æŠ„äº‘ç«¯é“¾è·¯**ï¼Œä½†å¦‚æœè¦è´´è¿‘åŸå‚ä½“æ„Ÿï¼Œæœ€åˆ’ç®—çš„ä¸¤ä»¶äº‹æ˜¯ï¼š

1. **å“é“ƒæ—¶è¯´è¯**ï¼šç”¨å·²æœ‰çš„ TTSï¼ˆåŸå‚ TTS é“¾è·¯å¯ç”¨ï¼‰åœ¨é“ƒå£°é—´éš™æ’­ä¸€å¥ã€Œä¸ƒç‚¹å•¦ï¼Œè¯¥èµ·åºŠäº†ã€ï¼›
2. **éŸ³é‡æ¸å¼º**ï¼šèµ·æ’­ 30% â†’ 15 ç§’å†…åˆ° 70%ï¼Œæ¯”åŸå‚å›ºå®šçš„ 38~59 æ›´è´´è¿‘çœŸäººé—¹é’Ÿã€‚

è‡ªå®šä¹‰é“ƒå£°è¿™å—æˆ‘ä»¬å·²ç»æ¯”åŸå‚æ›´ç›´æ¥ï¼šæŠŠäººå£°/æ­Œæ›²ä¸¢è¿› `/sdcard/Alarms` å³å¯ï¼Œä¸éœ€è¦è¿äº‘æ›²åº“ã€‚

---

## 5. ÊµÏÖ£¨T9-17 R1£©£º°ÑÔ­³§µÄ"ÏìÁåËµ»° + ÒôÁ¿½¥Ç¿"°áµ½ÎÒÃÇ×Ô¼ºµÄÄÖÖÓ

×öÁËÁ½¼şÊÂ£¬¶¼ÂäÔÚ AlarmRingingService£¨²»¶¯ÏìÁåÒ³²¼¾Ö£©£º

### 5.1 ÒôÁ¿½¥Ç¿

- Æğ²¥ 30% ¡ú 15 ÃëÄÚ 30 ²½ÍÆµ½ 70%£¨RAMP_MS=15000 / RAMP_STEP_MS=500£©£»
- **²»»á°ÑÓÃ»§ÒôÁ¿µ÷Ğ¡**£ºÈôÓÃ»§Ô­±¾¾Í >70%£¬Ä¿±êÖµÈ¡ÓÃ»§µ±Ç°Öµ£»
- ÏìÁå½áÊø£¨¹Ø±Õ / Ì°Ë¯ / 5 ·ÖÖÓ×Ô¶¯Í££©°Ñ STREAM_ALARM »Ö¸´µ½ÏìÁåÇ°µÄÔ­Öµ£»
- Õæ»úÊµ²â£ºÔ­Öµ 6 ¡ú +5s 50 ¡ú +16s 70 ¡ú µã¡¸¹Ø±Õ¡¹ºó»Øµ½ 6¡£

### 5.2 ÏìÁåËµ»°£¨±¾»úÃ»ÓĞÏµÍ³ TTS£¬ÓÃÔ­³§ TTS µÄ provider Èë¿Ú£©

- ĞÂÔö FactoryTts£ºcontent://com.alibaba.ailabs.genie.assistant.provider/GenieApi
  query(selection = {"method":4,"data":{"tts":"<ÎÄ±¾>", "pkg":"com.tgz02.voice", "ignoreMute":true, ...}})£»
- »°Êõ°´Ê±¼äÉú³É¡¢º¬¾ßÌåÊ±¼ä¡¢²»Äî±êÇ©£ºÆßµãÀ²£¬¸ÃÆğ´²ÁË / Æßµã°ëÀ²£¬¸ÃÆğ´²ÁË /
  Ê®¾ÅµãÎåÊ®Èı·ÖÀ²£¬¸ÃÆğ´²ÁË£¨cnNum() ´¦Àí 0~59 µÄÖĞÎÄÊı×Ö£©£»
- ½Ú×à£ºÆğ²¥ºó 1.5 ÃëËµµÚÒ»¾ä£¬Ö®ºóÃ¿ 90 ÃëÒ»´Î£¬×î¶à 3 ´Î£»
- Ëµ»°Ê±°ÑÁåÉùÒôÁ¿Ñ¹µ½ 12%£¨²¥·ÅÆ÷¼¶£©£¬°´¡¸0.8s + 230ms/×Ö¡¹¹ÀÊ±ºó»Ö¸´ 100%£»
- Ê§°ÜÖ»¼ÇÈÕÖ¾£¬¾ø²»Ó°ÏìÏìÁå¡£
- ¿Ó£º**²»ÄÜ¶Á·µ»ØµÄ cursor**¡£Ô­³§ provider ·µ»Ø¿ç½ø³Ì cursor£¬Ò» moveToFirst()
  ¾ÍÅ× NullPointerException: Attempt to get length of null array£¨BulkCursorProxy.getWindow£©£¬
  ¶ø²¥±¨¸±×÷ÓÃÔÚ query() ·µ»ØÇ°¾Í·¢ÉúÁË ¡ª¡ª Ö» close() ¼´¿É¡£

### 5.3 Õæ»úÖ¤¾İ

evidence/t9-17/ring_enhance.log¡¢evidence/t9-17/ring_ramp_tts.png£¨19:52 ÕæÄÖÖÓÈ«ÆÁÏìÁå£©¡£

`
T916RING I ring started
T916RING I volume ramp 30 -> 70 over 15000ms
T916RING I speak#1: Ê®¾ÅµãÎåÊ®¶ş·ÖÀ²£¬¸ÃÆğ´²ÁË
T916TTS  I speak queued in 9ms len=13 cursor=true
TtsManager D onTtsStart: sessionId = 5246724, isStreaming = 1
TtsManager D onTtsEnd: sessionId = 5246724
`

¹¹½¨ sha256 3b241090¡­£¨1.6.0 / vc8£©¡£Éè±¸²à²âÊÔÄÖÖÓÒÑÇå¿Õ£¬ÄÖÖÓÒôÁ¿»Ö¸´Îª²âÊÔÇ°µÄ 6¡£

---

## 6. ÊµÏÖ£¨T9-17 R2£©£ºÄÖÖÓÄ¿µÄÓïÊ¶±ğ + ÏìÁå»°Êõ¸úËæÄ¿µÄ

ÓÃ»§·´À¡Á½¼şÊÂ£º
1. ¡¸ÄÖÖÓ²»Ò»¶¨ÊÇÆğ´²£¬Äã²»ÄÜÃ¿´Î¶¼ËµÆğ´²¡¹¡ª¡ªÏìÁå»°Êõ/½çÃæĞ´ËÀÁË¡¸Æğ´²¡¹£»
2. ¡¸ÎÒËµ 5 ·ÖÖÓºóÌáĞÑÎÒÆğ´²£¬ÄÖÖÓĞÅÏ¢ÀïÃ»ÓĞÊ¶±ğµ½Æğ´²¡¹¡ª¡ªlabel Ò»Ö±ÊÇĞ´ËÀµÄ¡¸²¼¶¡ÄÖÖÓ¡¹¡£

### 6.1 worker£º´Ó»°ÊõÀï³é³öÄ¿µÄÓï£¨larm_label()£©

- ÌáÊ¾´Ê±í£¨´ÓºóÍùÇ°È¡×î¿¿ºóÃüÖĞµÄÄÇ¸ö£©£º¼ÇµÃÌáĞÑÎÒ / ÌáĞÑÒ»ÏÂÎÒ / µ½Ê±ºò¸æËßÎÒ / ÌáĞÑÎÒ / ½ĞĞÑÎÒ / ½ĞÎÒ / º°ÎÒ / ÈÃÎÒ / ¼ÇµÃ£»
- È¡ÌáÊ¾´ÊÖ®ºóµÄÔ­ÎÄ£¬È¥µôÇ°µ¼¶¯´Ê£¨È¥ / Ò»ÏÂ / ¸Ï½ô / ¿ªÊ¼£©¡¢ÔÚµÚÒ»¸ö±êµã´¦½Ø¶Ï¡¢
  Ñ­»·È¥µôÎ²²¿ÓïÆø´Ê£¨ÁË / °É / Ñ½ / °¡ / Å¶ / ÄØ / Âï / ¹ş / ßÂ / µÄÊ±ºò / µÄÊ±¼ä£©£»
- °´ UTF-8 ±ß½ç½Ø¶Ï£¨T8_SK_ARG_MAX=48 ×Ö½Ú£©£¬ÌŞ³ı " ºÍ \ ±£Ö¤ JSON ºÏ·¨£»
- ³é²»µ½ ¡ú label = ÄÖÖÓ£¨²»ÔÙĞ´ËÀ¡¸²¼¶¡ÄÖÖÓ¡¹£©¡£

### 6.2 worker£ºÖĞÎÄÊ±¼äÁ½¸öÕæ bug£¨Í¬Ò»ÂÖ»Ø¹éÊ±±©Â¶£©

| ÊäÈë | ĞŞ¸´Ç° | ¸ùÒò | ĞŞ¸´ºó |
| --- | --- | --- | --- |
| Îåµã**ÎåÊ®** | 5:05 | ·ÖÖÓ½âÎöÖ»³Ôµ½¡¸Îå¡¹£¬Ê® Âäµ½ m==1 ·ÖÖ§Íâ | **5:50** |
| **Ê®Ò»**µã¶şÊ® | 1:20 | ¡¸µã¡¹Ç°·´ÏòÉ¨ÃèÏÈ×²µ½¡¸Ò»¡¹¾Íµ± 1 µãÊÕ¹¤ | **11:20** |
| **¶şÊ®Èı**µã | 13:00 | ·´ÏòÖ»É¨ 2 ¸ö×Ö£¬¶şÊ® ±»½Ø³É Ê®Èı | **23:00** |

ĞÂÔö cn_minute()£¨ÁãX / X / Ê®X / XÊ® / XÊ®Y£©£¬ÖØĞ´ cn_hour()£¨Ê®/XÊ®/XÊ®Y£©£¬
·´ÏòÉ¨Ãè¸ÄÎª¡°ÏÈÊÔ 3 ×Ö¡¢ÔÙ 2 ×Ö¡¢×îºó 1 ×Ö¡±¡£

### 6.3 worker ĞÂÔöÀëÏß×Ô²âÈë¿Ú

i_worker --self-test-alarm "5·ÖÖÓºóÌáĞÑÎÒÆğ´²" ¡ú ´òÓ¡ code / speech / Ğ´³öµÄ JSON£¬
²»Æô¶¯Ö÷Ñ­»·¡¢²»ÅöÉè±¸¡£11 ÌõÓÃÀı¼û evidence/t9-17/alarm_label_test.log¡£

### 6.4 App£ºÏìÁå»°ÊõÓëÌáÊ¾Óï¸úËæ label

- AlarmRingingService.ringText()£º<Ê±¼ä>À²£¬<label>À²£»label Îª¿Õ/ÄÖÖÓ/²¼¶¡ÄÖÖÓ Ê± £¬ÄÖÖÓÏìÀ²£»
  label ´Ó DataService.alarmGet(curAlarmId) È¡£¨onStartCommand ¼ÇÂ¼ alarm id£©¡£
- AlarmRingingActivity£ºÌáÊ¾Óï ¸Ã<label>À²£¬¿Õ±êÇ©»ØÂä ÄÖÖÓÏìÀ²£¬²¼¶¡½ĞÄãÀ²¡£

Õæ»úÖ¤¾İ£º20:24¡¸³ÔÒ©¡¹ÄÖÖÓ ¡ú ½çÃæ±êÌâ ³ÔÒ©¡¢ÌáÊ¾ ¸Ã³ÔÒ©À²¡¢ÓïÒô ¶şÊ®µã¶şÊ®ËÄ·ÖÀ²£¬³ÔÒ©À²£¬
Ô­³§ TTS onTtsStart/onTtsEnd Õı³££¨¼û evidence/t9-17/alarm_label_test.log + ing_label_yaochi.png£©¡£

²¿Êğ£ºworker /system/tgz02/bin/ai_worker sha256 425b122¡­£¨±¸·İÔÚ /data/local/tmp/t9_17_bak/£©£¬
APK 21b9d5b2¡­¡£×¢Òâ£º/system Ö»¶Á£¬Ìæ»»¶ş½øÖÆÇ°Òª mount -o rw,remount /system£¬
ÇÒÔËĞĞÖĞµÄ¶ş½øÖÆ»á Text file busy ¡ª¡ª ±ØĞëÏÈ kill -INT <pid> ÔÙ cp£¬×îºóÓÃ
/data/local/tmp/t5_bridge/run_ai_worker.sh start À­Æğ¡£
