/* Handwritten function */
nonmatching func_8018E4E0, 0x3F0

glabel func_8018E4E0
    /* 5568 8018E4E0 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 556C 8018E4E4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 5570 8018E4E8 801F123C */  lui        $s2, (0x1F80029D >> 16)
    /* 5574 8018E4EC 3400B5AF */  sw         $s5, 0x34($sp)
    /* 5578 8018E4F0 21A80000 */  addu       $s5, $zero, $zero
    /* 557C 8018E4F4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 5580 8018E4F8 801F133C */  lui        $s3, (0x1F800104 >> 16)
    /* 5584 8018E4FC 04017336 */  ori        $s3, $s3, (0x1F800104 & 0xFFFF)
    /* 5588 8018E500 801F073C */  lui        $a3, (0x1F8001A8 >> 16)
    /* 558C 8018E504 A801E734 */  ori        $a3, $a3, (0x1F8001A8 & 0xFFFF)
    /* 5590 8018E508 1000A7AF */  sw         $a3, 0x10($sp)
    /* 5594 8018E50C FF00073C */  lui        $a3, (0xFFFFFF >> 16)
    /* 5598 8018E510 FFFFE734 */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
    /* 559C 8018E514 4000BEAF */  sw         $fp, 0x40($sp)
    /* 55A0 8018E518 19801E3C */  lui        $fp, %hi(D_80193C48)
    /* 55A4 8018E51C 483CDE27 */  addiu      $fp, $fp, %lo(D_80193C48)
    /* 55A8 8018E520 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 55AC 8018E524 00051724 */  addiu      $s7, $zero, 0x500
    /* 55B0 8018E528 3800B6AF */  sw         $s6, 0x38($sp)
    /* 55B4 8018E52C 21B00000 */  addu       $s6, $zero, $zero
    /* 55B8 8018E530 3000B4AF */  sw         $s4, 0x30($sp)
    /* 55BC 8018E534 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 55C0 8018E538 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 55C4 8018E53C 4400BFAF */  sw         $ra, 0x44($sp)
    /* 55C8 8018E540 2400B1AF */  sw         $s1, 0x24($sp)
    /* 55CC 8018E544 2000B0AF */  sw         $s0, 0x20($sp)
    /* 55D0 8018E548 1800A7AF */  sw         $a3, 0x18($sp)
  .L8018E54C:
    /* 55D4 8018E54C 24014426 */  addiu      $a0, $s2, %lo(D_1F800124)
    /* 55D8 8018E550 21286002 */  addu       $a1, $s3, $zero
    /* 55DC 8018E554 240140A6 */  sh         $zero, (0x1F800124 & 0xFFFF)($s2)
    /* 55E0 8018E558 260140A6 */  sh         $zero, (0x1F800126 & 0xFFFF)($s2)
    /* 55E4 8018E55C 280140A6 */  sh         $zero, (0x1F800128 & 0xFFFF)($s2)
    /* 55E8 8018E560 0100013C */  lui        $at, (0x10000 >> 16)
    /* 55EC 8018E564 21088102 */  addu       $at, $s4, $at
    /* 55F0 8018E568 28AC2284 */  lh         $v0, -0x53D8($at)
    /* 55F4 8018E56C 00100324 */  addiu      $v1, $zero, 0x1000
    /* 55F8 8018E570 400140AE */  sw         $zero, (0x1F800140 & 0xFFFF)($s2)
    /* 55FC 8018E574 3C0142AE */  sw         $v0, (0x1F80013C & 0xFFFF)($s2)
    /* 5600 8018E578 0100013C */  lui        $at, (0x10000 >> 16)
    /* 5604 8018E57C 21088102 */  addu       $at, $s4, $at
    /* 5608 8018E580 30AC2684 */  lh         $a2, -0x53D0($at)
    /* 560C 8018E584 33130224 */  addiu      $v0, $zero, 0x1333
    /* 5610 8018E588 4C0143AE */  sw         $v1, (0x1F80014C & 0xFFFF)($s2)
    /* 5614 8018E58C 500142AE */  sw         $v0, (0x1F800150 & 0xFFFF)($s2)
    /* 5618 8018E590 540143AE */  sw         $v1, (0x1F800154 & 0xFFFF)($s2)
    /* 561C 8018E594 C6C5020C */  jal        func_800B1718
    /* 5620 8018E598 440146AE */   sw        $a2, (0x1F800144 & 0xFFFF)($s2)
    /* 5624 8018E59C 21206002 */  addu       $a0, $s3, $zero
    /* 5628 8018E5A0 D2C4020C */  jal        func_800B1348
    /* 562C 8018E5A4 4C014526 */   addiu     $a1, $s2, %lo(D_1F80014C)
    /* 5630 8018E5A8 21206002 */  addu       $a0, $s3, $zero
    /* 5634 8018E5AC C6C4020C */  jal        func_800B1318
    /* 5638 8018E5B0 3C014526 */   addiu     $a1, $s2, %lo(D_1F80013C)
    /* 563C 8018E5B4 1000A78F */  lw         $a3, 0x10($sp)
    /* 5640 8018E5B8 00000000 */  nop
    /* 5644 8018E5BC 0000EC8C */  lw         $t4, 0x0($a3)
    /* 5648 8018E5C0 0400ED8C */  lw         $t5, 0x4($a3)
    /* 564C 8018E5C4 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 5650 8018E5C8 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 5654 8018E5CC 0800EC8C */  lw         $t4, 0x8($a3)
    /* 5658 8018E5D0 0C00ED8C */  lw         $t5, 0xC($a3)
    /* 565C 8018E5D4 1000EE8C */  lw         $t6, 0x10($a3)
    /* 5660 8018E5D8 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* 5664 8018E5DC 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* 5668 8018E5E0 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* 566C 8018E5E4 00006C96 */  lhu        $t4, 0x0($s3)
    /* 5670 8018E5E8 06006D96 */  lhu        $t5, 0x6($s3)
    /* 5674 8018E5EC 0C006E96 */  lhu        $t6, 0xC($s3)
    /* 5678 8018E5F0 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* 567C 8018E5F4 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* 5680 8018E5F8 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* 5684 8018E5FC 00000000 */  nop
    /* 5688 8018E600 00000000 */  nop
    /* 568C 8018E604 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* 5690 8018E608 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 5694 8018E60C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 5698 8018E610 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* 569C 8018E614 00006CA6 */  sh         $t4, 0x0($s3)
    /* 56A0 8018E618 06006DA6 */  sh         $t5, 0x6($s3)
    /* 56A4 8018E61C 0C006EA6 */  sh         $t6, 0xC($s3)
    /* 56A8 8018E620 06014226 */  addiu      $v0, $s2, %lo(D_1F800104 + 0x2)
    /* 56AC 8018E624 00004C94 */  lhu        $t4, 0x0($v0)
    /* 56B0 8018E628 06004D94 */  lhu        $t5, 0x6($v0)
    /* 56B4 8018E62C 0C004E94 */  lhu        $t6, 0xC($v0)
    /* 56B8 8018E630 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* 56BC 8018E634 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* 56C0 8018E638 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* 56C4 8018E63C 00000000 */  nop
    /* 56C8 8018E640 00000000 */  nop
    /* 56CC 8018E644 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* 56D0 8018E648 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 56D4 8018E64C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 56D8 8018E650 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* 56DC 8018E654 00004CA4 */  sh         $t4, 0x0($v0)
    /* 56E0 8018E658 06004DA4 */  sh         $t5, 0x6($v0)
    /* 56E4 8018E65C 0C004EA4 */  sh         $t6, 0xC($v0)
    /* 56E8 8018E660 08014226 */  addiu      $v0, $s2, %lo(D_1F800108)
    /* 56EC 8018E664 00004C94 */  lhu        $t4, 0x0($v0)
    /* 56F0 8018E668 06004D94 */  lhu        $t5, 0x6($v0)
    /* 56F4 8018E66C 0C004E94 */  lhu        $t6, 0xC($v0)
    /* 56F8 8018E670 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* 56FC 8018E674 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* 5700 8018E678 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* 5704 8018E67C 00000000 */  nop
    /* 5708 8018E680 00000000 */  nop
    /* 570C 8018E684 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* 5710 8018E688 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 5714 8018E68C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 5718 8018E690 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* 571C 8018E694 00004CA4 */  sh         $t4, 0x0($v0)
    /* 5720 8018E698 06004DA4 */  sh         $t5, 0x6($v0)
    /* 5724 8018E69C 0C004EA4 */  sh         $t6, 0xC($v0)
    /* 5728 8018E6A0 1400EC8C */  lw         $t4, 0x14($a3)
    /* 572C 8018E6A4 1800ED8C */  lw         $t5, 0x18($a3)
    /* 5730 8018E6A8 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 5734 8018E6AC 1C00EE8C */  lw         $t6, 0x1C($a3)
    /* 5738 8018E6B0 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 573C 8018E6B4 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 5740 8018E6B8 18014226 */  addiu      $v0, $s2, %lo(D_1F800118)
    /* 5744 8018E6BC 04004D94 */  lhu        $t5, 0x4($v0)
    /* 5748 8018E6C0 00004C94 */  lhu        $t4, 0x0($v0)
    /* 574C 8018E6C4 006C0D00 */  sll        $t5, $t5, 16
    /* 5750 8018E6C8 25608D01 */  or         $t4, $t4, $t5
    /* 5754 8018E6CC 00008C48 */  mtc2       $t4, $0 /* handwritten instruction */
    /* 5758 8018E6D0 080041C8 */  lwc2       $1, 0x8($v0)
    /* 575C 8018E6D4 00000000 */  nop
    /* 5760 8018E6D8 00000000 */  nop
    /* 5764 8018E6DC 1200484A */  mvmva      1, 0, 0, 0, 0
    /* 5768 8018E6E0 000059E8 */  swc2       $25, 0x0($v0)
    /* 576C 8018E6E4 04005AE8 */  swc2       $26, 0x4($v0) /* handwritten instruction */
    /* 5770 8018E6E8 08005BE8 */  swc2       $27, 0x8($v0) /* handwritten instruction */
    /* 5774 8018E6EC 00006C8E */  lw         $t4, 0x0($s3)
    /* 5778 8018E6F0 04006D8E */  lw         $t5, 0x4($s3)
    /* 577C 8018E6F4 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 5780 8018E6F8 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 5784 8018E6FC 08006C8E */  lw         $t4, 0x8($s3)
    /* 5788 8018E700 0C006D8E */  lw         $t5, 0xC($s3)
    /* 578C 8018E704 10006E8E */  lw         $t6, 0x10($s3)
    /* 5790 8018E708 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* 5794 8018E70C 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* 5798 8018E710 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* 579C 8018E714 14006C8E */  lw         $t4, 0x14($s3)
    /* 57A0 8018E718 18006D8E */  lw         $t5, 0x18($s3)
    /* 57A4 8018E71C 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 57A8 8018E720 1C006E8E */  lw         $t6, 0x1C($s3)
    /* 57AC 8018E724 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 57B0 8018E728 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 57B4 8018E72C 9D024292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s2)
    /* 57B8 8018E730 01000524 */  addiu      $a1, $zero, 0x1
    /* 57BC 8018E734 FF004230 */  andi       $v0, $v0, 0xFF
    /* 57C0 8018E738 80800200 */  sll        $s0, $v0, 2
    /* 57C4 8018E73C 21800202 */  addu       $s0, $s0, $v0
    /* 57C8 8018E740 80801000 */  sll        $s0, $s0, 2
    /* 57CC 8018E744 21800202 */  addu       $s0, $s0, $v0
    /* 57D0 8018E748 80801000 */  sll        $s0, $s0, 2
    /* 57D4 8018E74C 23800202 */  subu       $s0, $s0, $v0
    /* 57D8 8018E750 00811000 */  sll        $s0, $s0, 4
    /* 57DC 8018E754 1980023C */  lui        $v0, %hi(D_80193C98)
    /* 57E0 8018E758 983C4224 */  addiu      $v0, $v0, %lo(D_80193C98)
    /* 57E4 8018E75C 21800202 */  addu       $s0, $s0, $v0
    /* 57E8 8018E760 21881702 */  addu       $s1, $s0, $s7
    /* 57EC 8018E764 21202002 */  addu       $a0, $s1, $zero
    /* 57F0 8018E768 2180D002 */  addu       $s0, $s6, $s0
    /* 57F4 8018E76C 20000224 */  addiu      $v0, $zero, 0x20
    /* 57F8 8018E770 040502A2 */  sb         $v0, 0x504($s0)
    /* 57FC 8018E774 050502A2 */  sb         $v0, 0x505($s0)
    /* 5800 8018E778 2EB7020C */  jal        func_800ADCB8
    /* 5804 8018E77C 060502A2 */   sb        $v0, 0x506($s0)
    /* 5808 8018E780 40211500 */  sll        $a0, $s5, 5
    /* 580C 8018E784 1980073C */  lui        $a3, %hi(D_80193C48)
    /* 5810 8018E788 483CE724 */  addiu      $a3, $a3, %lo(D_80193C48)
    /* 5814 8018E78C 0800E324 */  addiu      $v1, $a3, 0x8
    /* 5818 8018E790 21188300 */  addu       $v1, $a0, $v1
    /* 581C 8018E794 1000E224 */  addiu      $v0, $a3, 0x10
    /* 5820 8018E798 21108200 */  addu       $v0, $a0, $v0
    /* 5824 8018E79C 0000C0CB */  lwc2       $0, 0x0($fp)
    /* 5828 8018E7A0 0400C1CB */  lwc2       $1, 0x4($fp)
    /* 582C 8018E7A4 000062C8 */  lwc2       $2, 0x0($v1)
    /* 5830 8018E7A8 040063C8 */  lwc2       $3, 0x4($v1)
    /* 5834 8018E7AC 000044C8 */  lwc2       $4, 0x0($v0)
    /* 5838 8018E7B0 040045C8 */  lwc2       $5, 0x4($v0)
    /* 583C 8018E7B4 00000000 */  nop
    /* 5840 8018E7B8 00000000 */  nop
    /* 5844 8018E7BC 3000284A */  rtpt
    /* 5848 8018E7C0 08002526 */  addiu      $a1, $s1, 0x8
    /* 584C 8018E7C4 0C002326 */  addiu      $v1, $s1, 0xC
    /* 5850 8018E7C8 10002226 */  addiu      $v0, $s1, 0x10
    /* 5854 8018E7CC 0000ACE8 */  swc2       $12, 0x0($a1)
    /* 5858 8018E7D0 00006DE8 */  swc2       $13, 0x0($v1)
    /* 585C 8018E7D4 00004EE8 */  swc2       $14, 0x0($v0)
    /* 5860 8018E7D8 1980073C */  lui        $a3, %hi(D_80193C60)
    /* 5864 8018E7DC 603CE724 */  addiu      $a3, $a3, %lo(D_80193C60)
    /* 5868 8018E7E0 21208700 */  addu       $a0, $a0, $a3
    /* 586C 8018E7E4 000080C8 */  lwc2       $0, 0x0($a0)
    /* 5870 8018E7E8 040081C8 */  lwc2       $1, 0x4($a0)
    /* 5874 8018E7EC 00000000 */  nop
    /* 5878 8018E7F0 00000000 */  nop
    /* 587C 8018E7F4 0100184A */  rtps
    /* 5880 8018E7F8 14002226 */  addiu      $v0, $s1, 0x14
    /* 5884 8018E7FC 00004EE8 */  swc2       $14, 0x0($v0)
    /* 5888 8018E800 2000DE27 */  addiu      $fp, $fp, 0x20
    /* 588C 8018E804 1800F726 */  addiu      $s7, $s7, 0x18
    /* 5890 8018E808 1800D626 */  addiu      $s6, $s6, 0x18
    /* 5894 8018E80C 04000724 */  addiu      $a3, $zero, 0x4
    /* 5898 8018E810 00FF053C */  lui        $a1, (0xFF000000 >> 16)
    /* 589C 8018E814 0100B526 */  addiu      $s5, $s5, 0x1
    /* 58A0 8018E818 0005048E */  lw         $a0, 0x500($s0)
    /* 58A4 8018E81C 0000438E */  lw         $v1, (0x1F800000 & 0xFFFF)($s2)
    /* 58A8 8018E820 9D024292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s2)
    /* 58AC 8018E824 04186700 */  sllv       $v1, $a3, $v1
    /* 58B0 8018E828 80130200 */  sll        $v0, $v0, 14
    /* 58B4 8018E82C 21104300 */  addu       $v0, $v0, $v1
    /* 58B8 8018E830 0F80073C */  lui        $a3, %hi(D_800F3560)
    /* 58BC 8018E834 6035E724 */  addiu      $a3, $a3, %lo(D_800F3560)
    /* 58C0 8018E838 21104700 */  addu       $v0, $v0, $a3
    /* 58C4 8018E83C 0000428C */  lw         $v0, 0x0($v0)
    /* 58C8 8018E840 1800A78F */  lw         $a3, 0x18($sp)
    /* 58CC 8018E844 24208500 */  and        $a0, $a0, $a1
    /* 58D0 8018E848 24104700 */  and        $v0, $v0, $a3
    /* 58D4 8018E84C 25208200 */  or         $a0, $a0, $v0
    /* 58D8 8018E850 04000724 */  addiu      $a3, $zero, 0x4
    /* 58DC 8018E854 000504AE */  sw         $a0, 0x500($s0)
    /* 58E0 8018E858 0000438E */  lw         $v1, (0x1F800000 & 0xFFFF)($s2)
    /* 58E4 8018E85C 9D024292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s2)
    /* 58E8 8018E860 04186700 */  sllv       $v1, $a3, $v1
    /* 58EC 8018E864 80130200 */  sll        $v0, $v0, 14
    /* 58F0 8018E868 21104300 */  addu       $v0, $v0, $v1
    /* 58F4 8018E86C 0F80073C */  lui        $a3, %hi(D_800F3560)
    /* 58F8 8018E870 6035E724 */  addiu      $a3, $a3, %lo(D_800F3560)
    /* 58FC 8018E874 21104700 */  addu       $v0, $v0, $a3
    /* 5900 8018E878 0000438C */  lw         $v1, 0x0($v0)
    /* 5904 8018E87C 1800A78F */  lw         $a3, 0x18($sp)
    /* 5908 8018E880 24186500 */  and        $v1, $v1, $a1
    /* 590C 8018E884 24882702 */  and        $s1, $s1, $a3
    /* 5910 8018E888 25187100 */  or         $v1, $v1, $s1
    /* 5914 8018E88C 000043AC */  sw         $v1, 0x0($v0)
    /* 5918 8018E890 0200A22A */  slti       $v0, $s5, 0x2
    /* 591C 8018E894 2DFF4014 */  bnez       $v0, .L8018E54C
    /* 5920 8018E898 02009426 */   addiu     $s4, $s4, 0x2
    /* 5924 8018E89C 4400BF8F */  lw         $ra, 0x44($sp)
    /* 5928 8018E8A0 4000BE8F */  lw         $fp, 0x40($sp)
    /* 592C 8018E8A4 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 5930 8018E8A8 3800B68F */  lw         $s6, 0x38($sp)
    /* 5934 8018E8AC 3400B58F */  lw         $s5, 0x34($sp)
    /* 5938 8018E8B0 3000B48F */  lw         $s4, 0x30($sp)
    /* 593C 8018E8B4 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 5940 8018E8B8 2800B28F */  lw         $s2, 0x28($sp)
    /* 5944 8018E8BC 2400B18F */  lw         $s1, 0x24($sp)
    /* 5948 8018E8C0 2000B08F */  lw         $s0, 0x20($sp)
    /* 594C 8018E8C4 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 5950 8018E8C8 0800E003 */  jr         $ra
    /* 5954 8018E8CC 00000000 */   nop
endlabel func_8018E4E0
