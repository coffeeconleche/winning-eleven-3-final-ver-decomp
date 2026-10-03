nonmatching func_800AE840, 0x60

glabel func_800AE840
    /* 9F040 800AE840 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F044 800AE844 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F048 800AE848 21808000 */  addu       $s0, $a0, $zero
    /* 9F04C 800AE84C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F050 800AE850 2188A000 */  addu       $s1, $a1, $zero
    /* 9F054 800AE854 0180043C */  lui        $a0, %hi(D_80014F60)
    /* 9F058 800AE858 604F8424 */  addiu      $a0, $a0, %lo(D_80014F60)
    /* 9F05C 800AE85C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9F060 800AE860 67B9020C */  jal        func_800AE59C
    /* 9F064 800AE864 21280002 */   addu      $a1, $s0, $zero
    /* 9F068 800AE868 21280002 */  addu       $a1, $s0, $zero
    /* 9F06C 800AE86C 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9F070 800AE870 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9F074 800AE874 08000624 */  addiu      $a2, $zero, 0x8
    /* 9F078 800AE878 1C00448C */  lw         $a0, 0x1C($v0)
    /* 9F07C 800AE87C 0800428C */  lw         $v0, 0x8($v0)
    /* 9F080 800AE880 00000000 */  nop
    /* 9F084 800AE884 09F84000 */  jalr       $v0
    /* 9F088 800AE888 21382002 */   addu      $a3, $s1, $zero
    /* 9F08C 800AE88C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9F090 800AE890 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F094 800AE894 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F098 800AE898 0800E003 */  jr         $ra
    /* 9F09C 800AE89C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE840
