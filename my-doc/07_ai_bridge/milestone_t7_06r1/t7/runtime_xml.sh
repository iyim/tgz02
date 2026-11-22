#!/system/bin/sh
# runtime_xml.sh -- 原厂 runtime.xml 里的判停参数（只读，用来解释"为什么一唤醒就结束"）
grep -oE 'name="[^"]*"[^>]*>[^<]*' /data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml 2>/dev/null | grep -iE 'pause|vad|eou|asr' | head -12
echo "--- raw keys ---"
grep -oE 'key="[^"]*"' /data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml 2>/dev/null | head -20
echo "--- any line containing Pause ---"
grep -oE '.{0,60}Pause.{0,60}' /data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml 2>/dev/null | head -8
