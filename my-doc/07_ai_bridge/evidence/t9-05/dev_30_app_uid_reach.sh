#!/system/bin/sh
# T9-05: what can the NORMAL app uid actually reach on the existing accepted chain?
# run-as executes as the probe app's own uid (no root), so this measures the app's permissions,
# not the shell's.
PKG=com.tgz02.providerprobe
echo "=== date"; date
echo "=== app uid"
run-as $PKG id
echo "=== read play.public.json (completion state of the accepted executor)"
run-as $PKG cat /data/local/tmp/t5_bridge/tts/play.public.json 2>&1 | head -14
echo "=== try to WRITE into the accepted queue (this is the submit path)"
run-as $PKG sh -c 'echo "{\"v\":1}" > /data/local/tmp/t5_bridge/tts/queue/probe_from_ui.json' 2>&1
echo "write_exit=$?"
ls -l /data/local/tmp/t5_bridge/tts/queue 2>/dev/null | head -3
echo "=== try to READ the journal (正文/统计?)"
run-as $PKG head -2 /data/local/tmp/t5_bridge/tts/journal.jsonl 2>&1
echo "=== can the app resolve the provider URI at all?"
run-as $PKG sh -c 'cmd content query --uri content://com.alibaba.ailabs.genie.assistant.provider/GenieApi --where x 2>&1 | head -3'
echo "=== END"
