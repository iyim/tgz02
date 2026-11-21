/*
 * remote_call.c -- 见 remote_call.h
 *
 * 一次远程调用在目标进程里长这样：
 *
 *     pc = fn, r0..r3 = 参数, sp = 我们分配的页, lr = 沙袋(UDF)
 *     目标线程跑 fn → 返回值在 r0 → bx lr → UDF → SIGILL
 *     我们 waitpid 收到 SIGILL，确认 pc 落在沙袋里，把 r0 当返回值，恢复原寄存器
 *
 * 为什么这样是安全的：
 *   - 只借用一个线程、只调用 libc/链接器导出函数，不碰业务代码；
 *   - 每次调用前完整保存 user_regs，调用后原样恢复；线程在两次调用之间保持
 *     ptrace-stop，整个注入窗口只有毫秒级，最后 PTRACE_DETACH 让它继续跑；
 *   - 期间到达的无关信号（SIGURG 等）原样转发给目标线程，不吞、不改；
 *   - 任何失败路径都会 PTRACE_DETACH，绝不把线程留在 stop 状态。
 */

#include "remote_call.h"

#include <dirent.h>
#include <elf.h>
#include <errno.h>
#include <fcntl.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/ptrace.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/user.h>
#include <sys/wait.h>

#ifndef __WALL
#define __WALL 0x40000000
#endif

#define UDF_ARM          0xE7F000F0u
#define MAP_PRIVATE_ANON 0x22u          /* MAP_PRIVATE|MAP_ANONYMOUS */
#define SCRATCH_LEN      65536u
#define SCRATCH_STACK    0x8000u
#define SCRATCH_TRAP     0xF000u
#define SCRATCH_DATA     0x0000u
#define MAX_SYM_WALK     8192

static void rc_err(char *err, size_t errlen, const char *fmt, ...)
{
    va_list ap;

    if (err == NULL || errlen == 0) return;
    va_start(ap, fmt);
    vsnprintf(err, errlen, fmt, ap);
    va_end(ap);
    err[errlen - 1] = '\0';
}

/* ------------------------------------------------------------ maps 解析 */

static int maps_line(pid_t pid, uint32_t addr, char *path, size_t pathlen, int *prot)
{
    char file[32];
    char line[512];
    FILE *f;

    snprintf(file, sizeof(file), "/proc/%d/maps", (int)pid);
    f = fopen(file, "r");
    if (f == NULL) return -1;

    while (fgets(line, sizeof(line), f) != NULL) {
        unsigned long s = 0, e = 0;
        char perms[8] = {0};
        char *p;

        if (sscanf(line, "%lx-%lx %7s", &s, &e, perms) != 3) continue;
        if (addr < s || addr >= e) continue;

        p = strchr(line, '/');
        if (path != NULL && pathlen > 0) {
            if (p != NULL) {
                size_t n = strlen(p);
                while (n > 0 && (p[n - 1] == '\n' || p[n - 1] == ' ')) n--;
                if (n >= pathlen) n = pathlen - 1;
                memcpy(path, p, n);
                path[n] = '\0';
            } else {
                snprintf(path, pathlen, "[anon]");
            }
        }
        if (prot != NULL)
            *prot = (perms[0] == 'r' ? 1 : 0) | (perms[1] == 'w' ? 2 : 0) |
                    (perms[2] == 'x' ? 4 : 0);
        fclose(f);
        return 0;
    }
    fclose(f);
    return -1;
}

int rc_maps_has(rc_ctx *c, const char *needle, char *hit, size_t hitcap)
{
    char file[32];
    char line[512];
    FILE *f;
    int found = 0;

    snprintf(file, sizeof(file), "/proc/%d/maps", (int)c->pid);
    f = fopen(file, "r");
    if (f == NULL) return 0;
    while (fgets(line, sizeof(line), f) != NULL) {
        if (strstr(line, needle) == NULL) continue;
        found = 1;
        if (hit != NULL && hitcap > 0) {
            char *p = strchr(line, '/');
            size_t n;
            if (p == NULL) p = line;
            n = strlen(p);
            while (n > 0 && (p[n - 1] == '\n' || p[n - 1] == ' ')) n--;
            if (n >= hitcap) n = hitcap - 1;
            memcpy(hit, p, n);
            hit[n] = '\0';
        }
        break;
    }
    fclose(f);
    return found;
}

int rc_maps_base(rc_ctx *c, const char *soname, uint32_t *base,
                 char *path, size_t pathlen, char *err, size_t errlen)
{
    char file[32];
    char line[512];
    FILE *f;
    size_t nlen = strlen(soname);

    snprintf(file, sizeof(file), "/proc/%d/maps", (int)c->pid);
    f = fopen(file, "r");
    if (f == NULL) {
        rc_err(err, errlen, "open %s failed errno=%d", file, errno);
        return RC_E_MAP;
    }

    while (fgets(line, sizeof(line), f) != NULL) {
        unsigned long s = 0, e = 0, off = 0;
        char perms[8] = {0};
        char *p;
        size_t plen;

        if (sscanf(line, "%lx-%lx %7s %lx", &s, &e, perms, &off) != 4) continue;
        (void)e;
        p = strchr(line, '/');
        if (p == NULL) continue;
        plen = strlen(p);
        while (plen > 0 && (p[plen - 1] == '\n' || p[plen - 1] == ' ')) plen--;
        p[plen] = '\0';
        if (plen < nlen || strcmp(p + plen - nlen, soname) != 0) continue;
        if (off != 0) continue;                    /* 只要文件偏移 0 的第一段 */
        if (base != NULL) *base = (uint32_t)s;
        if (path != NULL && pathlen > 0) {
            size_t n = plen;
            if (n >= pathlen) n = pathlen - 1;
            memcpy(path, p, n);
            path[n] = '\0';
        }
        fclose(f);
        return RC_OK;
    }
    fclose(f);
    rc_err(err, errlen, "%s is not mapped in pid %d", soname, (int)c->pid);
    return RC_E_MAP;
}

/* ----------------------------------------------------- 磁盘 ELF 符号解析 */

static int pread_full(int fd, void *buf, size_t len, off_t off)
{
    uint8_t *p = (uint8_t *)buf;

    while (len > 0) {
        ssize_t r = pread(fd, p, len, off);
        if (r <= 0) return -1;
        p += r;
        off += r;
        len -= (size_t)r;
    }
    return 0;
}

/* vaddr → 文件偏移（按 PT_LOAD 段换算） */
static int vaddr_to_off(const Elf32_Phdr *ph, int nph, uint32_t vaddr, off_t *out)
{
    int i;

    for (i = 0; i < nph; i++) {
        if (ph[i].p_type != PT_LOAD) continue;
        if (vaddr < ph[i].p_vaddr) continue;
        if (vaddr >= ph[i].p_vaddr + ph[i].p_filesz) continue;
        *out = (off_t)ph[i].p_offset + (off_t)(vaddr - ph[i].p_vaddr);
        return 0;
    }
    return -1;
}

/* sysv hash：与链接器一致（用于 DT_HASH 的桶索引） */
static uint32_t elf_hash_name(const char *s)
{
    uint32_t h = 0;
    uint32_t g;

    while (*s != '\0') {
        h = (h << 4) + (uint32_t)(unsigned char)*s++;
        g = h & 0xF0000000u;
        if (g != 0) h ^= g >> 24;
        h &= ~g;
    }
    return h;
}

/* gnu hash：与 glibc/bionic 的 DT_GNU_HASH 一致 */
static uint32_t gnu_hash_name(const char *s)
{
    uint32_t h = 5381u;

    while (*s != '\0') h = (h << 5) + h + (uint32_t)(unsigned char)*s++;
    return h;
}

/*
 * 在磁盘 ELF 的 dynsym 里按名字查符号。
 * 用 DT_HASH / DT_GNU_HASH 的桶+链查找，而不是遍历符号表：
 *   - 不需要知道符号总数（GNU hash 没有 nchain）；
 *   - 一次 pread 只读几个字节，几 KB 的 IO 就够。
 * 找到后返回 st_value；运行期地址由调用方用 base + st_value 得到。
 */
static int elf_sym(const char *path, uint32_t base, const char *want, uint32_t *out,
                   char *err, size_t errlen)
{
    int fd = -1;
    Elf32_Ehdr eh;
    Elf32_Phdr *ph = NULL;
    Elf32_Dyn *dyn = NULL;
    int rc = RC_E_SYM;
    int i;
    uint32_t symtab = 0, strtab = 0, strsz = 0, hash = 0, gnuhash = 0;
    off_t symoff = 0, stroff = 0, hashoff = 0, gnuoff = 0;
    uint32_t found_val = 0;
    int found = 0;
    /* 找不到符号时把查找轨迹带进错误信息（现场排障用，不含敏感内容） */
    uint32_t dbg_nbucket = 0, dbg_nchain = 0, dbg_bucket = 0;
    int dbg_walk = 0;
    char dbg_last[80] = "";

    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) {
        rc_err(err, errlen, "open %s failed errno=%d", path, errno);
        return RC_E_ELF;
    }
    if (pread_full(fd, &eh, sizeof(eh), 0) != 0) {
        rc_err(err, errlen, "read %s ELF header failed", path);
        rc = RC_E_ELF;
        goto done;
    }
    if (eh.e_ident[EI_MAG0] != ELFMAG0 || eh.e_ident[EI_MAG1] != ELFMAG1 ||
        eh.e_ident[EI_MAG2] != ELFMAG2 || eh.e_ident[EI_MAG3] != ELFMAG3 ||
        eh.e_ident[EI_CLASS] != ELFCLASS32 || eh.e_machine != EM_ARM) {
        rc_err(err, errlen, "%s is not ELF32/ARM", path);
        rc = RC_E_ELF;
        goto done;
    }
    if (eh.e_phnum == 0 || eh.e_phnum > 64) {
        rc_err(err, errlen, "%s has implausible e_phnum=%d", path, (int)eh.e_phnum);
        rc = RC_E_ELF;
        goto done;
    }

    ph = (Elf32_Phdr *)calloc(eh.e_phnum, sizeof(Elf32_Phdr));
    if (ph == NULL) goto done;
    if (pread_full(fd, ph, (size_t)eh.e_phnum * sizeof(Elf32_Phdr), (off_t)eh.e_phoff) != 0) {
        rc_err(err, errlen, "read program headers of %s failed", path);
        goto done;
    }

    for (i = 0; i < eh.e_phnum; i++) {
        if (ph[i].p_type != PT_DYNAMIC || ph[i].p_filesz == 0) continue;
        dyn = (Elf32_Dyn *)calloc(1, ph[i].p_filesz + sizeof(Elf32_Dyn));
        if (dyn == NULL) goto done;
        if (pread_full(fd, dyn, ph[i].p_filesz, (off_t)ph[i].p_offset) != 0) {
            rc_err(err, errlen, "read PT_DYNAMIC of %s failed", path);
            goto done;
        }
        break;
    }
    if (dyn == NULL) {
        rc_err(err, errlen, "no PT_DYNAMIC in %s", path);
        goto done;
    }

    for (i = 0; dyn[i].d_tag != DT_NULL; i++) {
        switch (dyn[i].d_tag) {
        case DT_SYMTAB:   symtab = (uint32_t)dyn[i].d_un.d_ptr; break;
        case DT_STRTAB:   strtab = (uint32_t)dyn[i].d_un.d_ptr; break;
        case DT_STRSZ:    strsz = (uint32_t)dyn[i].d_un.d_val;  break;
        case DT_HASH:     hash = (uint32_t)dyn[i].d_un.d_ptr;   break;
        case DT_GNU_HASH: gnuhash = (uint32_t)dyn[i].d_un.d_ptr; break;
        default: break;
        }
    }
    if (symtab == 0 || strtab == 0 || strsz == 0 || strsz > (1u << 20)) {
        rc_err(err, errlen, "bad DT_SYMTAB/DT_STRTAB/DT_STRSZ in %s", path);
        goto done;
    }
    if (vaddr_to_off(ph, eh.e_phnum, symtab, &symoff) != 0 ||
        vaddr_to_off(ph, eh.e_phnum, strtab, &stroff) != 0) {
        rc_err(err, errlen, "dynsym/dynstr vaddr not in any PT_LOAD of %s", path);
        goto done;
    }

    if (hash != 0) {
        uint32_t hdr[2];
        uint32_t nbucket, nchain;
        uint32_t h = elf_hash_name(want);
        int walk = 0;

        if (vaddr_to_off(ph, eh.e_phnum, hash, &hashoff) != 0 ||
            pread_full(fd, hdr, sizeof(hdr), hashoff) != 0) {
            rc_err(err, errlen, "cannot read DT_HASH of %s", path);
            goto done;
        }
        nbucket = hdr[0];
        nchain = hdr[1];
        dbg_nbucket = nbucket;
        dbg_nchain = nchain;
        dbg_bucket = (nbucket != 0) ? (h % nbucket) : 0;
        if (nbucket == 0 || nchain == 0 || nchain > 200000u) {
            rc_err(err, errlen, "implausible DT_HASH (nbucket=%u nchain=%u) in %s",
                   nbucket, nchain, path);
            goto done;
        }

        /* DT_HASH 的结构：nbucket 个桶（桶里存"符号索引"），后面是 nchain 条链。
         * 第一跳读桶，之后一律走链——不能再拿链里的值当桶下标，否则会绕圈。 */
        {
            uint32_t symidx = 0;

            if (pread_full(fd, &symidx, 4, hashoff + 8 + (off_t)dbg_bucket * 4) != 0) symidx = 0;
            while (symidx != 0) {
                if (symidx >= nchain) break;
                if (++walk > MAX_SYM_WALK) break;
                {
                    Elf32_Sym s;
                    char nm[256];
                    if (pread_full(fd, &s, sizeof(s),
                                   symoff + (off_t)symidx * sizeof(Elf32_Sym)) != 0) break;
                    if (s.st_name < strsz && s.st_shndx != SHN_UNDEF) {
                        size_t cap = sizeof(nm);
                        if (strsz - s.st_name < cap) cap = strsz - s.st_name;
                        if (pread_full(fd, nm, cap, stroff + (off_t)s.st_name) == 0) {
                            nm[cap - 1] = '\0';
                            dbg_walk = walk;
                            snprintf(dbg_last, sizeof(dbg_last), "%s", nm);
                            if (strcmp(nm, want) == 0) { found_val = s.st_value; found = 1; break; }
                        }
                    }
                }
                if (pread_full(fd, &symidx, 4,
                               hashoff + 8 + (off_t)nbucket * 4 + (off_t)symidx * 4) != 0) break;
            }
        }
    } else if (gnuhash != 0) {
        uint32_t gh[4];
        uint32_t nbuckets, symoffset, bloom_size;
        uint32_t h = gnu_hash_name(want);
        uint32_t symidx;
        int walk = 0;

        if (vaddr_to_off(ph, eh.e_phnum, gnuhash, &gnuoff) != 0 ||
            pread_full(fd, gh, sizeof(gh), gnuoff) != 0) {
            rc_err(err, errlen, "cannot read DT_GNU_HASH of %s", path);
            goto done;
        }
        nbuckets = gh[0];
        symoffset = gh[1];
        bloom_size = gh[2];
        if (nbuckets == 0 || nbuckets > 200000u) {
            rc_err(err, errlen, "implausible DT_GNU_HASH nbuckets=%u in %s", nbuckets, path);
            goto done;
        }
        {
            off_t boff = gnuoff + (off_t)(4 + bloom_size) * 4 + (off_t)(h % nbuckets) * 4;
            if (pread_full(fd, &symidx, 4, boff) != 0) {
                rc_err(err, errlen, "cannot read gnu hash bucket of %s", path);
                goto done;
            }
        }
        if (symidx < symoffset) {
            /* 桶为空：符号不存在 */
        } else {
            off_t coff = gnuoff + (off_t)(4 + bloom_size + nbuckets) * 4;
            for (;;) {
                uint32_t chainval;
                if (pread_full(fd, &chainval, 4, coff + (off_t)(symidx - symoffset) * 4) != 0) break;
                if ((chainval | 1u) == (h | 1u)) {
                    Elf32_Sym s;
                    char nm[256];
                    if (pread_full(fd, &s, sizeof(s), symoff + (off_t)symidx * sizeof(Elf32_Sym)) == 0 &&
                        s.st_name < strsz && s.st_shndx != SHN_UNDEF) {
                        size_t cap = sizeof(nm);
                        if (strsz - s.st_name < cap) cap = strsz - s.st_name;
                        if (pread_full(fd, nm, cap, stroff + (off_t)s.st_name) == 0) {
                            nm[cap - 1] = '\0';
                            if (strcmp(nm, want) == 0) { found_val = s.st_value; found = 1; break; }
                        }
                    }
                }
                if (chainval & 1u) break;
                symidx++;
                if (++walk > MAX_SYM_WALK) break;
            }
        }
    } else {
        rc_err(err, errlen, "no DT_HASH/DT_GNU_HASH in %s", path);
        goto done;
    }

    if (!found) {
        rc_err(err, errlen, "symbol %s not found in %s dynsym "
               "(nbucket=%u nchain=%u bucket=%u walk=%d last='%s')",
               want, path, dbg_nbucket, dbg_nchain, dbg_bucket, dbg_walk, dbg_last);
        goto done;
    }
    *out = base + found_val;
    rc = RC_OK;

done:
    free(dyn);
    free(ph);
    if (fd >= 0) close(fd);
    return rc;
}

int rc_sym(rc_ctx *c, const char *soname, const char *sym, uint32_t *addr,
           char *err, size_t errlen)
{
    uint32_t base = 0;
    char path[256];
    int rc;

    rc = rc_maps_base(c, soname, &base, path, sizeof(path), err, errlen);
    if (rc != RC_OK) return rc;
    return elf_sym(path, base, sym, addr, err, errlen);
}

/* ------------------------------------------------------------- ptrace */

static uint32_t tpkword(pid_t tid, uint32_t addr)
{
    return (uint32_t)ptrace(PTRACE_PEEKDATA, tid, (void *)(uintptr_t)addr, 0);
}

static int poke(pid_t tid, uint32_t addr, uint32_t word, char *err, size_t errlen)
{
    if (ptrace(PTRACE_POKEDATA, tid, (void *)(uintptr_t)addr,
               (void *)(uintptr_t)word) != 0) {
        rc_err(err, errlen, "PTRACE_POKEDATA 0x%08x failed errno=%d", addr, errno);
        return RC_E_WRITE;
    }
    return RC_OK;
}

int rc_read(rc_ctx *c, uint32_t addr, void *buf, size_t len, char *err, size_t errlen)
{
    uint8_t *out = (uint8_t *)buf;
    size_t done = 0;

    while (done < len) {
        uint32_t a = (uint32_t)((addr + done) & ~3u);
        size_t off = (size_t)((addr + done) - a);
        size_t n = 4 - off;
        uint32_t w;

        errno = 0;
        w = tpkword(c->tid, a);
        if (errno != 0) {
            rc_err(err, errlen, "PTRACE_PEEKDATA 0x%08x failed errno=%d", a, errno);
            return RC_E_READ;
        }
        if (n > len - done) n = len - done;
        memcpy(out + done, (uint8_t *)&w + off, n);
        done += n;
    }
    return RC_OK;
}

int rc_read_str(rc_ctx *c, uint32_t addr, char *out, size_t cap, char *err, size_t errlen)
{
    size_t i = 0;

    if (cap == 0) return RC_E_READ;
    while (i + 1 < cap) {
        uint32_t a = (uint32_t)((addr + i) & ~3u);
        size_t off = (size_t)((addr + i) - a);
        uint32_t w;
        int k;

        errno = 0;
        w = tpkword(c->tid, a);
        if (errno != 0) {
            rc_err(err, errlen, "PTRACE_PEEKDATA 0x%08x failed errno=%d", a, errno);
            return RC_E_READ;
        }
        for (k = (int)off; k < 4 && i + 1 < cap; k++) {
            char ch = (char)((w >> (8 * k)) & 0xFF);
            out[i++] = ch;
            if (ch == '\0') return RC_OK;
        }
    }
    out[cap - 1] = '\0';
    return RC_OK;
}

int rc_write(rc_ctx *c, uint32_t addr, const void *buf, size_t len, char *err, size_t errlen)
{
    const uint8_t *in = (const uint8_t *)buf;
    size_t done = 0;

    while (done < len) {
        uint32_t a = (uint32_t)((addr + done) & ~3u);
        size_t off = (size_t)((addr + done) - a);
        size_t n = 4 - off;
        uint32_t w;

        if (n > len - done) n = len - done;
        errno = 0;
        w = tpkword(c->tid, a);
        if (errno != 0) {
            rc_err(err, errlen, "PTRACE_PEEKDATA 0x%08x failed errno=%d", a, errno);
            return RC_E_WRITE;
        }
        memcpy((uint8_t *)&w + off, in + done, n);
        if (poke(c->tid, a, w, err, errlen) != RC_OK) return RC_E_WRITE;
        done += n;
    }
    return RC_OK;
}

/* ----------------------------------------------------------- 线程选择 */

static int path_score(const char *p)
{
    if (p == NULL || p[0] == '\0') return 1;
    if (strstr(p, "linker") != NULL) return 0;          /* /system/bin/linker */
    if (strstr(p, "libdl.so") != NULL) return 0;
    if (strstr(p, "libsmartbox.so") != NULL) return 0;  /* 不劫持正在跑被 Hook 代码的线程 */
    if (strstr(p, "libtg_hook.so") != NULL) return 0;
    if (strstr(p, "libc.so") != NULL) return 3;         /* 最优：正常系统调用/锁等待 */
    return 1;
}

int rc_attach(rc_ctx *c, pid_t pid, char *err, size_t errlen)
{
    char dir[64];
    DIR *d;
    struct dirent *de;
    pid_t best = -1;
    int best_score = -1;
    char best_map[160];

    {
        /* 保留调用方在 attach 之前设置的故障注入开关（memset 会清掉它） */
        int keep_fault = c->pause_fail_after;
        int keep_busy = c->pc_busy_claims;
        memset(c, 0, sizeof(*c));
        c->pause_fail_after = keep_fault;
        c->pc_busy_claims = keep_busy;
    }
    c->pid = pid;
    c->tid = pid;
    best_map[0] = '\0';

    snprintf(dir, sizeof(dir), "/proc/%d/task", (int)pid);
    d = opendir(dir);
    if (d == NULL) {
        rc_err(err, errlen, "open %s failed errno=%d (process gone?)", dir, errno);
        return RC_E_THREAD;
    }

    while ((de = readdir(d)) != NULL) {
        long tid;
        char *endp = NULL;
        struct user_regs regs;
        char map[160] = {0};
        int score;
        int st = 0;

        if (de->d_name[0] < '0' || de->d_name[0] > '9') continue;
        tid = strtol(de->d_name, &endp, 10);
        if (endp == NULL || *endp != '\0') continue;

        if (ptrace(PTRACE_ATTACH, (pid_t)tid, NULL, NULL) != 0) continue;
        if (waitpid((pid_t)tid, &st, __WALL) < 0 || !WIFSTOPPED(st)) {
            (void)ptrace(PTRACE_DETACH, (pid_t)tid, NULL, NULL);
            continue;
        }
        memset(&regs, 0, sizeof(regs));
        if (ptrace(PTRACE_GETREGS, (pid_t)tid, NULL, &regs) != 0) {
            (void)ptrace(PTRACE_DETACH, (pid_t)tid, NULL, NULL);
            continue;
        }
        (void)maps_line(pid, (uint32_t)regs.ARM_pc, map, sizeof(map), NULL);
        score = path_score(map);
        (void)ptrace(PTRACE_DETACH, (pid_t)tid, NULL, NULL);

        if (score <= 0) continue;
        if (score > best_score) {
            best_score = score;
            best = (pid_t)tid;
            snprintf(best_map, sizeof(best_map), "%s", map);
        }
        if (best_score >= 3) break;         /* 已经是最优，不再打扰别的线程 */
    }
    closedir(d);

    if (best < 0) {
        rc_err(err, errlen, "no thread of pid %d is safe to hijack "
               "(every thread is inside linker/libdl/libsmartbox)", (int)pid);
        return RC_E_THREAD;
    }

    if (ptrace(PTRACE_ATTACH, best, NULL, NULL) != 0) {
        rc_err(err, errlen, "PTRACE_ATTACH tid=%d failed errno=%d", (int)best, errno);
        return RC_E_ATTACH;
    }
    {
        int st = 0;
        if (waitpid(best, &st, __WALL) < 0 || !WIFSTOPPED(st)) {
            rc_err(err, errlen, "waitpid tid=%d failed errno=%d", (int)best, errno);
            (void)ptrace(PTRACE_DETACH, best, NULL, NULL);
            return RC_E_ATTACH;
        }
    }

    c->tid = best;
    c->attached = 1;
    c->attach_score = best_score;
    snprintf(c->thread_map, sizeof(c->thread_map), "%s", best_map);
    return RC_OK;
}

/* ------------------------------------------------------------ 线程保护 */

static int list_tids(pid_t pid, pid_t **out, int *count, char *err, size_t errlen)
{
    char dir[64];
    DIR *d;
    struct dirent *de;
    pid_t *arr = NULL;
    int n = 0, cap = 0;

    snprintf(dir, sizeof(dir), "/proc/%d/task", (int)pid);
    d = opendir(dir);
    if (d == NULL) {
        rc_err(err, errlen, "open %s failed errno=%d", dir, errno);
        return RC_E_PAUSE;
    }
    while ((de = readdir(d)) != NULL) {
        long tid;
        char *endp = NULL;

        if (de->d_name[0] < '0' || de->d_name[0] > '9') continue;
        tid = strtol(de->d_name, &endp, 10);
        if (endp == NULL || *endp != '\0' || tid <= 1) continue;
        if (n == cap) {
            int ncap = (cap == 0) ? 64 : cap * 2;
            pid_t *narr = (pid_t *)realloc(arr, (size_t)ncap * sizeof(pid_t));
            if (narr == NULL) { free(arr); closedir(d); return RC_E_PAUSE; }
            arr = narr;
            cap = ncap;
        }
        arr[n++] = (pid_t)tid;
    }
    closedir(d);

    *out = arr;
    *count = n;
    return RC_OK;
}

static int set_has(const rc_thread_set *set, pid_t tid)
{
    int i;

    for (i = 0; i < set->n; i++) if (set->tids[i] == tid) return 1;
    return 0;
}

static int set_add(rc_thread_set *set, pid_t tid)
{
    if (set->n == set->cap) {
        int ncap = (set->cap == 0) ? 64 : set->cap * 2;
        pid_t *narr = (pid_t *)realloc(set->tids, (size_t)ncap * sizeof(pid_t));
        if (narr == NULL) return -1;
        set->tids = narr;
        set->cap = ncap;
    }
    set->tids[set->n++] = tid;
    return 0;
}

void rc_resume_all(rc_thread_set *set)
{
    int i;

    if (set == NULL) return;
    for (i = 0; i < set->n; i++) {
        /* 线程可能已经退出：detach 失败无所谓，绝不能因此中断清理 */
        (void)ptrace(PTRACE_DETACH, set->tids[i], NULL, NULL);
    }
    free(set->tids);
    set->tids = NULL;
    set->n = 0;
    set->cap = 0;
}

int rc_pause_all(rc_ctx *c, rc_thread_set *set, char *err, size_t errlen)
{
    int round;

    memset(set, 0, sizeof(*set));

    for (round = 0; round < 8; round++) {
        pid_t *tids = NULL;
        int n = 0, i, added = 0;

        if (list_tids(c->pid, &tids, &n, err, errlen) != RC_OK) {
            rc_resume_all(set);
            return RC_E_PAUSE;
        }

        for (i = 0; i < n; i++) {
            pid_t t = tids[i];
            int st = 0;

            if (t == c->tid) continue;          /* 执行线程已经 attached */
            if (set_has(set, t)) continue;

            if (ptrace(PTRACE_ATTACH, t, NULL, NULL) != 0) {
                if (errno == ESRCH) continue;   /* 刚退出，忽略 */
                rc_err(err, errlen, "PTRACE_ATTACH tid=%d failed errno=%d", (int)t, errno);
                free(tids);
                rc_resume_all(set);
                return RC_E_PAUSE;
            }
            if (waitpid(t, &st, __WALL) < 0 || !WIFSTOPPED(st)) {
                rc_err(err, errlen, "tid=%d did not stop (waitpid status=%d)", (int)t, st);
                (void)ptrace(PTRACE_DETACH, t, NULL, NULL);
                free(tids);
                rc_resume_all(set);
                return RC_E_PAUSE;
            }
            if (c->pause_fail_after > 0 && set->n >= c->pause_fail_after) {
                rc_err(err, errlen, "injected pause failure after %d thread(s) (tid=%d)",
                       set->n, (int)t);
                (void)ptrace(PTRACE_DETACH, t, NULL, NULL);
                free(tids);
                rc_resume_all(set);
                return RC_E_PAUSE;
            }
            if (set_add(set, t) != 0) {
                rc_err(err, errlen, "out of memory while recording paused threads");
                (void)ptrace(PTRACE_DETACH, t, NULL, NULL);
                free(tids);
                rc_resume_all(set);
                return RC_E_PAUSE;
            }
            added++;
        }
        free(tids);

        if (added != 0) continue;               /* 这一轮有新线程，下一轮再确认一次 */

        /* 本轮没有新线程：再枚举一次确认任务目录里没有未暂停的 TID */
        {
            pid_t *again = NULL;
            int n2 = 0, j, unknown = 0;

            if (list_tids(c->pid, &again, &n2, err, errlen) != RC_OK) {
                rc_resume_all(set);
                return RC_E_PAUSE;
            }
            for (j = 0; j < n2; j++) {
                if (again[j] == c->tid) continue;
                if (!set_has(set, again[j])) unknown++;
            }
            free(again);
            if (unknown == 0) return RC_OK;
        }
    }

    rc_err(err, errlen, "thread set did not stabilise after 8 rounds (%d paused)", set->n);
    rc_resume_all(set);
    return RC_E_PAUSE;
}

int rc_pc_in_range(rc_ctx *c, const rc_thread_set *set, uint32_t lo, uint32_t hi,
                   pid_t *offender, char *err, size_t errlen)
{
    int i;

    if (lo == 0 || hi <= lo) {
        rc_err(err, errlen, "invalid patch range [0x%08x,0x%08x)", lo, hi);
        return RC_E_UNSAFE;
    }
    if (offender != NULL) *offender = 0;

    /* 故障注入：假装有线程停在补丁窗口里，用来验证"恢复→重试"这条路径 */
    if (c->pc_busy_claims > 0) {
        c->pc_busy_claims--;
        if (offender != NULL) *offender = c->tid;
        return 1;
    }

    for (i = -1; i < set->n; i++) {
        pid_t t = (i < 0) ? c->tid : set->tids[i];
        struct user_regs regs;

        memset(&regs, 0, sizeof(regs));
        if (ptrace(PTRACE_GETREGS, t, NULL, &regs) != 0) continue;   /* 刚退出 */
        if ((uint32_t)regs.ARM_pc >= lo && (uint32_t)regs.ARM_pc < hi) {
            if (offender != NULL) *offender = t;
            return 1;
        }
    }
    return 0;
}

void rc_detach(rc_ctx *c)
{
    if (c == NULL || !c->attached) return;
    (void)ptrace(PTRACE_DETACH, c->tid, NULL, NULL);
    c->attached = 0;
}

/* ------------------------------------------------------------- 远程调用 */

static int rc_call_on_sp(rc_ctx *c, uint32_t fn, const uint32_t *args, int nargs,
                         uint32_t sp, uint32_t lr, uint32_t *ret, char *err, size_t errlen)
{
    struct user_regs saved, regs;
    int i;

    if (ptrace(PTRACE_GETREGS, c->tid, NULL, &saved) != 0) {
        rc_err(err, errlen, "PTRACE_GETREGS failed errno=%d", errno);
        return RC_E_REGS;
    }

    regs = saved;
    regs.ARM_pc = fn & ~1u;
    if (fn & 1u) regs.ARM_cpsr |= 0x20u;
    else regs.ARM_cpsr &= ~0x20u;
    regs.ARM_sp = sp;
    regs.ARM_lr = lr;
    regs.ARM_r0 = (nargs > 0) ? args[0] : 0;
    regs.ARM_r1 = (nargs > 1) ? args[1] : 0;
    regs.ARM_r2 = (nargs > 2) ? args[2] : 0;
    regs.ARM_r3 = (nargs > 3) ? args[3] : 0;

    if (nargs > 4) {
        int n = nargs - 4;
        uint32_t extra[8];
        uint32_t ssp;

        if (n > 8) n = 8;
        for (i = 0; i < n; i++) extra[i] = args[4 + i];
        ssp = (uint32_t)((sp - (uint32_t)(((n * 4) + 7) & ~7)) & ~7u);
        if (rc_write(c, ssp, extra, (size_t)n * 4, err, errlen) != RC_OK) return RC_E_WRITE;
        regs.ARM_sp = ssp;
    }

    if (ptrace(PTRACE_SETREGS, c->tid, NULL, &regs) != 0) {
        rc_err(err, errlen, "PTRACE_SETREGS failed errno=%d", errno);
        return RC_E_REGS;
    }
    if (ptrace(PTRACE_CONT, c->tid, NULL, NULL) != 0) {
        rc_err(err, errlen, "PTRACE_CONT failed errno=%d", errno);
        return RC_E_CALL;
    }

    for (;;) {
        int st = 0;
        pid_t r = waitpid(c->tid, &st, __WALL);

        if (r < 0) {
            if (errno == EINTR) continue;
            rc_err(err, errlen, "waitpid failed errno=%d", errno);
            return RC_E_CALL;
        }
        if (WIFEXITED(st) || WIFSIGNALED(st)) {
            rc_err(err, errlen, "target thread %d died during remote call "
                   "(exit=%d sig=%d)", (int)c->tid,
                   WIFEXITED(st) ? WEXITSTATUS(st) : -1,
                   WIFSIGNALED(st) ? WTERMSIG(st) : 0);
            return RC_E_CALL;
        }
        if (!WIFSTOPPED(st)) continue;

        memset(&regs, 0, sizeof(regs));
        if (ptrace(PTRACE_GETREGS, c->tid, NULL, &regs) != 0) {
            rc_err(err, errlen, "PTRACE_GETREGS after stop failed errno=%d", errno);
            return RC_E_REGS;
        }

        {
            int sig = WSTOPSIG(st);
            uint32_t pc = (uint32_t)regs.ARM_pc;

            if ((sig == SIGILL || sig == SIGSEGV || sig == SIGTRAP) &&
                pc >= c->trap && pc < c->trap + 8u) {
                if (ret != NULL) *ret = (uint32_t)regs.ARM_r0;
                /* 恢复被打断时的原始寄存器；线程保持 stop，等最后 PTRACE_DETACH */
                (void)ptrace(PTRACE_SETREGS, c->tid, NULL, &saved);
                return RC_OK;
            }

            if (sig == SIGSEGV || sig == SIGILL || sig == SIGBUS) {
                rc_err(err, errlen, "remote fault sig=%d pc=0x%08x (lr=0x%08x, trap=0x%08x)",
                       sig, pc, (uint32_t)regs.ARM_lr, c->trap);
                (void)ptrace(PTRACE_SETREGS, c->tid, NULL, &saved);
                return RC_E_CALL;
            }

            /* 无关信号：原样转发，继续等（目标进程该收到什么就收到什么） */
            (void)ptrace(PTRACE_CONT, c->tid, NULL, (void *)(long)sig);
        }
    }
}

int rc_call(rc_ctx *c, uint32_t fn, const uint32_t *args, int nargs, uint32_t *ret,
            char *err, size_t errlen)
{
    if (c->stack_top == 0) {
        rc_err(err, errlen, "scratch page is not prepared");
        return RC_E_CALL;
    }
    return rc_call_on_sp(c, fn, args, nargs, c->stack_top, c->trap, ret, err, errlen);
}

int rc_call_ns(rc_ctx *c, uint32_t fn, const uint32_t *args, int nargs, uint32_t *ret,
               char *err, size_t errlen)
{
    uint32_t sp;
    int rc;

    if (c->stack_top == 0 || c->trap == 0 || c->gadget == 0) {
        rc_err(err, errlen, "namespace-aware call needs scratch+trap+gadget");
        return RC_E_CALL;
    }
    /* 栈顶留一个字给 pop{pc}：callee 入口 sp 仍 8 字节对齐，返回后跳回沙袋 */
    sp = (uint32_t)((c->stack_top - 8u) & ~7u);
    rc = rc_write(c, sp, &c->trap, 4, err, errlen);
    if (rc != RC_OK) return rc;
    return rc_call_on_sp(c, fn, args, nargs, sp, c->gadget, ret, err, errlen);
}

/*
 * 在 libc 的代码段里找一条 `pop {pc}`（= ldmia sp!, {pc}，0xE8BD8000）当返程垫片。
 * 为什么要它：bionic 的 dlopen/dlsym 用 __builtin_return_address(0) 判断"调用者是谁"，
 * 返回地址落在匿名映射里就会得到 "(anonymous)" 命名空间，然后拒绝 /data/local/tmp 下的
 * 绝对路径。把返回地址放进 libc（默认命名空间、非 isolated），判定即放行；
 * 而 libc 这条 pop{pc} 会把控制流交给我们在栈上放的沙袋地址，捕获方式不变。
 */
static int find_gadget(rc_ctx *c, char *err, size_t errlen)
{
    uint32_t base = 0;
    char path[256];
    int fd = -1;
    Elf32_Ehdr eh;
    Elf32_Phdr ph[64];
    int i;
    int rc;
    int found = 0;

    rc = rc_maps_base(c, "libc.so", &base, path, sizeof(path), err, errlen);
    if (rc != RC_OK) return rc;

    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) {
        rc_err(err, errlen, "open %s failed errno=%d", path, errno);
        return RC_E_ELF;
    }
    if (pread_full(fd, &eh, sizeof(eh), 0) != 0 ||
        eh.e_phnum == 0 || eh.e_phnum > 64) {
        rc_err(err, errlen, "cannot read ELF header of %s", path);
        close(fd);
        return RC_E_ELF;
    }
    if (pread_full(fd, ph, (size_t)eh.e_phnum * sizeof(Elf32_Phdr),
                   (off_t)eh.e_phoff) != 0) {
        rc_err(err, errlen, "cannot read program headers of %s", path);
        close(fd);
        return RC_E_ELF;
    }

    for (i = 0; i < eh.e_phnum && !found; i++) {
        uint32_t *buf;
        size_t n, k;

        if (ph[i].p_type != PT_LOAD) continue;
        if ((ph[i].p_flags & PF_X) == 0) continue;
        n = ph[i].p_filesz;
        if (n < 4 || n > (4u << 20)) continue;
        buf = (uint32_t *)malloc(n);
        if (buf == NULL) continue;
        if (pread_full(fd, buf, n, (off_t)ph[i].p_offset) != 0) {
            free(buf);
            continue;
        }
        for (k = 0; k + 4 <= n; k += 4) {
            if (buf[k / 4] == 0xE8BD8000u) break;
        }
        if (k + 4 <= n) {
            uint32_t addr = base + ph[i].p_vaddr + (uint32_t)k;
            uint32_t w = 0;
            if (rc_read(c, addr, &w, 4, err, errlen) == RC_OK && w == 0xE8BD8000u) {
                c->gadget = addr;
                found = 1;
            }
        }
        free(buf);
    }
    close(fd);

    if (!found) {
        rc_err(err, errlen, "no pop{pc} gadget found in %s", path);
        return RC_E_SYM;
    }
    return RC_OK;
}
int rc_remote_mmap(rc_ctx *c, uint32_t len, int prot, uint32_t *addr,
                   char *err, size_t errlen)
{
    uint32_t fn = 0;
    uint32_t args[6];
    uint32_t ret = 0;
    struct user_regs regs;
    uint32_t sp;
    int rc;

    rc = rc_sym(c, "libc.so", "mmap", &fn, err, errlen);
    if (rc != RC_OK) return rc;

    if (ptrace(PTRACE_GETREGS, c->tid, NULL, &regs) != 0) {
        rc_err(err, errlen, "PTRACE_GETREGS failed errno=%d", errno);
        return RC_E_REGS;
    }
    /* 还没有自己的栈：在被打断线程的栈下面借 0x100 字节（仍在同一页里） */
    sp = (uint32_t)(((uint32_t)regs.ARM_sp - 0x100u) & ~7u);

    args[0] = 0;
    args[1] = len;
    args[2] = (uint32_t)prot;
    args[3] = MAP_PRIVATE_ANON;
    args[4] = 0xFFFFFFFFu;      /* fd = -1 */
    args[5] = 0;                /* offset */

    rc = rc_call_on_sp(c, fn, args, 6, sp, c->trap, &ret, err, errlen);
    if (rc != RC_OK) return rc;
    if (ret == 0 || ret == 0xFFFFFFFFu || ret < 0x1000u) {
        rc_err(err, errlen, "remote mmap returned 0x%08x", ret);
        return RC_E_MMAP;
    }
    *addr = ret;
    return RC_OK;
}

int rc_prepare(rc_ctx *c, char *err, size_t errlen)
{
    uint32_t page = 0;
    uint32_t udf = UDF_ARM;
    int rc;

    rc = rc_remote_mmap(c, SCRATCH_LEN, 3 /* RW */, &page, err, errlen);
    if (rc != RC_OK) return rc;

    c->scratch = page;
    c->stack_top = (page + SCRATCH_STACK) & ~7u;
    c->trap = page + SCRATCH_TRAP;

    rc = rc_write(c, c->trap, &udf, sizeof(udf), err, errlen);
    if (rc != RC_OK) return rc;

    /* 自检：写进去再读回来，确认 scratch 真的可读写 */
    {
        uint32_t probe = 0xA5C3E1F7u;
        uint32_t back = 0;

        rc = rc_write(c, c->scratch + SCRATCH_DATA, &probe, sizeof(probe), err, errlen);
        if (rc != RC_OK) return rc;
        rc = rc_read(c, c->scratch + SCRATCH_DATA, &back, sizeof(back), err, errlen);
        if (rc != RC_OK) return rc;
        if (back != probe) {
            rc_err(err, errlen, "scratch probe mismatch: wrote 0x%08x read 0x%08x", probe, back);
            return RC_E_READ;
        }
    }

    rc = find_gadget(c, err, errlen);
    if (rc != RC_OK) return rc;
    return RC_OK;
}
