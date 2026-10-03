nonmatching func_8006FB30, 0x60

glabel func_8006FB30
    /* 60330 8006FB30 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 60334 8006FB34 1800B2AF */  sw         $s2, 0x18($sp)
    /* 60338 8006FB38 2190E000 */  addu       $s2, $a3, $zero
    /* 6033C 8006FB3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 60340 8006FB40 FF009130 */  andi       $s1, $a0, 0xFF
    /* 60344 8006FB44 21202002 */  addu       $a0, $s1, $zero
    /* 60348 8006FB48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6034C 8006FB4C FF00B030 */  andi       $s0, $a1, 0xFF
    /* 60350 8006FB50 21280002 */  addu       $a1, $s0, $zero
    /* 60354 8006FB54 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 60358 8006FB58 E4BE010C */  jal        func_8006FB90
    /* 6035C 8006FB5C FF00C630 */   andi      $a2, $a2, 0xFF
    /* 60360 8006FB60 21202002 */  addu       $a0, $s1, $zero
    /* 60364 8006FB64 21280002 */  addu       $a1, $s0, $zero
    /* 60368 8006FB68 F3BE010C */  jal        func_8006FBCC
    /* 6036C 8006FB6C FF004632 */   andi      $a2, $s2, 0xFF
    /* 60370 8006FB70 01000224 */  addiu      $v0, $zero, 0x1
    /* 60374 8006FB74 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 60378 8006FB78 1800B28F */  lw         $s2, 0x18($sp)
    /* 6037C 8006FB7C 1400B18F */  lw         $s1, 0x14($sp)
    /* 60380 8006FB80 1000B08F */  lw         $s0, 0x10($sp)
    /* 60384 8006FB84 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 60388 8006FB88 0800E003 */  jr         $ra
    /* 6038C 8006FB8C 00000000 */   nop
endlabel func_8006FB30
