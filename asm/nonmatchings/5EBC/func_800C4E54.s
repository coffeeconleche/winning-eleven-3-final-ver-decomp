nonmatching func_800C4E54, 0x2E4

glabel func_800C4E54
    /* B5654 800C4E54 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B5658 800C4E58 1000BFAF */  sw         $ra, 0x10($sp)
    /* B565C 800C4E5C 21288000 */  addu       $a1, $a0, $zero
    /* B5660 800C4E60 E6E9020C */  jal        func_800BA798
    /* B5664 800C4E64 03000424 */   addiu     $a0, $zero, 0x3
    /* B5668 800C4E68 1000BF8F */  lw         $ra, 0x10($sp)
    /* B566C 800C4E6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B5670 800C4E70 0800E003 */  jr         $ra
    /* B5674 800C4E74 00000000 */   nop
    /* B5678 800C4E78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B567C 800C4E7C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B5680 800C4E80 21808000 */  addu       $s0, $a0, $zero
    /* B5684 800C4E84 03000016 */  bnez       $s0, .L800C4E94
    /* B5688 800C4E88 1400BFAF */   sw        $ra, 0x14($sp)
    /* B568C 800C4E8C CEE9020C */  jal        func_800BA738
    /* B5690 800C4E90 00000000 */   nop
  .L800C4E94:
    /* B5694 800C4E94 4E14030C */  jal        func_800C5138
    /* B5698 800C4E98 21200002 */   addu      $a0, $s0, $zero
    /* B569C 800C4E9C 1400BF8F */  lw         $ra, 0x14($sp)
    /* B56A0 800C4EA0 1000B08F */  lw         $s0, 0x10($sp)
    /* B56A4 800C4EA4 0800E003 */  jr         $ra
    /* B56A8 800C4EA8 1800BD27 */   addiu     $sp, $sp, 0x18
    /* B56AC 800C4EAC 21308000 */  addu       $a2, $a0, $zero
    /* B56B0 800C4EB0 0D80053C */  lui        $a1, %hi(D_800D5900)
    /* B56B4 800C4EB4 0059A524 */  addiu      $a1, $a1, %lo(D_800D5900)
    /* B56B8 800C4EB8 0F000324 */  addiu      $v1, $zero, 0xF
    /* B56BC 800C4EBC FFFF0724 */  addiu      $a3, $zero, -0x1
  .L800C4EC0:
    /* B56C0 800C4EC0 0000A28C */  lw         $v0, 0x0($a1)
    /* B56C4 800C4EC4 0400A524 */  addiu      $a1, $a1, 0x4
    /* B56C8 800C4EC8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* B56CC 800C4ECC 0000C2AC */  sw         $v0, 0x0($a2)
    /* B56D0 800C4ED0 FBFF6714 */  bne        $v1, $a3, .L800C4EC0
    /* B56D4 800C4ED4 0400C624 */   addiu     $a2, $a2, 0x4
    /* B56D8 800C4ED8 40008624 */  addiu      $a2, $a0, 0x40
    /* B56DC 800C4EDC 0D80053C */  lui        $a1, %hi(D_800D5940)
    /* B56E0 800C4EE0 4059A524 */  addiu      $a1, $a1, %lo(D_800D5940)
    /* B56E4 800C4EE4 0F000324 */  addiu      $v1, $zero, 0xF
    /* B56E8 800C4EE8 FFFF0724 */  addiu      $a3, $zero, -0x1
  .L800C4EEC:
    /* B56EC 800C4EEC 0000A28C */  lw         $v0, 0x0($a1)
    /* B56F0 800C4EF0 0400A524 */  addiu      $a1, $a1, 0x4
    /* B56F4 800C4EF4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* B56F8 800C4EF8 0000C2AC */  sw         $v0, 0x0($a2)
    /* B56FC 800C4EFC FBFF6714 */  bne        $v1, $a3, .L800C4EEC
    /* B5700 800C4F00 0400C624 */   addiu     $a2, $a2, 0x4
    /* B5704 800C4F04 80008624 */  addiu      $a2, $a0, 0x80
    /* B5708 800C4F08 0D80053C */  lui        $a1, %hi(D_800D5984)
    /* B570C 800C4F0C 8459A524 */  addiu      $a1, $a1, %lo(D_800D5984)
    /* B5710 800C4F10 1F000324 */  addiu      $v1, $zero, 0x1F
    /* B5714 800C4F14 FFFF0724 */  addiu      $a3, $zero, -0x1
  .L800C4F18:
    /* B5718 800C4F18 0000A28C */  lw         $v0, 0x0($a1)
    /* B571C 800C4F1C 0400A524 */  addiu      $a1, $a1, 0x4
    /* B5720 800C4F20 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* B5724 800C4F24 0000C2AC */  sw         $v0, 0x0($a2)
    /* B5728 800C4F28 FBFF6714 */  bne        $v1, $a3, .L800C4F18
    /* B572C 800C4F2C 0400C624 */   addiu     $a2, $a2, 0x4
    /* B5730 800C4F30 0800E003 */  jr         $ra
    /* B5734 800C4F34 21108000 */   addu      $v0, $a0, $zero
    /* B5738 800C4F38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B573C 800C4F3C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B5740 800C4F40 21808000 */  addu       $s0, $a0, $zero
    /* B5744 800C4F44 0D80053C */  lui        $a1, %hi(D_800D5900)
    /* B5748 800C4F48 0059A524 */  addiu      $a1, $a1, %lo(D_800D5900)
    /* B574C 800C4F4C 0F000324 */  addiu      $v1, $zero, 0xF
    /* B5750 800C4F50 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* B5754 800C4F54 1400BFAF */  sw         $ra, 0x14($sp)
  .L800C4F58:
    /* B5758 800C4F58 0000828C */  lw         $v0, 0x0($a0)
    /* B575C 800C4F5C 04008424 */  addiu      $a0, $a0, 0x4
    /* B5760 800C4F60 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* B5764 800C4F64 0000A2AC */  sw         $v0, 0x0($a1)
    /* B5768 800C4F68 FBFF6614 */  bne        $v1, $a2, .L800C4F58
    /* B576C 800C4F6C 0400A524 */   addiu     $a1, $a1, 0x4
    /* B5770 800C4F70 0D80053C */  lui        $a1, %hi(D_800D5940)
    /* B5774 800C4F74 4059A524 */  addiu      $a1, $a1, %lo(D_800D5940)
    /* B5778 800C4F78 40000426 */  addiu      $a0, $s0, 0x40
    /* B577C 800C4F7C 0F000324 */  addiu      $v1, $zero, 0xF
    /* B5780 800C4F80 FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800C4F84:
    /* B5784 800C4F84 0000828C */  lw         $v0, 0x0($a0)
    /* B5788 800C4F88 04008424 */  addiu      $a0, $a0, 0x4
    /* B578C 800C4F8C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* B5790 800C4F90 0000A2AC */  sw         $v0, 0x0($a1)
    /* B5794 800C4F94 FBFF6614 */  bne        $v1, $a2, .L800C4F84
    /* B5798 800C4F98 0400A524 */   addiu     $a1, $a1, 0x4
    /* B579C 800C4F9C 0D80043C */  lui        $a0, %hi(D_800D58FC)
    /* B57A0 800C4FA0 FC588424 */  addiu      $a0, $a0, %lo(D_800D58FC)
    /* B57A4 800C4FA4 8A14030C */  jal        func_800C5228
    /* B57A8 800C4FA8 20000524 */   addiu     $a1, $zero, 0x20
    /* B57AC 800C4FAC 0D80043C */  lui        $a0, %hi(D_800D5980)
    /* B57B0 800C4FB0 80598424 */  addiu      $a0, $a0, %lo(D_800D5980)
    /* B57B4 800C4FB4 8A14030C */  jal        func_800C5228
    /* B57B8 800C4FB8 20000524 */   addiu     $a1, $zero, 0x20
    /* B57BC 800C4FBC 21100002 */  addu       $v0, $s0, $zero
    /* B57C0 800C4FC0 1400BF8F */  lw         $ra, 0x14($sp)
    /* B57C4 800C4FC4 1000B08F */  lw         $s0, 0x10($sp)
    /* B57C8 800C4FC8 0800E003 */  jr         $ra
    /* B57CC 800C4FCC 1800BD27 */   addiu     $sp, $sp, 0x18
    /* B57D0 800C4FD0 00008294 */  lhu        $v0, 0x0($a0)
    /* B57D4 800C4FD4 0800E003 */  jr         $ra
    /* B57D8 800C4FD8 00000000 */   nop
    /* B57DC 800C4FDC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B57E0 800C4FE0 0100A230 */  andi       $v0, $a1, 0x1
    /* B57E4 800C4FE4 06004010 */  beqz       $v0, .L800C5000
    /* B57E8 800C4FE8 1000BFAF */   sw        $ra, 0x10($sp)
    /* B57EC 800C4FEC FFF7033C */  lui        $v1, (0xF7FFFFFF >> 16)
    /* B57F0 800C4FF0 0000828C */  lw         $v0, 0x0($a0)
    /* B57F4 800C4FF4 FFFF6334 */  ori        $v1, $v1, (0xF7FFFFFF & 0xFFFF)
    /* B57F8 800C4FF8 03140308 */  j          .L800C500C
    /* B57FC 800C4FFC 24104300 */   and       $v0, $v0, $v1
  .L800C5000:
    /* B5800 800C5000 0000828C */  lw         $v0, 0x0($a0)
    /* B5804 800C5004 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* B5808 800C5008 25104300 */  or         $v0, $v0, $v1
  .L800C500C:
    /* B580C 800C500C 000082AC */  sw         $v0, 0x0($a0)
    /* B5810 800C5010 0200A230 */  andi       $v0, $a1, 0x2
    /* B5814 800C5014 04004010 */  beqz       $v0, .L800C5028
    /* B5818 800C5018 0002033C */   lui       $v1, (0x2000000 >> 16)
    /* B581C 800C501C 0000828C */  lw         $v0, 0x0($a0)
    /* B5820 800C5020 0E140308 */  j          .L800C5038
    /* B5824 800C5024 25104300 */   or        $v0, $v0, $v1
  .L800C5028:
    /* B5828 800C5028 FFFD033C */  lui        $v1, (0xFDFFFFFF >> 16)
    /* B582C 800C502C 0000828C */  lw         $v0, 0x0($a0)
    /* B5830 800C5030 FFFF6334 */  ori        $v1, $v1, (0xFDFFFFFF & 0xFFFF)
    /* B5834 800C5034 24104300 */  and        $v0, $v0, $v1
  .L800C5038:
    /* B5838 800C5038 000082AC */  sw         $v0, 0x0($a0)
    /* B583C 800C503C 00008594 */  lhu        $a1, 0x0($a0)
    /* B5840 800C5040 8A14030C */  jal        func_800C5228
    /* B5844 800C5044 00000000 */   nop
    /* B5848 800C5048 1000BF8F */  lw         $ra, 0x10($sp)
    /* B584C 800C504C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B5850 800C5050 0800E003 */  jr         $ra
    /* B5854 800C5054 00000000 */   nop
    /* B5858 800C5058 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B585C 800C505C 1000BFAF */  sw         $ra, 0x10($sp)
    /* B5860 800C5060 AE14030C */  jal        func_800C52B8
    /* B5864 800C5064 00000000 */   nop
    /* B5868 800C5068 1000BF8F */  lw         $ra, 0x10($sp)
    /* B586C 800C506C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B5870 800C5070 0800E003 */  jr         $ra
    /* B5874 800C5074 00000000 */   nop
    /* B5878 800C5078 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B587C 800C507C 05008014 */  bnez       $a0, .L800C5094
    /* B5880 800C5080 1000BFAF */   sw        $ra, 0x10($sp)
    /* B5884 800C5084 D114030C */  jal        func_800C5344
    /* B5888 800C5088 00000000 */   nop
    /* B588C 800C508C 29140308 */  j          .L800C50A4
    /* B5890 800C5090 00000000 */   nop
  .L800C5094:
    /* B5894 800C5094 1B15030C */  jal        func_800C546C
    /* B5898 800C5098 00000000 */   nop
    /* B589C 800C509C 42170200 */  srl        $v0, $v0, 29
    /* B58A0 800C50A0 01004230 */  andi       $v0, $v0, 0x1
  .L800C50A4:
    /* B58A4 800C50A4 1000BF8F */  lw         $ra, 0x10($sp)
    /* B58A8 800C50A8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B58AC 800C50AC 0800E003 */  jr         $ra
    /* B58B0 800C50B0 00000000 */   nop
    /* B58B4 800C50B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B58B8 800C50B8 05008014 */  bnez       $a0, .L800C50D0
    /* B58BC 800C50BC 1000BFAF */   sw        $ra, 0x10($sp)
    /* B58C0 800C50C0 F614030C */  jal        func_800C53D8
    /* B58C4 800C50C4 00000000 */   nop
    /* B58C8 800C50C8 38140308 */  j          .L800C50E0
    /* B58CC 800C50CC 00000000 */   nop
  .L800C50D0:
    /* B58D0 800C50D0 1B15030C */  jal        func_800C546C
    /* B58D4 800C50D4 00000000 */   nop
    /* B58D8 800C50D8 02160200 */  srl        $v0, $v0, 24
    /* B58DC 800C50DC 01004230 */  andi       $v0, $v0, 0x1
  .L800C50E0:
    /* B58E0 800C50E0 1000BF8F */  lw         $ra, 0x10($sp)
    /* B58E4 800C50E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B58E8 800C50E8 0800E003 */  jr         $ra
    /* B58EC 800C50EC 00000000 */   nop
    /* B58F0 800C50F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B58F4 800C50F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* B58F8 800C50F8 21288000 */  addu       $a1, $a0, $zero
    /* B58FC 800C50FC E6E9020C */  jal        func_800BA798
    /* B5900 800C5100 21200000 */   addu      $a0, $zero, $zero
    /* B5904 800C5104 1000BF8F */  lw         $ra, 0x10($sp)
    /* B5908 800C5108 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B590C 800C510C 0800E003 */  jr         $ra
    /* B5910 800C5110 00000000 */   nop
    /* B5914 800C5114 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B5918 800C5118 1000BFAF */  sw         $ra, 0x10($sp)
    /* B591C 800C511C 21288000 */  addu       $a1, $a0, $zero
    /* B5920 800C5120 E6E9020C */  jal        func_800BA798
    /* B5924 800C5124 01000424 */   addiu     $a0, $zero, 0x1
    /* B5928 800C5128 1000BF8F */  lw         $ra, 0x10($sp)
    /* B592C 800C512C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B5930 800C5130 0800E003 */  jr         $ra
    /* B5934 800C5134 00000000 */   nop
endlabel func_800C4E54
