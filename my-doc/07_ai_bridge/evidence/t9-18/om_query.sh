#!/system/bin/sh
curl -sS --connect-timeout 25 --max-time 40 \
  -o /data/local/tmp/t9_18_om_bj.json \
  -w "omHTTP=%{http_code}t=%{time_total}s\n" \
  "https://api.open-meteo.com/v1/forecast?latitude=39.9042&longitude=116.4074&current=temperature_2m,relative_humidity_2m,apparent_temperature,weather_code,wind_speed_10m,wind_direction_10m&hourly=temperature_2m,precipitation_probability,weather_code&daily=weather_code,temperature_2m_max,temperature_2m_min,precipitation_probability_max&timezone=Asia%2FShanghai&forecast_days=4"