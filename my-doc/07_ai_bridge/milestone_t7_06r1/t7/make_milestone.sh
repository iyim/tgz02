#!/system/bin/sh
# make_milestone.sh -- 把设备上我们部署的东西打成四个包，供下载归档
set -u
cd /data/local/tmp
rm -f /sdcard/m_t6.tar.gz /sdcard/m_t7.tar.gz /sdcard/m_bridge.tar.gz /sdcard/m_wake.tar.gz
tar -czf /sdcard/m_t6.tar.gz t6 2>/dev/null
tar -czf /sdcard/m_t7.tar.gz t7 2>/dev/null
tar -czf /sdcard/m_bridge.tar.gz t5_bridge 2>/dev/null
rm -rf /sdcard/m_wake
cp -r /data/data/com.alibaba.ailabs.genie.smartapp/files/wake /sdcard/m_wake 2>/dev/null
tar -czf /sdcard/m_wake.tar.gz m_wake 2>/dev/null
ls -l /sdcard/m_*.tar.gz
sha256sum /sdcard/m_*.tar.gz
