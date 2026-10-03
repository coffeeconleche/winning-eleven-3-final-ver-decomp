nonmatching func_801A372C, 0x204

glabel func_801A372C
    /* 1A7B4 801A372C 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 1A7B8 801A3730 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 1A7BC 801A3734 801F063C */  lui        $a2, (0x1F8002DD >> 16)
    /* 1A7C0 801A3738 02000524 */  addiu      $a1, $zero, 0x2
    /* 1A7C4 801A373C 2B000324 */  addiu      $v1, $zero, 0x2B
    /* 1A7C8 801A3740 1E80023C */  lui        $v0, %hi(D_801DADB3)
    /* 1A7CC 801A3744 B3AD4224 */  addiu      $v0, $v0, %lo(D_801DADB3)
  .L801A3748:
    /* 1A7D0 801A3748 000045A0 */  sb         $a1, 0x0($v0)
    /* 1A7D4 801A374C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1A7D8 801A3750 FDFF6104 */  bgez       $v1, .L801A3748
    /* 1A7DC 801A3754 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 1A7E0 801A3758 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A7E4 801A375C 2108E100 */  addu       $at, $a3, $at
    /* 1A7E8 801A3760 E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 1A7EC 801A3764 00000000 */  nop
    /* 1A7F0 801A3768 42100200 */  srl        $v0, $v0, 1
    /* 1A7F4 801A376C 01004230 */  andi       $v0, $v0, 0x1
    /* 1A7F8 801A3770 02004014 */  bnez       $v0, .L801A377C
    /* 1A7FC 801A3774 02000224 */   addiu     $v0, $zero, 0x2
    /* 1A800 801A3778 03000224 */  addiu      $v0, $zero, 0x3
  .L801A377C:
    /* 1A804 801A377C 1E80013C */  lui        $at, %hi(D_801DADB0)
    /* 1A808 801A3780 B0AD22A0 */  sb         $v0, %lo(D_801DADB0)($at)
    /* 1A80C 801A3784 1E80013C */  lui        $at, %hi(D_801DADB1)
    /* 1A810 801A3788 B1AD22A0 */  sb         $v0, %lo(D_801DADB1)($at)
    /* 1A814 801A378C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A818 801A3790 2108E100 */  addu       $at, $a3, $at
    /* 1A81C 801A3794 E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 1A820 801A3798 00000000 */  nop
    /* 1A824 801A379C 82100200 */  srl        $v0, $v0, 2
    /* 1A828 801A37A0 01004230 */  andi       $v0, $v0, 0x1
    /* 1A82C 801A37A4 02004014 */  bnez       $v0, .L801A37B0
    /* 1A830 801A37A8 02000224 */   addiu     $v0, $zero, 0x2
    /* 1A834 801A37AC 03000224 */  addiu      $v0, $zero, 0x3
  .L801A37B0:
    /* 1A838 801A37B0 1E80013C */  lui        $at, %hi(D_801DADB2)
    /* 1A83C 801A37B4 B2AD22A0 */  sb         $v0, %lo(D_801DADB2)($at)
    /* 1A840 801A37B8 1E80053C */  lui        $a1, %hi(D_801DADB3)
    /* 1A844 801A37BC B3ADA524 */  addiu      $a1, $a1, %lo(D_801DADB3)
    /* 1A848 801A37C0 03000224 */  addiu      $v0, $zero, 0x3
    /* 1A84C 801A37C4 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1A850 801A37C8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1A854 801A37CC 03000224 */  addiu      $v0, $zero, 0x3
    /* 1A858 801A37D0 34008210 */  beq        $a0, $v0, .L801A38A4
    /* 1A85C 801A37D4 04008228 */   slti      $v0, $a0, 0x4
    /* 1A860 801A37D8 05004010 */  beqz       $v0, .L801A37F0
    /* 1A864 801A37DC 02000224 */   addiu     $v0, $zero, 0x2
    /* 1A868 801A37E0 28008210 */  beq        $a0, $v0, .L801A3884
    /* 1A86C 801A37E4 15000324 */   addiu     $v1, $zero, 0x15
    /* 1A870 801A37E8 028E0608 */  j          .L801A3808
    /* 1A874 801A37EC DD02C0A0 */   sb        $zero, (0x1F8002DD & 0xFFFF)($a2)
  .L801A37F0:
    /* 1A878 801A37F0 04000224 */  addiu      $v0, $zero, 0x4
    /* 1A87C 801A37F4 37008210 */  beq        $a0, $v0, .L801A38D4
    /* 1A880 801A37F8 05000224 */   addiu     $v0, $zero, 0x5
    /* 1A884 801A37FC 41008210 */  beq        $a0, $v0, .L801A3904
    /* 1A888 801A3800 23000324 */   addiu     $v1, $zero, 0x23
    /* 1A88C 801A3804 DD02C0A0 */  sb         $zero, (0x1F8002DD & 0xFFFF)($a2)
  .L801A3808:
    /* 1A890 801A3808 27000324 */  addiu      $v1, $zero, 0x27
    /* 1A894 801A380C 1E80023C */  lui        $v0, %hi(D_801DADAF)
    /* 1A898 801A3810 AFAD4224 */  addiu      $v0, $v0, %lo(D_801DADAF)
  .L801A3814:
    /* 1A89C 801A3814 000040A0 */  sb         $zero, 0x0($v0)
    /* 1A8A0 801A3818 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1A8A4 801A381C FDFF6104 */  bgez       $v1, .L801A3814
    /* 1A8A8 801A3820 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 1A8AC 801A3824 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A8B0 801A3828 2108E100 */  addu       $at, $a3, $at
    /* 1A8B4 801A382C E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 1A8B8 801A3830 00000000 */  nop
    /* 1A8BC 801A3834 42100200 */  srl        $v0, $v0, 1
    /* 1A8C0 801A3838 01004230 */  andi       $v0, $v0, 0x1
    /* 1A8C4 801A383C 05004010 */  beqz       $v0, .L801A3854
    /* 1A8C8 801A3840 00000000 */   nop
    /* 1A8CC 801A3844 1E80013C */  lui        $at, %hi(D_801DADB0)
    /* 1A8D0 801A3848 B0AD20A0 */  sb         $zero, %lo(D_801DADB0)($at)
    /* 1A8D4 801A384C 1E80013C */  lui        $at, %hi(D_801DADB1)
    /* 1A8D8 801A3850 B1AD20A0 */  sb         $zero, %lo(D_801DADB1)($at)
  .L801A3854:
    /* 1A8DC 801A3854 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A8E0 801A3858 2108E100 */  addu       $at, $a3, $at
    /* 1A8E4 801A385C E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 1A8E8 801A3860 00000000 */  nop
    /* 1A8EC 801A3864 82100200 */  srl        $v0, $v0, 2
    /* 1A8F0 801A3868 01004230 */  andi       $v0, $v0, 0x1
    /* 1A8F4 801A386C 2E004010 */  beqz       $v0, .L801A3928
    /* 1A8F8 801A3870 00000000 */   nop
    /* 1A8FC 801A3874 1E80013C */  lui        $at, %hi(D_801DADB2)
    /* 1A900 801A3878 B2AD20A0 */  sb         $zero, %lo(D_801DADB2)($at)
    /* 1A904 801A387C 4A8E0608 */  j          .L801A3928
    /* 1A908 801A3880 00000000 */   nop
  .L801A3884:
    /* 1A90C 801A3884 DD02C0A0 */  sb         $zero, (0x1F8002DD & 0xFFFF)($a2)
    /* 1A910 801A3888 EAFFA224 */  addiu      $v0, $a1, -0x16
  .L801A388C:
    /* 1A914 801A388C 000040A0 */  sb         $zero, 0x0($v0)
    /* 1A918 801A3890 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1A91C 801A3894 FDFF6104 */  bgez       $v1, .L801A388C
    /* 1A920 801A3898 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 1A924 801A389C 4A8E0608 */  j          .L801A3928
    /* 1A928 801A38A0 00000000 */   nop
  .L801A38A4:
    /* 1A92C 801A38A4 16000224 */  addiu      $v0, $zero, 0x16
    /* 1A930 801A38A8 DD02C2A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($a2)
    /* 1A934 801A38AC 16000324 */  addiu      $v1, $zero, 0x16
  .L801A38B0:
    /* 1A938 801A38B0 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 1A93C 801A38B4 21082300 */  addu       $at, $at, $v1
    /* 1A940 801A38B8 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 1A944 801A38BC 01006324 */  addiu      $v1, $v1, 0x1
    /* 1A948 801A38C0 1B006228 */  slti       $v0, $v1, 0x1B
    /* 1A94C 801A38C4 18004010 */  beqz       $v0, .L801A3928
    /* 1A950 801A38C8 00000000 */   nop
    /* 1A954 801A38CC 2C8E0608 */  j          .L801A38B0
    /* 1A958 801A38D0 00000000 */   nop
  .L801A38D4:
    /* 1A95C 801A38D4 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 1A960 801A38D8 DD02C2A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($a2)
    /* 1A964 801A38DC 1B000324 */  addiu      $v1, $zero, 0x1B
  .L801A38E0:
    /* 1A968 801A38E0 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 1A96C 801A38E4 21082300 */  addu       $at, $at, $v1
    /* 1A970 801A38E8 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 1A974 801A38EC 01006324 */  addiu      $v1, $v1, 0x1
    /* 1A978 801A38F0 23006228 */  slti       $v0, $v1, 0x23
    /* 1A97C 801A38F4 0C004010 */  beqz       $v0, .L801A3928
    /* 1A980 801A38F8 00000000 */   nop
    /* 1A984 801A38FC 388E0608 */  j          .L801A38E0
    /* 1A988 801A3900 00000000 */   nop
  .L801A3904:
    /* 1A98C 801A3904 23000224 */  addiu      $v0, $zero, 0x23
    /* 1A990 801A3908 DD02C2A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($a2)
  .L801A390C:
    /* 1A994 801A390C 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 1A998 801A3910 21082300 */  addu       $at, $at, $v1
    /* 1A99C 801A3914 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 1A9A0 801A3918 01006324 */  addiu      $v1, $v1, 0x1
    /* 1A9A4 801A391C 28006228 */  slti       $v0, $v1, 0x28
    /* 1A9A8 801A3920 FAFF4014 */  bnez       $v0, .L801A390C
    /* 1A9AC 801A3924 00000000 */   nop
  .L801A3928:
    /* 1A9B0 801A3928 0800E003 */  jr         $ra
    /* 1A9B4 801A392C 00000000 */   nop
endlabel func_801A372C
