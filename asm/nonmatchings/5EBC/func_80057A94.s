nonmatching func_80057A94, 0x50

glabel func_80057A94
    /* 48294 80057A94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 48298 80057A98 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 4829C 80057A9C 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 482A0 80057AA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 482A4 80057AA4 0B006214 */  bne        $v1, $v0, .L80057AD4
    /* 482A8 80057AA8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 482AC 80057AAC AE79000C */  jal        func_8001E6B8
    /* 482B0 80057AB0 02000424 */   addiu     $a0, $zero, 0x2
    /* 482B4 80057AB4 07004010 */  beqz       $v0, .L80057AD4
    /* 482B8 80057AB8 00000000 */   nop
    /* 482BC 80057ABC 88AD020C */  jal        func_800AB620
    /* 482C0 80057AC0 10000424 */   addiu     $a0, $zero, 0x10
    /* 482C4 80057AC4 AE79000C */  jal        func_8001E6B8
    /* 482C8 80057AC8 02000424 */   addiu     $a0, $zero, 0x2
    /* 482CC 80057ACC 88AD020C */  jal        func_800AB620
    /* 482D0 80057AD0 490D4424 */   addiu     $a0, $v0, 0xD49
  .L80057AD4:
    /* 482D4 80057AD4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 482D8 80057AD8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 482DC 80057ADC 0800E003 */  jr         $ra
    /* 482E0 80057AE0 00000000 */   nop
endlabel func_80057A94
