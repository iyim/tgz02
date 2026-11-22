# T8-03：sessionId 只读关联（真机，2026-11-22 18:28）

方法：只读 `logcat`（按 tag 过滤：`SessionManager/SessionProxy/SessionDispatch/GcsManager/
RouterManager/ProtocolParser/TtsManager/AudioManager/UtManager/WakeupManager`）+ 既有
`events.jsonl` / `ai_worker.log`。**没有注入、没有改配置、没有重启 `:core`。**

原始文件：`evidence/t8_03_session_correlation.log`、`evidence/t8_03_events.jsonl`、
`evidence/t8_03_worker.log`。

## 1. 两条会话的完整链路

### 会话 1968511 —— 本地指令（「天猫精灵现在几点了」）

```
18:28:55.040  8342 8410 SessionManager.cpp:onStartTalk:255      sessionId = 1968511
18:28:57.563  8342 8433 SessionManager.cpp:onStream:641         sessionId = 1968511, text = 天猫精灵现在几点了, isFinished = 1, isOffline = 0
18:28:57.848  8342 8433 SessionManager.cpp:onNlpResult:895      on nlp result, code = 0 , sessionId = 1968511, data = 1
```

```
events.jsonl : session_id = "1968511"  (event t6-8342-1968511-g45, seq 45)
ai_worker.log: route=native intent=time rule=time.keyword event=...g45 session=1968511
```

**三方一致：`onStartTalk` = `onStream` = `onNlpResult` = `events.session_id` = 1968511。**

### 会话 1968506 —— AI 对话（识别成「天猫精灵郑州有什么好玩的」）

```
18:28:44.512  8342 8410 SessionManager.cpp:onStartTalk:255      sessionId = 1968506
18:28:44.512  8342 8374 SessionProxy.cpp:onHandler:81           start talk sessionId = 1968506
18:28:44.589  8342 8410 GcsManager.cpp:send:293                 sending requestId = 1968506, eventName =ListenStarted
18:28:44.767  8342 8433 ProtocolParser.cpp:onParser:169         sessionId = 1968506, commandDomain =AliGenie.Text type =3
18:28:47.734  8342 8433 SessionManager.cpp:onStream:641         sessionId = 1968506, text = 天猫精灵郑州有什么好玩的, isFinished = 1, isOffline = 0
```

```
events.jsonl : session_id = "1968506"  (event t6-8342-1968506-g44, seq 44)
ai_worker.log: route=ai event=...g44 session=1968506 → deepseek ok 200 1401ms → tts queued
```

**该会话在本窗口内没有出现 `on nlp result` 行。**

## 2. 结论

| 断言 | 结果 |
|---|---|
| `SessionDispatch::onNlpResult` 的第一个参数就是 ASR session id | **已证实**（1968511：`onStream` / `onNlpResult` / `events.session_id` 三者相同） |
| 我方 Hook 记录的 `session_id` 与原厂 `onStream` 相同 | **已证实**（两条会话都是） |
| AI 对话会话也会产出 `onNlpResult` | **未证实**：1968506 没有 `on nlp result` 行（它走的是 `commandDomain = AliGenie.Text type = 3` 那条解析分支） |

## 3. 这条"未证实"对接管方案的影响（写进设备验证清单）

`on nlp result` 属于**本地指令/NLP 结果**那条路径的日志；聊天类会话在本窗口里没有走到那条日志。
因此设备验证时必须用**自己的计数**确认，而不是靠这条日志：

- 说一句 AI 聊天 → 看 `tg_nlu_stats()` 的 `nlp_calls` 是否增长：
  - 若增长且 `nlp_skip` 增长 → 聊天也经过 `SessionDispatch::onNlpResult`，接管点覆盖；
  - 若 `nlp_calls` 完全不动 → 聊天不经过该函数，接管点对聊天无效，**第二个点必须补在
    `RouterManager::onResponse`（`0x10fe3c`）或 `ProtocolParser` 之后**。
- 这正是 T8-01 里标"未证实"的那一条，现在有了明确的判定方法，不需要再扩调查。

## 4. 证据边界

- 只覆盖一次真实会话（1 条 AI + 1 条本地），两条 session 连续、时间戳互不重叠；
- 抓取是按 tag 过滤的（体积 71 KB），没有采集完整 logcat，因此"没有出现某行"只在本 tag 集合内成立；
- 未修改任何设备状态；抓取进程已停、临时文件已清理。
