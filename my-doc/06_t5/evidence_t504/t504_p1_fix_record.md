# T5-04 P1 修复记录（读取边界 + 跨线程 Session 误关联）

- 修改文件：`my-doc/06_t5/evidence_t504/t504_asr_text_probe.js`
- 修改范围：只改该脚本（未动报告正文、未动 T3/T4、未动原厂任何文件）
- 执行时间：2026-11-20 10:58–11:03（CST）
- 设备：AILABS_S1L / `com.alibaba.ailabs.genie.smartapp:core`（PID 16112，全程未重启）
- frida：host 16.7.19 ↔ `/data/local/tmp/fs32` 16.7.19

---

## 1. 修复一：C 字符串读取边界

### 1.1 原状

```javascript
function readCString(p) {
  if (p.isNull()) return '';
  return p.readUtf8String().slice(0, MAX_TEXT);   // 先无界读到 NUL，再 slice
}
```

问题：无界读取，长度只由对端内存里的 NUL 决定；`slice` 只是事后截断，不构成读取上界。

### 1.2 修复后

```javascript
function readCString(p) {
  if (p.isNull()) return '';
  var raw = p.readByteArray(MAX_TEXT);            // MAX_TEXT 是底层读取长度上界
  if (raw === null) return '';
  var u8 = new Uint8Array(raw), n = 0;
  while (n < u8.length && u8[n] !== 0) n++;       // 在上界内定位 NUL
  if (n === 0) return '';
  return p.readUtf8String(n);                     // 已知长度解码，解码窗口内无 NUL
}
```

- `MAX_TEXT`（512）作为**底层读取字节数上界**传给 `readByteArray`；不存在"无界读 + slice"。
- 保留 null 指针处理。
- 其他读取逻辑（`readStdString`）未改。

### 1.3 为什么不是一行 `p.readUtf8String(MAX_TEXT)`（实测，需要评审确认）

按字面实现先做了对照测量（同一地址三种读法，设备 10:58:56–10:59:00）：

| 读法 | 实测结果 |
|---|---|
| `p.readUtf8String(512)` | **抛异常**：`Error: can't decode byte 0x00 in position 6` / `position 12` / `position 15` —— frida 16.7.19 在"显式给定长度"模式下一遇到 0x00 就抛错，等于**每条识别文本都会变成读取失败** |
| `p.readCString(512)` | 不抛错但**不在 NUL 处停止**：返回 512 字节（len=494/499/478），尾部是把相邻 JSON 内存当文本的乱码 |
| `p.readUtf8String()`（原状） | 正确：`天猫` / `天猫精灵` / `天猫精灵现` |

因此没有采用字面写法，改为"有界字节读 + 上界内找 NUL + 已知长度解码"。若评审坚持字面写法，需要接受 H1/H2 文本全部读失败，或改用 frida 的替换字符重载——请裁决。

---

## 2. 修复二：取消 H3/H4 的全局 session 猜测

### 2.1 原状（错误）

```javascript
var currentSession = 0;
...
currentSession = sid;            // H1 分支写入
...
rec.session_id = currentSession; // H3/H4 读取
```

H1 在 websocket 收包线程（TID 16421），H3/H4 在语音引擎线程（TID 16275），
两个线程的事件并无严格先后保证；用"最后一次见到的 H1 会话"去给 H3/H4 贴标签，
会把引擎线程的文本挂到错误的 session 上（跨会话串号）。这是**推断**，不是参数里的事实。

### 2.2 修复后（事实）

- 删除全局 `currentSession` 与 H1 分支里的写入；
- H3/H4 输出 `session_id = null`、`session_correlation = 'not_available_in_hook_arguments'`、
  `result_type = 'unclassified'`；
- H4 继续保留 `asr_log_id`（唯一可用于跨层对账的标识）；
- H3/H4 继续保留 UTF-8 文本与**原始字节长度** `text_byte_length`（同时给字符数 `text_length`）；
- H1 的 `session_id` / `is_finished` / partial·final 分类逻辑完全未改；H2 的 session 分类逻辑完全未改。

---

## 3. 静态检查结果

| 检查 | 结果 |
|---|---|
| `node --check t504_asr_text_probe.js` | exit 0（语法通过） |
| 脚本中是否还有 `currentSession` | 仅注释里出现（说明修复原因），代码中为 0 处 |
| `readCString` 是否还有无界读 | 无；`readByteArray(MAX_TEXT)` 作为上界 |
| 是否新增写内存 / `Interceptor.replace` / `NativeFunction` / 网络 | 均无（grep 命中 0） |
| H1 参数映射 | `args[1]=sessionId`、`args[2]=text`、`args[3]=isFinished`（未改） |
| H1 分类 | `isFinished=0 → partial`、`=1 → final`（未改） |
| H2 | 分支未改（仍用自己的 `args[1]` 作为 sessionId） |

---

## 4. 真机冒烟（2 个独立会话）

命令：`python t504_host_runner.py t504_asr_text_probe.js 16112 55 P1.log`，同时播放
`唤醒词 → 现在几点了`、`唤醒词 → 今天天气怎么样`（电脑 MediaPlayer，音量 1.0）。

### 4.1 H1（主钩子，未改）

| sessionId | partial | final | final 文本 |
|---|---|---|---|
| 1967268 | 6 | 1 | 天猫精灵现在几点了 |
| 1967272 | 7 | 1 | 天猫精灵今天天气怎么样 |

### 4.2 H3/H4（修复后）

```
2026-11-20 11:00:49.318 H4 sid=null corr=not_available_in_hook_arguments type=unclassified chars=2 bytes=6 logid=<redacted> text=天猫
2026-11-20 11:00:49.322 H3 sid=null corr=not_available_in_hook_arguments type=unclassified chars=2 bytes=6 text=天猫
2026-11-20 11:00:53.434 H4 sid=null corr=not_available_in_hook_arguments type=unclassified chars=5 bytes=15 logid=<redacted> text=天猫精灵现
```

断言：H3/H4 记录中 `session_id != null` 或 `result_type != 'unclassified'` 的条数 = **0**；H4 每条都带 `asr_log_id`。

### 4.3 计数与错误

| 指标 | 值 |
|---|---|
| 总命中 | 58（H1 15 / H2 15 / H3 13 / H4 15；H1 = 13 partial + 2 final） |
| `read_errors` | **0** |
| `hook_errors` | **0** |
| 4 个 Hook 的 base+offset 校验 | 全部 match |

### 4.4 原厂功能

| 检查 | 结果 |
|---|---|
| 唤醒 | 两次均 0.7+ 触发 |
| NLU + TTS | 会话 1967268 → TTS「现在是上午十一点整。」；1967272 → TTS「今天昌平区多云转晴，-2…」 |
| 重复播报 | 每会话 1 次 `onTtsStart`（共 2 次） |
| 崩溃/ANR | 0 次 FATAL / 0 次 ANR |
| core 进程 | PID 16112 前后一致，未重启 |
| 测试后 | 运行器到点自动 detach，`run_probe` 无残留进程；未设置任何开机自启 |

原始证据：[`t504_p1_smoke_hits.jsonl`](t504_p1_smoke_hits.jsonl)、[`t504_p1_logcat_extract.txt`](t504_p1_logcat_extract.txt)。

---

## 5. 结论

- 两个问题都已修复：读取有上界；H3/H4 不再跨线程猜 session，改为显式的"参数里没有"。
- H1/H2 行为与 T5-04 原报告一致，`partial/final`、`sessionId` 语义未变。
- 真机冒烟通过（2 会话、0 读错误、原厂功能正常、已 detach）。
- 待评审确认的唯一偏差：`readUtf8String(MAX_TEXT)` 在本机 frida 上抛异常，改用等价的"有界字节读 + NUL 定位 + 已知长度解码"（详见 §1.3）。
