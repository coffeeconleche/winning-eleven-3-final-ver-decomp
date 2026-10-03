nonmatching func_800AD0A4, 0x98

glabel func_800AD0A4
    /* 9D8A4 800AD0A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9D8A8 800AD0A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9D8AC 800AD0AC 21808000 */  addu       $s0, $a0, $zero
    /* 9D8B0 800AD0B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9D8B4 800AD0B4 2188A000 */  addu       $s1, $a1, $zero
    /* 9D8B8 800AD0B8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9D8BC 800AD0BC 2190C000 */  addu       $s2, $a2, $zero
    /* 9D8C0 800AD0C0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9D8C4 800AD0C4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9D8C8 800AD0C8 62B5020C */  jal        func_800AD588
    /* 9D8CC 800AD0CC 2198E000 */   addu      $s3, $a3, $zero
    /* 9D8D0 800AD0D0 F6B4020C */  jal        func_800AD3D8
    /* 9D8D4 800AD0D4 00000000 */   nop
    /* 9D8D8 800AD0D8 0CB5020C */  jal        func_800AD430
    /* 9D8DC 800AD0DC 00000000 */   nop
    /* 9D8E0 800AD0E0 9AB3020C */  jal        func_800ACE68
    /* 9D8E4 800AD0E4 00000000 */   nop
    /* 9D8E8 800AD0E8 C2B3020C */  jal        func_800ACF08
    /* 9D8EC 800AD0EC 21200000 */   addu      $a0, $zero, $zero
    /* 9D8F0 800AD0F0 8FB4020C */  jal        func_800AD23C
    /* 9D8F4 800AD0F4 00000000 */   nop
    /* 9D8F8 800AD0F8 21200002 */  addu       $a0, $s0, $zero
    /* 9D8FC 800AD0FC 21282002 */  addu       $a1, $s1, $zero
    /* 9D900 800AD100 21304002 */  addu       $a2, $s2, $zero
    /* 9D904 800AD104 F2B4020C */  jal        func_800AD3C8
    /* 9D908 800AD108 21386002 */   addu      $a3, $s3, $zero
    /* 9D90C 800AD10C 39B5020C */  jal        func_800AD4E4
    /* 9D910 800AD110 00000000 */   nop
    /* 9D914 800AD114 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D918 800AD118 0D80013C */  lui        $at, %hi(D_800CEA64)
    /* 9D91C 800AD11C 64EA22AC */  sw         $v0, %lo(D_800CEA64)($at)
    /* 9D920 800AD120 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9D924 800AD124 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9D928 800AD128 1800B28F */  lw         $s2, 0x18($sp)
    /* 9D92C 800AD12C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9D930 800AD130 1000B08F */  lw         $s0, 0x10($sp)
    /* 9D934 800AD134 0800E003 */  jr         $ra
    /* 9D938 800AD138 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AD0A4
