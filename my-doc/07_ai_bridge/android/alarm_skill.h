/*
 * alarm_skill.h -- T9-16: TG-Z02 自有闹钟技能（worker 侧）接口。
 *
 * 架构（对照 T8-14.2 device_status 的"无路由位技能"模式）：
 *   intent_route 识别 IR_ALARM（不占 route 位，hook 不会 PASS 原厂）
 *   -> skill_claim（要求 alarm 技能已注册 + alarm_skill_enabled 开）
 *   -> t9_skill_alarm_exec：解析文本 -> 写 alarm_request.public.json -> 确认话术
 *   -> App 侧 AlarmRequestMonitor 监听请求 -> 落自有 DB -> AlarmScheduler 注册
 *   -> 到点 AlarmReceiver -> AlarmRingingService/Activity（App 自有响铃）。
 *
 * worker 不直接碰 Android AlarmManager；数据面全部在 App。
 */
#ifndef T9_ALARM_SKILL_H
#define T9_ALARM_SKILL_H

#include "skill_dispatch.h"

/* 动作码（写入请求 JSON 的 action 字段） */
#define T9_ALARM_SET     0
#define T9_ALARM_CANCEL  1
#define T9_ALARM_QUERY   2
#define T9_ALARM_OFF_ALL 3

typedef struct {
    char work_dir[T8_SK_PATH_MAX];   /* 请求 JSON 的输出目录 = worker 的 work_dir */
    char say_path[T8_SK_PATH_MAX];   /* 保留 */
} t9_alarm_ctx;

void t9_alarm_defaults(t9_alarm_ctx *c);

/* 技能实现：ctx 必须指向已填充 work_dir 的 t9_alarm_ctx */
int t9_skill_alarm_exec(const t8_skill_req *req, t8_skill_result *res, void *ctx);

#endif /* T9_ALARM_SKILL_H */
