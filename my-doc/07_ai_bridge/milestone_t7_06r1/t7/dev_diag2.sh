#!/system/bin/sh
# dev_diag2.sh -- 语音链路诊断
echo "=== logcat size ==="
logcat -d | wc -l
echo "=== last 25 lines of logcat ==="
logcat -d -t 25
echo "=== speech engine procs ==="
ps -A -o PID,NAME | grep -iE 'speech|asr|tts|audio' | head -10
echo "=== core threads (speech) ==="
ls /proc/13711/task 2>/dev/null | wc -l
for t in $(ls /proc/13711/task 2>/dev/null | head -40); do
  echo "tid=$t $(cat /proc/13711/task/$t/comm 2>/dev/null)"
done | grep -i -E 'speech|ag-|audio|wake' | head -10
