#!/system/bin/sh
# T9-06R1: start/stop the capture used by the host-side wav playback (F/G).
case "${1:-}" in
  start)
    pkill -f 'logcat -v time -s SessionManager' 2>/dev/null
    sleep 1
    : > /data/local/tmp/t9/t9_06/06r1_voice.log
    nohup logcat -v time -s SessionManager AGSpeechEngine AudioStateManager VoiceManager TtsManager \
        > /data/local/tmp/t9/t9_06/06r1_voice.log 2>&1 &
    echo "capture started pid=$!"
    date
    ;;
  stop)
    pkill -f 'logcat -v time -s SessionManager' 2>/dev/null
    sleep 1
    echo "=== factory session lines"
    grep -E 'onStartTalk|onCloudEOUEvent|onStopTalk|NOTIFY_TTS_STATUS|setStreamVolume' \
        /data/local/tmp/t9/t9_06/06r1_voice.log | tail -30
    echo "=== worker lines (tail)"
    tail -20 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log
    echo "=== journal (tail)"
    tail -4 /data/local/tmp/t5_bridge/tts/journal.jsonl
    echo "=== END"
    ;;
  *) echo "usage: $0 start|stop" ;;
esac
