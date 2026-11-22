#!/system/bin/sh
# power_state.sh -- 屏幕/电源状态（判断"屏幕关着时识别不启动"这个可能）
echo "=== power ==="
dumpsys power 2>/dev/null | grep -E 'mWakefulness|mInteractive|Display Power' | head -4
echo "=== display ==="
dumpsys display 2>/dev/null | grep -E 'mScreenState|mState=' | head -4
echo "=== screen on/off via service ==="
dumpsys window 2>/dev/null | grep -E 'mCurrentFocus|mScreenOnFully' | head -3
