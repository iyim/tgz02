#!/system/bin/sh
# T5-06D-P1: kill one pid (SIGKILL) and prove it is gone.
#   args: <pid>
#   output: "target=<pid> exists=yes|no" / "kill rc=<n>" / "gone" | "STILL ALIVE"
export PATH=/system/bin:/system/xbin:/sbin
P=$1
case "$P" in
    ""|*[!0-9]*) echo "bad pid"; exit 2 ;;
esac
if [ ! -d "/proc/$P" ]; then
    echo "target=$P exists=no"
    echo "gone"
    exit 0
fi
echo "target=$P exists=yes"
kill -9 "$P"
echo "kill rc=$?"
i=0
while [ $i -lt 25 ]; do
    if [ ! -d "/proc/$P" ]; then echo "gone"; exit 0; fi
    i=$((i+1))
    sleep 0.2
done
echo "STILL ALIVE"
exit 1
