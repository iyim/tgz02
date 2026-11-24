#!/system/bin/sh
# T9-06 acceptance E (v2): entry security, contract-compliant atomic submissions.
# Every file is written as <id>.tmp then renamed, exactly like the UI app does, and all ids are
# fresh so nothing hits an earlier idempotent marker.
UI=/data/local/tmp/t9_ui
IN=$UI/inbox
R=$UI/result
P=/data/local/tmp/t9/t9_06/payload
PKG=com.tgz02.uibridge
TS=$(date +%s)
echo "=== date"; date
echo "ts=$TS"
rm -f "$R"/*.json 2>/dev/null
rm -f "$IN"/*.json "$IN"/.*.tmp 2>/dev/null

submit() {  # submit <name> <payload-file>
    run-as $PKG sh -c "cp $2 /data/local/tmp/t9_ui/inbox/.$1.tmp && mv /data/local/tmp/t9_ui/inbox/.$1.tmp /data/local/tmp/t9_ui/inbox/$1.json"
    echo "submit $1 exit=$?"
}
mk() { # mk <name> <json>
    run-as $PKG sh -c "printf '%s' '$2' > /data/local/tmp/t9_ui/inbox/.$1.tmp && mv /data/local/tmp/t9_ui/inbox/.$1.tmp /data/local/tmp/t9_ui/inbox/$1.json"
    echo "submit $1 exit=$?"
}
show() { echo "result $1: $(cat $R/$1.json 2>/dev/null)"; }

echo "=== 0. normal submit (must be stage=queue)"
mk "ok-$TS" "{\"v\":1,\"event_id\":\"ok-$TS\",\"text\":\"正常提交 入口验收\"}"
sleep 3
show "ok-$TS"

echo "=== 1. broken json"
mk "e1-$TS" "{\"v\":1,\"event_id\":\"e1-$TS\",\"text\":"
sleep 2
show "e1-$TS"

echo "=== 2. oversize text (2036 bytes > 1024)"
cp "$P/p_e2.json" /data/local/tmp/t9/t9_06/payload/tmp_e2.json
run-as $PKG sh -c "sed 's/ui-e2/e2-$TS/' /data/local/tmp/t9/t9_06/payload/tmp_e2.json > /data/local/tmp/t9_ui/inbox/.e2-$TS.tmp && mv /data/local/tmp/t9_ui/inbox/.e2-$TS.tmp /data/local/tmp/t9_ui/inbox/e2-$TS.json"
echo "submit e2-$TS exit=$?"
sleep 2
show "e2-$TS"

echo "=== 3. event_id mismatch (filename vs content)"
mk "e3-$TS" "{\"v\":1,\"event_id\":\"other-$TS\",\"text\":\"x\"}"
sleep 2
show "e3-$TS"

echo "=== 4. illegal filename (space)"
run-as $PKG sh -c "printf '%s' '{\"v\":1,\"event_id\":\"bad name\",\"text\":\"x\"}' > '/data/local/tmp/t9_ui/inbox/bad name-$TS.json'"
echo "submit bad-name exit=$?"
sleep 2
echo "--- rejected dir:"
ls -l "$UI/rejected" | tail -4

echo "=== 5. duplicate event_id (first queued, second idempotent)"
mk "dup-$TS" "{\"v\":1,\"event_id\":\"dup-$TS\",\"text\":\"重复测试\"}"
sleep 3
show "dup-$TS"
mk "dup-$TS" "{\"v\":1,\"event_id\":\"dup-$TS\",\"text\":\"重复测试\"}"
sleep 2
show "dup-$TS"

echo "=== 6. oversize file (5036 bytes > 4096)"
run-as $PKG sh -c "sed 's/ui-e6/e6-$TS/' /data/local/tmp/t9/t9_06/payload/p_e6.json > /data/local/tmp/t9_ui/inbox/.e6-$TS.tmp && mv /data/local/tmp/t9_ui/inbox/.e6-$TS.tmp /data/local/tmp/t9_ui/inbox/e6-$TS.json"
echo "submit e6-$TS exit=$?"
sleep 2
show "e6-$TS"

echo "=== 7. strict uid check: a file owned by root is refused even though it is well formed"
printf '%s' "{\"v\":1,\"event_id\":\"root-$TS\",\"text\":\"来自 root 的伪造请求\"}" > "$IN/root-$TS.json"
sleep 2
show "root-$TS"
ls -l "$UI/rejected" | tail -2

echo "=== worker inbox summary (throttled log)"
grep 'inbox:' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -6
echo "inbox_log_lines_total=$(grep -c 'inbox:' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log)"
echo "=== inbox left behind"
ls -l "$IN"
echo "=== journal (last 4)"
tail -4 /data/local/tmp/t5_bridge/tts/journal.jsonl
echo "=== END"
