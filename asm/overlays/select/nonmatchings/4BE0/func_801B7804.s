nonmatching func_801B7804, 0x2FC

glabel func_801B7804
    /* 2E88C 801B7804 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2E890 801B7808 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2E894 801B780C 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 2E898 801B7810 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 2E89C 801B7814 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E8A0 801B7818 801F103C */  lui        $s0, (0x1F800000 >> 16)
    /* 2E8A4 801B781C 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 2E8A8 801B7820 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 2E8AC 801B7824 04000224 */  addiu      $v0, $zero, 0x4
    /* 2E8B0 801B7828 0E006214 */  bne        $v1, $v0, .L801B7864
    /* 2E8B4 801B782C 1800BFAF */   sw        $ra, 0x18($sp)
    /* 2E8B8 801B7830 1E80033C */  lui        $v1, %hi(D_801DA2F0)
    /* 2E8BC 801B7834 F0A26390 */  lbu        $v1, %lo(D_801DA2F0)($v1)
    /* 2E8C0 801B7838 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E8C4 801B783C 09006214 */  bne        $v1, $v0, .L801B7864
    /* 2E8C8 801B7840 00000000 */   nop
    /* 2E8CC 801B7844 0174000C */  jal        func_8001D004
    /* 2E8D0 801B7848 AC300424 */   addiu     $a0, $zero, 0x30AC
    /* 2E8D4 801B784C 36000324 */  addiu      $v1, $zero, 0x36
    /* 2E8D8 801B7850 0A0043A0 */  sb         $v1, 0xA($v0)
    /* 2E8DC 801B7854 3FBF010C */  jal        func_8006FCFC
    /* 2E8E0 801B7858 36000424 */   addiu     $a0, $zero, 0x36
    /* 2E8E4 801B785C 1DDE0608 */  j          .L801B7874
    /* 2E8E8 801B7860 00000000 */   nop
  .L801B7864:
    /* 2E8EC 801B7864 0174000C */  jal        func_8001D004
    /* 2E8F0 801B7868 AC300424 */   addiu     $a0, $zero, 0x30AC
    /* 2E8F4 801B786C 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 2E8F8 801B7870 0A0043A0 */  sb         $v1, 0xA($v0)
  .L801B7874:
    /* 2E8FC 801B7874 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E900 801B7878 21082102 */  addu       $at, $s1, $at
    /* 2E904 801B787C D8AB2390 */  lbu        $v1, -0x5428($at)
    /* 2E908 801B7880 00000000 */  nop
    /* 2E90C 801B7884 1500622C */  sltiu      $v0, $v1, 0x15
    /* 2E910 801B7888 96004010 */  beqz       $v0, .L801B7AE4
    /* 2E914 801B788C 80100300 */   sll       $v0, $v1, 2
    /* 2E918 801B7890 1980013C */  lui        $at, %hi(jtbl_8018B21C)
    /* 2E91C 801B7894 21082200 */  addu       $at, $at, $v0
    /* 2E920 801B7898 1CB2228C */  lw         $v0, %lo(jtbl_8018B21C)($at)
    /* 2E924 801B789C 00000000 */  nop
    /* 2E928 801B78A0 08004000 */  jr         $v0
    /* 2E92C 801B78A4 00000000 */   nop
  jlabel .L801B78A8
    /* 2E930 801B78A8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E934 801B78AC 21082102 */  addu       $at, $s1, $at
    /* 2E938 801B78B0 D8AB2390 */  lbu        $v1, -0x5428($at)
    /* 2E93C 801B78B4 04000224 */  addiu      $v0, $zero, 0x4
    /* 2E940 801B78B8 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 2E944 801B78BC 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 2E948 801B78C0 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 2E94C 801B78C4 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 2E950 801B78C8 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 2E954 801B78CC 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 2E958 801B78D0 01006324 */  addiu      $v1, $v1, 0x1
    /* 2E95C 801B78D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E960 801B78D8 21082102 */  addu       $at, $s1, $at
    /* 2E964 801B78DC D8AB23A0 */  sb         $v1, -0x5428($at)
    /* 2E968 801B78E0 BADE0608 */  j          .L801B7AE8
    /* 2E96C 801B78E4 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B78E8
    /* 2E970 801B78E8 4E39060C */  jal        func_8018E538
    /* 2E974 801B78EC 21200000 */   addu      $a0, $zero, $zero
    /* 2E978 801B78F0 05000224 */  addiu      $v0, $zero, 0x5
    /* 2E97C 801B78F4 C0DE060C */  jal        func_801B7B00
    /* 2E980 801B78F8 A20202A2 */   sb        $v0, 0x2A2($s0)
    /* 2E984 801B78FC 1E80043C */  lui        $a0, %hi(D_801DA5D2)
    /* 2E988 801B7900 D2A58490 */  lbu        $a0, %lo(D_801DA5D2)($a0)
    /* 2E98C 801B7904 51DF060C */  jal        func_801B7D44
    /* 2E990 801B7908 00000000 */   nop
    /* 2E994 801B790C 0AE0060C */  jal        func_801B8028
    /* 2E998 801B7910 00000000 */   nop
    /* 2E99C 801B7914 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E9A0 801B7918 21082102 */  addu       $at, $s1, $at
    /* 2E9A4 801B791C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 2E9A8 801B7920 00000000 */  nop
    /* 2E9AC 801B7924 01004224 */  addiu      $v0, $v0, 0x1
    /* 2E9B0 801B7928 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E9B4 801B792C 21082102 */  addu       $at, $s1, $at
    /* 2E9B8 801B7930 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 2E9BC 801B7934 BADE0608 */  j          .L801B7AE8
    /* 2E9C0 801B7938 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B793C
    /* 2E9C4 801B793C 1FBC010C */  jal        func_8006F07C
    /* 2E9C8 801B7940 10000424 */   addiu     $a0, $zero, 0x10
    /* 2E9CC 801B7944 67004010 */  beqz       $v0, .L801B7AE4
    /* 2E9D0 801B7948 01000224 */   addiu     $v0, $zero, 0x1
    /* 2E9D4 801B794C 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 2E9D8 801B7950 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 2E9DC 801B7954 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2E9E0 801B7958 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 2E9E4 801B795C 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 2E9E8 801B7960 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E9EC 801B7964 21082102 */  addu       $at, $s1, $at
    /* 2E9F0 801B7968 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 2E9F4 801B796C BADE0608 */  j          .L801B7AE8
    /* 2E9F8 801B7970 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B7974
    /* 2E9FC 801B7974 9002028E */  lw         $v0, 0x290($s0)
    /* 2EA00 801B7978 21200000 */  addu       $a0, $zero, $zero
    /* 2EA04 801B797C 42110200 */  srl        $v0, $v0, 5
    /* 2EA08 801B7980 01004230 */  andi       $v0, $v0, 0x1
    /* 2EA0C 801B7984 20BB010C */  jal        func_8006EC80
    /* 2EA10 801B7988 7C5F22A2 */   sb        $v0, 0x5F7C($s1)
    /* 2EA14 801B798C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 2EA18 801B7990 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 2EA1C 801B7994 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 2EA20 801B7998 00100324 */  addiu      $v1, $zero, 0x1000
    /* 2EA24 801B799C 11004314 */  bne        $v0, $v1, .L801B79E4
    /* 2EA28 801B79A0 00000000 */   nop
    /* 2EA2C 801B79A4 1E80103C */  lui        $s0, %hi(D_801DA5D2)
    /* 2EA30 801B79A8 D2A51026 */  addiu      $s0, $s0, %lo(D_801DA5D2)
    /* 2EA34 801B79AC 00000286 */  lh         $v0, 0x0($s0)
    /* 2EA38 801B79B0 00000000 */  nop
    /* 2EA3C 801B79B4 0B004010 */  beqz       $v0, .L801B79E4
    /* 2EA40 801B79B8 00000000 */   nop
    /* 2EA44 801B79BC 88AD020C */  jal        func_800AB620
    /* 2EA48 801B79C0 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 2EA4C 801B79C4 00000296 */  lhu        $v0, 0x0($s0)
    /* 2EA50 801B79C8 00000000 */  nop
    /* 2EA54 801B79CC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2EA58 801B79D0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2EA5C 801B79D4 51DF060C */  jal        func_801B7D44
    /* 2EA60 801B79D8 000002A6 */   sh        $v0, 0x0($s0)
    /* 2EA64 801B79DC 0AE0060C */  jal        func_801B8028
    /* 2EA68 801B79E0 00000000 */   nop
  .L801B79E4:
    /* 2EA6C 801B79E4 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 2EA70 801B79E8 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 2EA74 801B79EC 00400224 */  addiu      $v0, $zero, 0x4000
    /* 2EA78 801B79F0 18006214 */  bne        $v1, $v0, .L801B7A54
    /* 2EA7C 801B79F4 40000224 */   addiu     $v0, $zero, 0x40
    /* 2EA80 801B79F8 1E80103C */  lui        $s0, %hi(D_801DA5D2)
    /* 2EA84 801B79FC D2A51026 */  addiu      $s0, $s0, %lo(D_801DA5D2)
    /* 2EA88 801B7A00 18000224 */  addiu      $v0, $zero, 0x18
    /* 2EA8C 801B7A04 1E80043C */  lui        $a0, %hi(D_801DA5D6)
    /* 2EA90 801B7A08 D6A58484 */  lh         $a0, %lo(D_801DA5D6)($a0)
    /* 2EA94 801B7A0C 00000386 */  lh         $v1, 0x0($s0)
    /* 2EA98 801B7A10 23104400 */  subu       $v0, $v0, $a0
    /* 2EA9C 801B7A14 2A186200 */  slt        $v1, $v1, $v0
    /* 2EAA0 801B7A18 0B006010 */  beqz       $v1, .L801B7A48
    /* 2EAA4 801B7A1C 00000000 */   nop
    /* 2EAA8 801B7A20 88AD020C */  jal        func_800AB620
    /* 2EAAC 801B7A24 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 2EAB0 801B7A28 00000296 */  lhu        $v0, 0x0($s0)
    /* 2EAB4 801B7A2C 00000000 */  nop
    /* 2EAB8 801B7A30 01004224 */  addiu      $v0, $v0, 0x1
    /* 2EABC 801B7A34 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2EAC0 801B7A38 51DF060C */  jal        func_801B7D44
    /* 2EAC4 801B7A3C 000002A6 */   sh        $v0, 0x0($s0)
    /* 2EAC8 801B7A40 0AE0060C */  jal        func_801B8028
    /* 2EACC 801B7A44 00000000 */   nop
  .L801B7A48:
    /* 2EAD0 801B7A48 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 2EAD4 801B7A4C A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 2EAD8 801B7A50 40000224 */  addiu      $v0, $zero, 0x40
  .L801B7A54:
    /* 2EADC 801B7A54 0A006214 */  bne        $v1, $v0, .L801B7A80
    /* 2EAE0 801B7A58 00000000 */   nop
    /* 2EAE4 801B7A5C 88AD020C */  jal        func_800AB620
    /* 2EAE8 801B7A60 29050424 */   addiu     $a0, $zero, 0x529
    /* 2EAEC 801B7A64 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EAF0 801B7A68 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 2EAF4 801B7A6C 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 2EAF8 801B7A70 14000224 */  addiu      $v0, $zero, 0x14
    /* 2EAFC 801B7A74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EB00 801B7A78 21082102 */  addu       $at, $s1, $at
    /* 2EB04 801B7A7C D8AB22A0 */  sb         $v0, -0x5428($at)
  .L801B7A80:
    /* 2EB08 801B7A80 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 2EB0C 801B7A84 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 2EB10 801B7A88 20000224 */  addiu      $v0, $zero, 0x20
    /* 2EB14 801B7A8C 16006214 */  bne        $v1, $v0, .L801B7AE8
    /* 2EB18 801B7A90 21100000 */   addu      $v0, $zero, $zero
    /* 2EB1C 801B7A94 88AD020C */  jal        func_800AB620
    /* 2EB20 801B7A98 28050424 */   addiu     $a0, $zero, 0x528
    /* 2EB24 801B7A9C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2EB28 801B7AA0 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 2EB2C 801B7AA4 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 2EB30 801B7AA8 14000224 */  addiu      $v0, $zero, 0x14
    /* 2EB34 801B7AAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EB38 801B7AB0 21082102 */  addu       $at, $s1, $at
    /* 2EB3C 801B7AB4 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 2EB40 801B7AB8 BADE0608 */  j          .L801B7AE8
    /* 2EB44 801B7ABC 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B7AC0
    /* 2EB48 801B7AC0 40000424 */  addiu      $a0, $zero, 0x40
    /* 2EB4C 801B7AC4 37BC010C */  jal        func_8006F0DC
    /* 2EB50 801B7AC8 21280000 */   addu      $a1, $zero, $zero
    /* 2EB54 801B7ACC 06004010 */  beqz       $v0, .L801B7AE8
    /* 2EB58 801B7AD0 21100000 */   addu      $v0, $zero, $zero
    /* 2EB5C 801B7AD4 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 2EB60 801B7AD8 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 2EB64 801B7ADC BADE0608 */  j          .L801B7AE8
    /* 2EB68 801B7AE0 00000000 */   nop
  jlabel .L801B7AE4
    /* 2EB6C 801B7AE4 21100000 */  addu       $v0, $zero, $zero
  .L801B7AE8:
    /* 2EB70 801B7AE8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2EB74 801B7AEC 1400B18F */  lw         $s1, 0x14($sp)
    /* 2EB78 801B7AF0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EB7C 801B7AF4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2EB80 801B7AF8 0800E003 */  jr         $ra
    /* 2EB84 801B7AFC 00000000 */   nop
endlabel func_801B7804
