#!/system/bin/sh
# wake_log1.sh -- 导出唤醒后的语音链路日志（关键词覆盖原厂引擎常见 tag）
echo "=== speech/audio/asr lines ==="
logcat -d 2>/dev/null | grep -iE 'asr|recogn|speech|record|microphone|mic |audioinput|tvs|multimodal' | tail -40
