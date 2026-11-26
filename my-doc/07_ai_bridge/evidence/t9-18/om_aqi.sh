#!/system/bin/sh
curl -sS --connect-timeout 25 --max-time 40 \
  -o /data/local/tmp/t9_18_aqi.json \
  -w "aqiHTTP=%{http_code}t=%{time_total}s\n" \
  "https://air-quality-api.open-meteo.com/v1/air-quality?latitude=39.9042&longitude=116.4074&current=pm10,pm2_5,carbon_monoxide,nitrogen_dioxide,sulphur_dioxide,ozone,us_aqi&timezone=Asia%2FShanghai"