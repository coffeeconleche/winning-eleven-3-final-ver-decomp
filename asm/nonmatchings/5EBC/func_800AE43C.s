nonmatching func_800AE43C, 0x60

glabel func_800AE43C
    /* 9EC3C 800AE43C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9EC40 800AE440 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EC44 800AE444 0D80103C */  lui        $s0, %hi(D_800CEAC6)
    /* 9EC48 800AE448 C6EA1026 */  addiu      $s0, $s0, %lo(D_800CEAC6)
    /* 9EC4C 800AE44C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9EC50 800AE450 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EC54 800AE454 00000292 */  lbu        $v0, 0x0($s0)
    /* 9EC58 800AE458 00000000 */  nop
    /* 9EC5C 800AE45C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9EC60 800AE460 07004014 */  bnez       $v0, .L800AE480
    /* 9EC64 800AE464 21888000 */   addu      $s1, $a0, $zero
    /* 9EC68 800AE468 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9EC6C 800AE46C C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9EC70 800AE470 0180043C */  lui        $a0, %hi(D_80014ED4)
    /* 9EC74 800AE474 D44E8424 */  addiu      $a0, $a0, %lo(D_80014ED4)
    /* 9EC78 800AE478 09F84000 */  jalr       $v0
    /* 9EC7C 800AE47C 21282002 */   addu      $a1, $s1, $zero
  .L800AE480:
    /* 9EC80 800AE480 0A00028E */  lw         $v0, 0xA($s0)
    /* 9EC84 800AE484 0A0011AE */  sw         $s1, 0xA($s0)
    /* 9EC88 800AE488 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9EC8C 800AE48C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EC90 800AE490 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EC94 800AE494 0800E003 */  jr         $ra
    /* 9EC98 800AE498 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE43C
