/*
 * skill_registry.c -- T9-29 (P0): 统一技能注册表
 *
 * 设计要点（与 T9-28 文档一致）：
 *   - 表是编译期常量（.rodata），运行期只有 enabled/owner 两个可变量；
 *   - 归属默认值在表里，运行期只能由 ai_worker 按配置改（time/alarm/music 这类可切换的）；
 *   - rules_hash 覆盖"会影响判定结果"的全部字段，用来在 Worker 与 Hook 之间发现漂移。
 *
 * 本文件不读文件、不打印、不分配内存；清单解析在 skill_manifest.c。
 */
#include "skill_registry.h"
#include "worker_util.h"

#include <stdio.h>
#include <string.h>

/* ---------------- 编译期能力表 ----------------
 *
 * 顺序即 rules_hash 的顺序，**改动顺序也会改变指纹**，这是有意的：
 * 顺序会影响 claim 的取舍（同一意图多条登记时取第一条）。
 *
 * 归属判定依据 T9-28 SKILL_CATALOG：
 *   - factory：原厂已验证可用（天气/闹钟/时间/音量/屏幕/媒体/停止/退出）
 *   - local  ：我们自己执行（音乐两个动作、设备状态）
 */
/* 用指定初始化器（C99）：只写关心的字段，其余自动清零，
 * 也避免嵌套数组初始化产生的 -Wmissing-braces（本项目要求 0 warning）。 */
static const sk_desc SK_TABLE[] = {
#define SK_ROW(idv, titlev, descv, ownv, intentv, t8v, execv, argvfix, argv0v, keyv) \
    { .id = idv, .title = titlev, .desc = descv, .owner = ownv, .intent = intentv, \
      .t8_id = t8v, .exec = execv, .fixed_argv0 = argvfix, .argv0 = argv0v, \
      .enable_key = keyv }

    /* ---- factory：只登记能力，执行链路一个字都不改 ---- */
    SK_ROW("volume.set",  "音量",   "把音量设为指定百分比（原厂执行）", SK_OWN_FACTORY, IR_VOLUME,
           T8_SK_VOLUME_SET,  SK_EXEC_NONE, 1, "set",    NULL),
    SK_ROW("volume.step", "音量",   "把音量调大或调小（原厂执行）",     SK_OWN_FACTORY, IR_VOLUME,
           T8_SK_VOLUME_STEP, SK_EXEC_NONE, 1, "up",     NULL),
    SK_ROW("volume.mute", "静音",   "静音或取消静音（原厂执行）",       SK_OWN_FACTORY, IR_VOLUME,
           T8_SK_VOLUME_MUTE, SK_EXEC_NONE, 1, "mute",   NULL),
    SK_ROW("weather.query","天气",  "查询天气（原厂云端技能执行）",     SK_OWN_FACTORY, IR_WEATHER,
           T8_SK_MAX,         SK_EXEC_NONE, 0, "",       NULL),
    SK_ROW("time.query",  "时间",   "报时/日期/星期（原厂执行）",       SK_OWN_FACTORY, IR_TIME,
           T8_SK_TIME_QUERY,  SK_EXEC_NONE, 0, "",       "skill_time_enabled"),
    SK_ROW("alarm.set",   "闹钟",   "定/取消/查询闹钟（原厂执行）",     SK_OWN_FACTORY, IR_ALARM,
           T8_SK_ALARM_SET,   SK_EXEC_NONE, 0, "",       "skill_alarm_enabled"),
    SK_ROW("screen.off",  "关屏",   "关闭屏幕（原厂执行）",             SK_OWN_FACTORY, IR_SCREEN_OFF,
           T8_SK_SCREEN_OFF,  SK_EXEC_NONE, 0, "",       NULL),
    SK_ROW("screen.on",   "开屏",   "点亮屏幕（原厂执行）",             SK_OWN_FACTORY, IR_SCREEN_ON,
           T8_SK_SCREEN_ON,   SK_EXEC_NONE, 0, "",       NULL),
    SK_ROW("media.control","播放控制","播放/暂停媒体（原厂优先）",      SK_OWN_FACTORY, IR_MEDIA,
           T8_SK_MEDIA_PLAY,  SK_EXEC_NONE, 0, "",       NULL),
    SK_ROW("playback.stop","停止播报","停止当前播报（原厂/本地停止）",  SK_OWN_FACTORY, IR_STOP,
           T8_SK_MEDIA_STOP,  SK_EXEC_NONE, 0, "",       NULL),
    SK_ROW("session.exit","退出对话","结束语音会话（原厂执行）",        SK_OWN_FACTORY, IR_EXIT,
           T8_SK_MAX,         SK_EXEC_NONE, 0, "",       NULL),

    /* ---- local：由我们自己执行 ---- */
    SK_ROW("music.play",  "播放音乐","播放指定歌曲或歌手；没指定就放「我喜欢」", SK_OWN_LOCAL, IR_MUSIC,
           T8_SK_MUSIC,       SK_EXEC_MUSIC, 1, "play", "skill_music_enabled"),
    SK_ROW("music.ctrl",  "音乐控制","暂停/继续/上一首/下一首/停止",             SK_OWN_LOCAL, IR_MUSIC,
           T8_SK_MUSIC,       SK_EXEC_MUSIC, 0, "",     "skill_music_enabled"),
    SK_ROW("device.status","设备状态","本机电量与运行时长",                      SK_OWN_LOCAL, IR_DEVICE_STATUS,
           T8_SK_DEVICE_STATUS, SK_EXEC_DEVICE_STATUS, 0, "", "skill_device_status_enabled"),
#undef SK_ROW
};

/* 参数表单独放：const 表里用指针引不到行内数组（C99 允许，但这里保持简单，
 * 参数定义写在 sk_find_params() 里按 id 返回）。 */
static const sk_param SK_PARAMS_MUSIC_PLAY[] = {
    { "query", SKP_STR, 0, 0, 0, 64, {{0}}, 0 }
};
static const sk_param SK_PARAMS_MUSIC_CTRL[] = {
    { "action", SKP_ENUM, 1, 0, 0, 0,
      { "pause", "resume", "next", "prev", "stop" }, 5 }
};
static const sk_param SK_PARAMS_DEVICE[] = {
    { "", SKP_STR, 0, 0, 0, 0, {{0}}, 0 }
};

#define SK_COUNT ((int)(sizeof(SK_TABLE) / sizeof(SK_TABLE[0])))

static const sk_param *sk_params_for(const char *id, int *n)
{
    if (n != NULL) *n = 0;
    if (id == NULL) return NULL;
    if (strcmp(id, "music.play") == 0)  { if (n) *n = 1; return SK_PARAMS_MUSIC_PLAY; }
    if (strcmp(id, "music.ctrl") == 0)  { if (n) *n = 1; return SK_PARAMS_MUSIC_CTRL; }
    if (strcmp(id, "device.status") == 0) return SK_PARAMS_DEVICE;
    return NULL;
}

/* ---------------- 基础 ---------------- */

const char *sk_owner_name(sk_owner o)
{
    switch (o) {
    case SK_OWN_FACTORY: return "factory";
    case SK_OWN_LOCAL:   return "local";
    case SK_OWN_AI:      return "ai";
    default:             return "?";
    }
}

const char *sk_exec_name(sk_exec_id e)
{
    switch (e) {
    case SK_EXEC_NONE:          return "none";
    case SK_EXEC_MUSIC:         return "music";
    case SK_EXEC_DEVICE_STATUS: return "device_status";
    case SK_EXEC_TIME:          return "time";
    default:                    return "?";
    }
}

static unsigned long sk_hash_str(unsigned long h, const char *s)
{
    if (s == NULL) s = "";
    return (unsigned long)wu_hash64_ext(h, s, strlen(s));
}
static unsigned long sk_hash_int(unsigned long h, int v)
{
    char b[24];

    snprintf(b, sizeof(b), "%d;", v);
    return (unsigned long)wu_hash64_ext(h, b, strlen(b));
}

/* 指纹覆盖：id/owner/intent/t8/exec/argv0/参数/例句/模板。
 * 不含 title/desc（纯文案，改了不影响判定，也不该让两侧判"不兼容"）。 */
static unsigned long sk_compute_hash(void)
{
    unsigned long h = (unsigned long)WU_HASH64_SEED;
    int i, k;

    for (i = 0; i < SK_COUNT; i++) {
        const sk_desc *d = &SK_TABLE[i];
        const sk_param *ps;
        int pn = 0;

        h = sk_hash_str(h, d->id);
        h = sk_hash_int(h, (int)d->owner);
        h = sk_hash_int(h, (int)d->intent);
        h = sk_hash_int(h, (int)d->t8_id);
        h = sk_hash_int(h, (int)d->exec);
        h = sk_hash_str(h, d->argv0);
        h = sk_hash_int(h, d->fixed_argv0);

        ps = sk_params_for(d->id, &pn);
        h = sk_hash_int(h, pn);
        for (k = 0; k < pn; k++) {
            h = sk_hash_str(h, ps[k].name);
            h = sk_hash_int(h, (int)ps[k].type);
            h = sk_hash_int(h, ps[k].required);
            h = sk_hash_int(h, ps[k].min);
            h = sk_hash_int(h, ps[k].max);
            h = sk_hash_int(h, ps[k].max_len);
            h = sk_hash_int(h, ps[k].enum_count);
        }
        h = sk_hash_int(h, d->ex_count);
        for (k = 0; k < d->ex_count; k++) h = sk_hash_str(h, d->ex[k]);
    }
    return h;
}

int sk_registry_init(sk_registry *r)
{
    int i;

    if (r == NULL) return -1;
    memset(r, 0, sizeof(*r));
    r->count = SK_COUNT;

    /* 编译期自检：local 必须有执行回调；factory 的执行回调必须为 NONE（不重复开发原厂）。 */
    for (i = 0; i < SK_COUNT; i++) {
        const sk_desc *d = &SK_TABLE[i];

        if (d->owner == SK_OWN_LOCAL && d->exec == SK_EXEC_NONE) return -1;
        if (d->owner == SK_OWN_FACTORY && d->exec != SK_EXEC_NONE) return -1;
        if (d->id[0] == '\0') return -1;
        r->rt[i].used = 1;
        r->rt[i].enabled = 0;              /* 必须由调用方显式打开 */
        r->rt[i].owner = (int)d->owner;
    }
    r->rules_hash = sk_compute_hash();
    r->boot_ms = wu_now_ms();
    return 0;
}

int sk_registry_count(const sk_registry *r) { return (r != NULL) ? r->count : 0; }

const sk_desc *sk_registry_at(const sk_registry *r, int idx)
{
    if (r == NULL || idx < 0 || idx >= r->count) return NULL;
    return &SK_TABLE[idx];
}

int sk_registry_find(const sk_registry *r, const char *id)
{
    int i;

    if (r == NULL || id == NULL) return -1;
    for (i = 0; i < r->count; i++) {
        if (strcmp(SK_TABLE[i].id, id) == 0) return i;
    }
    return -1;
}

int sk_registry_set_enabled(sk_registry *r, int idx, int on)
{
    if (r == NULL || idx < 0 || idx >= r->count) return -1;
    r->rt[idx].enabled = on ? 1 : 0;
    return 0;
}

int sk_registry_set_owner(sk_registry *r, int idx, sk_owner owner)
{
    if (r == NULL || idx < 0 || idx >= r->count) return -1;
    if (owner != SK_OWN_FACTORY && owner != SK_OWN_LOCAL && owner != SK_OWN_AI) return -1;
    /* 归属只能在"编译期允许的那两种执行者之间"切换：
     *   time/alarm/music : factory <-> local（原厂有同类能力，可以在两者之间选）
     *   device.status    : local   <-> ai （原厂没有这个能力；关掉只能交给模型）
     * 其余能力（天气/音量/屏幕/媒体/退出）归死，防止误配把已验证链路切走。 */
    if (owner != SK_TABLE[idx].owner) {
        const char *id = SK_TABLE[idx].id;
        int ok = 0;

        if (strcmp(id, "time.query") == 0 || strcmp(id, "alarm.set") == 0 ||
            strcmp(id, "music.play") == 0 || strcmp(id, "music.ctrl") == 0) {
            ok = (owner == SK_OWN_LOCAL || owner == SK_OWN_FACTORY);
        } else if (strcmp(id, "device.status") == 0) {
            ok = (owner == SK_OWN_LOCAL || owner == SK_OWN_AI);
        }
        if (!ok) return -1;
    }
    r->rt[idx].owner = (int)owner;
    return 0;
}

int sk_registry_enabled(const sk_registry *r, int idx)
{
    if (r == NULL || idx < 0 || idx >= r->count) return 0;
    return r->rt[idx].enabled;
}

sk_owner sk_registry_owner(const sk_registry *r, int idx)
{
    if (r == NULL || idx < 0 || idx >= r->count) return SK_OWN_AI;
    return (sk_owner)r->rt[idx].owner;
}

/* ---------------- 清单覆盖读取 ---------------- */

static const sk_ovr *sk_ovr_of(const sk_registry *r, int idx)
{
    int i;

    if (r == NULL || idx < 0 || idx >= r->count) return NULL;
    for (i = 0; i < r->ovr_count; i++) {
        if (r->ovr[i].used && r->ovr[i].idx == idx) return &r->ovr[i];
    }
    return NULL;
}

const char *sk_registry_title(const sk_registry *r, int idx)
{
    const sk_ovr *o = sk_ovr_of(r, idx);

    if (r == NULL || idx < 0 || idx >= r->count) return "";
    if (o != NULL && o->title[0] != '\0') return o->title;
    return SK_TABLE[idx].title;
}

const char *sk_registry_desc(const sk_registry *r, int idx)
{
    const sk_ovr *o = sk_ovr_of(r, idx);

    if (r == NULL || idx < 0 || idx >= r->count) return "";
    if (o != NULL && o->desc[0] != '\0') return o->desc;
    return SK_TABLE[idx].desc;
}

const char *sk_registry_reply(const sk_registry *r, int idx)
{
    const sk_ovr *o = sk_ovr_of(r, idx);

    if (r == NULL || idx < 0 || idx >= r->count) return "";
    if (o != NULL && o->reply_ok[0] != '\0') return o->reply_ok;
    return SK_TABLE[idx].reply_ok;
}

int sk_registry_examples(const sk_registry *r, int idx, const char **out, int cap)
{
    const sk_ovr *o = sk_ovr_of(r, idx);
    int n, i;

    if (out == NULL || cap <= 0 || r == NULL || idx < 0 || idx >= r->count) return 0;
    if (o != NULL && o->ex_count > 0) {
        n = o->ex_count < cap ? o->ex_count : cap;
        for (i = 0; i < n; i++) out[i] = o->ex[i];
        return n;
    }
    n = SK_TABLE[idx].ex_count < cap ? SK_TABLE[idx].ex_count : cap;
    for (i = 0; i < n; i++) out[i] = SK_TABLE[idx].ex[i];
    return n;
}

/* ---------------- 归属 / 位掩码 ---------------- */

sk_owner sk_registry_owner_of_intent(const sk_registry *r, ir_intent it, const char **id_out)
{
    int i;

    if (id_out != NULL) *id_out = NULL;
    if (r == NULL) return SK_OWN_AI;
    for (i = 0; i < r->count; i++) {
        if (SK_TABLE[i].intent != it) continue;
        /* 同一意图多条登记（例如 music.play/music.ctrl）时，以"最不抢原厂"的那条为准：
         * 只要有一条是 factory 就返回 factory。原因：原厂能力的放行必须优先。 */
        if (sk_registry_owner(r, i) == SK_OWN_FACTORY) {
            if (id_out != NULL) *id_out = SK_TABLE[i].id;
            return SK_OWN_FACTORY;
        }
    }
    for (i = 0; i < r->count; i++) {
        if (SK_TABLE[i].intent != it) continue;
        if (id_out != NULL) *id_out = SK_TABLE[i].id;
        return sk_registry_owner(r, i);
    }
    return SK_OWN_AI;
}

int sk_registry_factory_mask(const sk_registry *r)
{
    int i, mask = 0;

    if (r == NULL) return 0;
    for (i = 0; i < r->count; i++) {
        int bit;

        if (sk_registry_owner(r, i) != SK_OWN_FACTORY) continue;
        bit = ir_route_bit(SK_TABLE[i].intent);
        if (bit > 0) mask |= bit;
    }
    return mask;
}

/* ---------------- Shadow 判定 ---------------- */

int sk_registry_claim(const sk_registry *r, ir_intent it, const char *arg)
{
    const char *a = (arg != NULL) ? arg : "";
    const char *id = NULL;

    if (r == NULL) return -1;
    switch (it) {
    case IR_MUSIC:
        id = (strcmp(a, "play") == 0) ? "music.play" : "music.ctrl";
        break;
    case IR_DEVICE_STATUS: id = "device.status"; break;
    case IR_VOLUME:
        if (strncmp(a, "set:", 4) == 0) id = "volume.set";
        else if (strcmp(a, "mute") == 0 || strcmp(a, "unmute") == 0) id = "volume.mute";
        else id = "volume.step";
        break;
    case IR_TIME:       id = "time.query";   break;
    case IR_ALARM:      id = "alarm.set";    break;
    case IR_WEATHER:    id = "weather.query";break;
    case IR_SCREEN_OFF: id = "screen.off";   break;
    case IR_SCREEN_ON:  id = "screen.on";    break;
    case IR_MEDIA:      id = "media.control";break;
    case IR_STOP:       id = "playback.stop";break;
    case IR_EXIT:       id = "session.exit"; break;
    default:            return -1;
    }
    return sk_registry_find(r, id);
}

/* ---------------- 状态快照 ---------------- */

int sk_registry_dump_json(const sk_registry *r, char *out, size_t cap)
{
    size_t o = 0;
    int i, n;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (r == NULL) return -1;

    n = snprintf(out + o, cap - o,
                 "{\"count\":%d,\"rules_hash\":\"%08lx\",\"manifest\":%d,\"rejects\":%lu,"
                 "\"skills\":[",
                 r->count, r->rules_hash & 0xFFFFFFFFUL, r->manifest_loaded,
                 r->manifest_rejects);
    if (n < 0 || (size_t)n >= cap - o) return -1;
    o += (size_t)n;

    for (i = 0; i < r->count; i++) {
        const sk_desc *d = &SK_TABLE[i];

        n = snprintf(out + o, cap - o,
                     "%s{\"id\":\"%s\",\"owner\":\"%s\",\"on\":%d,\"exec\":\"%s\",\"t8\":%d}",
                     (i == 0) ? "" : ",", d->id, sk_owner_name(sk_registry_owner(r, i)),
                     r->rt[i].enabled, sk_exec_name(d->exec), (int)d->t8_id);
        if (n < 0 || (size_t)n >= cap - o) return -1;
        o += (size_t)n;
    }
    n = snprintf(out + o, cap - o, "]}");
    if (n < 0 || (size_t)n >= cap - o) return -1;
    return (int)(o + (size_t)n);
}
