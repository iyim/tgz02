#ifndef T8_NLU_SWITCH_H
#define T8_NLU_SWITCH_H

#include <stddef.h>
#include <stdint.h>

#define NLS_PASS         0
#define NLS_DECIDE       1
#define NLS_FAILCLOSED   2

#define NLS_OK           0
#define NLS_E_ARG      (-1)
#define NLS_E_UNSAFE   (-2)

/* 单一原子状态字，禁止拆成两个独立状态变量 */
#define NLS_BIT_INSTALLED  (1u << 0)
#define NLS_BIT_TAKEOVER   (1u << 1)

typedef struct {
    volatile unsigned int state;
    volatile int init_failed;

    volatile unsigned long sets_on;
    volatile unsigned long sets_off;
    volatile unsigned long refused_on;
    volatile unsigned long install_marks;
    volatile unsigned long uninstall_marks;
    volatile unsigned long reads;
} nls_state;

void nls_init(nls_state *s);

int nls_installed(const nls_state *s);
int nls_takeover(const nls_state *s);

int nls_set_installed(nls_state *s, int installed);
int nls_set_takeover(nls_state *s, int on);

void nls_note_init_failure(nls_state *s, int failed);
int nls_mode(const nls_state *s, int ready);
const char *nls_mode_name(int m);

#endif
