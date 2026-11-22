#!/system/bin/sh
# tvs_diag.sh -- 识别阶段为什么起不来：TVS/鉴权/网络/引擎状态
echo "=== ASR/engine state lines ==="
logcat -d 2>/dev/null | grep -iE 'isAsrMode|isFullDuplex|onListenStart|onListenStop|enterAsr|startAsr|asr mode' | tail -12
echo "=== TVS / auth / token ==="
logcat -d 2>/dev/null | grep -iE 'TVS|tvs|auth|token|C2S|Agency|login' | tail -12
echo "=== network errors ==="
logcat -d 2>/dev/null | grep -iE 'SocketTimeout|UnknownHost|ConnectException|SSL|http.*(500|403|401)' | tail -10
