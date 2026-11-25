/*
 * tg_echo_daemon.c -- T9-09 experiment: the smallest honest stand-in for a native (C) engine
 * that lives behind an Android service.
 *
 * It is a plain ARM32 ELF started by the service process with ProcessBuilder, and it speaks a
 * line protocol on stdin/stdout. That is intentionally the weakest possible transport: the
 * experiment is about *who owns the process*, not about the protocol. If this works, swapping
 * the protocol for a Unix domain socket or libbinder is an implementation detail.
 *
 *   PING   -> PONG pid=<pid> n=<count> ts=<ms>
 *   PID    -> <pid>
 *   EXIT   -> exits
 *   other  -> ECHO:<line>
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

int main(void) {
    int n = 0;
    setvbuf(stdout, NULL, _IONBF, 0);   /* the parent reads line by line: never buffer */
    printf("tg_echo_daemon pid=%d ready\n", (int)getpid());

    char line[512];
    while (fgets(line, sizeof(line), stdin) != NULL) {
        size_t len = strlen(line);
        while (len > 0 && (line[len - 1] == '\n' || line[len - 1] == '\r')) line[--len] = '\0';

        if (strcmp(line, "PING") == 0) {
            n++;
            printf("PONG pid=%d n=%d ts=%ld\n", (int)getpid(), n,
                   (long)(time(NULL) * 1000L));
        } else if (strcmp(line, "PID") == 0) {
            printf("%d\n", (int)getpid());
        } else if (strcmp(line, "EXIT") == 0) {
            printf("BYE\n");
            break;
        } else {
            printf("ECHO:%s\n", line);
        }
    }
    return 0;
}
