nonmatching func_800AD13C, 0x98

glabel func_800AD13C
    /* 9D93C 800AD13C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9D940 800AD140 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9D944 800AD144 21808000 */  addu       $s0, $a0, $zero
    /* 9D948 800AD148 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9D94C 800AD14C 2188A000 */  addu       $s1, $a1, $zero
    /* 9D950 800AD150 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9D954 800AD154 2190C000 */  addu       $s2, $a2, $zero
    /* 9D958 800AD158 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9D95C 800AD15C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9D960 800AD160 62B5020C */  jal        func_800AD588
    /* 9D964 800AD164 2198E000 */   addu      $s3, $a3, $zero
    /* 9D968 800AD168 F6B4020C */  jal        func_800AD3D8
    /* 9D96C 800AD16C 00000000 */   nop
    /* 9D970 800AD170 0CB5020C */  jal        func_800AD430
    /* 9D974 800AD174 00000000 */   nop
    /* 9D978 800AD178 9AB3020C */  jal        func_800ACE68
    /* 9D97C 800AD17C 00000000 */   nop
    /* 9D980 800AD180 C2B3020C */  jal        func_800ACF08
    /* 9D984 800AD184 21200000 */   addu      $a0, $zero, $zero
    /* 9D988 800AD188 8FB4020C */  jal        func_800AD23C
    /* 9D98C 800AD18C 00000000 */   nop
    /* 9D990 800AD190 21200002 */  addu       $a0, $s0, $zero
    /* 9D994 800AD194 21282002 */  addu       $a1, $s1, $zero
    /* 9D998 800AD198 21304002 */  addu       $a2, $s2, $zero
    /* 9D99C 800AD19C E6B4020C */  jal        func_800AD398
    /* 9D9A0 800AD1A0 21386002 */   addu      $a3, $s3, $zero
    /* 9D9A4 800AD1A4 39B5020C */  jal        func_800AD4E4
    /* 9D9A8 800AD1A8 00000000 */   nop
    /* 9D9AC 800AD1AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D9B0 800AD1B0 0D80013C */  lui        $at, %hi(D_800CEA64)
    /* 9D9B4 800AD1B4 64EA22AC */  sw         $v0, %lo(D_800CEA64)($at)
    /* 9D9B8 800AD1B8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9D9BC 800AD1BC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9D9C0 800AD1C0 1800B28F */  lw         $s2, 0x18($sp)
    /* 9D9C4 800AD1C4 1400B18F */  lw         $s1, 0x14($sp)
    /* 9D9C8 800AD1C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 9D9CC 800AD1CC 0800E003 */  jr         $ra
    /* 9D9D0 800AD1D0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AD13C
