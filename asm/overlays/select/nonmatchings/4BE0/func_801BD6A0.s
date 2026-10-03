nonmatching func_801BD6A0, 0x4C

glabel func_801BD6A0
    /* 34728 801BD6A0 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 3472C 801BD6A4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 34730 801BD6A8 80200400 */  sll        $a0, $a0, 2
    /* 34734 801BD6AC FF00A530 */  andi       $a1, $a1, 0xFF
    /* 34738 801BD6B0 1E80013C */  lui        $at, %hi(D_801DADD0)
    /* 3473C 801BD6B4 21082400 */  addu       $at, $at, $a0
    /* 34740 801BD6B8 D0AD228C */  lw         $v0, %lo(D_801DADD0)($at)
    /* 34744 801BD6BC 1E80013C */  lui        $at, %hi(D_801DAE10)
    /* 34748 801BD6C0 21082400 */  addu       $at, $at, $a0
    /* 3474C 801BD6C4 10AE238C */  lw         $v1, %lo(D_801DAE10)($at)
    /* 34750 801BD6C8 0610A200 */  srlv       $v0, $v0, $a1
    /* 34754 801BD6CC 01004230 */  andi       $v0, $v0, 0x1
    /* 34758 801BD6D0 40100200 */  sll        $v0, $v0, 1
    /* 3475C 801BD6D4 0618A300 */  srlv       $v1, $v1, $a1
    /* 34760 801BD6D8 01006330 */  andi       $v1, $v1, 0x1
    /* 34764 801BD6DC 25104300 */  or         $v0, $v0, $v1
    /* 34768 801BD6E0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 3476C 801BD6E4 0800E003 */  jr         $ra
    /* 34770 801BD6E8 00000000 */   nop
endlabel func_801BD6A0
