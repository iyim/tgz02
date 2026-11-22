#!/usr/bin/env python3
# T8-12.5 探针入口桩：ARM32 ABI 主机验证（Unicorn 模拟执行）
#
# 与 T8-12.4 版本的差别（本次纠错重点）：
#   1) 报告曾声称 "22 条断言"，实际脚本只有 19 次 check()。本版本把断言数量
#      改为运行时统计并打印，报告引用本脚本的输出，不再手写数字。
#   2) 补齐 r4-r11 的全部 8 个寄存器验证（旧版只验了 r4）。
#   3) 新增"六个真实安装点序言"的等价性测试：对每个入口，比较
#        A 路（被打过补丁的入口：patch -> stub -> 回调 -> trampoline 重放 2 条原指令）
#        B 路（未打补丁的入口：直接执行同样 2 条原指令）
#      在"函数体入口处"的 r0-r12 / sp / lr 是否完全一致。
#      这直接回答"trampoline 重放条件是否对六个入口都成立"。
#   4) 断言失败即退出码 1；输出写入 evidence/t8-12-p5/probe_abi_test_output.txt。
#
# 环境：Python 3 + unicorn（主机侧 ARM32 指令模拟）。非真机、不注入、不改任何库。

import argparse
import hashlib
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

# 基准库不再写死绝对路径：--lib 优先，其次环境变量 TG_LIBSMARTBOX，最后才是本机默认位置。
DEFAULT_LIB_CANDIDATES = [
    os.environ.get("TG_LIBSMARTBOX", ""),
    os.path.join(HERE, "libsmartbox.so"),        # 可选：把库放在本目录下
    r"D:\tgz02\OS\_analysis\t6\libsmartbox.so",
    os.path.join(HERE, "..", "..", "OS", "_analysis", "t6", "libsmartbox.so"),
]
LIBSMARTBOX_SHA256 = "F6E3C3543FF6DA5B59BF60B884B6CE4332897C75AA6B89B8DCCC0C266DF80940"

PAGE        = 0x1000
STUB_ADDR   = 0x10000
TRAMP_ADDR  = 0x11000
TARGET_ADDR = 0x12000       # 被观测函数入口（A 路：已打补丁）
CB_ADDR     = 0x13000
REF_ADDR    = 0x50000       # B 路：未打补丁的同一函数（原序言 + 同一函数体）
STACK_BASE  = 0x20000
STACK_SIZE  = 0x10000
SP_INIT     = STACK_BASE + STACK_SIZE - 0x100
RET_ADDR    = 0x40000

SITE_ID     = 10
POISON      = 0xDEADBEEF

CALLER_REGS = (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3,
               UC_ARM_REG_R12, UC_ARM_REG_LR)
CALLEE_REGS = (UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7,
               UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11)
SENTINEL = {
    UC_ARM_REG_R0: 0xA0, UC_ARM_REG_R1: 0xA1, UC_ARM_REG_R2: 0xA2, UC_ARM_REG_R3: 0xA3,
    UC_ARM_REG_R4: 0x44444444, UC_ARM_REG_R5: 0x55555555, UC_ARM_REG_R6: 0x66666666,
    UC_ARM_REG_R7: 0x77777777, UC_ARM_REG_R8: 0x88888888, UC_ARM_REG_R9: 0x99999999,
    UC_ARM_REG_R10: 0xAAAAAAAA, UC_ARM_REG_R11: 0xBBBBBBBB, UC_ARM_REG_R12: 0xC0C0C0C0,
}

# 六个候选安装点的真实入口序言（取自 evidence/t8-12-p4/install_points_bytes.txt）
INSTALL_POINTS = [
    # (label, site, vaddr, w0, w1)
    ("SessionProxy::onHandler",            10, 0x11c238, 0xE92D4BF0, 0xE28DB018),
    ("SessionDispatch::onNlpResultInner",  20, 0x11896c, 0xE92D48F0, 0xE28DB010),
    ("SessionDispatch::onPushNlpResult",   21, 0x1189ec, 0xE92D4FF0, 0xE28DB01C),
    ("SessionDispatch::onRouterDetailInfo",30, 0x118830, 0xE92D4FF0, 0xE28DB01C),
    ("SessionDispatch::playAudios",        40, 0x117d40, 0xE92D4FF0, 0xE28DB01C),
    ("SessionManager::exitTalk",           50, 0x1110e4, 0xE92D4DF0, 0xE28DB018),
]

_checks = 0
_fails = 0
LIB_PATH = None


def check(cond, msg):
    global _checks, _fails
    _checks += 1
    if cond:
        print("  [PASS] " + msg)
    else:
        _fails += 1
        print("  [FAIL] " + msg)


def elf_load_segments(blob):
    """解析 ELF32 LE 的 PT_LOAD 段，返回 [(p_vaddr, p_offset, p_filesz), ...]。"""
    if blob[:4] != b"\x7fELF" or blob[4] != 1 or blob[5] != 1:
        raise ValueError("不是 ELF32 little-endian 文件")
    e_phoff = struct.unpack_from("<I", blob, 0x1C)[0]
    e_phentsize = struct.unpack_from("<H", blob, 0x2A)[0]
    e_phnum = struct.unpack_from("<H", blob, 0x2C)[0]
    segs = []
    for i in range(e_phnum):
        off = e_phoff + i * e_phentsize
        p_type = struct.unpack_from("<I", blob, off)[0]
        if p_type != 1:                     # PT_LOAD
            continue
        p_offset = struct.unpack_from("<I", blob, off + 0x04)[0]
        p_vaddr = struct.unpack_from("<I", blob, off + 0x08)[0]
        p_filesz = struct.unpack_from("<I", blob, off + 0x10)[0]
        segs.append((p_vaddr, p_offset, p_filesz))
    return segs


def vaddr_to_off(segs, vaddr):
    """按 PT_LOAD 的 p_vaddr/p_offset 换算文件偏移（禁止默认 vaddr == offset）。"""
    for v, o, sz in segs:
        if v <= vaddr < v + sz:
            return o + (vaddr - v)
    raise ValueError("vaddr 0x%X 不在任何 PT_LOAD 段内" % vaddr)


def w(x):
    return struct.pack("<I", x)


def enc_add_rd_rn_rm(rd, rn, rm):
    return 0xE0800000 | (rn << 16) | (rd << 12) | rm


def build_stub(site, tramp_addr, cb_addr):
    with open(STUB_BIN, "rb") as f:
        stub = bytearray(f.read())
    assert len(stub) == 68, "stub 应为 68 字节，实际 %d" % len(stub)
    # +0x08 是 "mov r0,#SITE"。模板按 SITE_ID=10 编译；不同 site 只差这一个字。
    # 依据 evidence/t8-12-p5/site_immediate_patch_proof.txt：
    # 分别以 -DSITE_ID=10 / =20 编译，68 字节里只有一个字节不同（offset 0x08）。
    site_word = struct.unpack_from("<I", stub, 0x08)[0]
    assert (site_word & 0xFFFFFF00) == 0xE3A00000, \
        "stub +0x08 不是 mov r0,#imm 形式: 0x%08X" % site_word
    struct.pack_into("<I", stub, 0x08, 0xE3A00000 | (site & 0xFF))
    struct.pack_into("<I", stub, 0x3C, tramp_addr)
    struct.pack_into("<I", stub, 0x40, cb_addr)
    return bytes(stub)


def new_uc():
    uc = Uc(UC_ARCH_ARM, UC_MODE_ARM)
    for base in (0x10000, 0x11000, 0x12000, 0x13000, 0x3F000, 0x50000):
        uc.mem_map(base, PAGE)
    uc.mem_map(STACK_BASE, STACK_SIZE)
    return uc


def set_entry_regs(uc):
    for reg, val in SENTINEL.items():
        uc.reg_write(reg, val)
    uc.reg_write(UC_ARM_REG_SP, SP_INIT)
    uc.reg_write(UC_ARM_REG_LR, RET_ADDR)


def snapshot(uc):
    regs = {}
    for reg in (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3,
                UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7,
                UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11,
                UC_ARM_REG_R12, UC_ARM_REG_SP, UC_ARM_REG_LR):
        regs[reg] = uc.reg_read(reg)
    return regs


def run_patched(site, w0, w1, body_words, collect=None, until=None):
    """A 路：patch -> stub -> 回调 -> trampoline(重放 w0,w1) -> body"""
    uc = new_uc()
    uc.mem_write(STUB_ADDR, build_stub(site, TRAMP_ADDR, CB_ADDR))
    uc.mem_write(TRAMP_ADDR, w(w0) + w(w1) + w(0xE51FF004) + w(TARGET_ADDR + 8))
    uc.mem_write(TARGET_ADDR, w(0xE51FF004) + w(STUB_ADDR))
    uc.mem_write(TARGET_ADDR + 8, b"".join(w(x) for x in body_words))
    uc.mem_write(CB_ADDR, w(0xE12FFF1E))      # bx lr
    if collect is not None:
        uc.hook_add(UC_HOOK_CODE, collect, begin=CB_ADDR, end=CB_ADDR)
    set_entry_regs(uc)
    uc.emu_start(TARGET_ADDR, TARGET_ADDR + 8 if until is None else until, count=400)
    return uc


def run_reference(w0, w1, body_words):
    """B 路：直接执行同样的 2 条原指令，没有任何补丁"""
    uc = new_uc()
    uc.mem_write(REF_ADDR, w(w0) + w(w1) + b"".join(w(x) for x in body_words))
    set_entry_regs(uc)
    uc.emu_start(REF_ADDR, REF_ADDR + 8, count=200)
    return uc


def main(argv=None):
    global LIB_PATH
    ap = argparse.ArgumentParser(description="T8-12.6 probe stub ARM32 ABI test")
    ap.add_argument("--lib", default=None, help="基准库路径（默认自动探测；缺库 => INCOMPLETE）")
    args = ap.parse_args(argv)
    if args.lib:
        LIB_PATH = args.lib
    else:
        LIB_PATH = next((p for p in DEFAULT_LIB_CANDIDATES if p and os.path.exists(p)), None)

    print("=== T8-12.6 probe stub ARM32 ABI test (Unicorn %s) ===" %
          __import__("unicorn").__version__)
    print("base lib: %r" % LIB_PATH)
    blob = open(STUB_BIN, "rb").read()
    print("stub binary: %s (%d bytes, sha256 %s)" %
          (STUB_BIN, len(blob), hashlib.sha256(blob).hexdigest().upper()))
    print()

    # ---------------------------------------------------------------
    print("[case 1] 参数落位 + 易失/非易失寄存器保存恢复（回调写垃圾）")
    print("         序言 = push {r4,lr} / mov r4,r0（寄存器类，无 PC 相对）")
    prologue1 = [0xE92D4010, 0xE1A04000]
    body1 = [enc_add_rd_rn_rm(0, 0, 1), enc_add_rd_rn_rm(0, 0, 2),
             enc_add_rd_rn_rm(0, 0, 3), enc_add_rd_rn_rm(0, 0, 4),
             0xE8BD8010]                      # pop {r4,pc}
    seen = {"n": 0, "args": None, "sp": None}

    def on_cb(uc_, address, size, user_data):
        if address != CB_ADDR:
            return
        r = [uc_.reg_read(x) for x in (UC_ARM_REG_R0, UC_ARM_REG_R1,
                                       UC_ARM_REG_R2, UC_ARM_REG_R3)]
        sp = uc_.reg_read(UC_ARM_REG_SP)
        a3, caller_lr = struct.unpack("<II", uc_.mem_read(sp, 8))
        seen["n"] += 1
        seen["args"] = (r[0], r[1], r[2], r[3], a3, caller_lr)
        seen["sp"] = sp
        entry_lr = uc_.reg_read(UC_ARM_REG_LR)
        for reg in CALLER_REGS:              # 故意破坏所有易失寄存器
            uc_.reg_write(reg, POISON)
        uc_.reg_write(UC_ARM_REG_PC, entry_lr)

    uc = run_patched(SITE_ID, prologue1[0], prologue1[1], body1, on_cb, until=RET_ADDR)
    a = seen["args"]
    check(seen["n"] == 1, "回调被调用 1 次（实际 %d）" % seen["n"])
    check(a[0] == SITE_ID, "r0 = site = %d（实际 %d）" % (SITE_ID, a[0]))
    check(a[1] == SENTINEL[UC_ARM_REG_R0], "r1 = a0 = 0xA0（实际 0x%X）" % a[1])
    check(a[2] == SENTINEL[UC_ARM_REG_R1], "r2 = a1 = 0xA1（实际 0x%X）" % a[2])
    check(a[3] == SENTINEL[UC_ARM_REG_R2], "r3 = a2 = 0xA2（实际 0x%X）" % a[3])
    check(a[4] == SENTINEL[UC_ARM_REG_R3], "[sp+0] = a3 = 0xA3（实际 0x%X）" % a[4])
    check(a[5] == RET_ADDR, "[sp+4] = caller_lr = 0x%X（实际 0x%X）" % (RET_ADDR, a[5]))
    check(seen["sp"] == SP_INIT - 32, "回调入口 SP = 入口-32 = 0x%X（实际 0x%X）" %
          (SP_INIT - 32, seen["sp"]))
    check(seen["sp"] % 8 == 0, "回调入口 SP 8 字节对齐")
    check(uc.reg_read(UC_ARM_REG_SP) == SP_INIT,
          "返回后 SP 复原 = 0x%X（实际 0x%X）" % (SP_INIT, uc.reg_read(UC_ARM_REG_SP)))
    for reg, name in ((UC_ARM_REG_R4, "r4"), (UC_ARM_REG_R5, "r5"), (UC_ARM_REG_R6, "r6"),
                      (UC_ARM_REG_R7, "r7"), (UC_ARM_REG_R8, "r8"), (UC_ARM_REG_R9, "r9"),
                      (UC_ARM_REG_R10, "r10"), (UC_ARM_REG_R11, "r11")):
        check(uc.reg_read(reg) == SENTINEL[reg],
              "%s 未被破坏 = 0x%X（实际 0x%X）" % (name, SENTINEL[reg], uc.reg_read(reg)))
    expect1 = 0xA0 + 0xA1 + 0xA2 + 0xA3 + 0xA0
    check(uc.reg_read(UC_ARM_REG_R0) == expect1,
          "返回值 = %d（序言 mov r4,r0 + 4 条加法，实际 %d）" % (expect1, uc.reg_read(UC_ARM_REG_R0)))
    check(uc.reg_read(UC_ARM_REG_PC) == RET_ADDR, "PC 停在调用者返回地址")
    print()

    # ---------------------------------------------------------------
    print("[case 2] 六个真实安装点序言：A 路(补丁) vs B 路(未补丁) 状态等价")
    print("         比较点 = 函数体入口处的 15 个值 (r0-r12 / sp / lr)")
    body_ret = [0xE12FFF1E]                  # bx lr（只作为"函数体入口"的落点）
    for label, site, vaddr, w0, w1 in INSTALL_POINTS:
        ua = run_patched(site, w0, w1, body_ret)
        sa = snapshot(ua)
        ub = run_reference(w0, w1, body_ret)
        sb = snapshot(ub)
        same = all(sa[r] == sb[r] for r in sa)
        diff = [hex(r) for r in sa if sa[r] != sb[r]]
        check(same, "%s (0x%X): 15 个寄存器(r0-r12/SP/LR)与未补丁路径完全一致%s" %
              (label, vaddr, "" if same else "，差异: " + ",".join(diff)))
        check(sa[UC_ARM_REG_SP] == SP_INIT - (
            4 * bin(w0 & 0xFFFF).count("1")),          # push 的寄存器个数 * 4
            "   %s: 序言 push 后 SP = 0x%X（期望 0x%X）" %
            (label, sa[UC_ARM_REG_SP], SP_INIT - 4 * bin(w0 & 0xFFFF).count("1")))
    print()

    # ---------------------------------------------------------------
    print("[case 3] 六个真实序言均不含 PC 相对寻址（trampoline 直接搬运的前提）")
    for label, site, vaddr, w0, w1 in INSTALL_POINTS:
        # push/pop (0xE8x…, 0xE9x…) 与 add/sub imm (0xE28…/0xE24…) 都不是 PC 相对
        def is_pc_rel(x):
            return ((x & 0x0F7F0000) == 0x051F0000 or      # ldr/str Rt,[pc,#imm]
                    (x & 0x0F7F0000) == 0x010F0000 or      # ldrh/strh Rt,[pc,#imm]
                    (x & 0x0F000000) == 0x0A000000 or      # b/bl
                    (x & 0x0FBF0000) == 0x028F0000 or      # add Rd,pc,#imm
                    (x & 0x0FBF0000) == 0x024F0000)        # sub Rd,pc,#imm
        check(not is_pc_rel(w0) and not is_pc_rel(w1),
              "%s: 0x%08X / 0x%08X 均非 PC 相对" % (label, w0, w1))
    print()

    # ---------------------------------------------------------------
    print("[case 4] 与真实库字节交叉核对（基准库路径可配置）")
    if LIB_PATH is None or not os.path.exists(LIB_PATH):
        print("  [INCOMPLETE] 未找到基准库（路径=%r）。" % LIB_PATH)
        print("              本测试不允许在缺少基准库的情况下宣称完整 PASS；")
        print("              请用 --lib <path> 或环境变量 TG_LIBSMARTBOX 指定。")
        return 2
    blob = open(LIB_PATH, "rb").read()
    sha = hashlib.sha256(blob).hexdigest().upper()
    check(sha == LIBSMARTBOX_SHA256, "基准库 sha256 与基线一致（%s…，路径 %s）" % (sha[:16], LIB_PATH))
    segs = elf_load_segments(blob)
    check(len(segs) > 0, "ELF 解析出 %d 个 PT_LOAD 段" % len(segs))
    # 打印段表（换算依据），并显式验证"我们读的这 6 个地址所在的段恰好 p_vaddr == p_offset"
    for v, o, sz in segs:
        print("    PT_LOAD vaddr=0x%08X off=0x%08X filesz=0x%X%s" %
              (v, o, sz, "  (identity)" if v == o else ""))
    ident_ok = True
    for label, site, vaddr, w0, w1 in INSTALL_POINTS:
        seg = next(((v, o, sz) for v, o, sz in segs if v <= vaddr < v + sz), None)
        if seg is None or seg[0] != seg[1]:
            ident_ok = False
    check(ident_ok,
          "6 个安装点所在 PT_LOAD 段均满足 p_vaddr == p_offset（这是本库的事实，不是假设）")
    check(all(vaddr_to_off(segs, va) == va for _, _, va, _, _ in INSTALL_POINTS),
          "vaddr_to_off() 对 6 个地址的换算结果与直接偏移一致（换算函数自洽）")
    for label, site, vaddr, w0, w1 in INSTALL_POINTS:
        foff = vaddr_to_off(segs, vaddr)
        got0, got1 = struct.unpack_from("<II", blob, foff)
        check(got0 == w0 and got1 == w1,
              "%s @0x%X (file off 0x%X) 库内字节 = 0x%08X 0x%08X" %
              (label, vaddr, foff, got0, got1))
    print()

    # ---------------------------------------------------------------
    print("[case 5] 连续 1000 次调用：SP 无漂移、返回值稳定、回调计数一致")
    uc = run_patched(SITE_ID, prologue1[0], prologue1[1], body1, on_cb, until=RET_ADDR)
    seen["n"] = 0
    sps = set()
    ok = True
    for i in range(1000):
        set_entry_regs(uc)
        uc.emu_start(TARGET_ADDR, RET_ADDR, count=400)
        sps.add(uc.reg_read(UC_ARM_REG_SP))
        if uc.reg_read(UC_ARM_REG_R0) != expect1:
            ok = False
            break
    check(ok, "1000 次返回值全部正确")
    check(len(sps) == 1 and SP_INIT in sps,
          "1000 次 SP 恒等于 0x%X（去重后 %d 个值）" % (SP_INIT, len(sps)))
    check(seen["n"] == 1000, "回调累计 1000 次（实际 %d）" % seen["n"])
    print()

    complete = (_fails == 0)
    print("RESULT: %s  (断言 %d 条，失败 %d 条，complete=%s)" %
          ("PASS" if complete else "FAIL", _checks, _fails,
           "True" if complete else "False"))
    if not complete:
        print("      注意：失败/不完整的运行不得作为验收依据。")
    return 0 if complete else 1


if __name__ == "__main__":
    sys.exit(main())
