nonmatching func_8005E0E8, 0x1C

glabel func_8005E0E8
    /* 4E8E8 8005E0E8 02210400 */  srl        $a0, $a0, 4
    /* 4E8EC 8005E0EC 0E008430 */  andi       $a0, $a0, 0xE
    /* 4E8F0 8005E0F0 0D80013C */  lui        $at, %hi(D_800C8478)
    /* 4E8F4 8005E0F4 21082400 */  addu       $at, $at, $a0
    /* 4E8F8 8005E0F8 78842294 */  lhu        $v0, %lo(D_800C8478)($at)
    /* 4E8FC 8005E0FC 0800E003 */  jr         $ra
    /* 4E900 8005E100 00000000 */   nop
endlabel func_8005E0E8
