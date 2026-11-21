# android/ — AI Worker（T5-06B 消费骨架 + T5-06C 真实 DeepSeek Provider）

一个**独立动态链接的 ARM32 进程**，只读消费桥接端落盘的 `events.jsonl`，把 ASR 最终文本交给
Provider（`mock` 或 `deepseek`），成功后才提交消费偏移。

## 为什么必须动态链接

T5-06A 真机实测：全静态二进制里 `libdl.a` 只是桩（`libdl.a is a stub --- use libdl.so instead`），
`dlopen("libcurl.so")` 无法工作。所以本进程固定 `-fPIE -pie`，`NEEDED libc.so / libdl.so`，
HTTPS 走 **运行时 dlopen 的 Android 系统 libcurl**（7.52.0-DEV），不静态打包 libcurl/libssl/libcrypto。

## 构建（NDK r21e，API 26）

```powershell
powershell -ExecutionPolicy Bypass -File build.ps1
# T5-06C 证据用：
powershell -ExecutionPolicy Bypass -File build.ps1 -LogName t5_06c_ndk_build.log
```

产物：`out/ai_worker`、`out/worker_unit_test`（均为 `ELF32 / ARM / DYN`；零警告）。

## 运行（设备）

```sh
# 1) 放 key（只放文件，绝不进命令行/日志）：默认路径
#    /data/local/tmp/t5_bridge/secret/deepseek_api_key   权限 0600
sh run_ai_worker.sh key                  # 只报告存在性与权限，不打印内容

# 2) Mock（默认，零网络，回归测试用）
sh run_ai_worker.sh start

# 3) 真实 DeepSeek（模型/base url 可用环境变量覆盖）
DEEPSEEK_MODEL=deepseek-chat sh run_ai_worker.sh start-deepseek

# 4) 直接调用二进制（全部选项）
/data/local/tmp/t5_bridge/bin/ai_worker \
    --work-dir /data/local/tmp/t5_bridge/work \
    --state-dir /data/local/tmp/t5_ai_worker_state \
    --provider deepseek \
    --api-key-file /data/local/tmp/t5_bridge/secret/deepseek_api_key \
    --deepseek-model deepseek-chat \
    --deepseek-base-url https://api.deepseek.com \
    --deepseek-connect-timeout-ms 5000 \
    --deepseek-timeout-ms 30000 \
    --reply-log /data/local/tmp/t5_ai_worker_state/replies.jsonl \
    --idle-exit-ms 60000
```

## Provider 语义（两条都不许破）

- **成功才提交**：Provider 返回 OK 才推进 offset / 写 `recent_ids` / 计成功数；
  失败（含 401/429/5xx/超时/DNS/证书）只计数并退避重试，offset 不动，后续事件不许越过它。
- **落盘失败即停**：消费进度写不进去就停止读下一条（退出码 5）。

## 隐私边界

| 位置 | 允许 | 禁止 |
|---|---|---|
| stdout 日志 | provider/model/http/curl/latency/reply_bytes/错误类别 | API Key、Authorization 头、请求体、回答正文 |
| `ai_worker_status.json` | 同上（数字与短枚举） | 同上 |
| `consumer_state.json` | offset/指纹/计数 | 任何文本 |
| `replies.jsonl`（可选，`--reply-log`） | 回答正文（设备本地 0600） | API Key |

key 只在 Provider 内存里（`t6b_ds.api_key`），`fini` 时清零；文件读取拒绝符号链接，并报告实际权限位。

## 退出码

`0` 正常 · `2` 参数错误 · `3` 已有实例 · `4` 初始化失败（含 key 缺失、libcurl 不可用）·
`5` 消费进度无法落盘 · `6` 文件身份（前缀指纹）无法核对或推进

## 原厂 TTS 执行器（T5-06D）

`tts_exec/TtsExec.java` 编译成 `tts_exec.dex`，用 `app_process` 独立运行（不装 APK、不改 system）。

- 入口：`ContentProviderClient.query(content://com.alibaba.ailabs.genie.assistant.provider/GenieApi, selection={"method":4,...})`
- 状态：按 `tts_id` 过滤原厂日志 `status = play|complete|interupt`（行内不含回答正文）
- 队列：`queue/ → inflight/ → done/`，`journal.jsonl` 只记 id/字节数/时间/结果
- 停止：`control/stop` 或 `run_tts_exec.sh stop-now` → provider `method=5`
- 不碰 AudioManager，原厂音量控制保持

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File build_tts_exec.ps1   # -> tts_exec.dex
adb push tts_exec.dex /data/local/tmp/t5_bridge/tts_exec.dex
adb push run_tts_exec.sh /data/local/tmp/t5_bridge/run_tts_exec.sh
adb shell "sh /data/local/tmp/t5_bridge/run_tts_exec.sh start"
adb shell "sh /data/local/tmp/t5_bridge/run_tts_exec.sh status"
```

Worker 侧只需加 `--tts-queue-dir /data/local/tmp/t5_bridge/tts`，回答会按 `event_id` 幂等入队。
详见 `../t5_06d_factory_tts_report.md`。
