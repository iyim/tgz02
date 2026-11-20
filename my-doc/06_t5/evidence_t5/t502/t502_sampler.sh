#!/system/bin/sh
# t502_sampler.sh -- 以 100 ms 周期采样 watch 目录内 WAV 的 (时间戳, 文件名, 字节数)
# 仅读取，不写 watch 目录，用于证明 T4 写盘期间文件是"边写边长"的。
set -u

DIR=${1:-/data/local/tmp/t4/segments_t502}
OUT=${2:-/data/local/tmp/t4/t502_growth.log}
N=${3:-350}

i=0
: > "$OUT"

while [ "$i" -lt "$N" ]; do
    t=$(date +%s%N)
    for f in "$DIR"/*.wav; do
        [ -f "$f" ] || continue
        sz=$(stat -c %s "$f" 2>/dev/null)
        echo "$t ${f##*/} $sz" >> "$OUT"
    done
    sleep 0.1
    i=$((i + 1))
done

echo "SAMPLER_END $(date +%s%N)" >> "$OUT"
