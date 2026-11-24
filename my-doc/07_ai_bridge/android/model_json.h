/*
 * model_json.h -- T9-08C: 厂商适配器共用的极简 JSON 游标
 *
 * 为什么手写：三个适配器各自只需要"在响应里按路径取一个字符串"和"把配置里的扩展参数原样并入
 * 请求体"，用不上 DOM，也不想为了这点事把整个解析器塞进 worker。这个游标只做四件事：
 * 进对象找 key、进数组取第一个元素、取字符串、跳过值。
 *
 * 约束：无动态分配；所有容量显式传递；遇到放不下就明确返回错误（绝不静默截断）。
 */
#ifndef MODEL_JSON_H
#define MODEL_JSON_H

#include <stddef.h>

typedef struct {
    const char *s;
    size_t      n;   /* 总长度 */
    size_t      i;   /* 当前位置 */
    int         bad; /* 1 = 已经遇到语法错误（后续操作一律返回失败） */
} mj;

void mj_open(mj *j, const char *s, size_t n);
int  mj_bad(const mj *j);

/* 进顶层对象：要求 j 当前指向 '{'，进入后可直接 mj_obj_find */
int  mj_obj_open(mj *j);

/* 在当前对象里查找 key。1 = 找到（j 停在值的首字节）；0 = 没找到（j 停在 '}' 之后） */
int  mj_obj_find(mj *j, const char *key);

/* 当前值若是数组，进入其第一个元素：1 = 有元素（j 停在元素首字节）；0 = 空数组或无元素 */
int  mj_arr_first(mj *j);

/* 顺序遍历数组：mj_arr_open 吃掉 '[', 之后每调用一次 mj_arr_next 前进一步
 * （1 = 停在下一个元素；0 = 数组已结束并吃掉 ']'）。元素本身由调用方解析完。 */
int  mj_arr_open(mj *j);
int  mj_arr_next(mj *j);

/* 看一眼下一个非空白字符（不消费）：返回字符码，-1 = 到头/出错 */
int  mj_peek_c(mj *j);

/* 顺序遍历对象：1 = 返回 key 且光标停在值首字节；0 = 对象结束。
 * 调用方必须消费掉每个值（mj_str_value / mj_num_value / mj_skip）。 */
int  mj_obj_next(mj *j, char *key, size_t keycap);

/* 当前值若是字符串，取出来（out 可为 NULL 只量长度）：0 = ok；-1 = 不是字符串/语法错；-2 = 放不下 */
int  mj_str_value(mj *j, char *out, size_t cap, size_t *used);

/* 跳过当前值 */
int  mj_skip(mj *j);

/* 跳过当前值，并把它的原始字节范围返回（配置里的扩展参数要原样并入请求体） */
int  mj_skip_raw(mj *j, const char **raw, size_t *rawlen);

/* 当前值若为数字，取出来（可在之后 mj_skip） */
int  mj_num_value(mj *j, double *d);

/* 便捷：从 JSON 文本按固定路径取字符串（每层一个 key，最多 3 层，另加"取数组首个元素"开关）。
 * 例：mj_path_string(resp, len, "choices", "message", "content", out, cap)
 *     会自动在 "choices" 之后进入数组的第一个元素。 */
int  mj_path_string(const char *json, size_t len, const char *k1, const char *k2,
                    const char *k3, char *out, size_t cap, size_t *used);

#endif /* MODEL_JSON_H */
