#!/system/bin/sh
# T9-04 device test B: the same minimal client, run from a root shell through app_process
# (uid 0, system Context via ActivityThread). No factory process is modified.
D=/data/local/tmp/t9/t9_04
echo "=== date"; date
echo "=== whoami"; id
echo "=== target service present?"
dumpsys activity services 2>/dev/null | grep -m1 -A2 'geniesdk.NativeService'
echo "=== logcat marker"
logcat -c 2>/dev/null
echo "=== running the probe (uid 0)"
CLASSPATH=$D/aidl_probe.dex app_process /system/bin com.tgz02.aidltest.AidlProbe root
echo "probe_exit=$?"
echo "=== date"; date
echo "=== factory TTS/ASR log during the run"
logcat -d -s AudioStateManager:D VoiceManager:D TtsManager:D AGSpeechEngine:D 2>/dev/null | tail -40
echo "=== END"
