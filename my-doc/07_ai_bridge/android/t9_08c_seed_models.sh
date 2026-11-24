#!/system/bin/sh
# t9_08c_seed_models.sh <port> <scenario>
#
# 写一份 App 的模型配置（/data/data/com.tgz02.voice/files/models.json），指向设备本机的协议桩。
#
#   normal          4 套配置（豆包 / 千问原生 / 千问兼容 / OpenAI 兼容），默认=豆包，key 全对
#   badkey          与 normal 相同，但默认那套用错误的 key（验收"错误 API Key"）
#   badurl          默认那套的 Base URL 指向关闭的端口（验收"错误 Base URL"）
#   default:<id>    只改 default_id（验收"切换厂商/立即生效"）
#   clear           删除配置文件（验收"没有配置时明确报错"）
#
# 这个脚本只是**测试夹具**：真实使用时这份文件由 App 的配置页写入（同一个路径、同一个格式）。
set -u
FILES=/data/data/com.tgz02.voice/files
F=$FILES/models.json
PORT=${1:-8799}
SC=${2:-normal}
OWNER=$(stat -c %u "$FILES")
GROUP=$(stat -c %g "$FILES")
TMP=$FILES/.models.json.tmp

fix_perm() {
    chown "$OWNER:$GROUP" "$1" || return 1
    chmod 0600 "$1" || return 1
    return 0
}

case "$SC" in
default:*)
    ID=${SC#default:}
    [ -f "$F" ] || { echo "no config file to edit"; exit 1; }
    sed "s/\"default_id\":\"[^\"]*\"/\"default_id\":\"$ID\"/" "$F" > "$TMP" || exit 1
    fix_perm "$TMP" || exit 1
    mv "$TMP" "$F" || exit 1
    echo "default_id set to $ID"
    grep -o '"default_id":"[^"]*"' "$F"
    exit 0
    ;;
clear)
    rm -f "$F"
    echo "cleared $F"
    exit 0
    ;;
esac

DOUBAO_KEY=good-doubao
URL_PREFIX="http://127.0.0.1:$PORT"
[ "$SC" = "badkey" ] && DOUBAO_KEY=bad-doubao-key
[ "$SC" = "badurl" ] && URL_PREFIX="http://127.0.0.1:9"

cat > "$TMP" <<EOF
{"v":1,"default_id":"m-doubao","models":[
{"id":"m-doubao","vendor":"doubao","label":"doubao-main","api_key":"$DOUBAO_KEY",
 "base_url":"$URL_PREFIX/doubao/v3","model":"ep-2024-stub","endpoint_id":"ep-2024-stub",
 "extra":{"top_p":0.9},"max_tokens":128,"temperature":0.3,"timeout_ms":8000,"enabled":true},
{"id":"m-qwen","vendor":"qwen","label":"qwen-native","api_key":"good-qwen",
 "base_url":"$URL_PREFIX/qwen/api/v1","model":"qwen-plus","api_mode":"native",
 "max_tokens":128,"temperature":0.5,"timeout_ms":8000,"enabled":true},
{"id":"m-qwen-compat","vendor":"qwen","label":"qwen-compat","api_key":"good-qwen",
 "base_url":"$URL_PREFIX/qwen/compat/v1","model":"qwen-turbo","api_mode":"compat",
 "max_tokens":128,"temperature":0.5,"timeout_ms":8000,"enabled":true},
{"id":"m-openai","vendor":"openai","label":"openai-compat","api_key":"good-openai",
 "base_url":"$URL_PREFIX/openai/v1","model":"stub-model",
 "max_tokens":128,"temperature":0.7,"timeout_ms":8000,"enabled":true}
]}
EOF
[ -f "$TMP" ] || exit 1
fix_perm "$TMP" || exit 1
mv "$TMP" "$F" || exit 1
echo "seeded $F scenario=$SC port=$PORT url_prefix=$URL_PREFIX"
ls -l "$F"
