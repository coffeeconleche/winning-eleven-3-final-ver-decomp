nonmatching func_801CACF0, 0xD4

glabel func_801CACF0
    /* 41D78 801CACF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 41D7C 801CACF4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 41D80 801CACF8 40100400 */  sll        $v0, $a0, 1
    /* 41D84 801CACFC 21104400 */  addu       $v0, $v0, $a0
    /* 41D88 801CAD00 40100200 */  sll        $v0, $v0, 1
    /* 41D8C 801CAD04 01000824 */  addiu      $t0, $zero, 0x1
    /* 41D90 801CAD08 02000724 */  addiu      $a3, $zero, 0x2
    /* 41D94 801CAD0C 03000624 */  addiu      $a2, $zero, 0x3
    /* 41D98 801CAD10 04000524 */  addiu      $a1, $zero, 0x4
    /* 41D9C 801CAD14 05000324 */  addiu      $v1, $zero, 0x5
    /* 41DA0 801CAD18 1000BFAF */  sw         $ra, 0x10($sp)
    /* 41DA4 801CAD1C 1E80013C */  lui        $at, %hi(D_801D89F8)
    /* 41DA8 801CAD20 21082200 */  addu       $at, $at, $v0
    /* 41DAC 801CAD24 F88920A0 */  sb         $zero, %lo(D_801D89F8)($at)
    /* 41DB0 801CAD28 1E80013C */  lui        $at, %hi(D_801D89F9)
    /* 41DB4 801CAD2C 21082200 */  addu       $at, $at, $v0
    /* 41DB8 801CAD30 F98928A0 */  sb         $t0, %lo(D_801D89F9)($at)
    /* 41DBC 801CAD34 1E80013C */  lui        $at, %hi(D_801D89FA)
    /* 41DC0 801CAD38 21082200 */  addu       $at, $at, $v0
    /* 41DC4 801CAD3C FA8927A0 */  sb         $a3, %lo(D_801D89FA)($at)
    /* 41DC8 801CAD40 1E80013C */  lui        $at, %hi(D_801D89FB)
    /* 41DCC 801CAD44 21082200 */  addu       $at, $at, $v0
    /* 41DD0 801CAD48 FB8926A0 */  sb         $a2, %lo(D_801D89FB)($at)
    /* 41DD4 801CAD4C 1E80013C */  lui        $at, %hi(D_801D89FC)
    /* 41DD8 801CAD50 21082200 */  addu       $at, $at, $v0
    /* 41DDC 801CAD54 FC8925A0 */  sb         $a1, %lo(D_801D89FC)($at)
    /* 41DE0 801CAD58 1E80013C */  lui        $at, %hi(D_801D89FD)
    /* 41DE4 801CAD5C 21082200 */  addu       $at, $at, $v0
    /* 41DE8 801CAD60 FD8923A0 */  sb         $v1, %lo(D_801D89FD)($at)
    /* 41DEC 801CAD64 1E80013C */  lui        $at, %hi(D_801D8A08)
    /* 41DF0 801CAD68 21082200 */  addu       $at, $at, $v0
    /* 41DF4 801CAD6C 088A20A0 */  sb         $zero, %lo(D_801D8A08)($at)
    /* 41DF8 801CAD70 1E80013C */  lui        $at, %hi(D_801D8A09)
    /* 41DFC 801CAD74 21082200 */  addu       $at, $at, $v0
    /* 41E00 801CAD78 098A28A0 */  sb         $t0, %lo(D_801D8A09)($at)
    /* 41E04 801CAD7C 1E80013C */  lui        $at, %hi(D_801D8A0A)
    /* 41E08 801CAD80 21082200 */  addu       $at, $at, $v0
    /* 41E0C 801CAD84 0A8A27A0 */  sb         $a3, %lo(D_801D8A0A)($at)
    /* 41E10 801CAD88 1E80013C */  lui        $at, %hi(D_801D8A0B)
    /* 41E14 801CAD8C 21082200 */  addu       $at, $at, $v0
    /* 41E18 801CAD90 0B8A26A0 */  sb         $a2, %lo(D_801D8A0B)($at)
    /* 41E1C 801CAD94 1E80013C */  lui        $at, %hi(D_801D8A0C)
    /* 41E20 801CAD98 21082200 */  addu       $at, $at, $v0
    /* 41E24 801CAD9C 0C8A25A0 */  sb         $a1, %lo(D_801D8A0C)($at)
    /* 41E28 801CADA0 1E80013C */  lui        $at, %hi(D_801D8A0D)
    /* 41E2C 801CADA4 21082200 */  addu       $at, $at, $v0
    /* 41E30 801CADA8 0D8A23A0 */  sb         $v1, %lo(D_801D8A0D)($at)
    /* 41E34 801CADAC DE2B070C */  jal        func_801CAF78
    /* 41E38 801CADB0 00000000 */   nop
    /* 41E3C 801CADB4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 41E40 801CADB8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 41E44 801CADBC 0800E003 */  jr         $ra
    /* 41E48 801CADC0 00000000 */   nop
endlabel func_801CACF0
