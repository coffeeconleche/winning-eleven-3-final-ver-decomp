nonmatching func_800B41AC, 0x11C

glabel func_800B41AC
    /* A49AC 800B41AC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A49B0 800B41B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* A49B4 800B41B4 21888000 */  addu       $s1, $a0, $zero
    /* A49B8 800B41B8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A49BC 800B41BC 2198A000 */  addu       $s3, $a1, $zero
    /* A49C0 800B41C0 2000B4AF */  sw         $s4, 0x20($sp)
    /* A49C4 800B41C4 21A0C000 */  addu       $s4, $a2, $zero
    /* A49C8 800B41C8 21200000 */  addu       $a0, $zero, $zero
    /* A49CC 800B41CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* A49D0 800B41D0 21908002 */  addu       $s2, $s4, $zero
    /* A49D4 800B41D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* A49D8 800B41D8 2180E000 */  addu       $s0, $a3, $zero
    /* A49DC 800B41DC 02111200 */  srl        $v0, $s2, 4
    /* A49E0 800B41E0 03004230 */  andi       $v0, $v0, 0x3
    /* A49E4 800B41E4 2400B5AF */  sw         $s5, 0x24($sp)
    /* A49E8 800B41E8 4000B597 */  lhu        $s5, 0x40($sp)
    /* A49EC 800B41EC 03000324 */  addiu      $v1, $zero, 0x3
    /* A49F0 800B41F0 02004314 */  bne        $v0, $v1, .L800B41FC
    /* A49F4 800B41F4 2800BFAF */   sw        $ra, 0x28($sp)
    /* A49F8 800B41F8 03000424 */  addiu      $a0, $zero, 0x3
  .L800B41FC:
    /* A49FC 800B41FC 6EB8020C */  jal        func_800AE1B8
    /* A4A00 800B4200 00000000 */   nop
    /* A4A04 800B4204 0F80023C */  lui        $v0, %hi(D_800F0F80)
    /* A4A08 800B4208 800F4224 */  addiu      $v0, $v0, %lo(D_800F0F80)
    /* A4A0C 800B420C F8FF4424 */  addiu      $a0, $v0, -0x8
    /* A4A10 800B4210 020040A4 */  sh         $zero, 0x2($v0)
    /* A4A14 800B4214 000040A4 */  sh         $zero, 0x0($v0)
    /* A4A18 800B4218 0A0040A4 */  sh         $zero, 0xA($v0)
    /* A4A1C 800B421C 080040A4 */  sh         $zero, 0x8($v0)
    /* A4A20 800B4220 060040A4 */  sh         $zero, 0x6($v0)
    /* A4A24 800B4224 040040A4 */  sh         $zero, 0x4($v0)
    /* A4A28 800B4228 0C0040A4 */  sh         $zero, 0xC($v0)
    /* A4A2C 800B422C 0E0050A0 */  sb         $s0, 0xE($v0)
    /* A4A30 800B4230 0F0040A0 */  sb         $zero, 0xF($v0)
    /* A4A34 800B4234 E6BA020C */  jal        func_800AEB98
    /* A4A38 800B4238 100040A0 */   sb        $zero, 0x10($v0)
    /* A4A3C 800B423C 0F80103C */  lui        $s0, %hi(D_800F0FD8)
    /* A4A40 800B4240 D80F1026 */  addiu      $s0, $s0, %lo(D_800F0FD8)
    /* A4A44 800B4244 08000226 */  addiu      $v0, $s0, 0x8
    /* A4A48 800B4248 000000A6 */  sh         $zero, 0x0($s0)
    /* A4A4C 800B424C 020000A6 */  sh         $zero, 0x2($s0)
    /* A4A50 800B4250 040011A6 */  sh         $s1, 0x4($s0)
    /* A4A54 800B4254 060013A6 */  sh         $s3, 0x6($s0)
    /* A4A58 800B4258 080000A6 */  sh         $zero, 0x8($s0)
    /* A4A5C 800B425C 020040A4 */  sh         $zero, 0x2($v0)
    /* A4A60 800B4260 040040A4 */  sh         $zero, 0x4($v0)
    /* A4A64 800B4264 8BEC020C */  jal        func_800BB22C
    /* A4A68 800B4268 060040A4 */   sh        $zero, 0x6($v0)
    /* A4A6C 800B426C 21184000 */  addu       $v1, $v0, $zero
    /* A4A70 800B4270 01000224 */  addiu      $v0, $zero, 0x1
    /* A4A74 800B4274 04006214 */  bne        $v1, $v0, .L800B4288
    /* A4A78 800B4278 21200002 */   addu      $a0, $s0, $zero
    /* A4A7C 800B427C 18000224 */  addiu      $v0, $zero, 0x18
    /* A4A80 800B4280 0A0002A6 */  sh         $v0, 0xA($s0)
    /* A4A84 800B4284 120003A2 */  sb         $v1, 0x12($s0)
  .L800B4288:
    /* A4A88 800B4288 01004232 */  andi       $v0, $s2, 0x1
    /* A4A8C 800B428C 100082A0 */  sb         $v0, 0x10($a0)
    /* A4A90 800B4290 04008232 */  andi       $v0, $s4, 0x4
    /* A4A94 800B4294 1180013C */  lui        $at, %hi(D_8010CD80)
    /* A4A98 800B4298 80CD22A4 */  sh         $v0, %lo(D_8010CD80)($at)
    /* A4A9C 800B429C 59BB020C */  jal        func_800AED64
    /* A4AA0 800B42A0 110095A0 */   sb        $s5, 0x11($a0)
    /* A4AA4 800B42A4 2800BF8F */  lw         $ra, 0x28($sp)
    /* A4AA8 800B42A8 2400B58F */  lw         $s5, 0x24($sp)
    /* A4AAC 800B42AC 2000B48F */  lw         $s4, 0x20($sp)
    /* A4AB0 800B42B0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A4AB4 800B42B4 1800B28F */  lw         $s2, 0x18($sp)
    /* A4AB8 800B42B8 1400B18F */  lw         $s1, 0x14($sp)
    /* A4ABC 800B42BC 1000B08F */  lw         $s0, 0x10($sp)
    /* A4AC0 800B42C0 0800E003 */  jr         $ra
    /* A4AC4 800B42C4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800B41AC
