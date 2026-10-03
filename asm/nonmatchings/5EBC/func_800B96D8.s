nonmatching func_800B96D8, 0x22C

glabel func_800B96D8
    /* A9ED8 800B96D8 1180023C */  lui        $v0, %hi(D_8010C1C4)
    /* A9EDC 800B96DC C4C1428C */  lw         $v0, %lo(D_8010C1C4)($v0)
    /* A9EE0 800B96E0 1180033C */  lui        $v1, %hi(D_8010CD8C)
    /* A9EE4 800B96E4 8CCD638C */  lw         $v1, %lo(D_8010CD8C)($v1)
    /* A9EE8 800B96E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A9EEC 800B96EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* A9EF0 800B96F0 40110200 */  sll        $v0, $v0, 5
    /* A9EF4 800B96F4 21186200 */  addu       $v1, $v1, $v0
    /* A9EF8 800B96F8 02000224 */  addiu      $v0, $zero, 0x2
    /* A9EFC 800B96FC 000062A4 */  sh         $v0, 0x0($v1)
    /* A9F00 800B9700 0E80063C */  lui        $a2, %hi(D_800E71F8)
    /* A9F04 800B9704 F871C624 */  addiu      $a2, $a2, %lo(D_800E71F8)
    /* A9F08 800B9708 1F006288 */  lwl        $v0, 0x1F($v1)
    /* A9F0C 800B970C 1C006298 */  lwr        $v0, 0x1C($v1)
    /* A9F10 800B9710 00000000 */  nop
    /* A9F14 800B9714 0300C2A8 */  swl        $v0, 0x3($a2)
    /* A9F18 800B9718 0000C2B8 */  swr        $v0, 0x0($a2)
    /* A9F1C 800B971C 0800628C */  lw         $v0, 0x8($v1)
    /* A9F20 800B9720 1180033C */  lui        $v1, %hi(D_8010C1C0)
    /* A9F24 800B9724 C0C1638C */  lw         $v1, %lo(D_8010C1C0)($v1)
    /* A9F28 800B9728 0F80043C */  lui        $a0, %hi(D_800EF8AC)
    /* A9F2C 800B972C ACF8848C */  lw         $a0, %lo(D_800EF8AC)($a0)
    /* A9F30 800B9730 0E80013C */  lui        $at, %hi(D_800E71FC)
    /* A9F34 800B9734 FC7122AC */  sw         $v0, %lo(D_800E71FC)($at)
    /* A9F38 800B9738 1180013C */  lui        $at, %hi(D_8010C1C4)
    /* A9F3C 800B973C 03008010 */  beqz       $a0, .L800B974C
    /* A9F40 800B9740 C4C123AC */   sw        $v1, %lo(D_8010C1C4)($at)
    /* A9F44 800B9744 09F88000 */  jalr       $a0
    /* A9F48 800B9748 00000000 */   nop
  .L800B974C:
    /* A9F4C 800B974C 1080013C */  lui        $at, %hi(D_800FF680)
    /* A9F50 800B9750 80F620AC */  sw         $zero, %lo(D_800FF680)($at)
    /* A9F54 800B9754 1000BF8F */  lw         $ra, 0x10($sp)
    /* A9F58 800B9758 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A9F5C 800B975C 0800E003 */  jr         $ra
    /* A9F60 800B9760 00000000 */   nop
    /* A9F64 800B9764 0F80023C */  lui        $v0, %hi(D_800E81D8)
    /* A9F68 800B9768 D881428C */  lw         $v0, %lo(D_800E81D8)($v0)
    /* A9F6C 800B976C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A9F70 800B9770 1000B0AF */  sw         $s0, 0x10($sp)
    /* A9F74 800B9774 21808000 */  addu       $s0, $a0, $zero
    /* A9F78 800B9778 0B004014 */  bnez       $v0, .L800B97A8
    /* A9F7C 800B977C 1400BFAF */   sw        $ra, 0x14($sp)
    /* A9F80 800B9780 0E80043C */  lui        $a0, %hi(D_800E71F8)
    /* A9F84 800B9784 66DD020C */  jal        func_800B7598
    /* A9F88 800B9788 F8718424 */   addiu     $a0, $a0, %lo(D_800E71F8)
    /* A9F8C 800B978C 01004424 */  addiu      $a0, $v0, 0x1
    /* A9F90 800B9790 25DD020C */  jal        func_800B7494
    /* A9F94 800B9794 21280002 */   addu      $a1, $s0, $zero
    /* A9F98 800B9798 0E80023C */  lui        $v0, %hi(D_800E71FC)
    /* A9F9C 800B979C FC71428C */  lw         $v0, %lo(D_800E71FC)($v0)
    /* A9FA0 800B97A0 EBE50208 */  j          .L800B97AC
    /* A9FA4 800B97A4 00000000 */   nop
  .L800B97A8:
    /* A9FA8 800B97A8 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800B97AC:
    /* A9FAC 800B97AC 1400BF8F */  lw         $ra, 0x14($sp)
    /* A9FB0 800B97B0 1000B08F */  lw         $s0, 0x10($sp)
    /* A9FB4 800B97B4 0800E003 */  jr         $ra
    /* A9FB8 800B97B8 1800BD27 */   addiu     $sp, $sp, 0x18
    /* A9FBC 800B97BC 00000000 */  nop
    /* A9FC0 800B97C0 00000000 */  nop
    /* A9FC4 800B97C4 00000000 */  nop
    /* A9FC8 800B97C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9FCC 800B97CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* A9FD0 800B97D0 21808000 */  addu       $s0, $a0, $zero
    /* A9FD4 800B97D4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A9FD8 800B97D8 2188E000 */  addu       $s1, $a3, $zero
    /* A9FDC 800B97DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* A9FE0 800B97E0 3000B28F */  lw         $s2, 0x30($sp)
    /* A9FE4 800B97E4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A9FE8 800B97E8 82E6020C */  jal        func_800B9A08
    /* A9FEC 800B97EC 01000424 */   addiu     $a0, $zero, 0x1
    /* A9FF0 800B97F0 01001032 */  andi       $s0, $s0, 0x1
    /* A9FF4 800B97F4 1180013C */  lui        $at, %hi(D_8010CD4C)
    /* A9FF8 800B97F8 4CCD20AC */  sw         $zero, %lo(D_8010CD4C)($at)
    /* A9FFC 800B97FC 0F80013C */  lui        $at, %hi(D_800EF8AC)
    /* AA000 800B9800 ACF831AC */  sw         $s1, %lo(D_800EF8AC)($at)
    /* AA004 800B9804 0F80013C */  lui        $at, %hi(D_800E81D4)
    /* AA008 800B9808 D48130AC */  sw         $s0, %lo(D_800E81D4)($at)
    /* AA00C 800B980C 0F80013C */  lui        $at, %hi(D_800F3560)
    /* AA010 800B9810 603520AC */  sw         $zero, %lo(D_800F3560)($at)
    /* AA014 800B9814 0F80013C */  lui        $at, %hi(D_800F0F68)
    /* AA018 800B9818 680F20AC */  sw         $zero, %lo(D_800F0F68)($at)
    /* AA01C 800B981C 0F80013C */  lui        $at, %hi(D_800E81CC)
    /* AA020 800B9820 CC8120A4 */  sh         $zero, %lo(D_800E81CC)($at)
    /* AA024 800B9824 0E80013C */  lui        $at, %hi(D_800E7654)
    /* AA028 800B9828 547620AC */  sw         $zero, %lo(D_800E7654)($at)
    /* AA02C 800B982C 0F80013C */  lui        $at, %hi(D_800EF8B4)
    /* AA030 800B9830 B4F832AC */  sw         $s2, %lo(D_800EF8B4)($at)
    /* AA034 800B9834 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* AA038 800B9838 1800B28F */  lw         $s2, 0x18($sp)
    /* AA03C 800B983C 1400B18F */  lw         $s1, 0x14($sp)
    /* AA040 800B9840 1000B08F */  lw         $s0, 0x10($sp)
    /* AA044 800B9844 0800E003 */  jr         $ra
    /* AA048 800B9848 2000BD27 */   addiu     $sp, $sp, 0x20
    /* AA04C 800B984C 00000000 */  nop
    /* AA050 800B9850 00000000 */  nop
    /* AA054 800B9854 00000000 */  nop
    /* AA058 800B9858 0882053C */  lui        $a1, (0x82082083 >> 16)
    /* AA05C 800B985C 8320A534 */  ori        $a1, $a1, (0x82082083 & 0xFFFF)
    /* AA060 800B9860 1180023C */  lui        $v0, %hi(D_8010CE68)
    /* AA064 800B9864 68CE428C */  lw         $v0, %lo(D_8010CE68)($v0)
    /* AA068 800B9868 1180033C */  lui        $v1, %hi(D_8010CD8C)
    /* AA06C 800B986C 8CCD638C */  lw         $v1, %lo(D_8010CD8C)($v1)
    /* AA070 800B9870 40110200 */  sll        $v0, $v0, 5
    /* AA074 800B9874 21106200 */  addu       $v0, $v1, $v0
    /* AA078 800B9878 23208200 */  subu       $a0, $a0, $v0
    /* AA07C 800B987C 83100400 */  sra        $v0, $a0, 2
    /* AA080 800B9880 18004500 */  mult       $v0, $a1
    /* AA084 800B9884 C3270400 */  sra        $a0, $a0, 31
    /* AA088 800B9888 10380000 */  mfhi       $a3
    /* AA08C 800B988C 2110E200 */  addu       $v0, $a3, $v0
    /* AA090 800B9890 03120200 */  sra        $v0, $v0, 8
    /* AA094 800B9894 23284400 */  subu       $a1, $v0, $a0
    /* AA098 800B9898 40110500 */  sll        $v0, $a1, 5
    /* AA09C 800B989C 21186200 */  addu       $v1, $v1, $v0
    /* AA0A0 800B98A0 04000424 */  addiu      $a0, $zero, 0x4
    /* AA0A4 800B98A4 00006284 */  lh         $v0, 0x0($v1)
    /* AA0A8 800B98A8 06006394 */  lhu        $v1, 0x6($v1)
    /* AA0AC 800B98AC 13004414 */  bne        $v0, $a0, .L800B98FC
    /* AA0B0 800B98B0 01000224 */   addiu     $v0, $zero, 0x1
    /* AA0B4 800B98B4 00140300 */  sll        $v0, $v1, 16
    /* AA0B8 800B98B8 03140200 */  sra        $v0, $v0, 16
    /* AA0BC 800B98BC 0B004018 */  blez       $v0, .L800B98EC
    /* AA0C0 800B98C0 21200000 */   addu      $a0, $zero, $zero
    /* AA0C4 800B98C4 21304000 */  addu       $a2, $v0, $zero
  .L800B98C8:
    /* AA0C8 800B98C8 21108500 */  addu       $v0, $a0, $a1
    /* AA0CC 800B98CC 01008424 */  addiu      $a0, $a0, 0x1
    /* AA0D0 800B98D0 1180033C */  lui        $v1, %hi(D_8010CD8C)
    /* AA0D4 800B98D4 8CCD638C */  lw         $v1, %lo(D_8010CD8C)($v1)
    /* AA0D8 800B98D8 40110200 */  sll        $v0, $v0, 5
    /* AA0DC 800B98DC 21186200 */  addu       $v1, $v1, $v0
    /* AA0E0 800B98E0 2A108600 */  slt        $v0, $a0, $a2
    /* AA0E4 800B98E4 F8FF4014 */  bnez       $v0, .L800B98C8
    /* AA0E8 800B98E8 000060A4 */   sh        $zero, 0x0($v1)
  .L800B98EC:
    /* AA0EC 800B98EC 21108500 */  addu       $v0, $a0, $a1
    /* AA0F0 800B98F0 1180013C */  lui        $at, %hi(D_8010C1CC)
    /* AA0F4 800B98F4 CCC122AC */  sw         $v0, %lo(D_8010C1CC)($at)
    /* AA0F8 800B98F8 21100000 */  addu       $v0, $zero, $zero
  .L800B98FC:
    /* AA0FC 800B98FC 0800E003 */  jr         $ra
    /* AA100 800B9900 00000000 */   nop
endlabel func_800B96D8
    /* AA104 800B9904 00000000 */  nop
