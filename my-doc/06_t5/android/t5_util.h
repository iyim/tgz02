/*
 * t5_util.h -- T5 的通用小工具（时间、路径、目录、哈希、JSON 转义、可靠写入）
 *
 * 目标：同一份代码在 Android(NDK/armv7) 与 Windows(GCC 主机测试) 都能编过，
 * 所以这里只包一层薄薄的平台差异（file size / fsync / 单调时钟）。
 */
#ifndef T5_UTIL_H
#define T5_UTIL_H

#include <stddef.h>
#include <stdint.h>
#include <sys/types.h>

#include "t5_types.h"

/* 单调时钟毫秒（只用于超时/重试调度，不做时间戳） */
long long t5_now_ms(void);

/* 本地时间 "YYYY-MM-DDTHH:MM:SS"（29 字节以内），返回 out */
void t5_time_str(char *out, size_t outlen);

/* 目录是否存在且是目录 */
int t5_is_dir(const char *path);
/* 递归创建目录（幂等），0 = 成功/已存在 */
int t5_mkdir_p(const char *path);

/* 取文件名部分（返回 path 内部指针，不分配） */
const char *t5_base_name(const char *path);

/* name 是否以 suffix 结尾（区分大小写） */
int t5_ends_with_ci(const char *name, const char *suffix);

/* 文件大小；失败返回 -1 */
long long t5_file_size(const char *path);

/* 文件最后修改时间（毫秒，墙钟）；失败返回 -1 */
long long t5_file_mtime_ms(const char *path);

/* 从 offset 读最多 len 字节，返回读到的字节数，失败 -1 */
long t5_read_at(const char *path, long long offset, void *buf, size_t len);

/* 写满 len 字节（循环 write），0 = 成功 */
int t5_write_all(int fd, const void *buf, size_t len);

/* 落盘（Android=fsync，Windows=_commit） */
int t5_sync(int fd);

/* FNV-1a 64（job_id 用，不依赖文件名里的片段序号） */
uint64_t t5_fnv1a64(const void *data, size_t len);
/* 由 "name:size" 生成 16 位十六进制 job_id */
void t5_make_job_id(const char *name, long long size, char out[17]);

/* 把 src 转义后写入 dst（不含引号），返回写入长度；outlen 不足时截断并保证 NUL */
size_t t5_json_escape(char *dst, size_t outlen, const char *src);

/* 解析 T4 文件名 seg_<run_id:8hex>_<seg4>_<seq>.wav（失败时字段留空/0） */
void t5_parse_t4_name(const char *name, char run_id[16], long *seg_id, long long *start_seq);

#endif /* T5_UTIL_H */
