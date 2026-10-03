nonmatching func_801CF918, 0x4C

glabel func_801CF918
    /* 469A0 801CF918 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 469A4 801CF91C 21280000 */  addu       $a1, $zero, $zero
    /* 469A8 801CF920 21300000 */  addu       $a2, $zero, $zero
    /* 469AC 801CF924 1D80023C */  lui        $v0, %hi(D_801D1AFC)
    /* 469B0 801CF928 FC1A428C */  lw         $v0, %lo(D_801D1AFC)($v0)
    /* 469B4 801CF92C 1180043C */  lui        $a0, %hi(D_8010865C)
    /* 469B8 801CF930 5C868490 */  lbu        $a0, %lo(D_8010865C)($a0)
    /* 469BC 801CF934 1E80033C */  lui        $v1, %hi(D_801DADCC)
    /* 469C0 801CF938 CCAD638C */  lw         $v1, %lo(D_801DADCC)($v1)
    /* 469C4 801CF93C 1D80073C */  lui        $a3, %hi(D_801D59E8)
    /* 469C8 801CF940 E859E724 */  addiu      $a3, $a3, %lo(D_801D59E8)
    /* 469CC 801CF944 1800BFAF */  sw         $ra, 0x18($sp)
    /* 469D0 801CF948 1000A2AF */  sw         $v0, 0x10($sp)
    /* 469D4 801CF94C 3D4C060C */  jal        func_801930F4
    /* 469D8 801CF950 1400A3AF */   sw        $v1, 0x14($sp)
    /* 469DC 801CF954 1800BF8F */  lw         $ra, 0x18($sp)
    /* 469E0 801CF958 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 469E4 801CF95C 0800E003 */  jr         $ra
    /* 469E8 801CF960 00000000 */   nop
endlabel func_801CF918
