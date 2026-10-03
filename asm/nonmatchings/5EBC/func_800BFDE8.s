nonmatching func_800BFDE8, 0x4D0

glabel func_800BFDE8
    /* B05E8 800BFDE8 0F80023C */  lui        $v0, %hi(D_800F20AC)
    /* B05EC 800BFDEC AC20428C */  lw         $v0, %lo(D_800F20AC)($v0)
    /* B05F0 800BFDF0 1180083C */  lui        $t0, %hi(D_8010A3E2)
    /* B05F4 800BFDF4 E2A30825 */  addiu      $t0, $t0, %lo(D_8010A3E2)
    /* B05F8 800BFDF8 18004490 */  lbu        $a0, 0x18($v0)
    /* B05FC 800BFDFC EAFF0381 */  lb         $v1, -0x16($t0)
    /* B0600 800BFE00 80130400 */  sll        $v0, $a0, 14
    /* B0604 800BFE04 23104400 */  subu       $v0, $v0, $a0
    /* B0608 800BFE08 18006200 */  mult       $v1, $v0
    /* B060C 800BFE0C 12180000 */  mflo       $v1
    /* B0610 800BFE10 0682023C */  lui        $v0, (0x82061029 >> 16)
    /* B0614 800BFE14 29104234 */  ori        $v0, $v0, (0x82061029 & 0xFFFF)
    /* B0618 800BFE18 18006200 */  mult       $v1, $v0
    /* B061C 800BFE1C F0FF0481 */  lb         $a0, -0x10($t0)
    /* B0620 800BFE20 10100000 */  mfhi       $v0
    /* B0624 800BFE24 21104300 */  addu       $v0, $v0, $v1
    /* B0628 800BFE28 43130200 */  sra        $v0, $v0, 13
    /* B062C 800BFE2C C31F0300 */  sra        $v1, $v1, 31
    /* B0630 800BFE30 23384300 */  subu       $a3, $v0, $v1
    /* B0634 800BFE34 1800E400 */  mult       $a3, $a0
    /* B0638 800BFE38 12180000 */  mflo       $v1
    /* B063C 800BFE3C F3FF0281 */  lb         $v0, -0xD($t0)
    /* B0640 800BFE40 00000000 */  nop
    /* B0644 800BFE44 18006200 */  mult       $v1, $v0
    /* B0648 800BFE48 12100000 */  mflo       $v0
    /* B064C 800BFE4C 0C04043C */  lui        $a0, (0x40C2051 >> 16)
    /* B0650 800BFE50 51208434 */  ori        $a0, $a0, (0x40C2051 & 0xFFFF)
    /* B0654 800BFE54 19004400 */  multu      $v0, $a0
    /* B0658 800BFE58 00000385 */  lh         $v1, 0x0($t0)
    /* B065C 800BFE5C 2148A000 */  addu       $t1, $a1, $zero
    /* B0660 800BFE60 C0500300 */  sll        $t2, $v1, 3
    /* B0664 800BFE64 10200000 */  mfhi       $a0
    /* B0668 800BFE68 23104400 */  subu       $v0, $v0, $a0
    /* B066C 800BFE6C 42100200 */  srl        $v0, $v0, 1
    /* B0670 800BFE70 21208200 */  addu       $a0, $a0, $v0
    /* B0674 800BFE74 42330400 */  srl        $a2, $a0, 13
    /* B0678 800BFE78 FCFF0495 */  lhu        $a0, -0x4($t0)
    /* B067C 800BFE7C 00000000 */  nop
    /* B0680 800BFE80 FF008530 */  andi       $a1, $a0, 0xFF
    /* B0684 800BFE84 80280500 */  sll        $a1, $a1, 2
    /* B0688 800BFE88 00240400 */  sll        $a0, $a0, 16
    /* B068C 800BFE8C 03240400 */  sra        $a0, $a0, 16
    /* B0690 800BFE90 00FF8330 */  andi       $v1, $a0, 0xFF00
    /* B0694 800BFE94 031A0300 */  sra        $v1, $v1, 8
    /* B0698 800BFE98 40100300 */  sll        $v0, $v1, 1
    /* B069C 800BFE9C 21104300 */  addu       $v0, $v0, $v1
    /* B06A0 800BFEA0 80100200 */  sll        $v0, $v0, 2
    /* B06A4 800BFEA4 23104300 */  subu       $v0, $v0, $v1
    /* B06A8 800BFEA8 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* B06AC 800BFEAC 21186500 */  addu       $v1, $v1, $a1
    /* B06B0 800BFEB0 A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* B06B4 800BFEB4 00110200 */  sll        $v0, $v0, 4
    /* B06B8 800BFEB8 21186200 */  addu       $v1, $v1, $v0
    /* B06BC 800BFEBC 21000224 */  addiu      $v0, $zero, 0x21
    /* B06C0 800BFEC0 19008210 */  beq        $a0, $v0, .L800BFF28
    /* B06C4 800BFEC4 2138C000 */   addu      $a3, $a2, $zero
    /* B06C8 800BFEC8 58006294 */  lhu        $v0, 0x58($v1)
    /* B06CC 800BFECC 00000000 */  nop
    /* B06D0 800BFED0 1800C200 */  mult       $a2, $v0
    /* B06D4 800BFED4 12100000 */  mflo       $v0
    /* B06D8 800BFED8 5A006394 */  lhu        $v1, 0x5A($v1)
    /* B06DC 800BFEDC 00000000 */  nop
    /* B06E0 800BFEE0 1800C300 */  mult       $a2, $v1
    /* B06E4 800BFEE4 12180000 */  mflo       $v1
    /* B06E8 800BFEE8 0402043C */  lui        $a0, (0x2040811 >> 16)
    /* B06EC 800BFEEC 11088434 */  ori        $a0, $a0, (0x2040811 & 0xFFFF)
    /* B06F0 800BFEF0 19004400 */  multu      $v0, $a0
    /* B06F4 800BFEF4 10280000 */  mfhi       $a1
    /* B06F8 800BFEF8 00000000 */  nop
    /* B06FC 800BFEFC 00000000 */  nop
    /* B0700 800BFF00 19006400 */  multu      $v1, $a0
    /* B0704 800BFF04 23104500 */  subu       $v0, $v0, $a1
    /* B0708 800BFF08 42100200 */  srl        $v0, $v0, 1
    /* B070C 800BFF0C 2128A200 */  addu       $a1, $a1, $v0
    /* B0710 800BFF10 82390500 */  srl        $a3, $a1, 6
    /* B0714 800BFF14 10200000 */  mfhi       $a0
    /* B0718 800BFF18 23186400 */  subu       $v1, $v1, $a0
    /* B071C 800BFF1C 42180300 */  srl        $v1, $v1, 1
    /* B0720 800BFF20 21208300 */  addu       $a0, $a0, $v1
    /* B0724 800BFF24 82310400 */  srl        $a2, $a0, 6
  .L800BFF28:
    /* B0728 800BFF28 F4FF0391 */  lbu        $v1, -0xC($t0)
    /* B072C 800BFF2C 00000000 */  nop
    /* B0730 800BFF30 4000622C */  sltiu      $v0, $v1, 0x40
    /* B0734 800BFF34 0C004010 */  beqz       $v0, .L800BFF68
    /* B0738 800BFF38 1800C300 */   mult      $a2, $v1
    /* B073C 800BFF3C 12100000 */  mflo       $v0
    /* B0740 800BFF40 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B0744 800BFF44 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B0748 800BFF48 19004300 */  multu      $v0, $v1
    /* B074C 800BFF4C 2120E000 */  addu       $a0, $a3, $zero
    /* B0750 800BFF50 10180000 */  mfhi       $v1
    /* B0754 800BFF54 23104300 */  subu       $v0, $v0, $v1
    /* B0758 800BFF58 42100200 */  srl        $v0, $v0, 1
    /* B075C 800BFF5C 21186200 */  addu       $v1, $v1, $v0
    /* B0760 800BFF60 E7FF0208 */  j          .L800BFF9C
    /* B0764 800BFF64 42290300 */   srl       $a1, $v1, 5
  .L800BFF68:
    /* B0768 800BFF68 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B076C 800BFF6C 23104300 */  subu       $v0, $v0, $v1
    /* B0770 800BFF70 1800E200 */  mult       $a3, $v0
    /* B0774 800BFF74 12100000 */  mflo       $v0
    /* B0778 800BFF78 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B077C 800BFF7C 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B0780 800BFF80 19004300 */  multu      $v0, $v1
    /* B0784 800BFF84 2128C000 */  addu       $a1, $a2, $zero
    /* B0788 800BFF88 10180000 */  mfhi       $v1
    /* B078C 800BFF8C 23104300 */  subu       $v0, $v0, $v1
    /* B0790 800BFF90 42100200 */  srl        $v0, $v0, 1
    /* B0794 800BFF94 21186200 */  addu       $v1, $v1, $v0
    /* B0798 800BFF98 42210300 */  srl        $a0, $v1, 5
  .L800BFF9C:
    /* B079C 800BFF9C 1180033C */  lui        $v1, %hi(D_8010A3D3)
    /* B07A0 800BFFA0 D3A36390 */  lbu        $v1, %lo(D_8010A3D3)($v1)
    /* B07A4 800BFFA4 00000000 */  nop
    /* B07A8 800BFFA8 4000622C */  sltiu      $v0, $v1, 0x40
    /* B07AC 800BFFAC 0B004010 */  beqz       $v0, .L800BFFDC
    /* B07B0 800BFFB0 1800A300 */   mult      $a1, $v1
    /* B07B4 800BFFB4 12100000 */  mflo       $v0
    /* B07B8 800BFFB8 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B07BC 800BFFBC 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B07C0 800BFFC0 19004300 */  multu      $v0, $v1
    /* B07C4 800BFFC4 10180000 */  mfhi       $v1
    /* B07C8 800BFFC8 23104300 */  subu       $v0, $v0, $v1
    /* B07CC 800BFFCC 42100200 */  srl        $v0, $v0, 1
    /* B07D0 800BFFD0 21186200 */  addu       $v1, $v1, $v0
    /* B07D4 800BFFD4 03000308 */  j          .L800C000C
    /* B07D8 800BFFD8 42290300 */   srl       $a1, $v1, 5
  .L800BFFDC:
    /* B07DC 800BFFDC 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B07E0 800BFFE0 23104300 */  subu       $v0, $v0, $v1
    /* B07E4 800BFFE4 18008200 */  mult       $a0, $v0
    /* B07E8 800BFFE8 12100000 */  mflo       $v0
    /* B07EC 800BFFEC 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B07F0 800BFFF0 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B07F4 800BFFF4 19004300 */  multu      $v0, $v1
    /* B07F8 800BFFF8 10180000 */  mfhi       $v1
    /* B07FC 800BFFFC 23104300 */  subu       $v0, $v0, $v1
    /* B0800 800C0000 42100200 */  srl        $v0, $v0, 1
    /* B0804 800C0004 21186200 */  addu       $v1, $v1, $v0
    /* B0808 800C0008 42210300 */  srl        $a0, $v1, 5
  .L800C000C:
    /* B080C 800C000C 1180033C */  lui        $v1, %hi(D_8010A3CD)
    /* B0810 800C0010 CDA36390 */  lbu        $v1, %lo(D_8010A3CD)($v1)
    /* B0814 800C0014 00000000 */  nop
    /* B0818 800C0018 4000622C */  sltiu      $v0, $v1, 0x40
    /* B081C 800C001C 0B004010 */  beqz       $v0, .L800C004C
    /* B0820 800C0020 1800A300 */   mult      $a1, $v1
    /* B0824 800C0024 12100000 */  mflo       $v0
    /* B0828 800C0028 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B082C 800C002C 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B0830 800C0030 19004300 */  multu      $v0, $v1
    /* B0834 800C0034 10180000 */  mfhi       $v1
    /* B0838 800C0038 23104300 */  subu       $v0, $v0, $v1
    /* B083C 800C003C 42100200 */  srl        $v0, $v0, 1
    /* B0840 800C0040 21186200 */  addu       $v1, $v1, $v0
    /* B0844 800C0044 1F000308 */  j          .L800C007C
    /* B0848 800C0048 42290300 */   srl       $a1, $v1, 5
  .L800C004C:
    /* B084C 800C004C 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B0850 800C0050 23104300 */  subu       $v0, $v0, $v1
    /* B0854 800C0054 18008200 */  mult       $a0, $v0
    /* B0858 800C0058 12100000 */  mflo       $v0
    /* B085C 800C005C 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B0860 800C0060 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B0864 800C0064 19004300 */  multu      $v0, $v1
    /* B0868 800C0068 10180000 */  mfhi       $v1
    /* B086C 800C006C 23104300 */  subu       $v0, $v0, $v1
    /* B0870 800C0070 42100200 */  srl        $v0, $v0, 1
    /* B0874 800C0074 21186200 */  addu       $v1, $v1, $v0
    /* B0878 800C0078 42210300 */  srl        $a0, $v1, 5
  .L800C007C:
    /* B087C 800C007C 0F80033C */  lui        $v1, %hi(D_800F0F70)
    /* B0880 800C0080 700F6384 */  lh         $v1, %lo(D_800F0F70)($v1)
    /* B0884 800C0084 01000224 */  addiu      $v0, $zero, 0x1
    /* B0888 800C0088 06006214 */  bne        $v1, $v0, .L800C00A4
    /* B088C 800C008C 2B108500 */   sltu      $v0, $a0, $a1
    /* B0890 800C0090 03004010 */  beqz       $v0, .L800C00A0
    /* B0894 800C0094 00000000 */   nop
    /* B0898 800C0098 29000308 */  j          .L800C00A4
    /* B089C 800C009C 2120A000 */   addu      $a0, $a1, $zero
  .L800C00A0:
    /* B08A0 800C00A0 21288000 */  addu       $a1, $a0, $zero
  .L800C00A4:
    /* B08A4 800C00A4 1180063C */  lui        $a2, %hi(D_8010A3DE)
    /* B08A8 800C00A8 DEA3C624 */  addiu      $a2, $a2, %lo(D_8010A3DE)
    /* B08AC 800C00AC 0000C384 */  lh         $v1, 0x0($a2)
    /* B08B0 800C00B0 21000224 */  addiu      $v0, $zero, 0x21
    /* B08B4 800C00B4 16006210 */  beq        $v1, $v0, .L800C0110
    /* B08B8 800C00B8 18008400 */   mult      $a0, $a0
    /* B08BC 800C00BC 12200000 */  mflo       $a0
    /* B08C0 800C00C0 00000000 */  nop
    /* B08C4 800C00C4 00000000 */  nop
    /* B08C8 800C00C8 1800A500 */  mult       $a1, $a1
    /* B08CC 800C00CC 12280000 */  mflo       $a1
    /* B08D0 800C00D0 0400023C */  lui        $v0, (0x40011 >> 16)
    /* B08D4 800C00D4 11004234 */  ori        $v0, $v0, (0x40011 & 0xFFFF)
    /* B08D8 800C00D8 19008200 */  multu      $a0, $v0
    /* B08DC 800C00DC 10180000 */  mfhi       $v1
    /* B08E0 800C00E0 00000000 */  nop
    /* B08E4 800C00E4 00000000 */  nop
    /* B08E8 800C00E8 1900A200 */  multu      $a1, $v0
    /* B08EC 800C00EC 23208300 */  subu       $a0, $a0, $v1
    /* B08F0 800C00F0 42200400 */  srl        $a0, $a0, 1
    /* B08F4 800C00F4 21186400 */  addu       $v1, $v1, $a0
    /* B08F8 800C00F8 42230300 */  srl        $a0, $v1, 13
    /* B08FC 800C00FC 10100000 */  mfhi       $v0
    /* B0900 800C0100 2328A200 */  subu       $a1, $a1, $v0
    /* B0904 800C0104 42280500 */  srl        $a1, $a1, 1
    /* B0908 800C0108 21104500 */  addu       $v0, $v0, $a1
    /* B090C 800C010C 422B0200 */  srl        $a1, $v0, 13
  .L800C0110:
    /* B0910 800C0110 FFFF4231 */  andi       $v0, $t2, 0xFFFF
    /* B0914 800C0114 40100200 */  sll        $v0, $v0, 1
    /* B0918 800C0118 1180013C */  lui        $at, %hi(D_8010A41C)
    /* B091C 800C011C 21082200 */  addu       $at, $at, $v0
    /* B0920 800C0120 1CA429A4 */  sh         $t1, %lo(D_8010A41C)($at)
    /* B0924 800C0124 1180013C */  lui        $at, %hi(D_8010A418)
    /* B0928 800C0128 21082200 */  addu       $at, $at, $v0
    /* B092C 800C012C 18A424A4 */  sh         $a0, %lo(D_8010A418)($at)
    /* B0930 800C0130 1180013C */  lui        $at, %hi(D_8010A41A)
    /* B0934 800C0134 21082200 */  addu       $at, $at, $v0
    /* B0938 800C0138 1AA425A4 */  sh         $a1, %lo(D_8010A41A)($at)
    /* B093C 800C013C 0400C384 */  lh         $v1, 0x4($a2)
    /* B0940 800C0140 0F80023C */  lui        $v0, %hi(D_800E81E0)
    /* B0944 800C0144 21104300 */  addu       $v0, $v0, $v1
    /* B0948 800C0148 E0814290 */  lbu        $v0, %lo(D_800E81E0)($v0)
    /* B094C 800C014C 00000000 */  nop
    /* B0950 800C0150 07004234 */  ori        $v0, $v0, 0x7
    /* B0954 800C0154 0F80013C */  lui        $at, %hi(D_800E81E0)
    /* B0958 800C0158 21082300 */  addu       $at, $at, $v1
    /* B095C 800C015C E08122A0 */  sb         $v0, %lo(D_800E81E0)($at)
    /* B0960 800C0160 0400C384 */  lh         $v1, 0x4($a2)
    /* B0964 800C0164 00000000 */  nop
    /* B0968 800C0168 C0100300 */  sll        $v0, $v1, 3
    /* B096C 800C016C 23104300 */  subu       $v0, $v0, $v1
    /* B0970 800C0170 80100200 */  sll        $v0, $v0, 2
    /* B0974 800C0174 23104300 */  subu       $v0, $v0, $v1
    /* B0978 800C0178 40100200 */  sll        $v0, $v0, 1
    /* B097C 800C017C 0E80013C */  lui        $at, %hi(D_800E78DC)
    /* B0980 800C0180 21082200 */  addu       $at, $at, $v0
    /* B0984 800C0184 DC7829A4 */  sh         $t1, %lo(D_800E78DC)($at)
    /* B0988 800C0188 0400C384 */  lh         $v1, 0x4($a2)
    /* B098C 800C018C 00000000 */  nop
    /* B0990 800C0190 10006228 */  slti       $v0, $v1, 0x10
    /* B0994 800C0194 04004010 */  beqz       $v0, .L800C01A8
    /* B0998 800C0198 01000224 */   addiu     $v0, $zero, 0x1
    /* B099C 800C019C 04306200 */  sllv       $a2, $v0, $v1
    /* B09A0 800C01A0 6D000308 */  j          .L800C01B4
    /* B09A4 800C01A4 21280000 */   addu      $a1, $zero, $zero
  .L800C01A8:
    /* B09A8 800C01A8 21300000 */  addu       $a2, $zero, $zero
    /* B09AC 800C01AC F0FF6324 */  addiu      $v1, $v1, -0x10
    /* B09B0 800C01B0 04286200 */  sllv       $a1, $v0, $v1
  .L800C01B4:
    /* B09B4 800C01B4 1180023C */  lui        $v0, %hi(D_8010A3DC)
    /* B09B8 800C01B8 DCA34290 */  lbu        $v0, %lo(D_8010A3DC)($v0)
    /* B09BC 800C01BC 00000000 */  nop
    /* B09C0 800C01C0 04004230 */  andi       $v0, $v0, 0x4
    /* B09C4 800C01C4 0D004010 */  beqz       $v0, .L800C01FC
    /* B09C8 800C01C8 27180600 */   nor       $v1, $zero, $a2
    /* B09CC 800C01CC 0E80023C */  lui        $v0, %hi(D_800E75FC)
    /* B09D0 800C01D0 FC754294 */  lhu        $v0, %lo(D_800E75FC)($v0)
    /* B09D4 800C01D4 0E80033C */  lui        $v1, %hi(D_800E75FE)
    /* B09D8 800C01D8 FE756394 */  lhu        $v1, %lo(D_800E75FE)($v1)
    /* B09DC 800C01DC 25104600 */  or         $v0, $v0, $a2
    /* B09E0 800C01E0 25186500 */  or         $v1, $v1, $a1
    /* B09E4 800C01E4 0E80013C */  lui        $at, %hi(D_800E75FC)
    /* B09E8 800C01E8 FC7522A4 */  sh         $v0, %lo(D_800E75FC)($at)
    /* B09EC 800C01EC 0E80013C */  lui        $at, %hi(D_800E75FE)
    /* B09F0 800C01F0 FE7523A4 */  sh         $v1, %lo(D_800E75FE)($at)
    /* B09F4 800C01F4 8C000308 */  j          .L800C0230
    /* B09F8 800C01F8 27180600 */   nor       $v1, $zero, $a2
  .L800C01FC:
    /* B09FC 800C01FC 0E80023C */  lui        $v0, %hi(D_800E75FC)
    /* B0A00 800C0200 FC754294 */  lhu        $v0, %lo(D_800E75FC)($v0)
    /* B0A04 800C0204 00000000 */  nop
    /* B0A08 800C0208 24104300 */  and        $v0, $v0, $v1
    /* B0A0C 800C020C 0E80013C */  lui        $at, %hi(D_800E75FC)
    /* B0A10 800C0210 FC7522A4 */  sh         $v0, %lo(D_800E75FC)($at)
    /* B0A14 800C0214 0E80023C */  lui        $v0, %hi(D_800E75FE)
    /* B0A18 800C0218 FE754294 */  lhu        $v0, %lo(D_800E75FE)($v0)
    /* B0A1C 800C021C 27180500 */  nor        $v1, $zero, $a1
    /* B0A20 800C0220 24104300 */  and        $v0, $v0, $v1
    /* B0A24 800C0224 0E80013C */  lui        $at, %hi(D_800E75FE)
    /* B0A28 800C0228 FE7522A4 */  sh         $v0, %lo(D_800E75FE)($at)
    /* B0A2C 800C022C 27180600 */  nor        $v1, $zero, $a2
  .L800C0230:
    /* B0A30 800C0230 0E80023C */  lui        $v0, %hi(D_800E7600)
    /* B0A34 800C0234 00764294 */  lhu        $v0, %lo(D_800E7600)($v0)
    /* B0A38 800C0238 0E80043C */  lui        $a0, %hi(D_800E75FA)
    /* B0A3C 800C023C FA758494 */  lhu        $a0, %lo(D_800E75FA)($a0)
    /* B0A40 800C0240 24104300 */  and        $v0, $v0, $v1
    /* B0A44 800C0244 0E80013C */  lui        $at, %hi(D_800E7600)
    /* B0A48 800C0248 007622A4 */  sh         $v0, %lo(D_800E7600)($at)
    /* B0A4C 800C024C 0E80023C */  lui        $v0, %hi(D_800E764C)
    /* B0A50 800C0250 4C764294 */  lhu        $v0, %lo(D_800E764C)($v0)
    /* B0A54 800C0254 27180500 */  nor        $v1, $zero, $a1
    /* B0A58 800C0258 24104300 */  and        $v0, $v0, $v1
    /* B0A5C 800C025C 0E80033C */  lui        $v1, %hi(D_800E75F8)
    /* B0A60 800C0260 F8756394 */  lhu        $v1, %lo(D_800E75F8)($v1)
    /* B0A64 800C0264 25208500 */  or         $a0, $a0, $a1
    /* B0A68 800C0268 0E80013C */  lui        $at, %hi(D_800E75FA)
    /* B0A6C 800C026C FA7524A4 */  sh         $a0, %lo(D_800E75FA)($at)
    /* B0A70 800C0270 0E80013C */  lui        $at, %hi(D_800E764C)
    /* B0A74 800C0274 4C7622A4 */  sh         $v0, %lo(D_800E764C)($at)
    /* B0A78 800C0278 1180023C */  lui        $v0, %hi(D_8010CE6C)
    /* B0A7C 800C027C 6CCE4294 */  lhu        $v0, %lo(D_8010CE6C)($v0)
    /* B0A80 800C0280 25186600 */  or         $v1, $v1, $a2
    /* B0A84 800C0284 0E80013C */  lui        $at, %hi(D_800E75F8)
    /* B0A88 800C0288 F87523A4 */  sh         $v1, %lo(D_800E75F8)($at)
    /* B0A8C 800C028C 27180300 */  nor        $v1, $zero, $v1
    /* B0A90 800C0290 24104300 */  and        $v0, $v0, $v1
    /* B0A94 800C0294 1180013C */  lui        $at, %hi(D_8010CE6C)
    /* B0A98 800C0298 6CCE22A4 */  sh         $v0, %lo(D_8010CE6C)($at)
    /* B0A9C 800C029C 1180023C */  lui        $v0, %hi(D_8010CE6E)
    /* B0AA0 800C02A0 6ECE4294 */  lhu        $v0, %lo(D_8010CE6E)($v0)
    /* B0AA4 800C02A4 27200400 */  nor        $a0, $zero, $a0
    /* B0AA8 800C02A8 24104400 */  and        $v0, $v0, $a0
    /* B0AAC 800C02AC 1180013C */  lui        $at, %hi(D_8010CE6E)
    /* B0AB0 800C02B0 0800E003 */  jr         $ra
    /* B0AB4 800C02B4 6ECE22A4 */   sh        $v0, %lo(D_8010CE6E)($at)
endlabel func_800BFDE8
