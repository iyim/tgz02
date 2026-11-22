/*
 * t8_061_page_prot_test.c -- T8-06.1 behaviour test.
 *
 * Target under test (production code, not a look-alike):
 *   libtg_hook.c: page_prot(), nlu_pp_unprotect(), nlu_pp_reprotect()
 *
 * How it runs on a non-Android host without touching the production file:
 *   run_t8_061_host_tests.ps1 extracts those three functions VERBATIM out of
 *   hook_agent/libtg_hook.c into tests/out/t8_061_prod_snippet.inc and this file
 *   #includes the snippet. Everything the snippet touches is supplied here:
 *     - "fopen"    -> serves a maps file we control (including "cannot open")
 *     - "mprotect" -> records (addr, len, prot) and can fail on demand
 *     - g_nlu_func / g_nlu_prot_valid / g_nlu_orig_prot / the entry words
 *   So every branch -- including all failure paths -- is executed for real:
 *   no branch is "verified" by grepping the source.
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

#ifndef PROT_READ
#define PROT_READ  1
#define PROT_WRITE 2
#define PROT_EXEC  4
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

static int          g_open_fail;
static int          g_open_calls;
static const char  *g_maps_path = "out/t8_061_maps.txt";

static int          g_mprotect_fail;
static int          g_mprotect_calls;
static uintptr_t    g_mprotect_addr;
static size_t       g_mprotect_len;
static int          g_mprotect_prot;

/* real fopen, reached through the paren trick so the file-like macro below
 * cannot expand it */
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

static int test_mprotect(void *addr, size_t len, int prot)
{
    g_mprotect_calls++;
    g_mprotect_addr = (uintptr_t)addr;
    g_mprotect_len = len;
    g_mprotect_prot = prot;
    if (g_mprotect_fail) {
        errno = EPERM;
        return -1;
    }
    return 0;
}

#define fopen(p, m)      test_fopen((p), (m))
#define mprotect(a, l, p) test_mprotect((a), (l), (p))

/* state the extracted production functions operate on */
static uint32_t g_nlu_func;
static int      g_nlu_prot_valid;
static int      g_nlu_orig_prot;
static uint32_t g_entry[2];        /* must never be written by these functions */

#include "out/t8_061_prod_snippet.inc"

#undef fopen
#undef mprotect

/* ---------------------------------------------------------------- fixtures */

#define ENTRY_ADDR  0x7F001234u
#define ENTRY_PAGE  0x7F001000u

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

static void fixture_reset(void)
{
    g_open_fail = 0;
    g_open_calls = 0;
    g_mprotect_fail = 0;
    g_mprotect_calls = 0;
    g_mprotect_addr = 0;
    g_mprotect_len = 0;
    g_mprotect_prot = 0;
    g_nlu_func = ENTRY_ADDR;
    g_nlu_prot_valid = 0;
    g_nlu_orig_prot = 0;
    g_entry[0] = 0xE92D4FF0u;
    g_entry[1] = 0xE28DB01Cu;
}

static int entry_untouched(void)
{
    return (g_entry[0] == 0xE92D4FF0u && g_entry[1] == 0xE28DB01Cu) ? 1 : 0;
}

/* ------------------------------------------------- A: maps query behaviour */

static void test_a_query(void)
{
    printf("\n[A] page_prot() reads /proc/self/maps correctly\n");

    fixture_reset();
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    check(page_prot(ENTRY_PAGE) == (PROT_READ | PROT_EXEC), "A1 r-xp -> PROT_READ|PROT_EXEC (%d)",
          page_prot(ENTRY_PAGE));

    fixture_reset();
    maps_set("7f001000-7f002000 r--p 00001000 fd:00 123 /data/app/libsmartbox.so\n");
    check(page_prot(ENTRY_PAGE) == PROT_READ, "A2 r--p -> PROT_READ");

    fixture_reset();
    maps_set("7f001000-7f002000 rwxp 00002000 fd:00 123 /data/app/libsmartbox.so\n");
    check(page_prot(ENTRY_PAGE) == (PROT_READ | PROT_WRITE | PROT_EXEC),
          "A3 rwxp -> PROT_READ|PROT_WRITE|PROT_EXEC (legal 7)");

    fixture_reset();
    maps_set("7f001000-7f002000 rw-p 00003000 fd:00 123 /data/app/libsmartbox.so\n");
    check(page_prot(ENTRY_PAGE) == (PROT_READ | PROT_WRITE), "A4 rw-p -> PROT_READ|PROT_WRITE");

    printf("\n[A2] line selection\n");
    fixture_reset();
    maps_set("7f000000-7f001000 r-xp 00000000 fd:00 100 /system/lib/libc.so\n"
             "7f001000-7f002000 rw-p 00001000 fd:00 100 /system/lib/libc.so\n");
    check(page_prot(ENTRY_PAGE) == (PROT_READ | PROT_WRITE),
          "A5 picks the line that actually contains the page");
    check(page_prot(0x7F000800u) == (PROT_READ | PROT_EXEC),
          "A6 an address inside the first line still maps to the first line");

    fixture_reset();
    maps_set("garbage line without ranges\n"
             "7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n"
             "\n");
    check(page_prot(ENTRY_PAGE) == (PROT_READ | PROT_EXEC),
          "A7 malformed lines are skipped, the good line is still found");

    printf("\n[A3] unknown page / unreadable maps must be -1, never a fake prot\n");
    fixture_reset();
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    check(page_prot(0x1000u) == -1, "A8 page outside every range -> -1");
    check(page_prot(0x7F002000u) == -1, "A9 one past the end of the range -> -1");

    fixture_reset();
    maps_set("");
    check(page_prot(ENTRY_PAGE) == -1, "A10 empty maps -> -1");

    fixture_reset();
    g_open_fail = 1;
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    check(page_prot(ENTRY_PAGE) == -1, "A11 fopen failure -> -1");
    check(g_open_calls == 1, "A12 exactly one open attempt (%d)", g_open_calls);

    printf("\n[A4] every permission combination stays inside 0..7\n");
    {
        static const char *perm[8] = { "---p", "--xp", "-w-p", "-wxp",
                                       "r--p", "r-xp", "rw-p", "rwxp" };
        static const int   want[8] = { 0, PROT_EXEC, PROT_WRITE, PROT_WRITE | PROT_EXEC,
                                       PROT_READ, PROT_READ | PROT_EXEC,
                                       PROT_READ | PROT_WRITE,
                                       PROT_READ | PROT_WRITE | PROT_EXEC };
        char text[160];
        int i;
        int all_in_range = 1;

        for (i = 0; i < 8; i++) {
            fixture_reset();
            snprintf(text, sizeof(text), "7f001000-7f002000 %s 00000000 fd:00 1 /x\n", perm[i]);
            maps_set(text);
            if (page_prot(ENTRY_PAGE) != want[i]) {
                check(0, "A13 perms %s -> %d (want %d)", perm[i], page_prot(ENTRY_PAGE), want[i]);
            } else {
                check(1, "A13 perms %s", perm[i]);
            }
            if ((want[i] & ~(PROT_READ | PROT_WRITE | PROT_EXEC)) != 0) all_in_range = 0;
        }
        check(all_in_range, "A14 the parser can only produce PROT_READ|PROT_WRITE|PROT_EXEC bits");
    }
}

/* --------------------------------------------- B: nlu_pp_unprotect success */

static void test_b_unprotect_ok(void)
{
    char err[192];

    printf("\n[B] nlu_pp_unprotect(): success path records the real original prot\n");
    fixture_reset();
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    err[0] = '\0';
    check(nlu_pp_unprotect(NULL, "install", err, sizeof(err)) == 0, "B1 returns 0");
    check(g_nlu_prot_valid == 1, "B2 g_nlu_prot_valid set to 1");
    check(g_nlu_orig_prot == (PROT_READ | PROT_EXEC), "B3 recorded prot is PROT_READ|PROT_EXEC (%d)",
          g_nlu_orig_prot);
    check(g_mprotect_calls == 1, "B4 mprotect called exactly once (%d)", g_mprotect_calls);
    check(g_mprotect_prot == (PROT_READ | PROT_WRITE | PROT_EXEC),
          "B5 the page is opened for writing (RWX=%d)", g_mprotect_prot);
    check(g_mprotect_addr == ENTRY_PAGE, "B6 mprotect targets the entry page (0x%lx)",
          (unsigned long)g_mprotect_addr);
    check(g_mprotect_len == 4096, "B7 length is one page (%lu)", (unsigned long)g_mprotect_len);
    check(entry_untouched(), "B8 entry machine code untouched");
    check(err[0] == '\0', "B9 no error text on success");

    printf("\n[B2] a second call reuses the cached baseline (no re-read)\n");
    g_open_calls = 0;
    g_mprotect_calls = 0;
    check(nlu_pp_unprotect(NULL, "uninstall", err, sizeof(err)) == 0, "B10 returns 0 again");
    check(g_open_calls == 0, "B11 /proc/self/maps is NOT read again (%d opens)", g_open_calls);
    check(g_nlu_orig_prot == (PROT_READ | PROT_EXEC), "B12 baseline unchanged");
    check(g_mprotect_calls == 1, "B13 mprotect still called for the write window");
}

/* --------------------------------------- C: nlu_pp_unprotect failure paths */

static void test_c_unprotect_unknown_prot(void)
{
    char err[192];

    printf("\n[C] unknown original protection must be refused, not assumed\n");

    fixture_reset();
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    err[0] = '\0';
    /* page 0x1000 is not covered by the maps content -> query fails */
    g_nlu_func = 0x00001234u;
    check(nlu_pp_unprotect(NULL, "install", err, sizeof(err)) == -1, "C1 returns -1");
    check(g_nlu_prot_valid == 0, "C2 g_nlu_prot_valid is NOT set to 1");
    check(g_mprotect_calls == 0, "C3 mprotect is NOT called (%d)", g_mprotect_calls);
    check(entry_untouched(), "C4 entry machine code not written");
    check(strstr(err, "cannot determine original page protection") != NULL,
          "C5 error names the real cause: %.90s", err);
    check(strstr(err, "refusing to change protection") != NULL,
          "C6 error states that the change was refused");

    printf("\n[C2] maps unreadable (the T8-06 P1 case)\n");
    fixture_reset();
    g_open_fail = 1;
    err[0] = '\0';
    check(nlu_pp_unprotect(NULL, "install", err, sizeof(err)) == -1, "C7 returns -1");
    check(g_nlu_prot_valid == 0, "C8 g_nlu_prot_valid stays 0");
    check(g_mprotect_calls == 0, "C9 mprotect is NOT called");
    check(entry_untouched(), "C10 entry machine code not written");
    check(strstr(err, "cannot determine original page protection") != NULL,
          "C11 same explicit error as the not-found case");

    printf("\n[C3] after a refusal the next attempt can still succeed\n");
    g_open_fail = 0;
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    err[0] = '\0';
    check(nlu_pp_unprotect(NULL, "install", err, sizeof(err)) == 0, "C12 succeeds once readable");
    check(g_nlu_prot_valid == 1, "C13 baseline valid now");
    check(g_nlu_orig_prot == (PROT_READ | PROT_EXEC), "C14 baseline is RX (%d)", g_nlu_orig_prot);

    printf("\n[C4] mprotect failure inside a known baseline\n");
    fixture_reset();
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    g_mprotect_fail = 1;
    err[0] = '\0';
    check(nlu_pp_unprotect(NULL, "install", err, sizeof(err)) == -1, "C15 returns -1");
    check(g_nlu_prot_valid == 1, "C16 baseline stays valid (it was readable)");
    check(g_nlu_orig_prot == (PROT_READ | PROT_EXEC), "C17 baseline still RX");
    check(strstr(err, "mprotect(install") != NULL, "C18 error names the operation: %.90s", err);
    check(strstr(err, "errno=") != NULL, "C19 error carries errno");
    check(entry_untouched(), "C20 entry machine code not written");

    printf("\n[C5] what == NULL and a legitimately writable page\n");
    fixture_reset();
    maps_set("7f001000-7f002000 rwxp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    g_mprotect_fail = 1;
    err[0] = '\0';
    check(nlu_pp_unprotect(NULL, NULL, err, sizeof(err)) == -1, "C21 returns -1");
    check(strstr(err, "mprotect(unknown") != NULL, "C22 NULL operation name becomes \"unknown\": %.90s", err);

    fixture_reset();
    maps_set("7f001000-7f002000 rwxp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    err[0] = '\0';
    check(nlu_pp_unprotect(NULL, "install", err, sizeof(err)) == 0,
          "C23 an already-RWX page is accepted (legal, not treated as an error)");
    check(g_nlu_prot_valid == 1, "C24 baseline valid");
    check(g_nlu_orig_prot == (PROT_READ | PROT_WRITE | PROT_EXEC),
          "C25 baseline records RWX truthfully (%d)", g_nlu_orig_prot);
}

/* --------------------------------------------------------- D: reprotect */

static void test_d_reprotect(void)
{
    char err[192];

    printf("\n[D] nlu_pp_reprotect(): restore the recorded permission\n");

    fixture_reset();
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    (void)nlu_pp_unprotect(NULL, "install", err, sizeof(err));
    g_mprotect_calls = 0;
    g_mprotect_prot = -1;
    err[0] = '\0';
    check(nlu_pp_reprotect(NULL, err, sizeof(err)) == 0, "D1 returns 0");
    check(g_mprotect_calls == 1, "D2 mprotect called once");
    check(g_mprotect_prot == (PROT_READ | PROT_EXEC),
          "D3 restores RX, never RWX (%d)", g_mprotect_prot);
    check(err[0] == '\0', "D4 no error text");

    printf("\n[D2] a page that really was RWX must be restored as RWX\n");
    fixture_reset();
    maps_set("7f001000-7f002000 rwxp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    (void)nlu_pp_unprotect(NULL, "install", err, sizeof(err));
    g_mprotect_calls = 0;
    g_mprotect_prot = -1;
    err[0] = '\0';
    check(nlu_pp_reprotect(NULL, err, sizeof(err)) == 0, "D5 returns 0");
    check(g_mprotect_prot == (PROT_READ | PROT_WRITE | PROT_EXEC),
          "D6 legal 7 is preserved, not 'fixed' (%d)", g_mprotect_prot);

    printf("\n[D3] no baseline -> refuse, do not guess\n");
    fixture_reset();
    g_mprotect_calls = 0;
    err[0] = '\0';
    check(nlu_pp_reprotect(NULL, err, sizeof(err)) == -1, "D7 returns -1");
    check(g_mprotect_calls == 0, "D8 mprotect is NOT called");
    check(strstr(err, "original page protection is unknown") != NULL,
          "D9 explicit error: %.90s", err);

    printf("\n[D4] restore failure is reported with page/prot/errno\n");
    fixture_reset();
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    (void)nlu_pp_unprotect(NULL, "install", err, sizeof(err));
    g_mprotect_fail = 1;
    err[0] = '\0';
    check(nlu_pp_reprotect(NULL, err, sizeof(err)) == -1, "D10 returns -1");
    check(strstr(err, "mprotect restore failed page=") != NULL, "D11 names the failure: %.90s", err);
    check(strstr(err, "prot=5") != NULL, "D12 reports the attempted prot (RX=5)");
    check(strstr(err, "errno=") != NULL, "D13 carries errno");

    printf("\n[D5] NULL buffer must not crash\n");
    fixture_reset();
    maps_set("7f001000-7f002000 r-xp 00000000 fd:00 123 /data/app/libsmartbox.so\n");
    (void)nlu_pp_unprotect(NULL, "install", err, sizeof(err));
    check(nlu_pp_reprotect(NULL, NULL, 0) == 0, "D14 restore still works with no error buffer");
}

int main(void)
{
    printf("T8-06.1 page_prot / nlu_pp_unprotect / nlu_pp_reprotect behaviour test\n");
    printf("(production functions extracted verbatim from hook_agent/libtg_hook.c)\n");
    test_a_query();
    test_b_unprotect_ok();
    test_c_unprotect_unknown_prot();
    test_d_reprotect();
    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
