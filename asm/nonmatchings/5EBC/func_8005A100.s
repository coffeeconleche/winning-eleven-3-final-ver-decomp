nonmatching func_8005A100, 0xF0

glabel func_8005A100
    /* 4A900 8005A100 801F023C */  lui        $v0, (0x1F8002CE >> 16)
    /* 4A904 8005A104 CE024290 */  lbu        $v0, (0x1F8002CE & 0xFFFF)($v0)
    /* 4A908 8005A108 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4A90C 8005A10C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A910 8005A110 21808000 */  addu       $s0, $a0, $zero
    /* 4A914 8005A114 31004014 */  bnez       $v0, .L8005A1DC
    /* 4A918 8005A118 1400BFAF */   sw        $ra, 0x14($sp)
    /* 4A91C 8005A11C AE79000C */  jal        func_8001E6B8
    /* 4A920 8005A120 03000424 */   addiu     $a0, $zero, 0x3
    /* 4A924 8005A124 2D004014 */  bnez       $v0, .L8005A1DC
    /* 4A928 8005A128 FF000432 */   andi      $a0, $s0, 0xFF
    /* 4A92C 8005A12C 01000224 */  addiu      $v0, $zero, 0x1
    /* 4A930 8005A130 1D008210 */  beq        $a0, $v0, .L8005A1A8
    /* 4A934 8005A134 02008228 */   slti      $v0, $a0, 0x2
    /* 4A938 8005A138 05004010 */  beqz       $v0, .L8005A150
    /* 4A93C 8005A13C 00000000 */   nop
    /* 4A940 8005A140 0A008010 */  beqz       $a0, .L8005A16C
    /* 4A944 8005A144 00000000 */   nop
    /* 4A948 8005A148 77680108 */  j          .L8005A1DC
    /* 4A94C 8005A14C 00000000 */   nop
  .L8005A150:
    /* 4A950 8005A150 02000224 */  addiu      $v0, $zero, 0x2
    /* 4A954 8005A154 18008210 */  beq        $a0, $v0, .L8005A1B8
    /* 4A958 8005A158 03000224 */   addiu     $v0, $zero, 0x3
    /* 4A95C 8005A15C 1A008210 */  beq        $a0, $v0, .L8005A1C8
    /* 4A960 8005A160 00000000 */   nop
    /* 4A964 8005A164 77680108 */  j          .L8005A1DC
    /* 4A968 8005A168 00000000 */   nop
  .L8005A16C:
    /* 4A96C 8005A16C 1180023C */  lui        $v0, %hi(D_8010A3B1)
    /* 4A970 8005A170 B1A34290 */  lbu        $v0, %lo(D_8010A3B1)($v0)
    /* 4A974 8005A174 00000000 */  nop
    /* 4A978 8005A178 01004230 */  andi       $v0, $v0, 0x1
    /* 4A97C 8005A17C 17004010 */  beqz       $v0, .L8005A1DC
    /* 4A980 8005A180 00000000 */   nop
    /* 4A984 8005A184 AE79000C */  jal        func_8001E6B8
    /* 4A988 8005A188 03000424 */   addiu     $a0, $zero, 0x3
    /* 4A98C 8005A18C 88AD020C */  jal        func_800AB620
    /* 4A990 8005A190 0A0E4424 */   addiu     $a0, $v0, 0xE0A
    /* 4A994 8005A194 01000224 */  addiu      $v0, $zero, 0x1
    /* 4A998 8005A198 1180013C */  lui        $at, %hi(D_8010A3B1)
    /* 4A99C 8005A19C B1A322A0 */  sb         $v0, %lo(D_8010A3B1)($at)
    /* 4A9A0 8005A1A0 77680108 */  j          .L8005A1DC
    /* 4A9A4 8005A1A4 00000000 */   nop
  .L8005A1A8:
    /* 4A9A8 8005A1A8 AE79000C */  jal        func_8001E6B8
    /* 4A9AC 8005A1AC 03000424 */   addiu     $a0, $zero, 0x3
    /* 4A9B0 8005A1B0 75680108 */  j          .L8005A1D4
    /* 4A9B4 8005A1B4 0D0E4424 */   addiu     $a0, $v0, 0xE0D
  .L8005A1B8:
    /* 4A9B8 8005A1B8 AE79000C */  jal        func_8001E6B8
    /* 4A9BC 8005A1BC 02000424 */   addiu     $a0, $zero, 0x2
    /* 4A9C0 8005A1C0 75680108 */  j          .L8005A1D4
    /* 4A9C4 8005A1C4 100E4424 */   addiu     $a0, $v0, 0xE10
  .L8005A1C8:
    /* 4A9C8 8005A1C8 AE79000C */  jal        func_8001E6B8
    /* 4A9CC 8005A1CC 02000424 */   addiu     $a0, $zero, 0x2
    /* 4A9D0 8005A1D0 120E4424 */  addiu      $a0, $v0, 0xE12
  .L8005A1D4:
    /* 4A9D4 8005A1D4 88AD020C */  jal        func_800AB620
    /* 4A9D8 8005A1D8 00000000 */   nop
  .L8005A1DC:
    /* 4A9DC 8005A1DC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4A9E0 8005A1E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A9E4 8005A1E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4A9E8 8005A1E8 0800E003 */  jr         $ra
    /* 4A9EC 8005A1EC 00000000 */   nop
endlabel func_8005A100
