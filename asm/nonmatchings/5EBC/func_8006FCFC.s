nonmatching func_8006FCFC, 0xB0

glabel func_8006FCFC
    /* 604FC 8006FCFC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 60500 8006FD00 FF008230 */  andi       $v0, $a0, 0xFF
    /* 60504 8006FD04 1000A427 */  addiu      $a0, $sp, 0x10
    /* 60508 8006FD08 1080033C */  lui        $v1, %hi(D_800FF748)
    /* 6050C 8006FD0C 48F76324 */  addiu      $v1, $v1, %lo(D_800FF748)
    /* 60510 8006FD10 80100200 */  sll        $v0, $v0, 2
    /* 60514 8006FD14 21104300 */  addu       $v0, $v0, $v1
    /* 60518 8006FD18 3800BFAF */  sw         $ra, 0x38($sp)
    /* 6051C 8006FD1C A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* 60520 8006FD20 1800A527 */  addiu      $a1, $sp, 0x18
    /* 60524 8006FD24 1000A3A7 */  sh         $v1, 0x10($sp)
    /* 60528 8006FD28 A47F4394 */  lhu        $v1, 0x7FA4($v0)
    /* 6052C 8006FD2C 10000224 */  addiu      $v0, $zero, 0x10
    /* 60530 8006FD30 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 60534 8006FD34 01000224 */  addiu      $v0, $zero, 0x1
    /* 60538 8006FD38 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 6053C 8006FD3C 10BA020C */  jal        func_800AE840
    /* 60540 8006FD40 1200A3A7 */   sh        $v1, 0x12($sp)
    /* 60544 8006FD44 4DB9020C */  jal        func_800AE534
    /* 60548 8006FD48 21200000 */   addu      $a0, $zero, $zero
    /* 6054C 8006FD4C 1800A527 */  addiu      $a1, $sp, 0x18
    /* 60550 8006FD50 02000424 */  addiu      $a0, $zero, 0x2
    /* 60554 8006FD54 0F000724 */  addiu      $a3, $zero, 0xF
    /* 60558 8006FD58 1A00A697 */  lhu        $a2, 0x1A($sp)
    /* 6055C 8006FD5C FF008230 */  andi       $v0, $a0, 0xFF
  .L8006FD60:
    /* 60560 8006FD60 40100200 */  sll        $v0, $v0, 1
    /* 60564 8006FD64 21104500 */  addu       $v0, $v0, $a1
    /* 60568 8006FD68 00004394 */  lhu        $v1, 0x0($v0)
    /* 6056C 8006FD6C 01008424 */  addiu      $a0, $a0, 0x1
    /* 60570 8006FD70 FEFF43A4 */  sh         $v1, -0x2($v0)
    /* 60574 8006FD74 FF008230 */  andi       $v0, $a0, 0xFF
    /* 60578 8006FD78 2B10E200 */  sltu       $v0, $a3, $v0
    /* 6057C 8006FD7C F8FF4010 */  beqz       $v0, .L8006FD60
    /* 60580 8006FD80 FF008230 */   andi      $v0, $a0, 0xFF
    /* 60584 8006FD84 1E00A6A4 */  sh         $a2, 0x1E($a1)
    /* 60588 8006FD88 1000A427 */  addiu      $a0, $sp, 0x10
    /* 6058C 8006FD8C F8B9020C */  jal        func_800AE7E0
    /* 60590 8006FD90 1800A527 */   addiu     $a1, $sp, 0x18
    /* 60594 8006FD94 4DB9020C */  jal        func_800AE534
    /* 60598 8006FD98 21200000 */   addu      $a0, $zero, $zero
    /* 6059C 8006FD9C 3800BF8F */  lw         $ra, 0x38($sp)
    /* 605A0 8006FDA0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 605A4 8006FDA4 0800E003 */  jr         $ra
    /* 605A8 8006FDA8 00000000 */   nop
endlabel func_8006FCFC
