# Android ARM32 UDS DGRAM 最小测试

目的：补上 Windows 原型无法覆盖的一块 —— **Android 上 `AF_UNIX + SOCK_DGRAM` 的真实行为**。
Windows 内核只支持 `AF_UNIX SOCK_STREAM`（`probe_dgram.exe` 报 `WSAEPROTONOSUPPORT 10047`），
所以 DGRAM 的"帧边界/满缓冲丢帧/ENOBUFS 语义"只能在 Android 上验。

三个问题必须由真机回答：

| # | 问题 | 观察量 |
|---|---|---|
| Q1 | DGRAM 是否保留帧边界（一次 `recv` = 一帧） | `bad.len` / `partial` 是否为 0 |
| Q2 | 接收端停 2 秒、缓冲设小，**发送端**看到什么错误 | `eagain` vs `enobufs` vs `other` |
| Q3 | 满缓冲时发送端会不会被阻塞 | `send_us_max` 与 `tick_late_max_us` |

**不注入、不 hook、不需要 root**：两个程序只在自己的进程里建一个 UDS，
放在 `/data/local/tmp`（或抽象命名空间），与 `com.alibaba.ailabs.genie.smartapp` 无关。

---

## 文件

| 文件 | 作用 |
|---|---|
| `dgram_server.c` | DGRAM 服务端：`bind` → `recv` → `tgz2_unpack()`（magic/ver/hdr_len/rate/ch/bits/payload_len/CRC）→ 缺口/延迟统计；`--pause-at/--pause-len` 可人为冻结；`--capture FILE` 把通过校验的整帧按序落盘 |
| `dgram_client.c` | DGRAM 客户端：40 ms 铁定时节拍，`sendto`；`--block` 是反面对照（阻塞发送） |
| `build.ps1` / `build.sh` | 用 NDK 交叉编译到 `armeabi-v7a` |
| `run_on_device.sh` | 推设备 + 跑四组用例的完整命令 |
| `../tgz2_frame.h` | 协议与工具函数（与 PC 原型、与 `verify_capture.py` 同一份定义） |

### 载荷校验策略（两个发送端共用同一个接收端）

| 发送端 | flags | 接收端行为 |
|---|---|---|
| `dgram_client.c`（合成测试） | `TGZ2_FLAG_SYNTHETIC` | 用 `tgz2_check_payload(seq, ...)` 按 `seq` 重算并逐字节比对，不一致计 `bad.payload` 并拒收 |
| `pcm_bridge_draft.js`（原厂真实 PCM） | `0`（无 SYNTHETIC） | **不做重算比对**（真实语音不可重算），只信帧头 FNV-1a CRC |

所以 `SUMMARY` 里必须同时看 `real_pcm` / `synthetic` 两个计数，才知道这一轮的 `bad.payload` 是否有意义。

T3 真机实测（原厂进程 → 独立接收进程）见 `../../04_device_t3_uds_report.md`。

协议与 PC 原型完全一致：**40 B 头（ver=2，含 epoch）+ 1280 B 确定性载荷 = 1320 B/帧，40 ms/帧**。
所以 Android 上的结果可以直接和 `03_pcm_bridge_test.md` 的 PC 数字对照。

---

## 编译（NDK）

```powershell
# Windows
$ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$cc  = "$ndk\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
New-Item -ItemType Directory -Force out | Out-Null
& $cc -O2 -static -o out\dgram_server.exe dgram_server.c
& $cc -O2 -static -o out\dgram_client.exe dgram_client.c
```

`-static` 是为了省掉 `libc.so` 版本绑定；Android 上静态链接的 bionic 程序可直接跑。

---

## 跑（普通 shell，无需 root）

```sh
adb push out/dgram_server.exe /data/local/tmp/
adb push out/dgram_client.exe /data/local/tmp/
adb shell chmod 755 /data/local/tmp/dgram_server.exe /data/local/tmp/dgram_client.exe

# 用例 1：正常路径（抽象命名空间，双方缓冲 8 KB）
adb shell '/data/local/tmp/dgram_server.exe --abstract tgz2pcm --secs 12' &
sleep 1
adb shell '/data/local/tmp/dgram_client.exe --abstract tgz2pcm --secs 10 --sndbuf 8192'

# 用例 2：接收端停 2 秒（验证 Q2/Q3）
adb shell '/data/local/tmp/dgram_server.exe --abstract tgz2pcm --secs 14 --pause-at 4 --pause-len 2 --rcvbuf 8192' &
sleep 1
adb shell '/data/local/tmp/dgram_client.exe --abstract tgz2pcm --secs 12 --sndbuf 8192'

# 用例 3：反面对照（阻塞发送，同样停 2 秒）
adb shell '/data/local/tmp/dgram_server.exe --abstract tgz2pcm --secs 14 --pause-at 4 --pause-len 2 --rcvbuf 8192' &
sleep 1
adb shell '/data/local/tmp/dgram_client.exe --abstract tgz2pcm --secs 12 --sndbuf 8192 --block'

# 用例 4：文件系统 socket（对比抽象命名空间的权限差异）
adb shell '/data/local/tmp/dgram_server.exe --file /data/local/tmp/tgz2pcm.sock --secs 12' &
sleep 1
adb shell '/data/local/tmp/dgram_client.exe --file /data/local/tmp/tgz2pcm.sock --secs 10'
```

判据：

| 用例 | 期望 |
|---|---|
| 1 | `ok≈250`、`eagain=0`、`missing=0`、`bad` 全 0 |
| 2 | `eagain>0` 或 `enobufs>0`（非 0 即证明"满缓冲 → 丢弃"），`tick_late_max_us` 仍是个位毫秒 |
| 3 | `eagain=0` 但 `send_us_max` ≥ 2 s、`tick_late_max_us` ≥ 1 s（阻塞被证实） |
| 4 | 与用例 1 相同；若因 SELinux 报 `bind: Permission denied`，说明必须走抽象命名空间 —— 这本身就是结论 |

---

## 接收原厂 PCM（T3 用）

```sh
# 终端 A：收 60 s，并把通过校验的整帧按序写盘
adb shell "mkdir -p /data/local/tmp/tgz2_uds"
adb push out/dgram_server.exe /data/local/tmp/tgz2_uds/dgram_server
adb shell "chmod 755 /data/local/tmp/tgz2_uds/dgram_server"
adb shell "/data/local/tmp/tgz2_uds/dgram_server --abstract tgz2_pcm --secs 60 \
          --capture /data/local/tmp/tgz2_uds/t3_real_pcm.cap"

# 终端 B：把 pcm_bridge_draft.js 注入原厂 :core（见 ../04_device_t3/run_t3_uds.py）
```

然后离线校验：

```sh
adb pull /data/local/tmp/tgz2_uds/t3_real_pcm.cap
python ../verify_capture.py t3_real_pcm.cap        # 真实 PCM 不做 synthetic 重算
python ../../04_device_t3/cap_audio_stats.py t3_real_pcm.cap --spectrum --gaps
```

`SUMMARY` 里 `real_pcm` / `synthetic` 会告诉你这批帧属于哪一类；`captured` 是落盘帧数。
capture 文件按仓库约定（`*.cap`）不入库，只保留校验输出与 SHA256。

## 结果

见 `03_pcm_bridge_test.md` §6（Android 普通进程实测）。
