#!/system/bin/sh
# asr_inventory.sh -- T7-07 READ-ONLY inventory of the factory ASR stack.
# Only reads: pm/ls/find/cat/getprop/dumpsys. Writes nothing, starts nothing, kills nothing.
echo "== 1. time / identity =="
date
getprop ro.product.model; getprop ro.build.version.release; getprop ro.build.version.sdk
getprop ro.product.cpu.abi; getprop ro.product.cpu.abilist
echo

echo "== 2. candidate packages =="
pm list packages -f 2>/dev/null | grep -i -E 'ailabs|smartapp|genie|alibaba|speech|asr|voice|tvsp|nls|iflytek|baidu'
echo

echo "== 3. all third-party packages (for context) =="
pm list packages -3
echo

echo "== 4. /system/app + priv-app dirs =="
ls -l /system/app | head -60
echo "-- priv-app --"
ls -l /system/priv-app | head -60
echo

echo "== 5. smartapp package tree (lib/ + files/) =="
ls -l /system/app/smartapp 2>/dev/null
ls -l /system/app/smartapp/lib 2>/dev/null
ls -l /system/app/smartapp/lib/arm 2>/dev/null
echo

echo "== 6. native libs matching asr/speech/nls/vad/kws =="
find /system /vendor /data/app -maxdepth 8 -type f -name '*.so' 2>/dev/null \
  | grep -i -E 'asr|speech|nls|vad|kws|wake|voice|smartbox|audio|frontend|fe_|opus|kaldi|onnx|mnn|tflite|nn' \
  | head -120
echo

echo "== 7. every .so shipped inside the smartapp apk dir (with size) =="
find /system/app/smartapp -type f 2>/dev/null | head -200
echo

echo "== 8. apk / jar / dex anywhere in /system (name only, bounded) =="
find /system -maxdepth 6 -type f \( -name '*.apk' -o -name '*.jar' -o -name '*.dex' -o -name '*.odex' -o -name '*.vdex' -o -name '*.oat' \) 2>/dev/null | head -150
echo

echo "== 9. model / data blobs (bounded, name+size) =="
find /system /vendor /data/vendor -maxdepth 7 -type f \
  \( -iname '*model*' -o -iname '*.bin' -o -iname '*.dat' -o -iname '*.onnx' -o -iname '*.mnn' -o -iname '*.tflite' -o -iname '*.kaldi' -o -iname '*.mdl' -o -iname '*.fst' -o -iname '*.dict' \) \
  2>/dev/null | head -120
echo

echo "== 10. smartapp private data dirs =="
ls -l /data/data/com.alibaba.ailabs.genie.smartapp 2>/dev/null
echo "-- files --"
ls -l /data/data/com.alibaba.ailabs.genie.smartapp/files 2>/dev/null | head -40
echo "-- shared_prefs --"
ls -l /data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs 2>/dev/null
echo

echo "== 11. running processes of interest =="
ps -A -o PID,PPID,USER,NAME,ARGS 2>/dev/null | grep -i -E 'smartapp|ailabs|tgb|ai_worker|tts_exec|tg_supervisor|tg_injector' | grep -v grep
echo

echo "== 12. :core maps (only our libs + factory speech libs) =="
for p in $(pidof com.alibaba.ailabs.genie.smartapp:core); do
  echo "-- pid $p maps --"
  grep -E 'libtg_|libsmartbox|libnls|asr|speech|vad|kws|onnx|mnn' /proc/$p/maps 2>/dev/null | awk '{print $6}' | sort -u
done
echo

echo "== 13. audio / mic props =="
getprop | grep -i -E 'asr|speech|wake|mic|audio' | head -40
echo

echo "== 14. runtime.xml (factory ASR/VAD config, read-only) =="
for f in /data/data/com.alibaba.ailabs.genie.smartapp/files/runtime.xml \
         /data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/*.xml ; do
  [ -f "$f" ] && { echo "-- $f --"; ls -l "$f"; }
done
echo "== done =="
