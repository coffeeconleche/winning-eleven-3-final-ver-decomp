nonmatching func_801A24AC, 0x38

glabel func_801A24AC
    /* 19534 801A24AC 21180000 */  addu       $v1, $zero, $zero
    /* 19538 801A24B0 FF008430 */  andi       $a0, $a0, 0xFF
  .L801A24B4:
    /* 1953C 801A24B4 1280013C */  lui        $at, %hi(D_8011BD54)
    /* 19540 801A24B8 21082300 */  addu       $at, $at, $v1
    /* 19544 801A24BC 54BD2290 */  lbu        $v0, %lo(D_8011BD54)($at)
    /* 19548 801A24C0 00000000 */  nop
    /* 1954C 801A24C4 05004410 */  beq        $v0, $a0, .L801A24DC
    /* 19550 801A24C8 FF006230 */   andi      $v0, $v1, 0xFF
    /* 19554 801A24CC 01006324 */  addiu      $v1, $v1, 0x1
    /* 19558 801A24D0 20006228 */  slti       $v0, $v1, 0x20
    /* 1955C 801A24D4 F7FF4014 */  bnez       $v0, .L801A24B4
    /* 19560 801A24D8 FF000224 */   addiu     $v0, $zero, 0xFF
  .L801A24DC:
    /* 19564 801A24DC 0800E003 */  jr         $ra
    /* 19568 801A24E0 00000000 */   nop
endlabel func_801A24AC
