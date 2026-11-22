#!/system/bin/sh
# engine_window.sh -- 只看 AGSpeechEngine 相关（避开 AliTVASR 无障碍噪音）
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE"
logcat -d 2>/dev/null | grep -E 'AGSpeechEngine|WakeupEngineWrapper|UnconvWakeupManager' | tail -18
