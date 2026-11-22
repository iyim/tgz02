#!/system/bin/sh
# login_state.sh -- 原厂账号/会话状态（ASR 上云需要有效会话）
logcat -d 2>/dev/null | grep -iE 'hasLogin|isLogin|login state|sessionKey|refreshToken|token expired|未登录|登录失效|auth fail' | tail -10
echo "--- prefs ---"
for f in /data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/*.xml; do
  case "$f" in *account*|*login*|*user*|*token*) echo "$f"; grep -oE 'name="[^"]{0,30}"' "$f" | head -5 ;; esac
done
