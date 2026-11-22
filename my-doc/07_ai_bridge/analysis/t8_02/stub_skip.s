@ T8-02: stub variant that can SKIP the original function (ARM, hand-assembled words)
@   layout: +0x00 push / +0x04 ldr r4=cb / +0x08 blx / +0x0C save verdict /
@           +0x10 pop / +0x14 cmp / +0x18 bne skip / +0x1C ldr pc=tramp /
@           +0x20 cb addr / +0x24 pad / +0x28 skip: mov r0,#0 / +0x2C bx lr / +0x30 tramp addr
    .arm
    .text
    .global stub_skip
stub_skip:
    .word 0xE92D401F   @ push {r0-r3,r4,lr}
    .word 0xE59F4014   @ ldr  r4,[pc,#20]   -> +0x20
    .word 0xE12FFF34   @ blx  r4
    .word 0xE1A0C000   @ mov  r12,r0
    .word 0xE8BD401F   @ pop  {r0-r3,r4,lr}
    .word 0xE35C0000   @ cmp  r12,#0
    .word 0x1A000002   @ bne  +0x28
    .word 0xE59FF00C   @ ldr  pc,[pc,#12]   -> +0x30
    .word 0x11111111   @ cb address (patched)
    .word 0x00000000   @ padding
    .word 0xE3A00000   @ mov  r0,#0
    .word 0xE12FFF1E   @ bx   lr
    .word 0x22222222   @ trampoline address (patched)
