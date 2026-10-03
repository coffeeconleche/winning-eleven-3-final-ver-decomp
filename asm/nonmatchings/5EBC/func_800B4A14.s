nonmatching func_800B4A14, 0x2C

glabel func_800B4A14
    /* A5214 800B4A14 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A5218 800B4A18 1000B0AF */  sw         $s0, 0x10($sp)
    /* A521C 800B4A1C 1400BFAF */  sw         $ra, 0x14($sp)
    /* A5220 800B4A20 B6CF020C */  jal        func_800B3ED8
    /* A5224 800B4A24 21808000 */   addu      $s0, $a0, $zero
    /* A5228 800B4A28 C2CF020C */  jal        func_800B3F08
    /* A522C 800B4A2C 21200002 */   addu      $a0, $s0, $zero
    /* A5230 800B4A30 1400BF8F */  lw         $ra, 0x14($sp)
    /* A5234 800B4A34 1000B08F */  lw         $s0, 0x10($sp)
    /* A5238 800B4A38 0800E003 */  jr         $ra
    /* A523C 800B4A3C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B4A14
