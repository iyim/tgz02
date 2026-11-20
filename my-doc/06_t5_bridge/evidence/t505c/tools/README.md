# T5-05C 验收工具（一次性夹具，不属于生产代码）

本目录只是 T5-05C 真机验收用的工具与编排脚本，**没有进入任何生产路径**，
也没有改变 T5-05A Bridge 与 T5-05B Sender 的代码。

| 文件 | 作用 |
|---|---|
| `t5c_peer.c` | 可控测试对端：监听抽象名 `tgz2_asr_bridge`，按模式回 ACK —— `noack`（不 ACK，可用 flag 文件打开 ACK）、`badid`（错 event_id）、`badcrc`（CRC 写错）、`badtype`（type=1）、`dup`（duplicate）、`error`（临时存储错误）、`reject`（带 id 的永久拒收）、`rejectnull`（ack=null 的帧级拒收）、`silent`（accept 后不读不回） |
| `t5c_runner.py` | 发送端运行器：加载生产脚本、记录全部消息为 JSONL；支持"到时/收到 flag 文件后卸载"（`forced` = `script.unload()`，`stop` = RPC `stop()`）与重新加载；结束时取 `stats()`/`stop()` |
| `t5c_lib.ps1` | 编排辅助：adb 封装、Bridge 启停、播放一批 WAV、按 **generation** 解析 `[stat]` 行、等待条件 |
| `c1.ps1` … `c6.ps1` | C1–C6 六个用例的编排脚本（时间线写入 `*_timeline.log`） |
| `collect.py` | 从 `<tag>.out` / `<tag>.jsonl` 生成去重轨迹与统计摘要 |

设备侧编译（NDK r21e）：

```powershell
armv7a-linux-androideabi27-clang -O2 -Wall -o t5c_peer t5c_peer.c
adb push t5c_peer /data/local/tmp/t5_bridge/t5c_peer
adb shell chmod 755 /data/local/tmp/t5_bridge/t5c_peer
```

运行 C1–C6 时**必须先停真 Bridge**（夹具与 Bridge 抢同一个抽象名），
只有 C1/C2/C4 与 C6 的"Bridge 去重"部分是直接打真 Bridge。
