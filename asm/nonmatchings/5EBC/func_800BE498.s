nonmatching func_800BE498, 0xC

glabel func_800BE498
    /* AEC98 800BE498 0F80013C */  lui        $at, %hi(D_800EF980)
    /* AEC9C 800BE49C 0800E003 */  jr         $ra
    /* AECA0 800BE4A0 80F920A4 */   sh        $zero, %lo(D_800EF980)($at)
endlabel func_800BE498
    /* AECA4 800BE4A4 00000000 */  nop
