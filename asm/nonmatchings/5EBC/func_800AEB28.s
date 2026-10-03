nonmatching func_800AEB28, 0x70

glabel func_800AEB28
    /* 9F328 800AEB28 0D80023C */  lui        $v0, %hi(D_800CEAC6)
    /* 9F32C 800AEB2C C6EA4290 */  lbu        $v0, %lo(D_800CEAC6)($v0)
    /* 9F330 800AEB30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9F334 800AEB34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F338 800AEB38 21808000 */  addu       $s0, $a0, $zero
    /* 9F33C 800AEB3C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9F340 800AEB40 08004014 */  bnez       $v0, .L800AEB64
    /* 9F344 800AEB44 1400BFAF */   sw        $ra, 0x14($sp)
    /* 9F348 800AEB48 0180043C */  lui        $a0, %hi(D_80014FA8)
    /* 9F34C 800AEB4C A84F8424 */  addiu      $a0, $a0, %lo(D_80014FA8)
    /* 9F350 800AEB50 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9F354 800AEB54 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9F358 800AEB58 00000000 */  nop
    /* 9F35C 800AEB5C 09F84000 */  jalr       $v0
    /* 9F360 800AEB60 21280002 */   addu      $a1, $s0, $zero
  .L800AEB64:
    /* 9F364 800AEB64 21280002 */  addu       $a1, $s0, $zero
    /* 9F368 800AEB68 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9F36C 800AEB6C BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9F370 800AEB70 21300000 */  addu       $a2, $zero, $zero
    /* 9F374 800AEB74 1800448C */  lw         $a0, 0x18($v0)
    /* 9F378 800AEB78 0800428C */  lw         $v0, 0x8($v0)
    /* 9F37C 800AEB7C 00000000 */  nop
    /* 9F380 800AEB80 09F84000 */  jalr       $v0
    /* 9F384 800AEB84 21380000 */   addu      $a3, $zero, $zero
    /* 9F388 800AEB88 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9F38C 800AEB8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F390 800AEB90 0800E003 */  jr         $ra
    /* 9F394 800AEB94 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AEB28
