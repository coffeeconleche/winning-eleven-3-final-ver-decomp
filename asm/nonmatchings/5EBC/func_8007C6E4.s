nonmatching func_8007C6E4, 0x2CC

glabel func_8007C6E4
    /* 6CEE4 8007C6E4 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 6CEE8 8007C6E8 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 6CEEC 8007C6EC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6CEF0 8007C6F0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 6CEF4 8007C6F4 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 6CEF8 8007C6F8 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 6CEFC 8007C6FC 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 6CF00 8007C700 801F153C */  lui        $s5, (0x1F800290 >> 16)
    /* 6CF04 8007C704 3000BFAF */  sw         $ra, 0x30($sp)
    /* 6CF08 8007C708 2800B4AF */  sw         $s4, 0x28($sp)
    /* 6CF0C 8007C70C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 6CF10 8007C710 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6CF14 8007C714 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 6CF18 8007C718 03004010 */  beqz       $v0, .L8007C728
    /* 6CF1C 8007C71C 1800B0AF */   sw        $s0, 0x18($sp)
    /* 6CF20 8007C720 DA3E010C */  jal        func_8004FB68
    /* 6CF24 8007C724 21200000 */   addu      $a0, $zero, $zero
  .L8007C728:
    /* 6CF28 8007C728 E8037226 */  addiu      $s2, $s3, 0x3E8
    /* 6CF2C 8007C72C 21880000 */  addu       $s1, $zero, $zero
    /* 6CF30 8007C730 32001424 */  addiu      $s4, $zero, 0x32
    /* 6CF34 8007C734 7F077026 */  addiu      $s0, $s3, 0x77F
  .L8007C738:
    /* 6CF38 8007C738 F44D010C */  jal        func_800537D0
    /* 6CF3C 8007C73C 21204002 */   addu      $a0, $s2, $zero
    /* 6CF40 8007C740 03004010 */  beqz       $v0, .L8007C750
    /* 6CF44 8007C744 00000000 */   nop
    /* 6CF48 8007C748 FFFF14A2 */  sb         $s4, -0x1($s0)
    /* 6CF4C 8007C74C 000000A2 */  sb         $zero, 0x0($s0)
  .L8007C750:
    /* 6CF50 8007C750 01003126 */  addiu      $s1, $s1, 0x1
    /* 6CF54 8007C754 E8031026 */  addiu      $s0, $s0, 0x3E8
    /* 6CF58 8007C758 1600222A */  slti       $v0, $s1, 0x16
    /* 6CF5C 8007C75C F6FF4014 */  bnez       $v0, .L8007C738
    /* 6CF60 8007C760 E8035226 */   addiu     $s2, $s2, 0x3E8
    /* 6CF64 8007C764 AD02A392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s5)
    /* 6CF68 8007C768 AAAA053C */  lui        $a1, (0xAAAAAAAB >> 16)
    /* 6CF6C 8007C76C ABAAA534 */  ori        $a1, $a1, (0xAAAAAAAB & 0xFFFF)
    /* 6CF70 8007C770 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6CF74 8007C774 19006500 */  multu      $v1, $a1
    /* 6CF78 8007C778 10300000 */  mfhi       $a2
    /* 6CF7C 8007C77C 02210600 */  srl        $a0, $a2, 4
    /* 6CF80 8007C780 40100400 */  sll        $v0, $a0, 1
    /* 6CF84 8007C784 21104400 */  addu       $v0, $v0, $a0
    /* 6CF88 8007C788 C0100200 */  sll        $v0, $v0, 3
    /* 6CF8C 8007C78C 23186200 */  subu       $v1, $v1, $v0
    /* 6CF90 8007C790 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6CF94 8007C794 40110300 */  sll        $v0, $v1, 5
    /* 6CF98 8007C798 23104300 */  subu       $v0, $v0, $v1
    /* 6CF9C 8007C79C 80100200 */  sll        $v0, $v0, 2
    /* 6CFA0 8007C7A0 21104300 */  addu       $v0, $v0, $v1
    /* 6CFA4 8007C7A4 C0100200 */  sll        $v0, $v0, 3
    /* 6CFA8 8007C7A8 21906202 */  addu       $s2, $s3, $v0
    /* 6CFAC 8007C7AC 9402A396 */  lhu        $v1, (0x1F800294 & 0xFFFF)($s5)
    /* 6CFB0 8007C7B0 16000224 */  addiu      $v0, $zero, 0x16
    /* 6CFB4 8007C7B4 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 6CFB8 8007C7B8 13006214 */  bne        $v1, $v0, .L8007C808
    /* 6CFBC 8007C7BC 21204002 */   addu      $a0, $s2, $zero
    /* 6CFC0 8007C7C0 AE02A392 */  lbu        $v1, (0x1F8002AE & 0xFFFF)($s5)
    /* 6CFC4 8007C7C4 00000000 */  nop
    /* 6CFC8 8007C7C8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6CFCC 8007C7CC 19006500 */  multu      $v1, $a1
    /* 6CFD0 8007C7D0 10300000 */  mfhi       $a2
    /* 6CFD4 8007C7D4 02290600 */  srl        $a1, $a2, 4
    /* 6CFD8 8007C7D8 40100500 */  sll        $v0, $a1, 1
    /* 6CFDC 8007C7DC 21104500 */  addu       $v0, $v0, $a1
    /* 6CFE0 8007C7E0 C0100200 */  sll        $v0, $v0, 3
    /* 6CFE4 8007C7E4 23186200 */  subu       $v1, $v1, $v0
    /* 6CFE8 8007C7E8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6CFEC 8007C7EC 40290300 */  sll        $a1, $v1, 5
    /* 6CFF0 8007C7F0 2328A300 */  subu       $a1, $a1, $v1
    /* 6CFF4 8007C7F4 80280500 */  sll        $a1, $a1, 2
    /* 6CFF8 8007C7F8 2128A300 */  addu       $a1, $a1, $v1
    /* 6CFFC 8007C7FC C0280500 */  sll        $a1, $a1, 3
    /* 6D000 8007C800 9F67010C */  jal        func_80059E7C
    /* 6D004 8007C804 21286502 */   addu      $a1, $s3, $a1
  .L8007C808:
    /* 6D008 8007C808 9402A296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s5)
    /* 6D00C 8007C80C 00000000 */  nop
    /* 6D010 8007C810 2900422C */  sltiu      $v0, $v0, 0x29
    /* 6D014 8007C814 2D004014 */  bnez       $v0, .L8007C8CC
    /* 6D018 8007C818 00000000 */   nop
    /* 6D01C 8007C81C 98034392 */  lbu        $v1, 0x398($s2)
    /* 6D020 8007C820 92034592 */  lbu        $a1, 0x392($s2)
    /* 6D024 8007C824 40100300 */  sll        $v0, $v1, 1
    /* 6D028 8007C828 21104300 */  addu       $v0, $v0, $v1
    /* 6D02C 8007C82C 80100200 */  sll        $v0, $v0, 2
    /* 6D030 8007C830 23104300 */  subu       $v0, $v0, $v1
    /* 6D034 8007C834 40100200 */  sll        $v0, $v0, 1
    /* 6D038 8007C838 21105300 */  addu       $v0, $v0, $s3
    /* 6D03C 8007C83C A5880334 */  ori        $v1, $zero, 0x88A5
    /* 6D040 8007C840 21104300 */  addu       $v0, $v0, $v1
    /* 6D044 8007C844 21104500 */  addu       $v0, $v0, $a1
    /* 6D048 8007C848 00005090 */  lbu        $s0, 0x0($v0)
    /* 6D04C 8007C84C 0174000C */  jal        func_8001D004
    /* 6D050 8007C850 30000424 */   addiu     $a0, $zero, 0x30
    /* 6D054 8007C854 21204000 */  addu       $a0, $v0, $zero
    /* 6D058 8007C858 AF02A392 */  lbu        $v1, (0x1F8002AF & 0xFFFF)($s5)
    /* 6D05C 8007C85C 02000224 */  addiu      $v0, $zero, 0x2
    /* 6D060 8007C860 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6D064 8007C864 12006214 */  bne        $v1, $v0, .L8007C8B0
    /* 6D068 8007C868 00000000 */   nop
    /* 6D06C 8007C86C 9002A28E */  lw         $v0, (0x1F800290 & 0xFFFF)($s5)
    /* 6D070 8007C870 00000000 */  nop
    /* 6D074 8007C874 08004230 */  andi       $v0, $v0, 0x8
    /* 6D078 8007C878 07004014 */  bnez       $v0, .L8007C898
    /* 6D07C 8007C87C 40101000 */   sll       $v0, $s0, 1
    /* 6D080 8007C880 21105000 */  addu       $v0, $v0, $s0
    /* 6D084 8007C884 80100200 */  sll        $v0, $v0, 2
    /* 6D088 8007C888 21104400 */  addu       $v0, $v0, $a0
    /* 6D08C 8007C88C 07000324 */  addiu      $v1, $zero, 0x7
    /* 6D090 8007C890 33F20108 */  j          .L8007C8CC
    /* 6D094 8007C894 220043A0 */   sb        $v1, 0x22($v0)
  .L8007C898:
    /* 6D098 8007C898 21105000 */  addu       $v0, $v0, $s0
    /* 6D09C 8007C89C 80100200 */  sll        $v0, $v0, 2
    /* 6D0A0 8007C8A0 21104400 */  addu       $v0, $v0, $a0
    /* 6D0A4 8007C8A4 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 6D0A8 8007C8A8 33F20108 */  j          .L8007C8CC
    /* 6D0AC 8007C8AC 220043A0 */   sb        $v1, 0x22($v0)
  .L8007C8B0:
    /* 6D0B0 8007C8B0 9002A28E */  lw         $v0, (0x1F800290 & 0xFFFF)($s5)
    /* 6D0B4 8007C8B4 00000000 */  nop
    /* 6D0B8 8007C8B8 08004230 */  andi       $v0, $v0, 0x8
    /* 6D0BC 8007C8BC 02004014 */  bnez       $v0, .L8007C8C8
    /* 6D0C0 8007C8C0 5B000224 */   addiu     $v0, $zero, 0x5B
    /* 6D0C4 8007C8C4 0B000224 */  addiu      $v0, $zero, 0xB
  .L8007C8C8:
    /* 6D0C8 8007C8C8 2E0082A0 */  sb         $v0, 0x2E($a0)
  .L8007C8CC:
    /* 6D0CC 8007C8CC 32626286 */  lh         $v0, 0x6232($s3)
    /* 6D0D0 8007C8D0 00000000 */  nop
    /* 6D0D4 8007C8D4 09004018 */  blez       $v0, .L8007C8FC
    /* 6D0D8 8007C8D8 21184000 */   addu      $v1, $v0, $zero
    /* 6D0DC 8007C8DC FEFF6224 */  addiu      $v0, $v1, -0x2
    /* 6D0E0 8007C8E0 326262A6 */  sh         $v0, 0x6232($s3)
    /* 6D0E4 8007C8E4 0A626296 */  lhu        $v0, 0x620A($s3)
    /* 6D0E8 8007C8E8 E2616396 */  lhu        $v1, 0x61E2($s3)
    /* 6D0EC 8007C8EC FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 6D0F0 8007C8F0 FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 6D0F4 8007C8F4 0A6262A6 */  sh         $v0, 0x620A($s3)
    /* 6D0F8 8007C8F8 E26163A6 */  sh         $v1, 0x61E2($s3)
  .L8007C8FC:
    /* 6D0FC 8007C8FC 21204002 */  addu       $a0, $s2, $zero
    /* 6D100 8007C900 E81D010C */  jal        func_800477A0
    /* 6D104 8007C904 05000524 */   addiu     $a1, $zero, 0x5
    /* 6D108 8007C908 0F8A000C */  jal        func_8002283C
    /* 6D10C 8007C90C 00000000 */   nop
    /* 6D110 8007C910 B428010C */  jal        func_8004A2D0
    /* 6D114 8007C914 00000000 */   nop
    /* 6D118 8007C918 0446010C */  jal        func_80051810
    /* 6D11C 8007C91C 00000000 */   nop
    /* 6D120 8007C920 00F3010C */  jal        func_8007CC00
    /* 6D124 8007C924 00000000 */   nop
    /* 6D128 8007C928 9402A296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s5)
    /* 6D12C 8007C92C 00000000 */  nop
    /* 6D130 8007C930 01004224 */  addiu      $v0, $v0, 0x1
    /* 6D134 8007C934 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 6D138 8007C938 9402A2A6 */  sh         $v0, (0x1F800294 & 0xFFFF)($s5)
    /* 6D13C 8007C93C 2D01622C */  sltiu      $v0, $v1, 0x12D
    /* 6D140 8007C940 11004014 */  bnez       $v0, .L8007C988
    /* 6D144 8007C944 00000000 */   nop
    /* 6D148 8007C948 0E80023C */  lui        $v0, %hi(D_800E6B86)
    /* 6D14C 8007C94C 866B4294 */  lhu        $v0, %lo(D_800E6B86)($v0)
    /* 6D150 8007C950 00000000 */  nop
    /* 6D154 8007C954 03004010 */  beqz       $v0, .L8007C964
    /* 6D158 8007C958 F501622C */   sltiu     $v0, $v1, 0x1F5
    /* 6D15C 8007C95C 0A004014 */  bnez       $v0, .L8007C988
    /* 6D160 8007C960 00000000 */   nop
  .L8007C964:
    /* 6D164 8007C964 F13E010C */  jal        func_8004FBC4
    /* 6D168 8007C968 21200000 */   addu      $a0, $zero, $zero
    /* 6D16C 8007C96C 06004010 */  beqz       $v0, .L8007C988
    /* 6D170 8007C970 04000224 */   addiu     $v0, $zero, 0x4
    /* 6D174 8007C974 D85960A2 */  sb         $zero, 0x59D8($s3)
    /* 6D178 8007C978 0F80013C */  lui        $at, %hi(D_800EF9C8)
    /* 6D17C 8007C97C C8F922A0 */  sb         $v0, %lo(D_800EF9C8)($at)
    /* 6D180 8007C980 715C000C */  jal        func_800171C4
    /* 6D184 8007C984 0B000424 */   addiu     $a0, $zero, 0xB
  .L8007C988:
    /* 6D188 8007C988 3000BF8F */  lw         $ra, 0x30($sp)
    /* 6D18C 8007C98C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 6D190 8007C990 2800B48F */  lw         $s4, 0x28($sp)
    /* 6D194 8007C994 2400B38F */  lw         $s3, 0x24($sp)
    /* 6D198 8007C998 2000B28F */  lw         $s2, 0x20($sp)
    /* 6D19C 8007C99C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 6D1A0 8007C9A0 1800B08F */  lw         $s0, 0x18($sp)
    /* 6D1A4 8007C9A4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 6D1A8 8007C9A8 0800E003 */  jr         $ra
    /* 6D1AC 8007C9AC 00000000 */   nop
endlabel func_8007C6E4
