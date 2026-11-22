#!/system/bin/sh
# asr_watch_chain.sh -- READ-ONLY: run asr_watch2.sh in segments and keep every segment.
#
#   asr_watch_chain.sh [segments] [samples_per_segment] [interval_ms]
#
# asr_watch2.sh truncates its own output file at start, so the chain copies the finished
# segment to asr_watch2.seg<N>.log before starting the next one. Nothing else is touched.
SEG=${1:-4}
N=${2:-3000}
IV=${3:-100}
i=0
while [ $i -lt $SEG ]; do
  sh /data/local/tmp/t7/asr_watch2.sh "$N" "$IV"
  cp -f /data/local/tmp/t7/asr_watch2.log "/data/local/tmp/t7/asr_watch2.seg$i.log"
  i=$((i + 1))
done
echo "chain done $(date +%s)" > /data/local/tmp/t7/asr_watch2.chain.done
