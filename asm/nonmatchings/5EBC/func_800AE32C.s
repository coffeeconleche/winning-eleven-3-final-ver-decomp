nonmatching func_800AE32C, 0x5C

glabel func_800AE32C
    /* 9EB2C 800AE32C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9EB30 800AE330 0D80033C */  lui        $v1, %hi(D_800CEAC6)
    /* 9EB34 800AE334 C6EA6324 */  addiu      $v1, $v1, %lo(D_800CEAC6)
    /* 9EB38 800AE338 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9EB3C 800AE33C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EB40 800AE340 00007090 */  lbu        $s0, 0x0($v1)
    /* 9EB44 800AE344 000064A0 */  sb         $a0, 0x0($v1)
    /* 9EB48 800AE348 FF008430 */  andi       $a0, $a0, 0xFF
    /* 9EB4C 800AE34C 0A008010 */  beqz       $a0, .L800AE378
    /* 9EB50 800AE350 21100002 */   addu      $v0, $s0, $zero
    /* 9EB54 800AE354 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9EB58 800AE358 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9EB5C 800AE35C 00006590 */  lbu        $a1, 0x0($v1)
    /* 9EB60 800AE360 FEFF6690 */  lbu        $a2, -0x2($v1)
    /* 9EB64 800AE364 01006790 */  lbu        $a3, 0x1($v1)
    /* 9EB68 800AE368 0180043C */  lui        $a0, %hi(D_80014E94)
    /* 9EB6C 800AE36C 09F84000 */  jalr       $v0
    /* 9EB70 800AE370 944E8424 */   addiu     $a0, $a0, %lo(D_80014E94)
    /* 9EB74 800AE374 21100002 */  addu       $v0, $s0, $zero
  .L800AE378:
    /* 9EB78 800AE378 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9EB7C 800AE37C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EB80 800AE380 0800E003 */  jr         $ra
    /* 9EB84 800AE384 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AE32C
