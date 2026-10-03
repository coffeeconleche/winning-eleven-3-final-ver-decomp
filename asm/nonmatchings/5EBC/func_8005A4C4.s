nonmatching func_8005A4C4, 0x30

glabel func_8005A4C4
    /* 4ACC4 8005A4C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4ACC8 8005A4C8 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 4ACCC 8005A4CC E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 4ACD0 8005A4D0 05000224 */  addiu      $v0, $zero, 0x5
    /* 4ACD4 8005A4D4 03006210 */  beq        $v1, $v0, .L8005A4E4
    /* 4ACD8 8005A4D8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4ACDC 8005A4DC 88AD020C */  jal        func_800AB620
    /* 4ACE0 8005A4E0 1C050424 */   addiu     $a0, $zero, 0x51C
  .L8005A4E4:
    /* 4ACE4 8005A4E4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4ACE8 8005A4E8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4ACEC 8005A4EC 0800E003 */  jr         $ra
    /* 4ACF0 8005A4F0 00000000 */   nop
endlabel func_8005A4C4
