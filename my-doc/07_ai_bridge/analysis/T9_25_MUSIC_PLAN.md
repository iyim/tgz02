# T9-25 音乐服务落地设计：kugou-web → TG-Z02（桌面 UI + 语音控制）

> 调研日期：2026-11-28 20:00–20:10　设备：`192.168.1.9:5555`（AILABS_S1L / Android 8.1 / armeabi-v7a / 1024×600 mdpi）
> 对象服务：`D:\Code\py2\kugou-web`（酷狗概念版协议纯 Python 实现，零第三方依赖）
> 本文所有"实测"数字都来自本机真机日志，日志原文见 §2 与 `evidence/t9-25/`。

---

## 0. 结论先说

1. **设备能直接播酷狗直链**：`MediaPlayer` + CDN 的 `.ogg` 地址，`206` 支持 Range，位置每秒推进 1002–1006 ms，40 秒零卡顿。**不需要 Python 反代音频**。
2. **服务不需要整体搬上设备**。真正需要"在设备上"的只有两件事：*协议签名取直链* 和 *播放*。前者是 `sign/crypto/aes/client` 共 ~1100 行纯计算，后者是 MediaPlayer。
3. **推荐路线：先"局域网后端 + 原生客户端"（1–2 天出可用产品），再把这 1100 行移植成 Java 去掉 PC 依赖**。两期共用同一套 UI / 服务 / 语音层，切换只是一个 `MusicBackend` 实现类的替换。
4. 语音控制不要另起一套唤醒链路：**复用现有 `hook → worker → events/<seq>.json` 总线**，worker 只多吐一个 `action` 字段，App 已经在轮询这个文件。
5. 路上有 3 个必须提前设计的坑（全部实测确认）：工厂 TTS 把 `STREAM_MUSIC` 腰斩且不还原；设备无 AEC；`IR_MEDIA` 当前是"放行给原厂"的（原厂播不了，见 §2.6）。

---

## 1. 现状盘点：这个 Python 服务是什么

| 层 | 文件 | 行数 | 依赖 | 上设备后是否还需要 |
|---|---|---|---|---|
| 签名 | `kg/sign.py` | 94 | md5 | **需要**（移植） |
| RSA | `kg/crypto.py` | 85 | 裸 modpow | **需要**（`pk`/`p` 参数） |
| AES | `kg/aes.py` | 174 | 纯 Python AES-CBC | 需要（`delete_list` 一个接口） |
| 协议客户端 | `kg/client.py` | 752 | `urllib`、keep-alive、Cookie | **需要**（移植） |
| 歌词 | `kg/lyrics.py` | 52 | XOR + zlib | 需要（`Inflater` 等价） |
| 云歌单 | `kg/cloudlist.py` | 108 | — | 需要 |
| 自动领会员 | `kg/autovip.py` | 299 | 定时线程 | 可选（放后端更合适） |
| HTTP 服务 + 归一化 + 反代 | `app.py` | 987 | `http.server` | **不需要**（客户端直连上游；反代仅用于下载/整包 ZIP） |
| 网页播放器 | `static/index.html` | 85 KB | 原生 JS | 重写为原生 View（1024×600 用不上桌面布局） |

关键点：`app.py` 的 987 行里，真正对客户端有价的是 `_track_from_list/_search/_rank/_newsong`（结构归一化，~90 行）与 `_best_source` 音质定档逻辑（在 `client.py`）。**服务端的 HTTP 层在 Android 方案里整体消失**——这正是这件事可行的原因。

---

## 2. 真机能力实测（本次调研的核心产出）

### 2.1 网络：设备直连酷狗，5.8 ms

```
adb shell ping -c 2 gateway.kugou.com
64 bytes from 111.206.97.106: icmp_seq=1 time=5.83 ms
adb shell curl -s -o /dev/null -w '%{http_code} %{time_total}' https://gateway.kugou.com/v3/get_my_info
502 0.112s        # 无参调用，502 是预期；TLS 握手 112ms
adb shell curl ... https://lyrics.kugou.com/  →  200 0.245s
```
DNS 走 `192.168.1.1`，TLS 校验结果 `0`（正常）。**设备侧 HTTPS 完全可用，不需要任何代理**（这跟 PC 上"绕 Clash 变 2–4 s"的坑无关）。

### 2.2 直链可播：200 / 3.5 MB / 0.93 s，且支持 Range

```
adb shell curl -s -o /dev/null -w 'code=%{http_code} type=%{content_type} size=%{size_download} time=%{time_total}'
  http://fs.youthandroid2.kugou.com/202611282001/.../full/ap3116_us2046073783_..._qu128_....ogg
code=200 type=application/octet-stream size=3557435 time=0.933     # 3.8 MB/s
adb shell curl -s -r 0-1023 -o /dev/null -w 'range_code=%{http_code} got=%{size_download}'
range_code=206 got=1024
```
即：**拖动进度条可行**，不需要 `/api/stream` 反代。直链是明文 HTTP，无 Cookie/Referer 要求。

### 2.3 解码：MediaPlayer 全绿

```
11-28 20:03:18.732 I kgprobe : prepareAsync
11-28 20:03:19.322 I kgprobe : prepared duration=296453ms        # 590 ms 出首帧信息
11-28 20:03:19.741 I kgprobe : t=1s  pos=80    delta=81   vol=20/100
11-28 20:03:20.744 I kgprobe : t=2s  pos=1083  delta=1003 vol=20/100
...
11-28 20:03:28.766 I kgprobe : t=10s pos=9105  delta=1002 vol=20/100
```
解码器清单（`/vendor/etc/media_codecs*.xml`）覆盖 `audio/mpeg`、`audio/flac`、`audio/vorbis`、`audio/opus`、`audio/mp4a-latm`、`audio/ape`、`audio/alac`、`audio/x-ms-wma`——**128k/320k mp3、FLAC、ogg 全都能播**，VIP 到账后升档不需要改代码。

硬件：4 核 ARMv7、`MemTotal 1008 MB`、`MemAvailable 444 MB`、`dalvik.vm.heapsize 256m`、`/data` 可用 746 MB（够缓存几十首）。

### 2.4 后台继续播：HOME 之后照常推进

```
=== t+10s press HOME
=== foreground now: mResumedActivity: com.tgz02.voice/.VoiceHomeActivity
11-28 20:06:26.913 I kgprobe : t=29s pos=29064 delta=1039
...                       （一路推进到 t=40s，delta 稳定 1040）
```
结论：`MediaPlayer` 在 Activity 退到后台后继续播放，**但**真正上产品必须放进前台服务（`BackendService` / `AlarmRingingService` 已经有现成的 `startForeground` + NotificationChannel 写法可抄），并 `setWakeMode(PARTIAL_WAKE_LOCK)` 防息屏后 CPU 睡死。

### 2.5 ⚠️ 工厂 TTS 会把 `STREAM_MUSIC` 腰斩，且**不还原**

播放中工厂只要说话，`MediaSessionService`（uid 1000，即原厂 smartapp）就连续下调媒体音量：

```
11-28 20:04:42:312 adjustSuggestedStreamVolume(dir:ADJUST_LOWER flags:0x1011) from android/MediaSessionService uid:1000
11-28 20:04:43:198 adjustSuggestedStreamVolume(dir:ADJUST_LOWER ...)   (×5，每次紧跟一次 ADJUST_SAME)
11-28 20:04:44:499 adjustSuggestedStreamVolume(dir:ADJUST_LOWER ...)
kgprobe: t=29s vol=56/100 → t=30s 50 → t=31s 37 → t=32s 31  ← 60 → 31，之后一直 31
第二次跑（初始 80）: 80 → 69 → 44，之后一直 44
```
注意两个细节：
- 它调的是**流音量**而不是走 AudioFocus ducking（我们的 `GAIN` 焦点没被抢，`loss: none`）；
- **说完不恢复**。用户听感就是"说完一句话之后音乐永久变小一半"。

→ 设计必须带"音量守卫"：播放前记录目标音量，检测到被外部下调且当前没有在播报时，按目标值恢复（见 §8.1）。

### 2.6 ⚠️ `IR_MEDIA` 现在是"放行给原厂"，而原厂根本播不了

`intent_route.h` 里 `IR_MEDIA = 6`（bit `0x20`）注释写的是"播放控制，原厂技能本来就管"。但实测事件里原厂的回答是：

```json
{"seq":330,"kind":"turn","route":"ai","user":"天猫精灵打开新视听",
 "reply":"我这边暂时没法打开“新视听”，也控制不了音箱里的应用。您可以在手机或电视上手动打开。"}
```
这个号下原厂没有绑定音乐服务，**放行等于放弃**。所以音乐意图必须从"PASS"改成"我们接管"，规则见 §7。

### 2.7 无 AEC、无音效链

```
dumpsys media.audio_flinger → XML effect configuration failed to load. / 0 Effect Chains
/vendor/etc/audio_effects*   → 不存在
```
意味着**外放的音乐会被麦克风原样采集**。本次 40 秒 80% 音量实测没有出现误唤醒（`onStartTalk` 零命中），但这只能说明"这几首歌没触发唤醒词"，不能说明"播放中识别可靠"。§8.2 给了对策。

### 2.8 顺带发现的既有缺陷（与音乐无关，但该修）

```
11-28 20:05:00.704 I tgt : continuity req: seq=3590672 rejected (in the future; baseline=-1, now=1552201)
11-28 20:06:43.428 I tgt : continuity req: seq=3590672 rejected ... （每 2 秒一次，永不停止）
```
TTS 守卫每 2 秒读一次一个"seq 在未来"的过期 continuity 请求并拒绝，`baseline` 一直是 `-1` 从未被初始化。功能上无害，但是**永久 2 秒轮询 + 永久日志刷屏**，建议在 T9-26 里一并处理（`baseline<0` 时用当前 seq 初始化并落盘，或者直接丢弃过期请求文件）。

---

## 3. 三种落地方案对比

| 方案 | 做法 | 工作量 | 依赖 | 语音接入 | 判断 |
|---|---|---|---|---|---|
| **A** 局域网 Python + 原生客户端 | 服务跑在 PC/NAS，绑 `0.0.0.0`；App 只做 UI + 播放 | 中（~900 行 Java） | 家里那台机器必须常开 | 同 B | ✅ **第一步就走这条** |
| **B** 协议栈移植成 Java（端上自足） | `sign/crypto/aes/client/lyrics` 移植进 APK，直连酷狗 | 大（~1800 行 Java + 登录 UI） | 无 | 同 B | ✅ **最终形态** |
| C WebView 套现有网页 | `WebView` 加载 `http://192.168.1.5:8848/` | 极小（~60 行） | 同 A + WebView | 无（只能靠语音打开页面） | ⚠️ 只当 1 小时 demo：1 GB 内存上 WebView 常驻 100–150 MB，HTML5 audio 在后台/息屏不可靠，且拿不到 MediaSession |
| D Chaquopy / 内嵌 CPython | 把 CPython 打进 APK 跑原 Python | 大且脆 | 需要 Gradle + armeabi-v7a 的 `libpython`；本仓库是手写 `aapt2/javac/d8` 流水线 | 无 | ❌ 收益只有"不用改代码"，代价是构建链和内存，A 方案两期就追平 |

**结论：A → B，共用一个 `MusicBackend` 接口。**

```java
interface MusicBackend {
    List<Track> search(String kw, int page);
    List<Playlist> playlists();
    List<Track> playlistTracks(String gcid);
    String resolve(Track t, String quality);   // 返回 CDN 直链
    String lyric(String hash, long durationMs);
    Session session();                          // 登录态
}
// LanBackend      → http://192.168.1.5:8848/api/*
// LocalBackend    → KgClient（纯 Java，直连 gateway.kugou.com）
```

切换点：`/data/data/com.tgz02.voice/files/music.conf` 里 `backend=lan|local` + `lan_url=` + `lan_token=`。

---

## 4. 目标架构

```
  ┌── 语音 ─────────────────────────────────────────────────────────────┐
  │ 「天猫精灵」唤醒 → 原厂 ASR → libtg_hook.so（T8 接管判定，读 route mask）│
  │        ↓ TAKE                                                      │
  │   ai_worker（root）: ir_classify → skill_claim → LLM 兜底 → 回话/TTS │
  │        ↓ 写 /data/local/tmp/t9_ui/events/<seq>.json（+ action 字段）  │
  └────────────────────────────────────────────────────────────────────┘
                    ↓  App 侧已有轮询（VoiceBridgeClient.pollEvents）
  BackendService(:backend, 前台服务, 已有)
        ↓ Binder/AIDL（已有 ITgBackend）
  MusicService（新，前台服务 + MediaSession + AudioFocus + 音量守卫）
        ↓
  MusicBackend  ── LAN: http://192.168.1.5:8848/api/*   （P0）
                └─ Local: KgClient 直连 gateway.kugou.com（P2）
        ↓ CDN 直链（明文 HTTP，Range）
  MediaPlayer → speaker（工厂 TTS 说话时被 duck，由守卫还原）
        ↑
  MusicActivity（1024×600 mdpi 原生 View：搜索 / 歌单 / 队列 / 歌词）
```

设计原则（沿用本工程既有约定）：
- **UI 不碰 root、不碰协议**；协议只在 `BackendService` 进程里跑；
- 语音命令不新开通道，复用 `events/<seq>.json` 的单向总线（App 已在读，`kind/skill/route/user/reply` 都在解析）；
- 播放状态回写 `status.public.json` 之外的新文件 `play.music.json`，让 worker 能在回话里说"正在放《晴天》"。

---

## 5. 分期计划

### P0（0.5–1 天）局域网后端打通
1. 给 `kugou-web` 加 `KUGOU_BIND=0.0.0.0` 与 `KUGOU_TOKEN=<共享密钥>`：所有 `/api/*` 校验 `X-Tg-Token`，否则 401（当前服务"单用户单会话、无鉴权、只听 127.0.0.1"，绑到局域网前必须先补这层）。
2. `MusicBackend.LanBackend`：`search / playlists / tracks / play / lyric` 五个调用，OkHttp 不用，直接 `HttpURLConnection`。
3. 命令行先验证：`adb shell curl -H 'X-Tg-Token: ***' 'http://192.168.1.5:8848/api/search?kw=周杰伦'`。
   验收：设备上返回 30 条 `songs[]`，`/api/play` 拿到直链后 MediaPlayer 出声。

### P1（2–3 天）原生播放器
- `MusicService`（前台服务 + `MediaSession` + `AudioFocus` + `setWakeMode`）+ `MusicActivity`（搜索框 / 歌单 / 队列 / 歌词 / 进度条）。
- 音质定档照搬 `_best_source`：128 → 320 → flac，失败只降一级（不要逐档盲试，PC 上实测这就是延迟来源）。
- 验收：设备上播完整一首不中断；HOME 后继续；息屏继续；拖动进度条生效（`206`）。

### P2（3–5 天）协议栈移植（去 PC 依赖）
| Python | Java | 关键点 |
|---|---|---|
| `sign.py` 94 行 | `KgSign.java` ~120 行 | `md5(salt + sorted(k=v) + body + salt)`，两个 salt 常量 |
| `crypto.py` 85 行 | `KgRsa.java` ~90 行 | `BigInteger.modPow`；X.509 公钥可用 `KeyFactory` 解析，裸模式自己左补零 |
| `aes.py` 174 行 | `KgAes.java` ~60 行 | 用 `javax.crypto` AES/CBC/PKCS5 替换手写 AES |
| `client.py` 752 行 | `KgClient.java` ~700 行 | 固定头（`kg-rc/kg-thash/kg-rf/x-router`）、参数合并、Cookie、每 host 连接复用 |
| `lyrics.py` 52 行 | `KgLyric.java` ~60 行 | KRC = 跳 4 字节头 → XOR → `Inflater` |
| `app.py` 归一化 | `TrackMapping.java` ~120 行 | `_track_from_*` 四个函数 |
- 登录：二维码流程 + 本地生成二维码（`zxing core 3.5.3` 已确认可下载，607 KB，可只留 QR writer 部分；或 vendor 单个 ~600 行的 `QrCode.java`）。token 落 `/data/data/.../files/kugou.json`（0600）。
- 验收：断网只留 WAN 的情况下，设备独立完成"搜索→播放→歌词"，不依赖 192.168.1.5。

### P3（1–2 天）语音控制
worker 侧：
1. `intent_route.h`：新增 `IR_MUSIC = 11`，**不分配 route 位**（返回 0），与 `IR_DEVICE_STATUS` 同套路，保证永远不会被"放行给原厂"。
2. `ir_classify`：在 `IR_MEDIA` 之前先匹配音乐模板，抽 `arg`（歌手/歌名/歌单名）。`IR_MEDIA` 保留原义（音量/暂停/下一首）但判定改为见 §7。
3. `worker_conf.c`：新增 `skill_music_enabled=1`。
4. `ai_worker.c`：`skill_claim_id` 里对 `IR_MUSIC` 用独立开关；exec 不播 TTS，只写出：
   ```json
   {"v":1,"seq":331,"kind":"turn","skill":"music.play","route":"skill","user":"播放周杰伦的晴天",
    "reply":"","action":{"kind":"music","cmd":"play","q":"周杰伦 晴天","quality":"auto"}}
   ```
5. LLM 兜底：提示词里加一条"能识别成播放/切歌/暂停/音量就输出 music.*"，保证口语（"来点安静的""刚才那首再来一遍"）也能落到 `action`。

App 侧：`VoiceBridgeClient` 解析 `action` → `BackendService` → `MusicService`；播放状态写 `play.music.json`（`{playing,track,pos,dur,queue_len,vol}`）供 worker 组织回话。

### P4（0.5 天）收尾
- 桌面 UI 加音乐卡片（首页快捷区已有闹钟卡片的写法，`openFactoryAlarm()` 那套可以直接套 `openMusic()`）。
- 设置页加"音乐服务"分组：后端地址 / 密钥 / 默认音质 / 二维码登录。
- 报告 + 提交。

---

## 6. 新增/改动文件清单（P0–P1 就能跑）

| 文件 | 动作 | 说明 |
|---|---|---|
| `t9_07_ui/src/com/tgz02/voice/MusicService.java` | 新增 ~450 行 | 前台服务、MediaSession、AudioFocus、音量守卫、队列、prepareAsync 状态机 |
| `…/MusicActivity.java` | 新增 ~600 行 | 1024×600 原生 UI：搜索 / 歌单 / 队列 / 歌词 / 进度 |
| `…/MusicBackend.java` + `LanBackend.java` | 新增 ~350 行 | 后端抽象 + 局域网实现 |
| `…/PlayStateWriter.java` | 新增 ~80 行 | 写 `play.music.json` |
| `VoiceBridgeClient.java` | 改 ~15 行 | 解析 `action` 字段并回调 |
| `BackendService.java` | 改 ~40 行 | AIDL 加 `musicCmd(...)` / `musicStateJson()`，转发给 MusicService |
| `ITgBackend.aidl` | 改 | 增加两个方法（`API_LEVEL` 递增） |
| `AndroidManifest.xml` | 改 | 注册 service/activity、`FOREGROUND_SERVICE`、`MODIFY_AUDIO_SETTINGS` |
| `t9_10_home/.../intent_route.h/.c` | 改 ~120 行 | `IR_MUSIC` + 音乐规则表 |
| `t9_10_home/.../ai_worker.c` | 改 ~150 行 | `skill_music_enabled`、`music.*` 技能、`action` 事件字段 |
| `kugou-web/app.py` | 改 ~30 行 | `KUGOU_BIND` / `KUGOU_TOKEN` |

---

## 7. 语音指令表与路由规则

| 用户说 | 意图 | 谁执行 | 说明 |
|---|---|---|---|
| 播放周杰伦的晴天 / 来一首安静的 / 放首歌 | `IR_MUSIC` (play) | **我们** | 带内容的播放请求，原厂做不到 |
| 暂停 / 继续 / 下一首 / 上一首 / 单曲循环 | `IR_MUSIC` (control) | 我们**仅在正在播放时** | 否则放行原厂（原厂能处理"暂停"这类通用词） |
| 声音大一点 / 音量 50 | `IR_VOLUME`（已有） | 原厂 | 不改，已验收 |
| 我在听什么 / 这首歌叫什么 | `IR_MUSIC` (query) | 我们 | 从 `play.music.json` 取，顺带说明"下一首说下一首" |

**判定优先级**（`ir_classify` 内部顺序）：`IR_STOP/EXIT` → `IR_MUSIC?`（需 `skill_music_enabled` 且 `IR_MEDIA` 模板命中）→ `IR_MEDIA` → 其余原规则。理由：`IR_MEDIA` 是"放行"，一旦误判放行，用户会听到"我控制不了音箱里的应用"；宁可多接管。

`action.cmd` 取值固定：`play / pause / resume / next / prev / stop / volume / query / like / playlist`，App 侧用一个 `switch` 全兜，不认识就回话"这个我还没学会"。

---

## 8. 六个硬问题与对策（每条都有实测依据）

### 8.1 工厂 TTS 把媒体音量腰斩且不还原（§2.5）
```
播放前 snapshot：target = am.getStreamVolume(MUSIC)   // 用户手设的 60
监听：每 1 s 比对 current
  if (playing && !ttsActive && current < target - 3) am.setStreamVolume(target)
```
- `ttsActive` 从 `status.public.json` 的 `dialog.state != idle` 推（`BackendService` 已经在读这个文件）；
- 只在"我们在播"时恢复，避免跟用户在调音量时打架；
- 目标音量同时写进 `music.conf`，下次启动沿用。

### 8.2 无 AEC：播放中的唤醒/识别（§2.7）
三级策略，按实测逐步收紧：
1. 唤醒事件到达（`status.public.json` 的 `dialog.state` 变 `listening`）→ **立即把音乐 duck 到 20% 或暂停**（0.3 s 内），保证 ASR 听到人声；
2. 识别完（`dialog.state == idle` 且 `reply` 落地）→ 恢复播放与音量；
3. 如果实测发现播放中识别率仍差：播放在 60% 以上时把音乐**暂停**而不是 duck（把"唤醒 → 停"做成产品语义："我在听你说话，音乐先停一下"）。

### 8.3 直链有效期与重复解析
直链数小时有效、CDN 调度有差异。策略：每次 `play` 重新解析（客户端内 5 分钟缓存，同 PC）；`MediaPlayer` 报 `MEDIA_ERROR_UNKNOWN` 就丢弃缓存重解析一次再失败投下一首。**不要**缓存到磁盘的播放列表里——URL 会过期。

### 8.4 MediaPlayer 单实例与竞态
切歌必须 `release()` + 新建，`prepareAsync` 期间用户再点下一首要靠 `generation` 计数作废旧回调（这是这类播放器最经典的 bug）。歌曲自然结束走 `onCompletion`，错误走 `onError` 直接跳下一首并记日志。

### 8.5 音质=账号权益（实测只给 128k）
```
/api/debug/priv?hash=...&quality=320 →
vip_type=0  picked: q=128
128/320/flac/high → privilege=10 pay_type=3（非会员不可用）
实际直链：.../yp/full/ap3116_us2046073783_..._qu128_....ogg
```
所以：默认 `auto`，按 `_best_source` 的规则定档；每日领会员到账后自动升 320/flac，**不需要改代码**。UI 上把当前档位显示出来（"128k · 未开通会员"），免得用户以为是 bug。

### 8.6 息屏 / Doze（8.1）
`startForeground`（抄 `BackendService` 的通知通道写法）+ `setWakeMode(PARTIAL_WAKE_LOCK)` + `MediaSession` 前置声明 `PLAYBACK_STATE`。注意本机 `dalvik.vm.heapsize=256m`，服务里不要持有大 bitmap（封面按需 96 px 缩放，别加载 480 px 原图进内存）。

---

## 9. 风险与回滚

| 风险 | 触发条件 | 回滚 |
|---|---|---|
| 音乐抢占麦克风导致唤醒失灵 | 无 AEC + 高音量 | `music.conf` 设 `pause_on_wake=1`；再不行把默认音量上限压到 50 |
| 音量守卫与用户手动调节打架 | 用户在播报间隙大幅降音量 | 记录"用户主动调节"（`VOLUME_CHANGED_ACTION` 带 `FLAG_SHOW_UI`）时刷新 target |
| 工厂后续固件改 ducking 行为 | OTA | 守卫已有 fallback：连续 3 次恢复被压下就停止恢复并记日志 |
| A 方案依赖的 PC 关机 | 常态 | UI 明确提示"音乐服务未连接（192.168.1.5:8848）"，其余功能不受影响 |
| 酷狗协议变更 | 上游 | 协议层集中在 `KgClient`/`LanBackend`，PC 版 Python 可作为对照参考（两边同样签名逻辑，改一处即可对齐） |

---

## 10. 尚未验证 / 下一步

1. **播放中唤醒识别率**（需真人对话，实测只能做到"40 秒无误唤醒"）；
2. **多首连续播放的稳定性**（本次只验证单首 40 秒；队列、切歌、错误恢复要 P1 才能测）；
3. **VIP 到账后的 320k/flac 实际可播**（当前号 `vip_type=0`）；
4. 二维码登录在 1024×600 屏幕上的可扫性（P2 时再定，先探是否要 240 px 以上的 QR）；
5. §2.8 的 `tgt continuity` 2 秒刷屏缺陷（与音乐无关，单独修）。

---

## 附：本次调研用到的探针

`android/t9_25_music_probe/`（一次性 APK，12.7 KB，不随产品发布）：
- `Probe.java` — `MediaPlayer` + `AudioFocus` + 每秒 `getCurrentPosition()`，参数 `--es url` `--ei seconds` `--ei volume` `--ez focus`；
- `probe_mix.sh` — 播出声 + 注入工厂 `say`，观察 ducking 与共存；
- `probe_bg.sh` — `KEYCODE_HOME` 后验证后台续播；
- `probe_load.sh` — 播放期间的进程/内存占用。

复现：
```powershell
powershell -ExecutionPolicy Bypass -File build.ps1
adb install -r musicprobe.apk
adb shell "am start -n com.tgz02.musicprobe/.Probe --es url '$URL' --ei seconds 12 --ei volume 60"
adb logcat -s kgprobe:V
```

---

# 11. 实施结果（同日 20:20–20:45，真机验证）

## 11.1 落地形态：写在桌面 App 里，不是第二个 APK

理由（都是这个工程的既有约束）：

| 需要的东西 | 同 App | 独立 App |
|---|---|---|
| 读 `status.public.json`（判"工厂在说话/在听"） | `root:u0_a71 0640`，本 uid 可读 | 读不到 |
| 写 `/data/local/tmp/t9_ui/inbox` | `u0_a71 0700` | 写不进去 |
| 首页卡片 / 主题 / 图标 | 直接复用 `Ui4` + `quickTile` | 两套主题 |
| 前台服务保活 | 跟桌面 App 同一条策略 | 要单独保活 |

需要"隔离"时用进程解决（`android:process=":music"`），同 uid、同签名、同一份代码。

## 11.2 交付物

APK **1.12.0 / versionCode 14**（`voice_ui.apk`，4.24 MB），新增 5 个类：

| 文件 | 行数 | 职责 |
|---|---|---|
| `Music.java` | ~520 | 协议层：search / playlists / tracks / play / lyric + LRC 解析 + `files/music.conf` |
| `MusicService.java` | ~700 | 播放引擎：队列、AudioFocus、音量守卫、前台通知、MediaSession、`am` 命令入口 |
| `MusicActivity.java` | ~700 | 1024×600 播放页：封面、歌词（逐行高亮+自动滚动）、进度/音量条、队列/歌单 |
| `CoverCache.java` | ~150 | 封面两级缓存（LruCache + files/covers） |
| `Glyph.java` | ~150 | 矢量图标（播放/暂停/上一首/下一首/耳机/列表/返回/搜索），不依赖字体 |

改动：`VoiceHomeActivity`（首页加音乐卡片）、`AndroidManifest.xml`（服务/页面/权限/版本）、`build.ps1`（源文件表）。

服务端（`D:\Code\py2\kugou-web`，另一个仓库）：`app.py` 增加 `KUGOU_BIND` / `KUGOU_TOKEN`，非 loopback 请求必须带 `X-Tg-Token`；`.env` 设 `KUGOU_BIND=0.0.0.0`。

Worker（C）：`intent_route` 新增 `IR_MUSIC`（无 route 位）+ `ir_music_query()`、`skill_dispatch` 新增 `T8_SK_MUSIC`、`ai_worker` 新增 `t9_skill_music_exec` 与注册分支、`worker_conf` 新增 `skill_music_enabled`，并加 `--self-test-music "<话术>"` 便于不开麦验证整条链路。

## 11.3 语音链路（实测分类结果）

```
$ ai_worker --self-test-music "播放周杰伦的晴天"
text=播放周杰伦的晴天
intent=music rule=music.play arg=play complete=1
query=周杰伦的晴天
[aiw] skill music: play q=周杰伦的晴天
code=0 speech=好，播放周杰伦的晴天
Starting service: Intent { ... cmp=com.tgz02.voice/.MusicService }
Starting: Intent { cmp=com.tgz02.voice/.MusicActivity }
```
App 侧：`cmd=play arg=周杰伦的晴天` → `playing: 晴天 dur=243989ms`（原版，不是翻唱）。

| 话术 | 意图 | 命令 | 回话 |
|---|---|---|---|
| 播放周杰伦的晴天 | music.play | play + 歌名 | 好，播放周杰伦的晴天 |
| 放首歌 / 播放音乐 | music.play | playlist 我喜欢 | 好，放你的我喜欢 |
| 暂停 | music.ctrl | pause | 暂停了 |
| 继续播放 | music.ctrl | resume | 接着放 |
| 下一首 / 切歌 | music.ctrl | next | 换下一首 |
| 今天天气怎么样 | weather（未被音乐抢走） | — | 原厂 |

传输方式：worker 是 root，直接
`am start-foreground-service -n com.tgz02.voice/.MusicService -a com.tgz02.voice.action.MUSIC_CMD --es cmd play --es arg <歌名>`
——不用新协议、不用 App 轮询。`skill_music_enabled=0` 时 `IR_MUSIC` 退回 `IR_MEDIA`，行为回到"放行给原厂"。

## 11.4 路上踩到的四个坑（都已修）

1. **`error(-38)` 假故障**：UI 每 200ms 取进度，`getDuration()` 在 `prepareAsync()` 期间被调用，`MediaPlayerNative` 直接抛
   `error (-38, 0)`，而 `onError` 把它当成"这首歌放不了"→ 连跳 6 首。
   修法：`positionMs()`/`durationMs()` 只在 `prepared` 后调用，未就绪时用搜索结果里的 `Duration` 兜底。
2. **`ScrollView can host only one direct child`**：队列面板把 `listBox` 作为第二个子 View 加进 `rightScroll` → 点"队列"必崩。
   修法：歌词与列表都放进同一个 `rightContent`，只切 `visibility`。
3. **天气抢歌名**：`播放周杰伦的晴天` 命中 `weather.keyword`（"晴天"）。修法：音乐判定提到天气之前。
4. **"继续播放"被当成点歌**：从"播放"关键词先判。修法：控制词先判。
5. （附带）`release()`+`new MediaPlayer()` 的销毁/创建竞态也会出 `-38`，改为**整个服务复用一个实例**，切歌只 `reset()`。

## 11.5 音量守卫实测生效

```
T925MUSIC: volume guard: 5 -> 60      ← 工厂播报把 STREAM_MUSIC 压到 5，播报结束后守卫拉回
T925MUSIC: focus change=-2 / 1        ← 工厂短暂持焦点：暂停；GAIN 后自动续播
```
`listening` 状态下守卫主动降到 target 的 25%（无 AEC），`speaking` 状态不抢（让工厂自己的 duck 生效）。

## 11.6 现场状态与依赖

- 设备：`/data/adb/modules/t9_25_music/system/tgz02/bin/ai_worker`（377 KB，重启后由 Magisk 覆盖到 `/system/tgz02/bin/ai_worker`）；`worker.conf` 增 `skill_music_enabled=1`。
- 服务端：`http://192.168.1.5:8848`，令牌写在设备 `files/music.conf`（0600，root 写入，App 只读）。真机验证：无令牌 401 / 带令牌 200。
- 音质：该账号 `vip_type=0`，实测只发 `qu128`；每日会员到账后 `_best_source` 会自动升到 320k/flac，不需要改代码。
- 尚未做：二维码登录（当前靠 `music.conf` 里注入 token）、原生文本搜索框（设备没有可用输入法，搜索走语音）、离线缓存。

## 11.7 截图与日志

- `evidence/t9-25/shots/01_player.png` … `07_home_tile.png`
- `evidence/t9-25/07_impl_logs.txt`（本次真机日志摘录）
- `evidence/t9_25_ndk_build.log`（worker 交叉编译：0 warning / 0 error）
---

# 12. T9-26 收尾：全部回到 /system（2026-11-28 22:16 重启后）

## 12.1 为什么之前一直跑在 /data/local/tmp

`/system` 是只读分区（`mount -o rw,remount /system` → `not user mountable in fstab`），
所以更新走的是 **Magisk 模块 magic-mount**：把文件放
`/data/adb/modules/t9_25_music/system/tgz02/{bin,lib}/`，**开机时**由 Magisk 覆盖到
`/system/tgz02/` 同名路径。overlay 只在 boot 阶段绑定，所以不重启就一直是旧的
`/data/local/tmp/ai_worker.new` 在跑 —— 这不是"忘了换"，是没重启。

## 12.2 重启后的实测

```
$ md5sum /system/tgz02/bin/ai_worker /system/tgz02/lib/libtg_hook.so
bc4ff597f77b96f0b4671e2bb1303585  /system/tgz02/bin/ai_worker     ← 模块里的新构建
b81cb770fdc20b13902b0f450c061ae3  /system/tgz02/lib/libtg_hook.so  ← 含 IR_MUSIC 的新 hook
（重启前分别是 cfd8e520 / 50202bf1）

$ ps -A -o PID,ARGS | grep ai_worker
 1690 ai_worker --work-dir /data/local/tmp/t5_bridge/work ...      ← 命令行里没有 tmp 路径
```

hook 注入同样是从 /system 走的：

```
inj| dlopen ok handle=0x756f7a69 flags=0x6
inj| tg_hook_install() = 0 (threads resumed)   hook_status=0 hooked=1
sup: inject end: pid=1047 exit=0 hooked=1 elapsed=933ms ok     ← 目标 = smartapp:core
```

## 12.3 切歌链路（重启后复测）

```
$ /system/tgz02/bin/ai_worker --self-test-music "下一曲"
intent=music rule=music.ctrl arg=next complete=1
[aiw] skill music: no re-listen for 60s ...
code=0 speech=换下一首
→ App: cmd=next ×2 → playing: Burning dur=230640ms
```

`native_route.public.json` 没有被写上 media —— 新 hook 不再把音乐话术"放行给原厂"。

## 12.4 现场清理

`/data/local/tmp` 里只留备份，不再有任何会跑起来的二进制：

```
/data/local/tmp/t9_25_backup/ai_worker.t9_26.bak
/data/local/tmp/t9_25_backup/libtg_hook.t9_26.bak
```

以后更新 worker / hook 的唯一正确姿势：改源码 → 构建 → 拷进
`/data/adb/modules/t9_25_music/system/tgz02/{bin,lib}/` → **重启**。不要再从
`/data/local/tmp` 手动 `nohup` 起进程（那是调试期的临时做法，容易和开机自启的那份
打架，两份同时存在时 `pidof` 也会看花眼）。