#!/system/bin/sh
# T5-03 experiment capture starter (device side), v3
# Usage: su -c 'sh /data/local/tmp/t503/cap_start.sh <tag>'
#
# Notes learned on this device (tcpdump 4.9.0 / busybox):
#   * '-w <file>' and '-w -' both only flush at clean exit on this build,
#     so a plain SIGTERM at the end yields a 24-byte (header only) pcap.
#   * '-G <sec>' rotation closes+flushes each rotated file, so rotated
#     files always contain real packets. Therefore capture uses -G.
#   * logcat is written straight to a file; no pipes are left open.
D=/data/local/tmp/t503
TAG=$1
CD=$D/cap_$TAG
mkdir -p $CD
rm -f $CD/*
logcat -b main,system,events -v threadtime -c
cd $CD
busybox nohup tcpdump -i wlan0 -n -s 128 -G 5 -w "$TAG-%H%M%S.pcap" > tcpdump.out 2>&1 &
echo $! > tcpdump.pid
busybox nohup logcat -b main,system,events -v threadtime > logcat.txt 2>&1 &
echo $! > logcat.pid
date +%s.%N > start.epoch
echo "START tag=$TAG dir=$CD tcpdump_pid=$(cat tcpdump.pid) logcat_pid=$(cat logcat.pid) epoch=$(cat start.epoch)"
