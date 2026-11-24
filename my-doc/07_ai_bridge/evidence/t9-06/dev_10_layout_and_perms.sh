#!/system/bin/sh
# T9-06: create the UI submit tree and check what a normal app can actually do with it.
UI=/data/local/tmp/t9_ui
mkdir -p "$UI/inbox" "$UI/result" "$UI/rejected" || exit 1
chown 0:0 "$UI" "$UI/inbox" "$UI/result" "$UI/rejected"
chmod 0755 "$UI"
chmod 01733 "$UI/inbox"      # sticky: apps may create, but cannot rename/delete each other's files
chmod 0755 "$UI/result"      # world readable answers, root only writes
chmod 0700 "$UI/rejected"    # forensic parking, root only
echo "=== layout"
ls -ld "$UI" "$UI/inbox" "$UI/result" "$UI/rejected"
echo "=== normal app uid"
run-as com.tgz02.providerprobe id
echo "=== app creates a request file (atomic pattern)"
run-as com.tgz02.providerprobe sh -c 'printf "{\"v\":1,\"event_id\":\"probe-perm\",\"text\":\"x\"}" > /data/local/tmp/t9_ui/inbox/probe-perm.json.tmp && mv /data/local/tmp/t9_ui/inbox/probe-perm.json.tmp /data/local/tmp/t9_ui/inbox/probe-perm.json && echo create_ok'
echo "create_exit=$?"
ls -l "$UI/inbox"
echo "=== app reads the result directory"
run-as com.tgz02.providerprobe sh -c 'ls -l /data/local/tmp/t9_ui/result 2>&1 | head -3'
echo "=== app tries to write into result/ (must fail)"
run-as com.tgz02.providerprobe sh -c 'echo x > /data/local/tmp/t9_ui/result/hack.json' 2>&1
echo "=== app tries to delete another app's file (sticky)"
run-as com.tgz02.providerprobe sh -c 'rm -f /data/local/tmp/t9_ui/inbox/probe-perm.json' 2>&1
echo "=== app tries to write into the accepted queue (must fail)"
run-as com.tgz02.providerprobe sh -c 'echo x > /data/local/tmp/t5_bridge/tts/queue/x.json' 2>&1
echo "=== cleanup"
rm -f "$UI/inbox"/*.json "$UI/inbox"/*.tmp 2>/dev/null
ls -l "$UI/inbox"
echo "=== END"
