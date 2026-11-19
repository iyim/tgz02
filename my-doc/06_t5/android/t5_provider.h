/*
 * t5_provider.h -- ASR Provider 抽象与注册表
 *
 * 只实现 Mock。接真实云 ASR 时：新增一个 t5_provider 实现 + 在
 * t5_provider_by_name() 里加一行，完全不用碰文件发现/任务队列/结果存储。
 *
 * Mock 的文本必须自带 `[MOCK]` 前缀，禁止被当成真实识别结果。
 */
#ifndef T5_PROVIDER_H
#define T5_PROVIDER_H

#include "t5_types.h"

/* 按名字取 Provider；仅 "mock" 可用，未知返回 NULL */
const t5_provider *t5_provider_by_name(const char *name);
const t5_provider *t5_provider_mock(void);

/* 内部：Mock 用环境变量注入失败，便于自动化测试
 *   T5_MOCK_FAIL_MATCH=<文件名子串>   命中则失败
 *   T5_MOCK_FAIL_KIND=transient|permanent   （默认 transient）
 */
#define T5_MOCK_FAIL_MATCH_ENV "T5_MOCK_FAIL_MATCH"
#define T5_MOCK_FAIL_KIND_ENV  "T5_MOCK_FAIL_KIND"

#endif /* T5_PROVIDER_H */
