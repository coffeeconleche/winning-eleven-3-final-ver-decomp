nonmatching func_80099F20, 0x358

glabel func_80099F20
    /* 8A720 80099F20 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 8A724 80099F24 4400B1AF */  sw         $s1, 0x44($sp)
    /* 8A728 80099F28 05001124 */  addiu      $s1, $zero, 0x5
    /* 8A72C 80099F2C 0D80023C */  lui        $v0, %hi(D_800CAA75)
    /* 8A730 80099F30 75AA4224 */  addiu      $v0, $v0, %lo(D_800CAA75)
    /* 8A734 80099F34 6400BFAF */  sw         $ra, 0x64($sp)
    /* 8A738 80099F38 6000BEAF */  sw         $fp, 0x60($sp)
    /* 8A73C 80099F3C 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* 8A740 80099F40 5800B6AF */  sw         $s6, 0x58($sp)
    /* 8A744 80099F44 5400B5AF */  sw         $s5, 0x54($sp)
    /* 8A748 80099F48 5000B4AF */  sw         $s4, 0x50($sp)
    /* 8A74C 80099F4C 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 8A750 80099F50 4800B2AF */  sw         $s2, 0x48($sp)
    /* 8A754 80099F54 4000B0AF */  sw         $s0, 0x40($sp)
    /* 8A758 80099F58 1000A4A3 */  sb         $a0, 0x10($sp)
  .L80099F5C:
    /* 8A75C 80099F5C 000040A0 */  sb         $zero, 0x0($v0)
    /* 8A760 80099F60 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 8A764 80099F64 FDFF2106 */  bgez       $s1, .L80099F5C
    /* 8A768 80099F68 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8A76C 80099F6C 801F023C */  lui        $v0, (0x1F8002E3 >> 16)
    /* 8A770 80099F70 E3024290 */  lbu        $v0, (0x1F8002E3 & 0xFFFF)($v0)
    /* 8A774 80099F74 03000324 */  addiu      $v1, $zero, 0x3
    /* 8A778 80099F78 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8A77C 80099F7C 11004314 */  bne        $v0, $v1, .L80099FC4
    /* 8A780 80099F80 983A0224 */   addiu     $v0, $zero, 0x3A98
    /* 8A784 80099F84 0D80043C */  lui        $a0, %hi(D_800CA96C)
    /* 8A788 80099F88 6CA98424 */  addiu      $a0, $a0, %lo(D_800CA96C)
    /* 8A78C 80099F8C 00008384 */  lh         $v1, 0x0($a0)
    /* 8A790 80099F90 00000000 */  nop
    /* 8A794 80099F94 1A006214 */  bne        $v1, $v0, .L8009A000
    /* 8A798 80099F98 21880000 */   addu      $s1, $zero, $zero
    /* 8A79C 80099F9C 21188000 */  addu       $v1, $a0, $zero
  .L80099FA0:
    /* 8A7A0 80099FA0 00006294 */  lhu        $v0, 0x0($v1)
    /* 8A7A4 80099FA4 01003126 */  addiu      $s1, $s1, 0x1
    /* 8A7A8 80099FA8 80004224 */  addiu      $v0, $v0, 0x80
    /* 8A7AC 80099FAC 000062A4 */  sh         $v0, 0x0($v1)
    /* 8A7B0 80099FB0 2100222A */  slti       $v0, $s1, 0x21
    /* 8A7B4 80099FB4 FAFF4014 */  bnez       $v0, .L80099FA0
    /* 8A7B8 80099FB8 08006324 */   addiu     $v1, $v1, 0x8
    /* 8A7BC 80099FBC 00680208 */  j          .L8009A000
    /* 8A7C0 80099FC0 21880000 */   addu      $s1, $zero, $zero
  .L80099FC4:
    /* 8A7C4 80099FC4 0D80043C */  lui        $a0, %hi(D_800CA96C)
    /* 8A7C8 80099FC8 6CA98424 */  addiu      $a0, $a0, %lo(D_800CA96C)
    /* 8A7CC 80099FCC 00008384 */  lh         $v1, 0x0($a0)
    /* 8A7D0 80099FD0 00000000 */  nop
    /* 8A7D4 80099FD4 09006210 */  beq        $v1, $v0, .L80099FFC
    /* 8A7D8 80099FD8 21880000 */   addu      $s1, $zero, $zero
    /* 8A7DC 80099FDC 21188000 */  addu       $v1, $a0, $zero
  .L80099FE0:
    /* 8A7E0 80099FE0 00006294 */  lhu        $v0, 0x0($v1)
    /* 8A7E4 80099FE4 01003126 */  addiu      $s1, $s1, 0x1
    /* 8A7E8 80099FE8 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 8A7EC 80099FEC 000062A4 */  sh         $v0, 0x0($v1)
    /* 8A7F0 80099FF0 2100222A */  slti       $v0, $s1, 0x21
    /* 8A7F4 80099FF4 FAFF4014 */  bnez       $v0, .L80099FE0
    /* 8A7F8 80099FF8 08006324 */   addiu     $v1, $v1, 0x8
  .L80099FFC:
    /* 8A7FC 80099FFC 21880000 */  addu       $s1, $zero, $zero
  .L8009A000:
    /* 8A800 8009A000 3000A0AF */  sw         $zero, 0x30($sp)
  .L8009A004:
    /* 8A804 8009A004 F0230924 */  addiu      $t1, $zero, 0x23F0
    /* 8A808 8009A008 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8A80C 8009A00C 2800A9AF */  sw         $t1, 0x28($sp)
  .L8009A010:
    /* 8A810 8009A010 21900000 */  addu       $s2, $zero, $zero
    /* 8A814 8009A014 21400000 */  addu       $t0, $zero, $zero
    /* 8A818 8009A018 3000A98F */  lw         $t1, 0x30($sp)
    /* 8A81C 8009A01C 21A80000 */  addu       $s5, $zero, $zero
    /* 8A820 8009A020 2000A9AF */  sw         $t1, 0x20($sp)
  .L8009A024:
    /* 8A824 8009A024 801F023C */  lui        $v0, (0x1F800190 >> 16)
    /* 8A828 8009A028 9001428C */  lw         $v0, (0x1F800190 & 0xFFFF)($v0)
    /* 8A82C 8009A02C 2000A98F */  lw         $t1, 0x20($sp)
    /* 8A830 8009A030 00000000 */  nop
    /* 8A834 8009A034 21104900 */  addu       $v0, $v0, $t1
    /* 8A838 8009A038 2800A98F */  lw         $t1, 0x28($sp)
    /* 8A83C 8009A03C 3800A8AF */  sw         $t0, 0x38($sp)
    /* 8A840 8009A040 21104900 */  addu       $v0, $v0, $t1
    /* 8A844 8009A044 21805500 */  addu       $s0, $v0, $s5
    /* 8A848 8009A048 5BB7020C */  jal        func_800ADD6C
    /* 8A84C 8009A04C 21200002 */   addu      $a0, $s0, $zero
    /* 8A850 8009A050 21200002 */  addu       $a0, $s0, $zero
    /* 8A854 8009A054 2EB7020C */  jal        func_800ADCB8
    /* 8A858 8009A058 21280000 */   addu      $a1, $zero, $zero
    /* 8A85C 8009A05C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8A860 8009A060 0D80013C */  lui        $at, %hi(D_800CA904)
    /* 8A864 8009A064 21083200 */  addu       $at, $at, $s2
    /* 8A868 8009A068 04A93390 */  lbu        $s3, %lo(D_800CA904)($at)
    /* 8A86C 8009A06C 3800A88F */  lw         $t0, 0x38($sp)
    /* 8A870 8009A070 FF006332 */  andi       $v1, $s3, 0xFF
    /* 8A874 8009A074 13006210 */  beq        $v1, $v0, .L8009A0C4
    /* 8A878 8009A078 21200000 */   addu      $a0, $zero, $zero
    /* 8A87C 8009A07C 02006228 */  slti       $v0, $v1, 0x2
    /* 8A880 8009A080 05004010 */  beqz       $v0, .L8009A098
    /* 8A884 8009A084 00000000 */   nop
    /* 8A888 8009A088 08006010 */  beqz       $v1, .L8009A0AC
    /* 8A88C 8009A08C 21280000 */   addu      $a1, $zero, $zero
    /* 8A890 8009A090 40680208 */  j          .L8009A100
    /* 8A894 8009A094 00000000 */   nop
  .L8009A098:
    /* 8A898 8009A098 02000224 */  addiu      $v0, $zero, 0x2
    /* 8A89C 8009A09C 0E006210 */  beq        $v1, $v0, .L8009A0D8
    /* 8A8A0 8009A0A0 21280000 */   addu      $a1, $zero, $zero
    /* 8A8A4 8009A0A4 40680208 */  j          .L8009A100
    /* 8A8A8 8009A0A8 00000000 */   nop
  .L8009A0AC:
    /* 8A8AC 8009A0AC 40031E24 */  addiu      $fp, $zero, 0x340
    /* 8A8B0 8009A0B0 80011724 */  addiu      $s7, $zero, 0x180
    /* 8A8B4 8009A0B4 01000424 */  addiu      $a0, $zero, 0x1
    /* 8A8B8 8009A0B8 21B00000 */  addu       $s6, $zero, $zero
    /* 8A8BC 8009A0BC 3F680208 */  j          .L8009A0FC
    /* 8A8C0 8009A0C0 FD011424 */   addiu     $s4, $zero, 0x1FD
  .L8009A0C4:
    /* 8A8C4 8009A0C4 40031E24 */  addiu      $fp, $zero, 0x340
    /* 8A8C8 8009A0C8 80011724 */  addiu      $s7, $zero, 0x180
    /* 8A8CC 8009A0CC 01000424 */  addiu      $a0, $zero, 0x1
    /* 8A8D0 8009A0D0 3E680208 */  j          .L8009A0F8
    /* 8A8D4 8009A0D4 21B00000 */   addu      $s6, $zero, $zero
  .L8009A0D8:
    /* 8A8D8 8009A0D8 40031E24 */  addiu      $fp, $zero, 0x340
    /* 8A8DC 8009A0DC 80011724 */  addiu      $s7, $zero, 0x180
    /* 8A8E0 8009A0E0 01000424 */  addiu      $a0, $zero, 0x1
    /* 8A8E4 8009A0E4 21B00000 */  addu       $s6, $zero, $zero
    /* 8A8E8 8009A0E8 1000A293 */  lbu        $v0, 0x10($sp)
    /* 8A8EC 8009A0EC 00000000 */  nop
    /* 8A8F0 8009A0F0 02004010 */  beqz       $v0, .L8009A0FC
    /* 8A8F4 8009A0F4 FF011424 */   addiu     $s4, $zero, 0x1FF
  .L8009A0F8:
    /* 8A8F8 8009A0F8 FE011424 */  addiu      $s4, $zero, 0x1FE
  .L8009A0FC:
    /* 8A8FC 8009A0FC 21280000 */  addu       $a1, $zero, $zero
  .L8009A100:
    /* 8A900 8009A100 00341E00 */  sll        $a2, $fp, 16
    /* 8A904 8009A104 003C1700 */  sll        $a3, $s7, 16
    /* 8A908 8009A108 03340600 */  sra        $a2, $a2, 16
    /* 8A90C 8009A10C 033C0700 */  sra        $a3, $a3, 16
    /* 8A910 8009A110 B6B6020C */  jal        func_800ADAD8
    /* 8A914 8009A114 3800A8AF */   sw        $t0, 0x38($sp)
    /* 8A918 8009A118 00241600 */  sll        $a0, $s6, 16
    /* 8A91C 8009A11C 03240400 */  sra        $a0, $a0, 16
    /* 8A920 8009A120 002C1400 */  sll        $a1, $s4, 16
    /* 8A924 8009A124 032C0500 */  sra        $a1, $a1, 16
    /* 8A928 8009A128 C5B6020C */  jal        func_800ADB14
    /* 8A92C 8009A12C 160002A6 */   sh        $v0, 0x16($s0)
    /* 8A930 8009A130 C0181300 */  sll        $v1, $s3, 3
    /* 8A934 8009A134 0E0002A6 */  sh         $v0, 0xE($s0)
    /* 8A938 8009A138 0D80013C */  lui        $at, %hi(D_800CA8DC)
    /* 8A93C 8009A13C 21082300 */  addu       $at, $at, $v1
    /* 8A940 8009A140 DCA82290 */  lbu        $v0, %lo(D_800CA8DC)($at)
    /* 8A944 8009A144 00000000 */  nop
    /* 8A948 8009A148 0C0002A2 */  sb         $v0, 0xC($s0)
    /* 8A94C 8009A14C 0D80013C */  lui        $at, %hi(D_800CA8DD)
    /* 8A950 8009A150 21082300 */  addu       $at, $at, $v1
    /* 8A954 8009A154 DDA82290 */  lbu        $v0, %lo(D_800CA8DD)($at)
    /* 8A958 8009A158 00000000 */  nop
    /* 8A95C 8009A15C 80004224 */  addiu      $v0, $v0, 0x80
    /* 8A960 8009A160 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 8A964 8009A164 0D80013C */  lui        $at, %hi(D_800CA8DE)
    /* 8A968 8009A168 21082300 */  addu       $at, $at, $v1
    /* 8A96C 8009A16C DEA82290 */  lbu        $v0, %lo(D_800CA8DE)($at)
    /* 8A970 8009A170 00000000 */  nop
    /* 8A974 8009A174 140002A2 */  sb         $v0, 0x14($s0)
    /* 8A978 8009A178 0D80013C */  lui        $at, %hi(D_800CA8DF)
    /* 8A97C 8009A17C 21082300 */  addu       $at, $at, $v1
    /* 8A980 8009A180 DFA82290 */  lbu        $v0, %lo(D_800CA8DF)($at)
    /* 8A984 8009A184 00000000 */  nop
    /* 8A988 8009A188 80004224 */  addiu      $v0, $v0, 0x80
    /* 8A98C 8009A18C 150002A2 */  sb         $v0, 0x15($s0)
    /* 8A990 8009A190 0D80013C */  lui        $at, %hi(D_800CA8E0)
    /* 8A994 8009A194 21082300 */  addu       $at, $at, $v1
    /* 8A998 8009A198 E0A82290 */  lbu        $v0, %lo(D_800CA8E0)($at)
    /* 8A99C 8009A19C 00000000 */  nop
    /* 8A9A0 8009A1A0 1C0002A2 */  sb         $v0, 0x1C($s0)
    /* 8A9A4 8009A1A4 0D80013C */  lui        $at, %hi(D_800CA8E1)
    /* 8A9A8 8009A1A8 21082300 */  addu       $at, $at, $v1
    /* 8A9AC 8009A1AC E1A82290 */  lbu        $v0, %lo(D_800CA8E1)($at)
    /* 8A9B0 8009A1B0 00000000 */  nop
    /* 8A9B4 8009A1B4 80004224 */  addiu      $v0, $v0, 0x80
    /* 8A9B8 8009A1B8 1D0002A2 */  sb         $v0, 0x1D($s0)
    /* 8A9BC 8009A1BC 0D80013C */  lui        $at, %hi(D_800CA8E2)
    /* 8A9C0 8009A1C0 21082300 */  addu       $at, $at, $v1
    /* 8A9C4 8009A1C4 E2A82290 */  lbu        $v0, %lo(D_800CA8E2)($at)
    /* 8A9C8 8009A1C8 01005226 */  addiu      $s2, $s2, 0x1
    /* 8A9CC 8009A1CC 240002A2 */  sb         $v0, 0x24($s0)
    /* 8A9D0 8009A1D0 0D80013C */  lui        $at, %hi(D_800CA8E3)
    /* 8A9D4 8009A1D4 21082300 */  addu       $at, $at, $v1
    /* 8A9D8 8009A1D8 E3A82390 */  lbu        $v1, %lo(D_800CA8E3)($at)
    /* 8A9DC 8009A1DC 80000224 */  addiu      $v0, $zero, 0x80
    /* 8A9E0 8009A1E0 040002A2 */  sb         $v0, 0x4($s0)
    /* 8A9E4 8009A1E4 050002A2 */  sb         $v0, 0x5($s0)
    /* 8A9E8 8009A1E8 060002A2 */  sb         $v0, 0x6($s0)
    /* 8A9EC 8009A1EC 1400422A */  slti       $v0, $s2, 0x14
    /* 8A9F0 8009A1F0 80006324 */  addiu      $v1, $v1, 0x80
    /* 8A9F4 8009A1F4 250003A2 */  sb         $v1, 0x25($s0)
    /* 8A9F8 8009A1F8 3800A88F */  lw         $t0, 0x38($sp)
    /* 8A9FC 8009A1FC 89FF4014 */  bnez       $v0, .L8009A024
    /* 8AA00 8009A200 2800B526 */   addiu     $s5, $s5, 0x28
    /* 8AA04 8009A204 2800A98F */  lw         $t1, 0x28($sp)
    /* 8AA08 8009A208 00000000 */  nop
    /* 8AA0C 8009A20C 20032925 */  addiu      $t1, $t1, 0x320
    /* 8AA10 8009A210 2800A9AF */  sw         $t1, 0x28($sp)
    /* 8AA14 8009A214 1800A98F */  lw         $t1, 0x18($sp)
    /* 8AA18 8009A218 00000000 */  nop
    /* 8AA1C 8009A21C 01002925 */  addiu      $t1, $t1, 0x1
    /* 8AA20 8009A220 02002229 */  slti       $v0, $t1, 0x2
    /* 8AA24 8009A224 7AFF4014 */  bnez       $v0, .L8009A010
    /* 8AA28 8009A228 1800A9AF */   sw        $t1, 0x18($sp)
    /* 8AA2C 8009A22C 01003126 */  addiu      $s1, $s1, 0x1
    /* 8AA30 8009A230 3000A98F */  lw         $t1, 0x30($sp)
    /* 8AA34 8009A234 0200222A */  slti       $v0, $s1, 0x2
    /* 8AA38 8009A238 C03A2925 */  addiu      $t1, $t1, 0x3AC0
    /* 8AA3C 8009A23C 71FF4014 */  bnez       $v0, .L8009A004
    /* 8AA40 8009A240 3000A9AF */   sw        $t1, 0x30($sp)
    /* 8AA44 8009A244 6400BF8F */  lw         $ra, 0x64($sp)
    /* 8AA48 8009A248 6000BE8F */  lw         $fp, 0x60($sp)
    /* 8AA4C 8009A24C 5C00B78F */  lw         $s7, 0x5C($sp)
    /* 8AA50 8009A250 5800B68F */  lw         $s6, 0x58($sp)
    /* 8AA54 8009A254 5400B58F */  lw         $s5, 0x54($sp)
    /* 8AA58 8009A258 5000B48F */  lw         $s4, 0x50($sp)
    /* 8AA5C 8009A25C 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 8AA60 8009A260 4800B28F */  lw         $s2, 0x48($sp)
    /* 8AA64 8009A264 4400B18F */  lw         $s1, 0x44($sp)
    /* 8AA68 8009A268 4000B08F */  lw         $s0, 0x40($sp)
    /* 8AA6C 8009A26C 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 8AA70 8009A270 0800E003 */  jr         $ra
    /* 8AA74 8009A274 00000000 */   nop
endlabel func_80099F20
