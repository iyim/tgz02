/*
 * t9_08c_stub_server.c -- T9-08C 设备侧**协议桩**（测试夹具，不是真实厂商服务）
 *
 * 为什么放在设备上跑：真机验收里要证明"worker 真的发出了三家各自的 HTTP 报文"，但又不想让
 * 测试依赖局域网/防火墙。这个桩只监听 127.0.0.1:PORT，用各家自己的报文形状回答：
 *
 *   POST /doubao/v3/chat/completions        方舟形状（要求 model 以 ep- 开头）
 *   POST /qwen/api/v1/services/aigc/...     千问原生形状（要求 input/parameters 信封）
 *   POST /qwen/compat/v1/chat/completions   千问 OpenAI 兼容模式
 *   POST /openai/v1/chat/completions        OpenAI 兼容形状
 *   POST /sleep<ms>/...                     先 sleep（真实超时测试）
 *
 * Authorization 必须正好是 "Bearer good-doubao" / "good-qwen" / "good-openai"，否则按各家风格
 * 返回 401。回答正文一律以 "stub-<协议>:" 开头 —— 任何人都能一眼看出这不是模型输出。
 *
 * 每个请求打一行到 stdout（方法/路径/模型/角色数/是否带信封），验收日志直接引用。
 */
#include <arpa/inet.h>
#include <errno.h>
#include <netinet/in.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

#define REQ_MAX 65536
#define RES_MAX 8192
#define HDR_MAX 8192

static int g_port = 8799;

static int has(const char *hay, const char *needle)
{
    return hay != NULL && needle != NULL && strstr(hay, needle) != NULL;
}

/* 从 body 里取 "model":"..." 的值（够用的定向扫描，不做完整解析） */
static void body_model(const char *body, char *out, size_t cap)
{
    const char *k = "\"model\":\"";
    const char *p;
    size_t i = 0;

    out[0] = '\0';
    p = (body != NULL) ? strstr(body, k) : NULL;
    if (p == NULL) return;
    p += strlen(k);
    while (*p != '\0' && *p != '"' && i + 1 < cap) out[i++] = *p++;
    out[i] = '\0';
}

static int body_has(const char *body, const char *needle)
{
    return has(body, needle);
}

static int count_role(const char *body)
{
    int n = 0;
    const char *p = body;
    while ((p = strstr(p, "\"role\":\"")) != NULL) { n++; p += 8; }
    return n;
}

static void reply(int fd, int code, const char *body)
{
    char head[256];
    int n = snprintf(head, sizeof(head),
                     "HTTP/1.1 %d %s\r\nContent-Type: application/json; charset=utf-8\r\n"
                     "Content-Length: %d\r\nConnection: close\r\n\r\n",
                     code, code == 200 ? "OK" : "Error", (int)strlen(body));
    (void)!write(fd, head, (size_t)n);
    (void)!write(fd, body, strlen(body));
}

static void handle(int fd, const char *method, const char *path, const char *hdr,
                   const char *body)
{
    char model[128];
    char resp[RES_MAX];
    char key[128] = "";
    const char *auth = strstr(hdr, "Authorization: Bearer ");
    int good;

    body_model(body, model, sizeof(model));
    if (auth != NULL) {
        const char *p = auth + strlen("Authorization: Bearer ");
        size_t i = 0;
        while (*p != '\0' && *p != '\r' && *p != '\n' && i + 1 < sizeof(key)) key[i++] = *p++;
        key[i] = '\0';
    }
    good = (strcmp(key, "good-doubao") == 0 || strcmp(key, "good-qwen") == 0 ||
            strcmp(key, "good-openai") == 0);
    printf("REQ %s %s model=%s roles=%d key=%s envelope_in=%d envelope_params=%d\n",
           method, path, model[0] != '\0' ? model : "-", count_role(body),
           good ? "good" : (key[0] != '\0' ? "bad" : "none"),
           body_has(body, "\"input\":"), body_has(body, "\"parameters\":"));
    fflush(stdout);

    if (strncmp(path, "/sleep", 6) == 0) {
        int ms = atoi(path + 6);
        if (ms > 0 && ms < 60000) usleep((useconds_t)ms * 1000);
    }

    if (strncmp(path, "/doubao/", 8) == 0) {
        if (!good) {
            reply(fd, 401, "{\"error\":{\"code\":\"AuthenticationError\","
                           "\"message\":\"the api key is invalid\"}}");
            return;
        }
        if (strncmp(model, "ep-", 3) != 0) {
            reply(fd, 400, "{\"error\":{\"code\":\"InvalidParameter\","
                           "\"message\":\"endpoint id not found\"}}");
            return;
        }
        snprintf(resp, sizeof(resp),
                 "{\"id\":\"stub-c1\",\"model\":\"%s\",\"choices\":[{\"index\":0,"
                 "\"message\":{\"role\":\"assistant\",\"content\":\"stub-doubao:ok\"},"
                 "\"finish_reason\":\"stop\"}],\"usage\":{\"total_tokens\":7}}", model);
        reply(fd, 200, resp);
        return;
    }
    if (strncmp(path, "/qwen/api/v1/", 13) == 0) {
        if (!body_has(body, "\"input\":") || !body_has(body, "\"parameters\":")) {
            reply(fd, 400, "{\"code\":\"InvalidParameter\",\"message\":\"native envelope required\"}");
            return;
        }
        if (!good) {
            reply(fd, 401, "{\"code\":\"InvalidApiKey\",\"message\":\"invalid api key\"}");
            return;
        }
        reply(fd, 200, "{\"output\":{\"choices\":[{\"finish_reason\":\"stop\",\"message\":"
                       "{\"role\":\"assistant\",\"content\":\"stub-qwen-native:ok\"}}]},"
                       "\"usage\":{\"total_tokens\":7},\"request_id\":\"stub-r1\"}");
        return;
    }
    if (strncmp(path, "/qwen/compat/", 13) == 0) {
        if (!body_has(body, "\"messages\":")) {
            reply(fd, 400, "{\"error\":{\"code\":\"invalid_request_error\","
                           "\"message\":\"messages required\"}}");
            return;
        }
        if (!good) {
            reply(fd, 401, "{\"error\":{\"code\":\"invalid_api_key\",\"message\":\"bad key\"}}");
            return;
        }
        reply(fd, 200, "{\"id\":\"stub-c2\",\"choices\":[{\"index\":0,\"message\":"
                       "{\"role\":\"assistant\",\"content\":\"stub-qwen-compat:ok\"},"
                       "\"finish_reason\":\"stop\"}]}");
        return;
    }
    if (strncmp(path, "/openai/", 8) == 0) {
        if (!body_has(body, "\"messages\":")) {
            reply(fd, 400, "{\"error\":{\"code\":\"invalid_request_error\","
                           "\"message\":\"messages required\"}}");
            return;
        }
        if (!good) {
            reply(fd, 401, "{\"error\":{\"code\":\"invalid_api_key\","
                           "\"message\":\"Incorrect API key provided\"}}");
            return;
        }
        reply(fd, 200, "{\"id\":\"stub-c3\",\"choices\":[{\"index\":0,\"message\":"
                       "{\"role\":\"assistant\",\"content\":\"stub-openai:ok\"},"
                       "\"finish_reason\":\"stop\"}]}");
        return;
    }
    reply(fd, 404, "{\"error\":{\"message\":\"no such stub endpoint\"}}");
}

int main(int argc, char **argv)
{
    int srv, one = 1;
    struct sockaddr_in addr;

    if (argc > 1) g_port = atoi(argv[1]);
    signal(SIGPIPE, SIG_IGN);
    srv = socket(AF_INET, SOCK_STREAM, 0);
    if (srv < 0) { perror("socket"); return 1; }
    setsockopt(srv, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one));
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    addr.sin_port = htons((unsigned short)g_port);
    if (bind(srv, (struct sockaddr *)&addr, sizeof(addr)) != 0) { perror("bind"); return 1; }
    if (listen(srv, 8) != 0) { perror("listen"); return 1; }
    printf("stub listening on 127.0.0.1:%d\n", g_port);
    fflush(stdout);

    for (;;) {
        int fd = accept(srv, NULL, NULL);
        char *buf;
        char method[16], path[256];
        char *hdr_end, *body;
        size_t used = 0;
        ssize_t got;
        int want;
        long clen = 0;
        struct timeval tv;

        if (fd < 0) {
            if (errno == EINTR) continue;
            break;
        }
        /* 一个连上却不发请求的连接不能把单线程桩卡死（真机上出现过：
         * 客户端连上后立刻断开/不发数据，桩就永远停在 read 上，后面的请求全部超时） */
        tv.tv_sec = 5;
        tv.tv_usec = 0;
        setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
        setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));
        buf = (char *)malloc(REQ_MAX);
        if (buf == NULL) { close(fd); continue; }
        /* 读请求头 */
        while (used + 1 < HDR_MAX) {
            got = read(fd, buf + used, HDR_MAX - used - 1);
            if (got <= 0) break;
            used += (size_t)got;
            buf[used] = '\0';
            if ((hdr_end = strstr(buf, "\r\n\r\n")) != NULL) break;
        }
        hdr_end = strstr(buf, "\r\n\r\n");
        if (hdr_end == NULL) { free(buf); close(fd); continue; }
        if (sscanf(buf, "%15s %255s", method, path) != 2) { free(buf); close(fd); continue; }
        {
            const char *cl = strstr(buf, "Content-Length:");
            if (cl == NULL) cl = strstr(buf, "content-length:");
            if (cl != NULL) clen = atol(cl + 15);
        }
        body = hdr_end + 4;
        want = (int)clen;
        if (want < 0) want = 0;
        if ((size_t)want > REQ_MAX - 1) want = REQ_MAX - 1;
        while ((int)(body - buf) + (int)(used - (size_t)(body - buf)) < want) {
            size_t have = used - (size_t)(body - buf);
            got = read(fd, body + have, (size_t)want - have);
            if (got <= 0) break;
            used += (size_t)got;
        }
        body[want] = '\0';
        handle(fd, method, path, buf, body);
        free(buf);
        close(fd);
    }
    return 0;
}
