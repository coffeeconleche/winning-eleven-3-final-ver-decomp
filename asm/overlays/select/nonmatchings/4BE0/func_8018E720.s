nonmatching func_8018E720, 0x274

glabel func_8018E720
    /* 57A8 8018E720 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 57AC 8018E724 5000B2AF */  sw         $s2, 0x50($sp)
    /* 57B0 8018E728 2190A000 */  addu       $s2, $a1, $zero
    /* 57B4 8018E72C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 57B8 8018E730 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 57BC 8018E734 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 57C0 8018E738 4800B0AF */  sw         $s0, 0x48($sp)
    /* 57C4 8018E73C FF009030 */  andi       $s0, $a0, 0xFF
    /* 57C8 8018E740 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 57CC 8018E744 01001124 */  addiu      $s1, $zero, 0x1
    /* 57D0 8018E748 6000BFAF */  sw         $ra, 0x60($sp)
    /* 57D4 8018E74C 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 57D8 8018E750 33001112 */  beq        $s0, $s1, .L8018E820
    /* 57DC 8018E754 5400B3AF */   sw        $s3, 0x54($sp)
    /* 57E0 8018E758 0200022A */  slti       $v0, $s0, 0x2
    /* 57E4 8018E75C 05004010 */  beqz       $v0, .L8018E774
    /* 57E8 8018E760 02001324 */   addiu     $s3, $zero, 0x2
    /* 57EC 8018E764 09000012 */  beqz       $s0, .L8018E78C
    /* 57F0 8018E768 36000424 */   addiu     $a0, $zero, 0x36
    /* 57F4 8018E76C 383A0608 */  j          .L8018E8E0
    /* 57F8 8018E770 00000000 */   nop
  .L8018E774:
    /* 57FC 8018E774 2D001312 */  beq        $s0, $s3, .L8018E82C
    /* 5800 8018E778 03000224 */   addiu     $v0, $zero, 0x3
    /* 5804 8018E77C 31000212 */  beq        $s0, $v0, .L8018E844
    /* 5808 8018E780 36000424 */   addiu     $a0, $zero, 0x36
    /* 580C 8018E784 383A0608 */  j          .L8018E8E0
    /* 5810 8018E788 00000000 */   nop
  .L8018E78C:
    /* 5814 8018E78C 03300524 */  addiu      $a1, $zero, 0x3003
    /* 5818 8018E790 21300000 */  addu       $a2, $zero, $zero
    /* 581C 8018E794 21380000 */  addu       $a3, $zero, $zero
    /* 5820 8018E798 40000224 */  addiu      $v0, $zero, 0x40
    /* 5824 8018E79C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5828 8018E7A0 18000224 */  addiu      $v0, $zero, 0x18
    /* 582C 8018E7A4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 5830 8018E7A8 00100224 */  addiu      $v0, $zero, 0x1000
    /* 5834 8018E7AC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 5838 8018E7B0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 583C 8018E7B4 80000224 */  addiu      $v0, $zero, 0x80
    /* 5840 8018E7B8 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 5844 8018E7BC 3000A2AF */  sw         $v0, 0x30($sp)
    /* 5848 8018E7C0 3400A2AF */  sw         $v0, 0x34($sp)
    /* 584C 8018E7C4 05000224 */  addiu      $v0, $zero, 0x5
    /* 5850 8018E7C8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 5854 8018E7CC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 5858 8018E7D0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 585C 8018E7D4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 5860 8018E7D8 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 5864 8018E7DC ED4F060C */  jal        func_80193FB4
    /* 5868 8018E7E0 4000B1AF */   sw        $s1, 0x40($sp)
    /* 586C 8018E7E4 21200000 */  addu       $a0, $zero, $zero
    /* 5870 8018E7E8 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 5874 8018E7EC 47010224 */  addiu      $v0, $zero, 0x147
    /* 5878 8018E7F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 587C 8018E7F4 03000224 */  addiu      $v0, $zero, 0x3
    /* 5880 8018E7F8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 5884 8018E7FC 02000224 */  addiu      $v0, $zero, 0x2
    /* 5888 8018E800 2800A2AF */  sw         $v0, 0x28($sp)
    /* 588C 8018E804 FF004232 */  andi       $v0, $s2, 0xFF
    /* 5890 8018E808 80100200 */  sll        $v0, $v0, 2
    /* 5894 8018E80C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 5898 8018E810 1800B1AF */  sw         $s1, 0x18($sp)
    /* 589C 8018E814 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 58A0 8018E818 323A0608 */  j          .L8018E8C8
    /* 58A4 8018E81C 2000A0AF */   sw        $zero, 0x20($sp)
  .L8018E820:
    /* 58A8 8018E820 42668426 */  addiu      $a0, $s4, 0x6642
    /* 58AC 8018E824 0D3A0608 */  j          .L8018E834
    /* 58B0 8018E828 21280000 */   addu      $a1, $zero, $zero
  .L8018E82C:
    /* 58B4 8018E82C 42668426 */  addiu      $a0, $s4, 0x6642
    /* 58B8 8018E830 40000524 */  addiu      $a1, $zero, 0x40
  .L8018E834:
    /* 58BC 8018E834 653A060C */  jal        func_8018E994
    /* 58C0 8018E838 04000624 */   addiu     $a2, $zero, 0x4
    /* 58C4 8018E83C 383A0608 */  j          .L8018E8E0
    /* 58C8 8018E840 21A84000 */   addu      $s5, $v0, $zero
  .L8018E844:
    /* 58CC 8018E844 03300524 */  addiu      $a1, $zero, 0x3003
    /* 58D0 8018E848 21300000 */  addu       $a2, $zero, $zero
    /* 58D4 8018E84C 21380000 */  addu       $a3, $zero, $zero
    /* 58D8 8018E850 18000224 */  addiu      $v0, $zero, 0x18
    /* 58DC 8018E854 1400A2AF */  sw         $v0, 0x14($sp)
    /* 58E0 8018E858 00100224 */  addiu      $v0, $zero, 0x1000
    /* 58E4 8018E85C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 58E8 8018E860 2000A2AF */  sw         $v0, 0x20($sp)
    /* 58EC 8018E864 80000224 */  addiu      $v0, $zero, 0x80
    /* 58F0 8018E868 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 58F4 8018E86C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 58F8 8018E870 3400A2AF */  sw         $v0, 0x34($sp)
    /* 58FC 8018E874 05000224 */  addiu      $v0, $zero, 0x5
    /* 5900 8018E878 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5904 8018E87C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 5908 8018E880 2400A0AF */  sw         $zero, 0x24($sp)
    /* 590C 8018E884 2800A0AF */  sw         $zero, 0x28($sp)
    /* 5910 8018E888 3800A0AF */  sw         $zero, 0x38($sp)
    /* 5914 8018E88C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 5918 8018E890 ED4F060C */  jal        func_80193FB4
    /* 591C 8018E894 4000B1AF */   sw        $s1, 0x40($sp)
    /* 5920 8018E898 21200000 */  addu       $a0, $zero, $zero
    /* 5924 8018E89C 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 5928 8018E8A0 47010224 */  addiu      $v0, $zero, 0x147
    /* 592C 8018E8A4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5930 8018E8A8 FF004232 */  andi       $v0, $s2, 0xFF
    /* 5934 8018E8AC 80100200 */  sll        $v0, $v0, 2
    /* 5938 8018E8B0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 593C 8018E8B4 1800B1AF */  sw         $s1, 0x18($sp)
    /* 5940 8018E8B8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 5944 8018E8BC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 5948 8018E8C0 2400B0AF */  sw         $s0, 0x24($sp)
    /* 594C 8018E8C4 2800B3AF */  sw         $s3, 0x28($sp)
  .L8018E8C8:
    /* 5950 8018E8C8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 5954 8018E8CC 1280013C */  lui        $at, %hi(D_8011D5F4)
    /* 5958 8018E8D0 21082200 */  addu       $at, $at, $v0
    /* 595C 8018E8D4 F4D5258C */  lw         $a1, %lo(D_8011D5F4)($at)
    /* 5960 8018E8D8 B850060C */  jal        func_801942E0
    /* 5964 8018E8DC 85000724 */   addiu     $a3, $zero, 0x85
  .L8018E8E0:
    /* 5968 8018E8E0 42668296 */  lhu        $v0, 0x6642($s4)
    /* 596C 8018E8E4 00000000 */  nop
    /* 5970 8018E8E8 45004724 */  addiu      $a3, $v0, 0x45
    /* 5974 8018E8EC FF004232 */  andi       $v0, $s2, 0xFF
    /* 5978 8018E8F0 1E80013C */  lui        $at, %hi(D_801D8F94)
    /* 597C 8018E8F4 948F27A4 */  sh         $a3, %lo(D_801D8F94)($at)
    /* 5980 8018E8F8 1B004010 */  beqz       $v0, .L8018E968
    /* 5984 8018E8FC 80100200 */   sll       $v0, $v0, 2
    /* 5988 8018E900 1280033C */  lui        $v1, %hi(D_8011D5F4)
    /* 598C 8018E904 F4D56324 */  addiu      $v1, $v1, %lo(D_8011D5F4)
    /* 5990 8018E908 21284300 */  addu       $a1, $v0, $v1
    /* 5994 8018E90C 1E80033C */  lui        $v1, %hi(D_801D8FA4)
    /* 5998 8018E910 A48F638C */  lw         $v1, %lo(D_801D8FA4)($v1)
    /* 599C 8018E914 0000A28C */  lw         $v0, 0x0($a1)
    /* 59A0 8018E918 00000000 */  nop
    /* 59A4 8018E91C 12006210 */  beq        $v1, $v0, .L8018E968
    /* 59A8 8018E920 21200000 */   addu      $a0, $zero, $zero
    /* 59AC 8018E924 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 59B0 8018E928 47010224 */  addiu      $v0, $zero, 0x147
    /* 59B4 8018E92C 01000324 */  addiu      $v1, $zero, 0x1
    /* 59B8 8018E930 1000A2AF */  sw         $v0, 0x10($sp)
    /* 59BC 8018E934 03000224 */  addiu      $v0, $zero, 0x3
    /* 59C0 8018E938 2400A2AF */  sw         $v0, 0x24($sp)
    /* 59C4 8018E93C 02000224 */  addiu      $v0, $zero, 0x2
    /* 59C8 8018E940 003C0700 */  sll        $a3, $a3, 16
    /* 59CC 8018E944 1400A0AF */  sw         $zero, 0x14($sp)
    /* 59D0 8018E948 1800A3AF */  sw         $v1, 0x18($sp)
    /* 59D4 8018E94C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 59D8 8018E950 2000A0AF */  sw         $zero, 0x20($sp)
    /* 59DC 8018E954 2800A2AF */  sw         $v0, 0x28($sp)
    /* 59E0 8018E958 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* 59E4 8018E95C 0000A58C */  lw         $a1, 0x0($a1)
    /* 59E8 8018E960 B850060C */  jal        func_801942E0
    /* 59EC 8018E964 033C0700 */   sra       $a3, $a3, 16
  .L8018E968:
    /* 59F0 8018E968 2110A002 */  addu       $v0, $s5, $zero
    /* 59F4 8018E96C 6000BF8F */  lw         $ra, 0x60($sp)
    /* 59F8 8018E970 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 59FC 8018E974 5800B48F */  lw         $s4, 0x58($sp)
    /* 5A00 8018E978 5400B38F */  lw         $s3, 0x54($sp)
    /* 5A04 8018E97C 5000B28F */  lw         $s2, 0x50($sp)
    /* 5A08 8018E980 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 5A0C 8018E984 4800B08F */  lw         $s0, 0x48($sp)
    /* 5A10 8018E988 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 5A14 8018E98C 0800E003 */  jr         $ra
    /* 5A18 8018E990 00000000 */   nop
endlabel func_8018E720
