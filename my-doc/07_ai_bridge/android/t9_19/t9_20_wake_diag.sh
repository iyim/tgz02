#!/system/bin/sh
echo "=== now: $(date '+%H:%M:%S')  uptime: $(cut -d' ' -f1 /proc/uptime)s ==="
echo
echo "=== screen / power events (events buffer) ==="
logcat -b events -d 2>/dev/null | grep -iE 'screen_toggled|power_screen|device_idle|wakeup' | tail -15
echo
echo "=== PowerManagerService wake reasons ==="
logcat -d 2>/dev/null | grep -iE 'PowerManagerService.*(wake|WakeUp)|Display Power: state=|Waking up|Going to sleep' | tail -15
echo
echo "=== factory ASR / wakeup activity ==="
logcat -d 2>/dev/null | grep -iE 'AliTVASR|onWakeup|wakeupStatus|nearbyWakeup|startTalk|stopTalk|onStartListen|onStopListen' | tail -20
echo
echo "=== who holds the mic ==="
dumpsys media.audio_flinger 2>/dev/null | grep -iE 'Input thread|Active|standby' | head -10
dumpsys audio 2>/dev/null | grep -iE 'Audio source|record|input' | head -12
