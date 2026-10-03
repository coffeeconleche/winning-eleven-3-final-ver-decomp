nonmatching func_800C0B88, 0xC

glabel func_800C0B88
    /* B1388 800C0B88 0F80013C */  lui        $at, %hi(D_800F0F70)
    /* B138C 800C0B8C 0800E003 */  jr         $ra
    /* B1390 800C0B90 700F20A4 */   sh        $zero, %lo(D_800F0F70)($at)
endlabel func_800C0B88
    /* B1394 800C0B94 00000000 */  nop
