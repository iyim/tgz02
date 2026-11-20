/* t5d_probe.c -- T5-06A 设备环境探针（一次性，不属于仓库生产代码）
 *
 * 1) TLS / JSON / HTTP 动态库可用性：dlopen + dlsym（NDK 不能直接链接系统私有库，
 *    但可以 dlopen；这里只报告"能不能加载/能不能取到符号"，不做任何网络调用）
 * 2) 到各模型服务域名 443 的 TCP 可达性：getaddrinfo + 非阻塞 connect + 超时
 *    （只做三次握手，不发 TLS、不发 HTTP、不带任何凭据）
 * 3) 输出 getaddrinfo 结果，便于判断 DNS 是否可用
 */
#include <dlfcn.h>
#include <errno.h>
#include <fcntl.h>
#include <netdb.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <unistd.h>

static void try_dlopen(const char *name, const char *const *syms, int nsym)
{
    void *h = dlopen(name, RTLD_NOW);
    int i;

    if (h == NULL) {
        printf("DL %-18s OPEN_FAIL  %s\n", name, dlerror());
        return;
    }
    printf("DL %-18s OPEN_OK\n", name);
    for (i = 0; i < nsym; i++) {
        void *p = dlsym(h, syms[i]);
        printf("   sym %-24s %s\n", syms[i], p ? "OK" : "MISSING");
    }
    dlclose(h);
}

static long long now_ms(void)
{
    struct timeval tv;
    gettimeofday(&tv, NULL);
    return (long long)tv.tv_sec * 1000 + tv.tv_usec / 1000;
}

static void probe_tcp(const char *host, int port, int timeout_ms)
{
    struct addrinfo hints, *res = NULL, *p;
    char portbuf[16];
    int rc, tried = 0;
    long long t0 = now_ms();

    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    snprintf(portbuf, sizeof(portbuf), "%d", port);

    rc = getaddrinfo(host, portbuf, &hints, &res);
    if (rc != 0) {
        printf("NET %-32s DNS_FAIL (%s)\n", host, gai_strerror(rc));
        return;
    }

    for (p = res; p != NULL; p = p->ai_next) {
        int fd, flags, err = 0;
        socklen_t elen = sizeof(err);
        fd_set ws;
        struct timeval tv;
        char addr[64] = "-";

        if (p->ai_family == AF_INET) {
            struct sockaddr_in *a = (struct sockaddr_in *)p->ai_addr;
            unsigned int v = ntohl(a->sin_addr.s_addr);
            snprintf(addr, sizeof(addr), "%u.%u.%u.%u",
                     (v >> 24) & 255, (v >> 16) & 255, (v >> 8) & 255, v & 255);
        } else if (p->ai_family == AF_INET6) {
            snprintf(addr, sizeof(addr), "ipv6");
        }

        tried++;
        fd = socket(p->ai_family, SOCK_STREAM, 0);
        if (fd < 0) {
            printf("NET %-32s addr=%-16s SOCKET_FAIL errno=%d\n", host, addr, errno);
            continue;
        }
        flags = fcntl(fd, F_GETFL, 0);
        fcntl(fd, F_SETFL, flags | O_NONBLOCK);

        rc = connect(fd, p->ai_addr, p->ai_addrlen);
        if (rc == 0) {
            printf("NET %-32s addr=%-16s CONNECT_OK (immediate) %lldms\n",
                   host, addr, now_ms() - t0);
            close(fd);
            break;
        }
        if (errno != EINPROGRESS) {
            printf("NET %-32s addr=%-16s CONNECT_FAIL errno=%d (%s)\n",
                   host, addr, errno, strerror(errno));
            close(fd);
            continue;
        }

        FD_ZERO(&ws);
        FD_SET(fd, &ws);
        tv.tv_sec = timeout_ms / 1000;
        tv.tv_usec = (timeout_ms % 1000) * 1000;
        rc = select(fd + 1, NULL, &ws, NULL, &tv);
        if (rc > 0) {
            if (getsockopt(fd, SOL_SOCKET, SO_ERROR, &err, &elen) == 0 && err == 0) {
                printf("NET %-32s addr=%-16s CONNECT_OK %lldms\n",
                       host, addr, now_ms() - t0);
                close(fd);
                break;
            }
            printf("NET %-32s addr=%-16s SO_ERROR=%d (%s)\n", host, addr, err, strerror(err));
        } else if (rc == 0) {
            printf("NET %-32s addr=%-16s TIMEOUT %dms\n", host, addr, timeout_ms);
        } else {
            printf("NET %-32s addr=%-16s SELECT_FAIL errno=%d\n", host, addr, errno);
        }
        close(fd);
    }

    if (tried == 0) printf("NET %-32s NO_ADDR\n", host);
    freeaddrinfo(res);
}

int main(void)
{
    static const char *const ssl_syms[] = { "SSL_CTX_new", "SSL_new", "SSL_connect",
                                           "TLS_client_method" };
    static const char *const crypto_syms[] = { "CRYPTO_malloc", "EVP_DigestInit_ex",
                                               "OPENSSL_init_ssl" };
    static const char *const json_syms[] = { "json_tokener_new", "json_object_get_string" };
    static const char *const curl_syms[] = { "curl_easy_init", "curl_easy_perform" };
    static const char *const log_syms[] = { "__android_log_print" };
    static const char *const hosts[] = {
        "www.baidu.com",
        "api.deepseek.com",
        "dashscope.aliyuncs.com",
        "ark.cn-beijing.volces.com",
        "api.openai.com"
    };
    int i;

    printf("== dlopen / dlsym ==\n");
    try_dlopen("libssl.so", ssl_syms, 4);
    try_dlopen("libcrypto.so", crypto_syms, 3);
    try_dlopen("libjson-c.so", json_syms, 2);
    try_dlopen("libcurl.so", curl_syms, 2);
    try_dlopen("liblog.so", log_syms, 1);

    printf("\n== TCP 443 reachability (no TLS, no HTTP, no credentials) ==\n");
    for (i = 0; i < (int)(sizeof(hosts) / sizeof(hosts[0])); i++) {
        probe_tcp(hosts[i], 443, 5000);
    }
    return 0;
}
