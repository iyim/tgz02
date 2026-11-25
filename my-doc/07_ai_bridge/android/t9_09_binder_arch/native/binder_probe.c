/*
 * binder_probe.c -- T9-09: the smallest possible native-side check of the binder driver.
 *
 * It answers one question that decides whether "a C daemon that registers itself with
 * servicemanager" (option B) is even reachable on this device:
 *
 *   can a plain C process, with no framework and no libbinder, open /dev/binder and speak the
 *   driver's ioctl protocol at all?
 *
 * If open() fails, option B is dead before any ABI discussion. If BINDER_VERSION succeeds, the
 * driver is reachable and the remaining work is "build a binder object", not "get permission".
 *
 * Build: armv7a-linux-androideabi26-clang -static
 */
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <stdint.h>
#include <sys/stat.h>

/* minimal copies of the ABI bits we need (bionic's <linux/binder.h> is not exported) */
#define BINDER_WRITE_READ _IOWR('b', 1, struct binder_write_read)
#define BINDER_VERSION    _IOWR('b', 9, struct binder_version)

struct binder_write_read {
    signed long write_size;
    signed long write_consumed;
    unsigned long write_buffer;
    signed long read_size;
    signed long read_consumed;
    unsigned long read_buffer;
};

struct binder_version {
    int32_t protocol_version;
};

int main(void) {
    printf("binder_probe pid=%d uid=%d\n", (int)getpid(), (int)getuid());

    const char *paths[] = { "/dev/binder", "/dev/hwbinder", "/dev/vndbinder" };
    int ok = 0;

    for (unsigned i = 0; i < sizeof(paths) / sizeof(paths[0]); i++) {
        const char *p = paths[i];
        struct stat st;
        if (stat(p, &st) != 0) {
            printf("%-16s stat: %s\n", p, strerror(errno));
            continue;
        }
        printf("%-16s node rdev=%u:%u mode=%04o\n", p,
               (unsigned)(st.st_rdev >> 8), (unsigned)(st.st_rdev & 0xff), st.st_mode & 07777);

        int fd = open(p, O_RDWR | O_CLOEXEC);
        if (fd < 0) {
            printf("%-16s open: %s (errno=%d)\n", p, strerror(errno), errno);
            continue;
        }
        printf("%-16s open: OK fd=%d\n", p, fd);

        struct binder_version v;
        memset(&v, 0, sizeof(v));
        int rc = ioctl(fd, BINDER_VERSION, &v);
        if (rc < 0) {
            printf("%-16s BINDER_VERSION: %s (errno=%d)\n", p, strerror(errno), errno);
        } else {
            printf("%-16s BINDER_VERSION: OK protocol=%d\n", p, (int)v.protocol_version);
            ok = 1;
        }
        close(fd);
    }

    printf("RESULT %s\n", ok ? "binder-driver-reachable" : "binder-driver-unreachable");
    return ok ? 0 : 1;
}
