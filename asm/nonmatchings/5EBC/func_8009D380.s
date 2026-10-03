nonmatching func_8009D380, 0x24

glabel func_8009D380
    /* 8DB80 8009D380 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 8DB84 8009D384 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 8DB88 8009D388 08000224 */  addiu      $v0, $zero, 0x8
    /* 8DB8C 8009D38C 03006210 */  beq        $v1, $v0, .L8009D39C
    /* 8DB90 8009D390 00000000 */   nop
    /* 8DB94 8009D394 E20380A0 */  sb         $zero, 0x3E2($a0)
    /* 8DB98 8009D398 E30380A0 */  sb         $zero, 0x3E3($a0)
  .L8009D39C:
    /* 8DB9C 8009D39C 0800E003 */  jr         $ra
    /* 8DBA0 8009D3A0 00000000 */   nop
endlabel func_8009D380
