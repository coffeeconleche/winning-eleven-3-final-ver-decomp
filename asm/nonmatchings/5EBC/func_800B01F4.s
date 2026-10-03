nonmatching func_800B01F4, 0x14

glabel func_800B01F4
    /* A09F4 800B01F4 0E80023C */  lui        $v0, %hi(D_800E7090)
    /* A09F8 800B01F8 21104400 */  addu       $v0, $v0, $a0
    /* A09FC 800B01FC 90704290 */  lbu        $v0, %lo(D_800E7090)($v0)
    /* A0A00 800B0200 0800E003 */  jr         $ra
    /* A0A04 800B0204 00000000 */   nop
endlabel func_800B01F4
