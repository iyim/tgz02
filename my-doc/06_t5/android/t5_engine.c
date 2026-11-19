/*
 * t5_engine.c -- 见 t5_engine.h
 */
#include "t5_engine.h"
#include "t5_provider.h"
#include "t5_store.h"
#include "t5_util.h"
#include "t5_wav.h"

#include <dirent.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define T5_CAND_MAX 256
#define T5_JOBS_JSON   "jobs.jsonl"
#define T5_RESULTS_JSON "results.jsonl"

typedef struct {
    char      name[T5_MAX_PATH];
    long long size;
    long long mtime_ms;         /* 文件最后写入时间（墙钟） */
    long long first_seen_ms;
    long long last_change_ms;
    int       used;
} t5_candidate;

struct t5_engine {
    t5_config   cfg;
    t5_stats    stats;
    t5_job     *slots;          /* max_jobs 项 */
    int        *id_table;       /* 开放寻址：slot 下标，-1 空，-2 删除 */
    int         id_cap;         /* 2 的幂 */
    int         used_slots;
    t5_candidate cands[T5_CAND_MAX];
    const t5_provider *prov;
    void       *prov_ctx;
    t5_store    jobs_store;
    t5_store    results_store;
    char        last_err[T5_MAX_ERR];
};

/* ---------------- 小工具 ---------------- */

void t5_config_defaults(t5_config *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    snprintf(c->watch_dir, sizeof(c->watch_dir), "%s", "/data/local/tmp/t4/segments");
    snprintf(c->work_dir, sizeof(c->work_dir), "%s", "/data/local/tmp/t5");
    c->provider_name = "mock";
    c->scan_interval_ms = 1000;
    c->stable_ms = 500;
    c->incomplete_timeout_ms = 120000;
    c->retry_delay_ms = 1000;
    c->max_jobs = 4096;
    c->max_retries = 3;
    c->verbose = 0;
}

static void set_err(t5_engine *e, const char *msg)
{
    if (e == NULL) return;
    snprintf(e->last_err, sizeof(e->last_err), "%s", msg ? msg : "");
}

static unsigned hash_id(const char *s, int cap)
{
    uint64_t h = t5_fnv1a64(s, strlen(s));
    return (unsigned)(h & (uint64_t)(cap - 1));
}

static int id_lookup(const t5_engine *e, const char *id)
{
    unsigned i = hash_id(id, e->id_cap);
    unsigned probes;

    for (probes = 0; probes < (unsigned)e->id_cap; probes++) {
        int v = e->id_table[i];
        if (v == -1) return -1;
        if (v >= 0 && strcmp(e->slots[v].job_id, id) == 0) return v;
        i = (i + 1) & (unsigned)(e->id_cap - 1);
    }
    return -1;
}

static void id_insert(t5_engine *e, const char *id, int slot)
{
    unsigned i = hash_id(id, e->id_cap);
    unsigned probes;

    for (probes = 0; probes < (unsigned)e->id_cap; probes++) {
        if (e->id_table[i] == -1 || e->id_table[i] == -2) { e->id_table[i] = slot; return; }
        i = (i + 1) & (unsigned)(e->id_cap - 1);
    }
}

/* 删除需要重建探测链：这里用"墓碑 + 后续重插"的简单做法 */
static void id_remove(t5_engine *e, const char *id)
{
    unsigned i = hash_id(id, e->id_cap);
    unsigned probes;

    for (probes = 0; probes < (unsigned)e->id_cap; probes++) {
        int v = e->id_table[i];
        if (v == -1) return;
        if (v >= 0 && strcmp(e->slots[v].job_id, id) == 0) { e->id_table[i] = -2; return; }
        i = (i + 1) & (unsigned)(e->id_cap - 1);
    }
}

static int next_pow2(int v)
{
    int p = 1;
    while (p < v) p <<= 1;
    return p;
}

/* 找一个空槽；满了就淘汰最老的终态记录（会记 evicted，等于放弃去重能力） */
static int alloc_slot(t5_engine *e)
{
    int i;

    for (i = 0; i < e->cfg.max_jobs; i++) {
        if (!e->slots[i].used) { e->slots[i].used = 1; e->slots[i].slot = i; e->used_slots++; return i; }
    }
    /* 淘汰：取终态里 t_end 最早的那条（时间串按字典序即时间序） */
    {
        int victim = -1;
        for (i = 0; i < e->cfg.max_jobs; i++) {
            if (!t5_state_is_terminal(e->slots[i].state)) continue;
            if (victim < 0 || strcmp(e->slots[i].t_end, e->slots[victim].t_end) < 0) victim = i;
        }
        if (victim < 0) return -1;          /* 全是活任务：真的没地方了 */
        id_remove(e, e->slots[victim].job_id);
        memset(&e->slots[victim], 0, sizeof(e->slots[victim]));
        e->slots[victim].used = 1;
        e->slots[victim].slot = victim;
        e->stats.evicted++;
        return victim;
    }
}

/* ---------------- 候选表 ---------------- */

static t5_candidate *cand_find(t5_engine *e, const char *name)
{
    int i;
    for (i = 0; i < T5_CAND_MAX; i++) {
        if (e->cands[i].used && strcmp(e->cands[i].name, name) == 0) return &e->cands[i];
    }
    return NULL;
}

static t5_candidate *cand_add(t5_engine *e, const char *name)
{
    int i, victim = 0;
    long long oldest = -1;

    for (i = 0; i < T5_CAND_MAX; i++) {
        if (!e->cands[i].used) { victim = i; oldest = -2; break; }
    }
    if (oldest != -2) {
        for (i = 0; i < T5_CAND_MAX; i++) {
            if (oldest < 0 || e->cands[i].last_change_ms < oldest) {
                oldest = e->cands[i].last_change_ms;
                victim = i;
            }
        }
        e->cands[victim].used = 0;
    }
    memset(&e->cands[victim], 0, sizeof(e->cands[victim]));
    snprintf(e->cands[victim].name, sizeof(e->cands[victim].name), "%s", name);
    e->cands[victim].used = 1;
    return &e->cands[victim];
}

/* ---------------- 任务创建 / 状态写入 ---------------- */

static void job_fill_common(t5_engine *e, t5_job *j, const t5_wav_info *wi, long long size)
{
    memset(j, 0, sizeof(*j));
    j->slot = -1;
    snprintf(j->name, sizeof(j->name), "%s", wi ? wi->name : "");
    snprintf(j->file, sizeof(j->file), "%s", wi ? wi->path : "");
    j->size = size;
    snprintf(j->provider, sizeof(j->provider), "%s", e->prov ? e->prov->name : "mock");
    snprintf(j->provider_type, sizeof(j->provider_type), "%s", e->prov ? e->prov->type : "mock");
    t5_parse_t4_name(j->name, j->run_id, &j->seg_id, &j->start_seq);
}

static void job_write(t5_engine *e, const t5_job *j)
{
    if (t5_store_append(&e->jobs_store, j) != 0) e->stats.store_errors++;
    if (t5_state_is_terminal(j->state)) {
        if (t5_store_append(&e->results_store, j) != 0) e->stats.store_errors++;
    }
}

static void set_state(t5_engine *e, t5_job *j, t5_state st)
{
    j->state = st;
    job_write(e, j);
}

/* 新建任务：DISCOVERED -> VALIDATING -> (PENDING | FAILED) */
static t5_job *job_create(t5_engine *e, const t5_wav_info *wi, long long size,
                          const char *fail_reason)
{
    int slot = alloc_slot(e);
    t5_job *j;

    if (slot < 0) { e->stats.queue_full++; return NULL; }
    j = &e->slots[slot];
    job_fill_common(e, j, wi, size);
    j->used = 1;            /* job_fill_common 里 memset 过，这里补回运行期字段 */
    j->slot = slot;
    t5_make_job_id(j->name, size, j->job_id);
    /* 如果同 id 已存在（并发/重启），复用旧槽位 */
    {
        int exist = id_lookup(e, j->job_id);
        if (exist >= 0) {
            j->used = 0;
            e->used_slots--;
            e->stats.dup_skips++;
            return &e->slots[exist];
        }
    }
    id_insert(e, j->job_id, slot);
    e->stats.jobs_tracked = e->used_slots;
    e->stats.new_jobs++;

    set_state(e, j, T5_DISCOVERED);
    set_state(e, j, T5_VALIDATING);
    if (fail_reason != NULL && fail_reason[0] != '\0') {
        j->err_code = T5_ASR_PERMANENT;
        snprintf(j->err_msg, sizeof(j->err_msg), "%s", fail_reason);
        t5_time_str(j->t_end, sizeof(j->t_end));
        set_state(e, j, T5_FAILED);
        e->stats.invalid++;
    } else {
        j->next_try_ms = 0;
        set_state(e, j, T5_PENDING);
    }
    return j;
}

/* ---------------- 扫描 ---------------- */

static int scan_dir(t5_engine *e)
{
    DIR *d;
    struct dirent *de;
    int added = 0;
    long long now = t5_now_ms();

    d = opendir(e->cfg.watch_dir);
    if (d == NULL) {
        char msg[T5_MAX_ERR];
        snprintf(msg, sizeof(msg), "opendir-failed:%s(errno=%d)", e->cfg.watch_dir, errno);
        set_err(e, msg);
        return -1;
    }
    set_err(e, "");

    while ((de = readdir(d)) != NULL) {
        char path[T5_MAX_PATH];
        t5_candidate *c;
        long long size;
        long long mtime_ms;
        t5_wav_info wi;
        t5_wav_check vc;
        char werr[T5_MAX_ERR];
        int n;

        if (de->d_name[0] == '.') continue;
        if (!t5_ends_with_ci(de->d_name, ".wav")) continue;

        n = snprintf(path, sizeof(path), "%s/%s", e->cfg.watch_dir, de->d_name);
        if (n < 0 || (size_t)n >= sizeof(path)) continue;

        size = t5_file_size(path);
        if (size < 0) continue;
        mtime_ms = t5_file_mtime_ms(path);
        if (mtime_ms < 0) mtime_ms = 0;
        e->stats.files_seen++;

        /* 同一 (文件名, 大小) 已经建过任务 -> 重复扫描，跳过 */
        {
            char id[T5_MAX_ID];
            t5_make_job_id(de->d_name, size, id);
            if (id_lookup(e, id) >= 0) { e->stats.dup_skips++; continue; }
        }

        /* 稳定性窗口：大小连续 stable_ms 不变才认为写完了 */
        c = cand_find(e, de->d_name);
        if (c == NULL) {
            c = cand_add(e, de->d_name);
            c->size = size;
            c->mtime_ms = mtime_ms;
            c->first_seen_ms = now;
            c->last_change_ms = now;
            continue;
        }
        if (c->size != size || c->mtime_ms != mtime_ms) {
            c->size = size;
            c->mtime_ms = mtime_ms;
            c->last_change_ms = now;
            continue;
        }
        /* 判定"写完了"靠两条：
         *   1) 连续两次采样看到同样的 (size, mtime)，且两次之间至少隔了 stable_ms；
         *   2) 真正拦住在写文件的，是 t5_wav_inspect() 里的 T4 语义检查
         *      （data_len 只有 t4_wav_close 才回填，未关闭时恒为 0）。
         * mtime 在这里只用于"内容有没有再变"的快速比较，不当计时器用
         * （stat 的 mtime 是秒级，stable_ms 常常小于 1 s）。 */
        if (now - c->last_change_ms < e->cfg.stable_ms) continue;

        /* 稳定了：校验 */
        memset(&wi, 0, sizeof(wi));
        werr[0] = '\0';
        vc = t5_wav_inspect(path, &wi, werr, sizeof(werr));

        if (vc == T5_WAV_OK) {
            t5_job *j = job_create(e, &wi, size, NULL);
            if (j != NULL) { added++; c->used = 0; }
            /* 槽位满：保留候选，下轮再试 */
        } else if (vc == T5_WAV_INCOMPLETE) {
            char reason[T5_MAX_ERR];
            e->stats.incomplete_skips++;
            /* 一直写不完（T4 崩了/文件残留）也不能无限等 */
            if (now - c->first_seen_ms > e->cfg.incomplete_timeout_ms) {
                snprintf(reason, sizeof(reason), "incomplete-timeout:%s", werr);
                snprintf(wi.name, sizeof(wi.name), "%s", de->d_name);
                snprintf(wi.path, sizeof(wi.path), "%s", path);
                if (job_create(e, &wi, size, reason) != NULL) { added++; c->used = 0; }
            }
        } else if (vc == T5_WAV_INVALID) {
            snprintf(wi.name, sizeof(wi.name), "%s", de->d_name);
            snprintf(wi.path, sizeof(wi.path), "%s", path);
            if (job_create(e, &wi, size, werr) != NULL) { added++; c->used = 0; }
        } else { /* MISSING */
            c->used = 0;
        }
    }
    closedir(d);

    /* 候选表清理：文件已消失的直接丢掉 */
    {
        int i;
        for (i = 0; i < T5_CAND_MAX; i++) {
            char path[T5_MAX_PATH];
            if (!e->cands[i].used) continue;
            snprintf(path, sizeof(path), "%s/%s", e->cfg.watch_dir, e->cands[i].name);
            if (t5_file_size(path) < 0) e->cands[i].used = 0;
        }
    }
    return added;
}

/* ---------------- 处理 ---------------- */

static int process_one(t5_engine *e, t5_job *j)
{
    t5_wav_info wi;
    char werr[T5_MAX_ERR];
    t5_wav_check vc;
    t5_asr_result res;
    int rc;

    /* 处理前再校验一次：文件可能在等待期间被删/被改 */
    vc = t5_wav_inspect(j->file, &wi, werr, sizeof(werr));
    if (vc != T5_WAV_OK) {
        j->err_code = (vc == T5_WAV_INCOMPLETE) ? T5_ASR_TRANSIENT : T5_ASR_PERMANENT;
        snprintf(j->err_msg, sizeof(j->err_msg), "recheck-%s:%s", t5_wav_check_name(vc), werr);
        if (j->err_code == T5_ASR_TRANSIENT && j->attempt < e->cfg.max_retries) {
            j->attempt++;
            j->next_try_ms = t5_now_ms() + e->cfg.retry_delay_ms;
            t5_time_str(j->t_end, sizeof(j->t_end));
            set_state(e, j, T5_RETRY);
            e->stats.retried++;
            return 1;
        }
        t5_time_str(j->t_end, sizeof(j->t_end));
        set_state(e, j, T5_FAILED);
        e->stats.failed++;
        return 1;
    }

    t5_time_str(j->t_start, sizeof(j->t_start));
    j->err_code = 0;
    j->err_msg[0] = '\0';
    set_state(e, j, T5_PROCESSING);

    memset(&res, 0, sizeof(res));
    rc = e->prov->submit(e->prov_ctx, &wi, &res);
    t5_time_str(j->t_end, sizeof(j->t_end));

    if (rc != 0) {
        /* Provider 自身崩溃：按临时错误处理 */
        res.code = T5_ASR_TRANSIENT;
        snprintf(res.err, sizeof(res.err), "provider-returned-%d", rc);
        e->stats.provider_errors++;
    }

    if (res.code == T5_ASR_OK) {
        snprintf(j->text, sizeof(j->text), "%s", res.text);
        j->err_code = 0;
        j->err_msg[0] = '\0';
        set_state(e, j, T5_SUCCEEDED);
        e->stats.succeeded++;
        return 1;
    }

    j->err_code = res.code;
    snprintf(j->err_msg, sizeof(j->err_msg), "%s", res.err[0] ? res.err : "provider-error");

    if (res.code == T5_ASR_TRANSIENT && j->attempt < e->cfg.max_retries) {
        j->attempt++;
        j->next_try_ms = t5_now_ms() + e->cfg.retry_delay_ms;
        set_state(e, j, T5_RETRY);
        e->stats.retried++;
        return 1;
    }

    set_state(e, j, T5_FAILED);
    e->stats.failed++;
    return 1;
}

int t5_engine_process_ready(t5_engine *e, int max_jobs)
{
    int done = 0;
    long long now;
    int i;

    if (e == NULL) return -1;
    now = t5_now_ms();
    for (i = 0; i < e->cfg.max_jobs; i++) {
        t5_job *j = &e->slots[i];
        if (!j->used) continue;
        if (j->state != T5_PENDING && j->state != T5_RETRY) continue;
        if (j->next_try_ms > now) continue;
        process_one(e, j);
        done++;
        if (max_jobs > 0 && done >= max_jobs) break;
        now = t5_now_ms();
    }
    return done;
}

/* ---------------- 回放 / 生命周期 ---------------- */

typedef struct {
    t5_engine *e;
} replay_arg;

static void replay_cb(void *ud, const t5_job *rec)
{
    replay_arg *ra = (replay_arg *)ud;
    t5_engine *e = ra->e;
    int slot = id_lookup(e, rec->job_id);

    if (slot < 0) {
        slot = alloc_slot(e);
        if (slot < 0) { e->stats.queue_full++; return; }
        memset(&e->slots[slot], 0, sizeof(e->slots[slot]));
        e->slots[slot].used = 1;
        e->slots[slot].slot = slot;
        id_insert(e, rec->job_id, slot);
    }
    {
        t5_job *dst = &e->slots[slot];
        int keep_used = dst->used;
        int keep_slot = dst->slot;
        memcpy(dst, rec, sizeof(*dst));
        dst->used = keep_used;
        dst->slot = keep_slot;
        dst->next_try_ms = 0;
    }
    e->stats.jobs_tracked = e->used_slots;
}

t5_engine *t5_engine_open(const t5_config *cfg, char *err, size_t errlen)
{
    t5_engine *e;
    replay_arg ra;
    unsigned long lines = 0, bad = 0;
    int i;

    if (err && errlen) err[0] = '\0';
    if (cfg == NULL) return NULL;
    if (cfg->max_jobs < 4 || cfg->max_jobs > 100000) {
        if (err && errlen) snprintf(err, errlen, "bad-max-jobs:%d", cfg->max_jobs);
        return NULL;
    }

    e = (t5_engine *)calloc(1, sizeof(*e));
    if (e == NULL) {
        if (err && errlen) snprintf(err, errlen, "oom-engine");
        return NULL;
    }
    e->cfg = *cfg;
    e->id_cap = next_pow2(cfg->max_jobs * 2);
    e->slots = (t5_job *)calloc((size_t)cfg->max_jobs, sizeof(t5_job));
    e->id_table = (int *)malloc((size_t)e->id_cap * sizeof(int));
    if (e->slots == NULL || e->id_table == NULL) {
        free(e->slots);
        free(e->id_table);
        free(e);
        if (err && errlen) snprintf(err, errlen, "oom-slots");
        return NULL;
    }
    for (i = 0; i < e->id_cap; i++) e->id_table[i] = -1;
    e->jobs_store.fd = -1;
    e->results_store.fd = -1;

    e->prov = t5_provider_by_name(cfg->provider_name);
    if (e->prov == NULL) {
        if (err && errlen) snprintf(err, errlen, "unknown-provider:%s", cfg->provider_name);
        t5_engine_close(e);
        return NULL;
    }
    e->prov_ctx = e->prov->init(NULL, err, errlen);
    if (e->prov_ctx == NULL) {
        t5_engine_close(e);
        return NULL;
    }

    if (t5_mkdir_p(cfg->work_dir) != 0) {
        if (err && errlen) snprintf(err, errlen, "cannot-create-work-dir:%s", cfg->work_dir);
        t5_engine_close(e);
        return NULL;
    }
    if (t5_store_open(&e->jobs_store, cfg->work_dir, T5_JOBS_JSON) != 0 ||
        t5_store_open(&e->results_store, cfg->work_dir, T5_RESULTS_JSON) != 0) {
        if (err && errlen) snprintf(err, errlen, "cannot-open-store-in:%s", cfg->work_dir);
        t5_engine_close(e);
        return NULL;
    }

    /* 重启恢复：回放 jobs.jsonl（同一 job_id 后写覆盖先写） */
    ra.e = e;
    if (t5_store_replay(cfg->work_dir,
                        T5_JOBS_JSON,
                        replay_cb,
                        &ra,
                        &lines,
                        &bad) != 0) {
        if (err && errlen) {
            snprintf(err, errlen,
                     "replay-failed:%s", T5_JOBS_JSON);
        }

        t5_engine_close(e);
        return NULL;
    }
    e->stats.replay_lines = lines;
    e->stats.bad_lines = bad;

    /* 中间态 -> RETRY（上次进程被杀 / 被打断） */
    for (i = 0; i < cfg->max_jobs; i++) {
        t5_job *j = &e->slots[i];
        if (!j->used) continue;
        if (j->state == T5_PROCESSING || j->state == T5_DISCOVERED || j->state == T5_VALIDATING) {
            snprintf(j->err_msg, sizeof(j->err_msg), "recovered-from-%s", t5_state_name(j->state));
            j->err_code = T5_ASR_TRANSIENT;
            j->next_try_ms = 0;
            set_state(e, j, T5_RETRY);
            e->stats.recovered++;
        } else if (j->state == T5_PENDING || j->state == T5_RETRY) {
            j->next_try_ms = 0;
        }
    }
    e->stats.jobs_tracked = e->used_slots;
    return e;
}

void t5_engine_close(t5_engine *e)
{
    if (e == NULL) return;
    if (e->prov && e->prov_ctx) e->prov->release(e->prov_ctx);
    t5_store_close(&e->jobs_store);
    t5_store_close(&e->results_store);
    free(e->slots);
    free(e->id_table);
    free(e);
}

int t5_engine_scan(t5_engine *e)
{
    if (e == NULL) return -1;
    e->stats.scans++;
    return scan_dir(e);
}

const t5_stats *t5_engine_stats(const t5_engine *e)
{
    return e ? &e->stats : NULL;
}

const t5_job *t5_engine_find_job(const t5_engine *e, const char *job_id)
{
    int slot;
    if (e == NULL || job_id == NULL) return NULL;
    slot = id_lookup(e, job_id);
    return slot >= 0 ? &e->slots[slot] : NULL;
}

const char *t5_engine_last_error(const t5_engine *e)
{
    return e ? e->last_err : "";
}
