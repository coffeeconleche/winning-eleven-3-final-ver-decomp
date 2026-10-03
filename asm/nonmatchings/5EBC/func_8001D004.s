nonmatching func_8001D004, 0x148

glabel func_8001D004
    /* D804 8001D004 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* D808 8001D008 021B0200 */  srl        $v1, $v0, 12
    /* D80C 8001D00C 0B00622C */  sltiu      $v0, $v1, 0xB
    /* D810 8001D010 4C004010 */  beqz       $v0, .L8001D144
    /* D814 8001D014 00000000 */   nop
    /* D818 8001D018 80100300 */  sll        $v0, $v1, 2
    /* D81C 8001D01C 0180013C */  lui        $at, %hi(jtbl_800105D8)
    /* D820 8001D020 21082200 */  addu       $at, $at, $v0
    /* D824 8001D024 D805228C */  lw         $v0, %lo(jtbl_800105D8)($at)
    /* D828 8001D028 00000000 */  nop
    /* D82C 8001D02C 08004000 */  jr         $v0
    /* D830 8001D030 00000000 */   nop
  jlabel .L8001D034
    /* D834 8001D034 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* D838 8001D038 80100200 */  sll        $v0, $v0, 2
    /* D83C 8001D03C 0D80013C */  lui        $at, %hi(D_800CDF20)
    /* D840 8001D040 21082200 */  addu       $at, $at, $v0
    /* D844 8001D044 20DF228C */  lw         $v0, %lo(D_800CDF20)($at)
    /* D848 8001D048 51740008 */  j          .L8001D144
    /* D84C 8001D04C 00000000 */   nop
  jlabel .L8001D050
    /* D850 8001D050 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D854 8001D054 80100200 */  sll        $v0, $v0, 2
    /* D858 8001D058 1280013C */  lui        $at, %hi(D_80122FA0)
    /* D85C 8001D05C 21082200 */  addu       $at, $at, $v0
    /* D860 8001D060 A02F228C */  lw         $v0, %lo(D_80122FA0)($at)
    /* D864 8001D064 51740008 */  j          .L8001D144
    /* D868 8001D068 00000000 */   nop
  jlabel .L8001D06C
    /* D86C 8001D06C FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D870 8001D070 80100200 */  sll        $v0, $v0, 2
    /* D874 8001D074 1480013C */  lui        $at, %hi(D_80139778)
    /* D878 8001D078 21082200 */  addu       $at, $at, $v0
    /* D87C 8001D07C 7897228C */  lw         $v0, %lo(D_80139778)($at)
    /* D880 8001D080 51740008 */  j          .L8001D144
    /* D884 8001D084 00000000 */   nop
  jlabel .L8001D088
    /* D888 8001D088 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D88C 8001D08C 80100200 */  sll        $v0, $v0, 2
    /* D890 8001D090 1280013C */  lui        $at, %hi(D_80123004)
    /* D894 8001D094 21082200 */  addu       $at, $at, $v0
    /* D898 8001D098 0430228C */  lw         $v0, %lo(D_80123004)($at)
    /* D89C 8001D09C 51740008 */  j          .L8001D144
    /* D8A0 8001D0A0 00000000 */   nop
  jlabel .L8001D0A4
    /* D8A4 8001D0A4 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D8A8 8001D0A8 80100200 */  sll        $v0, $v0, 2
    /* D8AC 8001D0AC 1D80013C */  lui        $at, %hi(D_801D42A4)
    /* D8B0 8001D0B0 21082200 */  addu       $at, $at, $v0
    /* D8B4 8001D0B4 A442228C */  lw         $v0, %lo(D_801D42A4)($at)
    /* D8B8 8001D0B8 51740008 */  j          .L8001D144
    /* D8BC 8001D0BC 00000000 */   nop
  jlabel .L8001D0C0
    /* D8C0 8001D0C0 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D8C4 8001D0C4 80100200 */  sll        $v0, $v0, 2
    /* D8C8 8001D0C8 1D80013C */  lui        $at, %hi(D_801D64E0)
    /* D8CC 8001D0CC 21082200 */  addu       $at, $at, $v0
    /* D8D0 8001D0D0 E064228C */  lw         $v0, %lo(D_801D64E0)($at)
    /* D8D4 8001D0D4 51740008 */  j          .L8001D144
    /* D8D8 8001D0D8 00000000 */   nop
  jlabel .L8001D0DC
    /* D8DC 8001D0DC FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D8E0 8001D0E0 80100200 */  sll        $v0, $v0, 2
    /* D8E4 8001D0E4 1D80013C */  lui        $at, %hi(D_801D46A0)
    /* D8E8 8001D0E8 21082200 */  addu       $at, $at, $v0
    /* D8EC 8001D0EC A046228C */  lw         $v0, %lo(D_801D46A0)($at)
    /* D8F0 8001D0F0 51740008 */  j          .L8001D144
    /* D8F4 8001D0F4 00000000 */   nop
  jlabel .L8001D0F8
    /* D8F8 8001D0F8 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D8FC 8001D0FC 80100200 */  sll        $v0, $v0, 2
    /* D900 8001D100 1D80013C */  lui        $at, %hi(D_801D5120)
    /* D904 8001D104 21082200 */  addu       $at, $at, $v0
    /* D908 8001D108 2051228C */  lw         $v0, %lo(D_801D5120)($at)
    /* D90C 8001D10C 51740008 */  j          .L8001D144
    /* D910 8001D110 00000000 */   nop
  jlabel .L8001D114
    /* D914 8001D114 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D918 8001D118 80100200 */  sll        $v0, $v0, 2
    /* D91C 8001D11C 1D80013C */  lui        $at, %hi(D_801D57E4)
    /* D920 8001D120 21082200 */  addu       $at, $at, $v0
    /* D924 8001D124 E457228C */  lw         $v0, %lo(D_801D57E4)($at)
    /* D928 8001D128 51740008 */  j          .L8001D144
    /* D92C 8001D12C 00000000 */   nop
  jlabel .L8001D130
    /* D930 8001D130 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* D934 8001D134 80100200 */  sll        $v0, $v0, 2
    /* D938 8001D138 1E80013C */  lui        $at, %hi(D_801D8370)
    /* D93C 8001D13C 21082200 */  addu       $at, $at, $v0
    /* D940 8001D140 7083228C */  lw         $v0, %lo(D_801D8370)($at)
  jlabel .L8001D144
    /* D944 8001D144 0800E003 */  jr         $ra
    /* D948 8001D148 00000000 */   nop
endlabel func_8001D004
