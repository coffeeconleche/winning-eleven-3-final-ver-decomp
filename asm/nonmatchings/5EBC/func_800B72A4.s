nonmatching func_800B72A4, 0x14C

glabel func_800B72A4
    /* A7AA4 800B72A4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A7AA8 800B72A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* A7AAC 800B72AC 2188A000 */  addu       $s1, $a1, $zero
    /* A7AB0 800B72B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* A7AB4 800B72B4 2190C000 */  addu       $s2, $a2, $zero
    /* A7AB8 800B72B8 2000B4AF */  sw         $s4, 0x20($sp)
    /* A7ABC 800B72BC 21A08000 */  addu       $s4, $a0, $zero
    /* A7AC0 800B72C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A7AC4 800B72C4 03001024 */  addiu      $s0, $zero, 0x3
    /* A7AC8 800B72C8 3000BEAF */  sw         $fp, 0x30($sp)
    /* A7ACC 800B72CC 01001E24 */  addiu      $fp, $zero, 0x1
    /* A7AD0 800B72D0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A7AD4 800B72D4 FF009332 */  andi       $s3, $s4, 0xFF
    /* A7AD8 800B72D8 0D80033C */  lui        $v1, %hi(D_800D38C4)
    /* A7ADC 800B72DC C4386324 */  addiu      $v1, $v1, %lo(D_800D38C4)
    /* A7AE0 800B72E0 2400B5AF */  sw         $s5, 0x24($sp)
    /* A7AE4 800B72E4 0D80153C */  lui        $s5, %hi(D_800D394C)
    /* A7AE8 800B72E8 4C39B58E */  lw         $s5, %lo(D_800D394C)($s5)
    /* A7AEC 800B72EC 80101300 */  sll        $v0, $s3, 2
    /* A7AF0 800B72F0 2800B6AF */  sw         $s6, 0x28($sp)
    /* A7AF4 800B72F4 21B04300 */  addu       $s6, $v0, $v1
    /* A7AF8 800B72F8 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* A7AFC 800B72FC FFFF1724 */  addiu      $s7, $zero, -0x1
    /* A7B00 800B7300 3400BFAF */  sw         $ra, 0x34($sp)
  .L800B7304:
    /* A7B04 800B7304 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7B08 800B7308 0B007E12 */  beq        $s3, $fp, .L800B7338
    /* A7B0C 800B730C 4C3920AC */   sw        $zero, %lo(D_800D394C)($at)
    /* A7B10 800B7310 0D80023C */  lui        $v0, %hi(D_800D395C)
    /* A7B14 800B7314 5C394290 */  lbu        $v0, %lo(D_800D395C)($v0)
    /* A7B18 800B7318 00000000 */  nop
    /* A7B1C 800B731C 10004230 */  andi       $v0, $v0, 0x10
    /* A7B20 800B7320 05004010 */  beqz       $v0, .L800B7338
    /* A7B24 800B7324 01000424 */   addiu     $a0, $zero, 0x1
    /* A7B28 800B7328 21280000 */  addu       $a1, $zero, $zero
    /* A7B2C 800B732C 21300000 */  addu       $a2, $zero, $zero
    /* A7B30 800B7330 2FE0020C */  jal        func_800B80BC
    /* A7B34 800B7334 21380000 */   addu      $a3, $zero, $zero
  .L800B7338:
    /* A7B38 800B7338 0B002012 */  beqz       $s1, .L800B7368
    /* A7B3C 800B733C 00000000 */   nop
    /* A7B40 800B7340 0000C28E */  lw         $v0, 0x0($s6)
    /* A7B44 800B7344 00000000 */  nop
    /* A7B48 800B7348 07004010 */  beqz       $v0, .L800B7368
    /* A7B4C 800B734C 02000424 */   addiu     $a0, $zero, 0x2
    /* A7B50 800B7350 21282002 */  addu       $a1, $s1, $zero
    /* A7B54 800B7354 21304002 */  addu       $a2, $s2, $zero
    /* A7B58 800B7358 2FE0020C */  jal        func_800B80BC
    /* A7B5C 800B735C 21380000 */   addu      $a3, $zero, $zero
    /* A7B60 800B7360 0A004014 */  bnez       $v0, .L800B738C
    /* A7B64 800B7364 00000000 */   nop
  .L800B7368:
    /* A7B68 800B7368 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7B6C 800B736C 4C3935AC */  sw         $s5, %lo(D_800D394C)($at)
    /* A7B70 800B7370 FF008432 */  andi       $a0, $s4, 0xFF
    /* A7B74 800B7374 21282002 */  addu       $a1, $s1, $zero
    /* A7B78 800B7378 21304002 */  addu       $a2, $s2, $zero
    /* A7B7C 800B737C 2FE0020C */  jal        func_800B80BC
    /* A7B80 800B7380 21380000 */   addu      $a3, $zero, $zero
    /* A7B84 800B7384 06004010 */  beqz       $v0, .L800B73A0
    /* A7B88 800B7388 21100000 */   addu      $v0, $zero, $zero
  .L800B738C:
    /* A7B8C 800B738C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A7B90 800B7390 DCFF1716 */  bne        $s0, $s7, .L800B7304
    /* A7B94 800B7394 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A7B98 800B7398 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7B9C 800B739C 4C3935AC */  sw         $s5, %lo(D_800D394C)($at)
  .L800B73A0:
    /* A7BA0 800B73A0 06004014 */  bnez       $v0, .L800B73BC
    /* A7BA4 800B73A4 21200000 */   addu      $a0, $zero, $zero
    /* A7BA8 800B73A8 DDDE020C */  jal        func_800B7B74
    /* A7BAC 800B73AC 21284002 */   addu      $a1, $s2, $zero
    /* A7BB0 800B73B0 02004238 */  xori       $v0, $v0, 0x2
    /* A7BB4 800B73B4 F0DC0208 */  j          .L800B73C0
    /* A7BB8 800B73B8 0100422C */   sltiu     $v0, $v0, 0x1
  .L800B73BC:
    /* A7BBC 800B73BC 21100000 */  addu       $v0, $zero, $zero
  .L800B73C0:
    /* A7BC0 800B73C0 3400BF8F */  lw         $ra, 0x34($sp)
    /* A7BC4 800B73C4 3000BE8F */  lw         $fp, 0x30($sp)
    /* A7BC8 800B73C8 2C00B78F */  lw         $s7, 0x2C($sp)
    /* A7BCC 800B73CC 2800B68F */  lw         $s6, 0x28($sp)
    /* A7BD0 800B73D0 2400B58F */  lw         $s5, 0x24($sp)
    /* A7BD4 800B73D4 2000B48F */  lw         $s4, 0x20($sp)
    /* A7BD8 800B73D8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A7BDC 800B73DC 1800B28F */  lw         $s2, 0x18($sp)
    /* A7BE0 800B73E0 1400B18F */  lw         $s1, 0x14($sp)
    /* A7BE4 800B73E4 1000B08F */  lw         $s0, 0x10($sp)
    /* A7BE8 800B73E8 0800E003 */  jr         $ra
    /* A7BEC 800B73EC 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800B72A4
