nonmatching func_800BC768, 0x250

glabel func_800BC768
    /* ACF68 800BC768 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* ACF6C 800BC76C E7030224 */  addiu      $v0, $zero, 0x3E7
    /* ACF70 800BC770 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* ACF74 800BC774 1800B2AF */  sw         $s2, 0x18($sp)
    /* ACF78 800BC778 1400B1AF */  sw         $s1, 0x14($sp)
    /* ACF7C 800BC77C 1000B0AF */  sw         $s0, 0x10($sp)
    /* ACF80 800BC780 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L800BC784:
    /* ACF84 800BC784 FFFF4104 */  bgez       $v0, .L800BC784
    /* ACF88 800BC788 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* ACF8C 800BC78C 00F2123C */  lui        $s2, (0xF2000002 >> 16)
    /* ACF90 800BC790 02005236 */  ori        $s2, $s2, (0xF2000002 & 0xFFFF)
    /* ACF94 800BC794 E8441124 */  addiu      $s1, $zero, 0x44E8
    /* ACF98 800BC798 0D80053C */  lui        $a1, %hi(D_800D4F5C)
    /* ACF9C 800BC79C 5C4FA524 */  addiu      $a1, $a1, %lo(D_800D4F5C)
    /* ACFA0 800BC7A0 F0FFA38C */  lw         $v1, -0x10($a1)
    /* ACFA4 800BC7A4 06000224 */  addiu      $v0, $zero, 0x6
    /* ACFA8 800BC7A8 0200A2A0 */  sb         $v0, 0x2($a1)
    /* ACFAC 800BC7AC 02000224 */  addiu      $v0, $zero, 0x2
    /* ACFB0 800BC7B0 0000A0A0 */  sb         $zero, 0x0($a1)
    /* ACFB4 800BC7B4 0100A0A0 */  sb         $zero, 0x1($a1)
    /* ACFB8 800BC7B8 47006210 */  beq        $v1, $v0, .L800BC8D8
    /* ACFBC 800BC7BC FCFFA0AC */   sw        $zero, -0x4($a1)
    /* ACFC0 800BC7C0 03006228 */  slti       $v0, $v1, 0x3
    /* ACFC4 800BC7C4 05004010 */  beqz       $v0, .L800BC7DC
    /* ACFC8 800BC7C8 03000224 */   addiu     $v0, $zero, 0x3
    /* ACFCC 800BC7CC 09006010 */  beqz       $v1, .L800BC7F4
    /* ACFD0 800BC7D0 7F000224 */   addiu     $v0, $zero, 0x7F
    /* ACFD4 800BC7D4 0AF20208 */  j          .L800BC828
    /* ACFD8 800BC7D8 00000000 */   nop
  .L800BC7DC:
    /* ACFDC 800BC7DC 10006210 */  beq        $v1, $v0, .L800BC820
    /* ACFE0 800BC7E0 05000224 */   addiu     $v0, $zero, 0x5
    /* ACFE4 800BC7E4 05006210 */  beq        $v1, $v0, .L800BC7FC
    /* ACFE8 800BC7E8 00000000 */   nop
    /* ACFEC 800BC7EC 0AF20208 */  j          .L800BC828
    /* ACFF0 800BC7F0 00000000 */   nop
  .L800BC7F4:
    /* ACFF4 800BC7F4 60F20208 */  j          .L800BC980
    /* ACFF8 800BC7F8 0200A2A0 */   sb        $v0, 0x2($a1)
  .L800BC7FC:
    /* ACFFC 800BC7FC 04008014 */  bnez       $a0, .L800BC810
    /* AD000 800BC800 0200A0A0 */   sb        $zero, 0x2($a1)
    /* AD004 800BC804 01000224 */  addiu      $v0, $zero, 0x1
    /* AD008 800BC808 36F20208 */  j          .L800BC8D8
    /* AD00C 800BC80C 0000A2A0 */   sb        $v0, 0x0($a1)
  .L800BC810:
    /* AD010 800BC810 00F2123C */  lui        $s2, (0xF2000003 >> 16)
    /* AD014 800BC814 03005236 */  ori        $s2, $s2, (0xF2000003 & 0xFFFF)
    /* AD018 800BC818 36F20208 */  j          .L800BC8D8
    /* AD01C 800BC81C 01001124 */   addiu     $s1, $zero, 0x1
  .L800BC820:
    /* AD020 800BC820 36F20208 */  j          .L800BC8D8
    /* AD024 800BC824 D0891134 */   ori       $s1, $zero, 0x89D0
  .L800BC828:
    /* AD028 800BC828 0D80033C */  lui        $v1, %hi(D_800D4F50)
    /* AD02C 800BC82C 504F6324 */  addiu      $v1, $v1, %lo(D_800D4F50)
    /* AD030 800BC830 0000628C */  lw         $v0, 0x0($v1)
    /* AD034 800BC834 00000000 */  nop
    /* AD038 800BC838 51004014 */  bnez       $v0, .L800BC980
    /* AD03C 800BC83C 00000000 */   nop
    /* AD040 800BC840 FCFF648C */  lw         $a0, -0x4($v1)
    /* AD044 800BC844 00000000 */  nop
    /* AD048 800BC848 46008228 */  slti       $v0, $a0, 0x46
    /* AD04C 800BC84C 14004010 */  beqz       $v0, .L800BC8A0
    /* AD050 800BC850 FCFF6524 */   addiu     $a1, $v1, -0x4
    /* AD054 800BC854 2000033C */  lui        $v1, (0x204CC0 >> 16)
    /* AD058 800BC858 C04C6334 */  ori        $v1, $v1, (0x204CC0 & 0xFFFF)
    /* AD05C 800BC85C 1A006400 */  div        $zero, $v1, $a0
    /* AD060 800BC860 02008014 */  bnez       $a0, .L800BC86C
    /* AD064 800BC864 00000000 */   nop
    /* AD068 800BC868 0D000700 */  break      7
  .L800BC86C:
    /* AD06C 800BC86C FFFF0124 */  addiu      $at, $zero, -0x1
    /* AD070 800BC870 04008114 */  bne        $a0, $at, .L800BC884
    /* AD074 800BC874 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AD078 800BC878 02006114 */  bne        $v1, $at, .L800BC884
    /* AD07C 800BC87C 00000000 */   nop
    /* AD080 800BC880 0D000600 */  break      6
  .L800BC884:
    /* AD084 800BC884 12180000 */  mflo       $v1
    /* AD088 800BC888 1100A290 */  lbu        $v0, 0x11($a1)
    /* AD08C 800BC88C 00000000 */  nop
    /* AD090 800BC890 01004224 */  addiu      $v0, $v0, 0x1
    /* AD094 800BC894 1100A2A0 */  sb         $v0, 0x11($a1)
    /* AD098 800BC898 36F20208 */  j          .L800BC8D8
    /* AD09C 800BC89C 21886000 */   addu      $s1, $v1, $zero
  .L800BC8A0:
    /* AD0A0 800BC8A0 4000023C */  lui        $v0, (0x409980 >> 16)
    /* AD0A4 800BC8A4 80994234 */  ori        $v0, $v0, (0x409980 & 0xFFFF)
    /* AD0A8 800BC8A8 1A004400 */  div        $zero, $v0, $a0
    /* AD0AC 800BC8AC 02008014 */  bnez       $a0, .L800BC8B8
    /* AD0B0 800BC8B0 00000000 */   nop
    /* AD0B4 800BC8B4 0D000700 */  break      7
  .L800BC8B8:
    /* AD0B8 800BC8B8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AD0BC 800BC8BC 04008114 */  bne        $a0, $at, .L800BC8D0
    /* AD0C0 800BC8C0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AD0C4 800BC8C4 02004114 */  bne        $v0, $at, .L800BC8D0
    /* AD0C8 800BC8C8 00000000 */   nop
    /* AD0CC 800BC8CC 0D000600 */  break      6
  .L800BC8D0:
    /* AD0D0 800BC8D0 12100000 */  mflo       $v0
    /* AD0D4 800BC8D4 21884000 */  addu       $s1, $v0, $zero
  .L800BC8D8:
    /* AD0D8 800BC8D8 0D80103C */  lui        $s0, %hi(D_800D4F5C)
    /* AD0DC 800BC8DC 5C4F1026 */  addiu      $s0, $s0, %lo(D_800D4F5C)
    /* AD0E0 800BC8E0 00000282 */  lb         $v0, 0x0($s0)
    /* AD0E4 800BC8E4 00000000 */  nop
    /* AD0E8 800BC8E8 08004010 */  beqz       $v0, .L800BC90C
    /* AD0EC 800BC8EC 00000000 */   nop
    /* AD0F0 800BC8F0 F6B4020C */  jal        func_800AD3D8
    /* AD0F4 800BC8F4 00000000 */   nop
    /* AD0F8 800BC8F8 F8FF048E */  lw         $a0, -0x8($s0)
    /* AD0FC 800BC8FC F2E9020C */  jal        func_800BA7C8
    /* AD100 800BC900 00000000 */   nop
    /* AD104 800BC904 5EF20208 */  j          .L800BC978
    /* AD108 800BC908 00000000 */   nop
  .L800BC90C:
    /* AD10C 800BC90C F6B4020C */  jal        func_800AD3D8
    /* AD110 800BC910 00000000 */   nop
    /* AD114 800BC914 14B4020C */  jal        func_800AD050
    /* AD118 800BC918 21204002 */   addu      $a0, $s2, $zero
    /* AD11C 800BC91C 21204002 */  addu       $a0, $s2, $zero
    /* AD120 800BC920 FFFF2532 */  andi       $a1, $s1, 0xFFFF
    /* AD124 800BC924 C6B3020C */  jal        func_800ACF18
    /* AD128 800BC928 00100624 */   addiu     $a2, $zero, 0x1000
    /* AD12C 800BC92C 02000482 */  lb         $a0, 0x2($s0)
    /* AD130 800BC930 00000000 */  nop
    /* AD134 800BC934 09008014 */  bnez       $a0, .L800BC95C
    /* AD138 800BC938 00000000 */   nop
    /* AD13C 800BC93C 21200000 */  addu       $a0, $zero, $zero
    /* AD140 800BC940 DAE9020C */  jal        func_800BA768
    /* AD144 800BC944 21280000 */   addu      $a1, $zero, $zero
    /* AD148 800BC948 02000482 */  lb         $a0, 0x2($s0)
    /* AD14C 800BC94C 0C80053C */  lui        $a1, %hi(D_800BC9D8)
    /* AD150 800BC950 D8C9A524 */  addiu      $a1, $a1, %lo(D_800BC9D8)
    /* AD154 800BC954 5CF20208 */  j          .L800BC970
    /* AD158 800BC958 FCFF02AE */   sw        $v0, -0x4($s0)
  .L800BC95C:
    /* AD15C 800BC95C 01000282 */  lb         $v0, 0x1($s0)
    /* AD160 800BC960 0C80053C */  lui        $a1, %hi(D_800BCA24)
    /* AD164 800BC964 02004014 */  bnez       $v0, .L800BC970
    /* AD168 800BC968 24CAA524 */   addiu     $a1, $a1, %lo(D_800BCA24)
    /* AD16C 800BC96C F8FF058E */  lw         $a1, -0x8($s0)
  .L800BC970:
    /* AD170 800BC970 DAE9020C */  jal        func_800BA768
    /* AD174 800BC974 00000000 */   nop
  .L800BC978:
    /* AD178 800BC978 9AB3020C */  jal        func_800ACE68
    /* AD17C 800BC97C 00000000 */   nop
  .L800BC980:
    /* AD180 800BC980 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* AD184 800BC984 1800B28F */  lw         $s2, 0x18($sp)
    /* AD188 800BC988 1400B18F */  lw         $s1, 0x14($sp)
    /* AD18C 800BC98C 1000B08F */  lw         $s0, 0x10($sp)
    /* AD190 800BC990 0800E003 */  jr         $ra
    /* AD194 800BC994 2000BD27 */   addiu     $sp, $sp, 0x20
    /* AD198 800BC998 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD19C 800BC99C 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD1A0 800BC9A0 DAF1020C */  jal        func_800BC768
    /* AD1A4 800BC9A4 01000424 */   addiu     $a0, $zero, 0x1
    /* AD1A8 800BC9A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD1AC 800BC9AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD1B0 800BC9B0 0800E003 */  jr         $ra
    /* AD1B4 800BC9B4 00000000 */   nop
endlabel func_800BC768
