nonmatching func_800ADB8C, 0x40

glabel func_800ADB8C
    /* 9E38C 800ADB8C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9E390 800ADB90 21308000 */  addu       $a2, $a0, $zero
    /* 9E394 800ADB94 3F00C530 */  andi       $a1, $a2, 0x3F
    /* 9E398 800ADB98 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 9E39C 800ADB9C 0180043C */  lui        $a0, %hi(D_80014D74)
    /* 9E3A0 800ADBA0 744D8424 */  addiu      $a0, $a0, %lo(D_80014D74)
    /* 9E3A4 800ADBA4 00290500 */  sll        $a1, $a1, 4
    /* 9E3A8 800ADBA8 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E3AC 800ADBAC C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E3B0 800ADBB0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9E3B4 800ADBB4 09F84000 */  jalr       $v0
    /* 9E3B8 800ADBB8 82310600 */   srl       $a2, $a2, 6
    /* 9E3BC 800ADBBC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9E3C0 800ADBC0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9E3C4 800ADBC4 0800E003 */  jr         $ra
    /* 9E3C8 800ADBC8 00000000 */   nop
endlabel func_800ADB8C
