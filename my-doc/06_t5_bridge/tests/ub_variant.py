#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
ub_variant.py -- 生成 jint() 的两个变体源码，用于"有符号溢出探测"的对照实验

用法：
    python ub_variant.py <android/tgb_event.c> <模式> <输出文件>

模式：
    old        P1 修复前的实现（先乘加、再检查上限）
    nocheck    去掉每位检查的反面对照（只在循环结束后检查 -> 30 位输入必然溢出）

只做文本替换，不改任何其它内容。生成物只用于编译对照程序，不进入产品代码。
"""
import io
import sys

CURRENT = """    while (c->p < c->end && *c->p >= '0' && *c->p <= '9') {
        long long digit = (long long)(*c->p - '0');

        /*
         * 必须在乘加前检查，不能先计算再检查：
         * v * 10 + digit 一旦越过 LLONG_MAX 就是有符号整数溢出（UB），
         * 事后比较 v > TGB_LL_MAX_SAFE 已经太晚。
         * 允许的绝对值上限是 2^53，下面的写法保证乘加本身不会溢出。
         */
        if (v > (TGB_LL_MAX_SAFE - digit) / 10LL)
            return jfail(c, TGB_E_BAD_JSON);                /* 超出安全整数范围 */

        v = v * 10LL + digit;
        digits++;
        c->p++;
    }
"""

OLD = """    while (c->p < c->end && *c->p >= '0' && *c->p <= '9') {
        v = v * 10 + (long long)(*c->p - '0');
        if (v > TGB_LL_MAX_SAFE) return jfail(c, TGB_E_BAD_JSON);
        digits++;
        c->p++;
    }
"""

NOCHECK = """    while (c->p < c->end && *c->p >= '0' && *c->p <= '9') {
        v = v * 10LL + (long long)(*c->p - '0');
        digits++;
        c->p++;
    }
    if (v > TGB_LL_MAX_SAFE) return jfail(c, TGB_E_BAD_JSON);
"""


def main():
    if len(sys.argv) != 4:
        print(__doc__)
        return 2
    src, mode, dst = sys.argv[1], sys.argv[2], sys.argv[3]
    repl = {"old": OLD, "nocheck": NOCHECK}.get(mode)
    if repl is None:
        print("unknown mode:", mode)
        return 2

    with io.open(src, encoding="utf-8") as f:
        text = f.read()
    if CURRENT not in text:
        print("ANCHOR NOT FOUND (jint 已经不是修复后的写法？):", src)
        return 3
    with io.open(dst, "w", encoding="utf-8", newline="") as f:
        f.write(text.replace(CURRENT, repl))
    print("wrote %s (%s)" % (dst, mode))
    return 0


if __name__ == "__main__":
    sys.exit(main())
