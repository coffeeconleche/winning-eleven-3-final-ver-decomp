nonmatching func_8006F310, 0x50

glabel func_8006F310
    /* 5FB10 8006F310 21200000 */  addu       $a0, $zero, $zero
    /* 5FB14 8006F314 1080033C */  lui        $v1, %hi(D_8010551E)
    /* 5FB18 8006F318 1E556324 */  addiu      $v1, $v1, %lo(D_8010551E)
  .L8006F31C:
    /* 5FB1C 8006F31C EEFF6290 */  lbu        $v0, -0x12($v1)
    /* 5FB20 8006F320 00000000 */  nop
    /* 5FB24 8006F324 07004010 */  beqz       $v0, .L8006F344
    /* 5FB28 8006F328 00000000 */   nop
    /* 5FB2C 8006F32C 0F80023C */  lui        $v0, %hi(D_800EF864)
    /* 5FB30 8006F330 64F84290 */  lbu        $v0, %lo(D_800EF864)($v0)
    /* 5FB34 8006F334 00000000 */  nop
    /* 5FB38 8006F338 020062A0 */  sb         $v0, 0x2($v1)
    /* 5FB3C 8006F33C 010062A0 */  sb         $v0, 0x1($v1)
    /* 5FB40 8006F340 000062A0 */  sb         $v0, 0x0($v1)
  .L8006F344:
    /* 5FB44 8006F344 01008424 */  addiu      $a0, $a0, 0x1
    /* 5FB48 8006F348 FF008230 */  andi       $v0, $a0, 0xFF
    /* 5FB4C 8006F34C 3A00422C */  sltiu      $v0, $v0, 0x3A
    /* 5FB50 8006F350 F2FF4014 */  bnez       $v0, .L8006F31C
    /* 5FB54 8006F354 28006324 */   addiu     $v1, $v1, 0x28
    /* 5FB58 8006F358 0800E003 */  jr         $ra
    /* 5FB5C 8006F35C 00000000 */   nop
endlabel func_8006F310
