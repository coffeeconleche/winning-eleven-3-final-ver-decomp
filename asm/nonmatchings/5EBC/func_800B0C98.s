nonmatching func_800B0C98, 0xEC

glabel func_800B0C98
    /* A1498 800B0C98 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A149C 800B0C9C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A14A0 800B0CA0 21808000 */  addu       $s0, $a0, $zero
    /* A14A4 800B0CA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A14A8 800B0CA8 2188A000 */  addu       $s1, $a1, $zero
    /* A14AC 800B0CAC 0180043C */  lui        $a0, %hi(D_8001503C)
    /* A14B0 800B0CB0 3C508424 */  addiu      $a0, $a0, %lo(D_8001503C)
    /* A14B4 800B0CB4 1800BFAF */  sw         $ra, 0x18($sp)
    /* A14B8 800B0CB8 67B9020C */  jal        func_800AE59C
    /* A14BC 800B0CBC 21280002 */   addu      $a1, $s0, $zero
    /* A14C0 800B0CC0 46E9020C */  jal        func_800BA518
    /* A14C4 800B0CC4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A14C8 800B0CC8 0D80033C */  lui        $v1, %hi(D_800CEBA8)
    /* A14CC 800B0CCC A8EB638C */  lw         $v1, %lo(D_800CEBA8)($v1)
    /* A14D0 800B0CD0 F0004224 */  addiu      $v0, $v0, 0xF0
    /* A14D4 800B0CD4 0D80013C */  lui        $at, %hi(D_800CEBD0)
    /* A14D8 800B0CD8 D0EB22AC */  sw         $v0, %lo(D_800CEBD0)($at)
    /* A14DC 800B0CDC 0D80013C */  lui        $at, %hi(D_800CEBD4)
    /* A14E0 800B0CE0 D4EB20AC */  sw         $zero, %lo(D_800CEBD4)($at)
    /* A14E4 800B0CE4 0000628C */  lw         $v0, 0x0($v1)
    /* A14E8 800B0CE8 45C30208 */  j          .L800B0D14
    /* A14EC 800B0CEC 0001033C */   lui       $v1, (0x1000000 >> 16)
  .L800B0CF0:
    /* A14F0 800B0CF0 ADC2020C */  jal        func_800B0AB4
    /* A14F4 800B0CF4 00000000 */   nop
    /* A14F8 800B0CF8 1D004014 */  bnez       $v0, .L800B0D70
    /* A14FC 800B0CFC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A1500 800B0D00 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A1504 800B0D04 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A1508 800B0D08 00000000 */  nop
    /* A150C 800B0D0C 0000428C */  lw         $v0, 0x0($v0)
    /* A1510 800B0D10 0001033C */  lui        $v1, (0x1000000 >> 16)
  .L800B0D14:
    /* A1514 800B0D14 24104300 */  and        $v0, $v0, $v1
    /* A1518 800B0D18 F5FF4014 */  bnez       $v0, .L800B0CF0
    /* A151C 800B0D1C 00000000 */   nop
    /* A1520 800B0D20 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A1524 800B0D24 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A1528 800B0D28 00000000 */  nop
    /* A152C 800B0D2C 0000428C */  lw         $v0, 0x0($v0)
    /* A1530 800B0D30 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* A1534 800B0D34 24104300 */  and        $v0, $v0, $v1
    /* A1538 800B0D38 EDFF4010 */  beqz       $v0, .L800B0CF0
    /* A153C 800B0D3C 00000000 */   nop
    /* A1540 800B0D40 0B80053C */  lui        $a1, %hi(func_800B10B0)
    /* A1544 800B0D44 B010A524 */  addiu      $a1, $a1, %lo(func_800B10B0)
    /* A1548 800B0D48 E6E9020C */  jal        func_800BA798
    /* A154C 800B0D4C 02000424 */   addiu     $a0, $zero, 0x2
    /* A1550 800B0D50 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* A1554 800B0D54 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* A1558 800B0D58 21200002 */  addu       $a0, $s0, $zero
    /* A155C 800B0D5C 2000428C */  lw         $v0, 0x20($v0)
    /* A1560 800B0D60 00000000 */  nop
    /* A1564 800B0D64 09F84000 */  jalr       $v0
    /* A1568 800B0D68 21282002 */   addu      $a1, $s1, $zero
    /* A156C 800B0D6C 21100000 */  addu       $v0, $zero, $zero
  .L800B0D70:
    /* A1570 800B0D70 1800BF8F */  lw         $ra, 0x18($sp)
    /* A1574 800B0D74 1400B18F */  lw         $s1, 0x14($sp)
    /* A1578 800B0D78 1000B08F */  lw         $s0, 0x10($sp)
    /* A157C 800B0D7C 0800E003 */  jr         $ra
    /* A1580 800B0D80 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B0C98
