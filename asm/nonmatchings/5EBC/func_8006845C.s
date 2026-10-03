nonmatching func_8006845C, 0x18

glabel func_8006845C
    /* 58C5C 8006845C FF008430 */  andi       $a0, $a0, 0xFF
    /* 58C60 80068460 801F013C */  lui        $at, (0x1F800305 >> 16)
    /* 58C64 80068464 21088100 */  addu       $at, $a0, $at
    /* 58C68 80068468 050320A0 */  sb         $zero, (0x1F800305 & 0xFFFF)($at)
    /* 58C6C 8006846C 0800E003 */  jr         $ra
    /* 58C70 80068470 00000000 */   nop
endlabel func_8006845C
