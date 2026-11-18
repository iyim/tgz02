#!/system/bin/sh
# run_on_device.sh -- run the four DGRAM cases on the device (plain shell, no root)
# usage: adb shell "sh /data/local/tmp/tgz2_uds/run_on_device.sh"
set -u
D=/data/local/tmp/tgz2_uds
cd "$D" || exit 1

echo "=== env ==="
uname -a
echo "id: $(id)"

run_case () {
  name=$1; srvargs=$2; cliargs=$3
  echo ""
  echo "=== $name ==="
  echo "server: $srvargs"
  ./dgram_server $srvargs > "$D/$name.srv.log" 2>&1 &
  srvpid=$!
  sleep 1
  echo "client: $cliargs"
  ./dgram_client $cliargs > "$D/$name.cli.log" 2>&1
  wait $srvpid 2>/dev/null
  echo "--- server ---"
  cat "$D/$name.srv.log"
  echo "--- client ---"
  cat "$D/$name.cli.log"
}

run_case case1_basic \
  "--abstract tgz2pcm --secs 12 --rcvbuf 8192" \
  "--abstract tgz2pcm --secs 10 --sndbuf 8192"

run_case case2_pause \
  "--abstract tgz2pcm --secs 14 --pause-at 4 --pause-len 2 --rcvbuf 8192" \
  "--abstract tgz2pcm --secs 12 --sndbuf 8192"

run_case case3_block \
  "--abstract tgz2pcm --secs 14 --pause-at 4 --pause-len 2 --rcvbuf 8192" \
  "--abstract tgz2pcm --secs 12 --sndbuf 8192 --block"

run_case case4_file \
  "--file $D/tgz2pcm.sock --secs 12" \
  "--file $D/tgz2pcm.sock --secs 10"

echo ""
echo "=== done ==="
