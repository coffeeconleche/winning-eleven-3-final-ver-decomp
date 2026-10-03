nonmatching func_800AF2B4, 0x40

glabel func_800AF2B4
    /* 9FAB4 800AF2B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9FAB8 800AF2B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9FABC 800AF2BC 21808000 */  addu       $s0, $a0, $zero
    /* 9FAC0 800AF2C0 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FAC4 800AF2C4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9FAC8 800AF2C8 030002A2 */  sb         $v0, 0x3($s0)
    /* 9FACC 800AF2CC 0000A484 */  lh         $a0, 0x0($a1)
    /* 9FAD0 800AF2D0 0200A584 */  lh         $a1, 0x2($a1)
    /* 9FAD4 800AF2D4 54BE020C */  jal        func_800AF950
    /* 9FAD8 800AF2D8 00000000 */   nop
    /* 9FADC 800AF2DC 040002AE */  sw         $v0, 0x4($s0)
    /* 9FAE0 800AF2E0 080000AE */  sw         $zero, 0x8($s0)
    /* 9FAE4 800AF2E4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9FAE8 800AF2E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 9FAEC 800AF2EC 0800E003 */  jr         $ra
    /* 9FAF0 800AF2F0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AF2B4
