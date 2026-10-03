nonmatching func_8005A218, 0x84

glabel func_8005A218
    /* 4AA18 8005A218 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4AA1C 8005A21C 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 4AA20 8005A220 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 4AA24 8005A224 01000224 */  addiu      $v0, $zero, 0x1
    /* 4AA28 8005A228 18006214 */  bne        $v1, $v0, .L8005A28C
    /* 4AA2C 8005A22C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4AA30 8005A230 AE79000C */  jal        func_8001E6B8
    /* 4AA34 8005A234 02000424 */   addiu     $a0, $zero, 0x2
    /* 4AA38 8005A238 14004010 */  beqz       $v0, .L8005A28C
    /* 4AA3C 8005A23C 00000000 */   nop
    /* 4AA40 8005A240 88AD020C */  jal        func_800AB620
    /* 4AA44 8005A244 10000424 */   addiu     $a0, $zero, 0x10
    /* 4AA48 8005A248 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 4AA4C 8005A24C F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 4AA50 8005A250 00000000 */  nop
    /* 4AA54 8005A254 04004284 */  lh         $v0, 0x4($v0)
    /* 4AA58 8005A258 00000000 */  nop
    /* 4AA5C 8005A25C B1FD4228 */  slti       $v0, $v0, -0x24F
    /* 4AA60 8005A260 05004010 */  beqz       $v0, .L8005A278
    /* 4AA64 8005A264 00000000 */   nop
    /* 4AA68 8005A268 AE79000C */  jal        func_8001E6B8
    /* 4AA6C 8005A26C 03000424 */   addiu     $a0, $zero, 0x3
    /* 4AA70 8005A270 A1680108 */  j          .L8005A284
    /* 4AA74 8005A274 370D4424 */   addiu     $a0, $v0, 0xD37
  .L8005A278:
    /* 4AA78 8005A278 AE79000C */  jal        func_8001E6B8
    /* 4AA7C 8005A27C 02000424 */   addiu     $a0, $zero, 0x2
    /* 4AA80 8005A280 350D4424 */  addiu      $a0, $v0, 0xD35
  .L8005A284:
    /* 4AA84 8005A284 88AD020C */  jal        func_800AB620
    /* 4AA88 8005A288 00000000 */   nop
  .L8005A28C:
    /* 4AA8C 8005A28C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4AA90 8005A290 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4AA94 8005A294 0800E003 */  jr         $ra
    /* 4AA98 8005A298 00000000 */   nop
endlabel func_8005A218
