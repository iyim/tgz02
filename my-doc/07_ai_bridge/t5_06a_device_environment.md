# T5-06A · B：TG-Z02 Android 运行环境调查

设备：TG-Z02 / `AILABS_S1L` / MT8167S / armv7l / Android 8.1（`ro.build.version.sdk=27`，
vendor release 串 `6.1.8-RS-20221104.1459`）/ kernel `4.4.95+` / `armeabi-v7a,armeabi`。
原始输出见 `evidence/device_facts.txt`、`evidence/device_probe.txt`、
`evidence/device_curl_probe.txt`、`evidence/device_http_probe.txt`、
`evidence/device_probe_static.txt`、`evidence/ndk_check.txt`。

探针都是**一次性夹具**（源码在 `evidence/tools/`），只做 `dlopen/dlsym`、`getaddrinfo`、
TCP 三次握手和一次**不带凭据**的 HTTPS GET，不写设备、不改系统。

---

## B1. Android 8.1 下可用的网络接口 — VERIFIED

```
$ ip -o addr
1: lo    inet 127.0.0.1/8 scope host lo
11: wlan0 inet 192.168.1.9/24 brd 192.168.1.255 scope global wlan0
12: p2p0  inet6 fe80::f8a7:63ff:fee6:cbfd/64 scope link

$ ip route show table wlan0
default via 192.168.1.1 dev wlan0  proto static
192.168.1.0/24 dev wlan0  proto static  scope link

$ getprop net.dns1
192.168.1.1
```

- 唯一对外接口是 **wlan0**（2.4/5G WiFi，`mt-wifi` 驱动），无以太网口、无蜂窝。
- 默认路由在 `table wlan0` 里（不是 main 表），**但 `getaddrinfo()`/`connect()` 正常**
  （探针实测，见下）——说明 Android 的 DNS/路由绑定逻辑已处理。
- DNS 由路由器 `192.168.1.1` 提供；`getaddrinfo` 能返回 A 记录（`api.deepseek.com` →
  `123.125.246.121`）。
- IPv6：`api.openai.com` 的 AAAA 记录 `connect` 直接 `errno=101 Network is unreachable`
  → **设备没有可用 IPv6 出口**（VERIFIED）。

**出口可达性（TCP 443，只握手，不发 TLS/HTTP/凭据）**：

| 域名 | 结果 |
|---|---|
| www.baidu.com | CONNECT_OK 36 ms |
| api.deepseek.com | CONNECT_OK 23 ms |
| dashscope.aliyuncs.com | CONNECT_OK 27 ms |
| ark.cn-beijing.volces.com | CONNECT_OK 31 ms |
| **api.openai.com** | **TIMEOUT 5000 ms（IPv4）/ IPv6 unreachable** |

→ 结论：**国内三家模型服务在本机网络可达；`api.openai.com` 不可达**（VERIFIED）。
这直接影响"用哪家做第一版联调"的选择（见 API 文档 §C6）。

## B2. 当前 Native 程序是否已经使用 libc socket — VERIFIED

是。T5-05A 的接收端全部基于 bionic libc 的 POSIX socket：

- `socket/bind/listen/accept`：`android/tgb_server.c:377-482`（`bind_listen`、`accept_all`）；
- `recv/send`：`:346`（`conn_read`）、`:180`（`conn_flush`）；
- `select`：`:550-581`（`srv_loop`）；
- `setsockopt(SO_SNDBUF=8192)`：`tgb_server.h:26` + `bind_listen`；
- 抽象命名空间 `sun_path[0]=0`：`android/../../03_uds_test/tgz2_frame.h`（被 `tgb_server.c:15` 引入）。
- 发送侧（Frida）同样是 libc `socket/connect/send/recv/fcntl/getsockopt`
  （`frida/t505b_asr_bridge_sender.js` 的 `libc.*` NativeFunction 绑定）。

没有任何第三方网络栈参与。

## B3. 系统 TLS 库 — VERIFIED（可 dlopen，符号可用）

设备上确实存在两套 TLS 实现：

| 路径 | 大小 | 身份 | 证据 |
|---|---|---|---|
| `/system/lib/libssl.so` | 193,860 B | **BoringSSL**（Android 自带） | `dlopen` 成功；`SSL_CTX_new / SSL_new / SSL_connect / TLS_client_method` 全部 `OK`；`libcrypto.so` 里 `CRYPTO_malloc`、`OPENSSL_init_ssl` **MISSING**（OpenSSL 1.1 符号被 BoringSSL 隐藏/改名） |
| `/system/lib/libcrypto.so` | 718,488 B | 同上 | `EVP_DigestInit_ex` → `OK` |
| `/system/bin/openssl` | 2,424,344 B | **OpenSSL 1.1.0i 命令行工具**（独立于上面两个库） | `openssl version` → `OpenSSL 1.1.0i  14 Aug 2018` |

探针原始输出（`evidence/device_probe.txt`）：

```
DL libssl.so          OPEN_OK
   sym SSL_CTX_new              OK
   sym SSL_new                  OK
   sym SSL_connect              OK
   sym TLS_client_method        OK
DL libcrypto.so       OPEN_OK
   sym CRYPTO_malloc            MISSING
   sym EVP_DigestInit_ex        OK
   sym OPENSSL_init_ssl         MISSING
```

**限制**：NDK 官方不支持直接 `-lssl -lcrypto` 链接系统库（这些是私有 ABI），
本轮也没有在 NDK 里找到对应头文件（见 B4）。可行路径只有 **`dlopen` + `dlsym`**，
且要求调用方是**动态链接**进程（见 B8）。

UNKNOWN：BoringSSL 的 `SSL_CTX_set_default_verify_paths` 在 Android 上是否默认指向
`/system/etc/security/cacerts`（本轮没单独验证；但 **libcurl 的证书校验已实测通过**，见 B6/B7，
说明至少它用的那套路径是有效的）。

## B4. NDK 是否已包含或能构建所需 TLS 依赖 — VERIFIED（不含）

NDK r21e（`Pkg.Revision = 21.4.7075529`）的 sysroot 里：

```
$ ls <ndk>/sysroot/usr/include
aarch64-linux-android, aaudio, amidi, android, arm-linux-androideabi, arpa, asm-generic,
bits, camera, drm, EGL, GLES, GLES2, GLES3, i686-linux-android, KHR, linux, media, misc,
mtd, net, netinet, netpacket, OMXAL, rdma, scsi, SLES, sound, sys, video, vulkan, x86_64-linux-android, xen
```

- **没有 `openssl/`，没有 `curl/`，没有 `json/`**（`find` 全 NDK 也没有 `openssl` 目录或 `curl.h`）。
- 也没有对应的预编译 `.a/.so`（`<ndk>/.../sysroot/usr/lib/arm-linux-androideabi` 下无 ssl/crypto/curl/json）。

→ 所以在 NDK 侧**不能直接编译**"链接系统 TLS/HTTP"的代码；两条路：
1. **dlopen 系统库**（本文 B3/B6 验证可用，需动态链接）；
2. **vendor 一个 TLS 实现**（mbedTLS / wolfSSL / 自带 BoringSSL 源码），静态编进来，
   自管 CA。工作量与风险明显更大（见 B8 与结论表）。
3. 直接用 HTTP（非 TLS）→ 不可接受：模型 API 全在 HTTPS 上，且明文传 key 不可接受。

UNKNOWN：NDK 里是否可用 `libssl.a` 的等价物（本轮确认**没有**）；是否需要自己构建 mbedTLS
（未评估构建时长/体积）。

## B5. 是否可用 JSON 解析库 — VERIFIED（设备有，NDK 无）

- 设备：`/system/lib/libjson-c.so`（166,616 B）可 `dlopen`，`json_tokener_new`、
  `json_object_get_string` 均 `OK`（`evidence/device_probe.txt`）。
- NDK sysroot：**无 json 头文件**（B4）。
- 现有代码：T5-05A **自带手写 JSON 解析器**（`android/tgb_event.c:112-560`，
  含字符串转义 `jstring` `:182`、整数 `jint` `:259`、布尔 `jbool` `:298`、跳过未知字段
  `jskip_value` `:314`），零依赖，只覆盖事件协议需要的字段。**数量级：621 行**。

→ 若 AI worker 需要解析模型返回的复杂 JSON，建议：**自带一个精简解析器**
（可复用 `tgb_event.c` 的思路）或用 `libjson-c`（dlopen）。两者都不需要引入新依赖树。
UNKNOWN：`libjson-c` 的版本行为（本轮只验证了符号存在）。

## B6. 是否有可用的 HTTP 客户端库 — VERIFIED（设备有 libcurl + curl CLI）

```
$ ls -l /system/lib/libcurl.so ; curl --version
-rw-r--r-- 1 root root 226080 /system/lib/libcurl.so
curl 7.52.0-DEV (Android) libcurl/7.52.0-DEV BoringSSL zlib/1.2.8
Protocols: file http https
Features: IPv6 NTLM SSL libz UnixSockets
```

- `dlopen("libcurl.so")` + `curl_easy_init/curl_easy_setopt/curl_easy_perform/
  curl_easy_getinfo/curl_easy_cleanup/curl_version` 全部可用（`evidence/device_probe.txt`）。
- **端到端 HTTPS 实测通过**（`evidence/device_curl_probe.txt`：动态链接的 ARM32 探针
  ——NDK 默认编译，**没有** `-static`——在运行时 `dlopen` 该库）：

```
CURL version: libcurl/7.52.0-DEV BoringSSL zlib/1.2.8
CURL url=https://www.baidu.com/
CURL result=0 http_status=200 bytes=17143
CURL body_head="<!DOCTYPE html>..."
```

  → TLS 握手、SNI、证书链校验（`SSL_VERIFYPEER=1 / VERIFYHOST=2`）在本机全部成功。
- `/system/bin/curl`（276,332 B）也在，可作运维排查工具。
- **注意这是 ROM 自带的私有库**：版本老（7.52.0-DEV，2017）、无 HTTP/2、无 brotli，
  且不保证跨 ROM 一致。是否直接依赖它属架构决策（见结论表与风险 R7）。

## B7. CA 证书存储路径与验证条件 — VERIFIED

- 系统 CA 目录：**`/system/etc/security/cacerts/`**，共 **135** 个哈希命名文件
  （`<subject_hash_old>.0`，例：`00673b5b.0`、`02756ea4.0`、`04f60c28.0`）。
  这是 Android 8.1 的标准"system CA"布局（每证书一文件 + 哈希链接名）。
- 验证条件实测：B6 的 HTTPS GET 在 `SSL_VERIFYPEER=1 / SSL_VERIFYHOST=2` 下成功，
  说明 libcurl/BoringSSL 找到了可用的 CA 集并完成了链校验。
- UNKNOWN：
  1. 该 libcurl 是否读 `/system/etc/security/cacerts` 还是别处（如编译期写死路径）——
     本轮没有抓 open() 调用，无法证明具体路径；
  2. Android 8.1 对 **user CA**（`/data/misc/user/0/cacerts-added/`）与 **app 侧信任锚**的策略
     在 native 代码里默认不生效（Java 侧 `NetworkSecurityConfig` 才管 user CA）——
     本机未验证；
  3. 若将来改用自建 TLS（mbedTLS），CA 需要自己打包（镜像不可写，只能放 `/data/local/tmp`）。

## B8. ARM32 静态编译的限制 — VERIFIED（有实测反例）

现状：T5-05A 产物是**全静态** ARM32（`llvm-readelf -h/-d android/out/tgb_bridge`：
`ELF32 / ARM / EXEC`，**无 `.dynamic` 段**），设备上 3.5 MB，运行正常。

实测限制（`evidence/device_probe_static.txt`）：把同一个探针用 `-static` 编译后推上设备：

```
DL libssl.so          OPEN_FAIL  libdl.a is a stub --- use libdl.so instead
DL libcrypto.so       OPEN_FAIL  libdl.a is a stub --- use libdl.so instead
DL libjson-c.so       OPEN_FAIL  libdl.a is a stub --- use libdl.so instead
DL libcurl.so         OPEN_FAIL  libdl.a is a stub --- use libdl.so instead
```

→ **全静态进程不能 dlopen**（bionic 的 `libdl.a` 是空桩），因此：

| 想要的组合 | 可行性 |
|---|---|
| 静态 + 无 TLS（现状：只做 UDS/文件） | ✅ 已验证（T5-05A 正在跑） |
| 静态 + 自编 TLS（mbedTLS 等源码静态编入） | ✅ 理论可行（STATIC；需自己喂 CA，注意 ROM 只读） |
| 静态 + 复用系统 BoringSSL/libcurl | ❌ 实测不行 |
| **动态 + dlopen 系统 libcurl/BoringSSL** | ✅ 实测可行（B6，HTTP 200） |
| 动态 + 只依赖 libc（自写 HTTP + 系统 SSL） | ✅ 理论可行（STATIC，未实测 SSL 直连；B3 符号已确认可 dlopen） |

其它 ARM32 相关约束（VERIFIED/STATIC 混合）：

- ABI 只有 `armeabi-v7a,armeabi`（无 arm64）→ NDK 目标必须是 `armv7a-linux-androideabi26`；
- 无 NEON 保证 / 单核主频低（MT8167S，A35 级）→ TLS 握手与 JSON 解析开销要按"慢设备"预算；
- 动态链接后，设备上 `libc.so`/`libdl.so`/`liblog.so` 由系统提供（API 26 契约稳定），
  但 `libcurl.so`/`libssl.so` 属**私有库**，不属于 NDK 公开 ABI（见风险 R7）；
- 进程权限：当前 `tgb_bridge` 由 `adb shell`（uid `shell`）拉起；若 AI worker 需要读
  `/data/local/tmp` 下的 key 文件，同样以 `shell`/root 身份运行即可（STATIC）。

---

## 结论（B 部分）

1. **能上网**（wlan0 + IPv4，DNS 正常），国内三家模型 API 可达，OpenAI 不可达。
2. **native 侧有现成的 TLS/HTTP/JSON 三件套**：BoringSSL + libcurl 7.52.0-DEV + libjson-c，
   全部可 `dlopen`；已实测 HTTPS GET 成功。
3. **前提是动态链接进程**：全静态二进制 `dlopen` 直接失败（真机实测）。
4. 若坚持"零第三方依赖的静态二进制"，只能自带 TLS 实现并自己管理 CA——工作量与风险最高。

这两条组合（"动态 + dlopen libcurl" vs "静态 + 自带 mbedTLS"）就是下一阶段架构选型的主要岔路，
本文只列事实与代价，选型请 ChatGPT 定。
