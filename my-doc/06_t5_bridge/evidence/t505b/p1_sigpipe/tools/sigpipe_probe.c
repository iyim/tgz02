/* sigpipe_probe.c -- T5-05B P1 设备端语义验证（一次性测试夹具，不属于仓库代码）
 *
 * 每个 case 都用 fork 隔离，并且父进程会关掉自己那份"对端 fd"，
 * 否则对端永远不会真正关闭（第一次写这个夹具就踩了这个坑）。
 *
 *   mode 1  对端 close+exit():  recv() 然后 send(MSG_NOSIGNAL) -> 期望 EPIPE、进程存活
 *   mode 2  对端 close+exit():  recv() 然后 send(0)             -> 期望被 SIGPIPE 杀死
 *   mode 3  对端 shutdown(SHUT_RD) 仍存活: recv()/send(MSG_NOSIGNAL)
 *   mode 4  对端 shutdown(SHUT_WR) 仍存活: recv()/send(MSG_NOSIGNAL)
 *   mode 5  对端 close+exit():  直接 send(MSG_NOSIGNAL)，不先 recv -> 期望 EPIPE
 *   mode 6  对端 close+exit():  直接 send(0)，不先 recv          -> 期望 SIGPIPE
 */
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#ifndef MSG_NOSIGNAL
#define MSG_NOSIGNAL 0x4000
#endif

static void show_recv(int fd, const char *tag)
{
    char b[64];
    int rc, e;

    errno = 0;
    rc = (int)recv(fd, b, sizeof(b), MSG_DONTWAIT);
    e = errno;
    if (rc == 0)     printf("%s recv -> 0 (EOF, peer closed)\n", tag);
    else if (rc > 0) printf("%s recv -> %d bytes\n", tag, rc);
    else             printf("%s recv -> -1 errno=%d (%s)\n", tag, e, strerror(e));
    fflush(stdout);
}

/* 子进程里做一次 send；返回给父进程的只有 wait status */
static void show_send(int fd, const char *tag, int flags)
{
    char buf[64];
    int rc, e;

    memset(buf, 'x', sizeof(buf));
    errno = 0;
    rc = (int)send(fd, buf, sizeof(buf), flags);
    e = errno;
    if (rc < 0) printf("%s send(flags=0x%x) -> -1 errno=%d (%s)\n", tag, flags, e, strerror(e));
    else        printf("%s send(flags=0x%x) -> %d\n", tag, flags, rc);
    fflush(stdout);
    _exit(0);
}

int main(int argc, char **argv)
{
    int sv[2], mode, status, flags;
    pid_t peer, kid;

    if (argc < 2) {
        printf("usage: %s <1..6>\n", argv[0]);
        return 2;
    }
    mode = atoi(argv[1]);
    printf("=== mode %d ===\n", mode);

    if (socketpair(AF_UNIX, SOCK_STREAM, 0, sv) != 0) {
        printf("socketpair failed errno=%d\n", errno);
        return 1;
    }

    peer = fork();
    if (peer == 0) {
        /* 对端进程：只保留 sv[1] */
        close(sv[0]);
        if (mode == 3) shutdown(sv[1], SHUT_RD);
        else if (mode == 4) shutdown(sv[1], SHUT_WR);
        else { usleep(100000); close(sv[1]); }
        sleep(3);
        _exit(0);
    }

    /* 父进程只保留 sv[0]，否则对端不会被真正关闭 */
    close(sv[1]);
    usleep(400000);

    show_recv(sv[0], "[pre]");

    flags = (mode == 2 || mode == 6) ? 0 : MSG_NOSIGNAL;

    kid = fork();
    if (kid == 0) {
        if (mode == 1 || mode == 2) show_recv(sv[0], "[kid]");
        show_send(sv[0], "[kid]", flags);
    }
    waitpid(kid, &status, 0);

    if (WIFSIGNALED(status)) printf("[RESULT] send child killed by signal %d%s\n",
                                    WTERMSIG(status), WTERMSIG(status) == SIGPIPE ? " (SIGPIPE)" : "");
    else printf("[RESULT] send child exit=%d (survived, no SIGPIPE)\n", WEXITSTATUS(status));

    kill(peer, SIGKILL);
    waitpid(peer, NULL, 0);
    close(sv[0]);
    printf("=== mode %d done ===\n", mode);
    return 0;
}
