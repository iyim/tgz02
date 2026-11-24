#!/system/bin/sh
# T9-06R1 G (3rd run): capture the guard's own tag (tgt) so continuity.req acceptance is visible.
L=/data/local/tmp/t9/t9_06/06r1_g3.log
: > "$L"
pkill -f 'logcat.*SessionManager' 2>/dev/null
sleep 1
nohup logcat -v time -s SessionManager AGSpeechEngine tgt > "$L" 2>&1 &
echo "capture started"; date
