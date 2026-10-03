nonmatching func_8001D6A8, 0x540

glabel func_8001D6A8
    /* DEA8 8001D6A8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* DEAC 8001D6AC 2400B5AF */  sw         $s5, 0x24($sp)
    /* DEB0 8001D6B0 1080153C */  lui        $s5, %hi(D_800FF748)
    /* DEB4 8001D6B4 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* DEB8 8001D6B8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DEBC 8001D6BC 801F133C */  lui        $s3, (0x1F8001FC >> 16)
    /* DEC0 8001D6C0 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* DEC4 8001D6C4 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* DEC8 8001D6C8 01000224 */  addiu      $v0, $zero, 0x1
    /* DECC 8001D6CC 3000BFAF */  sw         $ra, 0x30($sp)
    /* DED0 8001D6D0 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* DED4 8001D6D4 2800B6AF */  sw         $s6, 0x28($sp)
    /* DED8 8001D6D8 2000B4AF */  sw         $s4, 0x20($sp)
    /* DEDC 8001D6DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* DEE0 8001D6E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* DEE4 8001D6E4 1C006214 */  bne        $v1, $v0, .L8001D758
    /* DEE8 8001D6E8 1000B0AF */   sw        $s0, 0x10($sp)
    /* DEEC 8001D6EC 801F033C */  lui        $v1, (0x1F8002F0 >> 16)
    /* DEF0 8001D6F0 F0026390 */  lbu        $v1, (0x1F8002F0 & 0xFFFF)($v1)
    /* DEF4 8001D6F4 02000224 */  addiu      $v0, $zero, 0x2
    /* DEF8 8001D6F8 18006214 */  bne        $v1, $v0, .L8001D75C
    /* DEFC 8001D6FC 21B00000 */   addu      $s6, $zero, $zero
    /* DF00 8001D700 801F023C */  lui        $v0, (0x1F8002E6 >> 16)
    /* DF04 8001D704 E6024290 */  lbu        $v0, (0x1F8002E6 & 0xFFFF)($v0)
    /* DF08 8001D708 00000000 */  nop
    /* DF0C 8001D70C 0500422C */  sltiu      $v0, $v0, 0x5
    /* DF10 8001D710 12004010 */  beqz       $v0, .L8001D75C
    /* DF14 8001D714 3CA0033C */   lui       $v1, (0xA03C1689 >> 16)
    /* DF18 8001D718 801F023C */  lui        $v0, (0x1F8001FC >> 16)
    /* DF1C 8001D71C FC01428C */  lw         $v0, (0x1F8001FC & 0xFFFF)($v0)
    /* DF20 8001D720 89166334 */  ori        $v1, $v1, (0xA03C1689 & 0xFFFF)
    /* DF24 8001D724 02004104 */  bgez       $v0, .L8001D730
    /* DF28 8001D728 00000000 */   nop
    /* DF2C 8001D72C 23100200 */  negu       $v0, $v0
  .L8001D730:
    /* DF30 8001D730 00120200 */  sll        $v0, $v0, 8
    /* DF34 8001D734 18004300 */  mult       $v0, $v1
    /* DF38 8001D738 01001624 */  addiu      $s6, $zero, 0x1
    /* DF3C 8001D73C 10400000 */  mfhi       $t0
    /* DF40 8001D740 21180201 */  addu       $v1, $t0, $v0
    /* DF44 8001D744 431B0300 */  sra        $v1, $v1, 13
    /* DF48 8001D748 C3170200 */  sra        $v0, $v0, 31
    /* DF4C 8001D74C 23186200 */  subu       $v1, $v1, $v0
    /* DF50 8001D750 D7750008 */  j          .L8001D75C
    /* DF54 8001D754 00087724 */   addiu     $s7, $v1, 0x800
  .L8001D758:
    /* DF58 8001D758 21B00000 */  addu       $s6, $zero, $zero
  .L8001D75C:
    /* DF5C 8001D75C 2188A002 */  addu       $s1, $s5, $zero
    /* DF60 8001D760 21900000 */  addu       $s2, $zero, $zero
    /* DF64 8001D764 04017426 */  addiu      $s4, $s3, %lo(D_1F800104)
    /* DF68 8001D768 3C00B026 */  addiu      $s0, $s5, 0x3C
  .L8001D76C:
    /* DF6C 8001D76C 00002292 */  lbu        $v0, 0x0($s1)
    /* DF70 8001D770 00000000 */  nop
    /* DF74 8001D774 4C004010 */  beqz       $v0, .L8001D8A8
    /* DF78 8001D778 00000000 */   nop
    /* DF7C 8001D77C 1200C012 */  beqz       $s6, .L8001D7C8
    /* DF80 8001D780 00000000 */   nop
    /* DF84 8001D784 0402658E */  lw         $a1, (0x1F800204 & 0xFFFF)($s3)
    /* DF88 8001D788 CAFF0296 */  lhu        $v0, -0x36($s0)
    /* DF8C 8001D78C C6FF0486 */  lh         $a0, -0x3A($s0)
    /* DF90 8001D790 FC01638E */  lw         $v1, (0x1F8001FC & 0xFFFF)($s3)
    /* DF94 8001D794 23104500 */  subu       $v0, $v0, $a1
    /* DF98 8001D798 23186400 */  subu       $v1, $v1, $a0
    /* DF9C 8001D79C 02006104 */  bgez       $v1, .L8001D7A8
    /* DFA0 8001D7A0 00000000 */   nop
    /* DFA4 8001D7A4 23180300 */  negu       $v1, $v1
  .L8001D7A8:
    /* DFA8 8001D7A8 00140200 */  sll        $v0, $v0, 16
    /* DFAC 8001D7AC 83140200 */  sra        $v0, $v0, 18
    /* DFB0 8001D7B0 2110E202 */  addu       $v0, $s7, $v0
    /* DFB4 8001D7B4 2A104300 */  slt        $v0, $v0, $v1
    /* DFB8 8001D7B8 03004010 */  beqz       $v0, .L8001D7C8
    /* DFBC 8001D7BC 01000224 */   addiu     $v0, $zero, 0x1
    /* DFC0 8001D7C0 2A760008 */  j          .L8001D8A8
    /* DFC4 8001D7C4 960302A2 */   sb        $v0, 0x396($s0)
  .L8001D7C8:
    /* DFC8 8001D7C8 C6FF0286 */  lh         $v0, -0x3A($s0)
    /* DFCC 8001D7CC 00000000 */  nop
    /* DFD0 8001D7D0 3C0162AE */  sw         $v0, (0x1F80013C & 0xFFFF)($s3)
    /* DFD4 8001D7D4 C8FF0286 */  lh         $v0, -0x38($s0)
    /* DFD8 8001D7D8 00000000 */  nop
    /* DFDC 8001D7DC 400162AE */  sw         $v0, (0x1F800140 & 0xFFFF)($s3)
    /* DFE0 8001D7E0 CAFF0286 */  lh         $v0, -0x36($s0)
    /* DFE4 8001D7E4 00000000 */  nop
    /* DFE8 8001D7E8 440162AE */  sw         $v0, (0x1F800144 & 0xFFFF)($s3)
    /* DFEC 8001D7EC E8FF0296 */  lhu        $v0, -0x18($s0)
    /* DFF0 8001D7F0 00000000 */  nop
    /* DFF4 8001D7F4 240162A6 */  sh         $v0, (0x1F800124 & 0xFFFF)($s3)
    /* DFF8 8001D7F8 EAFF0296 */  lhu        $v0, -0x16($s0)
    /* DFFC 8001D7FC 00000000 */  nop
    /* E000 8001D800 260162A6 */  sh         $v0, (0x1F800126 & 0xFFFF)($s3)
    /* E004 8001D804 ECFF0296 */  lhu        $v0, -0x14($s0)
    /* E008 8001D808 00000000 */  nop
    /* E00C 8001D80C 280162A6 */  sh         $v0, (0x1F800128 & 0xFFFF)($s3)
    /* E010 8001D810 F0FF028E */  lw         $v0, -0x10($s0)
    /* E014 8001D814 00000000 */  nop
    /* E018 8001D818 4C0162AE */  sw         $v0, (0x1F80014C & 0xFFFF)($s3)
    /* E01C 8001D81C F4FF028E */  lw         $v0, -0xC($s0)
    /* E020 8001D820 24016426 */  addiu      $a0, $s3, %lo(D_1F800124)
    /* E024 8001D824 500162AE */  sw         $v0, (0x1F800150 & 0xFFFF)($s3)
    /* E028 8001D828 F8FF028E */  lw         $v0, -0x8($s0)
    /* E02C 8001D82C 21288002 */  addu       $a1, $s4, $zero
    /* E030 8001D830 22C5020C */  jal        func_800B1488
    /* E034 8001D834 540162AE */   sw        $v0, (0x1F800154 & 0xFFFF)($s3)
    /* E038 8001D838 21208002 */  addu       $a0, $s4, $zero
    /* E03C 8001D83C D2C4020C */  jal        func_800B1348
    /* E040 8001D840 4C016526 */   addiu     $a1, $s3, %lo(D_1F80014C)
    /* E044 8001D844 21208002 */  addu       $a0, $s4, $zero
    /* E048 8001D848 C6C4020C */  jal        func_800B1318
    /* E04C 8001D84C 3C016526 */   addiu     $a1, $s3, %lo(D_1F80013C)
    /* E050 8001D850 0401628E */  lw         $v0, (0x1F800104 & 0xFFFF)($s3)
    /* E054 8001D854 0801638E */  lw         $v1, (0x1F800108 & 0xFFFF)($s3)
    /* E058 8001D858 0C01648E */  lw         $a0, (0x1F80010C & 0xFFFF)($s3)
    /* E05C 8001D85C 1001658E */  lw         $a1, (0x1F800110 & 0xFFFF)($s3)
    /* E060 8001D860 040002AE */  sw         $v0, 0x4($s0)
    /* E064 8001D864 080003AE */  sw         $v1, 0x8($s0)
    /* E068 8001D868 0C0004AE */  sw         $a0, 0xC($s0)
    /* E06C 8001D86C 100005AE */  sw         $a1, 0x10($s0)
    /* E070 8001D870 1401628E */  lw         $v0, (0x1F800114 & 0xFFFF)($s3)
    /* E074 8001D874 1801638E */  lw         $v1, (0x1F800118 & 0xFFFF)($s3)
    /* E078 8001D878 1C01648E */  lw         $a0, (0x1F80011C & 0xFFFF)($s3)
    /* E07C 8001D87C 2001658E */  lw         $a1, (0x1F800120 & 0xFFFF)($s3)
    /* E080 8001D880 140002AE */  sw         $v0, 0x14($s0)
    /* E084 8001D884 180003AE */  sw         $v1, 0x18($s0)
    /* E088 8001D888 1C0004AE */  sw         $a0, 0x1C($s0)
    /* E08C 8001D88C 200005AE */  sw         $a1, 0x20($s0)
    /* E090 8001D890 21200002 */  addu       $a0, $s0, $zero
    /* E094 8001D894 21288002 */  addu       $a1, $s4, $zero
    /* E098 8001D898 9EDA020C */  jal        func_800B6A78
    /* E09C 8001D89C 000000AE */   sw        $zero, 0x0($s0)
    /* E0A0 8001D8A0 806F000C */  jal        func_8001BE00
    /* E0A4 8001D8A4 21202002 */   addu      $a0, $s1, $zero
  .L8001D8A8:
    /* E0A8 8001D8A8 01005226 */  addiu      $s2, $s2, 0x1
    /* E0AC 8001D8AC E8031026 */  addiu      $s0, $s0, 0x3E8
    /* E0B0 8001D8B0 1800422A */  slti       $v0, $s2, 0x18
    /* E0B4 8001D8B4 ADFF4014 */  bnez       $v0, .L8001D76C
    /* E0B8 8001D8B8 E8033126 */   addiu     $s1, $s1, 0x3E8
    /* E0BC 8001D8BC 6A71000C */  jal        func_8001C5A8
    /* E0C0 8001D8C0 00000000 */   nop
    /* E0C4 8001D8C4 8072000C */  jal        func_8001CA00
    /* E0C8 8001D8C8 00000000 */   nop
    /* E0CC 8001D8CC 0100013C */  lui        $at, (0x10000 >> 16)
    /* E0D0 8001D8D0 2108A102 */  addu       $at, $s5, $at
    /* E0D4 8001D8D4 E0AB2394 */  lhu        $v1, -0x5420($at)
    /* E0D8 8001D8D8 00010224 */  addiu      $v0, $zero, 0x100
    /* E0DC 8001D8DC 08006214 */  bne        $v1, $v0, .L8001D900
    /* E0E0 8001D8E0 05000324 */   addiu     $v1, $zero, 0x5
    /* E0E4 8001D8E4 E1026292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s3)
    /* E0E8 8001D8E8 00000000 */  nop
    /* E0EC 8001D8EC FF004230 */  andi       $v0, $v0, 0xFF
    /* E0F0 8001D8F0 03004310 */  beq        $v0, $v1, .L8001D900
    /* E0F4 8001D8F4 00000000 */   nop
    /* E0F8 8001D8F8 BA71020C */  jal        func_8009C6E8
    /* E0FC 8001D8FC 00000000 */   nop
  .L8001D900:
    /* E100 8001D900 98026292 */  lbu        $v0, (0x1F800298 & 0xFFFF)($s3)
    /* E104 8001D904 00000000 */  nop
    /* E108 8001D908 FF004330 */  andi       $v1, $v0, 0xFF
    /* E10C 8001D90C 05000224 */  addiu      $v0, $zero, 0x5
    /* E110 8001D910 08006210 */  beq        $v1, $v0, .L8001D934
    /* E114 8001D914 03000224 */   addiu     $v0, $zero, 0x3
    /* E118 8001D918 06006210 */  beq        $v1, $v0, .L8001D934
    /* E11C 8001D91C 00000000 */   nop
    /* E120 8001D920 06000424 */  addiu      $a0, $zero, 0x6
    /* E124 8001D924 03006410 */  beq        $v1, $a0, .L8001D934
    /* E128 8001D928 63000224 */   addiu     $v0, $zero, 0x63
    /* E12C 8001D92C 72006214 */  bne        $v1, $v0, .L8001DAF8
    /* E130 8001D930 00000000 */   nop
  .L8001D934:
    /* E134 8001D934 A0026292 */  lbu        $v0, (0x1F8002A0 & 0xFFFF)($s3)
    /* E138 8001D938 00000000 */  nop
    /* E13C 8001D93C 08004014 */  bnez       $v0, .L8001D960
    /* E140 8001D940 01000324 */   addiu     $v1, $zero, 0x1
    /* E144 8001D944 C0026292 */  lbu        $v0, (0x1F8002C0 & 0xFFFF)($s3)
    /* E148 8001D948 00000000 */  nop
    /* E14C 8001D94C FF004230 */  andi       $v0, $v0, 0xFF
    /* E150 8001D950 03004314 */  bne        $v0, $v1, .L8001D960
    /* E154 8001D954 00000000 */   nop
    /* E158 8001D958 4026020C */  jal        func_80089900
    /* E15C 8001D95C 00000000 */   nop
  .L8001D960:
    /* E160 8001D960 1D6B000C */  jal        func_8001AC74
    /* E164 8001D964 21900000 */   addu      $s2, $zero, $zero
    /* E168 8001D968 0174000C */  jal        func_8001D004
    /* E16C 8001D96C 25000424 */   addiu     $a0, $zero, 0x25
    /* E170 8001D970 90000724 */  addiu      $a3, $zero, 0x90
    /* E174 8001D974 03004624 */  addiu      $a2, $v0, 0x3
    /* E178 8001D978 F065A526 */  addiu      $a1, $s5, 0x65F0
  .L8001D97C:
    /* E17C 8001D97C 21107202 */  addu       $v0, $s3, $s2
    /* E180 8001D980 40024490 */  lbu        $a0, (0x1F800240 & 0xFFFF)($v0)
    /* E184 8001D984 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* E188 8001D988 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* E18C 8001D98C 19008200 */  multu      $a0, $v0
    /* E190 8001D990 0000C7A0 */  sb         $a3, 0x0($a2)
    /* E194 8001D994 10400000 */  mfhi       $t0
    /* E198 8001D998 02190800 */  srl        $v1, $t0, 4
    /* E19C 8001D99C 40100300 */  sll        $v0, $v1, 1
    /* E1A0 8001D9A0 21104300 */  addu       $v0, $v0, $v1
    /* E1A4 8001D9A4 C0100200 */  sll        $v0, $v0, 3
    /* E1A8 8001D9A8 23208200 */  subu       $a0, $a0, $v0
    /* E1AC 8001D9AC FF008430 */  andi       $a0, $a0, 0xFF
    /* E1B0 8001D9B0 40110400 */  sll        $v0, $a0, 5
    /* E1B4 8001D9B4 23104400 */  subu       $v0, $v0, $a0
    /* E1B8 8001D9B8 80100200 */  sll        $v0, $v0, 2
    /* E1BC 8001D9BC 21104400 */  addu       $v0, $v0, $a0
    /* E1C0 8001D9C0 C0100200 */  sll        $v0, $v0, 3
    /* E1C4 8001D9C4 2188A202 */  addu       $s1, $s5, $v0
    /* E1C8 8001D9C8 14002296 */  lhu        $v0, 0x14($s1)
    /* E1CC 8001D9CC 00000000 */  nop
    /* E1D0 8001D9D0 0000A2A4 */  sh         $v0, 0x0($a1)
    /* E1D4 8001D9D4 16002296 */  lhu        $v0, 0x16($s1)
    /* E1D8 8001D9D8 00000000 */  nop
    /* E1DC 8001D9DC 0200A2A4 */  sh         $v0, 0x2($a1)
    /* E1E0 8001D9E0 00140200 */  sll        $v0, $v0, 16
    /* E1E4 8001D9E4 03140200 */  sra        $v0, $v0, 16
    /* E1E8 8001D9E8 64004228 */  slti       $v0, $v0, 0x64
    /* E1EC 8001D9EC 03004014 */  bnez       $v0, .L8001D9FC
    /* E1F0 8001D9F0 64000224 */   addiu     $v0, $zero, 0x64
    /* E1F4 8001D9F4 0200A2A4 */  sh         $v0, 0x2($a1)
    /* E1F8 8001D9F8 0000C7A0 */  sb         $a3, 0x0($a2)
  .L8001D9FC:
    /* E1FC 8001D9FC 0200A284 */  lh         $v0, 0x2($a1)
    /* E200 8001DA00 00000000 */  nop
    /* E204 8001DA04 A1FF4228 */  slti       $v0, $v0, -0x5F
    /* E208 8001DA08 04004010 */  beqz       $v0, .L8001DA1C
    /* E20C 8001DA0C A0FF0224 */   addiu     $v0, $zero, -0x60
    /* E210 8001DA10 0200A2A4 */  sh         $v0, 0x2($a1)
    /* E214 8001DA14 80000224 */  addiu      $v0, $zero, 0x80
    /* E218 8001DA18 0000C2A0 */  sb         $v0, 0x0($a2)
  .L8001DA1C:
    /* E21C 8001DA1C 0000A284 */  lh         $v0, 0x0($a1)
    /* E220 8001DA20 00000000 */  nop
    /* E224 8001DA24 A8004228 */  slti       $v0, $v0, 0xA8
    /* E228 8001DA28 04004014 */  bnez       $v0, .L8001DA3C
    /* E22C 8001DA2C A8000224 */   addiu     $v0, $zero, 0xA8
    /* E230 8001DA30 0000A2A4 */  sh         $v0, 0x0($a1)
    /* E234 8001DA34 B0000224 */  addiu      $v0, $zero, 0xB0
    /* E238 8001DA38 0000C2A0 */  sb         $v0, 0x0($a2)
  .L8001DA3C:
    /* E23C 8001DA3C 0000A284 */  lh         $v0, 0x0($a1)
    /* E240 8001DA40 00000000 */  nop
    /* E244 8001DA44 59FF4228 */  slti       $v0, $v0, -0xA7
    /* E248 8001DA48 04004010 */  beqz       $v0, .L8001DA5C
    /* E24C 8001DA4C 58FF0224 */   addiu     $v0, $zero, -0xA8
    /* E250 8001DA50 0000A2A4 */  sh         $v0, 0x0($a1)
    /* E254 8001DA54 A0000224 */  addiu      $v0, $zero, 0xA0
    /* E258 8001DA58 0000C2A0 */  sb         $v0, 0x0($a2)
  .L8001DA5C:
    /* E25C 8001DA5C 01005226 */  addiu      $s2, $s2, 0x1
    /* E260 8001DA60 2800A524 */  addiu      $a1, $a1, 0x28
    /* E264 8001DA64 0200422A */  slti       $v0, $s2, 0x2
    /* E268 8001DA68 C4FF4014 */  bnez       $v0, .L8001D97C
    /* E26C 8001DA6C 0C00C624 */   addiu     $a2, $a2, 0xC
    /* E270 8001DA70 256E000C */  jal        func_8001B894
    /* E274 8001DA74 00000000 */   nop
    /* E278 8001DA78 21204000 */  addu       $a0, $v0, $zero
    /* E27C 8001DA7C E4026292 */  lbu        $v0, (0x1F8002E4 & 0xFFFF)($s3)
    /* E280 8001DA80 01000324 */  addiu      $v1, $zero, 0x1
    /* E284 8001DA84 FF004230 */  andi       $v0, $v0, 0xFF
    /* E288 8001DA88 0C004310 */  beq        $v0, $v1, .L8001DABC
    /* E28C 8001DA8C 21288000 */   addu      $a1, $a0, $zero
    /* E290 8001DA90 E5026292 */  lbu        $v0, (0x1F8002E5 & 0xFFFF)($s3)
    /* E294 8001DA94 00000000 */  nop
    /* E298 8001DA98 06004014 */  bnez       $v0, .L8001DAB4
    /* E29C 8001DA9C 80FF8224 */   addiu     $v0, $a0, -0x80
    /* E2A0 8001DAA0 6A66A2A6 */  sh         $v0, 0x666A($s5)
    /* E2A4 8001DAA4 00FF8224 */  addiu      $v0, $a0, -0x100
    /* E2A8 8001DAA8 4266A5A6 */  sh         $a1, 0x6642($s5)
    /* E2AC 8001DAAC C4760008 */  j          .L8001DB10
    /* E2B0 8001DAB0 9266A2A6 */   sh        $v0, 0x6692($s5)
  .L8001DAB4:
    /* E2B4 8001DAB4 C4760008 */  j          .L8001DB10
    /* E2B8 8001DAB8 4266A5A6 */   sh        $a1, 0x6642($s5)
  .L8001DABC:
    /* E2BC 8001DABC 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* E2C0 8001DAC0 9002648E */  lw         $a0, (0x1F800290 & 0xFFFF)($s3)
    /* E2C4 8001DAC4 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* E2C8 8001DAC8 18008200 */  mult       $a0, $v0
    /* E2CC 8001DACC 9266A5A6 */  sh         $a1, 0x6692($s5)
    /* E2D0 8001DAD0 C3170400 */  sra        $v0, $a0, 31
    /* E2D4 8001DAD4 10400000 */  mfhi       $t0
    /* E2D8 8001DAD8 43180800 */  sra        $v1, $t0, 1
    /* E2DC 8001DADC 23186200 */  subu       $v1, $v1, $v0
    /* E2E0 8001DAE0 80100300 */  sll        $v0, $v1, 2
    /* E2E4 8001DAE4 21104300 */  addu       $v0, $v0, $v1
    /* E2E8 8001DAE8 23208200 */  subu       $a0, $a0, $v0
    /* E2EC 8001DAEC FAFF8424 */  addiu      $a0, $a0, -0x6
    /* E2F0 8001DAF0 C4760008 */  j          .L8001DB10
    /* E2F4 8001DAF4 4566A4A2 */   sb        $a0, 0x6645($s5)
  .L8001DAF8:
    /* E2F8 8001DAF8 03006410 */  beq        $v1, $a0, .L8001DB08
    /* E2FC 8001DAFC 00000000 */   nop
    /* E300 8001DB00 03006214 */  bne        $v1, $v0, .L8001DB10
    /* E304 8001DB04 00000000 */   nop
  .L8001DB08:
    /* E308 8001DB08 1D6B000C */  jal        func_8001AC74
    /* E30C 8001DB0C 00000000 */   nop
  .L8001DB10:
    /* E310 8001DB10 30036392 */  lbu        $v1, (0x1F800330 & 0xFFFF)($s3)
    /* E314 8001DB14 A402628E */  lw         $v0, (0x1F8002A4 & 0xFFFF)($s3)
    /* E318 8001DB18 FF006330 */  andi       $v1, $v1, 0xFF
    /* E31C 8001DB1C 0F80013C */  lui        $at, %hi(D_800EF8A8)
    /* E320 8001DB20 A8F822AC */  sw         $v0, %lo(D_800EF8A8)($at)
    /* E324 8001DB24 01000224 */  addiu      $v0, $zero, 0x1
    /* E328 8001DB28 03006214 */  bne        $v1, $v0, .L8001DB38
    /* E32C 8001DB2C 00000000 */   nop
    /* E330 8001DB30 D8BC010C */  jal        func_8006F360
    /* E334 8001DB34 00000000 */   nop
  .L8001DB38:
    /* E338 8001DB38 C45DA292 */  lbu        $v0, 0x5DC4($s5)
    /* E33C 8001DB3C 00000000 */  nop
    /* E340 8001DB40 07004010 */  beqz       $v0, .L8001DB60
    /* E344 8001DB44 C05DB126 */   addiu     $s1, $s5, 0x5DC0
    /* E348 8001DB48 CC5DA28E */  lw         $v0, 0x5DCC($s5)
    /* E34C 8001DB4C 00000000 */  nop
    /* E350 8001DB50 03004010 */  beqz       $v0, .L8001DB60
    /* E354 8001DB54 21202002 */   addu      $a0, $s1, $zero
    /* E358 8001DB58 0D67000C */  jal        func_80019C34
    /* E35C 8001DB5C E85DB126 */   addiu     $s1, $s5, 0x5DE8
  .L8001DB60:
    /* E360 8001DB60 EC016292 */  lbu        $v0, (0x1F8001EC & 0xFFFF)($s3)
    /* E364 8001DB64 00000000 */  nop
    /* E368 8001DB68 03004014 */  bnez       $v0, .L8001DB78
    /* E36C 8001DB6C 01001224 */   addiu     $s2, $zero, 0x1
    /* E370 8001DB70 2E6C000C */  jal        func_8001B0B8
    /* E374 8001DB74 00000000 */   nop
  .L8001DB78:
    /* E378 8001DB78 0C003026 */  addiu      $s0, $s1, 0xC
  .L8001DB7C:
    /* E37C 8001DB7C F8FF0292 */  lbu        $v0, -0x8($s0)
    /* E380 8001DB80 00000000 */  nop
    /* E384 8001DB84 07004010 */  beqz       $v0, .L8001DBA4
    /* E388 8001DB88 00000000 */   nop
    /* E38C 8001DB8C 0000028E */  lw         $v0, 0x0($s0)
    /* E390 8001DB90 00000000 */  nop
    /* E394 8001DB94 03004010 */  beqz       $v0, .L8001DBA4
    /* E398 8001DB98 00000000 */   nop
    /* E39C 8001DB9C 0D67000C */  jal        func_80019C34
    /* E3A0 8001DBA0 21202002 */   addu      $a0, $s1, $zero
  .L8001DBA4:
    /* E3A4 8001DBA4 01005226 */  addiu      $s2, $s2, 0x1
    /* E3A8 8001DBA8 28001026 */  addiu      $s0, $s0, 0x28
    /* E3AC 8001DBAC 3A00422A */  slti       $v0, $s2, 0x3A
    /* E3B0 8001DBB0 F2FF4014 */  bnez       $v0, .L8001DB7C
    /* E3B4 8001DBB4 28003126 */   addiu     $s1, $s1, 0x28
    /* E3B8 8001DBB8 3000BF8F */  lw         $ra, 0x30($sp)
    /* E3BC 8001DBBC 2C00B78F */  lw         $s7, 0x2C($sp)
    /* E3C0 8001DBC0 2800B68F */  lw         $s6, 0x28($sp)
    /* E3C4 8001DBC4 2400B58F */  lw         $s5, 0x24($sp)
    /* E3C8 8001DBC8 2000B48F */  lw         $s4, 0x20($sp)
    /* E3CC 8001DBCC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* E3D0 8001DBD0 1800B28F */  lw         $s2, 0x18($sp)
    /* E3D4 8001DBD4 1400B18F */  lw         $s1, 0x14($sp)
    /* E3D8 8001DBD8 1000B08F */  lw         $s0, 0x10($sp)
    /* E3DC 8001DBDC 3800BD27 */  addiu      $sp, $sp, 0x38
    /* E3E0 8001DBE0 0800E003 */  jr         $ra
    /* E3E4 8001DBE4 00000000 */   nop
endlabel func_8001D6A8
