nonmatching func_801B190C, 0x200

glabel func_801B190C
    /* 28994 801B190C 1180033C */  lui        $v1, %hi(D_8010A320)
    /* 28998 801B1910 20A36390 */  lbu        $v1, %lo(D_8010A320)($v1)
    /* 2899C 801B1914 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 289A0 801B1918 1400B1AF */  sw         $s1, 0x14($sp)
    /* 289A4 801B191C 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 289A8 801B1920 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 289AC 801B1924 1800BFAF */  sw         $ra, 0x18($sp)
    /* 289B0 801B1928 1F00622C */  sltiu      $v0, $v1, 0x1F
    /* 289B4 801B192C 70004010 */  beqz       $v0, .L801B1AF0
    /* 289B8 801B1930 1000B0AF */   sw        $s0, 0x10($sp)
    /* 289BC 801B1934 80100300 */  sll        $v0, $v1, 2
    /* 289C0 801B1938 1980013C */  lui        $at, %hi(jtbl_8018A8CC)
    /* 289C4 801B193C 21082200 */  addu       $at, $at, $v0
    /* 289C8 801B1940 CCA8228C */  lw         $v0, %lo(jtbl_8018A8CC)($at)
    /* 289CC 801B1944 00000000 */  nop
    /* 289D0 801B1948 08004000 */  jr         $v0
    /* 289D4 801B194C 00000000 */   nop
  jlabel .L801B1950
    /* 289D8 801B1950 5F000224 */  addiu      $v0, $zero, 0x5F
    /* 289DC 801B1954 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 289E0 801B1958 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 289E4 801B195C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 289E8 801B1960 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 289EC 801B1964 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 289F0 801B1968 60000224 */  addiu      $v0, $zero, 0x60
    /* 289F4 801B196C 1E80013C */  lui        $at, %hi(D_801D8A8D)
    /* 289F8 801B1970 8D8A22A0 */  sb         $v0, %lo(D_801D8A8D)($at)
    /* 289FC 801B1974 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* 28A00 801B1978 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* 28A04 801B197C 04001024 */  addiu      $s0, $zero, 0x4
    /* 28A08 801B1980 1E80013C */  lui        $at, %hi(D_801D8A82)
    /* 28A0C 801B1984 828A20A4 */  sh         $zero, %lo(D_801D8A82)($at)
    /* 28A10 801B1988 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 28A14 801B198C 848A20A4 */  sh         $zero, %lo(D_801D8A84)($at)
    /* 28A18 801B1990 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 28A1C 801B1994 868A20A4 */  sh         $zero, %lo(D_801D8A86)($at)
    /* 28A20 801B1998 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 28A24 801B199C 888A20A4 */  sh         $zero, %lo(D_801D8A88)($at)
    /* 28A28 801B19A0 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 28A2C 801B19A4 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 28A30 801B19A8 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 28A34 801B19AC 8C8A20A0 */  sb         $zero, %lo(D_801D8A8C)($at)
    /* 28A38 801B19B0 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 28A3C 801B19B4 84AD30A0 */  sb         $s0, %lo(D_801DAD84)($at)
    /* 28A40 801B19B8 1E80013C */  lui        $at, %hi(D_801D8A51)
    /* 28A44 801B19BC 518A20A0 */  sb         $zero, %lo(D_801D8A51)($at)
    /* 28A48 801B19C0 61004230 */  andi       $v0, $v0, 0x61
    /* 28A4C 801B19C4 21004234 */  ori        $v0, $v0, 0x21
    /* 28A50 801B19C8 1E80013C */  lui        $at, %hi(D_801D8A8E)
    /* 28A54 801B19CC 8E8A22A0 */  sb         $v0, %lo(D_801D8A8E)($at)
    /* 28A58 801B19D0 4E39060C */  jal        func_8018E538
    /* 28A5C 801B19D4 21200000 */   addu      $a0, $zero, $zero
    /* 28A60 801B19D8 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 28A64 801B19DC A20230A0 */  sb         $s0, (0x1F8002A2 & 0xFFFF)($at)
    /* 28A68 801B19E0 3FCC060C */  jal        func_801B30FC
    /* 28A6C 801B19E4 00000000 */   nop
    /* 28A70 801B19E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28A74 801B19EC 21082102 */  addu       $at, $s1, $at
    /* 28A78 801B19F0 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 28A7C 801B19F4 00000000 */  nop
    /* 28A80 801B19F8 01004224 */  addiu      $v0, $v0, 0x1
    /* 28A84 801B19FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28A88 801B1A00 21082102 */  addu       $at, $s1, $at
    /* 28A8C 801B1A04 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 28A90 801B1A08 BDC60608 */  j          .L801B1AF4
    /* 28A94 801B1A0C 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B1A10
    /* 28A98 801B1A10 1E80053C */  lui        $a1, %hi(D_801DA5D2)
    /* 28A9C 801B1A14 D2A5A584 */  lh         $a1, %lo(D_801DA5D2)($a1)
    /* 28AA0 801B1A18 38CE060C */  jal        func_801B38E0
    /* 28AA4 801B1A1C 02000424 */   addiu     $a0, $zero, 0x2
    /* 28AA8 801B1A20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28AAC 801B1A24 21082102 */  addu       $at, $s1, $at
    /* 28AB0 801B1A28 D8AB2390 */  lbu        $v1, -0x5428($at)
    /* 28AB4 801B1A2C 1E80013C */  lui        $at, %hi(D_801D8735)
    /* 28AB8 801B1A30 358722A0 */  sb         $v0, %lo(D_801D8735)($at)
    /* 28ABC 801B1A34 01006324 */  addiu      $v1, $v1, 0x1
    /* 28AC0 801B1A38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28AC4 801B1A3C 21082102 */  addu       $at, $s1, $at
    /* 28AC8 801B1A40 D8AB23A0 */  sb         $v1, -0x5428($at)
    /* 28ACC 801B1A44 BDC60608 */  j          .L801B1AF4
    /* 28AD0 801B1A48 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B1A4C
    /* 28AD4 801B1A4C 1FBC010C */  jal        func_8006F07C
    /* 28AD8 801B1A50 10000424 */   addiu     $a0, $zero, 0x10
    /* 28ADC 801B1A54 26004010 */  beqz       $v0, .L801B1AF0
    /* 28AE0 801B1A58 01000224 */   addiu     $v0, $zero, 0x1
    /* 28AE4 801B1A5C 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 28AE8 801B1A60 8F8A22A0 */  sb         $v0, %lo(D_801D8A8F)($at)
    /* 28AEC 801B1A64 14000224 */  addiu      $v0, $zero, 0x14
    /* 28AF0 801B1A68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28AF4 801B1A6C 21082102 */  addu       $at, $s1, $at
    /* 28AF8 801B1A70 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 28AFC 801B1A74 BDC60608 */  j          .L801B1AF4
    /* 28B00 801B1A78 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B1A7C
    /* 28B04 801B1A7C 1E80053C */  lui        $a1, %hi(D_801DA5D2)
    /* 28B08 801B1A80 D2A5A584 */  lh         $a1, %lo(D_801DA5D2)($a1)
    /* 28B0C 801B1A84 38CE060C */  jal        func_801B38E0
    /* 28B10 801B1A88 02000424 */   addiu     $a0, $zero, 0x2
    /* 28B14 801B1A8C 2DC1060C */  jal        func_801B04B4
    /* 28B18 801B1A90 21200000 */   addu      $a0, $zero, $zero
    /* 28B1C 801B1A94 21200000 */  addu       $a0, $zero, $zero
    /* 28B20 801B1A98 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 28B24 801B1A9C A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 28B28 801B1AA0 73CA060C */  jal        func_801B29CC
    /* 28B2C 801B1AA4 01000524 */   addiu     $a1, $zero, 0x1
    /* 28B30 801B1AA8 02000324 */  addiu      $v1, $zero, 0x2
    /* 28B34 801B1AAC 11004314 */  bne        $v0, $v1, .L801B1AF4
    /* 28B38 801B1AB0 21100000 */   addu      $v0, $zero, $zero
    /* 28B3C 801B1AB4 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 28B40 801B1AB8 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 28B44 801B1ABC F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 28B48 801B1AC0 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 28B4C 801B1AC4 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 28B50 801B1AC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28B54 801B1ACC 21082102 */  addu       $at, $s1, $at
    /* 28B58 801B1AD0 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 28B5C 801B1AD4 BDC60608 */  j          .L801B1AF4
    /* 28B60 801B1AD8 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B1ADC
    /* 28B64 801B1ADC 40000424 */  addiu      $a0, $zero, 0x40
    /* 28B68 801B1AE0 37BC010C */  jal        func_8006F0DC
    /* 28B6C 801B1AE4 21280000 */   addu      $a1, $zero, $zero
    /* 28B70 801B1AE8 02004014 */  bnez       $v0, .L801B1AF4
    /* 28B74 801B1AEC 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L801B1AF0
    /* 28B78 801B1AF0 21100000 */  addu       $v0, $zero, $zero
  .L801B1AF4:
    /* 28B7C 801B1AF4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 28B80 801B1AF8 1400B18F */  lw         $s1, 0x14($sp)
    /* 28B84 801B1AFC 1000B08F */  lw         $s0, 0x10($sp)
    /* 28B88 801B1B00 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 28B8C 801B1B04 0800E003 */  jr         $ra
    /* 28B90 801B1B08 00000000 */   nop
endlabel func_801B190C
