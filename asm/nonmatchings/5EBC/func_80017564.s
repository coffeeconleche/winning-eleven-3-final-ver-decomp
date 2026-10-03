nonmatching func_80017564, 0x120

glabel func_80017564
    /* 7D64 80017564 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7D68 80017568 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7D6C 8001756C 21808000 */  addu       $s0, $a0, $zero
    /* 7D70 80017570 FFFF0332 */  andi       $v1, $s0, 0xFFFF
    /* 7D74 80017574 40100300 */  sll        $v0, $v1, 1
    /* 7D78 80017578 21104300 */  addu       $v0, $v0, $v1
    /* 7D7C 8001757C 80100200 */  sll        $v0, $v0, 2
    /* 7D80 80017580 1800BFAF */  sw         $ra, 0x18($sp)
    /* 7D84 80017584 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7D88 80017588 0C80013C */  lui        $at, %hi(D_800C6098)
    /* 7D8C 8001758C 21082200 */  addu       $at, $at, $v0
    /* 7D90 80017590 9860248C */  lw         $a0, %lo(D_800C6098)($at)
    /* 7D94 80017594 0F80013C */  lui        $at, %hi(D_800F3564)
    /* 7D98 80017598 643520A0 */  sb         $zero, %lo(D_800F3564)($at)
    /* 7D9C 8001759C 2B008018 */  blez       $a0, .L8001764C
    /* 7DA0 800175A0 00000000 */   nop
    /* 7DA4 800175A4 0E80053C */  lui        $a1, %hi(D_800E6BF8)
    /* 7DA8 800175A8 F86BA524 */  addiu      $a1, $a1, %lo(D_800E6BF8)
    /* 7DAC 800175AC 25DD020C */  jal        func_800B7494
    /* 7DB0 800175B0 00000000 */   nop
    /* 7DB4 800175B4 09000424 */  addiu      $a0, $zero, 0x9
  .L800175B8:
    /* 7DB8 800175B8 21280000 */  addu       $a1, $zero, $zero
    /* 7DBC 800175BC A9DC020C */  jal        func_800B72A4
    /* 7DC0 800175C0 21300000 */   addu      $a2, $zero, $zero
    /* 7DC4 800175C4 FCFF4010 */  beqz       $v0, .L800175B8
    /* 7DC8 800175C8 09000424 */   addiu     $a0, $zero, 0x9
    /* 7DCC 800175CC FFFF0332 */  andi       $v1, $s0, 0xFFFF
    /* 7DD0 800175D0 40100300 */  sll        $v0, $v1, 1
    /* 7DD4 800175D4 21884300 */  addu       $s1, $v0, $v1
    /* 7DD8 800175D8 02000424 */  addiu      $a0, $zero, 0x2
  .L800175DC:
    /* 7DDC 800175DC 0E80053C */  lui        $a1, %hi(D_800E6BF8)
    /* 7DE0 800175E0 F86BA524 */  addiu      $a1, $a1, %lo(D_800E6BF8)
    /* 7DE4 800175E4 A9DC020C */  jal        func_800B72A4
    /* 7DE8 800175E8 21300000 */   addu      $a2, $zero, $zero
    /* 7DEC 800175EC FBFF4010 */  beqz       $v0, .L800175DC
    /* 7DF0 800175F0 02000424 */   addiu     $a0, $zero, 0x2
    /* 7DF4 800175F4 80801100 */  sll        $s0, $s1, 2
  .L800175F8:
    /* 7DF8 800175F8 0C80013C */  lui        $at, %hi(D_800C60A0)
    /* 7DFC 800175FC 21083000 */  addu       $at, $at, $s0
    /* 7E00 80017600 A060248C */  lw         $a0, %lo(D_800C60A0)($at)
    /* 7E04 80017604 0C80013C */  lui        $at, %hi(D_800C609C)
    /* 7E08 80017608 21083000 */  addu       $at, $at, $s0
    /* 7E0C 8001760C 9C60258C */  lw         $a1, %lo(D_800C609C)($at)
    /* 7E10 80017610 D2E4020C */  jal        func_800B9348
    /* 7E14 80017614 80000624 */   addiu     $a2, $zero, 0x80
    /* 7E18 80017618 F7FF4010 */  beqz       $v0, .L800175F8
    /* 7E1C 8001761C 01000424 */   addiu     $a0, $zero, 0x1
    /* 7E20 80017620 FFFF1024 */  addiu      $s0, $zero, -0x1
  .L80017624:
    /* 7E24 80017624 12E5020C */  jal        func_800B9448
    /* 7E28 80017628 21280000 */   addu      $a1, $zero, $zero
    /* 7E2C 8001762C 0E80013C */  lui        $at, %hi(D_800E6BFC)
    /* 7E30 80017630 FC6B22AC */  sw         $v0, %lo(D_800E6BFC)($at)
    /* 7E34 80017634 E9FF5010 */  beq        $v0, $s0, .L800175DC
    /* 7E38 80017638 02000424 */   addiu     $a0, $zero, 0x2
    /* 7E3C 8001763C F9FF4014 */  bnez       $v0, .L80017624
    /* 7E40 80017640 01000424 */   addiu     $a0, $zero, 0x1
    /* 7E44 80017644 9B5D0008 */  j          .L8001766C
    /* 7E48 80017648 00000000 */   nop
  .L8001764C:
    /* 7E4C 8001764C 0C80013C */  lui        $at, %hi(D_800C60A0)
    /* 7E50 80017650 21082200 */  addu       $at, $at, $v0
    /* 7E54 80017654 A060268C */  lw         $a2, %lo(D_800C60A0)($at)
    /* 7E58 80017658 0C80013C */  lui        $at, %hi(D_800C609C)
    /* 7E5C 8001765C 21082200 */  addu       $at, $at, $v0
    /* 7E60 80017660 9C60258C */  lw         $a1, %lo(D_800C609C)($at)
    /* 7E64 80017664 92B5020C */  jal        func_800AD648
    /* 7E68 80017668 C0320600 */   sll       $a2, $a2, 11
  .L8001766C:
    /* 7E6C 8001766C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 7E70 80017670 1400B18F */  lw         $s1, 0x14($sp)
    /* 7E74 80017674 1000B08F */  lw         $s0, 0x10($sp)
    /* 7E78 80017678 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 7E7C 8001767C 0800E003 */  jr         $ra
    /* 7E80 80017680 00000000 */   nop
endlabel func_80017564
