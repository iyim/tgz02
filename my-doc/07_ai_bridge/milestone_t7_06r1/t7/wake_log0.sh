#!/system/bin/sh
# wake_log.sh -- 唤醒前清 logcat，唤醒后导出语音相关行（不做参数修改）
logcat -c 2>/dev/null
echo cleared
