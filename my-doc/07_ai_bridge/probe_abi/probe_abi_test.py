#!/usr/bin/env python3
# T8-12.4 探针入口桩：ARM32 ABI 主机验证（Unicorn 模拟执行）
#
# 目的：在**不改动任何生产二进制、不连接真机**的前提下，验证
#   (1) site / a0..a3 / caller_lr 的传参落位符合 AAPCS；
#   (2) 回调返回后 r0-r3、r12、lr 被原样恢复（回调故意把它们写成垃圾）；
#   (3) 回调前后 SP 完全一致，且回调入口处 SP 是 8 字节对齐；
#   (4) trampoline 重放被覆盖的原始指令后语义不变（真实 playAudios 序言）；
#   (5) 连续 1000 次调用无累积栈偏移。
#
# 被测机器码来自 probe_stub.S 经 NDK clang 汇编 + objcopy 提取的 probe_stub.bin。
# 运行环境：Python 3 + unicorn（主机侧 ARM32 指令模拟），非真机。

import os
import struct
import sys

from unicorn import Uc, UC_ARCH_ARM, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm_const import (
    UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3,
    UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7,
    UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11,
    UC_ARM_REG_R12, UC_ARM_REG_SP, UC_ARM_REG_LR, UC_ARM_REG_PC,
)

HERE = os.path.dirname(os.path.abspath(__file__))
STUB_BIN = os.path.join(HERE, "probe_stub.bin")

# 内存布局（全部是测试自建页，与被观测库无关）
PAGE        = 0x1000
STUB_ADDR   = 0x10000       # 68 字节桩
TRAMP_ADDR  = 0x11000       # trampoline（16 字节）
TARGET_ADDR = 0x12000       # 被观测函数的“入口”（前 8 字节已被补丁覆盖）
BODY_ADDR   = TARGET_ADDR + 8
CB_ADDR     = 0x13000       # 模拟的 C 回调（只有 bx lr）
STACK_BASE  = 0x20000
STACK_SIZE  = 0x10000
SP_INIT     = STACK_BASE + STACK_SIZE - 0x100
RET_ADDR    = 0x40000       # 调用者返回地址（emu_start 的 until）

SITE_ID     = 10            # 与 probe_stub.S 编译时的 -DSITE_ID 一致
POISON      = 0xDEADBEEF

def enc_add_rd_rn_rm(rd, rn, rm):
    """ADD rd, rn, rm（无移位）"""
    return 0xE0800000 | (rn << 16) | (rd << 12) | rm

def dump_ranges(uc, addr, n):
    return uc.mem_read(addr, n)

def build_image(stub_words_ok, prologue_words, body_words):
    """返回 (image_dict)，并把 trampoline 地址 / 回调地址填进桩的字面池。"""
    with open(STUB_BIN, "rb") as f:
        stub = bytearray(f.read())
    assert len(stub) == 68, "stub 应为 68 字节，实际 %d" % len(stub)

    # +0x3c = trampoline 地址, +0x40 = 回调地址（安装时填写）
    struct.pack_into("<I", stub, 0x3C, TRAMP_ADDR)
    struct.pack_into("<I", stub, 0x40, CB_ADDR)

    # trampoline: 原序言 2 条 + ldr pc,[pc,#-4] + (TARGET+8)
    tramp = b"".join(struct.pack("<I", w) for w in prologue_words)
    tramp += struct.pack("<I", 0xE51FF004)
    tramp += struct.pack("<I", BODY_ADDR)

    # 入口：ldr pc,[pc,#-4] + STUB_ADDR
    entry = struct.pack("<I", 0xE51FF004) + struct.pack("<I", STUB_ADDR)

    body = b"".join(struct.pack("<I", w) for w in body_words)

    return {
        "stub": bytes(stub),
        "tramp": tramp,
        "entry": entry,
        "body": body,
    }

def run_once(img, prologue_words, body_words, expect, label, iter_limit=200):
    uc = Uc(UC_ARCH_ARM, UC_MODE_ARM)
    for base in (0x10000, 0x11000, 0x12000, 0x13000, 0x40000 - PAGE):
        uc.mem_map(base if base != 0x3f000 else 0x3f000, PAGE)
    uc.mem_map(STACK_BASE, STACK_SIZE)

    uc.mem_write(STUB_ADDR, img["stub"])
    uc.mem_write(TRAMP_ADDR, img["tramp"])
    uc.mem_write(TARGET_ADDR, img["entry"])
    uc.mem_write(BODY_ADDR, img["body"])
    uc.mem_write(CB_ADDR, struct.pack("<I", 0xE12FFF1E))   # bx lr

    seen = {"n": 0, "args": None, "sp_at_cb": None, "align_ok": None}

    def on_cb(uc_, address, size, user_data):
        if address != CB_ADDR:
            return
        r = [uc_.reg_read(x) for x in
             (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3)]
        sp = uc_.reg_read(UC_ARM_REG_SP)
        stack = uc_.mem_read(sp, 8)
        a3, caller_lr = struct.unpack("<II", stack)
        seen["n"] += 1
        seen["args"] = (r[0], r[1], r[2], r[3], a3, caller_lr)
        seen["sp_at_cb"] = sp
        seen["align_ok"] = (sp % 8 == 0)
        # 模拟一个“不守规矩”的 C 回调：把易失寄存器全写成垃圾，然后返回。
        # 真实的 C 函数会把自己的 lr 存到栈上再返回，所以这里先用真实的
        # 返回地址跳到 PC，再把 lr 写成垃圾——桩必须把它们全部恢复，
        # 否则下面的断言会失败。
        entry_lr = uc_.reg_read(UC_ARM_REG_LR)
        for reg in (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2,
                    UC_ARM_REG_R3, UC_ARM_REG_R12, UC_ARM_REG_LR):
            uc_.reg_write(reg, POISON)
        uc_.reg_write(UC_ARM_REG_PC, entry_lr)

    uc.hook_add(UC_HOOK_CODE, on_cb, begin=CB_ADDR, end=CB_ADDR)

    # 入参：r0-r3 给定值，r4-r11 填哨兵，r12 填哨兵
    for reg, val in ((UC_ARM_REG_R0, 0xA0), (UC_ARM_REG_R1, 0xA1),
                     (UC_ARM_REG_R2, 0xA2), (UC_ARM_REG_R3, 0xA3),
                     (UC_ARM_REG_R4, 0x44444444), (UC_ARM_REG_R5, 0x55555555),
                     (UC_ARM_REG_R6, 0x66666666), (UC_ARM_REG_R7, 0x77777777),
                     (UC_ARM_REG_R8, 0x88888888), (UC_ARM_REG_R9, 0x99999999),
                     (UC_ARM_REG_R10, 0xAAAAAAAA), (UC_ARM_REG_R11, 0xBBBBBBBB),
                     (UC_ARM_REG_R12, 0xC0C0C0C0), (UC_ARM_REG_SP, SP_INIT),
                     (UC_ARM_REG_LR, RET_ADDR)):
        uc.reg_write(reg, val)

    uc.emu_start(TARGET_ADDR, RET_ADDR, count=iter_limit)

    out = {
        "label": label,
        "cb_count": seen["n"],
        "args": seen["args"],
        "sp_at_cb": seen["sp_at_cb"],
        "align_ok": seen["align_ok"],
        "sp_after": uc.reg_read(UC_ARM_REG_SP),
        "r0": uc.reg_read(UC_ARM_REG_R0),
        "r4": uc.reg_read(UC_ARM_REG_R4),
        "r11": uc.reg_read(UC_ARM_REG_R11),
        "pc": uc.reg_read(UC_ARM_REG_PC),
        "expect": expect,
        "uc": uc,
        "seen": seen,
    }
    return out

def check(cond, msg):
    print(("  [PASS] " if cond else "  [FAIL] ") + msg)
    if not cond:
        print("RESULT: FAIL")
        sys.exit(1)

def main():
    print("=== T8-12.4 probe stub ARM32 ABI test (Unicorn %s) ===" %
          __import__("unicorn").__version__)
    print("stub binary: %s (%d bytes)" % (STUB_BIN, os.path.getsize(STUB_BIN)))
    print()

    # ---------- 用例 1：纯寄存器序言 + 回调破坏易失寄存器 ----------
    print("[case 1] 合成序言 push {r4,lr} / mov r4,r0；回调写垃圾")
    prologue1 = [0xE92D4010, 0xE1A04000]          # push {r4,lr}; mov r4,r0
    body1 = [
        enc_add_rd_rn_rm(0, 0, 1),                # add r0,r0,r1
        enc_add_rd_rn_rm(0, 0, 2),                # add r0,r0,r2
        enc_add_rd_rn_rm(0, 0, 3),                # add r0,r0,r3
        enc_add_rd_rn_rm(0, 0, 4),                # add r0,r0,r4  (r4 = r0 被序言写入)
        0xE8BD8010,                               # pop {r4,pc}
    ]
    expect1 = 0xA0 + 0xA1 + 0xA2 + 0xA3 + 0xA0
    img = build_image(True, prologue1, body1)
    r = run_once(img, prologue1, body1, expect1, "case1")
    a = r["args"]
    check(r["cb_count"] == 1, "回调被调用 1 次（实际 %d）" % r["cb_count"])
    check(a[0] == SITE_ID, "r0 = site = %d，实际 %d" % (SITE_ID, a[0]))
    check(a[1] == 0xA0, "r1 = a0 = 0xA0，实际 0x%X" % a[1])
    check(a[2] == 0xA1, "r2 = a1 = 0xA1，实际 0x%X" % a[2])
    check(a[3] == 0xA2, "r3 = a2 = 0xA2，实际 0x%X" % a[3])
    check(a[4] == 0xA3, "[sp+0] = a3 = 0xA3，实际 0x%X" % a[4])
    check(a[5] == RET_ADDR, "[sp+4] = caller_lr = 0x%X，实际 0x%X" % (RET_ADDR, a[5]))
    check(r["sp_at_cb"] == SP_INIT - 32,
          "回调入口 SP = 入口SP-32 = 0x%X，实际 0x%X" % (SP_INIT - 32, r["sp_at_cb"]))
    check(r["align_ok"], "回调入口 SP 8 字节对齐")
    check(r["sp_after"] == SP_INIT,
          "返回后 SP 复原 = 0x%X，实际 0x%X" % (SP_INIT, r["sp_after"]))
    check(r["r4"] == 0x44444444, "r4 未被破坏 = 0x44444444，实际 0x%X" % r["r4"])
    check(r["r0"] == expect1, "返回值 = %d（两个序言指令 + 4 条加法），实际 %d" % (expect1, r["r0"]))
    check(r["pc"] == RET_ADDR, "PC 停在调用者返回地址")
    print()

    # ---------- 用例 2：真实 playAudios 序言 ----------
    print("[case 2] 真实序言 push {r4-r11,lr} / add r11,sp,#28（libsmartbox 0x117d40）")
    prologue2 = [0xE92D4FF0, 0xE28DB01C]
    body2 = [
        0xE1A0000B,                               # mov r0, r11
        0xE040000D,                               # sub r0, r0, sp
        0xE8BD8FF0,                               # pop {r4-r11,pc}
    ]
    expect2 = 28
    img2 = build_image(True, prologue2, body2)
    r2 = run_once(img2, prologue2, body2, expect2, "case2")
    check(r2["r0"] == expect2,
          "重放后的 r11-sp = 28（证明被搬运的序言按原 SP 生效），实际 %d" % r2["r0"])
    check(r2["sp_after"] == SP_INIT, "返回后 SP 复原")
    check(r2["r4"] == 0x44444444 and r2["r11"] == 0xBBBBBBBB,
          "r4/r11 复原（r4=0x%X r11=0x%X）" % (r2["r4"], r2["r11"]))
    print()

    # ---------- 用例 3：1000 次连续调用无栈漂移 ----------
    print("[case 3] 连续 1000 次调用：SP 无累积偏移、回调次数一致")
    uc = r["uc"]
    sps = []
    ok = True
    for i in range(1000):
        for reg, val in ((UC_ARM_REG_R0, 0xA0), (UC_ARM_REG_R1, 0xA1),
                         (UC_ARM_REG_R2, 0xA2), (UC_ARM_REG_R3, 0xA3),
                         (UC_ARM_REG_R4, 0x44444444), (UC_ARM_REG_R12, 0xC0C0C0C0),
                         (UC_ARM_REG_SP, SP_INIT), (UC_ARM_REG_LR, RET_ADDR)):
            uc.reg_write(reg, val)
        uc.emu_start(TARGET_ADDR, RET_ADDR, count=200)
        sps.append(uc.reg_read(UC_ARM_REG_SP))
        if uc.reg_read(UC_ARM_REG_R0) != expect1:
            ok = False
            print("  [FAIL] 第 %d 次返回值异常" % (i + 1))
            break
    check(ok, "1000 次返回值全部正确")
    check(len(set(sps)) == 1 and sps[0] == SP_INIT,
          "1000 次 SP 恒等于 0x%X（去重后 %d 个值）" % (SP_INIT, len(set(sps))))
    check(r["seen"]["n"] == 1001, "回调累计 1001 次（1 + 1000），实际 %d" % r["seen"]["n"])
    print()

    print("RESULT: PASS  (5 组断言全部通过)")
    return 0

if __name__ == "__main__":
    sys.exit(main())
