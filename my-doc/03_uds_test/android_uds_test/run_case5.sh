#!/system/bin/sh
# run_case5.sh -- sender restart test (epoch handling), plain shell, no root
set -u
D=/data/local/tmp/tgz2_uds
cd "$D" || exit 1

echo "=== case5_restart: server outlives two clients ==="
./dgram_server --abstract tgz2pcm --secs 18 --rcvbuf 8192 > "$D/case5.srv.log" 2>&1 &
srvpid=$!
sleep 1

echo "--- client A ---"
./dgram_client --abstract tgz2pcm --secs 6 --sndbuf 8192 > "$D/case5a.cli.log" 2>&1
cat "$D/case5a.cli.log"

echo "--- client B (restart, new epoch) ---"
./dgram_client --abstract tgz2pcm --secs 6 --sndbuf 8192 > "$D/case5b.cli.log" 2>&1
cat "$D/case5b.cli.log"

wait $srvpid 2>/dev/null
echo "--- server ---"
cat "$D/case5.srv.log"
echo "=== done ==="
