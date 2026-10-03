nonmatching func_8005C7A0, 0x4C

glabel func_8005C7A0
    /* 4CFA0 8005C7A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4CFA4 8005C7A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4CFA8 8005C7A8 00840400 */  sll        $s0, $a0, 16
    /* 4CFAC 8005C7AC 03841000 */  sra        $s0, $s0, 16
    /* 4CFB0 8005C7B0 01001026 */  addiu      $s0, $s0, 0x1
    /* 4CFB4 8005C7B4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4CFB8 8005C7B8 AE79000C */  jal        func_8001E6B8
    /* 4CFBC 8005C7BC 21200002 */   addu      $a0, $s0, $zero
    /* 4CFC0 8005C7C0 21200002 */  addu       $a0, $s0, $zero
    /* 4CFC4 8005C7C4 AE79000C */  jal        func_8001E6B8
    /* 4CFC8 8005C7C8 21804000 */   addu      $s0, $v0, $zero
    /* 4CFCC 8005C7CC 23800202 */  subu       $s0, $s0, $v0
    /* 4CFD0 8005C7D0 00841000 */  sll        $s0, $s0, 16
    /* 4CFD4 8005C7D4 03141000 */  sra        $v0, $s0, 16
    /* 4CFD8 8005C7D8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4CFDC 8005C7DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 4CFE0 8005C7E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4CFE4 8005C7E4 0800E003 */  jr         $ra
    /* 4CFE8 8005C7E8 00000000 */   nop
endlabel func_8005C7A0
