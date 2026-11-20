/* t5p1_peer.c -- T5-05B P1 设备端"半关闭对端"测试夹具（不属于仓库代码）
 *
 * 用途：在真机上构造"对端已经不再读、写进去就 EPIPE"的连接，用来让发送端
 *       的 send() 真正作用在一个已破裂的 socket 上（设备实测语义见
 *       sigpipe_probe mode 3：对端 shutdown(SHUT_RD) 后，本端 recv() 仍返回
 *       EAGAIN、send() 返回 EPIPE —— 即不会先看到 EOF，只有写才会暴露）。
 *
 * 行为：
 *   1. 监听抽象命名空间 socket（默认 tgz2_asr_bridge，与真实 Bridge 同名，
 *      所以真实 Bridge 必须先停掉，不能同时监听）
 *   2. accept 一个客户端后立刻 shutdown(cfd, SHUT_RD)
 *   3. 之后既不读也不写，只是 sleep —— 客户端永远不会看到 EOF
 *
 * 用法：
 *   t5p1_peer [socket_name] [idle_seconds]
 */
#include <errno.h>
#include <signal.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    const char *name = (argc > 1) ? argv[1] : "tgz2_asr_bridge";
    int idle = (argc > 2) ? atoi(argv[2]) : 300;
    struct sockaddr_un a;
    size_t nlen = strlen(name);
    int lfd, cfd;

    setvbuf(stdout, NULL, _IOLBF, 0);

    if (nlen + 1 > sizeof(a.sun_path)) {
        printf("name too long\n");
        return 2;
    }

    lfd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (lfd < 0) {
        printf("socket failed errno=%d (%s)\n", errno, strerror(errno));
        return 1;
    }

    memset(&a, 0, sizeof(a));
    a.sun_family = AF_UNIX;
    a.sun_path[0] = '\0';                 /* 抽象命名空间 */
    memcpy(a.sun_path + 1, name, nlen);

    if (bind(lfd, (struct sockaddr *)&a, (socklen_t)(offsetof(struct sockaddr_un, sun_path) + 1 + nlen)) != 0) {
        printf("bind failed errno=%d (%s)\n", errno, strerror(errno));
        return 1;
    }
    if (listen(lfd, 8) != 0) {
        printf("listen failed errno=%d (%s)\n", errno, strerror(errno));
        return 1;
    }
    printf("listening abstract:%s\n", name);

    cfd = accept(lfd, NULL, NULL);
    if (cfd < 0) {
        printf("accept failed errno=%d (%s)\n", errno, strerror(errno));
        return 1;
    }
    printf("accepted fd=%d\n", cfd);

    /* 关键一步：关掉读方向，但保持进程与 fd 存活。
     * 对端从此 recv() 得到 EAGAIN（看不到 EOF），send() 得到 EPIPE。 */
    if (shutdown(cfd, SHUT_RD) != 0) {
        printf("shutdown failed errno=%d (%s)\n", errno, strerror(errno));
        return 1;
    }
    /* 关掉监听 socket：这样发送端在 EPIPE 之后的重连会得到 ECONNREFUSED，
     * 不会再连上一个"永远不 accept、也永远不回 ACK"的 backlog 连接。 */
    close(lfd);

    printf("shutdown(SHUT_RD) done on fd=%d; listener closed; idling %ds\n", cfd, idle);

    sleep((unsigned)idle);
    printf("idle timeout, exiting\n");
    return 0;
}
