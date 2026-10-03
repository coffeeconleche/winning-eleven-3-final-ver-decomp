nonmatching func_800AAA7C, 0x5C

glabel func_800AAA7C
    /* 9B27C 800AAA7C 9E008297 */  lhu        $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B280 800AAA80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B284 800AAA84 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B288 800AAA88 CEFF4224 */  addiu      $v0, $v0, -0x32
    /* 9B28C 800AAA8C 9E0082A7 */  sh         $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B290 800AAA90 00140200 */  sll        $v0, $v0, 16
    /* 9B294 800AAA94 04004104 */  bgez       $v0, .L800AAAA8
    /* 9B298 800AAA98 00000000 */   nop
    /* 9B29C 800AAA9C 9E0080A7 */  sh         $zero, %gp_rel(D_800E6B2A)($gp)
    /* 9B2A0 800AAAA0 24AB020C */  jal        func_800AAC90
    /* 9B2A4 800AAAA4 00000000 */   nop
  .L800AAAA8:
    /* 9B2A8 800AAAA8 9E008297 */  lhu        $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B2AC 800AAAAC 0F80043C */  lui        $a0, %hi(D_800F0F30)
    /* 9B2B0 800AAAB0 300F8424 */  addiu      $a0, $a0, %lo(D_800F0F30)
    /* 9B2B4 800AAAB4 000082A4 */  sh         $v0, 0x0($a0)
    /* 9B2B8 800AAAB8 0F80013C */  lui        $at, %hi(D_800F0F32)
    /* 9B2BC 800AAABC 320F22A4 */  sh         $v0, %lo(D_800F0F32)($at)
    /* 9B2C0 800AAAC0 2A11030C */  jal        func_800C44A8
    /* 9B2C4 800AAAC4 F8FF8424 */   addiu     $a0, $a0, -0x8
    /* 9B2C8 800AAAC8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B2CC 800AAACC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B2D0 800AAAD0 0800E003 */  jr         $ra
    /* 9B2D4 800AAAD4 00000000 */   nop
endlabel func_800AAA7C
