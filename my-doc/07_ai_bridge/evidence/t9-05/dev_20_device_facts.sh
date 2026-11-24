#!/system/bin/sh
# T9-05 device facts: the identity of the accepted root executor, the queue/permission facts
# that decide what a normal UI app could hand over without root.
echo "=== date"; date
echo "=== the accepted TTS executor"
for n in ai_worker tts_exec; do echo "$n=$(pidof $n)"; done
ps -A 2>/dev/null | grep -E 'tts_exec|app_process' | head -6
P=$(pidof app_process | tr ' ' '\n' | tail -1)
echo "--- cmdline / uid of each app_process"
for pid in $(pidof app_process); do
    echo "pid=$pid uid=$(awk '/^Uid:/{print $2}' /proc/$pid/status 2>/dev/null) cmd=$(tr '\0' ' ' < /proc/$pid/cmdline 2>/dev/null)"
done
echo "=== tts tree permissions (can a normal app write here?)"
ls -ld /data/local/tmp /data/local/tmp/t5_bridge /data/local/tmp/t5_bridge/tts 2>/dev/null
ls -ld /data/local/tmp/t5_bridge/tts/queue /data/local/tmp/t5_bridge/tts/done 2>/dev/null
ls -l /data/local/tmp/t5_bridge/tts/play.public.json 2>/dev/null
cat /data/local/tmp/t5_bridge/tts/play.public.json 2>/dev/null
echo "=== probe app uid vs those dirs"
id
echo "=== provider declared state (runtime)"
dumpsys activity providers 2>/dev/null | grep -A2 'com.alibaba.ailabs.genie.assistant.provider' | head -8
echo "=== END"
