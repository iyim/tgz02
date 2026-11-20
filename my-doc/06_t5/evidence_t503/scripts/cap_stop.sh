#!/system/bin/sh
# T5-03 experiment capture stopper (device side), v3
# Usage: su -c 'sh /data/local/tmp/t503/cap_stop.sh <tag>'
D=/data/local/tmp/t503
TAG=$1
CD=$D/cap_$TAG
date +%s.%N > $CD/stop.epoch
kill $(cat $CD/tcpdump.pid) 2>/dev/null
sleep 1
kill $(cat $CD/logcat.pid) 2>/dev/null
sleep 1
echo "STOP tag=$TAG epoch=$(cat $CD/stop.epoch)"
ls -l $CD
