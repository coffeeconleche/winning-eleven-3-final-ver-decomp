nonmatching func_8018F2F8, 0x2C

glabel func_8018F2F8
    /* 6380 8018F2F8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 6384 8018F2FC 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 6388 8018F300 21088100 */  addu       $at, $a0, $at
    /* 638C 8018F304 DD022290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($at)
    /* 6390 8018F308 1D80013C */  lui        $at, %hi(D_801D1ACC)
    /* 6394 8018F30C 21082200 */  addu       $at, $at, $v0
    /* 6398 8018F310 CC1A2290 */  lbu        $v0, %lo(D_801D1ACC)($at)
    /* 639C 8018F314 00000000 */  nop
    /* 63A0 8018F318 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 63A4 8018F31C 0800E003 */  jr         $ra
    /* 63A8 8018F320 FF004230 */   andi      $v0, $v0, 0xFF
endlabel func_8018F2F8
