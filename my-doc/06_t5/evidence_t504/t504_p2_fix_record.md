# T5-04 P2 修复记录（C 字符串读取不再跨页整段读取）

- 修改文件：`my-doc/06_t5/evidence_t504/t504_asr_text_probe.js`（仅此一个文件）
- 执行时间：2026-11-20 11:08–11:12（CST）
- 设备：AILABS_S1L / `com.alibaba.ailabs.genie.smartapp:core`（PID 16112，全程未重启）
- frida：host 16.7.19 ↔ `/data/local/tmp/fs32` 16.7.19

---

## 1. 改动

`readCString()` 由「`readByteArray(MAX_TEXT)` 一次性取 512 字节再定位 NUL」改为「逐字节 `readU8`，遇 NUL 立即返回」：

```javascript
function readCString(p) {
  if (p.isNull()) return '';

  var n = 0;

  while (n < MAX_TEXT) {
    if (p.add(n).readU8() === 0) {
      return n === 0 ? '' : p.readUtf8String(n);
    }
    n++;
  }

  throw new Error('unterminated C string within MAX_TEXT bound');
}
```

要点：

- 读取上界仍是 `MAX_TEXT`（512）：循环条件 `n < MAX_TEXT`，超限抛错（上层记为 `read_errors`）；
- 遇到 NUL 立即停止，实际访问长度 = 字符串字节数 + 1，不会把 512 字节窗口整体读入；
- 因此不再有"跨页整段读取"导致的一次性失败；
- null 指针处理保留；
- `readStdString`（H3/H4 的 `std::string`）未改，仍是"已知长度解码 + 上限保护"。

---

## 2. 静态检查（全部在仓库文件上执行）

| 检查 | 结果 |
|---|---|
| `node --check t504_asr_text_probe.js` | exit 0 |
| 读取上限 | `while (n < MAX_TEXT)`，`MAX_TEXT = 512` |
| 遇 NUL 立即返回 | `if (p.add(n).readU8() === 0) return n === 0 ? '' : p.readUtf8String(n);` |
| 是否仍一次性读取整段 | 代码中 `readByteArray` 出现 **0 次**（仅注释里说明为什么不用它） |
| 新增写内存 / `Interceptor.replace` / `NativeFunction` / 网络 | 均无 |

---

## 3. 真机测试

### 3.1 第一次运行（tag `T504P2`）——**无效，已废弃，不计入通过**

现象：两轮播放只产生 1 个会话（1967279 = 今天天气怎么样）。
原因核查：logcat 显示第二轮唤醒正常（11:09:02.004 起），第一轮 11:08:48.861 也触发了唤醒，但
11:08:48–55 期间**没有** `onListenStarted` / `CloudASRManager: start` / `onStream:641` ——
即第一次唤醒没有打开聆听会话（原厂侧未起会话），探针在该窗口内自然零命中。
这不是探针读取失败（`read_errors=0`），而是测试激励侧的一次漏唤醒；该轮被判为无效实验并废弃。

### 3.2 第二次运行（tag `T504P2b`）——有效

播放：`唤醒词 → 现在几点了`（间隔 9 s）`唤醒词 → 今天天气怎么样`，探针 70 s 自动 detach。

| sessionId | partial | final | final 文本 | TTS |
|---|---|---|---|---|
| 1967284 | 6 | 1 | 天猫精灵现在几点了 | 「现在是上午十一点十分。」 |
| 1967288 | 8 | 1 | 天猫精灵今天天气怎么样 | 「今天昌平区多云转晴，-2度到8度…」 |

计数与错误：

| 指标 | 值 |
|---|---|
| 总命中 | 62（H1 16 / H2 16 / H3 14 / H4 16） |
| `read_errors` | **0** |
| `hook_errors` | **0** |
| 4 个 Hook 的 base+offset 校验 | 全部 match |
| 原厂 final 日志（`onStream:641 … isFinished = 1`） | 2 条，分别对应两个 sessionId |
| `onTtsStart` | 2 次（每会话 1 次，无重复播报） |
| FATAL / ANR | 0 / 0 |
| core PID | 16112 前后一致 |
| 测试后 | 运行器到点自动 detach，无残留 `run_probe` 进程，未设开机自启 |

原始证据：[`t504_p2_smoke_hits.jsonl`](t504_p2_smoke_hits.jsonl)、[`t504_p2_logcat_extract.txt`](t504_p2_logcat_extract.txt)。

---

## 4. 与 P1 的差异（行为对照）

| 项 | P1（readByteArray 整段） | P2（逐字节） |
|---|---|---|
| 单次访问长度 | 固定 512 字节 | 字符串长度 + 1 |
| 跨页风险 | 窗口跨越未映射页即整段失败 | 只逐字节访问，遇 NUL 即停 |
| 文本结果 | 正常 | 正常（本批 62 次命中 0 读失败） |
| 代价 | 1 次大读 | 最多 512 次 1 字节读（实测无可感知影响：唤醒→首个 partial，P2 为 324 / 382 ms，P1 为 329 / 296 ms，同一区间） |

---

## 5. 结论

- P2 改动按要求完成，读取上界仍是 `MAX_TEXT`，遇 NUL 立即停止，不再整段读取。
- 真机两个独立会话通过，H1 的 partial/final 与 sessionId 正常，`read_errors=0`、`hook_errors=0`。
- 原厂唤醒/NLU/TTS 正常，PID 未变，测试后已 detach。
- 第一次运行因原厂侧漏起会话被判无效并如实记录，未计入通过。
