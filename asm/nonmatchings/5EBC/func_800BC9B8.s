nonmatching func_800BC9B8, 0xB4

glabel func_800BC9B8
    /* AD1B8 800BC9B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD1BC 800BC9BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD1C0 800BC9C0 DAF1020C */  jal        func_800BC768
    /* AD1C4 800BC9C4 21200000 */   addu      $a0, $zero, $zero
    /* AD1C8 800BC9C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD1CC 800BC9CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD1D0 800BC9D0 0800E003 */  jr         $ra
    /* AD1D4 800BC9D4 00000000 */   nop
  alabel D_800BC9D8
    /* AD1D8 800BC9D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD1DC 800BC9DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* AD1E0 800BC9E0 0D80103C */  lui        $s0, %hi(D_800D4F58)
    /* AD1E4 800BC9E4 584F1026 */  addiu      $s0, $s0, %lo(D_800D4F58)
    /* AD1E8 800BC9E8 1400BFAF */  sw         $ra, 0x14($sp)
    /* AD1EC 800BC9EC 0000028E */  lw         $v0, 0x0($s0)
    /* AD1F0 800BC9F0 00000000 */  nop
    /* AD1F4 800BC9F4 03004010 */  beqz       $v0, .L800BCA04
    /* AD1F8 800BC9F8 00000000 */   nop
    /* AD1FC 800BC9FC 09F84000 */  jalr       $v0
    /* AD200 800BCA00 00000000 */   nop
  .L800BCA04:
    /* AD204 800BCA04 FCFF028E */  lw         $v0, -0x4($s0)
    /* AD208 800BCA08 00000000 */  nop
    /* AD20C 800BCA0C 09F84000 */  jalr       $v0
    /* AD210 800BCA10 00000000 */   nop
    /* AD214 800BCA14 1400BF8F */  lw         $ra, 0x14($sp)
    /* AD218 800BCA18 1000B08F */  lw         $s0, 0x10($sp)
    /* AD21C 800BCA1C 0800E003 */  jr         $ra
    /* AD220 800BCA20 1800BD27 */   addiu     $sp, $sp, 0x18
  alabel D_800BCA24
    /* AD224 800BCA24 0D80023C */  lui        $v0, %hi(D_800D4F60)
    /* AD228 800BCA28 604F428C */  lw         $v0, %lo(D_800D4F60)($v0)
    /* AD22C 800BCA2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD230 800BCA30 05004014 */  bnez       $v0, .L800BCA48
    /* AD234 800BCA34 1000BFAF */   sw        $ra, 0x10($sp)
    /* AD238 800BCA38 01000224 */  addiu      $v0, $zero, 0x1
    /* AD23C 800BCA3C 0D80013C */  lui        $at, %hi(D_800D4F60)
    /* AD240 800BCA40 97F20208 */  j          .L800BCA5C
    /* AD244 800BCA44 604F22AC */   sw        $v0, %lo(D_800D4F60)($at)
  .L800BCA48:
    /* AD248 800BCA48 0D80023C */  lui        $v0, %hi(D_800D4F54)
    /* AD24C 800BCA4C 544F428C */  lw         $v0, %lo(D_800D4F54)($v0)
    /* AD250 800BCA50 0D80013C */  lui        $at, %hi(D_800D4F60)
    /* AD254 800BCA54 09F84000 */  jalr       $v0
    /* AD258 800BCA58 604F20AC */   sw        $zero, %lo(D_800D4F60)($at)
  .L800BCA5C:
    /* AD25C 800BCA5C 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD260 800BCA60 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD264 800BCA64 0800E003 */  jr         $ra
    /* AD268 800BCA68 00000000 */   nop
endlabel func_800BC9B8
    /* AD26C 800BCA6C 00000000 */  nop
    /* AD270 800BCA70 00000000 */  nop
    /* AD274 800BCA74 00000000 */  nop
