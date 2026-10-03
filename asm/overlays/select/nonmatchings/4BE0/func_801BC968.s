nonmatching func_801BC968, 0x240

glabel func_801BC968
    /* 339F0 801BC968 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 339F4 801BC96C 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 339F8 801BC970 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 339FC 801BC974 0000B0AF */  sw         $s0, 0x0($sp)
    /* 33A00 801BC978 1C001024 */  addiu      $s0, $zero, 0x1C
    /* 33A04 801BC97C 80AB0E34 */  ori        $t6, $zero, 0xAB80
    /* 33A08 801BC980 20000D24 */  addiu      $t5, $zero, 0x20
    /* 33A0C 801BC984 09001924 */  addiu      $t9, $zero, 0x9
    /* 33A10 801BC988 1F001824 */  addiu      $t8, $zero, 0x1F
    /* 33A14 801BC98C 1E80063C */  lui        $a2, %hi(D_801D9291)
    /* 33A18 801BC990 9192C624 */  addiu      $a2, $a2, %lo(D_801D9291)
    /* 33A1C 801BC994 FFFFC824 */  addiu      $t0, $a2, -0x1
    /* 33A20 801BC998 21580000 */  addu       $t3, $zero, $zero
    /* 33A24 801BC99C 21500000 */  addu       $t2, $zero, $zero
    /* 33A28 801BC9A0 1E800F3C */  lui        $t7, %hi(D_801D94E8)
    /* 33A2C 801BC9A4 E894EF25 */  addiu      $t7, $t7, %lo(D_801D94E8)
    /* 33A30 801BC9A8 0400B1AF */  sw         $s1, 0x4($sp)
    /* 33A34 801BC9AC 6801F125 */  addiu      $s1, $t7, 0x168
    /* 33A38 801BC9B0 21482002 */  addu       $t1, $s1, $zero
    /* 33A3C 801BC9B4 2160E001 */  addu       $t4, $t7, $zero
  .L801BC9B8:
    /* 33A40 801BC9B8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33A44 801BC9BC 2108E100 */  addu       $at, $a3, $at
    /* 33A48 801BC9C0 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 33A4C 801BC9C4 00000000 */  nop
    /* 33A50 801BC9C8 00110200 */  sll        $v0, $v0, 4
    /* 33A54 801BC9CC 21104201 */  addu       $v0, $t2, $v0
    /* 33A58 801BC9D0 1280013C */  lui        $at, %hi(D_8011CE9C)
    /* 33A5C 801BC9D4 21082200 */  addu       $at, $at, $v0
    /* 33A60 801BC9D8 9CCE2290 */  lbu        $v0, %lo(D_8011CE9C)($at)
    /* 33A64 801BC9DC 21182001 */  addu       $v1, $t1, $zero
    /* 33A68 801BC9E0 000002A1 */  sb         $v0, 0x0($t0)
    /* 33A6C 801BC9E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33A70 801BC9E8 2108E100 */  addu       $at, $a3, $at
    /* 33A74 801BC9EC 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 33A78 801BC9F0 21208001 */  addu       $a0, $t4, $zero
    /* 33A7C 801BC9F4 00110200 */  sll        $v0, $v0, 4
    /* 33A80 801BC9F8 21104201 */  addu       $v0, $t2, $v0
    /* 33A84 801BC9FC 1280013C */  lui        $at, %hi(D_8011CE9D)
    /* 33A88 801BCA00 21082200 */  addu       $at, $at, $v0
    /* 33A8C 801BCA04 9DCE2290 */  lbu        $v0, %lo(D_8011CE9D)($at)
    /* 33A90 801BCA08 2D002525 */  addiu      $a1, $t1, 0x2D
    /* 33A94 801BCA0C 0000C2A0 */  sb         $v0, 0x0($a2)
  .L801BCA10:
    /* 33A98 801BCA10 000080A0 */  sb         $zero, 0x0($a0)
    /* 33A9C 801BCA14 000060A0 */  sb         $zero, 0x0($v1)
    /* 33AA0 801BCA18 01006324 */  addiu      $v1, $v1, 0x1
    /* 33AA4 801BCA1C 2A106500 */  slt        $v0, $v1, $a1
    /* 33AA8 801BCA20 FBFF4014 */  bnez       $v0, .L801BCA10
    /* 33AAC 801BCA24 01008424 */   addiu     $a0, $a0, 0x1
    /* 33AB0 801BCA28 21206F01 */  addu       $a0, $t3, $t7
    /* 33AB4 801BCA2C 000090A0 */  sb         $s0, 0x0($a0)
    /* 33AB8 801BCA30 00000291 */  lbu        $v0, 0x0($t0)
    /* 33ABC 801BCA34 00000000 */  nop
    /* 33AC0 801BCA38 2110E200 */  addu       $v0, $a3, $v0
    /* 33AC4 801BCA3C 21104E00 */  addu       $v0, $v0, $t6
    /* 33AC8 801BCA40 00004390 */  lbu        $v1, 0x0($v0)
    /* 33ACC 801BCA44 00000000 */  nop
    /* 33AD0 801BCA48 C0100300 */  sll        $v0, $v1, 3
    /* 33AD4 801BCA4C 21104300 */  addu       $v0, $v0, $v1
    /* 33AD8 801BCA50 80100200 */  sll        $v0, $v0, 2
    /* 33ADC 801BCA54 2110E200 */  addu       $v0, $a3, $v0
    /* 33AE0 801BCA58 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33AE4 801BCA5C 21084100 */  addu       $at, $v0, $at
    /* 33AE8 801BCA60 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 33AEC 801BCA64 01008424 */  addiu      $a0, $a0, 0x1
    /* 33AF0 801BCA68 000082A0 */  sb         $v0, 0x0($a0)
    /* 33AF4 801BCA6C 01008424 */  addiu      $a0, $a0, 0x1
    /* 33AF8 801BCA70 00008DA0 */  sb         $t5, 0x0($a0)
    /* 33AFC 801BCA74 01008424 */  addiu      $a0, $a0, 0x1
    /* 33B00 801BCA78 000099A0 */  sb         $t9, 0x0($a0)
    /* 33B04 801BCA7C 01008424 */  addiu      $a0, $a0, 0x1
    /* 33B08 801BCA80 58000224 */  addiu      $v0, $zero, 0x58
    /* 33B0C 801BCA84 000082A0 */  sb         $v0, 0x0($a0)
    /* 33B10 801BCA88 01008424 */  addiu      $a0, $a0, 0x1
    /* 33B14 801BCA8C 00008DA0 */  sb         $t5, 0x0($a0)
    /* 33B18 801BCA90 01008424 */  addiu      $a0, $a0, 0x1
    /* 33B1C 801BCA94 000098A0 */  sb         $t8, 0x0($a0)
    /* 33B20 801BCA98 00000291 */  lbu        $v0, 0x0($t0)
    /* 33B24 801BCA9C 00000000 */  nop
    /* 33B28 801BCAA0 2110E200 */  addu       $v0, $a3, $v0
    /* 33B2C 801BCAA4 21104E00 */  addu       $v0, $v0, $t6
    /* 33B30 801BCAA8 00004390 */  lbu        $v1, 0x0($v0)
    /* 33B34 801BCAAC 00000000 */  nop
    /* 33B38 801BCAB0 C0100300 */  sll        $v0, $v1, 3
    /* 33B3C 801BCAB4 21104300 */  addu       $v0, $v0, $v1
    /* 33B40 801BCAB8 80100200 */  sll        $v0, $v0, 2
    /* 33B44 801BCABC 2110E200 */  addu       $v0, $a3, $v0
    /* 33B48 801BCAC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33B4C 801BCAC4 21084100 */  addu       $at, $v0, $at
    /* 33B50 801BCAC8 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 33B54 801BCACC 02004A25 */  addiu      $t2, $t2, 0x2
    /* 33B58 801BCAD0 010082A0 */  sb         $v0, 0x1($a0)
    /* 33B5C 801BCAD4 21207101 */  addu       $a0, $t3, $s1
    /* 33B60 801BCAD8 000098A0 */  sb         $t8, 0x0($a0)
    /* 33B64 801BCADC 0000C290 */  lbu        $v0, 0x0($a2)
    /* 33B68 801BCAE0 2D002925 */  addiu      $t1, $t1, 0x2D
    /* 33B6C 801BCAE4 2110E200 */  addu       $v0, $a3, $v0
    /* 33B70 801BCAE8 21104E00 */  addu       $v0, $v0, $t6
    /* 33B74 801BCAEC 00004390 */  lbu        $v1, 0x0($v0)
    /* 33B78 801BCAF0 2D008C25 */  addiu      $t4, $t4, 0x2D
    /* 33B7C 801BCAF4 C0100300 */  sll        $v0, $v1, 3
    /* 33B80 801BCAF8 21104300 */  addu       $v0, $v0, $v1
    /* 33B84 801BCAFC 80100200 */  sll        $v0, $v0, 2
    /* 33B88 801BCB00 2110E200 */  addu       $v0, $a3, $v0
    /* 33B8C 801BCB04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33B90 801BCB08 21084100 */  addu       $at, $v0, $at
    /* 33B94 801BCB0C 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 33B98 801BCB10 01008424 */  addiu      $a0, $a0, 0x1
    /* 33B9C 801BCB14 000082A0 */  sb         $v0, 0x0($a0)
    /* 33BA0 801BCB18 01008424 */  addiu      $a0, $a0, 0x1
    /* 33BA4 801BCB1C 00008DA0 */  sb         $t5, 0x0($a0)
    /* 33BA8 801BCB20 01008424 */  addiu      $a0, $a0, 0x1
    /* 33BAC 801BCB24 000099A0 */  sb         $t9, 0x0($a0)
    /* 33BB0 801BCB28 01008424 */  addiu      $a0, $a0, 0x1
    /* 33BB4 801BCB2C 30000224 */  addiu      $v0, $zero, 0x30
    /* 33BB8 801BCB30 000082A0 */  sb         $v0, 0x0($a0)
    /* 33BBC 801BCB34 01008424 */  addiu      $a0, $a0, 0x1
    /* 33BC0 801BCB38 00008DA0 */  sb         $t5, 0x0($a0)
    /* 33BC4 801BCB3C 01008424 */  addiu      $a0, $a0, 0x1
    /* 33BC8 801BCB40 000090A0 */  sb         $s0, 0x0($a0)
    /* 33BCC 801BCB44 0000C290 */  lbu        $v0, 0x0($a2)
    /* 33BD0 801BCB48 02000825 */  addiu      $t0, $t0, 0x2
    /* 33BD4 801BCB4C 2110E200 */  addu       $v0, $a3, $v0
    /* 33BD8 801BCB50 21104E00 */  addu       $v0, $v0, $t6
    /* 33BDC 801BCB54 00004390 */  lbu        $v1, 0x0($v0)
    /* 33BE0 801BCB58 00000000 */  nop
    /* 33BE4 801BCB5C C0100300 */  sll        $v0, $v1, 3
    /* 33BE8 801BCB60 21104300 */  addu       $v0, $v0, $v1
    /* 33BEC 801BCB64 80100200 */  sll        $v0, $v0, 2
    /* 33BF0 801BCB68 2110E200 */  addu       $v0, $a3, $v0
    /* 33BF4 801BCB6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33BF8 801BCB70 21084100 */  addu       $at, $v0, $at
    /* 33BFC 801BCB74 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 33C00 801BCB78 0200C624 */  addiu      $a2, $a2, 0x2
    /* 33C04 801BCB7C 010082A0 */  sb         $v0, 0x1($a0)
    /* 33C08 801BCB80 1E80023C */  lui        $v0, %hi(D_801D92A1)
    /* 33C0C 801BCB84 A1924224 */  addiu      $v0, $v0, %lo(D_801D92A1)
    /* 33C10 801BCB88 2A10C200 */  slt        $v0, $a2, $v0
    /* 33C14 801BCB8C 8AFF4014 */  bnez       $v0, .L801BC9B8
    /* 33C18 801BCB90 2D006B25 */   addiu     $t3, $t3, 0x2D
    /* 33C1C 801BCB94 0400B18F */  lw         $s1, 0x4($sp)
    /* 33C20 801BCB98 0000B08F */  lw         $s0, 0x0($sp)
    /* 33C24 801BCB9C 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 33C28 801BCBA0 0800E003 */  jr         $ra
    /* 33C2C 801BCBA4 00000000 */   nop
endlabel func_801BC968
