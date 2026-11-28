#!/system/bin/sh
# T9-29 P1 真机验证：归属表落盘 / 租约 / 心跳（worker 侧；hook 侧读取与回执尚未接入）
# 不消费生产事件：独立 work 目录（空 events.jsonl）、独立状态目录，跑 4 秒后退出。
set -e
BIN=/data/local/tmp/t9_29/ai_worker
ROOT=/data/local/tmp/t9_29/p1
CONF=$ROOT/worker.conf

rm -rf "$ROOT"
mkdir -p "$ROOT/work" "$ROOT/state" "$ROOT/tts"

cat > "$CONF" <<'EOF'
provider=mock
models_required=0
gate=0
echo_filter=0
route_native=1
route_intents=volume,weather,screen_off,time,screen_on,media,stop,exit
skill_dispatch_enabled=1
skill_time_enabled=1
skill_registry_enabled=1
skill_registry_shadow=1
skill_ownership_enabled=1
ownership_dir=/data/local/tmp/t9_29/p1/own
EOF

echo "--- run (4s, empty event stream) ---"
"$BIN" --conf "$CONF" --work-dir "$ROOT/work" --state-dir "$ROOT/state" \
       --provider mock --no-models --tts-queue-dir "$ROOT/tts" \
       --poll-ms 50 --status-every-ms 200 --idle-exit-ms 6500 --max-runtime-ms 7500 2>&1 |
       grep -E "ownership|registry: enabled" || true

echo
echo "--- ownership.json (after heartbeat) ---"
ls -l "$ROOT/own"
cat "$ROOT/own/ownership.json"
echo
echo "--- registry.public.json (first 400B) ---"
head -c 400 "$ROOT/state/registry.public.json" 2>/dev/null || echo "(missing)"
echo
echo "--- ack exists? (hook not implemented yet => must be absent) ---"
if [ -f "$ROOT/own/ownership.ack.json" ]; then echo "present (unexpected)"; else echo "absent (expected in P1 worker-only stage)"; fi
