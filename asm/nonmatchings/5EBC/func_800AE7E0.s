nonmatching func_800AE7E0, 0x60

glabel func_800AE7E0
    /* 9EFE0 800AE7E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9EFE4 800AE7E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EFE8 800AE7E8 21808000 */  addu       $s0, $a0, $zero
    /* 9EFEC 800AE7EC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EFF0 800AE7F0 2188A000 */  addu       $s1, $a1, $zero
    /* 9EFF4 800AE7F4 0180043C */  lui        $a0, %hi(D_80014F54)
    /* 9EFF8 800AE7F8 544F8424 */  addiu      $a0, $a0, %lo(D_80014F54)
    /* 9EFFC 800AE7FC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9F000 800AE800 67B9020C */  jal        func_800AE59C
    /* 9F004 800AE804 21280002 */   addu      $a1, $s0, $zero
    /* 9F008 800AE808 21280002 */  addu       $a1, $s0, $zero
    /* 9F00C 800AE80C 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9F010 800AE810 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9F014 800AE814 08000624 */  addiu      $a2, $zero, 0x8
    /* 9F018 800AE818 2000448C */  lw         $a0, 0x20($v0)
    /* 9F01C 800AE81C 0800428C */  lw         $v0, 0x8($v0)
    /* 9F020 800AE820 00000000 */  nop
    /* 9F024 800AE824 09F84000 */  jalr       $v0
    /* 9F028 800AE828 21382002 */   addu      $a3, $s1, $zero
    /* 9F02C 800AE82C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9F030 800AE830 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F034 800AE834 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F038 800AE838 0800E003 */  jr         $ra
    /* 9F03C 800AE83C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE7E0
