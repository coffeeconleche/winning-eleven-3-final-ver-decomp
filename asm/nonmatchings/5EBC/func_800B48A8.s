nonmatching func_800B48A8, 0xA4

glabel func_800B48A8
    /* A50A8 800B48A8 1180023C */  lui        $v0, %hi(D_8010CD54)
    /* A50AC 800B48AC 54CD4284 */  lh         $v0, %lo(D_8010CD54)($v0)
    /* A50B0 800B48B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A50B4 800B48B4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A50B8 800B48B8 40100200 */  sll        $v0, $v0, 1
    /* A50BC 800B48BC 0E80033C */  lui        $v1, %hi(D_800E7800)
    /* A50C0 800B48C0 21186200 */  addu       $v1, $v1, $v0
    /* A50C4 800B48C4 00786394 */  lhu        $v1, %lo(D_800E7800)($v1)
    /* A50C8 800B48C8 0F80043C */  lui        $a0, %hi(D_800F0FD8)
    /* A50CC 800B48CC D80F8424 */  addiu      $a0, $a0, %lo(D_800F0FD8)
    /* A50D0 800B48D0 000083A4 */  sh         $v1, 0x0($a0)
    /* A50D4 800B48D4 0E80013C */  lui        $at, %hi(D_800E789C)
    /* A50D8 800B48D8 21082200 */  addu       $at, $at, $v0
    /* A50DC 800B48DC 9C782294 */  lhu        $v0, %lo(D_800E789C)($at)
    /* A50E0 800B48E0 59BB020C */  jal        func_800AED64
    /* A50E4 800B48E4 020082A4 */   sh        $v0, 0x2($a0)
    /* A50E8 800B48E8 27B9020C */  jal        func_800AE49C
    /* A50EC 800B48EC 01000424 */   addiu     $a0, $zero, 0x1
    /* A50F0 800B48F0 1180023C */  lui        $v0, %hi(D_8010CD50)
    /* A50F4 800B48F4 50CD428C */  lw         $v0, %lo(D_8010CD50)($v0)
    /* A50F8 800B48F8 00000000 */  nop
    /* A50FC 800B48FC 01004224 */  addiu      $v0, $v0, 0x1
    /* A5100 800B4900 21184000 */  addu       $v1, $v0, $zero
    /* A5104 800B4904 1180013C */  lui        $at, %hi(D_8010CD50)
    /* A5108 800B4908 02006014 */  bnez       $v1, .L800B4914
    /* A510C 800B490C 50CD23AC */   sw        $v1, %lo(D_8010CD50)($at)
    /* A5110 800B4910 01000324 */  addiu      $v1, $zero, 0x1
  .L800B4914:
    /* A5114 800B4914 1180023C */  lui        $v0, %hi(D_8010CD54)
    /* A5118 800B4918 54CD4284 */  lh         $v0, %lo(D_8010CD54)($v0)
    /* A511C 800B491C 1180013C */  lui        $at, %hi(D_8010CD50)
    /* A5120 800B4920 50CD23AC */  sw         $v1, %lo(D_8010CD50)($at)
    /* A5124 800B4924 0100422C */  sltiu      $v0, $v0, 0x1
    /* A5128 800B4928 1180013C */  lui        $at, %hi(D_8010CD54)
    /* A512C 800B492C F2D1020C */  jal        func_800B47C8
    /* A5130 800B4930 54CD22A4 */   sh        $v0, %lo(D_8010CD54)($at)
    /* A5134 800B4934 A6D1020C */  jal        func_800B4698
    /* A5138 800B4938 00000000 */   nop
    /* A513C 800B493C 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5140 800B4940 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5144 800B4944 0800E003 */  jr         $ra
    /* A5148 800B4948 00000000 */   nop
endlabel func_800B48A8
    /* A514C 800B494C 00000000 */  nop
    /* A5150 800B4950 00000000 */  nop
    /* A5154 800B4954 00000000 */  nop
