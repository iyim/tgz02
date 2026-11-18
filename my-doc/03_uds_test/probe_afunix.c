/* _probe_afunix.c -- feasibility probe: does this Windows kernel/host support AF_UNIX?
 * Build: gcc -O2 -o _probe_afunix.exe _probe_afunix.c -lws2_32
 * Result codes:
 *   0 = AF_UNIX stream bind/connect/send round-trip works
 *   1 = winsock init failed
 *   2 = socket() failed
 *   3 = bind() failed            (host kernel or path problem)
 *   4 = listen()/connect() failed
 *   5 = data mismatch
 */
#define _WIN32_WINNT 0x0A00
#include <stdio.h>
#include <string.h>
#include <winsock2.h>
#include <windows.h>

#ifndef AF_UNIX
#define AF_UNIX 1
#endif

typedef struct {
    ADDRESS_FAMILY sun_family;
    char           sun_path[108];
} my_sockaddr_un;

static int fill(my_sockaddr_un *a, const char *path)
{
    memset(a, 0, sizeof(*a));
    a->sun_family = (ADDRESS_FAMILY)AF_UNIX;
    if (strlen(path) >= sizeof(a->sun_path)) return -1;
    strcpy(a->sun_path, path);
    return 0;
}

int main(void)
{
    WSADATA wsa;
    const char *path = "D:\\tgz02\\OS\\system\\my-doc\\03_uds_test\\_probe.sock";
    if (WSAStartup(MAKEWORD(2, 2), &wsa) != 0) { printf("wsa fail\n"); return 1; }

    SOCKET srv = socket(AF_UNIX, SOCK_STREAM, 0);
    if (srv == INVALID_SOCKET) { printf("socket fail %d\n", WSAGetLastError()); return 2; }

    my_sockaddr_un a;
    fill(&a, path);
    if (bind(srv, (struct sockaddr *)&a, sizeof(a)) != 0) {
        printf("bind fail %d\n", WSAGetLastError());
        return 3;
    }
    printf("bind ok\n");
    if (listen(srv, 4) != 0) { printf("listen fail %d\n", WSAGetLastError()); return 4; }
    printf("listen ok\n");

    SOCKET cli = socket(AF_UNIX, SOCK_STREAM, 0);
    if (cli == INVALID_SOCKET) { printf("cli socket fail %d\n", WSAGetLastError()); return 2; }
    my_sockaddr_un b;
    fill(&b, path);
    if (connect(cli, (struct sockaddr *)&b, sizeof(b)) != 0) {
        printf("connect fail %d\n", WSAGetLastError());
        return 4;
    }
    printf("connect ok\n");
    SOCKET acc = accept(srv, NULL, NULL);
    if (acc == INVALID_SOCKET) { printf("accept fail %d\n", WSAGetLastError()); return 4; }

    const char *msg = "hello-af-unix";
    send(cli, msg, (int)strlen(msg), 0);
    char buf[64] = {0};
    int n = recv(acc, buf, sizeof(buf) - 1, 0);
    printf("recv n=%d data=%s\n", n, buf);
    if (n != (int)strlen(msg) || memcmp(buf, msg, (size_t)n) != 0) return 5;

    closesocket(acc); closesocket(cli); closesocket(srv);
    DeleteFileA(path);
    printf("AF_UNIX ROUND-TRIP OK\n");
    return 0;
}
