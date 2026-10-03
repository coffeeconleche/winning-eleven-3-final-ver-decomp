nonmatching func_801C84E8, 0x1CC

glabel func_801C84E8
    /* 3F570 801C84E8 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 3F574 801C84EC 4800B6AF */  sw         $s6, 0x48($sp)
    /* 3F578 801C84F0 1080163C */  lui        $s6, %hi(D_800FF748)
    /* 3F57C 801C84F4 48F7D626 */  addiu      $s6, $s6, %lo(D_800FF748)
    /* 3F580 801C84F8 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 3F584 801C84FC 1E80173C */  lui        $s7, %hi(D_801DA5D0)
    /* 3F588 801C8500 D0A5F726 */  addiu      $s7, $s7, %lo(D_801DA5D0)
    /* 3F58C 801C8504 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3F590 801C8508 21800000 */  addu       $s0, $zero, $zero
    /* 3F594 801C850C 5000BFAF */  sw         $ra, 0x50($sp)
    /* 3F598 801C8510 4400B5AF */  sw         $s5, 0x44($sp)
    /* 3F59C 801C8514 4000B4AF */  sw         $s4, 0x40($sp)
    /* 3F5A0 801C8518 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3F5A4 801C851C 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3F5A8 801C8520 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3F5AC 801C8524 05000426 */  addiu      $a0, $s0, 0x5
  .L801C8528:
    /* 3F5B0 801C8528 0F3B060C */  jal        func_8018EC3C
    /* 3F5B4 801C852C 21280000 */   addu      $a1, $zero, $zero
    /* 3F5B8 801C8530 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F5BC 801C8534 0B00022A */  slti       $v0, $s0, 0xB
    /* 3F5C0 801C8538 FBFF4014 */  bnez       $v0, .L801C8528
    /* 3F5C4 801C853C 05000426 */   addiu     $a0, $s0, 0x5
    /* 3F5C8 801C8540 21800000 */  addu       $s0, $zero, $zero
    /* 3F5CC 801C8544 0D80153C */  lui        $s5, %hi(D_800C8568)
    /* 3F5D0 801C8548 6885B526 */  addiu      $s5, $s5, %lo(D_800C8568)
    /* 3F5D4 801C854C EA8A1434 */  ori        $s4, $zero, 0x8AEA
    /* 3F5D8 801C8550 1E80113C */  lui        $s1, %hi(D_801D8A98)
    /* 3F5DC 801C8554 988A3126 */  addiu      $s1, $s1, %lo(D_801D8A98)
    /* 3F5E0 801C8558 21980000 */  addu       $s3, $zero, $zero
    /* 3F5E4 801C855C B7FF1224 */  addiu      $s2, $zero, -0x49
  .L801C8560:
    /* 3F5E8 801C8560 21280000 */  addu       $a1, $zero, $zero
    /* 3F5EC 801C8564 0200E286 */  lh         $v0, 0x2($s7)
    /* 3F5F0 801C8568 21202002 */  addu       $a0, $s1, $zero
    /* 3F5F4 801C856C 1E80013C */  lui        $at, %hi(D_801D8AA0)
    /* 3F5F8 801C8570 21083300 */  addu       $at, $at, $s3
    /* 3F5FC 801C8574 A08A20A0 */  sb         $zero, %lo(D_801D8AA0)($at)
    /* 3F600 801C8578 21305000 */  addu       $a2, $v0, $s0
  .L801C857C:
    /* 3F604 801C857C 000080A0 */  sb         $zero, 0x0($a0)
    /* 3F608 801C8580 1E80033C */  lui        $v1, %hi(D_801DA330)
    /* 3F60C 801C8584 30A36390 */  lbu        $v1, %lo(D_801DA330)($v1)
    /* 3F610 801C8588 00000000 */  nop
    /* 3F614 801C858C 40100300 */  sll        $v0, $v1, 1
    /* 3F618 801C8590 21104300 */  addu       $v0, $v0, $v1
    /* 3F61C 801C8594 80100200 */  sll        $v0, $v0, 2
    /* 3F620 801C8598 23104300 */  subu       $v0, $v0, $v1
    /* 3F624 801C859C 00190200 */  sll        $v1, $v0, 4
    /* 3F628 801C85A0 40100200 */  sll        $v0, $v0, 1
    /* 3F62C 801C85A4 21105600 */  addu       $v0, $v0, $s6
    /* 3F630 801C85A8 21105400 */  addu       $v0, $v0, $s4
    /* 3F634 801C85AC 21104600 */  addu       $v0, $v0, $a2
    /* 3F638 801C85B0 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F63C 801C85B4 21187500 */  addu       $v1, $v1, $s5
    /* 3F640 801C85B8 C0100200 */  sll        $v0, $v0, 3
    /* 3F644 801C85BC 21104300 */  addu       $v0, $v0, $v1
    /* 3F648 801C85C0 21104500 */  addu       $v0, $v0, $a1
    /* 3F64C 801C85C4 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F650 801C85C8 00000000 */  nop
    /* 3F654 801C85CC 06004010 */  beqz       $v0, .L801C85E8
    /* 3F658 801C85D0 00000000 */   nop
    /* 3F65C 801C85D4 000082A0 */  sb         $v0, 0x0($a0)
    /* 3F660 801C85D8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 3F664 801C85DC 0800A228 */  slti       $v0, $a1, 0x8
    /* 3F668 801C85E0 E6FF4014 */  bnez       $v0, .L801C857C
    /* 3F66C 801C85E4 01008424 */   addiu     $a0, $a0, 0x1
  .L801C85E8:
    /* 3F670 801C85E8 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 3F674 801C85EC 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 3F678 801C85F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 3F67C 801C85F4 08006214 */  bne        $v1, $v0, .L801C8618
    /* 3F680 801C85F8 0B00C228 */   slti      $v0, $a2, 0xB
    /* 3F684 801C85FC 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 3F688 801C8600 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 3F68C 801C8604 00000000 */  nop
    /* 3F690 801C8608 18000212 */  beq        $s0, $v0, .L801C866C
    /* 3F694 801C860C 6A000324 */   addiu     $v1, $zero, 0x6A
    /* 3F698 801C8610 8A210708 */  j          .L801C8628
    /* 3F69C 801C8614 05000426 */   addiu     $a0, $s0, 0x5
  .L801C8618:
    /* 3F6A0 801C8618 01004238 */  xori       $v0, $v0, 0x1
    /* 3F6A4 801C861C 23100200 */  negu       $v0, $v0
    /* 3F6A8 801C8620 69004330 */  andi       $v1, $v0, 0x69
    /* 3F6AC 801C8624 05000426 */  addiu      $a0, $s0, 0x5
  .L801C8628:
    /* 3F6B0 801C8628 21282002 */  addu       $a1, $s1, $zero
    /* 3F6B4 801C862C 40000224 */  addiu      $v0, $zero, 0x40
    /* 3F6B8 801C8630 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3F6BC 801C8634 03000224 */  addiu      $v0, $zero, 0x3
    /* 3F6C0 801C8638 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3F6C4 801C863C 02000224 */  addiu      $v0, $zero, 0x2
    /* 3F6C8 801C8640 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3F6CC 801C8644 05000224 */  addiu      $v0, $zero, 0x5
    /* 3F6D0 801C8648 2800A2AF */  sw         $v0, 0x28($sp)
    /* 3F6D4 801C864C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3F6D8 801C8650 5DFF0624 */  addiu      $a2, $zero, -0xA3
    /* 3F6DC 801C8654 21384002 */  addu       $a3, $s2, $zero
    /* 3F6E0 801C8658 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3F6E4 801C865C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3F6E8 801C8660 2000A3AF */  sw         $v1, 0x20($sp)
    /* 3F6EC 801C8664 B850060C */  jal        func_801942E0
    /* 3F6F0 801C8668 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801C866C:
    /* 3F6F4 801C866C 09003126 */  addiu      $s1, $s1, 0x9
    /* 3F6F8 801C8670 09007326 */  addiu      $s3, $s3, 0x9
    /* 3F6FC 801C8674 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F700 801C8678 0B00022A */  slti       $v0, $s0, 0xB
    /* 3F704 801C867C B8FF4014 */  bnez       $v0, .L801C8560
    /* 3F708 801C8680 10005226 */   addiu     $s2, $s2, 0x10
    /* 3F70C 801C8684 5000BF8F */  lw         $ra, 0x50($sp)
    /* 3F710 801C8688 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 3F714 801C868C 4800B68F */  lw         $s6, 0x48($sp)
    /* 3F718 801C8690 4400B58F */  lw         $s5, 0x44($sp)
    /* 3F71C 801C8694 4000B48F */  lw         $s4, 0x40($sp)
    /* 3F720 801C8698 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 3F724 801C869C 3800B28F */  lw         $s2, 0x38($sp)
    /* 3F728 801C86A0 3400B18F */  lw         $s1, 0x34($sp)
    /* 3F72C 801C86A4 3000B08F */  lw         $s0, 0x30($sp)
    /* 3F730 801C86A8 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 3F734 801C86AC 0800E003 */  jr         $ra
    /* 3F738 801C86B0 00000000 */   nop
endlabel func_801C84E8
