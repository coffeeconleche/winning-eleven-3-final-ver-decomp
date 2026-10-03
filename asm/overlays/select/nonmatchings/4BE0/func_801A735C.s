nonmatching func_801A735C, 0x34C

glabel func_801A735C
    /* 1E3E4 801A735C A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 1E3E8 801A7360 4800B0AF */  sw         $s0, 0x48($sp)
    /* 1E3EC 801A7364 21808000 */  addu       $s0, $a0, $zero
    /* 1E3F0 801A7368 21180000 */  addu       $v1, $zero, $zero
    /* 1E3F4 801A736C 21200000 */  addu       $a0, $zero, $zero
    /* 1E3F8 801A7370 02000106 */  bgez       $s0, .L801A737C
    /* 1E3FC 801A7374 21100002 */   addu      $v0, $s0, $zero
    /* 1E400 801A7378 23100200 */  negu       $v0, $v0
  .L801A737C:
    /* 1E404 801A737C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1E408 801A7380 30005124 */  addiu      $s1, $v0, 0x30
    /* 1E40C 801A7384 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1E410 801A7388 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 1E414 801A738C 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 1E418 801A7390 5800B4AF */  sw         $s4, 0x58($sp)
    /* 1E41C 801A7394 21A02002 */  addu       $s4, $s1, $zero
    /* 1E420 801A7398 5400B3AF */  sw         $s3, 0x54($sp)
    /* 1E424 801A739C 21982002 */  addu       $s3, $s1, $zero
    /* 1E428 801A73A0 5F000016 */  bnez       $s0, .L801A7520
    /* 1E42C 801A73A4 5C00BFAF */   sw        $ra, 0x5C($sp)
    /* 1E430 801A73A8 1E80023C */  lui        $v0, %hi(D_801D81C8)
    /* 1E434 801A73AC C8814290 */  lbu        $v0, %lo(D_801D81C8)($v0)
    /* 1E438 801A73B0 00000000 */  nop
    /* 1E43C 801A73B4 0300422C */  sltiu      $v0, $v0, 0x3
    /* 1E440 801A73B8 03004010 */  beqz       $v0, .L801A73C8
    /* 1E444 801A73BC 1000A0AF */   sw        $zero, 0x10($sp)
    /* 1E448 801A73C0 F39C0608 */  j          .L801A73CC
    /* 1E44C 801A73C4 1E000224 */   addiu     $v0, $zero, 0x1E
  .L801A73C8:
    /* 1E450 801A73C8 1F000224 */  addiu      $v0, $zero, 0x1F
  .L801A73CC:
    /* 1E454 801A73CC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1E458 801A73D0 0D000424 */  addiu      $a0, $zero, 0xD
    /* 1E45C 801A73D4 89300524 */  addiu      $a1, $zero, 0x3089
    /* 1E460 801A73D8 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 1E464 801A73DC 21380000 */  addu       $a3, $zero, $zero
    /* 1E468 801A73E0 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1E46C 801A73E4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1E470 801A73E8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1E474 801A73EC 80000224 */  addiu      $v0, $zero, 0x80
    /* 1E478 801A73F0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 1E47C 801A73F4 3000A2AF */  sw         $v0, 0x30($sp)
    /* 1E480 801A73F8 3400A2AF */  sw         $v0, 0x34($sp)
    /* 1E484 801A73FC 02000224 */  addiu      $v0, $zero, 0x2
    /* 1E488 801A7400 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1E48C 801A7404 01000224 */  addiu      $v0, $zero, 0x1
    /* 1E490 801A7408 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1E494 801A740C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1E498 801A7410 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1E49C 801A7414 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1E4A0 801A7418 ED4F060C */  jal        func_80193FB4
    /* 1E4A4 801A741C 4000A2AF */   sw        $v0, 0x40($sp)
    /* 1E4A8 801A7420 1E80023C */  lui        $v0, %hi(D_801D81C8)
    /* 1E4AC 801A7424 C8814290 */  lbu        $v0, %lo(D_801D81C8)($v0)
    /* 1E4B0 801A7428 00000000 */  nop
    /* 1E4B4 801A742C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 1E4B8 801A7430 03004010 */  beqz       $v0, .L801A7440
    /* 1E4BC 801A7434 1000A0AF */   sw        $zero, 0x10($sp)
    /* 1E4C0 801A7438 119D0608 */  j          .L801A7444
    /* 1E4C4 801A743C 1E000224 */   addiu     $v0, $zero, 0x1E
  .L801A7440:
    /* 1E4C8 801A7440 1F000224 */  addiu      $v0, $zero, 0x1F
  .L801A7444:
    /* 1E4CC 801A7444 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1E4D0 801A7448 0E000424 */  addiu      $a0, $zero, 0xE
    /* 1E4D4 801A744C 8A300524 */  addiu      $a1, $zero, 0x308A
    /* 1E4D8 801A7450 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 1E4DC 801A7454 21380000 */  addu       $a3, $zero, $zero
    /* 1E4E0 801A7458 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1E4E4 801A745C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1E4E8 801A7460 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1E4EC 801A7464 80000224 */  addiu      $v0, $zero, 0x80
    /* 1E4F0 801A7468 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 1E4F4 801A746C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 1E4F8 801A7470 3400A2AF */  sw         $v0, 0x34($sp)
    /* 1E4FC 801A7474 02000224 */  addiu      $v0, $zero, 0x2
    /* 1E500 801A7478 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1E504 801A747C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1E508 801A7480 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1E50C 801A7484 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1E510 801A7488 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1E514 801A748C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1E518 801A7490 ED4F060C */  jal        func_80193FB4
    /* 1E51C 801A7494 4000A2AF */   sw        $v0, 0x40($sp)
    /* 1E520 801A7498 21200000 */  addu       $a0, $zero, $zero
    /* 1E524 801A749C 80000224 */  addiu      $v0, $zero, 0x80
    /* 1E528 801A74A0 066042A2 */  sb         $v0, 0x6006($s2)
    /* 1E52C 801A74A4 076042A2 */  sb         $v0, 0x6007($s2)
    /* 1E530 801A74A8 AA9D060C */  jal        func_801A76A8
    /* 1E534 801A74AC 086042A2 */   sb        $v0, 0x6008($s2)
    /* 1E538 801A74B0 21204000 */  addu       $a0, $v0, $zero
    /* 1E53C 801A74B4 FC5F438E */  lw         $v1, 0x5FFC($s2)
    /* 1E540 801A74B8 01008290 */  lbu        $v0, 0x1($a0)
    /* 1E544 801A74BC D45F458E */  lw         $a1, 0x5FD4($s2)
    /* 1E548 801A74C0 010062A0 */  sb         $v0, 0x1($v1)
    /* 1E54C 801A74C4 0100A2A0 */  sb         $v0, 0x1($a1)
    /* 1E550 801A74C8 02008290 */  lbu        $v0, 0x2($a0)
    /* 1E554 801A74CC 00000000 */  nop
    /* 1E558 801A74D0 020062A0 */  sb         $v0, 0x2($v1)
    /* 1E55C 801A74D4 0200A2A0 */  sb         $v0, 0x2($a1)
    /* 1E560 801A74D8 03008290 */  lbu        $v0, 0x3($a0)
    /* 1E564 801A74DC 00000000 */  nop
    /* 1E568 801A74E0 030062A0 */  sb         $v0, 0x3($v1)
    /* 1E56C 801A74E4 0300A2A0 */  sb         $v0, 0x3($a1)
    /* 1E570 801A74E8 04008290 */  lbu        $v0, 0x4($a0)
    /* 1E574 801A74EC 00000000 */  nop
    /* 1E578 801A74F0 040062A0 */  sb         $v0, 0x4($v1)
    /* 1E57C 801A74F4 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 1E580 801A74F8 0A008290 */  lbu        $v0, 0xA($a0)
    /* 1E584 801A74FC 00000000 */  nop
    /* 1E588 801A7500 0A0062A0 */  sb         $v0, 0xA($v1)
    /* 1E58C 801A7504 0A00A2A0 */  sb         $v0, 0xA($a1)
    /* 1E590 801A7508 1E80023C */  lui        $v0, %hi(D_801D81C8)
    /* 1E594 801A750C C8814290 */  lbu        $v0, %lo(D_801D81C8)($v0)
    /* 1E598 801A7510 1E80013C */  lui        $at, %hi(D_801D81A8)
    /* 1E59C 801A7514 A88122A0 */  sb         $v0, %lo(D_801D81A8)($at)
    /* 1E5A0 801A7518 A19D0608 */  j          .L801A7684
    /* 1E5A4 801A751C 00000000 */   nop
  .L801A7520:
    /* 1E5A8 801A7520 04000006 */  bltz       $s0, .L801A7534
    /* 1E5AC 801A7524 00140400 */   sll       $v0, $a0, 16
    /* 1E5B0 801A7528 21200002 */  addu       $a0, $s0, $zero
    /* 1E5B4 801A752C 21188000 */  addu       $v1, $a0, $zero
    /* 1E5B8 801A7530 00140400 */  sll        $v0, $a0, 16
  .L801A7534:
    /* 1E5BC 801A7534 03140200 */  sra        $v0, $v0, 16
    /* 1E5C0 801A7538 001C0300 */  sll        $v1, $v1, 16
    /* 1E5C4 801A753C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1E5C8 801A7540 1E80023C */  lui        $v0, %hi(D_801D81C8)
    /* 1E5CC 801A7544 C8814290 */  lbu        $v0, %lo(D_801D81C8)($v0)
    /* 1E5D0 801A7548 00000000 */  nop
    /* 1E5D4 801A754C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 1E5D8 801A7550 03004010 */  beqz       $v0, .L801A7560
    /* 1E5DC 801A7554 033C0300 */   sra       $a3, $v1, 16
    /* 1E5E0 801A7558 599D0608 */  j          .L801A7564
    /* 1E5E4 801A755C 1E000224 */   addiu     $v0, $zero, 0x1E
  .L801A7560:
    /* 1E5E8 801A7560 1F000224 */  addiu      $v0, $zero, 0x1F
  .L801A7564:
    /* 1E5EC 801A7564 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1E5F0 801A7568 0D000424 */  addiu      $a0, $zero, 0xD
    /* 1E5F4 801A756C 89300524 */  addiu      $a1, $zero, 0x3089
    /* 1E5F8 801A7570 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 1E5FC 801A7574 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1E600 801A7578 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1E604 801A757C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1E608 801A7580 80000224 */  addiu      $v0, $zero, 0x80
    /* 1E60C 801A7584 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 1E610 801A7588 3000A2AF */  sw         $v0, 0x30($sp)
    /* 1E614 801A758C 3400A2AF */  sw         $v0, 0x34($sp)
    /* 1E618 801A7590 02000224 */  addiu      $v0, $zero, 0x2
    /* 1E61C 801A7594 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1E620 801A7598 01000224 */  addiu      $v0, $zero, 0x1
    /* 1E624 801A759C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1E628 801A75A0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1E62C 801A75A4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1E630 801A75A8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1E634 801A75AC ED4F060C */  jal        func_80193FB4
    /* 1E638 801A75B0 4000A2AF */   sw        $v0, 0x40($sp)
    /* 1E63C 801A75B4 1E80023C */  lui        $v0, %hi(D_801D81A8)
    /* 1E640 801A75B8 A8814290 */  lbu        $v0, %lo(D_801D81A8)($v0)
    /* 1E644 801A75BC 00000000 */  nop
    /* 1E648 801A75C0 0300422C */  sltiu      $v0, $v0, 0x3
    /* 1E64C 801A75C4 03004010 */  beqz       $v0, .L801A75D4
    /* 1E650 801A75C8 1000A0AF */   sw        $zero, 0x10($sp)
    /* 1E654 801A75CC 769D0608 */  j          .L801A75D8
    /* 1E658 801A75D0 1E000224 */   addiu     $v0, $zero, 0x1E
  .L801A75D4:
    /* 1E65C 801A75D4 1F000224 */  addiu      $v0, $zero, 0x1F
  .L801A75D8:
    /* 1E660 801A75D8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1E664 801A75DC 0E000424 */  addiu      $a0, $zero, 0xE
    /* 1E668 801A75E0 8A300524 */  addiu      $a1, $zero, 0x308A
    /* 1E66C 801A75E4 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 1E670 801A75E8 21380000 */  addu       $a3, $zero, $zero
    /* 1E674 801A75EC 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1E678 801A75F0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1E67C 801A75F4 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1E680 801A75F8 80000224 */  addiu      $v0, $zero, 0x80
    /* 1E684 801A75FC 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 1E688 801A7600 3000A2AF */  sw         $v0, 0x30($sp)
    /* 1E68C 801A7604 3400A2AF */  sw         $v0, 0x34($sp)
    /* 1E690 801A7608 02000224 */  addiu      $v0, $zero, 0x2
    /* 1E694 801A760C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1E698 801A7610 01000224 */  addiu      $v0, $zero, 0x1
    /* 1E69C 801A7614 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1E6A0 801A7618 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1E6A4 801A761C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1E6A8 801A7620 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1E6AC 801A7624 ED4F060C */  jal        func_80193FB4
    /* 1E6B0 801A7628 4000A2AF */   sw        $v0, 0x40($sp)
    /* 1E6B4 801A762C 21200002 */  addu       $a0, $s0, $zero
    /* 1E6B8 801A7630 066053A2 */  sb         $s3, 0x6006($s2)
    /* 1E6BC 801A7634 076054A2 */  sb         $s4, 0x6007($s2)
    /* 1E6C0 801A7638 AA9D060C */  jal        func_801A76A8
    /* 1E6C4 801A763C 086051A2 */   sb        $s1, 0x6008($s2)
    /* 1E6C8 801A7640 21204000 */  addu       $a0, $v0, $zero
    /* 1E6CC 801A7644 D45F458E */  lw         $a1, 0x5FD4($s2)
    /* 1E6D0 801A7648 01008290 */  lbu        $v0, 0x1($a0)
    /* 1E6D4 801A764C 00000000 */  nop
    /* 1E6D8 801A7650 0100A2A0 */  sb         $v0, 0x1($a1)
    /* 1E6DC 801A7654 02008290 */  lbu        $v0, 0x2($a0)
    /* 1E6E0 801A7658 00000000 */  nop
    /* 1E6E4 801A765C 0200A2A0 */  sb         $v0, 0x2($a1)
    /* 1E6E8 801A7660 03008290 */  lbu        $v0, 0x3($a0)
    /* 1E6EC 801A7664 00000000 */  nop
    /* 1E6F0 801A7668 0300A2A0 */  sb         $v0, 0x3($a1)
    /* 1E6F4 801A766C 04008290 */  lbu        $v0, 0x4($a0)
    /* 1E6F8 801A7670 00000000 */  nop
    /* 1E6FC 801A7674 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 1E700 801A7678 0A008290 */  lbu        $v0, 0xA($a0)
    /* 1E704 801A767C 00000000 */  nop
    /* 1E708 801A7680 0A00A2A0 */  sb         $v0, 0xA($a1)
  .L801A7684:
    /* 1E70C 801A7684 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 1E710 801A7688 5800B48F */  lw         $s4, 0x58($sp)
    /* 1E714 801A768C 5400B38F */  lw         $s3, 0x54($sp)
    /* 1E718 801A7690 5000B28F */  lw         $s2, 0x50($sp)
    /* 1E71C 801A7694 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 1E720 801A7698 4800B08F */  lw         $s0, 0x48($sp)
    /* 1E724 801A769C 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 1E728 801A76A0 0800E003 */  jr         $ra
    /* 1E72C 801A76A4 00000000 */   nop
endlabel func_801A735C
