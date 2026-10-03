nonmatching func_800B6A78, 0x2FC

glabel func_800B6A78
    /* A7278 800B6A78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A727C 800B6A7C 1800B2AF */  sw         $s2, 0x18($sp)
    /* A7280 800B6A80 2190A000 */  addu       $s2, $a1, $zero
    /* A7284 800B6A84 21388000 */  addu       $a3, $a0, $zero
    /* A7288 800B6A88 1400B1AF */  sw         $s1, 0x14($sp)
    /* A728C 800B6A8C 21880000 */  addu       $s1, $zero, $zero
    /* A7290 800B6A90 64000524 */  addiu      $a1, $zero, 0x64
    /* A7294 800B6A94 1180063C */  lui        $a2, %hi(D_8010C218)
    /* A7298 800B6A98 18C2C624 */  addiu      $a2, $a2, %lo(D_8010C218)
    /* A729C 800B6A9C 64000824 */  addiu      $t0, $zero, 0x64
    /* A72A0 800B6AA0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A72A4 800B6AA4 1000B0AF */  sw         $s0, 0x10($sp)
  .L800B6AA8:
    /* A72A8 800B6AA8 80101100 */  sll        $v0, $s1, 2
    /* A72AC 800B6AAC 21104600 */  addu       $v0, $v0, $a2
    /* A72B0 800B6AB0 000047AC */  sw         $a3, 0x0($v0)
    /* A72B4 800B6AB4 4800E48C */  lw         $a0, 0x48($a3)
    /* A72B8 800B6AB8 00000000 */  nop
    /* A72BC 800B6ABC 59008014 */  bnez       $a0, .L800B6C24
    /* A72C0 800B6AC0 00000000 */   nop
    /* A72C4 800B6AC4 0000E38C */  lw         $v1, 0x0($a3)
    /* A72C8 800B6AC8 1180023C */  lui        $v0, %hi(D_8010CD50)
    /* A72CC 800B6ACC 50CD428C */  lw         $v0, %lo(D_8010CD50)($v0)
    /* A72D0 800B6AD0 00000000 */  nop
    /* A72D4 800B6AD4 03006210 */  beq        $v1, $v0, .L800B6AE4
    /* A72D8 800B6AD8 00000000 */   nop
    /* A72DC 800B6ADC 25006014 */  bnez       $v1, .L800B6B74
    /* A72E0 800B6AE0 00000000 */   nop
  .L800B6AE4:
    /* A72E4 800B6AE4 0400E28C */  lw         $v0, 0x4($a3)
    /* A72E8 800B6AE8 0800E38C */  lw         $v1, 0x8($a3)
    /* A72EC 800B6AEC 0C00E48C */  lw         $a0, 0xC($a3)
    /* A72F0 800B6AF0 1000E58C */  lw         $a1, 0x10($a3)
    /* A72F4 800B6AF4 2400E2AC */  sw         $v0, 0x24($a3)
    /* A72F8 800B6AF8 2800E3AC */  sw         $v1, 0x28($a3)
    /* A72FC 800B6AFC 2C00E4AC */  sw         $a0, 0x2C($a3)
    /* A7300 800B6B00 3000E5AC */  sw         $a1, 0x30($a3)
    /* A7304 800B6B04 1400E28C */  lw         $v0, 0x14($a3)
    /* A7308 800B6B08 1800E38C */  lw         $v1, 0x18($a3)
    /* A730C 800B6B0C 1C00E48C */  lw         $a0, 0x1C($a3)
    /* A7310 800B6B10 2000E58C */  lw         $a1, 0x20($a3)
    /* A7314 800B6B14 3400E2AC */  sw         $v0, 0x34($a3)
    /* A7318 800B6B18 3800E3AC */  sw         $v1, 0x38($a3)
    /* A731C 800B6B1C 3C00E4AC */  sw         $a0, 0x3C($a3)
    /* A7320 800B6B20 4000E5AC */  sw         $a1, 0x40($a3)
    /* A7324 800B6B24 1180023C */  lui        $v0, %hi(D_8010CD50)
    /* A7328 800B6B28 50CD428C */  lw         $v0, %lo(D_8010CD50)($v0)
    /* A732C 800B6B2C 2400E38C */  lw         $v1, 0x24($a3)
    /* A7330 800B6B30 2800E48C */  lw         $a0, 0x28($a3)
    /* A7334 800B6B34 2C00E58C */  lw         $a1, 0x2C($a3)
    /* A7338 800B6B38 3000E68C */  lw         $a2, 0x30($a3)
    /* A733C 800B6B3C 000043AE */  sw         $v1, 0x0($s2)
    /* A7340 800B6B40 040044AE */  sw         $a0, 0x4($s2)
    /* A7344 800B6B44 080045AE */  sw         $a1, 0x8($s2)
    /* A7348 800B6B48 0C0046AE */  sw         $a2, 0xC($s2)
    /* A734C 800B6B4C 3400E38C */  lw         $v1, 0x34($a3)
    /* A7350 800B6B50 3800E48C */  lw         $a0, 0x38($a3)
    /* A7354 800B6B54 3C00E58C */  lw         $a1, 0x3C($a3)
    /* A7358 800B6B58 4000E68C */  lw         $a2, 0x40($a3)
    /* A735C 800B6B5C 100043AE */  sw         $v1, 0x10($s2)
    /* A7360 800B6B60 140044AE */  sw         $a0, 0x14($s2)
    /* A7364 800B6B64 180045AE */  sw         $a1, 0x18($s2)
    /* A7368 800B6B68 1C0046AE */  sw         $a2, 0x1C($s2)
    /* A736C 800B6B6C 25DB0208 */  j          .L800B6C94
    /* A7370 800B6B70 0000E2AC */   sw        $v0, 0x0($a3)
  .L800B6B74:
    /* A7374 800B6B74 1600A814 */  bne        $a1, $t0, .L800B6BD0
    /* A7378 800B6B78 0100B124 */   addiu     $s1, $a1, 0x1
    /* A737C 800B6B7C 1180023C */  lui        $v0, %hi(D_8010C218)
    /* A7380 800B6B80 18C2428C */  lw         $v0, %lo(D_8010C218)($v0)
    /* A7384 800B6B84 00000000 */  nop
    /* A7388 800B6B88 2400438C */  lw         $v1, 0x24($v0)
    /* A738C 800B6B8C 2800448C */  lw         $a0, 0x28($v0)
    /* A7390 800B6B90 2C00458C */  lw         $a1, 0x2C($v0)
    /* A7394 800B6B94 3000468C */  lw         $a2, 0x30($v0)
    /* A7398 800B6B98 000043AE */  sw         $v1, 0x0($s2)
    /* A739C 800B6B9C 040044AE */  sw         $a0, 0x4($s2)
    /* A73A0 800B6BA0 080045AE */  sw         $a1, 0x8($s2)
    /* A73A4 800B6BA4 0C0046AE */  sw         $a2, 0xC($s2)
    /* A73A8 800B6BA8 3400438C */  lw         $v1, 0x34($v0)
    /* A73AC 800B6BAC 3800448C */  lw         $a0, 0x38($v0)
    /* A73B0 800B6BB0 3C00458C */  lw         $a1, 0x3C($v0)
    /* A73B4 800B6BB4 4000468C */  lw         $a2, 0x40($v0)
    /* A73B8 800B6BB8 100043AE */  sw         $v1, 0x10($s2)
    /* A73BC 800B6BBC 140044AE */  sw         $a0, 0x14($s2)
    /* A73C0 800B6BC0 180045AE */  sw         $a1, 0x18($s2)
    /* A73C4 800B6BC4 1C0046AE */  sw         $a2, 0x1C($s2)
    /* A73C8 800B6BC8 25DB0208 */  j          .L800B6C94
    /* A73CC 800B6BCC 21880000 */   addu      $s1, $zero, $zero
  .L800B6BD0:
    /* A73D0 800B6BD0 80101100 */  sll        $v0, $s1, 2
    /* A73D4 800B6BD4 21104600 */  addu       $v0, $v0, $a2
    /* A73D8 800B6BD8 0000428C */  lw         $v0, 0x0($v0)
    /* A73DC 800B6BDC 00000000 */  nop
    /* A73E0 800B6BE0 2400438C */  lw         $v1, 0x24($v0)
    /* A73E4 800B6BE4 2800448C */  lw         $a0, 0x28($v0)
    /* A73E8 800B6BE8 2C00458C */  lw         $a1, 0x2C($v0)
    /* A73EC 800B6BEC 3000468C */  lw         $a2, 0x30($v0)
    /* A73F0 800B6BF0 000043AE */  sw         $v1, 0x0($s2)
    /* A73F4 800B6BF4 040044AE */  sw         $a0, 0x4($s2)
    /* A73F8 800B6BF8 080045AE */  sw         $a1, 0x8($s2)
    /* A73FC 800B6BFC 0C0046AE */  sw         $a2, 0xC($s2)
    /* A7400 800B6C00 3400438C */  lw         $v1, 0x34($v0)
    /* A7404 800B6C04 3800448C */  lw         $a0, 0x38($v0)
    /* A7408 800B6C08 3C00458C */  lw         $a1, 0x3C($v0)
    /* A740C 800B6C0C 4000468C */  lw         $a2, 0x40($v0)
    /* A7410 800B6C10 100043AE */  sw         $v1, 0x10($s2)
    /* A7414 800B6C14 140044AE */  sw         $a0, 0x14($s2)
    /* A7418 800B6C18 180045AE */  sw         $a1, 0x18($s2)
    /* A741C 800B6C1C 25DB0208 */  j          .L800B6C94
    /* A7420 800B6C20 1C0046AE */   sw        $a2, 0x1C($s2)
  .L800B6C24:
    /* A7424 800B6C24 0000E38C */  lw         $v1, 0x0($a3)
    /* A7428 800B6C28 1180023C */  lui        $v0, %hi(D_8010CD50)
    /* A742C 800B6C2C 50CD428C */  lw         $v0, %lo(D_8010CD50)($v0)
    /* A7430 800B6C30 00000000 */  nop
    /* A7434 800B6C34 12006214 */  bne        $v1, $v0, .L800B6C80
    /* A7438 800B6C38 00000000 */   nop
    /* A743C 800B6C3C 2400E28C */  lw         $v0, 0x24($a3)
    /* A7440 800B6C40 2800E38C */  lw         $v1, 0x28($a3)
    /* A7444 800B6C44 2C00E48C */  lw         $a0, 0x2C($a3)
    /* A7448 800B6C48 3000E58C */  lw         $a1, 0x30($a3)
    /* A744C 800B6C4C 000042AE */  sw         $v0, 0x0($s2)
    /* A7450 800B6C50 040043AE */  sw         $v1, 0x4($s2)
    /* A7454 800B6C54 080044AE */  sw         $a0, 0x8($s2)
    /* A7458 800B6C58 0C0045AE */  sw         $a1, 0xC($s2)
    /* A745C 800B6C5C 3400E28C */  lw         $v0, 0x34($a3)
    /* A7460 800B6C60 3800E38C */  lw         $v1, 0x38($a3)
    /* A7464 800B6C64 3C00E48C */  lw         $a0, 0x3C($a3)
    /* A7468 800B6C68 4000E58C */  lw         $a1, 0x40($a3)
    /* A746C 800B6C6C 100042AE */  sw         $v0, 0x10($s2)
    /* A7470 800B6C70 140043AE */  sw         $v1, 0x14($s2)
    /* A7474 800B6C74 180044AE */  sw         $a0, 0x18($s2)
    /* A7478 800B6C78 25DB0208 */  j          .L800B6C94
    /* A747C 800B6C7C 1C0045AE */   sw        $a1, 0x1C($s2)
  .L800B6C80:
    /* A7480 800B6C80 02006014 */  bnez       $v1, .L800B6C8C
    /* A7484 800B6C84 21388000 */   addu      $a3, $a0, $zero
    /* A7488 800B6C88 21282002 */  addu       $a1, $s1, $zero
  .L800B6C8C:
    /* A748C 800B6C8C AADA0208 */  j          .L800B6AA8
    /* A7490 800B6C90 01003126 */   addiu     $s1, $s1, 0x1
  .L800B6C94:
    /* A7494 800B6C94 2000201A */  blez       $s1, .L800B6D18
    /* A7498 800B6C98 80101100 */   sll       $v0, $s1, 2
    /* A749C 800B6C9C 1180033C */  lui        $v1, %hi(D_8010C214)
    /* A74A0 800B6CA0 14C26324 */  addiu      $v1, $v1, %lo(D_8010C214)
    /* A74A4 800B6CA4 21804300 */  addu       $s0, $v0, $v1
  .L800B6CA8:
    /* A74A8 800B6CA8 0000058E */  lw         $a1, 0x0($s0)
    /* A74AC 800B6CAC 21204002 */  addu       $a0, $s2, $zero
    /* A74B0 800B6CB0 05D3020C */  jal        func_800B4C14
    /* A74B4 800B6CB4 0400A524 */   addiu     $a1, $a1, 0x4
    /* A74B8 800B6CB8 0000028E */  lw         $v0, 0x0($s0)
    /* A74BC 800B6CBC FFFF3126 */  addiu      $s1, $s1, -0x1
    /* A74C0 800B6CC0 0000438E */  lw         $v1, 0x0($s2)
    /* A74C4 800B6CC4 0400448E */  lw         $a0, 0x4($s2)
    /* A74C8 800B6CC8 0800458E */  lw         $a1, 0x8($s2)
    /* A74CC 800B6CCC 0C00468E */  lw         $a2, 0xC($s2)
    /* A74D0 800B6CD0 240043AC */  sw         $v1, 0x24($v0)
    /* A74D4 800B6CD4 280044AC */  sw         $a0, 0x28($v0)
    /* A74D8 800B6CD8 2C0045AC */  sw         $a1, 0x2C($v0)
    /* A74DC 800B6CDC 300046AC */  sw         $a2, 0x30($v0)
    /* A74E0 800B6CE0 1000438E */  lw         $v1, 0x10($s2)
    /* A74E4 800B6CE4 1400448E */  lw         $a0, 0x14($s2)
    /* A74E8 800B6CE8 1800458E */  lw         $a1, 0x18($s2)
    /* A74EC 800B6CEC 1C00468E */  lw         $a2, 0x1C($s2)
    /* A74F0 800B6CF0 340043AC */  sw         $v1, 0x34($v0)
    /* A74F4 800B6CF4 380044AC */  sw         $a0, 0x38($v0)
    /* A74F8 800B6CF8 3C0045AC */  sw         $a1, 0x3C($v0)
    /* A74FC 800B6CFC 400046AC */  sw         $a2, 0x40($v0)
    /* A7500 800B6D00 0000038E */  lw         $v1, 0x0($s0)
    /* A7504 800B6D04 1180023C */  lui        $v0, %hi(D_8010CD50)
    /* A7508 800B6D08 50CD428C */  lw         $v0, %lo(D_8010CD50)($v0)
    /* A750C 800B6D0C FCFF1026 */  addiu      $s0, $s0, -0x4
    /* A7510 800B6D10 E5FF201E */  bgtz       $s1, .L800B6CA8
    /* A7514 800B6D14 000062AC */   sw        $v0, 0x0($v1)
  .L800B6D18:
    /* A7518 800B6D18 1080043C */  lui        $a0, %hi(D_800FF6B0)
    /* A751C 800B6D1C B0F68424 */  addiu      $a0, $a0, %lo(D_800FF6B0)
    /* A7520 800B6D20 E5D2020C */  jal        func_800B4B94
    /* A7524 800B6D24 21284002 */   addu      $a1, $s2, $zero
    /* A7528 800B6D28 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A752C 800B6D2C 1800B28F */  lw         $s2, 0x18($sp)
    /* A7530 800B6D30 1400B18F */  lw         $s1, 0x14($sp)
    /* A7534 800B6D34 1000B08F */  lw         $s0, 0x10($sp)
    /* A7538 800B6D38 0800E003 */  jr         $ra
    /* A753C 800B6D3C 2000BD27 */   addiu     $sp, $sp, 0x20
    /* A7540 800B6D40 00000000 */  nop
    /* A7544 800B6D44 00000000 */  nop
    /* A7548 800B6D48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A754C 800B6D4C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7550 800B6D50 1180013C */  lui        $at, %hi(D_8010CD8C)
    /* A7554 800B6D54 8CCD24AC */  sw         $a0, %lo(D_8010CD8C)($at)
    /* A7558 800B6D58 1180013C */  lui        $at, %hi(D_8010CE68)
    /* A755C 800B6D5C 7EE5020C */  jal        func_800B95F8
    /* A7560 800B6D60 68CE25AC */   sw        $a1, %lo(D_8010CE68)($at)
    /* A7564 800B6D64 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7568 800B6D68 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A756C 800B6D6C 0800E003 */  jr         $ra
    /* A7570 800B6D70 00000000 */   nop
endlabel func_800B6A78
    /* A7574 800B6D74 00000000 */  nop
