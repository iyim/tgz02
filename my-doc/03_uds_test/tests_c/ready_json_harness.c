/*
 * ready_json_harness.c -- 生成 READY 行，供 tests/ready_json_test.py 用 json.loads() 实际解析
 *
 * 关键点：**不做任何复制粘贴**。这里 #define main 改名后 #include 真正发布的
 * dgram_server.c，所以被测的就是设备上跑的那份 print_ready() / json_write_string()。
 *
 * build (Windows/MinGW) : gcc -O2 -Wall -Wextra -o ready_json_harness ready_json_harness.c -lws2_32
 * build (Linux/NDK)     : cc  -O2 -Wall -Wextra -o ready_json_harness ready_json_harness.c
 *
 * run   : ./ready_json_harness --null            -> 一行 READY，capture 为 JSON null
 *         ./ready_json_harness --stdin           -> 每行输入一个 capture 路径，各输出一行 READY
 *         ./ready_json_harness --capture-stdin [FRAMES]
 *                                                -> 每行输入一个 capture 路径，各输出一行 CAPTURE
 *                                                   （FRAMES 默认 252，bytes = FRAMES * 1320）
 *
 * 用 stdin 传路径而不是命令行参数，是为了让含双引号 / 反斜杠的路径不被 shell 的引号规则吞掉。
 */
#ifdef _WIN32
/* dgram_server.c 直接用 POSIX 的 struct sockaddr_un；Windows 上没有这个类型。
 * 这里补一个同布局定义**仅供编译**：本 harness 从不调用 dgram_server_main()，
 * 需要的只是让那个函数体通过编译。 */
struct sockaddr_un { unsigned short sun_family; char sun_path[108]; };
#endif

#define main dgram_server_main
#include "../android_uds_test/dgram_server.c"
#undef main

int main(int argc, char **argv)
{
    char line[4096];

    if (argc < 2) {
        fprintf(stderr, "usage: %s --null | --stdin\n", argv[0]);
        return 2;
    }

    if (!strcmp(argv[1], "--null")) {
        print_ready(stdout, "abstract", "tgz2_pcm", 8192, 16384, 500, NULL);
        fflush(stdout);
        return 0;
    }

    if (!strcmp(argv[1], "--stdin")) {
        while (fgets(line, sizeof(line), stdin)) {
            size_t len = strlen(line);
            while (len && (line[len - 1] == '\n' || line[len - 1] == '\r')) line[--len] = '\0';
            print_ready(stdout, "abstract", "tgz2_pcm", 8192, 16384, 500, line);
            fflush(stdout);
        }
        return 0;
    }

    /* CAPTURE 行：与 main() 收尾时调用的完全是同一个 print_capture() */
    if (!strcmp(argv[1], "--capture-stdin")) {
        uint64_t frames = (argc > 2) ? (uint64_t)strtoull(argv[2], NULL, 10) : 252ull;
        while (fgets(line, sizeof(line), stdin)) {
            size_t len = strlen(line);
            while (len && (line[len - 1] == '\n' || line[len - 1] == '\r')) line[--len] = '\0';
            print_capture(stdout, line, frames);
            fflush(stdout);
        }
        return 0;
    }

    fprintf(stderr, "unknown mode: %s\n", argv[1]);
    return 2;
}
