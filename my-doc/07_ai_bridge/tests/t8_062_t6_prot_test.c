/*
 * t8_062_t6_prot_test.c -- T8-06.2 behaviour test.
 *
 * Target under test (production code, not a look-alike):
 *   libtg_hook.c: page_prot(), entry_begin_write(), entry_restore_prot(),
 *                 patch_entry(), tg_hook_uninstall(), tg_hook_install(),
 *                 verify_entry_state(), build_nlu_stub_page()
 *
 * run_t8_062_host_tests.ps1 extracts those functions VERBATIM out of
 * hook_agent/libtg_hook.c into tests/out/t8_062_prod_snippet.inc and this file
 * #includes the snippet. Everything the snippet touches is supplied here:
 *   - fopen("/proc/self/maps") -> serves a maps file we control
 *   - mprotect(addr,len,prot)  -> records the exact call sequence, can fail
 *                                 per protection value (RWX vs restore)
 *   - mmap/munmap              -> a controllable page (or MAP_FAILED)
 *   - the T6 globals (g_func, g_patched, g_orig, g_thread_started, ...)
 *   - pthread_* / sender_main  -> recorded, no real thread is started
 *
 * The entry point the hook patches is REAL memory: VirtualAlloc() gives us a
 * page below 4 GB so the production "uint32_t address" arithmetic is exercised
 * with a genuinely dereferenceable pointer, not a fake constant.
 *
 * Output is ASCII on purpose: evidence logs must stay readable.
 */
#include <errno.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

#ifndef PROT_READ
#define PROT_READ  1
#define PROT_WRITE 2
#define PROT_EXEC  4
#endif
#define PROT_RWX  (PROT_READ | PROT_WRITE | PROT_EXEC)

#ifndef MAP_PRIVATE
#define MAP_PRIVATE   2
#define MAP_ANONYMOUS 0x20
#endif
#ifndef MAP_FAILED
#define MAP_FAILED ((void *)-1)
#endif

static int g_pass;
static int g_fail;

static void check(int cond, const char *fmt, ...)
{
    va_list ap;

    if (cond) { g_pass++; return; }
    g_fail++;
    printf("  FAIL ");
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    printf("\n");
}

/* ------------------------------------------------------------ test doubles */

/* ---- maps ---- */
static int          g_open_fail;
static int          g_open_calls;
static const char  *g_maps_path = "out/t8_062_maps.txt";

static FILE *maps_open_real(const char *path)
{
    return (fopen)(path, "rb");
}

static FILE *test_fopen(const char *path, const char *mode)
{
    (void)path;
    (void)mode;
    g_open_calls++;
    if (g_open_fail) return NULL;
    return maps_open_real(g_maps_path);
}

/* ---- mprotect ---- */
#define PROT_HIST 8
static int       g_mprot_all_fail;      /* every call fails */
static int       g_mprot_rwx_fail;      /* prot == RWX fails */
static int       g_mprot_restore_fail;  /* prot != RWX fails (restore step) */
static int       g_mprot_restore_fail_from; /* fail restore attempts >= N (0 = never) */
static int       g_mprot_restore_attempts;
static int       g_mprot_calls;
static int       g_mprot_prot[PROT_HIST];
static uintptr_t g_mprot_addr[PROT_HIST];
static size_t    g_mprot_len[PROT_HIST];

static void mprot_reset(void)
{
    g_mprot_all_fail = 0;
    g_mprot_rwx_fail = 0;
    g_mprot_restore_fail = 0;
    g_mprot_restore_fail_from = 0;
    g_mprot_restore_attempts = 0;
    g_mprot_calls = 0;
    memset(g_mprot_prot, 0, sizeof(g_mprot_prot));
    memset(g_mprot_addr, 0, sizeof(g_mprot_addr));
    memset(g_mprot_len, 0, sizeof(g_mprot_len));
}

static int test_mprotect(void *addr, size_t len, int prot)
{
    if (g_mprot_calls < PROT_HIST) {
        g_mprot_prot[g_mprot_calls] = prot;
        g_mprot_addr[g_mprot_calls] = (uintptr_t)addr;
        g_mprot_len[g_mprot_calls] = len;
    }
    g_mprot_calls++;

    if (g_mprot_all_fail) { errno = EPERM; return -1; }
    if (prot == PROT_RWX) {
        if (g_mprot_rwx_fail) { errno = EACCES; return -1; }
        return 0;
    }
    g_mprot_restore_attempts++;
    if (g_mprot_restore_fail) { errno = EPERM; return -1; }
    if (g_mprot_restore_fail_from > 0 &&
        g_mprot_restore_attempts >= g_mprot_restore_fail_from) {
        errno = EPERM;
        return -1;
    }
    return 0;
}

static int g_mprot_last(void)
{
    return (g_mprot_calls > 0) ? g_mprot_prot[g_mprot_calls - 1] : -1;
}

/* ---- mmap / munmap ---- */
static unsigned char *g_mmap_buf;
static int            g_mmap_calls;
static int            g_mmap_fail;
static int            g_munmap_calls;
static uintptr_t      g_munmap_addr;
static size_t         g_munmap_len;

static void *test_mmap(void *addr, size_t len, int prot, int flags, int fd, long off)
{
    (void)addr; (void)prot; (void)flags; (void)fd; (void)off;
    g_mmap_calls++;
    if (g_mmap_fail) { errno = ENOMEM; return MAP_FAILED; }
    if (g_mmap_buf == NULL) g_mmap_buf = (unsigned char *)calloc(1, 8192);
    if (g_mmap_buf == NULL) { errno = ENOMEM; return MAP_FAILED; }
    memset(g_mmap_buf, 0xCC, (len < 8192) ? len : 8192);
    return g_mmap_buf;
}

static int test_munmap(void *addr, size_t len)
{
    g_munmap_calls++;
    g_munmap_addr = (uintptr_t)addr;
    g_munmap_len = len;
    if (addr != NULL) memset(addr, 0xDD, (len < 8192) ? len : 8192);
    return 0;
}

/* ---- pthread / sender (recorded, never a real thread) ---- */
#define pthread_t       int
#define pthread_attr_t  int

static int g_pthread_create_calls;
static int g_pthread_create_fail;

static int test_attr_init(int *a) { (void)a; return 0; }
static int test_attr_setstacksize(int *a, size_t s) { (void)a; (void)s; return 0; }
static int test_attr_destroy(int *a) { (void)a; return 0; }

static int test_pthread_create(int *t, const int *a,
                               void *(*fn)(void *), void *arg)
{
    (void)a; (void)fn; (void)arg;
    g_pthread_create_calls++;
    if (g_pthread_create_fail) { errno = EAGAIN; return -1; }
    *t = 1;
    return 0;
}

static void *test_sender_main(void *arg)
{
    (void)arg;
    return NULL;
}

#define fopen(p, m)                 test_fopen((p), (m))
#define mprotect(a, l, p)           test_mprotect((a), (l), (p))
#define mmap(a, l, p, f, d, o)      test_mmap((a), (l), (p), (f), (d), (o))
#define munmap(a, l)                test_munmap((a), (l))
#define pthread_attr_init           test_attr_init
#define pthread_attr_setstacksize   test_attr_setstacksize
#define pthread_attr_destroy        test_attr_destroy
#define pthread_create              test_pthread_create
#define sender_main                 test_sender_main

/* ---- production constants ---- */
#define TG_OK                0
#define TG_E_NOT_INSTALLED (-1)
#define TG_E_MODULE        (-2)
#define TG_E_SYMBOL        (-3)
#define TG_E_OFFSET        (-4)
#define TG_E_PROLOGUE      (-5)
#define TG_E_MMAP          (-6)
#define TG_E_PROT          (-7)
#define TG_E_THREAD        (-8)
#define TG_E_ALREADY       (-9)

#define TG_SYM_OFF      0x11353cu
#define TG_PRO_W0       0xE92D4FF0u
#define TG_PRO_W1       0xE28DB01Cu
#define TG_PATCH_JUMP   0xE51FF004u
#define TG_STUB_PAGE    4096
#define TG_TRAMP_OFF    128

#define INC(v) __atomic_fetch_add(&(v), 1UL, __ATOMIC_RELAXED)

/* ---- production state ---- */
static volatile int  g_state = TG_E_NOT_INSTALLED;
static volatile int  g_patched;
static volatile int  g_stop;
static char          g_err[320];

static uint32_t      g_func;
static uint32_t      g_orig[2];
static void         *g_stub_page;
static int           g_thread;
static volatile int  g_thread_started;
static volatile unsigned long g_sender_spawns;

/* T8-06.2 state (declared here because the snippet holds only functions) */
static uintptr_t    g_entry_page;
static int          g_entry_orig_prot = -1;
static volatile int g_entry_prot_valid;
static volatile int g_prot_dirty;
static volatile unsigned long g_entry_prot_queries;
static volatile unsigned long g_entry_prot_fails;
static volatile unsigned long g_entry_patch_marks;
static volatile unsigned long g_entry_unpatch_marks;

/* T8-03 NLU stub state */
static uint32_t     g_nlu_orig[2];
static void        *g_nlu_page;
static int          g_nlu_page_prot;
static volatile int g_nlu_page_degraded;
static char         g_nlu_err[192];

static void tg_nlp_cb(void) { }

/* helpers the snippet calls (production versions live in libtg_hook.c) */
static char g_last_err[400];
static char g_last_nlu_err[256];
static char g_last_slog[256];

static void set_err(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(g_err, sizeof(g_err), fmt, ap);
    va_end(ap);
    snprintf(g_last_err, sizeof(g_last_err), "%s", g_err);
}

static void nlu_err_set(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(g_last_nlu_err, sizeof(g_last_nlu_err), fmt, ap);
    va_end(ap);
}

static void slog(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(g_last_slog, sizeof(g_last_slog), fmt, ap);
    va_end(ap);
}

/* tg_hook_prepare() is replaced: it only resolves g_func/g_orig on the target */
static int g_prepare_calls;
static int g_prepare_fail;

static int test_prepare(void)
{
    g_prepare_calls++;
    if (g_prepare_fail) return TG_E_SYMBOL;
    g_orig[0] = TG_PRO_W0;
    g_orig[1] = TG_PRO_W1;
    return TG_OK;
}

/* build_stub_page() is replaced: the T6 stub page is not part of this round */
static int g_build_stub_calls;
static int g_build_stub_fail;

static int test_build_stub(uint32_t func, int *err_out)
{
    (void)func;
    g_build_stub_calls++;
    if (g_build_stub_fail) { *err_out = TG_E_MMAP; return -1; }
    g_stub_page = (void *)(uintptr_t)0x11112000u;
    return 0;
}

#define tg_hook_prepare    test_prepare
#define build_stub_page    test_build_stub

/* The production code targets ARM32, where uint32_t <-> pointer casts are free.
 * On a 64-bit host those casts are legal but warn; the fake entry page lives
 * below 4 GB (see entry_alloc) so they are correct for every test here. */
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
#include "out/t8_062_prod_snippet.inc"
#pragma GCC diagnostic pop

#undef fopen
#undef mprotect
#undef mmap
#undef munmap
#undef pthread_attr_init
#undef pthread_attr_setstacksize
#undef pthread_attr_destroy
#undef pthread_create
#undef sender_main
#undef tg_hook_prepare
#undef build_stub_page

/* ---------------------------------------------------------------- fixtures */

#define ENTRY_ALIGN 0x1000u

static uint32_t *g_entry;          /* real memory below 4 GB */
static uint32_t  g_entry_base;

static int entry_alloc(void)
{
    static const uintptr_t cand[8] = {
        0x10000000u, 0x20000000u, 0x30000000u, 0x40000000u,
        0x50000000u, 0x60000000u, 0x70000000u, 0x08000000u
    };
    int i;

    for (i = 0; i < 8; i++) {
        void *p = VirtualAlloc((void *)cand[i], 0x1000,
                               MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        if (p != NULL) {
            g_entry = (uint32_t *)p;
            g_entry_base = (uint32_t)cand[i];
            return 1;
        }
    }
    return 0;
}

static void maps_set(const char *text)
{
    FILE *f = (fopen)(g_maps_path, "wb");

    if (f == NULL) {
        printf("  FATAL cannot write %s\n", g_maps_path);
        exit(2);
    }
    fputs(text, f);
    fclose(f);
}

#define MAPS_RX  "10000000-10001000 r-xp 00000000 fd:00 42 /data/app/libsmartbox.so\n"
#define MAPS_RWX "10000000-10001000 rwxp 00000000 fd:00 42 /data/app/libsmartbox.so\n"
#define MAPS_OTHER "7f000000-7f001000 r-xp 00000000 fd:00 42 /system/lib/libc.so\n"

static void fixture_reset(void)
{
    g_open_fail = 0;
    g_open_calls = 0;
    mprot_reset();
    g_mmap_calls = 0;
    g_mmap_fail = 0;
    g_munmap_calls = 0;
    g_munmap_addr = 0;
    g_munmap_len = 0;
    g_pthread_create_calls = 0;
    g_pthread_create_fail = 0;
    g_prepare_calls = 0;
    g_prepare_fail = 0;
    g_build_stub_calls = 0;
    g_build_stub_fail = 0;

    g_state = TG_E_NOT_INSTALLED;
    g_patched = 0;
    g_stop = 0;
    g_err[0] = '\0';
    g_last_err[0] = '\0';
    g_last_nlu_err[0] = '\0';
    g_last_slog[0] = '\0';

    g_func = g_entry_base;
    g_orig[0] = TG_PRO_W0;
    g_orig[1] = TG_PRO_W1;
    g_entry[0] = TG_PRO_W0;
    g_entry[1] = TG_PRO_W1;
    g_stub_page = (void *)(uintptr_t)0x11112000u;
    g_thread_started = 0;
    g_sender_spawns = 0;

    g_entry_page = 0;
    g_entry_orig_prot = -1;
    g_entry_prot_valid = 0;
    g_prot_dirty = 0;
    g_entry_prot_queries = 0;
    g_entry_prot_fails = 0;
    g_entry_patch_marks = 0;
    g_entry_unpatch_marks = 0;

    g_nlu_orig[0] = TG_PRO_W0;
    g_nlu_orig[1] = TG_PRO_W1;
    g_nlu_page = NULL;
    g_nlu_page_prot = 0;
    g_nlu_page_degraded = 0;

    maps_set(MAPS_RX);
}

static int entry_is_Prologue(void)
{
    return (g_entry[0] == TG_PRO_W0 && g_entry[1] == TG_PRO_W1) ? 1 : 0;
}

static int entry_is_patch(void)
{
    return (g_entry[0] == TG_PATCH_JUMP &&
            g_entry[1] == (uint32_t)(uintptr_t)g_stub_page) ? 1 : 0;
}

/* state that a successful install + failed restore leaves behind */
static void fixture_install_failed_restore(void)
{
    fixture_reset();
    g_mprot_restore_fail = 1;
    (void)patch_entry();
    g_mprot_restore_fail = 0;
    g_mprot_calls = 0;
    g_pthread_create_calls = 0;
}

/* ======================================================================== A */

static void test_a_unknown_prot_refused(void)
{
    int rc;

    printf("\n[A] T6 entry: unknown page protection must be refused\n");

    /* A: maps unreadable */
    fixture_reset();
    g_open_fail = 1;
    rc = patch_entry();
    check(rc == TG_E_PROT, "A1 unreadable maps -> patch_entry() = %d (want TG_E_PROT %d)",
          rc, TG_E_PROT);
    check(entry_is_Prologue(), "A2 entry words untouched (no half patch)");
    check(g_mprot_calls == 0, "A3 no mprotect() was attempted (%d)", g_mprot_calls);
    check(g_patched == 0, "A4 g_patched stays 0 (%d)", g_patched);
    check(g_entry_prot_valid == 0, "A5 baseline not marked valid");
    check(g_entry_orig_prot == -1, "A6 baseline stays unknown (%d)", g_entry_orig_prot);
    check(g_entry_patch_marks == 0, "A7 no patch was recorded");
    check(strstr(g_last_err, "cannot determine original page protection") != NULL,
          "A8 error explains the refusal: %s", g_last_err);

    /* B: page not present in maps -> page_prot() = -1 */
    fixture_reset();
    maps_set(MAPS_OTHER);
    rc = patch_entry();
    check(rc == TG_E_PROT, "A9 page missing from maps -> %d (want TG_E_PROT)", rc);
    check(entry_is_Prologue(), "A10 entry words untouched");
    check(g_mprot_calls == 0, "A11 still no mprotect() (%d)", g_mprot_calls);
    check(g_entry_prot_valid == 0, "A12 baseline still unknown");
    check(g_entry_prot_queries == 1, "A13 exactly one maps query (%lu)",
          g_entry_prot_queries);

    /* C: a later attempt with a readable maps succeeds */
    maps_set(MAPS_RX);
    rc = patch_entry();
    check(rc == TG_OK, "A14 readable maps -> patch_entry() = %d (want TG_OK)", rc);
    check(g_entry_prot_valid == 1, "A15 baseline now valid (%d)", g_entry_prot_valid);
    check(g_entry_orig_prot == (PROT_READ | PROT_EXEC),
          "A16 baseline recorded as R|X (%d)", g_entry_orig_prot);
    check(entry_is_patch(), "A17 entry patched after a good query");
}

/* ======================================================================== B */

static void test_b_install_rwx_failure(void)
{
    int rc;

    printf("\n[B] T6 install: failing to open the page is a failure, not a success\n");

    fixture_reset();
    g_mprot_rwx_fail = 1;
    rc = patch_entry();
    check(rc == TG_E_PROT, "B1 RWX mprotect failure -> %d (want TG_E_PROT)", rc);
    check(entry_is_Prologue(), "B2 entry not written");
    check(g_patched == 0, "B3 g_patched 0 (nothing installed)");
    check(g_prot_dirty == 0, "B4 no protection debt was created");
    check(g_entry_prot_valid == 1, "B5 baseline was confirmed before the failure");
    check(g_entry_orig_prot == (PROT_READ | PROT_EXEC), "B6 baseline = R|X (%d)",
          g_entry_orig_prot);
    check(strstr(g_last_err, "RWX") != NULL, "B7 error text names the failing step: %s",
          g_last_err);
    check(g_mprot_calls == 1, "B8 exactly one mprotect() call (%d)", g_mprot_calls);
}

/* ======================================================================== C */

static void test_c_install_restore_failure(void)
{
    int rc;

    printf("\n[C] T6 install: entry patched but protection restore FAILED\n");

    fixture_reset();
    g_mprot_restore_fail = 1;
    rc = patch_entry();

    check(rc == TG_E_PROT, "C1 restore failure -> %d (want TG_E_PROT)", rc);
    check(entry_is_patch(), "C2 entry really is the patch (%08x %08x)",
          g_entry[0], g_entry[1]);
    check(g_patched == 1, "C3 g_patched is truthful (=1): the entry IS patched");
    check(g_prot_dirty == 1, "C4 protection debt recorded (g_prot_dirty=%d)", g_prot_dirty);
    check(g_entry_orig_prot == (PROT_READ | PROT_EXEC),
          "C5 baseline is still R|X, not the RWX we just made (%d)", g_entry_orig_prot);
    check(g_entry_prot_valid == 1, "C6 baseline kept valid for the retry");
    check(strstr(g_last_err, "NOT successful") != NULL,
          "C7 error says the install is NOT successful: %s", g_last_err);
    check(g_mprot_calls == 2, "C8 two mprotect() calls: open RWX + restore (%d)",
          g_mprot_calls);
    check(g_mprot_prot[0] == PROT_RWX, "C9 first call opens RWX (%d)", g_mprot_prot[0]);
    check(g_mprot_prot[1] == (PROT_READ | PROT_EXEC), "C10 restore asks for R|X (%d)",
          g_mprot_prot[1]);
    check(g_state != TG_OK, "C11 no path may report TG_OK (%d)", g_state);

    /* the baseline must survive a second failed restore attempt */
    g_mprot_restore_fail = 1;
    (void)tg_hook_uninstall();     /* entry -> original, restore fails again */
    check(g_entry_orig_prot == (PROT_READ | PROT_EXEC),
          "C12 baseline still R|X after a second failure (%d)", g_entry_orig_prot);
    check(g_prot_dirty == 1, "C13 debt still recorded");
}

/* ======================================================================== D */

static void test_d_install_recovery(void)
{
    int rc;

    printf("\n[D] T6 install: patched + no sender must NOT be reported as installed\n");

    fixture_install_failed_restore();
    check(g_patched == 1 && g_thread_started == 0 && g_prot_dirty == 1,
          "D1 precondition: patched, no sender, protection debt");

    /* restore still failing -> install must fail and must not start the sender */
    g_mprot_restore_fail = 1;
    rc = tg_hook_install();
    check(rc == TG_E_PROT, "D2 install with a failing restore -> %d (want TG_E_PROT)", rc);
    check(g_pthread_create_calls == 0, "D3 sender NOT started (%d create calls)",
          g_pthread_create_calls);
    check(g_thread_started == 0, "D4 g_thread_started still 0");
    check(g_prepare_calls == 0, "D5 prepare not re-run (entry is already patched)");
    check(g_patched == 1, "D6 g_patched still truthful (=1)");
    check(g_state != TG_OK, "D7 install did not claim success (%d)", g_state);

    /* restore now works -> the same call must finish the job */
    g_mprot_restore_fail = 0;
    g_mprot_calls = 0;
    rc = tg_hook_install();
    check(rc == TG_OK, "D8 recovery install -> %d (want TG_OK)", rc);
    check(g_mprot_last() == (PROT_READ | PROT_EXEC),
          "D9 recovery restored R|X (%d)", g_mprot_last());
    check(g_prot_dirty == 0, "D10 protection debt cleared");
    check(g_thread_started == 1, "D11 sender started");
    check(g_pthread_create_calls == 1, "D12 exactly one pthread_create (%d)",
          g_pthread_create_calls);
    check(g_sender_spawns == 1, "D13 spawn counter = 1 (%lu)", g_sender_spawns);
    check(g_patched == 1, "D14 entry still patched");
    check(g_prepare_calls == 0, "D15 prepare still not re-run");
    check(g_entry_orig_prot == (PROT_READ | PROT_EXEC),
          "D16 baseline unchanged (%d)", g_entry_orig_prot);

    /* D17: full idempotency once everything is clean */
    g_mprot_calls = 0;
    rc = tg_hook_install();
    check(rc == TG_OK, "D17 idempotent re-install -> %d", rc);
    check(g_mprot_calls == 0, "D18 no mprotect() when nothing is owed (%d)",
          g_mprot_calls);
    check(g_pthread_create_calls == 1, "D19 no second sender thread (%d)",
          g_pthread_create_calls);
    check(g_sender_spawns == 1, "D20 spawn counter still 1 (%lu)", g_sender_spawns);
}

/* ======================================================================== E */

static void test_e_sender_create_failure(void)
{
    int rc;

    printf("\n[E] T6 install: sender thread failure must roll back and report\n");

    fixture_reset();
    g_pthread_create_fail = 1;
    rc = tg_hook_install();
    check(rc == TG_E_THREAD, "E1 -> %d (want TG_E_THREAD)", rc);
    check(g_patched == 0, "E2 rollback removed the entry patch (%d)", g_patched);
    check(entry_is_Prologue(), "E3 entry is the original prologue again");
    check(g_prot_dirty == 0, "E4 rollback restored the page protection");
    check(g_thread_started == 0, "E5 no sender thread");
    check(strstr(g_last_err, "pthread_create") != NULL, "E6 error names the cause: %s",
          g_last_err);

    /* same failure, but the rollback itself cannot restore the protection:
     * the first restore (inside patch_entry) succeeds, the second (inside the
     * rollback) fails -- so both failures have to be reported at once. */
    fixture_reset();
    g_pthread_create_fail = 1;
    g_mprot_restore_fail_from = 2;
    rc = tg_hook_install();
    check(rc == TG_E_THREAD, "E7 -> %d (want TG_E_THREAD)", rc);
    check(entry_is_Prologue(), "E8 entry restored anyway");
    check(g_prot_dirty == 1, "E9 leftover protection debt recorded");
    check(strstr(g_last_err, "rollback") != NULL,
          "E10 both failures are reported: %s", g_last_err);
}

/* ======================================================================== F */

static void test_f_uninstall_restore_failure(void)
{
    int rc;

    printf("\n[F] T6 uninstall: entry restored but protection restore FAILED\n");

    fixture_reset();
    (void)patch_entry();                    /* clean install */
    check(g_patched == 1 && g_prot_dirty == 0, "F1 precondition: installed, clean");
    g_mprot_calls = 0;

    g_mprot_restore_fail = 1;
    rc = tg_hook_uninstall();
    check(rc == TG_E_PROT, "F2 -> %d (want TG_E_PROT)", rc);
    check(entry_is_Prologue(), "F3 entry machine code IS restored");
    check(g_patched == 0, "F4 g_patched is truthful (=0), not fake-patched");
    check(g_prot_dirty == 1, "F5 protection debt recorded");
    check(g_entry_orig_prot == (PROT_READ | PROT_EXEC),
          "F6 baseline kept for the retry (%d)", g_entry_orig_prot);
    check(g_entry_prot_valid == 1, "F7 baseline still valid");
    check(g_mprot_prot[0] == PROT_RWX, "F8 uninstall opens RWX first (%d)",
          g_mprot_prot[0]);
    check(strstr(g_last_err, "call tg_hook_uninstall() again") != NULL,
          "F9 error tells the operator how to retry: %s", g_last_err);
    check(g_state != TG_OK, "F10 uninstall did not claim success");
}

/* ======================================================================== G */

static void test_g_uninstall_retry(void)
{
    int rc;
    unsigned long q;

    printf("\n[G] T6 uninstall retry: the restore alone can be retried\n");

    fixture_reset();
    (void)patch_entry();
    g_mprot_restore_fail = 1;
    (void)tg_hook_uninstall();              /* entry restored, RWX left behind */
    g_mprot_restore_fail = 0;

    /* our own leftover RWX is what /proc/self/maps would now report */
    maps_set(MAPS_RWX);
    q = g_entry_prot_queries;
    g_mprot_calls = 0;

    rc = tg_hook_uninstall();
    check(rc == TG_OK, "G1 second uninstall -> %d (want TG_OK, not a silent early return)",
          rc);
    check(g_mprot_calls == 1, "G2 it really called mprotect() once (%d)", g_mprot_calls);
    check(g_mprot_last() == (PROT_READ | PROT_EXEC),
          "G3 restored to the ORIGINAL R|X, not the current RWX (%d)", g_mprot_last());
    check(g_prot_dirty == 0, "G4 debt cleared");
    check(g_entry_prot_queries == q, "G5 no re-query of maps: baseline kept (%lu vs %lu)",
          g_entry_prot_queries, q);
    check(g_entry_orig_prot == (PROT_READ | PROT_EXEC),
          "G6 baseline was not overwritten by RWX (%d)", g_entry_orig_prot);
    check(entry_is_Prologue(), "G7 entry untouched");
    check(g_patched == 0, "G8 g_patched 0");
    check(g_state == TG_OK, "G9 state TG_OK after a real success");

    /* nothing owed at all: no mprotect, still OK */
    g_mprot_calls = 0;
    rc = tg_hook_uninstall();
    check(rc == TG_OK, "G10 third uninstall -> %d", rc);
    check(g_mprot_calls == 0, "G11 nothing owed -> no mprotect() (%d)", g_mprot_calls);

    /* unclear baseline must never be guessed */
    fixture_reset();
    g_patched = 0;
    g_prot_dirty = 1;
    g_entry_prot_valid = 0;
    g_entry_orig_prot = -1;
    g_mprot_calls = 0;
    rc = tg_hook_uninstall();
    check(rc == TG_E_PROT, "G12 retry without a baseline -> %d (want TG_E_PROT)", rc);
    check(g_mprot_calls == 0, "G13 no mprotect() with an unknown baseline (%d)",
          g_mprot_calls);
    check(strstr(g_last_err, "unknown") != NULL, "G14 error says the value is unknown: %s",
          g_last_err);
}

/* ======================================================================== H */

static void test_h_nlu_stub_page(void)
{
    int rc;
    int st;
    uint32_t *c;
    uint32_t *t;

    printf("\n[H] NLU stub page: mmap RW -> fill -> flush -> RX (RWX only as fallback)\n");

    /* H1: RX works */
    fixture_reset();
    st = 0;
    rc = build_nlu_stub_page(0x7F001234u, &st);
    check(rc == 0 && st == TG_OK, "H1 build -> %d (want 0)", rc);
    check(g_nlu_page != NULL, "H2 page created");
    check(g_mmap_calls == 1, "H3 exactly one mmap (%d)", g_mmap_calls);
    check(g_mprot_calls == 1, "H4 exactly one mprotect (%d)", g_mprot_calls);
    check(g_mprot_prot[0] == (PROT_READ | PROT_EXEC), "H5 it asks for RX first (%d)",
          g_mprot_prot[0]);
    check(g_mprot_len[0] == TG_STUB_PAGE, "H6 length is one page (%u)",
          (unsigned)g_mprot_len[0]);
    check(g_nlu_page_degraded == 0, "H7 not degraded");
    check(g_nlu_page_prot == (PROT_READ | PROT_EXEC), "H8 recorded prot = R|X (%d)",
          g_nlu_page_prot);
    c = (uint32_t *)g_nlu_page;
    t = (uint32_t *)((char *)g_nlu_page + TG_TRAMP_OFF);
    check(c[0] == 0xE92D401Fu && c[5] == 0xE35C0000u && c[12] ==
          (uint32_t)(uintptr_t)((char *)g_nlu_page + TG_TRAMP_OFF),
          "H9 stub instructions written before the protection change");
    check(t[0] == TG_PRO_W0 && t[1] == TG_PRO_W1 && t[2] == TG_PATCH_JUMP &&
          t[3] == 0x7F001234u + 8u, "H10 trampoline layout unchanged");
    check(c[11] == 0xE12FFF1Eu, "H11 skip path unchanged (bx lr)");

    /* H12: idempotent */
    g_mprot_calls = 0;
    g_mmap_calls = 0;
    st = 0;
    rc = build_nlu_stub_page(0x7F001234u, &st);
    check(rc == 0 && g_mmap_calls == 0 && g_mprot_calls == 0,
          "H12 second call reuses the page (%d/%d)", g_mmap_calls, g_mprot_calls);

    /* H13: RX fails, RWX fallback succeeds -> recorded degradation */
    fixture_reset();
    g_mprot_restore_fail = 1;               /* RX (=not RWX) fails */
    st = 0;
    rc = build_nlu_stub_page(0x7F001234u, &st);
    check(rc == 0, "H14 RX failure + RWX success -> %d (want 0)", rc);
    check(g_mprot_calls == 2, "H15 two attempts (%d)", g_mprot_calls);
    check(g_mprot_prot[0] == (PROT_READ | PROT_EXEC), "H16 first attempt is RX (%d)",
          g_mprot_prot[0]);
    check(g_mprot_prot[1] == PROT_RWX, "H17 fallback attempt is RWX (%d)",
          g_mprot_prot[1]);
    check(g_nlu_page_degraded == 1, "H18 degradation recorded (%d)",
          g_nlu_page_degraded);
    check(g_nlu_page_prot == PROT_RWX, "H19 actual prot recorded as RWX (%d)",
          g_nlu_page_prot);
    check(g_nlu_page != NULL, "H20 page kept (it is usable)");
    check(strstr(g_last_nlu_err, "RWX") != NULL && strstr(g_last_nlu_err, "degraded") != NULL,
          "H21 degradation is logged: %s", g_last_nlu_err);

    /* H22: both fail -> explicit error, page released */
    fixture_reset();
    g_mprot_all_fail = 1;
    st = 0;
    rc = build_nlu_stub_page(0x7F001234u, &st);
    check(rc != 0, "H23 RX and RWX both fail -> %d (non-zero)", rc);
    check(st == TG_E_PROT, "H24 state TG_E_PROT (%d)", st);
    check(g_nlu_page == NULL, "H25 page released, nothing half-built");
    check(g_munmap_calls == 1, "H26 exactly one munmap (%d)", g_munmap_calls);
    check(g_munmap_len == TG_STUB_PAGE, "H27 munmap length is one page (%u)",
          (unsigned)g_munmap_len);
    check(g_nlu_page_degraded == 0, "H28 not marked degraded");
    check(g_nlu_page_prot == 0, "H29 prot reset to 0 (%d)", g_nlu_page_prot);
    check(strstr(g_last_nlu_err, "RX errno=") != NULL &&
          strstr(g_last_nlu_err, "RWX errno=") != NULL,
          "H30 both errnos reported: %s", g_last_nlu_err);
    check(g_open_calls == 0, "H31 the stub path never queries /proc/self/maps (%d)",
          g_open_calls);

    /* H32: a retry after the failure can succeed */
    g_mprot_all_fail = 0;
    st = 0;
    rc = build_nlu_stub_page(0x7F001234u, &st);
    check(rc == 0 && g_nlu_page != NULL, "H33 retry after failure builds again (%d)", rc);
    check(g_nlu_page_degraded == 0, "H34 retry is a clean RX build");

    /* H35: mmap failure */
    fixture_reset();
    g_mmap_fail = 1;
    st = 0;
    rc = build_nlu_stub_page(0x7F001234u, &st);
    check(rc != 0 && st == TG_E_MMAP, "H36 mmap failure -> %d / %d", rc, st);
    check(g_nlu_page == NULL, "H37 no page on mmap failure");
    check(g_mprot_calls == 0, "H38 no mprotect after mmap failure (%d)", g_mprot_calls);
}

/* ======================================================================= */

int main(void)
{
    printf("T8-06.2 T6 entry page protection + NLU stub page behaviour test\n");
    printf("(production functions extracted verbatim from hook_agent/libtg_hook.c)\n");

    if (!entry_alloc()) {
        printf("FATAL cannot reserve a page below 4 GB for the fake entry\n");
        return 2;
    }
    printf("fake entry base = 0x%08x (real, writable, below 4 GB)\n", g_entry_base);

    test_a_unknown_prot_refused();
    test_b_install_rwx_failure();
    test_c_install_restore_failure();
    test_d_install_recovery();
    test_e_sender_create_failure();
    test_f_uninstall_restore_failure();
    test_g_uninstall_retry();
    test_h_nlu_stub_page();

    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
