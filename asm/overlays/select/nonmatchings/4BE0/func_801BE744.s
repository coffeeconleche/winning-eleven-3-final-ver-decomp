nonmatching func_801BE744, 0x38

glabel func_801BE744
    /* 357CC 801BE744 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 357D0 801BE748 1000BFAF */  sw         $ra, 0x10($sp)
    /* 357D4 801BE74C 97F7060C */  jal        func_801BDE5C
    /* 357D8 801BE750 02000424 */   addiu     $a0, $zero, 0x2
    /* 357DC 801BE754 14000424 */  addiu      $a0, $zero, 0x14
    /* 357E0 801BE758 A1BE010C */  jal        func_8006FA84
    /* 357E4 801BE75C 01000524 */   addiu     $a1, $zero, 0x1
    /* 357E8 801BE760 22000224 */  addiu      $v0, $zero, 0x22
    /* 357EC 801BE764 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 357F0 801BE768 A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 357F4 801BE76C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 357F8 801BE770 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 357FC 801BE774 0800E003 */  jr         $ra
    /* 35800 801BE778 00000000 */   nop
endlabel func_801BE744
