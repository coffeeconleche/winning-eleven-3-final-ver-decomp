nonmatching func_8009D35C, 0x24

glabel func_8009D35C
    /* 8DB5C 8009D35C 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 8DB60 8009D360 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 8DB64 8009D364 09000224 */  addiu      $v0, $zero, 0x9
    /* 8DB68 8009D368 03006210 */  beq        $v1, $v0, .L8009D378
    /* 8DB6C 8009D36C 00000000 */   nop
    /* 8DB70 8009D370 E20380A0 */  sb         $zero, 0x3E2($a0)
    /* 8DB74 8009D374 E30380A0 */  sb         $zero, 0x3E3($a0)
  .L8009D378:
    /* 8DB78 8009D378 0800E003 */  jr         $ra
    /* 8DB7C 8009D37C 00000000 */   nop
endlabel func_8009D35C
