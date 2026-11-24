#!/system/bin/sh
# T9-06 acceptance E (+ accepted/stage re-check): entry security, fast version.
# Every submission below is created by the APP UID (run-as), i.e. the identity the channel polices.
UI=/data/local/tmp/t9_ui
IN=$UI/inbox
R=$UI/result
P=/data/local/tmp/t9/t9_06/payload
PKG=com.tgz02.uibridge
echo "=== date"; date
rm -f "$R"/*.json 2>/dev/null

put() {  # put <src> <event_id>
    run-as $PKG sh -c "cat $1 > /data/local/tmp/t9_ui/inbox/$2.json" 2>&1
    echo "put $2 exit=$?"
}

echo "=== 0. normal submit as the app uid"
run-as $PKG sh -c 'printf "%s" "{\"v\":1,\"event_id\":\"ui-ok1\",\"text\":\"正常提交\"}" > /data/local/tmp/t9_ui/inbox/.ui-ok1.tmp && mv /data/local/tmp/t9_ui/inbox/.ui-ok1.tmp /data/local/tmp/t9_ui/inbox/ui-ok1.json'
sleep 2
echo "result: $(cat $R/ui-ok1.json 2>/dev/null)"

echo "=== 1. broken json"
run-as $PKG sh -c 'printf "%s" "{\"v\":1,\"event_id\":\"ui-e1\",\"text\":" > /data/local/tmp/t9_ui/inbox/ui-e1.json'
sleep 2
echo "result: $(cat $R/ui-e1.json 2>/dev/null)"

echo "=== 2. oversize text (2000 bytes > 1024)"
put "$P/p_e2.json" ui-e2
sleep 2
echo "result: $(cat $R/ui-e2.json 2>/dev/null)"

echo "=== 3. event_id mismatch (filename vs content)"
run-as $PKG sh -c 'printf "%s" "{\"v\":1,\"event_id\":\"ui-other\",\"text\":\"x\"}" > /data/local/tmp/t9_ui/inbox/ui-e3.json'
sleep 2
echo "result: $(cat $R/ui-e3.json 2>/dev/null)"

echo "=== 4. illegal filename"
run-as $PKG sh -c 'printf "%s" "{\"v\":1,\"event_id\":\"bad name\",\"text\":\"x\"}" > "/data/local/tmp/t9_ui/inbox/bad name.json"'
sleep 2
echo "result(ui-e4 expected missing): $(cat $R/ui-e4.json 2>/dev/null)"
echo "--- rejected dir:"
ls -l "$UI/rejected" | tail -4

echo "=== 5. duplicate event_id"
run-as $PKG sh -c 'printf "%s" "{\"v\":1,\"event_id\":\"ui-dup1\",\"text\":\"重复测试\"}" > /data/local/tmp/t9_ui/inbox/ui-dup1.json'
sleep 4
echo "first : $(cat $R/ui-dup1.json 2>/dev/null)"
run-as $PKG sh -c 'printf "%s" "{\"v\":1,\"event_id\":\"ui-dup1\",\"text\":\"重复测试\"}" > /data/local/tmp/t9_ui/inbox/ui-dup1.json'
sleep 2
echo "second: $(cat $R/ui-dup1.json 2>/dev/null)"

echo "=== 6. oversize file (5036 bytes > 4096)"
put "$P/p_e6.json" ui-e6
sleep 2
echo "result: $(cat $R/ui-e6.json 2>/dev/null)"

echo "=== worker inbox summary"
grep 'inbox:' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -10
echo "=== inbox left behind"
ls -l "$IN"
echo "=== playback journal (last 3)"
tail -3 /data/local/tmp/t5_bridge/tts/journal.jsonl
echo "=== END"
