nonmatching func_801B7D44, 0x2E4

glabel func_801B7D44
    /* 2EDCC 801B7D44 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2EDD0 801B7D48 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2EDD4 801B7D4C 21A88000 */  addu       $s5, $a0, $zero
    /* 2EDD8 801B7D50 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2EDDC 801B7D54 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 2EDE0 801B7D58 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 2EDE4 801B7D5C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2EDE8 801B7D60 04001124 */  addiu      $s1, $zero, 0x4
    /* 2EDEC 801B7D64 1E80043C */  lui        $a0, %hi(D_801D959C)
    /* 2EDF0 801B7D68 9C958424 */  addiu      $a0, $a0, %lo(D_801D959C)
    /* 2EDF4 801B7D6C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2EDF8 801B7D70 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2EDFC 801B7D74 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2EE00 801B7D78 1800B0AF */  sw         $s0, 0x18($sp)
  .L801B7D7C:
    /* 2EE04 801B7D7C 2C000324 */  addiu      $v1, $zero, 0x2C
    /* 2EE08 801B7D80 2C008224 */  addiu      $v0, $a0, 0x2C
  .L801B7D84:
    /* 2EE0C 801B7D84 000040A0 */  sb         $zero, 0x0($v0)
    /* 2EE10 801B7D88 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 2EE14 801B7D8C FDFF6104 */  bgez       $v1, .L801B7D84
    /* 2EE18 801B7D90 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2EE1C 801B7D94 01003126 */  addiu      $s1, $s1, 0x1
    /* 2EE20 801B7D98 2000222A */  slti       $v0, $s1, 0x20
    /* 2EE24 801B7D9C F7FF4014 */  bnez       $v0, .L801B7D7C
    /* 2EE28 801B7DA0 2D008424 */   addiu     $a0, $a0, 0x2D
    /* 2EE2C 801B7DA4 0174000C */  jal        func_8001D004
    /* 2EE30 801B7DA8 39310424 */   addiu     $a0, $zero, 0x3139
    /* 2EE34 801B7DAC 21880000 */  addu       $s1, $zero, $zero
    /* 2EE38 801B7DB0 FF00A532 */  andi       $a1, $s5, 0xFF
    /* 2EE3C 801B7DB4 30000A24 */  addiu      $t2, $zero, 0x30
    /* 2EE40 801B7DB8 D0000924 */  addiu      $t1, $zero, 0xD0
    /* 2EE44 801B7DBC 50000824 */  addiu      $t0, $zero, 0x50
    /* 2EE48 801B7DC0 38000724 */  addiu      $a3, $zero, 0x38
    /* 2EE4C 801B7DC4 C8000624 */  addiu      $a2, $zero, 0xC8
    /* 2EE50 801B7DC8 21184000 */  addu       $v1, $v0, $zero
  .L801B7DCC:
    /* 2EE54 801B7DCC 2120B100 */  addu       $a0, $a1, $s1
    /* 2EE58 801B7DD0 04008228 */  slti       $v0, $a0, 0x4
    /* 2EE5C 801B7DD4 05004010 */  beqz       $v0, .L801B7DEC
    /* 2EE60 801B7DD8 0C008228 */   slti      $v0, $a0, 0xC
    /* 2EE64 801B7DDC 3D006AA0 */  sb         $t2, 0x3D($v1)
    /* 2EE68 801B7DE0 3F0069A0 */  sb         $t1, 0x3F($v1)
    /* 2EE6C 801B7DE4 86DF0608 */  j          .L801B7E18
    /* 2EE70 801B7DE8 400068A0 */   sb        $t0, 0x40($v1)
  .L801B7DEC:
    /* 2EE74 801B7DEC 04004010 */  beqz       $v0, .L801B7E00
    /* 2EE78 801B7DF0 60000224 */   addiu     $v0, $zero, 0x60
    /* 2EE7C 801B7DF4 3D0067A0 */  sb         $a3, 0x3D($v1)
    /* 2EE80 801B7DF8 85DF0608 */  j          .L801B7E14
    /* 2EE84 801B7DFC 3F0066A0 */   sb        $a2, 0x3F($v1)
  .L801B7E00:
    /* 2EE88 801B7E00 48000224 */  addiu      $v0, $zero, 0x48
    /* 2EE8C 801B7E04 3D0062A0 */  sb         $v0, 0x3D($v1)
    /* 2EE90 801B7E08 A8000224 */  addiu      $v0, $zero, 0xA8
    /* 2EE94 801B7E0C 3F0062A0 */  sb         $v0, 0x3F($v1)
    /* 2EE98 801B7E10 20000224 */  addiu      $v0, $zero, 0x20
  .L801B7E14:
    /* 2EE9C 801B7E14 400062A0 */  sb         $v0, 0x40($v1)
  .L801B7E18:
    /* 2EEA0 801B7E18 01003126 */  addiu      $s1, $s1, 0x1
    /* 2EEA4 801B7E1C 0400222A */  slti       $v0, $s1, 0x4
    /* 2EEA8 801B7E20 EAFF4014 */  bnez       $v0, .L801B7DCC
    /* 2EEAC 801B7E24 0C006324 */   addiu     $v1, $v1, 0xC
    /* 2EEB0 801B7E28 0174000C */  jal        func_8001D004
    /* 2EEB4 801B7E2C 34310424 */   addiu     $a0, $zero, 0x3134
    /* 2EEB8 801B7E30 40024424 */  addiu      $a0, $v0, 0x240
    /* 2EEBC 801B7E34 21880000 */  addu       $s1, $zero, $zero
    /* 2EEC0 801B7E38 0E001224 */  addiu      $s2, $zero, 0xE
    /* 2EEC4 801B7E3C 02000624 */  addiu      $a2, $zero, 0x2
  .L801B7E40:
    /* 2EEC8 801B7E40 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 2EECC 801B7E44 21102202 */  addu       $v0, $s1, $v0
    /* 2EED0 801B7E48 21106202 */  addu       $v0, $s3, $v0
    /* 2EED4 801B7E4C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EED8 801B7E50 21084100 */  addu       $at, $v0, $at
    /* 2EEDC 801B7E54 54AB2290 */  lbu        $v0, -0x54AC($at)
    /* 2EEE0 801B7E58 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 2EEE4 801B7E5C C0800200 */  sll        $s0, $v0, 3
    /* 2EEE8 801B7E60 21800202 */  addu       $s0, $s0, $v0
    /* 2EEEC 801B7E64 80801000 */  sll        $s0, $s0, 2
    /* 2EEF0 801B7E68 21807002 */  addu       $s0, $s3, $s0
    /* 2EEF4 801B7E6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EEF8 801B7E70 21080102 */  addu       $at, $s0, $at
    /* 2EEFC 801B7E74 268F2590 */  lbu        $a1, -0x70DA($at)
    /* 2EF00 801B7E78 01003126 */  addiu      $s1, $s1, 0x1
    /* 2EF04 801B7E7C 50A5060C */  jal        func_801A9540
    /* 2EF08 801B7E80 1000B2AF */   sw        $s2, 0x10($sp)
    /* 2EF0C 801B7E84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EF10 801B7E88 21080102 */  addu       $at, $s0, $at
    /* 2EF14 801B7E8C 2C8F2594 */  lhu        $a1, -0x70D4($at)
    /* 2EF18 801B7E90 DAC0060C */  jal        func_801B0368
    /* 2EF1C 801B7E94 21204000 */   addu      $a0, $v0, $zero
    /* 2EF20 801B7E98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EF24 801B7E9C 21080102 */  addu       $at, $s0, $at
    /* 2EF28 801B7EA0 2E8F2594 */  lhu        $a1, -0x70D2($at)
    /* 2EF2C 801B7EA4 DAC0060C */  jal        func_801B0368
    /* 2EF30 801B7EA8 21204000 */   addu      $a0, $v0, $zero
    /* 2EF34 801B7EAC 21204000 */  addu       $a0, $v0, $zero
    /* 2EF38 801B7EB0 02000624 */  addiu      $a2, $zero, 0x2
    /* 2EF3C 801B7EB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EF40 801B7EB8 21080102 */  addu       $at, $s0, $at
    /* 2EF44 801B7EBC 338F2590 */  lbu        $a1, -0x70CD($at)
    /* 2EF48 801B7EC0 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 2EF4C 801B7EC4 50A5060C */  jal        func_801A9540
    /* 2EF50 801B7EC8 1000B2AF */   sw        $s2, 0x10($sp)
    /* 2EF54 801B7ECC 21204000 */  addu       $a0, $v0, $zero
    /* 2EF58 801B7ED0 02000624 */  addiu      $a2, $zero, 0x2
    /* 2EF5C 801B7ED4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EF60 801B7ED8 21080102 */  addu       $at, $s0, $at
    /* 2EF64 801B7EDC 348F2590 */  lbu        $a1, -0x70CC($at)
    /* 2EF68 801B7EE0 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 2EF6C 801B7EE4 50A5060C */  jal        func_801A9540
    /* 2EF70 801B7EE8 1000B2AF */   sw        $s2, 0x10($sp)
    /* 2EF74 801B7EEC 21204000 */  addu       $a0, $v0, $zero
    /* 2EF78 801B7EF0 0400222A */  slti       $v0, $s1, 0x4
    /* 2EF7C 801B7EF4 D2FF4014 */  bnez       $v0, .L801B7E40
    /* 2EF80 801B7EF8 02000624 */   addiu     $a2, $zero, 0x2
    /* 2EF84 801B7EFC 21880000 */  addu       $s1, $zero, $zero
    /* 2EF88 801B7F00 1C001424 */  addiu      $s4, $zero, 0x1C
    /* 2EF8C 801B7F04 21900000 */  addu       $s2, $zero, $zero
  .L801B7F08:
    /* 2EF90 801B7F08 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 2EF94 801B7F0C 21102202 */  addu       $v0, $s1, $v0
    /* 2EF98 801B7F10 21106202 */  addu       $v0, $s3, $v0
    /* 2EF9C 801B7F14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EFA0 801B7F18 21084100 */  addu       $at, $v0, $at
    /* 2EFA4 801B7F1C 54AB2290 */  lbu        $v0, -0x54AC($at)
    /* 2EFA8 801B7F20 1E80043C */  lui        $a0, %hi(D_801D959C)
    /* 2EFAC 801B7F24 9C958424 */  addiu      $a0, $a0, %lo(D_801D959C)
    /* 2EFB0 801B7F28 21806202 */  addu       $s0, $s3, $v0
    /* 2EFB4 801B7F2C 80AB0234 */  ori        $v0, $zero, 0xAB80
    /* 2EFB8 801B7F30 21800202 */  addu       $s0, $s0, $v0
    /* 2EFBC 801B7F34 00000392 */  lbu        $v1, 0x0($s0)
    /* 2EFC0 801B7F38 21204402 */  addu       $a0, $s2, $a0
    /* 2EFC4 801B7F3C C0100300 */  sll        $v0, $v1, 3
    /* 2EFC8 801B7F40 21104300 */  addu       $v0, $v0, $v1
    /* 2EFCC 801B7F44 80100200 */  sll        $v0, $v0, 2
    /* 2EFD0 801B7F48 21106202 */  addu       $v0, $s3, $v0
    /* 2EFD4 801B7F4C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EFD8 801B7F50 21084100 */  addu       $at, $v0, $at
    /* 2EFDC 801B7F54 248F2790 */  lbu        $a3, -0x70DC($at)
    /* 2EFE0 801B7F58 04000524 */  addiu      $a1, $zero, 0x4
    /* 2EFE4 801B7F5C C000E630 */  andi       $a2, $a3, 0xC0
    /* 2EFE8 801B7F60 3F00E730 */  andi       $a3, $a3, 0x3F
    /* 2EFEC 801B7F64 5AA4060C */  jal        func_801A9168
    /* 2EFF0 801B7F68 0100E724 */   addiu     $a3, $a3, 0x1
    /* 2EFF4 801B7F6C 09000324 */  addiu      $v1, $zero, 0x9
    /* 2EFF8 801B7F70 000043A0 */  sb         $v1, 0x0($v0)
    /* 2EFFC 801B7F74 01004224 */  addiu      $v0, $v0, 0x1
    /* 2F000 801B7F78 000054A0 */  sb         $s4, 0x0($v0)
    /* 2F004 801B7F7C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2F008 801B7F80 1E000324 */  addiu      $v1, $zero, 0x1E
    /* 2F00C 801B7F84 000043A0 */  sb         $v1, 0x0($v0)
    /* 2F010 801B7F88 00000492 */  lbu        $a0, 0x0($s0)
    /* 2F014 801B7F8C 00000000 */  nop
    /* 2F018 801B7F90 C0180400 */  sll        $v1, $a0, 3
    /* 2F01C 801B7F94 21186400 */  addu       $v1, $v1, $a0
    /* 2F020 801B7F98 80180300 */  sll        $v1, $v1, 2
    /* 2F024 801B7F9C 21186302 */  addu       $v1, $s3, $v1
    /* 2F028 801B7FA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2F02C 801B7FA4 21086100 */  addu       $at, $v1, $at
    /* 2F030 801B7FA8 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 2F034 801B7FAC 01004224 */  addiu      $v0, $v0, 0x1
    /* 2F038 801B7FB0 000043A0 */  sb         $v1, 0x0($v0)
    /* 2F03C 801B7FB4 01004224 */  addiu      $v0, $v0, 0x1
    /* 2F040 801B7FB8 20000324 */  addiu      $v1, $zero, 0x20
    /* 2F044 801B7FBC 000043A0 */  sb         $v1, 0x0($v0)
    /* 2F048 801B7FC0 01004224 */  addiu      $v0, $v0, 0x1
    /* 2F04C 801B7FC4 000054A0 */  sb         $s4, 0x0($v0)
    /* 2F050 801B7FC8 00000492 */  lbu        $a0, 0x0($s0)
    /* 2F054 801B7FCC 00000000 */  nop
    /* 2F058 801B7FD0 C0180400 */  sll        $v1, $a0, 3
    /* 2F05C 801B7FD4 21186400 */  addu       $v1, $v1, $a0
    /* 2F060 801B7FD8 80180300 */  sll        $v1, $v1, 2
    /* 2F064 801B7FDC 21186302 */  addu       $v1, $s3, $v1
    /* 2F068 801B7FE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2F06C 801B7FE4 21086100 */  addu       $at, $v1, $at
    /* 2F070 801B7FE8 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 2F074 801B7FEC 01003126 */  addiu      $s1, $s1, 0x1
    /* 2F078 801B7FF0 010043A0 */  sb         $v1, 0x1($v0)
    /* 2F07C 801B7FF4 0400222A */  slti       $v0, $s1, 0x4
    /* 2F080 801B7FF8 C3FF4014 */  bnez       $v0, .L801B7F08
    /* 2F084 801B7FFC 2D005226 */   addiu     $s2, $s2, 0x2D
    /* 2F088 801B8000 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2F08C 801B8004 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2F090 801B8008 2800B48F */  lw         $s4, 0x28($sp)
    /* 2F094 801B800C 2400B38F */  lw         $s3, 0x24($sp)
    /* 2F098 801B8010 2000B28F */  lw         $s2, 0x20($sp)
    /* 2F09C 801B8014 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2F0A0 801B8018 1800B08F */  lw         $s0, 0x18($sp)
    /* 2F0A4 801B801C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2F0A8 801B8020 0800E003 */  jr         $ra
    /* 2F0AC 801B8024 00000000 */   nop
endlabel func_801B7D44
