# 04 · T3 原厂 PCM → UDS DGRAM 旁路：首轮真机实测报告

> 一句话结论：**TG-Z02 原厂进程内 `AGSpeechEngine::feed` 的 4 路交错 PCM，
> 已成功经 Frida Hook → 进程内整帧环 → 消费端 lane0 抽取 / FNV-1a / TGZ2 v2 头 →
> AF_UNIX SOCK_DGRAM 非阻塞发送 → 独立 Android 接收进程 → CRC 校验 + 落盘，
> 首轮 10 s 收到 252 帧连续真实 PCM，CRC 0 错误、序号 0 缺口、0 重复、0 乱序。**
> 本轮只证明"传输链路"，不含 VAD / 唤醒词 / ASR / LLM / TTS。

- 本轮基线 commit：`1ba8904d396b1768d6fe1d5b7c8241f1f7de7714`（"fix T2 dry-run finish: final drain, stricter verdict, wording"）
- 本轮代码提交：`<CODE_COMMIT>`（提交信息 `feat: implement T3 device PCM UDS bridge`）
- 本报告补记提交：`<DOC_COMMIT>`
- 工作分支：`main`（未建分支、未开 PR）
- 被测脚本 SHA256：`08c4720e676765298d1436b7c77f0f1f83cffe388376297e7e366eb76a829dba`（`my-doc/03_uds_test/pcm_bridge_draft.js`，两份真机日志里的 `js_sha256` 与之一致）
- 接收端二进制 SHA256：`68a15523c5e318be916c383d4d2d90e390f20ebb7bdc9d0d56c0f9519b7ca948`（3,407,656 B，armv7 静态链接）

---

## 1. 首轮验收对照（T3 必须满足项）

| # | 验收项 | 结果 | 证据等级 |
|---|---|---|---|
| 1 | Frida Hook 地址四项校验全部通过 | ✅ `ck1_module/ck2_symbol/ck3_offset/ck4_sig` 全 `true`（两次运行） | 真机实测 |
| 2 | Hook 输入长度正确（5120） | ✅ `lenBad=0`，`frames=252=produced` | 真机实测 |
| 3 | 发送端建立非阻塞 UDS DGRAM | ✅ `sessions=1`、`nonblockVerified=true`、`fd=121`、`abstract:tgz2_pcm` | 真机实测 |
| 4 | 接收端收到真实 PCM 帧 | ✅ `SUMMARY real_pcm=252 synthetic=0` | 真机实测 |
| 5 | 至少 100 帧连续有效真实 PCM | ✅ 252 帧（`seq 1..252` 连续） | 真机实测 |
| 6 | CRC 错误为 0 | ✅ 发送端 `crcFrames=252`；接收端 `bad.crc=0`；独立 Python 复算 `crc=0` | 真机实测 + 独立校验 |
| 7 | `bad_magic/ver/len/crc` 全 0 | ✅ `bad={"magic":0,"ver":0,"hdr":0,"len":0,"param":0,"crc":0,"payload":0}` | 真机实测 + 独立校验 |
| 8 | 序号重复、乱序为 0 | ✅ `dup=0 reorder=0`（发送端 `seq` 单调 +1） | 真机实测 + 独立校验 |
| 9 | 发送成功数与接收 accepted 能解释差异 | ✅ `sent=252` / `accepted=252`，差值 0 | 真机实测 |
| 10 | 没有无法解释的序号缺口 | ✅ `missing=0`，`seq_first=1 seq_last=252 count=252` | 真机实测 + 独立校验 |
| 11 | Hook 异常 / 时钟异常 / 重入异常为 0 | ✅ `hookEx=0 clockFail=0 clockDrop=0 hookReentry=0 drainReentry=0 drainEx=0` | 真机实测 |
| 12 | 没有阻塞发送 | ✅ `sendDrop=0 sendErr=0 reconnects=0 noPeerDrop=0`；Hook 内无 syscall | 真机实测（非阻塞回读确认）+ 静态分析 |
| 13 | 原厂语音功能仍正常 | ⚠️ **未验证**：进程三次 pid 未变、无新增 crash；但"唤醒/对话仍可用"必须有人说话，本轮无人值守 | 真机实测（仅进程存活）+ 尚未验证（功能） |

> 首次运行的分项统计见 §8、§9；第二轮重复见 §10。

---

## 2. 设备与目标进程（真机实测）

| 项 | 值 |
|---|---|
| 设备 | TG-Z02（AILABS_S1L，`ro.product.model=AILABS_S1L`，`ro.product.device=ailabs_s1l`，MT8167S，armeabi-v7a） |
| 系统 | `ro.build.version.sdk=27`（Android 8.1 API 27），`ro.build.fingerprint=alps/full_ailabs_s1l/ailabs_s1l:6.1.8-RS-20221104.1459/O11019/1667545132:user/test-keys` |
| SELinux | `Permissive`（因此抽象命名空间 UDS 跨域发送不存在 SELinux 拦截变量） |
| 目标进程 | `com.alibaba.ailabs.genie.smartapp:core`，pid **19572**，uid `system`，上下文 `u:r:system_app:s0` |
| 同族进程 | `smartapp` pid 6682、`smartapp:business` pid 19637（测试前后均未变化） |
| 应用版本 | `versionName=8.7.1.18` / `versionCode=2102087118` / `targetSdk=27` |
| 系统负载 | 测试期间 `load average ≈ 10.8 / 10.2 / 9.8`（本底偏高：`xengine_main` + `system_server`） |
| Frida | frida-server `/data/local/tmp/fs32`（arm32，pid 27670），PC 侧 `adb forward tcp:27042` |

---

## 3. Hook 地址校验（真机实测）

`pcm_bridge_draft.js` 加载即做四级校验，任一级失败都不 attach：

| 级 | 检查 | 结果 |
|---|---|---|
| ck1 | `Module.findBaseAddress('libsmartbox.so')` 非空 | ✅ |
| ck2 | 导出符号 `_ZN14AGSpeechEngine4feedEjPKvi` 存在 | ✅ |
| ck3 | `symbol - base == 0xd455c` | ✅ |
| ck4 | 该地址前 16 字节 == `f0482de910b08de208d04de20370a0e1` | ✅ |

补充（root 读 `/proc/19572/maps`）：

```
8f202000-8f2d6000 r-xp 00000000 /system/app/smartapp/lib/arm/libsmartbox.so
8f2d6000-8f2d7000 rwxp 000d4000 /system/app/smartapp/lib/arm/libsmartbox.so   <-- feed 落在这一页
8f2d7000-8f3ed000 r-xp 000d5000 /system/app/smartapp/lib/arm/libsmartbox.so
```

即 `base=0x8f202000`、`feed=base+0xd455c=0x8f2d655c`，位于可写可执行的那一页（Frida 需要写入该页做 trampoline）。
**注意**：ck4 是在 attach 之前读的，比对的是原厂原始机器码；attach 之后该处会被 Frida 改写，属正常现象。

---

## 4. 代码改动（本轮）

| 文件 | 改动 |
|---|---|
| `my-doc/03_uds_test/pcm_bridge_draft.js` | 修订 6：Hook 内只整帧 `Memory.copy(5120)`；环改成 64 槽 × 5120 B；lane0 抽取 / FNV-1a / 40 B 头组装 / 非阻塞 `sendto` 全部移到 20 ms 消费端（每次最多 8 帧）；失败分级（`sendDrop` / `noPeerDrop` / `sendErr` / `reconnects`）；过期帧 500 ms；`clockDrop` 绝不发 `ts=0`；单生产者守卫；teardown 幂等；`rpc.exports.stats()` / `stop()` |
| `my-doc/03_uds_test/android_uds_test/dgram_server.c` | 先 `tgz2_unpack()`（magic/ver/hdr_len/rate/ch/bits/payload_len/CRC），**只有** `flags & SYNTHETIC` 才做确定性载荷重算比对；真实 PCM 只信 CRC；新增 `--capture FILE`（按序写入通过校验的整帧，退出时 `fflush`+`fclose`）；SUMMARY 增加 `hdr/param/synthetic/real_pcm/captured` |
| `my-doc/03_uds_test/verify_capture.py` | 按 flags 分流：SYNTHETIC 帧重算比对，真实 PCM 不重算；新增 `real_pcm/synthetic/speech_flag/flags seen` 统计 |
| `my-doc/03_uds_test/tests/bridge_unit_test.js` | 重写为 T3 版：**加载实际发布的 `pcm_bridge_draft.js`**，201 条断言，覆盖任务书 §5 的 18 项 |
| `my-doc/03_uds_test/tests_c/fnv_golden.c` | 新增：用真正的 `tgz2_fnv1a()` 生成 JS/C 对拍金标准常量 |
| `my-doc/04_device_t3/run_t3_uds.py` | 新增：注入驱动（记录 js_sha256、mid/stop 统计、`stop()`/`unload()`/`detach()` 清理） |
| `my-doc/04_device_t3/cap_audio_stats.py` | 新增：离线音频体检（RMS / 全零帧 / 重复帧 / Goertzel 频谱 / 时间戳间隔） |

未改动：T0/T1/T2 的脚本与日志、原厂 APK/SO、任何分区。

---

## 5. 设计要点（与任务书强制原则逐条对应）

1. **Hook 内只有一次整帧复制**：`Memory.copy(dst, src, 5120)`，环槽保存完整 4 路交错帧（不是只存 lane0）。
2. **Hook 内禁止的动作全部搬走**：socket / `sendto` / CRC / lane0 抽取 / RMS / 日志 / 采样 / 动态分配都不在 Hook 内（单元测试 T18 用静态源码切块 + 动态计数器双重验证）。
3. **环**：`64 × 5120 = 327680 B`，另有 `Float64Array(64)` 记录采集序号与 `CLOCK_MONOTONIC` 微秒时间戳；全部在 attach 之前预分配。
4. **消费端**：20 ms tick，每次最多 8 帧；`lane[q] = in16[q*4]`（int16 索引，等价字节偏移 `q*8`）→ 1280 B → `fnvBytes()` → 40 B 头 → `sendto`。
5. **帧头**：与 `tgz2_frame.h` 逐字段一致（`magic/ver/flags/hdr_len/seq/ts_us/epoch/rate/ch/bits/payload_len/crc`），真实 PCM `flags=0`（不置 SYNTHETIC，也不置 SPEECH）。
6. **socket**：`AF_UNIX + SOCK_DGRAM`、抽象名 `tgz2_pcm`、`sun_path[0]=0`、地址长度 `2+1+strlen(name)=11`；`F_SETFL O_NONBLOCK` 后 **`F_GETFL` 回读确认**（`nonblockVerified=true`）才允许 `connect`；connected DGRAM 的 `sendto` 目标地址传 `NULL/0`。
7. **失败语义**：`EAGAIN/EWOULDBLOCK/ENOBUFS → sendDrop`（丢本帧不重试）；`EPIPE/ECONNRESET/ENOTCONN/ECONNREFUSED → 关 socket + reconnects++`，下个 tick 重连；其他 → `sendErr` + `lastErrno`。**绝不重试当前帧，绝不阻塞 Hook。**
8. **过期帧**：`now_us - capture_ts_us > 500000` 即 `stale` 丢弃；`ts<=0` 一律不发送（`clockDrop`）。
9. **单生产者守卫**：出现第二个生产线程立即 `disable('multi-producer:<tid>')`，不按 SPSC 硬写环。

---

## 6. 协议参数（本轮实际生效值，来自 JS `ready` 消息）

```json
{"t":"ready","enabled":true,"epoch":2981915443,"dry":false,
 "ring_cap":64,"ring_slot_bytes":5120,"ring_total_bytes":327680,
 "msg_bytes":1320,"hdr_bytes":40,"payload_bytes":1280,
 "lane0_samples":640,"lane_stride_bytes":8,
 "sock":"abstract:tgz2_pcm","max_age_ms":500,"tick_ms":20,"burst":8}
```

| 参数 | 值 |
|---|---|
| 采样率 / 声道 / 位深 | 16000 Hz / 1 / 16 bit（帧头声明：`rate=16000, ch=1, bits=16`） |
| 帧长 | 1280 B payload（640 × int16，40 ms） |
| 消息 | 1320 B = 40 B 头 + 1280 B 载荷 |
| epoch（第一次运行） | `2981915443` = `0xb1bc6b33` |
| epoch（第二次运行） | `2835037334` = `0xa8fb3c96`（每次启动都变，接收端据此识别"发送端重启"） |
| seq 起点 | 1（同一 epoch 内单调 +1） |
| flags | `0`（真实 PCM，无 SYNTHETIC、无 SPEECH） |

---

## 7. Socket 建立结果（真机实测）

| 项 | 值 |
|---|---|
| 类型 | `AF_UNIX` / `SOCK_DGRAM` |
| 地址 | 抽象命名空间 `tgz2_pcm`（`sun_family=1`，`sun_path[0]=0`，名字自 `sun_path[1]`，`len=11`） |
| 非阻塞 | `F_SETFL O_NONBLOCK` + `F_GETFL` 回读 `& 0x800 != 0` ✅ |
| 连接 | `connect()` 成功，`sessions=1`（无重连） |
| fd | `121`（第一次运行），收尾 `stop()` 后 `fd=-1` |
| 接收端 rcvbuf | 请求 8192，内核实得 16384 |

---

## 8. 发送端完整统计（第一次运行，10 s）

驱动日志：`my-doc/04_device_t3/t3_uds_run_10s.log`；脚本 `js_sha256=08c4720e…`。

| 统计 | 值 | 说明 |
|---|---|---|
| `frames` | 252 | Hook 回调进入主体次数 |
| `produced` | 252 | 成功整帧入环 |
| `sent` | 252 | `sendto` 成功 |
| `seq` | 252 | 线程序号，1..252 |
| `pending` | 0 | 环内剩余 |
| `ringDrop` | 0 | 环满丢弃 |
| `stale` | 0 | >500 ms 丢弃 |
| `noPeerDrop` | 0 | 无可用 socket 丢弃 |
| `sendDrop` | 0 | EAGAIN/ENOBUFS/对端消失 |
| `sendErr` | 0 | 其他 socket 错误 |
| `lastErrno` | 0 | — |
| `clockFail` / `clockDrop` / `noClockTicks` | 0 / 0 / 0 | 时钟正常 |
| `hookEx` / `drainEx` | 0 / 0 | 无异常 |
| `hookReentry` / `drainReentry` | 0 / 0 | 无重入 |
| `lenBad` / `nullPtr` / `readFail` | 0 / 0 / 0 | 输入长度/指针/读槽全部正常 |
| `depthMax` | 4 / 64 | 环深度峰值（远未接近上限） |
| `producerTid` | 19873 | 唯一生产线程 |
| `tids` | `{"19873": 252}` | 无第二个生产者 |
| `sessions` / `reconnects` / `connectFail` / `disables` | 1 / 0 / 0 / 0 | 一次建连，全程未断 |
| `crcFrames` | 252 | 每帧都算了 FNV-1a |
| `hashSum` | 1713484184（stop 时刻） | 逐帧 CRC 的低 32 位累加，仅供波动观察 |
| `latP50` / `latP99` | 9698 µs / 28369 µs | 采集→发送延迟（含 20 ms tick 的相位） |
| `pendingEq` | `true` | `frames - produced == lenBad + nullPtr + ringDrop + clockDrop` 自洽 |

`stop()` 返回：`{"enabled":false,"fd":-1,"hookDetachAttempted":true,"hookDetached":true,"tickActive":false,"statActive":false,"stopped":true,"why":"ok"}`。

---

## 9. 接收端完整统计（第一次运行）

设备端日志：`my-doc/04_device_t3/t3_server_10s.log`
命令：`dgram_server --abstract tgz2_pcm --secs 30 --capture /data/local/tmp/tgz2_uds/t3_real_pcm.cap`

```json
SUMMARY {"role":"server","mode":"abstract","dur_s":30.084,"msgs":252,"accepted":252,
 "bytes":332640,"stale":0,"paused":0,
 "bad":{"magic":0,"ver":0,"hdr":0,"len":0,"param":0,"crc":0,"payload":0},
 "synthetic":0,"real_pcm":252,"captured":252,
 "seq_first":1,"seq_last":252,"missing":0,"dup":0,"reorder":0,
 "lat_us":{"avg":15590.9,"max":67235},
 "tsgap_ms":{"min":5.77,"max":154.53},"epoch":2981915443}
CAPTURE {"file":"/data/local/tmp/tgz2_uds/t3_real_pcm.cap","frames":252,"bytes":332640}
```

| 项 | 值 | 判读 |
|---|---|---|
| `msgs` / `accepted` | 252 / 252 | 没有一帧被拒 |
| `real_pcm` / `synthetic` | 252 / 0 | 全部是真实 PCM（无 SYNTHETIC 位） |
| `bad.*` | 全 0 | magic/ver/hdr_len/len/rate/ch/bits/CRC 全部通过 |
| `missing` / `dup` / `reorder` | 0 / 0 / 0 | 序号 1..252 连续，无重复无乱序 |
| `epoch` | `2981915443` | 与发送端一致 |
| `lat_us` avg / max | 15.6 ms / 67.2 ms | 接收时刻 − 帧头 `ts_us`（两进程同一 `CLOCK_MONOTONIC`，可直接相减） |
| `tsgap_ms` min / max | 5.77 / 154.53 | 见 §11 的解释 |
| `captured` | 252 | 落盘 332640 B |
| ACK | 无 | 接收端全程没向发送端写任何数据 |

---

## 10. 第二轮重复（同脚本、同参数，仅增加"播放 1 kHz 测试音"的尝试）

驱动日志 `t3_uds_run_10s_tone.log`、接收端日志 `t3_server_10s_runB.log`：

- 发送端：`frames=252 produced=252 sent=252 pending=0`，`ringDrop/stale/sendDrop/sendErr/noPeerDrop/clockDrop/hookEx/drainEx/reentry` 全 0，`sessions=1`，`latP50=8953 µs`；epoch = `0xa8fb3c96`（与第一轮不同 ✅）。
- 接收端：`msgs=252 accepted=252 real_pcm=252 captured=252`，`bad.*` 全 0，`missing=0 dup=0 reorder=0`，`lat avg 14867 µs / max 40365 µs`，`tsgap 7.97..154.82 ms`。
- **测试音没有响**：`tinyplay /data/local/tmp/tgz2_uds/tone_1k_48k.wav` 返回
  `cannot open device '/dev/snd/pcmC0D0p'` + `Unable to open PCM device 0`（进程退出码 0，但没有出声）。
  因此第二轮**没有实际声学激励**，两轮的环境噪声统计几乎一致（RMS 70.7 vs 71.4，频谱峰值都在 100 Hz），
  这反过来支持"两轮采集的都是同一环境的本底声音"，但不能用来证明"载荷随外部激励变化"。

---

## 11. capture 独立校验（`verify_capture.py`，与 C 代码零复用）

```
$ python my-doc/03_uds_test/verify_capture.py my-doc/04_device_t3/capture/t3_real_pcm.cap
file       : ...\t3_real_pcm.cap
bytes      : 332640  frames=252  trailing=0
frames     : 252  real_pcm=252  synthetic=0  speech_flag=0
flags seen : [0]
epochs     : 1  ['0xb1bc6b33']
  session 0: epoch=0xb1bc6b33 first=1 last=252 count=252 missing=0 dup=0 reorder=0
             cadence mean=39.89ms min=5.77ms p95=103.21ms max=154.53ms
dup=0 reorder=0 missing_total=0
rejects    : {'magic': 0, 'ver': 0, 'hdr': 0, 'len': 0, 'crc': 0, 'payload': 0}
RESULT     : PASS
```

第二轮 capture 独立校验同样 `RESULT: PASS`（252 帧、`rejects` 全 0、`duplicate/reorder/missing` 全 0）。

音频体检（`cap_audio_stats.py`）：

```
frames        : 252  (10.08 s @ 16 kHz)
rms           : min=54.3 mean=70.7 p50=70.2 p95=82.2 max=97.5
zero_frames   : 0
silent_frames : 0
dup_frames    : 0        (没有两帧逐字节相同 -> 不是重复填充)
first_frame   : min=-143 max=9
last_frame    : min=-156 max=30
spectrum      : peak=100 Hz (bin 100 Hz)   # 环境低频噪声，无人说话
RESULT        : PASS (real, varying audio)
```

结论：落盘的 1280 B×252 是**逐帧不同的真实采集数据**（非全零、非重复、非帧头空壳），
因无人值守，内容是本底环境声（约 −53 dBFS），不是人声。

### 关于 `tsgap` 抖动（5.77 ~ 154.53 ms）

- 序号连续、`missing=0`，252 帧 / 10.08 s ≈ 25 fps，**没有丢音频帧**；
- 但采集时间戳成对聚集：直方图 `0–20 ms: 121`、`40–60 ms: 55`、`60–80 ms: 38`、`80 ms 以上: 29`；
- 与 T2 的结论一致：Frida 的 V8 对同一脚本只有一份 JS 锁，消费端持锁时 Hook 回调排队，
  拿到锁后连着执行，于是时间戳"成对靠拢 + 中间空档"。两份 capture 的间隔直方图几乎相同（67/251 个间隔 > 60 ms）。
- 影响面：**本轮只做传输，不影响验收**；但 T4 以后（VAD / 端点检测 / ASR 分片）必须改用"采集时刻"以外的
  节拍源，或把消费端的工作量压到 1 ms 以内，否则时间戳抖动会污染下游节奏判断。

---

## 12. 本地测试与静态检查（本轮实际执行）

| 命令 | 结果 |
|---|---|
| `node --check my-doc/03_uds_test/pcm_bridge_draft.js` | 通过（无语法错误） |
| `node my-doc/03_uds_test/tests/bridge_unit_test.js` | **`201 passed, 0 failed`** |
| `armv7a-linux-androideabi26-clang -O2 -Wall -Wextra -static -o out/dgram_server.exe dgram_server.c` | 通过，**0 warning**（NDK r21e clang 9.0.9） |
| `gcc -O2 -Wall -Wextra -o fnv_golden.exe fnv_golden.c` + 运行 | 通过，输出 6 组 C 侧 FNV 金标准 |
| `python my-doc/03_uds_test/verify_capture.py <cap>` | 两份 capture 均 `PASS` |

单元测试（`tests/bridge_unit_test.js`）覆盖任务书 §5 的 18 项：整帧复制、lane0 抽取（含"步长写错会被抓到"的反面对照）、
帧头全字段、`ts_us/epoch/seq`、flags 不含 SYNTHETIC、JS/C FNV 对拍（金标准 `0x811c9dc5 / 0xe40c292c / 0x1a47e90b /
0xa7ce7505 / 0x09d6a1c5 / 0xee980ac9`）、sendto 成功、EAGAIN、ENOBUFS、对端消失+重连、stale、时钟失败、环满、
第二生产线程禁用、stop 幂等、初始化中途失败回滚（attach 抛异常 / 无效 listener / setInterval 返回 null /
O_NONBLOCK 设置失败 / 回读失败 / connect 失败）、DRY_RUN 无 socket、Hook 纯函数性（源码切块 + 动态计数器）。

---

## 13. 失败、丢帧、重连情况

两轮 10 s 运行：

| 分类 | 第一轮 | 第二轮 |
|---|---|---|
| Hook `ringDrop` | 0 | 0 |
| `stale`（>500 ms） | 0 | 0 |
| `noPeerDrop` | 0 | 0 |
| `sendDrop`（EAGAIN/ENOBUFS/对端消失） | 0 | 0 |
| `sendErr` | 0 | 0 |
| 接收端丢失（`missing`） | 0 | 0 |
| `dup` / `reorder` | 0 / 0 | 0 / 0 |
| 重连 | 0 | 0 |
| 发送端 sent / 接收端 accepted | 252 / 252 | 252 / 252 |

**没有出现丢帧，所以本轮不存在"笼统丢帧数"的问题**；分类计数器全部就位（`ringDrop/stale/noPeerDrop/sendDrop/接收端 missing`），
后续若出现丢帧可逐类归因。

唯一异常事件：`tinyplay` 打不开 `/dev/snd/pcmC0D0p`（§10），与旁路链路无关，只影响"用扬声器制造声学激励"这一步。

---

## 14. 原厂链路影响观察

- 三次（两轮测试 + 一次截图确认）采样中 `:core` pid 始终 **19572**，`smartapp` 6682、`business` 19637 也未变；
- `logcat -b crash` 最新条目仍是 11-18 20:08/20:28（早前 frida-server 与 zygote 的历史记录），
  14:36–14:39 的 T3 窗口内**没有新的 FATAL / tombstone**；
- Hook 只读原帧并复制，未改寄存器/内存/返回值，未替换或关闭原厂语音链路；
- 但**"唤醒词/对话功能仍然正常"需要人说话才能确认**，本轮无人值守 → 记为未验证（见 §15）。

---

## 15. 证据分类

| 结论 | 证据等级 |
|---|---|
| Hook 四项地址校验通过、`feed` 在 `0x8f202000+0xd455c` | 真机实测（JS 计数 + root 读 maps） |
| 每次 `feed` 的 5120 B 整帧被复制进环，`produced=252` | 真机实测 |
| lane0 抽取 → 1280 B → FNV-1a → 40 B 头 → `sendto` 全在消费端 | 静态分析（源码切块测试）+ 真机实测（`crcFrames=252`、`sent=252`） |
| 非阻塞 DGRAM 建立成功、`O_NONBLOCK` 回读确认 | 真机实测 |
| 接收端 252 帧真实 PCM、CRC/头部全通过、序号连续 | 真机实测 + 独立 Python 复算 |
| 落盘载荷是逐帧变化的真实采集数据 | 真机实测（离线音频体检） |
| 载荷内容与外部声音激励的对应关系 | **尚未验证**（无人说话；测试音播放失败） |
| 原厂唤醒/对话功能仍正常 | **尚未验证**（需有人说话） |
| 60 s 长稳、接收端停摆、重连压测 | **尚未验证**（按任务书由审查方决定是否进入） |
| 采样率 16000 Hz 的直接时钟测量 | 尚未验证（沿用 T1 的间接证据） |

---

## 16. 未完成 / 下一步

1. 60 s 与"接收端停摆 → 重连"压测：等审查方决定（脚本已支持，`--pause-at/--pause-len` 可造停摆）。
2. 声学激励验证：需要有人对着设备说话，或修好设备播放通路（`tinyplay` 占不到 `pcmC0D0p`，
   可能需要走 AudioTrack / `stagefright` 或 `tinymix` 路由）。目标是看到载荷 RMS/频谱随激励明显变化。
3. `tsgap` 聚集（§11）对下游节奏的影响，需要在 T4 之前定策略。
4. `feed` 落在 `rwxp` 页这一事实（§3），值得在 T4 前确认 Frida trampoline 与原厂自修改代码是否互踩。
5. 本轮只证明"原厂 PCM 已成功旁路传输到独立进程"，**不声称 VAD / 唤醒词 / ASR / LLM / TTS 已完成**。

---

## 17. 复现命令（完整）

```powershell
# 0) 基线
git -C D:\tgz02\OS\system rev-parse HEAD      # 1ba8904d396b1768d6fe1d5b7c8241f1f7de7714

# 1) 交叉编译接收端（NDK r21e，armv7，静态）
$cc = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
cd D:\tgz02\OS\system\my-doc\03_uds_test\android_uds_test
& $cc -O2 -Wall -Wextra -static -o out\dgram_server.exe dgram_server.c

# 2) 推送
$adb = "D:\GreenSoft\platform-tools\adb.exe"; $S = "192.168.1.9:5555"
& $adb -s $S shell "mkdir -p /data/local/tmp/tgz2_uds"
& $adb -s $S push out\dgram_server.exe /data/local/tmp/tgz2_uds/dgram_server
& $adb -s $S shell "chmod 755 /data/local/tmp/tgz2_uds/dgram_server"

# 3) frida-server
& $adb -s $S shell "su -c 'nohup /data/local/tmp/fs32 -l 0.0.0.0:27042 >/dev/null 2>&1 &'"
& $adb -s $S forward tcp:27042 tcp:27042

# 4) 接收端（前台占一个终端，30 s 收尾并 flush capture）
& $adb -s $S shell "cd /data/local/tmp/tgz2_uds && ./dgram_server --abstract tgz2_pcm --secs 30 --capture /data/local/tmp/tgz2_uds/t3_real_pcm.cap > /data/local/tmp/tgz2_uds/t3_server.log 2>&1"

# 5) 注入发送端（另开终端，10 s）
cd D:\tgz02\OS\system\my-doc\04_device_t3
& "C:\Program Files\Python311\python.exe" run_t3_uds.py 10 t3_uds_run_10s.log

# 6) 取回证据
& $adb -s $S pull /data/local/tmp/tgz2_uds/t3_server.log .
& $adb -s $S pull /data/local/tmp/tgz2_uds/t3_real_pcm.cap .\capture\
& "C:\Program Files\Python311\python.exe" ..\03_uds_test\verify_capture.py .\capture\t3_real_pcm.cap
& "C:\Program Files\Python311\python.exe" cap_audio_stats.py .\capture\t3_real_pcm.cap --spectrum --gaps

# 7) 收尾
& $adb -s $S shell "killall fs32"
```

> capture 文件按仓库约定（`*.cap` 不入库）仅本地保留，入库的是 `verify_*.txt`、`audio_stats_*.txt`、
> 以及两个 SHA256：
> `t3_real_pcm.cap = 5bce923334c5fa1c38f9049f9400e7172936c237a0fe1c1e0a2daf26cba039eb`、
> `t3_tone.cap = 97cc3f0c47e4010d99579b5e976e9d22b96808b3b6cb82843eb96ab13274c83d`。
