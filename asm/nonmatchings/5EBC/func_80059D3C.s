nonmatching func_80059D3C, 0x48

glabel func_80059D3C
    /* 4A53C 80059D3C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4A540 80059D40 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4A544 80059D44 AE79000C */  jal        func_8001E6B8
    /* 4A548 80059D48 02000424 */   addiu     $a0, $zero, 0x2
    /* 4A54C 80059D4C 09004014 */  bnez       $v0, .L80059D74
    /* 4A550 80059D50 04000224 */   addiu     $v0, $zero, 0x4
    /* 4A554 80059D54 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 4A558 80059D58 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 4A55C 80059D5C 00000000 */  nop
    /* 4A560 80059D60 02006214 */  bne        $v1, $v0, .L80059D6C
    /* 4A564 80059D64 FC0D0424 */   addiu     $a0, $zero, 0xDFC
    /* 4A568 80059D68 B80D0424 */  addiu      $a0, $zero, 0xDB8
  .L80059D6C:
    /* 4A56C 80059D6C 88AD020C */  jal        func_800AB620
    /* 4A570 80059D70 00000000 */   nop
  .L80059D74:
    /* 4A574 80059D74 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4A578 80059D78 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4A57C 80059D7C 0800E003 */  jr         $ra
    /* 4A580 80059D80 00000000 */   nop
endlabel func_80059D3C
