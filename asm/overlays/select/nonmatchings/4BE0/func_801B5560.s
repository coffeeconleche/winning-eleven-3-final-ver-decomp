nonmatching func_801B5560, 0xE4

glabel func_801B5560
    /* 2C5E8 801B5560 21280000 */  addu       $a1, $zero, $zero
    /* 2C5EC 801B5564 1E80063C */  lui        $a2, %hi(D_801DAD84)
    /* 2C5F0 801B5568 84ADC690 */  lbu        $a2, %lo(D_801DAD84)($a2)
    /* 2C5F4 801B556C 00000000 */  nop
    /* 2C5F8 801B5570 0600C22C */  sltiu      $v0, $a2, 0x6
    /* 2C5FC 801B5574 2D004010 */  beqz       $v0, .L801B562C
    /* 2C600 801B5578 21180000 */   addu      $v1, $zero, $zero
    /* 2C604 801B557C 80100600 */  sll        $v0, $a2, 2
    /* 2C608 801B5580 1980013C */  lui        $at, %hi(jtbl_8018AD6C)
    /* 2C60C 801B5584 21082200 */  addu       $at, $at, $v0
    /* 2C610 801B5588 6CAD228C */  lw         $v0, %lo(jtbl_8018AD6C)($at)
    /* 2C614 801B558C 00000000 */  nop
    /* 2C618 801B5590 08004000 */  jr         $v0
    /* 2C61C 801B5594 00000000 */   nop
  jlabel .L801B5598
    /* 2C620 801B5598 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 2C624 801B559C 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 2C628 801B55A0 6DD50608 */  j          .L801B55B4
    /* 2C62C 801B55A4 7CFF0524 */   addiu     $a1, $zero, -0x84
  jlabel .L801B55A8
    /* 2C630 801B55A8 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 2C634 801B55AC 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 2C638 801B55B0 34000524 */  addiu      $a1, $zero, 0x34
  .L801B55B4:
    /* 2C63C 801B55B4 80100300 */  sll        $v0, $v1, 2
    /* 2C640 801B55B8 21104300 */  addu       $v0, $v0, $v1
    /* 2C644 801B55BC 80100200 */  sll        $v0, $v0, 2
    /* 2C648 801B55C0 8BD50608 */  j          .L801B562C
    /* 2C64C 801B55C4 C0FF4324 */   addiu     $v1, $v0, -0x40
  jlabel .L801B55C8
    /* 2C650 801B55C8 FF008230 */  andi       $v0, $a0, 0xFF
    /* 2C654 801B55CC 04004014 */  bnez       $v0, .L801B55E0
    /* 2C658 801B55D0 70FF0524 */   addiu     $a1, $zero, -0x90
    /* 2C65C 801B55D4 A6000524 */  addiu      $a1, $zero, 0xA6
    /* 2C660 801B55D8 8BD50608 */  j          .L801B562C
    /* 2C664 801B55DC D0FF0324 */   addiu     $v1, $zero, -0x30
  .L801B55E0:
    /* 2C668 801B55E0 8BD50608 */  j          .L801B562C
    /* 2C66C 801B55E4 A0FF0324 */   addiu     $v1, $zero, -0x60
  jlabel .L801B55E8
    /* 2C670 801B55E8 FF008230 */  andi       $v0, $a0, 0xFF
    /* 2C674 801B55EC 03004014 */  bnez       $v0, .L801B55FC
    /* 2C678 801B55F0 F0FF0524 */   addiu     $a1, $zero, -0x10
    /* 2C67C 801B55F4 8AD50608 */  j          .L801B5628
    /* 2C680 801B55F8 A6000524 */   addiu     $a1, $zero, 0xA6
  .L801B55FC:
    /* 2C684 801B55FC 8BD50608 */  j          .L801B562C
    /* 2C688 801B5600 A0FF0324 */   addiu     $v1, $zero, -0x60
  jlabel .L801B5604
    /* 2C68C 801B5604 FF008230 */  andi       $v0, $a0, 0xFF
    /* 2C690 801B5608 04004014 */  bnez       $v0, .L801B561C
    /* 2C694 801B560C B0FF0524 */   addiu     $a1, $zero, -0x50
    /* 2C698 801B5610 94000524 */  addiu      $a1, $zero, 0x94
    /* 2C69C 801B5614 8BD50608 */  j          .L801B562C
    /* 2C6A0 801B5618 A8FF0324 */   addiu     $v1, $zero, -0x58
  .L801B561C:
    /* 2C6A4 801B561C 8BD50608 */  j          .L801B562C
    /* 2C6A8 801B5620 A0FF0324 */   addiu     $v1, $zero, -0x60
  jlabel .L801B5624
    /* 2C6AC 801B5624 21280000 */  addu       $a1, $zero, $zero
  .L801B5628:
    /* 2C6B0 801B5628 58000324 */  addiu      $v1, $zero, 0x58
  .L801B562C:
    /* 2C6B4 801B562C 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 2C6B8 801B5630 868A25A4 */  sh         $a1, %lo(D_801D8A86)($at)
    /* 2C6BC 801B5634 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 2C6C0 801B5638 888A23A4 */  sh         $v1, %lo(D_801D8A88)($at)
    /* 2C6C4 801B563C 0800E003 */  jr         $ra
    /* 2C6C8 801B5640 00000000 */   nop
endlabel func_801B5560
