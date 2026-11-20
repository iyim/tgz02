# P1 验证工具（一次性夹具，不属于生产代码）

这些文件只用于 T5-05B P1 的真机验证，设备上的运行方式见
[../t5_05b_p1_sigpipe_report.md](../../t5_05b_p1_sigpipe_report.md)。
它们不参与 T5-05A Bridge / T5-05B 发送端的任何生产路径，也没有被编译进任何交付二进制。

| 文件 | 作用 |
|---|---|
| `sigpipe_probe.c` | 设备端语义夹具：socketpair + fork，实测「对端关闭后 send(0) 被 SIGPIPE 杀死 / send(MSG_NOSIGNAL) 返回 EPIPE」以及各种半关闭组合下的 recv/send 行为 |
| `t5p1_peer.c` | 设备端"半关闭对端"：监听同一个抽象名 `tgz2_asr_bridge`，accept 后立刻 `shutdown(cfd, SHUT_RD)` 并关闭监听、保持进程存活，用来构造"写进去就 EPIPE、但读不到 EOF"的连接 |
| `t505b_p1_sendwatch.js` | 旁路观测脚本（注入原厂 `smartapp:core`）：Hook libc `send`，记录 `(fd, len, flags)` 与 `(ret, errno)`；只观测，不改参数与返回值 |
| `t505b_p1_runner.py` | 在同一个 frida session 里同时加载生产发送脚本 + 旁路观测脚本，落 JSONL 并在结束时取 `stats()` / `stop()` |
| `t1_kill.ps1` | T1 编排：真 Bridge 运行中 `kill -9`，语音继续，随后重启 Bridge |
| `t2_epipe.ps1` | T2 编排：停 Bridge → 起半关闭对端 → 语音 → 观察 EPIPE → 杀对端、起真 Bridge → 观察重发落盘（报告中的 T2b 是本脚本换成 `s05.wav` 与 `t2b*` 文件名后的同一份脚本） |

设备侧编译（NDK r21e）：

```powershell
armv7a-linux-androideabi27-clang -O2 -Wall -o sigpipe_probe sigpipe_probe.c
armv7a-linux-androideabi27-clang -O2 -Wall -o t5p1_peer    t5p1_peer.c
adb push sigpipe_probe /data/local/tmp/sigpipe_probe
adb push t5p1_peer     /data/local/tmp/t5_bridge/t5p1_peer
```
