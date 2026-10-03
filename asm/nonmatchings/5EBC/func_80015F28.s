nonmatching func_80015F28, 0x58

glabel func_80015F28
    /* 6728 80015F28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 672C 80015F2C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6730 80015F30 153F010C */  jal        func_8004FC54
    /* 6734 80015F34 21200000 */   addu      $a0, $zero, $zero
    /* 6738 80015F38 801F013C */  lui        $at, (0x1F8002A0 >> 16)
    /* 673C 80015F3C A00220A0 */  sb         $zero, (0x1F8002A0 & 0xFFFF)($at)
    /* 6740 80015F40 801F013C */  lui        $at, (0x1F8002A1 >> 16)
    /* 6744 80015F44 A10220A0 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($at)
    /* 6748 80015F48 4765000C */  jal        func_8001951C
    /* 674C 80015F4C 00000000 */   nop
    /* 6750 80015F50 21200000 */  addu       $a0, $zero, $zero
    /* 6754 80015F54 21280000 */  addu       $a1, $zero, $zero
    /* 6758 80015F58 4E78000C */  jal        func_8001E138
    /* 675C 80015F5C 21300000 */   addu      $a2, $zero, $zero
    /* 6760 80015F60 801F013C */  lui        $at, (0x1F80029F >> 16)
    /* 6764 80015F64 9F0220A0 */  sb         $zero, (0x1F80029F & 0xFFFF)($at)
    /* 6768 80015F68 535C000C */  jal        func_8001714C
    /* 676C 80015F6C 00000000 */   nop
    /* 6770 80015F70 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6774 80015F74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6778 80015F78 0800E003 */  jr         $ra
    /* 677C 80015F7C 00000000 */   nop
endlabel func_80015F28
