@ T8-12.4 探针入口桩（ARM32 / ARM 态 / AAPCS）
@
@ 用途：把被观测函数的入口前 8 字节改成 "ldr pc,[pc,#-4] + <本桩地址>"，
@       本桩在不改变被观测函数语义的前提下，把 (site, a0, a1, a2, a3, caller_lr)
@       交给只读回调，然后原样恢复现场并跳进 trampoline。
@
@ 回调原型（AAPCS 参数落位）：
@   void tg_probe_cb(uint32_t site,      -> r0
@                    uint32_t a0,        -> r1
@                    uint32_t a1,        -> r2
@                    uint32_t a2,        -> r3
@                    uint32_t a3,        -> [sp+0]
@                    uint32_t caller_lr) -> [sp+4]
@
@ 现场保存（push {r0,r1,r2,r3,r12,lr} 的栈布局，低地址在前）：
@   [sp+0]=r0  [sp+4]=r1  [sp+8]=r2  [sp+12]=r3  [sp+16]=r12  [sp+20]=lr
@ 再 sub sp,#8 之后整体后移 8 字节：
@   [sp+8]=r0  [sp+12]=r1  [sp+16]=r2  [sp+20]=r3  [sp+24]=r12  [sp+28]=lr
@
@ 本桩只使用 r12 作为临时寄存器，绝不写 r4-r11。

        .arm
        .syntax unified
        .text
        .global tg_probe_stub
        .type   tg_probe_stub, %function

tg_probe_stub:
        push    {r0, r1, r2, r3, r12, lr}   @ +0x00  24 字节，SP 仍是 8 对齐
        sub     sp, sp, #8                  @ +0x04  为第 5/6 个参数腾 8 字节
        mov     r0, #SITE_ID                @ +0x08  第 1 参：site id（立即数）
        ldr     r1, [sp, #8]                @ +0x0c  第 2 参：a0
        ldr     r2, [sp, #12]               @ +0x10  第 3 参：a1
        ldr     r3, [sp, #16]               @ +0x14  第 4 参：a2
        ldr     r12, [sp, #20]              @ +0x18  a3 -> r12
        str     r12, [sp, #0]               @ +0x1c  第 5 参：[sp+0] = a3
        ldr     r12, [sp, #28]              @ +0x20  取被观测函数的返回地址（入口 lr）
        str     r12, [sp, #4]               @ +0x24  第 6 参：[sp+4] = caller_lr
        ldr     r12, [pc, #16]              @ +0x28  r12 = [+0x40] = 回调地址
        blx     r12                         @ +0x2c  调回调（回调可随意破坏 r0-r3/r12/lr）
        add     sp, sp, #8                  @ +0x30  收回参数区
        pop     {r0, r1, r2, r3, r12, lr}   @ +0x34  原样恢复入参与返回地址
        ldr     pc, [pc, #-4]               @ +0x38  -> [+0x3c] = trampoline
        .word   0x11111111                  @ +0x3c  trampoline 地址（安装时填写）
        .word   0x22222222                  @ +0x40  回调地址（安装时填写）

        .size   tg_probe_stub, . - tg_probe_stub

@ trampoline 模板（每个被观测函数一份，安装时填写）：
@   +0x00  <被覆盖的第 1 条原始指令>
@   +0x04  <被覆盖的第 2 条原始指令>
@   +0x08  E51FF004  ldr pc,[pc,#-4]
@   +0x0c  <func + 8>
@ 说明：trampoline 在 SP == 入口 SP 的状态下执行（本桩已 pop 复原），
@       因此被搬运的 prologue 指令（push/sub sp/add r11,sp 等）语义完全不变。
