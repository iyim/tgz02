#!/system/bin/sh
# find_key.sh -- 找出旧 deepseek key 的残留副本（只读）
echo "=== secret dir ==="
ls -l /data/local/tmp/t5_bridge/secret/ 2>/dev/null
echo "=== files mentioning sk- ==="
grep -rl 'sk-' /data/local/tmp/t5_bridge 2>/dev/null | head -8
echo "=== backups of conf ==="
ls -l /data/local/tmp/t5_bridge/ai_worker/*.bak* 2>/dev/null
echo "=== key file head (masked) ==="
head -c 8 /data/local/tmp/t5_bridge/secret/deepseek_api_key 2>/dev/null; echo "..."
