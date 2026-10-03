nonmatching func_8005A4FC, 0x84

glabel func_8005A4FC
    /* 4ACFC 8005A4FC 1180023C */  lui        $v0, %hi(D_8010A392)
    /* 4AD00 8005A500 92A34290 */  lbu        $v0, %lo(D_8010A392)($v0)
    /* 4AD04 8005A504 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4AD08 8005A508 19004014 */  bnez       $v0, .L8005A570
    /* 4AD0C 8005A50C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4AD10 8005A510 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 4AD14 8005A514 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 4AD18 8005A518 01000224 */  addiu      $v0, $zero, 0x1
    /* 4AD1C 8005A51C 14006214 */  bne        $v1, $v0, .L8005A570
    /* 4AD20 8005A520 00000000 */   nop
    /* 4AD24 8005A524 801F023C */  lui        $v0, (0x1F8002DF >> 16)
    /* 4AD28 8005A528 DF024290 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($v0)
    /* 4AD2C 8005A52C 00000000 */  nop
    /* 4AD30 8005A530 0F004314 */  bne        $v0, $v1, .L8005A570
    /* 4AD34 8005A534 00000000 */   nop
    /* 4AD38 8005A538 1180023C */  lui        $v0, %hi(D_8010A3BB)
    /* 4AD3C 8005A53C BBA34290 */  lbu        $v0, %lo(D_8010A3BB)($v0)
    /* 4AD40 8005A540 00000000 */  nop
    /* 4AD44 8005A544 0A004014 */  bnez       $v0, .L8005A570
    /* 4AD48 8005A548 00000000 */   nop
    /* 4AD4C 8005A54C 88AD020C */  jal        func_800AB620
    /* 4AD50 8005A550 10000424 */   addiu     $a0, $zero, 0x10
    /* 4AD54 8005A554 AE79000C */  jal        func_8001E6B8
    /* 4AD58 8005A558 08000424 */   addiu     $a0, $zero, 0x8
    /* 4AD5C 8005A55C 88AD020C */  jal        func_800AB620
    /* 4AD60 8005A560 3E0E4424 */   addiu     $a0, $v0, 0xE3E
    /* 4AD64 8005A564 01000224 */  addiu      $v0, $zero, 0x1
    /* 4AD68 8005A568 1180013C */  lui        $at, %hi(D_8010A3BB)
    /* 4AD6C 8005A56C BBA322A0 */  sb         $v0, %lo(D_8010A3BB)($at)
  .L8005A570:
    /* 4AD70 8005A570 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4AD74 8005A574 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4AD78 8005A578 0800E003 */  jr         $ra
    /* 4AD7C 8005A57C 00000000 */   nop
endlabel func_8005A4FC
