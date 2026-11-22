#!/system/bin/sh
# audio_state.sh -- 谁在占用音频（TV 应用播报时会挤掉识别，这是现场事实，不是猜测）
echo "=== players ==="
dumpsys audio 2>/dev/null | grep -A6 'players:' | head -12
echo "=== audio flinger tracks ==="
dumpsys media.audio_flinger 2>/dev/null | grep -cE 'active track|Active Tracks'
echo "=== focus stack ==="
dumpsys audio 2>/dev/null | grep -A8 'focus stack' | head -12
