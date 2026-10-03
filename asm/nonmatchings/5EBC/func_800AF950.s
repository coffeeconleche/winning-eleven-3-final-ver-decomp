nonmatching func_800AF950, 0x1C

glabel func_800AF950
    /* A0150 800AF950 FF07A530 */  andi       $a1, $a1, 0x7FF
    /* A0154 800AF954 C02A0500 */  sll        $a1, $a1, 11
    /* A0158 800AF958 FF078230 */  andi       $v0, $a0, 0x7FF
    /* A015C 800AF95C 00E5033C */  lui        $v1, (0xE5000000 >> 16)
    /* A0160 800AF960 25104300 */  or         $v0, $v0, $v1
    /* A0164 800AF964 0800E003 */  jr         $ra
    /* A0168 800AF968 2510A200 */   or        $v0, $a1, $v0
endlabel func_800AF950
