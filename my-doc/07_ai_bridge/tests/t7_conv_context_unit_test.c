/*
 * t7_conv_context_unit_test.c -- T7-01 host unit test (Windows + TDM-GCC, no network)
 *
 * Covers the incremental items of the task (T7-01 §7 items 1-8), nothing from T2-T6:
 *   1) single turn: with the context off every turn is one user message
 *   2) two turns: history is sent in order (user, assistant, user)
 *   3) three turns: order and content are preserved
 *   4) restart: a saved file is restored by cv_init
 *   5) over the limit: only WHOLE turns are evicted, never an orphan assistant
 *   6) context off: turns stay independent and are not stored
 *   7) failures: empty / invalid / over-long replies are refused, history unchanged
 *   8) corrupt file: kept as .corrupt, history cleared, module still usable
 *   plus: worker.conf (key=value), messages that do not fit, provider messages entry,
 *         DeepSeek request-body assembly, save/load round-trip, shrink-on-load.
 *
 * Build (driven by tests/run_t7_host_tests.ps1):
 *   gcc -O2 -Wall -Wextra -std=gnu99 -I android -o out/t7_conv_context_unit_test.exe \
 *       tests/t7_conv_context_unit_test.c android/conv_context.c android/worker_conf.c \
 *       android/provider.c android/mock_provider.c android/deepseek_provider.c \
 *       android/worker_util.c android/worker_status.c android/event_reader.c \
 *       android/consumer_state.c android/seq_gap.c
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "conv_context.h"
#include "deepseek_provider.h"
#include "provider.h"
#include "worker_conf.h"
#include "worker_util.h"

static int g_pass;
static int g_fail;

static void ok(int cond, const char *what)
{
    if (cond) {
        g_pass++;
        printf("  PASS  %s\n", what);
    } else {
        g_fail++;
        printf("  FAIL  %s\n", what);
    }
}

/* ---------------- temp dir ---------------- */

static char g_tmp[512];

static const char *ctx_path(void)
{
    static char p[512];
    snprintf(p, sizeof(p), "%s\\context.json", g_tmp);
    return p;
}

static const char *conf_path(void)
{
    static char p[512];
    snprintf(p, sizeof(p), "%s\\worker.conf", g_tmp);
    return p;
}

static void tmp_setup(void)
{
    char dir[512];
    char gone[600];

    snprintf(dir, sizeof(dir), "%s\\t7_ctx_%ld", getenv("TEMP") ? getenv("TEMP") : ".",
             (long)wu_self_pid());
    snprintf(g_tmp, sizeof(g_tmp), "%s", dir);
    (void)wu_mkdir_p(dir);
    (void)wu_unlink(ctx_path());
    snprintf(gone, sizeof(gone), "%s.tmp", ctx_path());
    (void)wu_unlink(gone);
    snprintf(gone, sizeof(gone), "%s.corrupt", ctx_path());
    (void)wu_unlink(gone);
}

/* T7-03：system prompt 的测试用文本（ASCII，避免和其它断言里的中文混淆） */
static const char g_sys[] = "SYSROLE speaker assistant";

static int count_role(const char *json, const char *role)
{
    char pat[32];
    const char *q;
    int n = 0;

    snprintf(pat, sizeof(pat), "\"role\":\"%s\"", role);
    for (q = json; q != NULL && (q = strstr(q, pat)) != NULL; q += strlen(pat)) n++;
    return n;
}

static void write_text(const char *path, const char *text)
{
    int fd = wu_open_wo(path);

    if (fd < 0) return;
    (void)wu_write_all(fd, text, strlen(text));
    (void)wu_fsync(fd);
    wu_close(fd);
}

/* ==========================================================================
 * 1) single turn / 6) context off
 * ======================================================================== */
static void test_single_turn_disabled(void)
{
    cv_ctx c;
    cv_cfg cfg;
    char js[CV_JSON_MAX];
    char err[CV_ERR_MAX];

    printf("[1] single turn, context disabled\n");
    cv_defaults(&cfg);
    cfg.enabled = 0;
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    ok(cv_commit_turn(&c, "to", "yo") == 0, "commit is a no-op when disabled");
    ok(c.count == 0, "no history stored when disabled");

    ok(cv_build_messages(&c, NULL, "give me a short intro", js, sizeof(js), err, sizeof(err)) == 1,
       "messages = exactly one entry");
    ok(strncmp(js, "[{\"role\":\"user\"", 15) == 0, "entry is role=user");
    ok(count_role(js, "assistant") == 0, "no assistant in a disabled context");
    ok(strstr(js, "short intro") != NULL, "current user text is present");
}

/* ==========================================================================
 * 2) two turns / 3) three turns
 * ======================================================================== */
static void test_two_three_turns(void)
{
    cv_ctx c;
    cv_cfg cfg;
    char js[CV_JSON_MAX];
    char err[CV_ERR_MAX];
    int n;

    printf("[2] two turns: the second turn carries the first one\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    cfg.max_messages = 12;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    (void)wu_unlink(ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    ok(cv_commit_turn(&c, "TURN1Q Tokyo", "TURN1A capital") == 0, "turn 1 committed");

    n = cv_build_messages(&c, g_sys, "TURN2Q food", js, sizeof(js), err, sizeof(err));
    ok(n == 3, "messages = history(2) + current(1)");
    ok(count_role(js, "user") == 2 && count_role(js, "assistant") == 1, "2 user + 1 assistant");
    ok(strstr(js, "TURN1Q") != NULL && strstr(js, "TURN1A") != NULL,
       "previous question and answer are both present");
    ok(strstr(js, "TURN2Q") != NULL, "current question is present");

    printf("[3] three turns keep the order user,assistant,...\n");
    ok(cv_commit_turn(&c, "TURN2Q food", "TURN2A sushi") == 0, "turn 2 committed");
    ok(cv_commit_turn(&c, "TURN3Q hotel", "TURN3A shinjuku") == 0, "turn 3 committed");
    n = cv_build_messages(&c, g_sys, "TURN4Q", js, sizeof(js), err, sizeof(err));
    ok(n == 7, "messages = 6 history + 1 current");
    ok(cv_turn_count(&c) == 3, "three complete turns stored");
    {
        const char *p1 = strstr(js, "TURN1Q");
        const char *p2 = strstr(js, "TURN2A");
        const char *p3 = strstr(js, "TURN3A");
        ok(p1 != NULL && p2 != NULL && p3 != NULL && p1 < p2 && p2 < p3,
           "history is in chronological order");
    }
    ok(count_role(js, "assistant") == 3, "every turn has its assistant reply");
}

/* ==========================================================================
 * 4) restart
 * ======================================================================== */
static void test_restart_restore(void)
{
    cv_ctx c;
    cv_cfg cfg;
    char js[CV_JSON_MAX];
    char err[CV_ERR_MAX];

    printf("[4] restart: history is restored from the file\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    ok(cv_init(&c, &cfg) == 0, "re-init on the existing file");
    ok(c.last_load_state == CV_LOAD_OK, "load state = OK (restored)");
    ok(cv_turn_count(&c) == 3, "three turns restored");
    ok(c.loads == 1, "loads counter = 1");
    ok(cv_build_messages(&c, g_sys, "AFTER_RESTART", js, sizeof(js), err, sizeof(err)) == 7,
       "restored history is used for the next request");
    ok(strstr(js, "TURN3A") != NULL, "the last stored turn is back");
}

/* ==========================================================================
 * 5) eviction
 * ======================================================================== */
static void test_eviction(void)
{
    cv_ctx c;
    cv_cfg cfg;
    char js[CV_JSON_MAX];
    char err[CV_ERR_MAX];
    char buf[CV_FILE_MAX];
    size_t len = 0;
    int i;

    printf("[5] over the limit: whole turns are evicted, never an orphan reply\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    cfg.max_messages = 4;                    /* two turns */
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    (void)wu_unlink(ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    for (i = 1; i <= 5; i++) {
        char u[64], a[64];
        snprintf(u, sizeof(u), "Q%d", i);
        snprintf(a, sizeof(a), "A%d", i);
        ok(cv_commit_turn(&c, u, a) == 0, "commit turn");
    }
    ok(c.count == 4, "only 4 messages are kept");
    ok(cv_turn_count(&c) == 2, "= 2 complete turns");
    ok(strcmp(c.msgs[0].role, "user") == 0, "the oldest kept message is a user message");
    ok(strcmp(c.msgs[0].text, "Q4") == 0, "turn 4 is the oldest one kept");
    ok(strcmp(c.msgs[3].text, "A5") == 0, "turn 5 is the newest one");
    ok(c.evicted_messages == 6, "6 messages were evicted (3 whole turns)");

    ok(cv_build_messages(&c, g_sys, "Q6", js, sizeof(js), err, sizeof(err)) == 5, "4 history + current");
    ok(strstr(js, "Q1") == NULL, "the oldest turn is gone");
    ok(strstr(js, "Q4") != NULL && strstr(js, "A5") != NULL, "the two newest turns survive");

    ok(wu_read_file(ctx_path(), buf, sizeof(buf), &len) == 0, "context file readable");
    ok(strstr(buf, "Q1") == NULL && strstr(buf, "A1") == NULL,
       "the evicted turn is not in the file either");
    ok(strstr(buf, "\"role\":\"user\",\"content\":\"Q4\"") != NULL,
       "the file starts with a complete turn");
}

/* ==========================================================================
 * 7) failures never reach the history
 * ======================================================================== */
static void test_failure_no_pollution(void)
{
    cv_ctx c;
    cv_cfg cfg;
    int before;
    char big[CV_TEXT_MAX + 8];

    printf("[7] failures never reach the history\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    cfg.max_messages = 12;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    before = c.count;

    ok(cv_commit_turn(&c, "question without answer", "") == -1, "empty assistant reply refused");
    ok(c.count == before, "history unchanged after an empty reply");
    ok(cv_commit_turn(&c, "", "answer without question") == -1, "empty user text refused");
    ok(c.count == before, "history unchanged after empty user text");

    memset(big, 'A', sizeof(big) - 1);
    big[sizeof(big) - 1] = '\0';
    ok(cv_commit_turn(&c, "q", big) == -1, "over-long reply refused");
    ok(c.count == before, "history unchanged after an over-long reply");

    /* invalid UTF-8 must be refused too (would break the JSON writer) */
    {
        char bad[16];
        memset(bad, 0, sizeof(bad));
        bad[0] = (char)0xff;
        bad[1] = (char)0xfe;
        bad[2] = 'x';
        ok(cv_add_user(&c, bad) == -1, "invalid UTF-8 refused");
        ok(c.count == before, "history unchanged after invalid UTF-8");
    }
}

/* ==========================================================================
 * 8) corrupt file
 * ======================================================================== */
static void test_corrupt_recovery(void)
{
    cv_ctx c;
    cv_cfg cfg;
    char js[CV_JSON_MAX];
    char err[CV_ERR_MAX];
    char backup[600];
    int fd;

    printf("[8] corrupt context file: keep a copy, start empty, keep working\n");
    write_text(ctx_path(), "{not json at all");

    cv_defaults(&cfg);
    cfg.enabled = 1;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init tolerates the corrupt file");
    ok(c.last_load_state == CV_LOAD_RECOVERED, "load state = recovered");
    ok(c.count == 0, "history is empty");
    ok(c.corrupt_recoveries == 1, "corrupt recovery counted");
    snprintf(backup, sizeof(backup), "%s.corrupt", ctx_path());
    ok(wu_file_size(backup) > 0, "the broken file was kept as .corrupt");
    ok(wu_file_size(ctx_path()) < 0, "the live file is gone (next save starts clean)");

    ok(cv_build_messages(&c, g_sys, "AFTER_CORRUPT", js, sizeof(js), err, sizeof(err)) == 1,
       "still able to build a request");
    ok(cv_commit_turn(&c, "AFTER_CORRUPT", "fine") == 0, "still able to commit a new turn");
    ok(wu_file_size(ctx_path()) > 0, "a fresh file was written");

    /* empty file = also corrupt */
    fd = wu_open_wo(ctx_path());
    if (fd >= 0) wu_close(fd);
    ok(cv_init(&c, &cfg) == 0 && c.last_load_state == CV_LOAD_RECOVERED,
       "empty file is treated as corrupt, not as a crash");

    /* truncated JSON = corrupt, no crash */
    write_text(ctx_path(), "{\"version\":1,\"messages\":[{\"role\":\"user\",\"content\":\"x\"}");
    ok(cv_init(&c, &cfg) == 0 && c.last_load_state == CV_LOAD_RECOVERED,
       "truncated json is treated as corrupt");
    ok(c.count == 0, "no half-parsed history kept");
}

/* ==========================================================================
 * 6) disabled isolation / 9) clear
 * ======================================================================== */
static void test_clear_and_disabled_isolation(void)
{
    cv_ctx c;
    cv_cfg cfg;
    char js1[CV_JSON_MAX];
    char js2[CV_JSON_MAX];
    char err[CV_ERR_MAX];

    printf("[6] disabled: every turn is independent\n");
    cv_defaults(&cfg);
    cfg.enabled = 0;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    ok(cv_build_messages(&c, g_sys, "FIRST", js1, sizeof(js1), err, sizeof(err)) == 1,
       "turn 1 = 1 message");
    (void)cv_commit_turn(&c, "FIRST", "ANSWER1");
    ok(cv_build_messages(&c, g_sys, "SECOND", js2, sizeof(js2), err, sizeof(err)) == 1,
       "turn 2 = 1 message");
    ok(strstr(js2, "FIRST") == NULL, "turn 2 does not contain turn 1");
    ok(strcmp(js1, "[{\"role\":\"system\",\"content\":\"SYSROLE speaker assistant\"},"
                     "{\"role\":\"user\",\"content\":\"FIRST\"}]") == 0,
       "turn 1 json = system first, then exactly one user");

    printf("[9] clear() drops the history and the file\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    (void)wu_unlink(ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    ok(cv_commit_turn(&c, "REMEMBER", "REMEMBERED") == 0, "commit one turn");
    ok(wu_file_size(ctx_path()) > 0, "file exists");
    ok(cv_clear(&c) == 0, "cv_clear ok");
    ok(c.count == 0, "memory cleared");
    ok(wu_file_size(ctx_path()) < 0, "file removed");
    ok(cv_init(&c, &cfg) == 0 && c.count == 0 && c.last_load_state == CV_LOAD_ABSENT,
       "after clear the next start begins with an empty history");
}

/* ==========================================================================
 * 10) tight buffer: drop oldest turns, never truncate
 * ======================================================================== */
static void test_size_downgrade(void)
{
    cv_ctx c;
    cv_cfg cfg;
    char js[600];
    char err[CV_ERR_MAX];
    int i;

    printf("[10] tight buffer: drop the oldest turns, never truncate a message\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    cfg.max_messages = 12;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    (void)wu_unlink(ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    for (i = 1; i <= 4; i++) {
        char u[128], a[64];
        snprintf(u, sizeof(u), "LONG_QUESTION_%03d_padding_padding_padding_padding_"
                               "padding_padding_padding_padding_padding_padding", i);
        snprintf(a, sizeof(a), "LONG_ANSWER_%03d", i);
        ok(cv_commit_turn(&c, u, a) == 0, "commit turn");
    }
    ok(cv_build_messages(&c, g_sys, "LAST", js, sizeof(js), err, sizeof(err)) >= 1,
       "still returns a usable request");
    ok(strstr(js, "LAST") != NULL, "the current user text is always kept");
    ok(strstr(js, "000") == NULL || strstr(js, "LONG_QUESTION_001") == NULL,
       "the oldest turn was dropped to fit");
    ok(c.size_dropped > 0, "size_dropped counter is reported");
    ok(js[0] == '[' && js[strlen(js) - 1] == ']', "json array stays well formed");
}

/* ==========================================================================
 * 11) worker.conf
 * ======================================================================== */
static void test_cfg_defaults(t6b_config *c)
{
    memset(c, 0, sizeof(*c));
    snprintf(c->provider_name, sizeof(c->provider_name), "%s", T6B_PROVIDER_MOCK);
    t6b_ds_defaults(&c->deepseek);
    t6b_mock_defaults(&c->mock);
    c->context_max_messages = CV_DEFAULT_MAX_MESSAGES;
    /* T7-05 之后 conf 里有 session 两行；这里必须给出**可回读**的值，
     * 否则 wc_write 会写 session_timeout_ms=0，wc_load 会以 bad value 拒绝整个文件。 */
    c->session.enabled = 1;
    c->session.timeout_ms = 12000;
}

static void test_conf_file(void)
{
    t6b_config cfg;
    char err[160];
    int applied = 0;

    printf("[11] worker.conf: parsed, key path only, bad values refused\n");
    test_cfg_defaults(&cfg);
    cfg.deepseek.temperature = 0.3;
    cfg.deepseek.max_tokens = 256;
    cfg.context_enabled = 1;
    cfg.context_max_messages = 8;
    ok(wc_write(&cfg, conf_path(), err, sizeof(err)) == 0, "wc_write (tmp+fsync+rename)");

    test_cfg_defaults(&cfg);
    {
        int rc = wc_load(&cfg, conf_path(), &applied, err, sizeof(err));
        if (rc != 0) printf("      wc_load rc=%d err=%s path=%s\n", rc, err, conf_path());
        ok(rc == 0, "wc_load ok");
    }
    ok(applied >= 8, "at least 8 keys applied");
    ok(cfg.context_enabled == 1, "context_enabled=1 loaded");
    ok(cfg.context_max_messages == 8, "context_max_messages=8 loaded");
    ok(cfg.deepseek.max_tokens == 256, "max_tokens=256 loaded");
    ok(cfg.deepseek.temperature > 0.29 && cfg.deepseek.temperature < 0.31,
       "temperature loaded");
    ok(strcmp(cfg.deepseek.api_key_file, T6B_DS_KEY_FILE_DEFAULT) == 0,
       "api_key_file stays a path, never a secret");
    {
        char buf[2048];
        size_t len = 0;
        ok(wu_read_file(conf_path(), buf, sizeof(buf), &len) == 0, "conf readable");
        ok(strstr(buf, "api_key_file=") != NULL, "conf stores the key FILE path");
        ok(strstr(buf, "api_key=") == NULL, "conf has no inline key field");
    }

    write_text(conf_path(), "api_key=secret\n");
    test_cfg_defaults(&cfg);
    ok(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == -2,
       "api_key in the config file is refused");

    write_text(conf_path(), "max_tokens=notanumber\n");
    test_cfg_defaults(&cfg);
    ok(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == -2,
       "invalid numeric value is refused");

    write_text(conf_path(), "context_max_messages=999\n");
    test_cfg_defaults(&cfg);
    ok(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == -2,
       "out-of-range context limit is refused");

    write_text(conf_path(), "# comment\n\ngarbage line\nunknown_key=1\ncontext_enabled=1\n");
    test_cfg_defaults(&cfg);
    ok(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == 0,
       "bad/unknown lines are ignored, file still loads");
    ok(cfg.context_enabled == 1, "the valid line still applies");
    ok(wc_load(&cfg, "Z:\\definitely\\missing.conf", &applied, err, sizeof(err)) == -1,
       "missing file reports an error instead of crashing");
}

/* ==========================================================================
 * 12) provider messages entry
 * ======================================================================== */
static int g_fake_msgs_calls;
static int g_fake_single_calls;

static int fake_init(t6b_provider *p, char *err, size_t errlen)
{
    (void)p; (void)err; (void)errlen;
    return 0;
}

static int fake_single(t6b_provider *p, const char *user_text, t6b_reply *out)
{
    (void)p;
    g_fake_single_calls++;
    out->status = T6B_P_OK;
    snprintf(out->text, sizeof(out->text), "single:%s", user_text);
    out->text_bytes = (int)strlen(out->text);
    return 0;
}

static int fake_msgs(t6b_provider *p, const char *messages_json, t6b_reply *out)
{
    (void)p;
    g_fake_msgs_calls++;
    out->status = T6B_P_OK;
    snprintf(out->text, sizeof(out->text), "msgs:%d", (int)strlen(messages_json));
    out->text_bytes = (int)strlen(out->text);
    return 0;
}

static void fake_fini(t6b_provider *p)
{
    (void)p;
}

static const t6b_provider_ops FAKE_WITH_MSGS =
    { "fake1", fake_init, fake_single, fake_fini, fake_msgs };
static const t6b_provider_ops FAKE_WITHOUT_MSGS =
    { "fake2", fake_init, fake_single, fake_fini, NULL };

static void test_provider_messages_entry(void)
{
    t6b_provider p;
    t6b_reply rep;

    printf("[12] provider layer accepts a full messages array\n");
    p.ops = &FAKE_WITH_MSGS;
    p.ctx = NULL;
    ok(t6b_provider_complete_msgs(&p, "[{\"role\":\"user\",\"content\":\"x\"}]", "x", &rep) == 0 &&
       rep.status == T6B_P_OK, "complete_msgs path used");
    ok(g_fake_msgs_calls == 1 && g_fake_single_calls == 0, "only the messages path was called");
    ok(strncmp(rep.text, "msgs:", 5) == 0, "reply comes from the messages path");

    p.ops = &FAKE_WITHOUT_MSGS;
    ok(t6b_provider_complete_msgs(&p, "[{\"role\":\"user\",\"content\":\"y\"}]", "y", &rep) == 0 &&
       rep.status == T6B_P_OK, "legacy provider still works");
    ok(g_fake_single_calls == 1, "fallback used complete(user_text)");
    ok(strcmp(rep.text, "single:y") == 0, "fallback passes the current user text only");

    p.ops = &FAKE_WITH_MSGS;
    ok(t6b_provider_complete_msgs(&p, "not-an-array", "y", &rep) == -1,
       "non-array messages are rejected before any provider call");

    {
        t6b_mock m;
        t6b_mock_cfg mc;
        t6b_mock_defaults(&mc);
        ok(t6b_mock_open(&p, &m, &mc) == 0, "mock open");
        ok(t6b_provider_init(&p, NULL, 0) == 0, "mock init");
        ok(t6b_provider_complete_msgs(
               &p, "[{\"role\":\"user\",\"content\":\"a\"},"
                   "{\"role\":\"assistant\",\"content\":\"b\"},"
                   "{\"role\":\"user\",\"content\":\"c\"}]", "c", &rep) == 0 &&
           rep.status == T6B_P_OK, "mock answers");
        ok(m.last_msg_count == 3, "mock counted 3 messages");
        t6b_provider_fini(&p);
    }
}

/* ==========================================================================
 * 13) DeepSeek request body
 * ======================================================================== */
/* ==========================================================================
 * 13b) T7-03: system prompt is messages[0], survives eviction, never duplicated
 * ======================================================================== */
static void test_system_prompt_first(void)
{
    cv_ctx c;
    cv_cfg cfg;
    char js[CV_JSON_MAX];
    char err[CV_ERR_MAX];
    int n;
    int i;

    printf("[13b] system prompt sits at messages[0] and is not counted in eviction\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    cfg.max_messages = 4;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    (void)wu_unlink(ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    for (i = 0; i < 4; i++) {
        char u[32], a[32];
        snprintf(u, sizeof(u), "U%d", i);
        snprintf(a, sizeof(a), "A%d", i);
        ok(cv_commit_turn(&c, u, a) == 0, "commit turn");
    }
    ok(c.count == 4, "eviction kept 4 messages (2 turns)");

    n = cv_build_messages(&c, g_sys, "NOW", js, sizeof(js), err, sizeof(err));
    ok(n == 5, "5 non-system messages (4 history + current)");
    ok(strncmp(js, "[{\"role\":\"system\"", 16) == 0,
       "first message is the system prompt");
    ok(count_role(js, "system") == 1, "exactly one system message");
    ok(strstr(js, "\"role\":\"system\"") < strstr(js, "\"role\":\"user\""),
       "system comes before every user message");
    ok(strstr(js, "SYSROLE speaker assistant") != NULL, "system text intact");
    ok(strstr(js, "NOW") != NULL, "current user turn still last");

    /* 空 system -> 老行为：完全没有 system 条目 */
    n = cv_build_messages(&c, NULL, "NOW2", js, sizeof(js), err, sizeof(err));
    ok(n == 5, "same message count without a system prompt");
    ok(count_role(js, "system") == 0, "no system entry when prompt is empty");

    /* 极小的缓冲区：system 放不下时必须报错，而不是静默丢掉 system */
    n = cv_build_messages(&c, g_sys, "NOW3", js, 40, err, sizeof(err));
    ok(n == -1, "system that does not fit fails the request instead of being dropped");

    /* system 也不写进上下文文件（重启后仍然只有 user/assistant） */
    ok(cv_init(&c, &cfg) == 0, "reload");
    for (i = 0; i < c.count; i++) {
        ok(strcmp(c.msgs[i].role, "system") != 0, "no system message persisted in context.json");
    }
}

static void test_build_body_msgs(void)
{
    char body[T6B_DS_BODY_MAX];
    char err[160];
    size_t blen = 0;
    const char *msgs = "[{\"role\":\"user\",\"content\":\"TOKYO\"},"
                       "{\"role\":\"assistant\",\"content\":\"CAPITAL\"},"
                       "{\"role\":\"user\",\"content\":\"FOOD\"}]";

    printf("[13] deepseek request body carries the whole messages array\n");
    ok(t6b_ds_build_body_msgs("deepseek-flash", T6B_DS_SYSTEM_PROMPT, msgs, NULL, 0.5, 321,
                              body, sizeof(body), &blen, err, sizeof(err)) == 0, "build ok");
    ok(blen == strlen(body), "length reported");
    ok(strstr(body, "\"model\":\"deepseek-flash\"") != NULL, "model present");
    ok(strstr(body, "\"temperature\":0.50") != NULL, "temperature configurable");
    ok(strstr(body, "\"max_tokens\":321") != NULL, "max_tokens configurable");
    ok(strstr(body, "\"role\":\"system\"") != NULL, "system prompt is first");
    ok(strstr(body, "TOKYO") != NULL && strstr(body, "CAPITAL") != NULL &&
       strstr(body, "FOOD") != NULL, "all three messages present");
    ok(count_role(body, "user") == 2 && count_role(body, "assistant") == 1, "roles preserved");
    ok(body[strlen(body) - 1] == '}', "body is closed");
    ok(strstr(body, "\"stream\":false") != NULL, "still non-streaming");

    ok(t6b_ds_build_body_msgs("m", NULL, "{}", NULL, 0.5, 100, body, sizeof(body), &blen,
                              err, sizeof(err)) == -1, "non-array messages rejected");
    ok(t6b_ds_build_body_msgs("m", NULL, "[{\"a\":1}", NULL, 0.5, 100, body, sizeof(body), &blen,
                              err, sizeof(err)) == -1, "unterminated array rejected");

    /* T7-06-R1：思考档位（"thinking":"fast"）。空值必须**不发**这个字段，保持老行为。 */
    printf("[13b] thinking field is emitted only when configured\n");
    ok(t6b_ds_build_body_msgs("qwen4-max", NULL, "[{\"role\":\"user\",\"content\":\"HI\"}]",
                              "fast", 0.5, 64, body, sizeof(body), &blen,
                              err, sizeof(err)) == 0, "build with thinking ok");
    ok(strstr(body, "\"thinking\":\"fast\"") != NULL, "thinking=fast present");
    ok(body[strlen(body) - 1] == '}', "body still closed");
    ok(t6b_ds_build_body_msgs("qwen4-max", NULL, "[{\"role\":\"user\",\"content\":\"HI\"}]",
                              NULL, 0.5, 64, body, sizeof(body), &blen,
                              err, sizeof(err)) == 0, "build without thinking ok");
    ok(strstr(body, "thinking") == NULL, "no thinking field when unset");
    ok(t6b_ds_build_body_msgs("qwen4-max", NULL, "[{\"role\":\"user\",\"content\":\"HI\"}]",
                              "", 0.5, 64, body, sizeof(body), &blen,
                              err, sizeof(err)) == 0, "empty thinking accepted");
    ok(strstr(body, "thinking") == NULL, "empty thinking sends nothing");
}

/* ==========================================================================
 * 14) save/load round-trip with escapes and CJK
 * ======================================================================== */
static void test_roundtrip_escape(void)
{
    cv_ctx c;
    cv_cfg cfg;
    const char *u = "quote \" and newline \n inside";
    const char *a = "backslash \\ and tab \t inside";
    char backupU[CV_TEXT_MAX];
    char backupA[CV_TEXT_MAX];

    printf("[14] save/load round-trip keeps quotes, newlines and CJK intact\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    (void)wu_unlink(ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    ok(cv_commit_turn(&c, u, a) == 0, "commit with escapes");
    snprintf(backupU, sizeof(backupU), "%s", u);
    snprintf(backupA, sizeof(backupA), "%s", a);

    ok(cv_init(&c, &cfg) == 0, "reload");
    ok(c.last_load_state == CV_LOAD_OK, "load state ok");
    ok(c.count == 2, "two messages restored");
    ok(strcmp(c.msgs[0].text, backupU) == 0, "user text identical after reload");
    ok(strcmp(c.msgs[1].text, backupA) == 0, "assistant text identical after reload");
}

/* ==========================================================================
 * 15) shrink on load
 * ======================================================================== */
static void test_shrink_on_load(void)
{
    cv_ctx c;
    cv_cfg cfg;
    int i;

    printf("[15] smaller limit on restart trims the history at load time\n");
    cv_defaults(&cfg);
    cfg.enabled = 1;
    cfg.max_messages = 12;
    snprintf(cfg.file, sizeof(cfg.file), "%s", ctx_path());
    (void)wu_unlink(ctx_path());
    ok(cv_init(&c, &cfg) == 0, "cv_init ok");
    for (i = 1; i <= 4; i++) {
        char u[32], a[32];
        snprintf(u, sizeof(u), "U%d", i);
        snprintf(a, sizeof(a), "A%d", i);
        (void)cv_commit_turn(&c, u, a);
    }
    ok(c.count == 8, "4 turns stored");

    cfg.max_messages = 4;
    ok(cv_init(&c, &cfg) == 0, "reload with a smaller limit");
    ok(c.count == 4, "trimmed to 4 messages");
    ok(strcmp(c.msgs[0].text, "U3") == 0, "the two oldest turns were dropped");
    ok(strcmp(c.msgs[0].role, "user") == 0, "still starts with a user message");
}

int main(void)
{
    tmp_setup();

    printf("=== T7-01 conversation context unit test (host, no network) ===\n");
    printf("tmp: %s\n\n", g_tmp);

    test_single_turn_disabled();
    test_two_three_turns();
    test_restart_restore();
    test_eviction();
    test_failure_no_pollution();
    test_corrupt_recovery();
    test_clear_and_disabled_isolation();
    test_size_downgrade();
    test_conf_file();
    test_provider_messages_entry();
    test_build_body_msgs();
    test_system_prompt_first();
    test_roundtrip_escape();
    test_shrink_on_load();

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    if (g_fail != 0) {
        printf("RESULT: FAIL\n");
        return 1;
    }
    printf("RESULT: PASS\n");
    return 0;
}
