#!/system/bin/sh
# t9_08b_r2_dev_stop_button.sh -- print the centre of the on-screen 停止播报 button.
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_dev_stop_button.sh"
#   -> "955 576"   or   "0 0" when the button is not on screen
#
# The Chinese label lives in this file on purpose: it is matched as bytes here, so the host never
# has to pass (or mis-encode) non-ASCII text through adb.
set -u
OUT=/data/local/tmp/t9_r2_ui.xml
rm -f "$OUT"
uiautomator dump "$OUT" >/dev/null 2>&1
[ -f "$OUT" ] || { echo "0 0"; exit 1; }
LINE=$(tr '>' '\n' < "$OUT" | grep '停止播报' | head -1)
if [ -z "$LINE" ]; then echo "0 0"; exit 1; fi
B=$(echo "$LINE" | sed -n 's/.*bounds="\[\([0-9]*\),\([0-9]*\)\]\[\([0-9]*\),\([0-9]*\)\]".*/\1 \2 \3 \4/p')
if [ -z "$B" ]; then echo "0 0"; exit 1; fi
# no awk on this build of toybox: plain shell arithmetic is enough
set -- $B
echo "$((($1 + $3) / 2)) $((($2 + $4) / 2))"
