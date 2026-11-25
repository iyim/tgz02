#!/system/bin/sh
# T9-01 C: backup of the components actually in use (no writes to live files)
B=/data/local/tmp/t9/backup
rm -rf $B; mkdir -p $B/bin $B/sh $B/conf $B/state
copy() {
  src="$1"; dst="$B/$2"
  if [ -f "$src" ]; then cp -p "$src" "$dst" && echo "OK   $src -> $dst"; else echo "MISS $src"; fi
}
echo "### date"; date '+%Y-%m-%d %H:%M:%S'
echo "### binaries"
copy /data/local/tmp/t6/tg_supervisor                bin/tg_supervisor
copy /data/local/tmp/t8/tg_injector                  bin/tg_injector
copy /data/local/tmp/t7/libtg_ttsguard_t8155r.so     bin/libtg_ttsguard_t8155r.so
copy /data/local/tmp/t8/libtg_hook.so                bin/libtg_hook.so
copy /data/local/tmp/t5_bridge/tgb_bridge            bin/tgb_bridge
copy /data/local/tmp/t5_bridge/bin/ai_worker         bin/ai_worker
copy /data/local/tmp/t5_bridge/tts_exec.dex          bin/tts_exec.dex
echo "### scripts"
copy /data/local/tmp/t5_bridge/run_ai_worker.sh      sh/run_ai_worker.sh
copy /data/local/tmp/t5_bridge/run_bridge.sh         sh/run_bridge.sh
copy /data/local/tmp/t5_bridge/run_tts_exec.sh       sh/run_tts_exec.sh
copy /data/local/tmp/t5_bridge/tts_supervisor.sh     sh/tts_supervisor.sh
copy /data/adb/service.d/a.sh                        sh/a.sh
echo "### configs"
copy /data/local/tmp/t7/renew.conf                   conf/renew.conf
copy /data/local/tmp/t5_bridge/ai_worker/worker.conf conf/worker.conf
echo "### state"
copy /data/local/tmp/t7/continuity.req               state/continuity.req
copy /data/local/tmp/t5_bridge/tts/state.json        state/tts_state.json
copy /data/local/tmp/t5_bridge/tts/play.public.json  state/play.public.json
copy /data/local/tmp/t5_bridge/ai_worker/consumer_state.json state/consumer_state.json
copy /data/local/tmp/t5_bridge/ai_worker/context.json        state/context.json
echo "### verification (sizes + sha256) of backup copies"
cd $B && find . -type f | sort | while read f; do
  printf '%s\t%s\t%s\n' "$(sha256sum "$f" | cut -d' ' -f1)" "$(stat -c %s "$f")" "$f"
done > $B/MANIFEST.tsv
cat $B/MANIFEST.tsv
echo "### live-file sha256 (same list, computed from the live paths)"
for f in /data/local/tmp/t6/tg_supervisor /data/local/tmp/t8/tg_injector /data/local/tmp/t7/libtg_ttsguard_t8155r.so /data/local/tmp/t8/libtg_hook.so /data/local/tmp/t5_bridge/tgb_bridge /data/local/tmp/t5_bridge/bin/ai_worker /data/local/tmp/t5_bridge/tts_exec.dex /data/local/tmp/t5_bridge/run_ai_worker.sh /data/local/tmp/t5_bridge/run_bridge.sh /data/local/tmp/t5_bridge/run_tts_exec.sh /data/local/tmp/t5_bridge/tts_supervisor.sh /data/adb/service.d/a.sh /data/local/tmp/t7/renew.conf /data/local/tmp/t5_bridge/ai_worker/worker.conf; do
  sha256sum "$f"
done
echo "### running-process exe hashes (must match the backup)"
for p in 13193 31289 2586 21569 17257; do
  e=$(readlink /proc/$p/exe)
  printf 'pid=%s exe=%s ' $p "$e"
  sha256sum "$e" 2>/dev/null || echo "(not hashable)"
done
echo "### backup total"
du -sk $B
