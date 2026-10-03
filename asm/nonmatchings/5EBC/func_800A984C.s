nonmatching func_800A984C, 0x94

glabel func_800A984C
    /* 9A04C 800A984C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9A050 800A9850 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9A054 800A9854 21808000 */  addu       $s0, $a0, $zero
    /* 9A058 800A9858 0F80043C */  lui        $a0, %hi(D_800F0EE8)
    /* 9A05C 800A985C E80E8424 */  addiu      $a0, $a0, %lo(D_800F0EE8)
    /* 9A060 800A9860 8000023C */  lui        $v0, (0x800000 >> 16)
    /* 9A064 800A9864 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9A068 800A9868 160090A7 */  sh         $s0, %gp_rel(D_800E6AA2)($gp)
    /* 9A06C 800A986C 000082AC */  sw         $v0, 0x0($a0)
    /* 9A070 800A9870 03000234 */  ori        $v0, $zero, 0x3
    /* 9A074 800A9874 00841000 */  sll        $s0, $s0, 16
    /* 9A078 800A9878 03841000 */  sra        $s0, $s0, 16
    /* 9A07C 800A987C 0F80013C */  lui        $at, %hi(D_800F0EEC)
    /* 9A080 800A9880 EC0E22AC */  sw         $v0, %lo(D_800F0EEC)($at)
    /* 9A084 800A9884 0D80023C */  lui        $v0, %hi(D_800CE738)
    /* 9A088 800A9888 38E74224 */  addiu      $v0, $v0, %lo(D_800CE738)
    /* 9A08C 800A988C 40181000 */  sll        $v1, $s0, 1
    /* 9A090 800A9890 21186200 */  addu       $v1, $v1, $v0
    /* 9A094 800A9894 00006294 */  lhu        $v0, 0x0($v1)
    /* 9A098 800A9898 00000000 */  nop
    /* 9A09C 800A989C C0110200 */  sll        $v0, $v0, 7
    /* 9A0A0 800A98A0 0F80013C */  lui        $at, %hi(D_800F0EF0)
    /* 9A0A4 800A98A4 F00E22A4 */  sh         $v0, %lo(D_800F0EF0)($at)
    /* 9A0A8 800A98A8 00006294 */  lhu        $v0, 0x0($v1)
    /* 9A0AC 800A98AC 00000000 */  nop
    /* 9A0B0 800A98B0 C0110200 */  sll        $v0, $v0, 7
    /* 9A0B4 800A98B4 0F80013C */  lui        $at, %hi(D_800F0EF2)
    /* 9A0B8 800A98B8 F20E22A4 */  sh         $v0, %lo(D_800F0EF2)($at)
    /* 9A0BC 800A98BC 2A11030C */  jal        func_800C44A8
    /* 9A0C0 800A98C0 00000000 */   nop
    /* 9A0C4 800A98C4 90AC020C */  jal        func_800AB240
    /* 9A0C8 800A98C8 21200002 */   addu      $a0, $s0, $zero
    /* 9A0CC 800A98CC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9A0D0 800A98D0 1000B08F */  lw         $s0, 0x10($sp)
    /* 9A0D4 800A98D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9A0D8 800A98D8 0800E003 */  jr         $ra
    /* 9A0DC 800A98DC 00000000 */   nop
endlabel func_800A984C
