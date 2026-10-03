nonmatching func_8009CF84, 0x84

glabel func_8009CF84
    /* 8D784 8009CF84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8D788 8009CF88 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8D78C 8009CF8C 98038290 */  lbu        $v0, 0x398($a0)
    /* 8D790 8009CF90 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 8D794 8009CF94 21084100 */  addu       $at, $v0, $at
    /* 8D798 8009CF98 CF022290 */  lbu        $v0, (0x1F8002CF & 0xFFFF)($at)
    /* 8D79C 8009CF9C 00000000 */  nop
    /* 8D7A0 8009CFA0 12004014 */  bnez       $v0, .L8009CFEC
    /* 8D7A4 8009CFA4 0C000224 */   addiu     $v0, $zero, 0xC
    /* 8D7A8 8009CFA8 8D038390 */  lbu        $v1, 0x38D($a0)
    /* 8D7AC 8009CFAC 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 8D7B0 8009CFB0 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 8D7B4 8009CFB4 00000000 */  nop
    /* 8D7B8 8009CFB8 07006214 */  bne        $v1, $v0, .L8009CFD8
    /* 8D7BC 8009CFBC 0B000224 */   addiu     $v0, $zero, 0xB
    /* 8D7C0 8009CFC0 0D000224 */  addiu      $v0, $zero, 0xD
    /* 8D7C4 8009CFC4 E20382A0 */  sb         $v0, 0x3E2($a0)
    /* 8D7C8 8009CFC8 9178020C */  jal        func_8009E244
    /* 8D7CC 8009CFCC E30380A0 */   sb        $zero, 0x3E3($a0)
    /* 8D7D0 8009CFD0 FE730208 */  j          .L8009CFF8
    /* 8D7D4 8009CFD4 00000000 */   nop
  .L8009CFD8:
    /* 8D7D8 8009CFD8 E20382A0 */  sb         $v0, 0x3E2($a0)
    /* 8D7DC 8009CFDC 7176020C */  jal        func_8009D9C4
    /* 8D7E0 8009CFE0 E30380A0 */   sb        $zero, 0x3E3($a0)
    /* 8D7E4 8009CFE4 FE730208 */  j          .L8009CFF8
    /* 8D7E8 8009CFE8 00000000 */   nop
  .L8009CFEC:
    /* 8D7EC 8009CFEC E20382A0 */  sb         $v0, 0x3E2($a0)
    /* 8D7F0 8009CFF0 3077020C */  jal        func_8009DCC0
    /* 8D7F4 8009CFF4 E30380A0 */   sb        $zero, 0x3E3($a0)
  .L8009CFF8:
    /* 8D7F8 8009CFF8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8D7FC 8009CFFC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8D800 8009D000 0800E003 */  jr         $ra
    /* 8D804 8009D004 00000000 */   nop
endlabel func_8009CF84
