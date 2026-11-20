/*
 * tgb_dedup.c -- 见 tgb_dedup.h
 *
 * 结构：插入顺序环（ring）+ 开放寻址哈希表（tab，槽里存环下标）。
 *   环负责"谁最老"（FIFO 淘汰），哈希表负责 O(1) 查重。
 *   淘汰时把对应哈希槽标成墓碑（-2）；墓碑过多时整表重建，
 *   因此最坏单次操作是 O(cap)，摊销仍是 O(1)，内存始终有界。
 */
#include "tgb_dedup.h"

#include <stdlib.h>
#include <string.h>

#define D_ID_LEN (TGB_MAX_ID_LEN + 1)
#define D_EMPTY  (-1)
#define D_TOMB   (-2)

struct tgb_dedup {
    int       cap;          /* 环容量（2 的幂） */
    char     *ring;         /* cap * D_ID_LEN */
    int32_t  *tab;          /* tsize 个槽 */
    int       tsize;        /* cap * 2 */
    int       tmask;
    int       head;         /* 环里最老的一条 */
    int       count;
    int       tombs;
    unsigned long evicted;
};

static uint32_t d_hash(const char *s)
{
    const unsigned char *p = (const unsigned char *)s;
    uint32_t h = 2166136261u;

    while (*p) {
        h ^= (uint32_t)*p++;
        h *= 16777619u;
    }
    return h;
}

static char *slot_id(const tgb_dedup *d, int idx)
{
    return d->ring + (size_t)idx * (size_t)D_ID_LEN;
}

static void tab_insert(tgb_dedup *d, int ring_idx)
{
    uint32_t h = d_hash(slot_id(d, ring_idx)) & (uint32_t)d->tmask;
    int i;

    for (i = 0; i < d->tsize; i++) {
        int pos = (int)((h + (uint32_t)i) & (uint32_t)d->tmask);
        if (d->tab[pos] == D_EMPTY || d->tab[pos] == D_TOMB) {
            d->tab[pos] = (int32_t)ring_idx;
            return;
        }
    }
}

/* 重建哈希表：把环里现有的 count 条重新插入，墓碑清零 */
static int tab_rebuild(tgb_dedup *d)
{
    int i;

    memset(d->tab, 0xFF, (size_t)d->tsize * sizeof(int32_t));   /* 全 D_EMPTY(-1) */
    d->tombs = 0;
    for (i = 0; i < d->count; i++) {
        int idx = (d->head + i) % d->cap;
        tab_insert(d, idx);
    }
    return 0;
}

tgb_dedup *tgb_dedup_new(int cap)
{
    tgb_dedup *d;
    int c = 64;

    while (c < cap && c < (1 << 20)) c <<= 1;

    d = (tgb_dedup *)calloc(1, sizeof(*d));
    if (d == NULL) return NULL;
    d->cap = c;
    d->tsize = c * 2;
    d->tmask = d->tsize - 1;
    d->ring = (char *)calloc((size_t)c * (size_t)D_ID_LEN, 1);
    d->tab = (int32_t *)malloc((size_t)d->tsize * sizeof(int32_t));
    if (d->ring == NULL || d->tab == NULL) {
        free(d->ring);
        free(d->tab);
        free(d);
        return NULL;
    }
    memset(d->tab, 0xFF, (size_t)d->tsize * sizeof(int32_t));
    d->head = 0;
    d->count = 0;
    d->tombs = 0;
    d->evicted = 0;
    return d;
}

void tgb_dedup_free(tgb_dedup *d)
{
    if (d == NULL) return;
    free(d->ring);
    free(d->tab);
    free(d);
}

int tgb_dedup_contains(const tgb_dedup *d, const char *event_id)
{
    uint32_t h;
    int i;

    if (d == NULL || event_id == NULL) return 0;
    h = d_hash(event_id) & (uint32_t)d->tmask;
    for (i = 0; i < d->tsize; i++) {
        int pos = (int)((h + (uint32_t)i) & (uint32_t)d->tmask);
        int32_t s = d->tab[pos];
        if (s == D_EMPTY) return 0;
        if (s == D_TOMB) continue;
        if (strcmp(slot_id(d, (int)s), event_id) == 0) return 1;
    }
    return 0;
}

int tgb_dedup_add(tgb_dedup *d, const char *event_id)
{
    uint32_t h;
    int i;
    int free_pos = -1;
    int insert_idx;

    if (d == NULL || event_id == NULL || event_id[0] == '\0') return -1;
    if (strlen(event_id) > TGB_MAX_ID_LEN) return -1;

    h = d_hash(event_id) & (uint32_t)d->tmask;
    for (i = 0; i < d->tsize; i++) {
        int pos = (int)((h + (uint32_t)i) & (uint32_t)d->tmask);
        int32_t s = d->tab[pos];
        if (s == D_EMPTY) {
            if (free_pos < 0) free_pos = pos;
            goto do_insert;
        }
        if (s == D_TOMB) {
            if (free_pos < 0) free_pos = pos;
            continue;
        }
        if (strcmp(slot_id(d, (int)s), event_id) == 0) return 0;
    }

do_insert:
    if (free_pos < 0) {
        tab_rebuild(d);
        free_pos = (int)(h & (uint32_t)d->tmask);
        while (d->tab[free_pos] != D_EMPTY) free_pos = (free_pos + 1) & d->tmask;
    }

    if (d->count == d->cap) {
        /* 淘汰最老的一条 */
        uint32_t hv = d_hash(slot_id(d, d->head)) & (uint32_t)d->tmask;
        int k;
        for (k = 0; k < d->tsize; k++) {
            int pos = (int)((hv + (uint32_t)k) & (uint32_t)d->tmask);
            if (d->tab[pos] == d->head) {
                d->tab[pos] = D_TOMB;
                d->tombs++;
                break;
            }
            if (d->tab[pos] == D_EMPTY) break;
        }
        d->head = (d->head + 1) % d->cap;
        d->count--;
        d->evicted++;
    }

    insert_idx = (d->head + d->count) % d->cap;
    memcpy(slot_id(d, insert_idx), event_id, strlen(event_id) + 1);
    d->tab[free_pos] = (int32_t)insert_idx;
    d->count++;

    if (d->tombs > d->cap / 2 && d->count < d->cap) tab_rebuild(d);
    return 1;
}

unsigned long tgb_dedup_size(const tgb_dedup *d)
{
    return d ? (unsigned long)d->count : 0UL;
}

unsigned long tgb_dedup_evicted(const tgb_dedup *d)
{
    return d ? d->evicted : 0UL;
}

int tgb_dedup_capacity(const tgb_dedup *d)
{
    return d ? d->cap : 0;
}
