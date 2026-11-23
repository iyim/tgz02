/* 本文件由 extract_obs.py 从 libtg_hook.c 逐字抽取，请勿手工修改。
 * 源文件 : libtg_hook.c
 * obs模块: sha256 20b4e902a185918f3a9465376e4f6cd6041fbb83dc4391e163ae37955dd00bd6
 * tg_nlp_cb: sha256 b28350aa2286f02ef30ec159641bf4d4046df211ea6db081ae74f60216c78e38
 */
/* @@TG-OBS-MODULE-BEGIN@@ */
/*
 * T8-12.15 被动观测环（只读观测，不参与任何决定）
 *
 * 为什么单独一个环、而不是直接往 logcat 写：
 *   回调在 :core 的关键路径上，任务书禁止在回调里做文件/网络/logcat I/O、动态分配和
 *   阻塞锁。所以回调里只做「分配一个序号 + 写一条定长记录 + 两个原子操作」，
 *   真正的文本化与导出放到 Injector 的远程调用里做（tg_nlu_observe）。
 *
 * 为什么是每个槽位一把 seqlock，而不是一把全局锁：
 *   全局锁会在并发回调之间互相等待（任务书禁止阻塞锁）。这里用「序号唯一 + 槽位
 *   序号奇偶」的做法：写入方按 fetch_add 拿到的序号定位槽位，写前把该槽的 seq
 *   从偶数 CAS 成奇数（表示写入中），写完再置成下一个偶数；读取方只接受
 *   「前后 seq 相同且为偶数」的记录，因此永远拿不到半条。
 *
 * 为什么满了覆盖最旧而不是丢弃最新：
 *   P0-1 关心的是"最近这段运行里发生了什么"，旧记录价值低；覆盖次数单独记账
 *   （g_obs_overwritten），不会静默丢数据。
 *
 * ARM32 相关：
 *   seq/tick 是 8 字节，必须 8 字节对齐才能用 ldrexd/strexd；下面的编译期检查
 *   强制 sizeof 是 8 的倍数且对齐 ≥ 8，ARM32 构建时由编译器把关。
 */
#define TG_OBS_CAP        256u          /* 必须为 2 的幂 */
#define TG_OBS_MASK       (TG_OBS_CAP - 1u)
#define TG_OBS_LINE_MAX   104

typedef struct {
    volatile uint64_t seq;          /* 槽位 seqlock：偶数=稳定，奇数=写入中 */
    volatile uint64_t tick;         /* 全局序号（从 0 开始） */
    volatile int64_t  mono_ms;      /* CLOCK_MONOTONIC 毫秒 */
    volatile int64_t  wall_ms;      /* CLOCK_REALTIME 毫秒 */
    volatile int32_t  sid;          /* 回调的 sessionId（原样，不做解释） */
    volatile int32_t  type;         /* 回调的 type */
    volatile int32_t  mode;         /* 回调发生时的模式：NLS_PASS/DECIDE/FAILCLOSED */
    volatile int32_t  decision;     /* 0 = 放行原厂(PASS)，1 = 跳过(DROP) */
    volatile int32_t  res_is_null;  /* R13: res 指针是否为空（只比较指针，不解引用） */
    volatile int32_t  reserved;     /* 补齐 8 字节对齐，留待扩展 */
} tg_obs_slot;

static tg_obs_slot g_obs[TG_OBS_CAP];
static volatile unsigned long g_obs_total;        /* 所有模式下的回调总数 */
static volatile unsigned long g_obs_release;      /* 决定=放行原厂 */
static volatile unsigned long g_obs_skip;         /* 决定=跳过原函数 */
static volatile unsigned long g_obs_failclosed;   /* 模式=failclosed 的次数 */
static volatile unsigned long g_obs_overwritten;  /* 被覆盖掉的最旧记录数 */
static volatile unsigned long g_obs_contended;    /* 槽位抢占重试耗尽（应恒为 0） */

/* 编译期布局自证（ARM32 上由 NDK 构建强制成立，不靠运行时断言） */
typedef char tg_obs_size_check[(sizeof(tg_obs_slot) % 8 == 0) ? 1 : -1];
typedef char tg_obs_align_check[((__alignof__(tg_obs_slot) >= 8) ? 1 : -1)];
typedef char tg_obs_cap_check[((TG_OBS_CAP & TG_OBS_MASK) == 0) ? 1 : -1];

static long long obs_clock_ms(clockid_t clk)
{
    struct timespec ts;

    if (clock_gettime(clk, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
}

/*
 * 抢占槽位失败时的退让：只发一条 CPU 提示指令（ARM: yield / x86: pause），
 * 不是系统调用、不是锁、不会睡眠。写者被调度器抢占时，占着槽位的那个写者
 * 一定已经在跑完写入了，所以退让几次就能拿到，不需要放弃记录。
 */
static void obs_cpu_relax(void)
{
#if defined(__arm__) || defined(__aarch64__)
    __asm__ __volatile__("yield" ::: "memory");
#elif defined(__i386__) || defined(__x86_64__)
    __asm__ __volatile__("pause" ::: "memory");
#else
    __asm__ __volatile__("" ::: "memory");
#endif
}

/*
 * 记一条观测。调用点保证：不做 I/O、不分配、不取锁、不解引用 res。
 * 只读 sid/type 两个整数 + res 是否为空（仅指针比较），绝不碰 NlpResult 内容，
 * 也不记录任何语音文本。
 */
static void obs_record(int sid, int type, int mode, int decision, int res_is_null)
{
    unsigned long n = __atomic_fetch_add(&g_obs_total, 1UL, __ATOMIC_RELAXED);
    tg_obs_slot *s = &g_obs[n & TG_OBS_MASK];
    uint64_t q = 0;
    int tries;

    if (decision) INC(g_obs_skip); else INC(g_obs_release);
    if (mode == NLS_FAILCLOSED) INC(g_obs_failclosed);
    if (n >= (unsigned long)TG_OBS_CAP) INC(g_obs_overwritten);

    /* 抢占槽位：序号唯一时第一次就成功；只有"环被追尾"（写者被抢占）才重试 */
    for (tries = 0; tries < 65536; tries++) {
        q = __atomic_load_n(&s->seq, __ATOMIC_RELAXED);
        if ((q & 1u) == 0 &&
            __atomic_compare_exchange_n(&s->seq, &q, q + 1u, 0,
                                        __ATOMIC_ACQ_REL, __ATOMIC_RELAXED)) {
            break;
        }
        obs_cpu_relax();
    }
    if (tries == 65536) {               /* 拿不到槽位：计数已记，放弃这一条 */
        INC(g_obs_contended);
        return;
    }

    s->tick = (uint64_t)n;
    s->mono_ms = obs_clock_ms(CLOCK_MONOTONIC);
    s->wall_ms = obs_clock_ms(CLOCK_REALTIME);
    s->sid = sid;
    s->type = type;
    s->mode = mode;
    s->decision = decision ? 1 : 0;
    s->res_is_null = res_is_null ? 1 : 0;
    s->reserved = 0;
    __atomic_store_n(&s->seq, q + 2u, __ATOMIC_RELEASE);
}

/*
 * 观测快照导出（在回调之外执行；Injector 通过 tg_nlu_observe 远程调用它）。
 *
 *   from = 0 : 先写一行头（总数 / 分布 / 覆盖数 / 环范围），再从最老的存活记录开始；
 *   from = k : 从序号 k 继续。
 *   返回     : 下次应当传入的 from（0 = 已经取完）；-1 = 参数非法。
 *
 * 为什么分块：Injector 只能借目标进程 scratch 页（64 KB，其中栈在 0x8000）
 * 当返回缓冲，一次给不了整个环；分块 + "返回下一次的 from" 让调用方用
 * 2~8 KB 的缓冲把整环取完，且不会重复也不会漏。
 */
int tg_nlu_observe(char *buf, unsigned int cap, unsigned int from)
{
    unsigned long total = GET(g_obs_total);
    unsigned long first = (total > (unsigned long)TG_OBS_CAP)
                          ? (total - (unsigned long)TG_OBS_CAP) : 0UL;
    unsigned long i;
    size_t off = 0;
    char line[TG_OBS_LINE_MAX];

    if (buf == NULL || cap < 256u) return -1;
    buf[0] = '\0';

    if (from == 0) {
        int n = snprintf(buf, cap,
                         "obs v=1 cap=%u total=%lu release=%lu skip=%lu failclosed=%lu "
                         "overwritten=%lu contended=%lu ring_first=%lu ring_next=%lu\n",
                         (unsigned)TG_OBS_CAP, total, GET(g_obs_release),
                         GET(g_obs_skip), GET(g_obs_failclosed),
                         GET(g_obs_overwritten), GET(g_obs_contended), first, total);

        if (n < 0) return -1;
        off = (size_t)n;
        if (off >= (size_t)cap) { buf[cap - 1u] = '\0'; return (int)first; }
        i = first;
    } else {
        i = (unsigned long)from;
        if (i < first) i = first;
    }

    for (; i < total; i++) {
        tg_obs_slot *s = &g_obs[i & TG_OBS_MASK];
        uint64_t q1, q2;
        int need;

        q1 = __atomic_load_n(&s->seq, __ATOMIC_ACQUIRE);
        if ((q1 & 1u) != 0) continue;                      /* 正在写：跳过，不返回半条 */
        if (__atomic_load_n(&s->tick, __ATOMIC_RELAXED) != (uint64_t)i) continue;  /* 已被覆盖 */
        need = snprintf(line, sizeof(line),
                        "obs i=%lu mono=%lld wall=%lld sid=%d type=%d mode=%s decision=%s resnull=%d\n",
                        i, (long long)s->mono_ms, (long long)s->wall_ms,
                        (int)s->sid, (int)s->type,
                        nls_mode_name((int)s->mode),
                        (s->decision != 0) ? "DROP" : "PASS",
                        (s->res_is_null != 0) ? 1 : 0);
        q2 = __atomic_load_n(&s->seq, __ATOMIC_ACQUIRE);
        if (q1 != q2 || (q2 & 1u) != 0) continue;          /* 读的过程中被改写：丢弃 */
        if (need <= 0) continue;
        if (off + (size_t)need >= (size_t)cap) break;      /* 这一块放不下了，下次再来 */
        memcpy(buf + off, line, (size_t)need);
        off += (size_t)need;
    }
    buf[off] = '\0';
    /* 没发出去的那条（i）就是下次的起点；i==total 表示取完 */
    return (i < total) ? (int)i : 0;
}
/* @@TG-OBS-MODULE-END@@ */

static int tg_nlp_cb(void *self, int sid, int type, void *res)
{
    char key[24];
    int drop;
    int mode;
    int res_is_null = (res == NULL) ? 1 : 0;

    (void)self;

    /* R13: 收尾通知无条件放行，先于任何接管判定 */
    if (type == 2 || type == 3) {
        obs_record(sid, type, nlu_mode_now(), 0, res_is_null);
        INC(g_nlu_terminal_pass);
        return 0;
    }

    mode = nlu_mode_now();
    if (mode == NLS_PASS) {                 /* 补丁在但接管关：始终放行原厂 */
        obs_record(sid, type, mode, 0, res_is_null);
        return 0;
    }
    INC(g_nlu_nlp_calls);
    if (mode == NLS_FAILCLOSED) {           /* 状态不可用：不放行，也不碰会话表 */
        INC(g_nlu_nlp_failclosed);
        obs_record(sid, type, mode, 1, res_is_null);
        return 1;
    }
    if (sid > 0) snprintf(key, sizeof(key), "%d", sid);
    else key[0] = '\0';
    drop = t8_to_should_drop(&g_to, key, wall_ms());
    if (drop) INC(g_nlu_nlp_skip); else INC(g_nlu_nlp_pass);
    obs_record(sid, type, mode, drop ? 1 : 0, res_is_null);
    return drop ? 1 : 0;
}
