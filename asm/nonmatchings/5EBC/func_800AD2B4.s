nonmatching func_800AD2B4, 0x38

glabel func_800AD2B4
    /* 9DAB4 800AD2B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9DAB8 800AD2B8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9DABC 800AD2BC F6B4020C */  jal        func_800AD3D8
    /* 9DAC0 800AD2C0 00000000 */   nop
    /* 9DAC4 800AD2C4 0E80053C */  lui        $a1, %hi(D_800E7008)
    /* 9DAC8 800AD2C8 0870A524 */  addiu      $a1, $a1, %lo(D_800E7008)
    /* 9DACC 800AD2CC FEB4020C */  jal        func_800AD3F8
    /* 9DAD0 800AD2D0 01000424 */   addiu     $a0, $zero, 0x1
    /* 9DAD4 800AD2D4 9AB3020C */  jal        func_800ACE68
    /* 9DAD8 800AD2D8 00000000 */   nop
    /* 9DADC 800AD2DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9DAE0 800AD2E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 9DAE4 800AD2E4 0800E003 */  jr         $ra
    /* 9DAE8 800AD2E8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AD2B4
