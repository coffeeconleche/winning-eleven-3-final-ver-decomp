nonmatching func_800AF9EC, 0x18

glabel func_800AF9EC
    /* A01EC 800AF9EC 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A01F0 800AF9F0 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A01F4 800AF9F4 00000000 */  nop
    /* A01F8 800AF9F8 0000428C */  lw         $v0, 0x0($v0)
    /* A01FC 800AF9FC 0800E003 */  jr         $ra
    /* A0200 800AFA00 00000000 */   nop
endlabel func_800AF9EC
