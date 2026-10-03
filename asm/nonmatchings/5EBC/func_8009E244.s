nonmatching func_8009E244, 0x60

glabel func_8009E244
    /* 8EA44 8009E244 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8EA48 8009E248 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8EA4C 8009E24C 21808000 */  addu       $s0, $a0, $zero
    /* 8EA50 8009E250 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8EA54 8009E254 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 8EA58 8009E258 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 8EA5C 8009E25C A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 8EA60 8009E260 00000000 */  nop
    /* 8EA64 8009E264 04006210 */  beq        $v1, $v0, .L8009E278
    /* 8EA68 8009E268 00000000 */   nop
    /* 8EA6C 8009E26C E20300A2 */  sb         $zero, 0x3E2($s0)
    /* 8EA70 8009E270 A4780208 */  j          .L8009E290
    /* 8EA74 8009E274 E30300A2 */   sb        $zero, 0x3E3($s0)
  .L8009E278:
    /* 8EA78 8009E278 757A010C */  jal        func_8005E9D4
    /* 8EA7C 8009E27C 21200002 */   addu      $a0, $s0, $zero
    /* 8EA80 8009E280 02000296 */  lhu        $v0, 0x2($s0)
    /* 8EA84 8009E284 06000396 */  lhu        $v1, 0x6($s0)
    /* 8EA88 8009E288 BC0302A6 */  sh         $v0, 0x3BC($s0)
    /* 8EA8C 8009E28C BE0303A6 */  sh         $v1, 0x3BE($s0)
  .L8009E290:
    /* 8EA90 8009E290 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8EA94 8009E294 1000B08F */  lw         $s0, 0x10($sp)
    /* 8EA98 8009E298 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8EA9C 8009E29C 0800E003 */  jr         $ra
    /* 8EAA0 8009E2A0 00000000 */   nop
endlabel func_8009E244
