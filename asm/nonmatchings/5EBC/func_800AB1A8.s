nonmatching func_800AB1A8, 0x98

glabel func_800AB1A8
    /* 9B9A8 800AB1A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B9AC 800AB1AC 00240400 */  sll        $a0, $a0, 16
    /* 9B9B0 800AB1B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9B9B4 800AB1B4 03840400 */  sra        $s0, $a0, 16
    /* 9B9B8 800AB1B8 40101000 */  sll        $v0, $s0, 1
    /* 9B9BC 800AB1BC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9B9C0 800AB1C0 0D80013C */  lui        $at, %hi(D_800CE738)
    /* 9B9C4 800AB1C4 38E72124 */  addiu      $at, $at, %lo(D_800CE738)
    /* 9B9C8 800AB1C8 21082200 */  addu       $at, $at, $v0
    /* 9B9CC 800AB1CC 00002494 */  lhu        $a0, 0x0($at)
    /* 9B9D0 800AB1D0 4A008387 */  lh         $v1, %gp_rel(D_800E6AD6)($gp)
    /* 9B9D4 800AB1D4 00140400 */  sll        $v0, $a0, 16
    /* 9B9D8 800AB1D8 032C0200 */  sra        $a1, $v0, 16
    /* 9B9DC 800AB1DC 18006500 */  mult       $v1, $a1
    /* 9B9E0 800AB1E0 E00084A7 */  sh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9B9E4 800AB1E4 12180000 */  mflo       $v1
    /* 9B9E8 800AB1E8 02006104 */  bgez       $v1, .L800AB1F4
    /* 9B9EC 800AB1EC 00000000 */   nop
    /* 9B9F0 800AB1F0 7F006324 */  addiu      $v1, $v1, 0x7F
  .L800AB1F4:
    /* 9B9F4 800AB1F4 50008287 */  lh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9B9F8 800AB1F8 00000000 */  nop
    /* 9B9FC 800AB1FC 18004500 */  mult       $v0, $a1
    /* 9BA00 800AB200 40120300 */  sll        $v0, $v1, 9
    /* 9BA04 800AB204 12300000 */  mflo       $a2
    /* 9BA08 800AB208 0200C104 */  bgez       $a2, .L800AB214
    /* 9BA0C 800AB20C 032C0200 */   sra       $a1, $v0, 16
    /* 9BA10 800AB210 7F00C624 */  addiu      $a2, $a2, 0x7F
  .L800AB214:
    /* 9BA14 800AB214 21200000 */  addu       $a0, $zero, $zero
    /* 9BA18 800AB218 40320600 */  sll        $a2, $a2, 9
    /* 9BA1C 800AB21C 16F3020C */  jal        func_800BCC58
    /* 9BA20 800AB220 03340600 */   sra       $a2, $a2, 16
    /* 9BA24 800AB224 90AC020C */  jal        func_800AB240
    /* 9BA28 800AB228 21200002 */   addu      $a0, $s0, $zero
    /* 9BA2C 800AB22C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9BA30 800AB230 1000B08F */  lw         $s0, 0x10($sp)
    /* 9BA34 800AB234 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9BA38 800AB238 0800E003 */  jr         $ra
    /* 9BA3C 800AB23C 00000000 */   nop
endlabel func_800AB1A8
