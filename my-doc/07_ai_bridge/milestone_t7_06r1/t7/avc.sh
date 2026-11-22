#!/system/bin/sh
# avc.sh -- 代码段改写相关的 SELinux 拒绝记录
dmesg 2>/dev/null | grep -i avc | grep -iE 'execmod|smartbox|system_app' | tail -10
echo "--- count ---"
dmesg 2>/dev/null | grep -ci avc
