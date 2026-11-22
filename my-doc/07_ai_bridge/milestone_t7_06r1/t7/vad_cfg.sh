#!/system/bin/sh
# vad_cfg.sh -- 原厂判停参数（只读；本轮不改）
echo "=== props ==="
getprop | grep -iE 'pause|vad|asr' | head -10
echo "=== devicesetting xml ==="
for f in /data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/*.xml; do
  case "$f" in
    *setting*|*device*) echo "--- $f ---"; grep -oE 'name="[^"]*(pause|Pause|vad|Vad|ASRStop)[^"]*"[^/]*' "$f" 2>/dev/null | head -8 ;;
  esac
done
echo "=== any config file with pauseTime ==="
grep -rl 'localASRPauseTime' /data/data/com.alibaba.ailabs.genie.smartapp 2>/dev/null | head -3
