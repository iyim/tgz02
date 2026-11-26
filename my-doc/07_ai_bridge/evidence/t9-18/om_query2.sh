#!/system/bin/sh
curl -sS --connect-timeout 25 --max-time 40 \
  -o /data/local/tmp/t9_18_om_tokyo.json \
  -w "tokyoHTTP=%{http_code}t=%{time_total}s\n" \
  "https://api.open-meteo.com/v1/forecast?latitude=35.6895&longitude=139.6917&current=temperature_2m,apparent_temperature,weather_code&daily=weather_code,temperature_2m_max,temperature_2m_min,precipitation_probability_max&timezone=Asia%2FTokyo&forecast_days=4"
curl -sS --connect-timeout 25 --max-time 40 \
  -o /data/local/tmp/t9_18_om_sh.json \
  -w "shanghaiHTTP=%{http_code}t=%{time_total}s\n" \
  "https://api.open-meteo.com/v1/forecast?latitude=31.2304&longitude=121.4737&current=temperature_2m,apparent_temperature,weather_code&daily=weather_code,temperature_2m_max,temperature_2m_min,precipitation_probability_max&timezone=Asia%2FShanghai&forecast_days=4"
curl -sS --connect-timeout 25 --max-time 40 \
  -o /data/local/tmp/t9_18_geo.json \
  -w "geoHTTP=%{http_code}t=%{time_total}s\n" \
  "https://geocoding-api.open-meteo.com/v1/search?name=%E5%8C%97%E4%BA%AC&count=1&language=zh&format=json"