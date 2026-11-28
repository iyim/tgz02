/*
 * skill_manifest.h -- T9-29 (P0): skills.json 清单加载（只收窄，不扩权）
 *
 * 清单能改的：title / desc / reply_ok / examples / negatives、以及把某技能**关掉**。
 * 清单不能改的：owner、exec、参数类型/必需性（这些是编译期常量，见 skill_registry.h）。
 *
 * 校验（对应 T9-28 SECURITY §2.2，P0 实现 V1/V2/V5 + 未知 id）：
 *   V1 exec 若出现，必须在编译期白名单里，且与编译期一致
 *   V2 owner 若出现，必须与编译期 owner 相同（不许 JSON 改归属）
 *   V5 factory 技能不许出现 enabled:1（原厂能力不能被清单开关）
 *   V7 未知 id / 未知字段：未知 id 拒载该条；未知字段忽略（前向兼容）
 *
 * 清单坏了不影响语音：任一条被拒只影响该条，其余照用；整体解析失败则退回编译期表。
 * `params` 字段在 P0 **解析但不应用**（只计数），参数收紧随 P3 的 L2 一起落地。
 */
#ifndef T9_29_SKILL_MANIFEST_H
#define T9_29_SKILL_MANIFEST_H

#include <stddef.h>

#include "skill_registry.h"

#define SK_MANIFEST_MAX_BYTES 4096

/*
 * 加载清单。返回：
 *   1 = 已加载并应用（可能有部分条目被拒，看 r->reject_*）
 *   0 = 文件不存在（不是错误：用编译期默认）
 *  -1 = 读/解析失败（沿用编译期默认；err 里写原因）
 */
int sk_manifest_load(sk_registry *r, const char *path, char *err, size_t errlen);

/* 已加载条目里的 params 字段被忽略的次数（P0 观测用） */
unsigned long sk_manifest_params_ignored(const sk_registry *r);

#endif /* T9_29_SKILL_MANIFEST_H */
