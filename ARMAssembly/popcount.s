//
//  popcount.s
//  ARMAssembly
//
//  Created by Michael Johnson on 5/19/18.
//  Copyright © 2018 Michael Johnson. All rights reserved.
//

#ifdef __arm64__

    .p2align 2
    .global _popcount

_popcount:
    .cfi_startproc
    sub     sp, sp, #16
    .cfi_def_cfa_offset 16
    adds            x0, x0, #15
    cset     w8, vs
    str     x0, [sp, #8]
    str     w8, [sp, #4]
    b.vs    LBB1_2
    ldr     x0, [sp, #8]
    add     sp, sp, #16
    ret
LBB1_2:
    brk     #0x1
    .cfi_endproc

#endif
