/*
 * libbinder_probe.c -- T9-09: how far can a plain C program get toward libbinder on 8.1?
 *
 * The previous probe only proved the kernel side (/dev/binder + BINDER_VERSION). This one goes
 * one step further and asks: can we load the platform's libbinder.so at runtime and obtain
 * android::defaultServiceManager() without any framework, headers or NDK support?
 *
 * It deliberately stops there. Publishing a service requires constructing an android::BBinder
 * subclass, i.e. a C++ object whose vtable layout comes from AOSP headers; that is the boundary
 * documented in the report, not something this probe pretends to do.
 *
 *   defaultServiceManager() returns sp<IServiceManager> by value; sp<> holds a single pointer,
 *   so on ARM32 (AAPCS) it comes back in r0 and can be captured as void*.
 */
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <dlfcn.h>
#include <unistd.h>
#include <errno.h>

int main(int argc, char **argv) {
    printf("libbinder_probe pid=%d uid=%d\n", (int)getpid(), (int)getuid());

    void *h = dlopen("libbinder.so", RTLD_NOW);
    if (!h) {
        printf("dlopen(libbinder.so): %s\n", dlerror());
        printf("RESULT libbinder-unavailable\n");
        return 1;
    }
    printf("dlopen(libbinder.so): OK handle=%p\n", h);

    void *sym = dlsym(h, "_ZN7android21defaultServiceManagerEv");
    if (!sym) {
        printf("dlsym(defaultServiceManager): %s\n", dlerror());
        printf("RESULT symbol-missing\n");
        return 1;
    }
    printf("dlsym(defaultServiceManager): OK at %p\n", sym);

    if (!(argc > 1 && strcmp(argv[1], "--call") == 0)) {
        printf("skipping the call (pass --call to attempt it)\n");
        printf("RESULT symbol-visible-not-called\n");
        return 0;
    }

    void *(*dsm)(void) = (void *(*)(void))sym;
    void *sm = dsm();
    printf("defaultServiceManager(): %p\n", sm);

    int fd = open("/dev/binder", 0);
    printf("post-call /dev/binder open: %s\n", fd >= 0 ? "OK (driver still usable)" : "failed");
    if (fd >= 0) close(fd);
    close(fd);

    printf("RESULT %s\n", sm ? "libbinder-reachable" : "null-service-manager");
    return sm ? 0 : 1;
}

