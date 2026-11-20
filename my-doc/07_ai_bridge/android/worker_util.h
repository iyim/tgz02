/*
 * worker_util.h -- AI Worker 的平台薄封装（时间、目录、文件身份、可靠写入、UTF-8、哈希）
 *
 * 目的与 T5 的 t5_util 相同：同一份代码在 Android(NDK/armv7) 与 Windows(TDM-GCC 主机测试)
 * 都能编过。但本文件是 Worker 自己的实现，不链接、也不修改 06_t5 / 06_t5_bridge 的代码。
 *
 * 约定：
 *   - 所有函数不分配内存、不打印、不抛异常，失败用返回值表达。
 *   - *路径* 全部由调用方给，本层不拼路径。
 *   - wu_now_ms() 是单调时钟（只用于超时/退避）；wu_wall_ms() 是墙钟（写状态用）。
 */
#ifndef T6B_WORKER_UTIL_H
#define T6B_WORKER_UTIL_H

#include <stddef.h>

/* 单调毫秒（Android/Linux: CLOCK_MONOTONIC；Windows: GetTickCount64） */
long long wu_now_ms(void);

/* 墙钟毫秒（1970 起） */
long long wu_wall_ms(void);

/* 本地时间 "YYYY-MM-DDTHH:MM:SS"，返回 out；outlen < 20 时截断并保证 NUL */
void wu_time_str(char *out, size_t outlen);

/* 目录是否存在且确实是目录 */
int wu_is_dir(const char *path);

/* 递归创建目录（幂等）；0 = 成功或已存在 */
int wu_mkdir_p(const char *path);

/* 文件大小；失败返回 -1 */
long long wu_file_size(const char *path);

/*
 * 取文件身份：设备号 + inode + 大小。
 * Linux 用 stat 的 st_dev/st_ino；Windows 用 GetFileInformationByHandle 的
 * (卷序列号, 文件索引)，两者语义一致，都能识别"文件被删除后重建"。
 * 返回 0 = 成功；-1 = 失败（errno 由平台给出）。
 */
int wu_file_identity(const char *path, unsigned long long *dev,
                     unsigned long long *ino, long long *size);

/* 只读打开；失败返回 -1 */
int wu_open_ro(const char *path);

/* 写打开（O_CREAT|O_TRUNC，0600）；只给消费状态/状态文件用，失败返回 -1 */
int wu_open_wo(const char *path);

/* 独占创建（O_CREAT|O_EXCL，0600）：已存在返回 -1 且 errno == EEXIST */
int wu_open_excl(const char *path);

/* 本进程 pid */
long long wu_self_pid(void);

/* 顺序读：>0 = 读到的字节数，0 = EOF，-1 = 错误 */
int wu_read_some(int fd, void *buf, size_t len);

/* 定位到绝对偏移；0 = 成功 */
int wu_seek(int fd, long long off);

/* 写满 len 字节（循环 write）；0 = 成功 */
int wu_write_all(int fd, const void *buf, size_t len);

/* 落盘（Android/Linux: fsync；Windows: _commit） */
int wu_fsync(int fd);

/* 同步父目录（rename 之后必须调用，保证目录项落盘）。
 * Linux: open(dir, O_RDONLY|O_DIRECTORY) + fsync；Windows: 无此语义，返回 0。 */
int wu_fsync_dir(const char *dirpath);

int wu_close(int fd);
int wu_unlink(const char *path);

/* 取文件所在目录（不含末尾分隔符）；没有分隔符时返回 "." */
void wu_dir_name(const char *path, char *out, size_t cap);

/* 原子替换：Windows 用 MoveFileEx(REPLACE_EXISTING)，POSIX 用 rename */
int wu_rename_replace(const char *from, const char *to);

/* 睡眠；被信号打断时返回剩余毫秒（>=0），便于尽快响应 SIGINT */
long long wu_sleep_ms(long long ms);

/* 进程是否存活（Linux: kill(pid,0)；Windows: OpenProcess） */
int wu_pid_alive(long long pid);

/* FNV-1a 64 */
unsigned long long wu_hash64(const void *data, size_t len);

/* JSON 字符串转义（不含两侧引号），返回写入长度；cap 不足时截断并保证 NUL */
size_t wu_json_escape(char *dst, size_t cap, const char *src);

/* 读整个文件到 buf（最多 cap-1 字节，保证 NUL）；0 = 成功 */
int wu_read_file(const char *path, char *buf, size_t cap, size_t *outlen);

/* 严格 UTF-8 校验：拒收过长编码、代理区、>U+10FFFF、截断序列。0 = 合法 */
int wu_utf8_validate(const char *s, size_t len);

/* 码点数（调用前须已通过校验） */
int wu_utf8_count(const char *s, size_t len);

#endif /* T6B_WORKER_UTIL_H */
