/*
 * t5_wav.h -- WAV 完整性与格式校验（只读，绝不修改 T4 的原始 WAV）
 *
 * 为什么必须这么判"写完了没有"：
 *   T4 打开文件时写 44 字节头，`data_len` 与 `riff_size` 都是**占位值**
 *   （rx_core.c: put_u32le(hdr+4, 36) 与 put_u32le(hdr+40, 0)），
 *   只有在 t4_wav_close() 里才 fseek 回填成真实长度。所以：
 *     data_len == 0                -> 一定还没关闭
 *     文件长度 < 44 + data_len     -> 写盘还没到声称的长度
 *     riff_size + 8 != 文件长度    -> 头尾不自洽
 *   三者任一成立都判 INCOMPLETE（延迟重试），不判永久失败。
 */
#ifndef T5_WAV_H
#define T5_WAV_H

#include "t5_types.h"

/* 一个片段至少要有的 data 字节数：16000 Hz * 2 B * 100 ms = 3200 B 太长，
 * 这里取 320 B（10 ms）只用于挡掉"只有头没有数据"的空文件。 */
#define T5_WAV_MIN_DATA_BYTES 320u

/*
 * 读取 path 的头部并判定状态。成功（T5_WAV_OK）时填满 info。
 * err/errlen 用于回传可读原因（可传 NULL/0）。
 */
t5_wav_check t5_wav_inspect(const char *path, t5_wav_info *info,
                            char *err, size_t errlen);

const char *t5_wav_check_name(t5_wav_check c);

#endif /* T5_WAV_H */
