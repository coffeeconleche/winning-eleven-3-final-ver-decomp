nonmatching func_8006F3E0, 0x48

glabel func_8006F3E0
    /* 5FBE0 8006F3E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5FBE4 8006F3E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5FBE8 8006F3E8 2188C000 */  addu       $s1, $a2, $zero
    /* 5FBEC 8006F3EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5FBF0 8006F3F0 FF009030 */  andi       $s0, $a0, 0xFF
    /* 5FBF4 8006F3F4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5FBF8 8006F3F8 0ABD010C */  jal        func_8006F428
    /* 5FBFC 8006F3FC 21200002 */   addu      $a0, $s0, $zero
    /* 5FC00 8006F400 21200002 */  addu       $a0, $s0, $zero
    /* 5FC04 8006F404 2ABD010C */  jal        func_8006F4A8
    /* 5FC08 8006F408 21282002 */   addu      $a1, $s1, $zero
    /* 5FC0C 8006F40C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5FC10 8006F410 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5FC14 8006F414 1400B18F */  lw         $s1, 0x14($sp)
    /* 5FC18 8006F418 1000B08F */  lw         $s0, 0x10($sp)
    /* 5FC1C 8006F41C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5FC20 8006F420 0800E003 */  jr         $ra
    /* 5FC24 8006F424 00000000 */   nop
endlabel func_8006F3E0
