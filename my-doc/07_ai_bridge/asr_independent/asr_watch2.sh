#!/system/bin/sh
# asr_watch2.sh -- T7-09 high-rate READ-ONLY sampler of the ASR channel decision inputs.
#
#   asr_watch2.sh [samples] [interval_ms]      (default 12000 x 100 ms)
#
# What it does: 每轮读一次 /proc/<core>/maps 与 443 连接数，追加一行到 asr_watch2.log。
# 不做任何写系统状态的事：不建/改原厂文件、不重启、不注入、不调用任何原厂接口。
#
# CSV 列：
#   uptime_ms  core_pid  libaceAsr  libmodel.bin  libconfigure.bin  libunet  libvad_api  443_estab
#   - 库列是 0/1 存在性（一次映射与多次映射对"是否加载"没有区别，这样可以少起进程）；
#   - uptime_ms 取自 /proc/uptime 的小数部分，毫秒级；
#   - 443_estab 每 5 轮更新一次（其余轮沿用上次值，用 stale 标记列标出：见第 9 列）。
#
# 关于采样周期（实测，见文件尾的 # rate 行）：
#   这台机器的 `grep -c` 扫 211 KB 的 maps 要约 77 ms，`sleep 0.1` 实测约 150 ms，
#   所以"100 ms 间隔"在设备上做不到；实际周期约 250~400 ms（≈3 Hz）。
#   这个速率对"识别期间本地引擎是否加载"这个问题足够：一次识别至少持续 2 s，
#   引擎一旦加载会持续到整轮结束，3 Hz 采样不可能整段漏掉。**但仍不能排除瞬时加载**，
#   报告里必须这样写，不许把"没采到"直接说成"没加载"。
#
# 提前停止：touch /data/local/tmp/t7/asr_watch2.stop
OUT=/data/local/tmp/t7/asr_watch2.log
STOP=/data/local/tmp/t7/asr_watch2.stop
N=${1:-12000}
IV=${2:-100}
ivs=$((IV / 1000)).$((IV % 1000 / 100))

: > "$OUT"
echo "# asr_watch2 samples=$N interval_ms=$IV host_start=$(date +%s)" >> "$OUT"

i=0
prev_ms=0
min_gap=999999
max_gap=0
sum_gap=0
gaps=0
conn=0
while [ $i -lt $N ]; do
  [ -f "$STOP" ] && break

  read up rest < /proc/uptime
  sec=${up%%.*}
  frac=${up#*.}
  case ${#frac} in
    1) frac="${frac}00" ;;
    2) frac="${frac}0" ;;
  esac
  ms=$((sec * 1000 + 10#${frac:0:3}))

  p=$(pidof com.alibaba.ailabs.genie.smartapp:core)
  if [ -n "$p" ] && [ -r /proc/$p/maps ]; then
    maps=$(cat /proc/$p/maps 2>/dev/null)
    case "$maps" in *libaceAsr.so*)        a=1 ;; *) a=0 ;; esac
    case "$maps" in *libmodel.bin.so*)     b=1 ;; *) b=0 ;; esac
    case "$maps" in *libconfigure.bin.so*) c=1 ;; *) c=0 ;; esac
    case "$maps" in *libunet.so*)          d=1 ;; *) d=0 ;; esac
    case "$maps" in *libvad_api.so*)       e=1 ;; *) e=0 ;; esac
  else
    p=0; a=0; b=0; c=0; d=0; e=0
  fi

  # 443 每 5 轮数一次：两次 grep 就要 68 ms，没必要每轮都付这个成本
  if [ $((i % 5)) -eq 0 ]; then
    c1=$(grep -c '01BB 01 ' /proc/net/tcp 2>/dev/null)
    c2=$(grep -c '01BB 01 ' /proc/net/tcp6 2>/dev/null)
    conn=$((c1 + c2))
    stale=0
  else
    stale=1
  fi

  echo "$ms $p $a $b $c $d $e $conn $stale" >> "$OUT"

  if [ $prev_ms -gt 0 ]; then
    gap=$((ms - prev_ms))
    gaps=$((gaps + 1))
    sum_gap=$((sum_gap + gap))
    [ $gap -lt $min_gap ] && min_gap=$gap
    [ $gap -gt $max_gap ] && max_gap=$gap
  fi
  prev_ms=$ms

  i=$((i + 1))
  sleep "$ivs"
done

if [ $gaps -gt 0 ]; then
  echo "# rate samples=$i min_gap_ms=$min_gap avg_gap_ms=$((sum_gap / gaps)) max_gap_ms=$max_gap host_end=$(date +%s)" >> "$OUT"
else
  echo "# rate samples=$i host_end=$(date +%s)" >> "$OUT"
fi
