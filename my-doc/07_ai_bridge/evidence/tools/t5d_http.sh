#!/system/bin/sh
# t5d_http.sh -- T5-06A: ??????????? HTTPS ?????????
probe() {
  url="$1"
  out=$(curl -s -m 10 -w '\n%{http_code}' "$url" 2>&1)
  code=$(echo "$out" | tail -n 1)
  body=$(echo "$out" | sed '$d' | head -c 200 | tr '\n' ' ')
  echo "URL  $url"
  echo "CODE $code"
  echo "BODY $body"
  echo
}
probe https://www.baidu.com/
probe https://api.deepseek.com/
probe https://api.deepseek.com/v1/models
probe https://dashscope.aliyuncs.com/compatible-mode/v1/models
probe https://ark.cn-beijing.volces.com/api/v3/models
probe https://api.openai.com/v1/models
