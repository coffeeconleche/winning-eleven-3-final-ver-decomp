nonmatching func_800C39E8, 0x194

glabel func_800C39E8
    /* B41E8 800C39E8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* B41EC 800C39EC 1800B0AF */  sw         $s0, 0x18($sp)
    /* B41F0 800C39F0 21808000 */  addu       $s0, $a0, $zero
    /* B41F4 800C39F4 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* B41F8 800C39F8 0A00022E */  sltiu      $v0, $s0, 0xA
    /* B41FC 800C39FC 3000BFAF */  sw         $ra, 0x30($sp)
    /* B4200 800C3A00 2800B4AF */  sw         $s4, 0x28($sp)
    /* B4204 800C3A04 2400B3AF */  sw         $s3, 0x24($sp)
    /* B4208 800C3A08 2000B2AF */  sw         $s2, 0x20($sp)
    /* B420C 800C3A0C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* B4210 800C3A10 1000A0AF */  sw         $zero, 0x10($sp)
    /* B4214 800C3A14 0A004010 */  beqz       $v0, .L800C3A40
    /* B4218 800C3A18 21A80000 */   addu      $s5, $zero, $zero
    /* B421C 800C3A1C 0D80033C */  lui        $v1, %hi(D_800D55FC)
    /* B4220 800C3A20 FC556324 */  addiu      $v1, $v1, %lo(D_800D55FC)
    /* B4224 800C3A24 80101000 */  sll        $v0, $s0, 2
    /* B4228 800C3A28 21884300 */  addu       $s1, $v0, $v1
    /* B422C 800C3A2C 0000248E */  lw         $a0, 0x0($s1)
    /* B4230 800C3A30 DE0B030C */  jal        func_800C2F78
    /* B4234 800C3A34 00000000 */   nop
    /* B4238 800C3A38 03004010 */  beqz       $v0, .L800C3A48
    /* B423C 800C3A3C 00000000 */   nop
  .L800C3A40:
    /* B4240 800C3A40 D60E0308 */  j          .L800C3B58
    /* B4244 800C3A44 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C3A48:
    /* B4248 800C3A48 08000016 */  bnez       $s0, .L800C3A6C
    /* B424C 800C3A4C 0100023C */   lui       $v0, (0x10000 >> 16)
    /* B4250 800C3A50 0D80023C */  lui        $v0, %hi(D_800D55B4)
    /* B4254 800C3A54 B455428C */  lw         $v0, %lo(D_800D55B4)($v0)
    /* B4258 800C3A58 10000324 */  addiu      $v1, $zero, 0x10
    /* B425C 800C3A5C 04884300 */  sllv       $s1, $v1, $v0
    /* B4260 800C3A60 F0FF0334 */  ori        $v1, $zero, 0xFFF0
    /* B4264 800C3A64 A10E0308 */  j          .L800C3A84
    /* B4268 800C3A68 04904300 */   sllv      $s2, $v1, $v0
  .L800C3A6C:
    /* B426C 800C3A6C 0000248E */  lw         $a0, 0x0($s1)
    /* B4270 800C3A70 0D80033C */  lui        $v1, %hi(D_800D55B4)
    /* B4274 800C3A74 B455638C */  lw         $v1, %lo(D_800D55B4)($v1)
    /* B4278 800C3A78 23104400 */  subu       $v0, $v0, $a0
    /* B427C 800C3A7C 04886200 */  sllv       $s1, $v0, $v1
    /* B4280 800C3A80 04906400 */  sllv       $s2, $a0, $v1
  .L800C3A84:
    /* B4284 800C3A84 0D80143C */  lui        $s4, %hi(D_800D55A8)
    /* B4288 800C3A88 A855948E */  lw         $s4, %lo(D_800D55A8)($s4)
    /* B428C 800C3A8C 01000224 */  addiu      $v0, $zero, 0x1
    /* B4290 800C3A90 04008216 */  bne        $s4, $v0, .L800C3AA4
    /* B4294 800C3A94 00000000 */   nop
    /* B4298 800C3A98 0D80013C */  lui        $at, %hi(D_800D55A8)
    /* B429C 800C3A9C A85520AC */  sw         $zero, %lo(D_800D55A8)($at)
    /* B42A0 800C3AA0 01001524 */  addiu      $s5, $zero, 0x1
  .L800C3AA4:
    /* B42A4 800C3AA4 0D80023C */  lui        $v0, %hi(D_800D55C4)
    /* B42A8 800C3AA8 C455428C */  lw         $v0, %lo(D_800D55C4)($v0)
    /* B42AC 800C3AAC 00000000 */  nop
    /* B42B0 800C3AB0 07004010 */  beqz       $v0, .L800C3AD0
    /* B42B4 800C3AB4 01001324 */   addiu     $s3, $zero, 0x1
    /* B42B8 800C3AB8 0D80023C */  lui        $v0, %hi(D_800D55C4)
    /* B42BC 800C3ABC C455428C */  lw         $v0, %lo(D_800D55C4)($v0)
    /* B42C0 800C3AC0 00000000 */  nop
    /* B42C4 800C3AC4 1000A2AF */  sw         $v0, 0x10($sp)
    /* B42C8 800C3AC8 0D80013C */  lui        $at, %hi(D_800D55C4)
    /* B42CC 800C3ACC C45520AC */  sw         $zero, %lo(D_800D55C4)($at)
  .L800C3AD0:
    /* B42D0 800C3AD0 0104222E */  sltiu      $v0, $s1, 0x401
  .L800C3AD4:
    /* B42D4 800C3AD4 03004010 */  beqz       $v0, .L800C3AE4
    /* B42D8 800C3AD8 00041024 */   addiu     $s0, $zero, 0x400
    /* B42DC 800C3ADC 21802002 */  addu       $s0, $s1, $zero
    /* B42E0 800C3AE0 21980000 */  addu       $s3, $zero, $zero
  .L800C3AE4:
    /* B42E4 800C3AE4 02000424 */  addiu      $a0, $zero, 0x2
    /* B42E8 800C3AE8 3706030C */  jal        func_800C18DC
    /* B42EC 800C3AEC 21284002 */   addu      $a1, $s2, $zero
    /* B42F0 800C3AF0 3706030C */  jal        func_800C18DC
    /* B42F4 800C3AF4 01000424 */   addiu     $a0, $zero, 0x1
    /* B42F8 800C3AF8 03000424 */  addiu      $a0, $zero, 0x3
    /* B42FC 800C3AFC 0D80053C */  lui        $a1, %hi(D_800D5178)
    /* B4300 800C3B00 7851A524 */  addiu      $a1, $a1, %lo(D_800D5178)
    /* B4304 800C3B04 3706030C */  jal        func_800C18DC
    /* B4308 800C3B08 21300002 */   addu      $a2, $s0, $zero
    /* B430C 800C3B0C 0D80043C */  lui        $a0, %hi(D_800D5114)
    /* B4310 800C3B10 1451848C */  lw         $a0, %lo(D_800D5114)($a0)
    /* B4314 800C3B14 00FC3126 */  addiu      $s1, $s1, -0x400
    /* B4318 800C3B18 E20E030C */  jal        func_800C3B88
    /* B431C 800C3B1C 00045226 */   addiu     $s2, $s2, 0x400
    /* B4320 800C3B20 ECFF6016 */  bnez       $s3, .L800C3AD4
    /* B4324 800C3B24 0104222E */   sltiu     $v0, $s1, 0x401
    /* B4328 800C3B28 0300A012 */  beqz       $s5, .L800C3B38
    /* B432C 800C3B2C 00000000 */   nop
    /* B4330 800C3B30 0D80013C */  lui        $at, %hi(D_800D55A8)
    /* B4334 800C3B34 A85534AC */  sw         $s4, %lo(D_800D55A8)($at)
  .L800C3B38:
    /* B4338 800C3B38 1000A28F */  lw         $v0, 0x10($sp)
    /* B433C 800C3B3C 00000000 */  nop
    /* B4340 800C3B40 05004010 */  beqz       $v0, .L800C3B58
    /* B4344 800C3B44 21100000 */   addu      $v0, $zero, $zero
    /* B4348 800C3B48 1000A28F */  lw         $v0, 0x10($sp)
    /* B434C 800C3B4C 0D80013C */  lui        $at, %hi(D_800D55C4)
    /* B4350 800C3B50 C45522AC */  sw         $v0, %lo(D_800D55C4)($at)
    /* B4354 800C3B54 21100000 */  addu       $v0, $zero, $zero
  .L800C3B58:
    /* B4358 800C3B58 3000BF8F */  lw         $ra, 0x30($sp)
    /* B435C 800C3B5C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* B4360 800C3B60 2800B48F */  lw         $s4, 0x28($sp)
    /* B4364 800C3B64 2400B38F */  lw         $s3, 0x24($sp)
    /* B4368 800C3B68 2000B28F */  lw         $s2, 0x20($sp)
    /* B436C 800C3B6C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* B4370 800C3B70 1800B08F */  lw         $s0, 0x18($sp)
    /* B4374 800C3B74 0800E003 */  jr         $ra
    /* B4378 800C3B78 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800C39E8
    /* B437C 800C3B7C 00000000 */  nop
    /* B4380 800C3B80 00000000 */  nop
    /* B4384 800C3B84 00000000 */  nop
