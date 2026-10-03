nonmatching func_8009D3A4, 0x24

glabel func_8009D3A4
    /* 8DBA4 8009D3A4 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 8DBA8 8009D3A8 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 8DBAC 8009D3AC 02000224 */  addiu      $v0, $zero, 0x2
    /* 8DBB0 8009D3B0 03006210 */  beq        $v1, $v0, .L8009D3C0
    /* 8DBB4 8009D3B4 00000000 */   nop
    /* 8DBB8 8009D3B8 E20380A0 */  sb         $zero, 0x3E2($a0)
    /* 8DBBC 8009D3BC E30380A0 */  sb         $zero, 0x3E3($a0)
  .L8009D3C0:
    /* 8DBC0 8009D3C0 0800E003 */  jr         $ra
    /* 8DBC4 8009D3C4 00000000 */   nop
endlabel func_8009D3A4
