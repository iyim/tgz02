# T5-06A 证据（真机实测原始输出）

所有文件都是 TG-Z02 上 `adb shell` 的直接输出，未做美化；时间：2026-11-20 16:20–16:35。
探针是**一次性夹具**（见 `tools/`），不属于任何生产代码，也没有改动设备文件/系统分区。

| 文件 | 产生方式 | 关键内容 |
|---|---|---|
| `device_facts.txt` | `uname -a` / `getprop` / `ls -l` 系统库 / `curl --version` / `openssl version` / CA 目录 / `ip addr`、`ip route` / vendor 库 | 设备指纹、四个系统库的实际存在与大小、135 张系统 CA、wlan0 与默认路由 |
| `device_probe.txt` | `adb shell /data/local/tmp/t5d_probe`（**动态链接**，源码 `tools/t5d_probe.c`） | `dlopen` libssl/libcrypto/libjson-c/libcurl/liblog 及各符号可用性；到 5 个域名的 TCP 443 可达性与 DNS 解析结果 |
| `device_probe_static.txt` | 同一份源码加 `-static` 编译后再跑 | 证明**全静态进程不能 dlopen**：`libdl.a is a stub --- use libdl.so instead` |
| `device_curl_probe.txt` | `adb shell /data/local/tmp/t5d_curlprobe https://www.baidu.com/`（源码 `tools/t5d_curlprobe.c`） | 运行时 `dlopen("libcurl.so")` 做 HTTPS GET：`result=0 http_status=200 bytes=17143`，证明 native ARM32 的 TLS+CA 校验可用 |
| `device_http_probe.txt` | `sh /data/local/tmp/t5d_http.sh`（`tools/t5d_http.sh`） | **不带任何凭据**打各家 OpenAI 兼容路径：DeepSeek / 百炼 / Ark 的 401 与错误 JSON 原文；OpenAI `000`（超时） |
| `ndk_check.txt` | 主机侧枚举 NDK r21e 的 sysroot 与产物属性 | sysroot 无 openssl/curl/json 头与库；`android/out/tgb_bridge` 为 `ELF32/ARM/EXEC` 且**无 `.dynamic`** |

## 复现命令

```powershell
# 编译（NDK r21e，API 26）
$cc = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
& $cc -O2 -Wall -o t5d_probe        tools\t5d_probe.c          # 动态链接
& $cc -O2 -Wall -static -o t5d_probe_static tools\t5d_probe.c  # 静态对照
& $cc -O2 -Wall -o t5d_curlprobe    tools\t5d_curlprobe.c

# 推设备并运行
adb push t5d_probe t5d_probe_static t5d_curlprobe t5d_http.sh /data/local/tmp/
adb shell 'chmod 755 /data/local/tmp/t5d_*'
adb shell '/data/local/tmp/t5d_probe'
adb shell '/data/local/tmp/t5d_probe_static'
adb shell '/data/local/tmp/t5d_curlprobe https://www.baidu.com/'
adb shell 'sh /data/local/tmp/t5d_http.sh'
```

## 边界说明

- `device_http_probe.txt` 里的请求**没有** `Authorization` 头，命中 401 属预期；**没有**产生任何计费调用。
- 所有探针只读设备状态；没有写 `/system`、没有改原厂 APK/SO、没有安装任何 APK。
- 探针二进制留在 `/data/local/tmp`（可随时删除），不参与 T5-05A/B/C 的运行路径。
