# T5-06A · C：模型接口兼容性调查（只收集事实，不使用任何凭据）

**方法**：
1. **设备侧无凭据探测**（VERIFIED，唯一"活"证据）：从 TG-Z02 用 `curl` 打各家的
   OpenAI 兼容路径，**不带 Authorization**，只记录状态码和错误 JSON；
   原始输出：`evidence/device_http_probe.txt`。
2. **公开文档**（STATIC）：DeepSeek 官方 API 文档、阿里云百炼"OpenAI Chat 接口兼容"文档、
   火山方舟"兼容 OpenAI SDK"文档、OpenAI 官方 Chat Completions 参考。

**没有做**：没有调用任何需要付费/需要 key 的接口；没有申请、没有写入任何 key。

---

## C0. 一句话总表

| 服务 | Chat Completions | 设备可达 | 认证 | 流式 | 错误体形状 | 结论标记 |
|---|---|---|---|---|---|---|
| OpenAI 兼容模式（通用） | 是（`POST {base}/chat/completions`） | — | `Authorization: Bearer <key>` | SSE | `{"error":{"message","type","param","code"}}` | STATIC |
| **DeepSeek** | 是（`POST https://api.deepseek.com/chat/completions`） | **可达**（23 ms，401） | Bearer | 是（`text/event-stream`） | `{"error":{"message","type","param","code"}}` | VERIFIED + STATIC |
| **阿里云百炼 / 通义千问** | 是（`POST {base}/compatible-mode/v1/chat/completions`） | **可达**（27 ms，401） | Bearer | 是（OpenAI 兼容） | `{"error":{"message","type","param","code"}}` | VERIFIED + STATIC |
| **豆包 / 火山方舟 Ark** | 是（`POST https://ark.cn-beijing.volces.com/api/v3/chat/completions`） | **可达**（31 ms，401） | Bearer（另支持 AK/SK 签名，见 C4） | 是 | `{"error":{"code","message","param","type"}}` ← **字段顺序/语义与上面三家不同** | VERIFIED + STATIC |
| OpenAI 官方 | 是 | **不可达**（TCP 超时 / IPv6 unreachable） | Bearer | SSE | 同上 | VERIFIED（不可达） |

---

## C1. 是否支持 Chat Completions — VERIFIED（设备实测响应）/ STATIC（文档）

设备侧实测（`evidence/device_http_probe.txt`，全部**无凭据**）：

```
URL  https://api.deepseek.com/v1/models
CODE 401
BODY {"error":{"message":"Authentication Fails (governor) (request_id: 2dfc9713-... )",
      "type":"authentication_error","param":null,"code":"invalid_request_error"}}

URL  https://dashscope.aliyuncs.com/compatible-mode/v1/models
CODE 401
BODY {"error":{"message":"You didn't provide an API key. You need to provide your API key in an
      Authorization header using Bearer auth (i.e. Authorization: Bearer YOUR_KEY). ",
      "type":"invalid_request_error",...}}

URL  https://ark.cn-beijing.volces.com/api/v3/models
CODE 401
BODY {"error":{"code":"AuthenticationError","message":"the API key or AK/SK in the request is
      missing or invalid. request id: 021795162871672b...","param":"","type":"Unauthorized"}}

URL  https://api.openai.com/v1/models
CODE 000        ← 连接超时（不是 401，是根本连不上）
```

**这三条 401 恰好证明了访问点的真实存在**：路径 `/compatible-mode/v1`、`/api/v3`
在本机网络里都是活的，且都认 **Bearer**。`/v1/models` 只是探针用的无副作用端点，
不代表只能调 models——`/chat/completions` 是同一套路由（STATIC）。

---

## C2. 请求 JSON 的主要结构 — STATIC（文档 + 三家兼容声明）

四家共用的核心（OpenAI Chat Completions 契约）：

```json
POST {base}/chat/completions
Content-Type: application/json
Authorization: Bearer <API_KEY>

{
  "model": "<model-name>",
  "messages": [
    {"role": "system", "content": "..."},
    {"role": "user",   "content": "..."},
    {"role": "assistant", "content": "..."}
  ],
  "stream": false,
  "temperature": 0.7,
  "top_p": 1.0,
  "max_tokens": 512,
  "stop": ["\n\n"],
  "seed": 12345
}
```

各家的差异（**只在个别字段**，其余同构）：

| 字段 | OpenAI | DeepSeek | 通义（百炼兼容模式） | 豆包（Ark v3） | 备注 |
|---|---|---|---|---|---|
| `model` | 模型名（`gpt-*`） | 模型名（以官方模型列表为准） | 模型名（如 `qwen-*`，以"支持的模型列表"为准） | **可以是推理接入点 ID（`ep-...`）或模型名** | 具体可用名必须查各家控制台，本轮不猜（UNKNOWN） |
| `max_tokens` | 有（新版另有 `max_completion_tokens`） | 有 | 有 | 有 | 若统一适配层，建议只用 `max_tokens`，并在 profile 里允许改名 |
| `stream_options.include_usage` | 有 | 未见保证（UNKNOWN） | UNKNOWN | UNKNOWN | 不依赖它拿 token 统计 |
| `messages[].content` 数组形式（多模态） | 有 | 有（image_url/file 等，见其 schema） | 有 | 有 | 第一版只用纯文本 `string` 最稳 |
| `tools/tool_choice` | 有 | 有 | 有 | 有 | 第一版不用（避免各家差异） |
| `seed` / `presence_penalty` 等 | 有 | 部分 | 部分 | 部分 | 非必需字段，避免依赖 |
| 额外必填 | — | — | 部分模型**不支持 HTTP 直调**（400 `current user api does not support http call`） | — | 选模型时要避开这类（STATIC，来自百炼文档） |

---

## C3. 返回 JSON 的主要结构 — STATIC（DeepSeek 有官方示例，其余同构）

**非流式（`stream=false`）**：

```json
{
  "id": "88beaa90-...",
  "object": "chat.completion",
  "created": 1793084842,
  "model": "deepseek-flash",
  "choices": [
    {"index": 0,
     "message": {"role": "assistant", "content": "Hello! 👋 How can I help you today?"},
     "logprobs": null,
     "finish_reason": "stop"}
  ],
  "usage": {
    "prompt_tokens": 7, "completion_tokens": 11, "total_tokens": 18,
    "prompt_tokens_details": {"cached_tokens": 0},
    "prompt_cache_hit_tokens": 0, "prompt_cache_miss_tokens": 7
  },
  "system_fingerprint": "e72d3c7f..."
}
```

（上面这段来自 DeepSeek 官方文档的 200 示例，见
<https://api-docs.deepseek.com/api/create-chat-completion>）

- 取文本：`choices[0].message.content`；判结束：`choices[0].finish_reason`（`stop`/`length`/…）。
- `usage` 里 **DeepSeek 有额外的缓存字段**（`prompt_cache_hit_tokens`/`miss`），
  其余家没有 → 适配层要按"可选字段"处理。
- **流式（`stream=true`）**：`Content-Type: text/event-stream`，每个事件是
  `data: {json}\n\n`，增量在 `choices[0].delta.content`（首块可能是 `delta.role`），
  最后 `data: [DONE]\n\n`（OpenAI 契约；三家兼容模式都沿用，STATIC）。

```
data: {"id":"...","object":"chat.completion.chunk","choices":[{"index":0,"delta":{"content":"你"},"finish_reason":null}]}
data: {"id":"...","choices":[{"index":0,"delta":{"content":"好"},"finish_reason":null}]}
data: [DONE]
```

---

## C4. API Key 的认证方式 — VERIFIED（设备 401 的提示语）+ STATIC（文档）

- 统一形式：HTTP 头 `Authorization: Bearer <API_KEY>`。
  - 百炼的 401 消息直接点名："You need to provide your API key in an Authorization header
    using Bearer auth (i.e. Authorization: Bearer YOUR_KEY)"（设备实测）。
  - DeepSeek 文档：`bearerAuth`，`Authorization: Bearer <API_KEY>`（STATIC）。
- 火山方舟另外支持 **AK/SK 签名**（它的 401 文案是 "the API key or AK/SK in the request is
  missing or invalid"）→ 若只走 Bearer，用 API Key 即可；AK/SK 签名路径本轮未验证（UNKNOWN）。
- 共同点：**key 只出现在请求头**，不放进 URL、不放进 body。→ 适配层应把 key 作为
  "请求头注入"，并保证日志不打印该头（见风险文档 R1）。

---

## C5. 流式输出是否支持 — 全部支持（STATIC，除 OpenAI 未实测）

| 家 | 流式 | 协议 | 备注 |
|---|---|---|---|
| DeepSeek | 是 | `text/event-stream` + chunk 数组（官方 schema 有 `CreateChatCompletionStreamResponse`） | 与 OpenAI 同构 |
| 通义（百炼兼容模式） | 是 | OpenAI 兼容 SSE | 与 OpenAI 同构 |
| 豆包（Ark v3） | 是 | OpenAI 兼容 SSE | 与 OpenAI 同构 |
| OpenAI | 是 | SSE + `data: [DONE]` | 本机网络不可达（VERIFIED） |

第一版建议**先用非流式**（`stream=false`）：实现简单、超时/上限好控、错误处理单一；
等整条链路稳定后再开流式（TTS 前置分句时才真正需要低延迟）。

---

## C6. 超时与错误响应

**设备实测的错误体**（都是 401，但形状不同——这是适配层必须归一化的点）：

| 家 | 错误体 | 关键字段 |
|---|---|---|
| DeepSeek | `{"error":{"message":"Authentication Fails …","type":"authentication_error","param":null,"code":"invalid_request_error"}}` | `error.type` + `error.code` |
| 通义（百炼） | `{"error":{"message":"You didn't provide an API key…","type":"invalid_request_error","code":…}}` | 同上 |
| 豆包（Ark） | `{"error":{"code":"AuthenticationError","message":"…","param":"","type":"Unauthorized"}}` | **`code` 是业务码、`type` 是 HTTP 语义**，与上面两家相反 |

归一化建议（STATIC）：统一抽出 `http_status` + `vendor_code` + `vendor_type` + `message`，
对外只暴露 `{kind: auth|rate_limit|bad_request|server|network, code, message, retryable}`。

**文档给出的状态码语义**（百炼文档，可直接借用为通用分类）：

| 状态码 | 语义 | 是否可重试 |
|---|---|---|
| 400 | 请求错误（含"模型不支持 HTTP 直调"） | 否（改请求） |
| 401 | key 错误/缺失 | 否（换 key） |
| 429 | QPS/额度超限 | 是（退避 + 尊重 `Retry-After`） |
| 500 / 503 | 服务端错误/过载 | 是（指数退避 + 上限） |

**超时**：四家都**没有**给客户端保底延迟承诺（STATIC）。因此：
- 连接超时 3–5 s、首字节超时 10–15 s、总超时 20–30 s（建议值，待 ChatGPT 定）；
- 必须自己实现"响应体大小上限"（模型可能回很长），超限即断开；
- 非流式下一次失败最多重试 1–2 次；流式中途断流按"已收内容是否可用"决定是否续接
  （当前无 resume 协议，UNKNOWN 各家是否支持 `stream` 续传 → 按不支持处理）。

---

## C7. 不同服务商的参数差异（汇总）

1. **base_url 与路径**：`/chat/completions` 之前在各家分别有 `/`（DeepSeek 可直接
   `https://api.deepseek.com/chat/completions`，也兼容 `/v1/chat/completions`，STATIC）、
   `/compatible-mode/v1`（百炼）、`/api/v3`（Ark）。
2. **模型名 vs 接入点 ID**：Ark 的 `model` 可以是 `ep-xxxx` 形式；别家是模型名。
3. **错误体字段摆放**：`type`/`code` 语义相反（见 C6）。
4. **usage 附加字段**：DeepSeek 有 cache 命中/未命中计数。
5. **个别模型限制**：百炼有模型不支持 HTTP 直调；各家对 `max_tokens` 上限不同。
6. **网络可达性**：`api.openai.com` 在本机不可达（VERIFIED），国内三家可达（VERIFIED）。

→ 结论：**一个适配层足够**。建议拆成"通用请求构造器 + 每家 ≤10 行的 profile
（base_url / 默认 model / 错误字段映射 / 少数参数改名）"，不要在业务层写 if-else。
（这是候选做法，最终形态由 ChatGPT 定。）
