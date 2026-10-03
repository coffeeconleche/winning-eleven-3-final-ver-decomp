nonmatching func_8009B888, 0x1CC

glabel func_8009B888
    /* 8C088 8009B888 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8C08C 8009B88C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 8C090 8009B890 801F173C */  lui        $s7, (0x1F800190 >> 16)
    /* 8C094 8009B894 2800B6AF */  sw         $s6, 0x28($sp)
    /* 8C098 8009B898 21B00000 */  addu       $s6, $zero, $zero
    /* 8C09C 8009B89C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 8C0A0 8009B8A0 80001524 */  addiu      $s5, $zero, 0x80
    /* 8C0A4 8009B8A4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 8C0A8 8009B8A8 21A00000 */  addu       $s4, $zero, $zero
    /* 8C0AC 8009B8AC 3000BFAF */  sw         $ra, 0x30($sp)
    /* 8C0B0 8009B8B0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8C0B4 8009B8B4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8C0B8 8009B8B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C0BC 8009B8BC 1000B0AF */  sw         $s0, 0x10($sp)
  .L8009B8C0:
    /* 8C0C0 8009B8C0 21900000 */  addu       $s2, $zero, $zero
    /* 8C0C4 8009B8C4 B0311324 */  addiu      $s3, $zero, 0x31B0
  .L8009B8C8:
    /* 8C0C8 8009B8C8 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* 8C0CC 8009B8CC 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 8C0D0 8009B8D0 18004202 */  mult       $s2, $v0
    /* 8C0D4 8009B8D4 9001F08E */  lw         $s0, (0x1F800190 & 0xFFFF)($s7)
    /* 8C0D8 8009B8D8 C3171200 */  sra        $v0, $s2, 31
    /* 8C0DC 8009B8DC 21801402 */  addu       $s0, $s0, $s4
    /* 8C0E0 8009B8E0 21801302 */  addu       $s0, $s0, $s3
    /* 8C0E4 8009B8E4 21200002 */  addu       $a0, $s0, $zero
    /* 8C0E8 8009B8E8 10400000 */  mfhi       $t0
    /* 8C0EC 8009B8EC 43180800 */  sra        $v1, $t0, 1
    /* 8C0F0 8009B8F0 23886200 */  subu       $s1, $v1, $v0
    /* 8C0F4 8009B8F4 80101100 */  sll        $v0, $s1, 2
    /* 8C0F8 8009B8F8 21105100 */  addu       $v0, $v0, $s1
    /* 8C0FC 8009B8FC 5BB7020C */  jal        func_800ADD6C
    /* 8C100 8009B900 23884202 */   subu      $s1, $s2, $v0
    /* 8C104 8009B904 21200002 */  addu       $a0, $s0, $zero
    /* 8C108 8009B908 2EB7020C */  jal        func_800ADCB8
    /* 8C10C 8009B90C 21280000 */   addu      $a1, $zero, $zero
    /* 8C110 8009B910 21200000 */  addu       $a0, $zero, $zero
    /* 8C114 8009B914 21280000 */  addu       $a1, $zero, $zero
    /* 8C118 8009B918 80020624 */  addiu      $a2, $zero, 0x280
    /* 8C11C 8009B91C B6B6020C */  jal        func_800ADAD8
    /* 8C120 8009B920 21380000 */   addu      $a3, $zero, $zero
    /* 8C124 8009B924 A0000424 */  addiu      $a0, $zero, 0xA0
    /* 8C128 8009B928 F8010524 */  addiu      $a1, $zero, 0x1F8
    /* 8C12C 8009B92C C5B6020C */  jal        func_800ADB14
    /* 8C130 8009B930 160002A6 */   sh        $v0, 0x16($s0)
    /* 8C134 8009B934 C0181100 */  sll        $v1, $s1, 3
    /* 8C138 8009B938 0E0002A6 */  sh         $v0, 0xE($s0)
    /* 8C13C 8009B93C 0D80013C */  lui        $at, %hi(D_800CB2A4)
    /* 8C140 8009B940 21082300 */  addu       $at, $at, $v1
    /* 8C144 8009B944 A4B22290 */  lbu        $v0, %lo(D_800CB2A4)($at)
    /* 8C148 8009B948 00000000 */  nop
    /* 8C14C 8009B94C 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C150 8009B950 0C0002A2 */  sb         $v0, 0xC($s0)
    /* 8C154 8009B954 0D80013C */  lui        $at, %hi(D_800CB2A5)
    /* 8C158 8009B958 21082300 */  addu       $at, $at, $v1
    /* 8C15C 8009B95C A5B22290 */  lbu        $v0, %lo(D_800CB2A5)($at)
    /* 8C160 8009B960 00000000 */  nop
    /* 8C164 8009B964 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C168 8009B968 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 8C16C 8009B96C 0D80013C */  lui        $at, %hi(D_800CB2A6)
    /* 8C170 8009B970 21082300 */  addu       $at, $at, $v1
    /* 8C174 8009B974 A6B22290 */  lbu        $v0, %lo(D_800CB2A6)($at)
    /* 8C178 8009B978 00000000 */  nop
    /* 8C17C 8009B97C 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C180 8009B980 140002A2 */  sb         $v0, 0x14($s0)
    /* 8C184 8009B984 0D80013C */  lui        $at, %hi(D_800CB2A7)
    /* 8C188 8009B988 21082300 */  addu       $at, $at, $v1
    /* 8C18C 8009B98C A7B22290 */  lbu        $v0, %lo(D_800CB2A7)($at)
    /* 8C190 8009B990 00000000 */  nop
    /* 8C194 8009B994 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C198 8009B998 150002A2 */  sb         $v0, 0x15($s0)
    /* 8C19C 8009B99C 0D80013C */  lui        $at, %hi(D_800CB2A8)
    /* 8C1A0 8009B9A0 21082300 */  addu       $at, $at, $v1
    /* 8C1A4 8009B9A4 A8B22290 */  lbu        $v0, %lo(D_800CB2A8)($at)
    /* 8C1A8 8009B9A8 00000000 */  nop
    /* 8C1AC 8009B9AC 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C1B0 8009B9B0 1C0002A2 */  sb         $v0, 0x1C($s0)
    /* 8C1B4 8009B9B4 0D80013C */  lui        $at, %hi(D_800CB2A9)
    /* 8C1B8 8009B9B8 21082300 */  addu       $at, $at, $v1
    /* 8C1BC 8009B9BC A9B22290 */  lbu        $v0, %lo(D_800CB2A9)($at)
    /* 8C1C0 8009B9C0 00000000 */  nop
    /* 8C1C4 8009B9C4 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C1C8 8009B9C8 1D0002A2 */  sb         $v0, 0x1D($s0)
    /* 8C1CC 8009B9CC 0D80013C */  lui        $at, %hi(D_800CB2AA)
    /* 8C1D0 8009B9D0 21082300 */  addu       $at, $at, $v1
    /* 8C1D4 8009B9D4 AAB22290 */  lbu        $v0, %lo(D_800CB2AA)($at)
    /* 8C1D8 8009B9D8 00000000 */  nop
    /* 8C1DC 8009B9DC 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C1E0 8009B9E0 240002A2 */  sb         $v0, 0x24($s0)
    /* 8C1E4 8009B9E4 0D80013C */  lui        $at, %hi(D_800CB2AB)
    /* 8C1E8 8009B9E8 21082300 */  addu       $at, $at, $v1
    /* 8C1EC 8009B9EC ABB22290 */  lbu        $v0, %lo(D_800CB2AB)($at)
    /* 8C1F0 8009B9F0 01005226 */  addiu      $s2, $s2, 0x1
    /* 8C1F4 8009B9F4 040015A2 */  sb         $s5, 0x4($s0)
    /* 8C1F8 8009B9F8 050015A2 */  sb         $s5, 0x5($s0)
    /* 8C1FC 8009B9FC 060015A2 */  sb         $s5, 0x6($s0)
    /* 8C200 8009BA00 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C204 8009BA04 250002A2 */  sb         $v0, 0x25($s0)
    /* 8C208 8009BA08 1E00422A */  slti       $v0, $s2, 0x1E
    /* 8C20C 8009BA0C AEFF4014 */  bnez       $v0, .L8009B8C8
    /* 8C210 8009BA10 28007326 */   addiu     $s3, $s3, 0x28
    /* 8C214 8009BA14 0100D626 */  addiu      $s6, $s6, 0x1
    /* 8C218 8009BA18 0200C22A */  slti       $v0, $s6, 0x2
    /* 8C21C 8009BA1C A8FF4014 */  bnez       $v0, .L8009B8C0
    /* 8C220 8009BA20 C03A9426 */   addiu     $s4, $s4, 0x3AC0
    /* 8C224 8009BA24 3000BF8F */  lw         $ra, 0x30($sp)
    /* 8C228 8009BA28 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 8C22C 8009BA2C 2800B68F */  lw         $s6, 0x28($sp)
    /* 8C230 8009BA30 2400B58F */  lw         $s5, 0x24($sp)
    /* 8C234 8009BA34 2000B48F */  lw         $s4, 0x20($sp)
    /* 8C238 8009BA38 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8C23C 8009BA3C 1800B28F */  lw         $s2, 0x18($sp)
    /* 8C240 8009BA40 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C244 8009BA44 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C248 8009BA48 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 8C24C 8009BA4C 0800E003 */  jr         $ra
    /* 8C250 8009BA50 00000000 */   nop
endlabel func_8009B888
