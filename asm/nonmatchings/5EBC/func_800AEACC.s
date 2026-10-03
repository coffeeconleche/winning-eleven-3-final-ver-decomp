nonmatching func_800AEACC, 0x5C

glabel func_800AEACC
    /* 9F2CC 800AEACC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F2D0 800AEAD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F2D4 800AEAD4 21808000 */  addu       $s0, $a0, $zero
    /* 9F2D8 800AEAD8 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9F2DC 800AEADC BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9F2E0 800AEAE0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9F2E4 800AEAE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F2E8 800AEAE8 3C00428C */  lw         $v0, 0x3C($v0)
    /* 9F2EC 800AEAEC 03001192 */  lbu        $s1, 0x3($s0)
    /* 9F2F0 800AEAF0 09F84000 */  jalr       $v0
    /* 9F2F4 800AEAF4 21200000 */   addu      $a0, $zero, $zero
    /* 9F2F8 800AEAF8 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9F2FC 800AEAFC BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9F300 800AEB00 04000426 */  addiu      $a0, $s0, 0x4
    /* 9F304 800AEB04 1400428C */  lw         $v0, 0x14($v0)
    /* 9F308 800AEB08 00000000 */  nop
    /* 9F30C 800AEB0C 09F84000 */  jalr       $v0
    /* 9F310 800AEB10 21282002 */   addu      $a1, $s1, $zero
    /* 9F314 800AEB14 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9F318 800AEB18 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F31C 800AEB1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F320 800AEB20 0800E003 */  jr         $ra
    /* 9F324 800AEB24 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AEACC
