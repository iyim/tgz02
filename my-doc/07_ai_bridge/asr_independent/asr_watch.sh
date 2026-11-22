#!/system/bin/sh
# asr_watch.sh -- T7-08 task B: READ-ONLY sampler of the ASR channel decision inputs.
# Samples once per second for N seconds (default 900) and appends one CSV line per sample:
#   epoch_ms core_pid libaceAsr libmodel.bin libconfigure.bin libunet libvad_api 443_estab volume_ok
# Writes only to /data/local/tmp/t7/asr_watch.log ; starts nothing, kills nothing, changes nothing.
OUT=/data/local/tmp/t7/asr_watch.log
N=${1:-900}
i=0
: > "$OUT"
while [ $i -lt $N ]; do
  p=$(pidof com.alibaba.ailabs.genie.smartapp:core)
  if [ -n "$p" ] && [ -r /proc/$p/maps ]; then
    a=$(grep -c 'libaceAsr\.so' /proc/$p/maps 2>/dev/null)
    b=$(grep -c 'libmodel\.bin\.so' /proc/$p/maps 2>/dev/null)
    c=$(grep -c 'libconfigure\.bin\.so' /proc/$p/maps 2>/dev/null)
    d=$(grep -c 'libunet\.so' /proc/$p/maps 2>/dev/null)
    e=$(grep -c 'libvad_api\.so' /proc/$p/maps 2>/dev/null)
  else
    p=0; a=0; b=0; c=0; d=0; e=0
  fi
  t=$(cut -d. -f1 /proc/uptime)
  ms=$((t*1000))
  conn=$(cat /proc/net/tcp /proc/net/tcp6 2>/dev/null | grep -c '01BB 01 ')
  echo "$ms $p $a $b $c $d $e $conn" >> "$OUT"
  i=$((i+1))
  sleep 1
done
echo "done $N samples" >> "$OUT"
