nonmatching func_801B89D0, 0x50

glabel func_801B89D0
    /* 2FA58 801B89D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FA5C 801B89D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FA60 801B89D8 21808000 */  addu       $s0, $a0, $zero
    /* 2FA64 801B89DC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2FA68 801B89E0 04000392 */  lbu        $v1, 0x4($s0)
    /* 2FA6C 801B89E4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2FA70 801B89E8 04006210 */  beq        $v1, $v0, .L801B89FC
    /* 2FA74 801B89EC 00000000 */   nop
    /* 2FA78 801B89F0 0000048E */  lw         $a0, 0x0($s0)
    /* 2FA7C 801B89F4 74E2060C */  jal        func_801B89D0
    /* 2FA80 801B89F8 00000000 */   nop
  .L801B89FC:
    /* 2FA84 801B89FC 06000292 */  lbu        $v0, 0x6($s0)
    /* 2FA88 801B8A00 00000000 */  nop
    /* 2FA8C 801B8A04 7F004230 */  andi       $v0, $v0, 0x7F
    /* 2FA90 801B8A08 060002A2 */  sb         $v0, 0x6($s0)
    /* 2FA94 801B8A0C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FA98 801B8A10 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FA9C 801B8A14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FAA0 801B8A18 0800E003 */  jr         $ra
    /* 2FAA4 801B8A1C 00000000 */   nop
endlabel func_801B89D0
