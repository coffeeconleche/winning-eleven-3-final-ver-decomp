nonmatching func_8019A2A0, 0xA0

glabel func_8019A2A0
    /* 11328 8019A2A0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1132C 8019A2A4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 11330 8019A2A8 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 11334 8019A2AC 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 11338 8019A2B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1133C 8019A2B4 01001024 */  addiu      $s0, $zero, 0x1
    /* 11340 8019A2B8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 11344 8019A2BC 21980000 */  addu       $s3, $zero, $zero
    /* 11348 8019A2C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1134C 8019A2C4 80611224 */  addiu      $s2, $zero, 0x6180
    /* 11350 8019A2C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 11354 8019A2CC B8601124 */  addiu      $s1, $zero, 0x60B8
    /* 11358 8019A2D0 2400BFAF */  sw         $ra, 0x24($sp)
  .L8019A2D4:
    /* 1135C 8019A2D4 21209102 */  addu       $a0, $s4, $s1
    /* 11360 8019A2D8 10008424 */  addiu      $a0, $a0, 0x10
    /* 11364 8019A2DC 21280000 */  addu       $a1, $zero, $zero
    /* 11368 8019A2E0 653A060C */  jal        func_8018E994
    /* 1136C 8019A2E4 20000624 */   addiu     $a2, $zero, 0x20
    /* 11370 8019A2E8 24800202 */  and        $s0, $s0, $v0
    /* 11374 8019A2EC 21209202 */  addu       $a0, $s4, $s2
    /* 11378 8019A2F0 10008424 */  addiu      $a0, $a0, 0x10
    /* 1137C 8019A2F4 21280000 */  addu       $a1, $zero, $zero
    /* 11380 8019A2F8 653A060C */  jal        func_8018E994
    /* 11384 8019A2FC 20000624 */   addiu     $a2, $zero, 0x20
    /* 11388 8019A300 24800202 */  and        $s0, $s0, $v0
    /* 1138C 8019A304 28005226 */  addiu      $s2, $s2, 0x28
    /* 11390 8019A308 01007326 */  addiu      $s3, $s3, 0x1
    /* 11394 8019A30C 0500622A */  slti       $v0, $s3, 0x5
    /* 11398 8019A310 F0FF4014 */  bnez       $v0, .L8019A2D4
    /* 1139C 8019A314 28003126 */   addiu     $s1, $s1, 0x28
    /* 113A0 8019A318 21100002 */  addu       $v0, $s0, $zero
    /* 113A4 8019A31C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 113A8 8019A320 2000B48F */  lw         $s4, 0x20($sp)
    /* 113AC 8019A324 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 113B0 8019A328 1800B28F */  lw         $s2, 0x18($sp)
    /* 113B4 8019A32C 1400B18F */  lw         $s1, 0x14($sp)
    /* 113B8 8019A330 1000B08F */  lw         $s0, 0x10($sp)
    /* 113BC 8019A334 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 113C0 8019A338 0800E003 */  jr         $ra
    /* 113C4 8019A33C 00000000 */   nop
endlabel func_8019A2A0
