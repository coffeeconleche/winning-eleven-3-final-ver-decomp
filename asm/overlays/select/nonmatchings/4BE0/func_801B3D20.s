nonmatching func_801B3D20, 0x7C

glabel func_801B3D20
    /* 2ADA8 801B3D20 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 2ADAC 801B3D24 1280033C */  lui        $v1, %hi(D_8011CAF4)
    /* 2ADB0 801B3D28 F4CA6324 */  addiu      $v1, $v1, %lo(D_8011CAF4)
    /* 2ADB4 801B3D2C 00006590 */  lbu        $a1, 0x0($v1)
    /* 2ADB8 801B3D30 FF008430 */  andi       $a0, $a0, 0xFF
    /* 2ADBC 801B3D34 2A108500 */  slt        $v0, $a0, $a1
    /* 2ADC0 801B3D38 08004014 */  bnez       $v0, .L801B3D5C
    /* 2ADC4 801B3D3C 01000624 */   addiu     $a2, $zero, 0x1
    /* 2ADC8 801B3D40 01006324 */  addiu      $v1, $v1, 0x1
  .L801B3D44:
    /* 2ADCC 801B3D44 00006290 */  lbu        $v0, 0x0($v1)
    /* 2ADD0 801B3D48 01006324 */  addiu      $v1, $v1, 0x1
    /* 2ADD4 801B3D4C 2128A200 */  addu       $a1, $a1, $v0
    /* 2ADD8 801B3D50 2A108500 */  slt        $v0, $a0, $a1
    /* 2ADDC 801B3D54 FBFF4010 */  beqz       $v0, .L801B3D44
    /* 2ADE0 801B3D58 0100C624 */   addiu     $a2, $a2, 0x1
  .L801B3D5C:
    /* 2ADE4 801B3D5C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 2ADE8 801B3D60 21280000 */  addu       $a1, $zero, $zero
    /* 2ADEC 801B3D64 0900C018 */  blez       $a2, .L801B3D8C
    /* 2ADF0 801B3D68 21180000 */   addu      $v1, $zero, $zero
  .L801B3D6C:
    /* 2ADF4 801B3D6C 1280013C */  lui        $at, %hi(D_8011CAF4)
    /* 2ADF8 801B3D70 21082500 */  addu       $at, $at, $a1
    /* 2ADFC 801B3D74 F4CA2290 */  lbu        $v0, %lo(D_8011CAF4)($at)
    /* 2AE00 801B3D78 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2AE04 801B3D7C 21186200 */  addu       $v1, $v1, $v0
    /* 2AE08 801B3D80 2A10A600 */  slt        $v0, $a1, $a2
    /* 2AE0C 801B3D84 F9FF4014 */  bnez       $v0, .L801B3D6C
    /* 2AE10 801B3D88 01006324 */   addiu     $v1, $v1, 0x1
  .L801B3D8C:
    /* 2AE14 801B3D8C FF006230 */  andi       $v0, $v1, 0xFF
    /* 2AE18 801B3D90 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 2AE1C 801B3D94 0800E003 */  jr         $ra
    /* 2AE20 801B3D98 00000000 */   nop
endlabel func_801B3D20
