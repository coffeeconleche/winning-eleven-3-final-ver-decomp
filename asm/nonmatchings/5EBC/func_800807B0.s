nonmatching func_800807B0, 0x40

glabel func_800807B0
    /* 70FB0 800807B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 70FB4 800807B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 70FB8 800807B8 21808000 */  addu       $s0, $a0, $zero
    /* 70FBC 800807BC FF00A630 */  andi       $a2, $a1, 0xFF
    /* 70FC0 800807C0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 70FC4 800807C4 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 70FC8 800807C8 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 70FCC 800807CC F36D010C */  jal        func_8005B7CC
    /* 70FD0 800807D0 00000000 */   nop
    /* 70FD4 800807D4 AA0302A2 */  sb         $v0, 0x3AA($s0)
    /* 70FD8 800807D8 A40302A2 */  sb         $v0, 0x3A4($s0)
    /* 70FDC 800807DC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 70FE0 800807E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 70FE4 800807E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 70FE8 800807E8 0800E003 */  jr         $ra
    /* 70FEC 800807EC 00000000 */   nop
endlabel func_800807B0
