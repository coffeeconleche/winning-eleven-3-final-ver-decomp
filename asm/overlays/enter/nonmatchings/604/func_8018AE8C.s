nonmatching func_8018AE8C, 0x194

glabel func_8018AE8C
    /* 1F14 8018AE8C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1F18 8018AE90 1B80023C */  lui        $v0, %hi(D_801B0000)
    /* 1F1C 8018AE94 00004224 */  addiu      $v0, $v0, %lo(D_801B0000)
    /* 1F20 8018AE98 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1F24 8018AE9C 1980113C */  lui        $s1, %hi(D_80191908)
    /* 1F28 8018AEA0 08193126 */  addiu      $s1, $s1, %lo(D_80191908)
    /* 1F2C 8018AEA4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1F30 8018AEA8 21900000 */  addu       $s2, $zero, $zero
    /* 1F34 8018AEAC 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 1F38 8018AEB0 01001524 */  addiu      $s5, $zero, 0x1
    /* 1F3C 8018AEB4 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1F40 8018AEB8 02001424 */  addiu      $s4, $zero, 0x2
    /* 1F44 8018AEBC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1F48 8018AEC0 550D1324 */  addiu      $s3, $zero, 0xD55
    /* 1F4C 8018AEC4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1F50 8018AEC8 A6033026 */  addiu      $s0, $s1, 0x3A6
    /* 1F54 8018AECC 3000BFAF */  sw         $ra, 0x30($sp)
    /* 1F58 8018AED0 1000A2AF */  sw         $v0, 0x10($sp)
  .L8018AED4:
    /* 1F5C 8018AED4 18004226 */  addiu      $v0, $s2, 0x18
    /* 1F60 8018AED8 E7FF02A2 */  sb         $v0, -0x19($s0)
    /* 1F64 8018AEDC 000035A2 */  sb         $s5, 0x0($s1)
    /* 1F68 8018AEE0 F0FF00A2 */  sb         $zero, -0x10($s0)
    /* 1F6C 8018AEE4 F1FF00A2 */  sb         $zero, -0xF($s0)
    /* 1F70 8018AEE8 1980033C */  lui        $v1, %hi(D_80193C88)
    /* 1F74 8018AEEC 883C6390 */  lbu        $v1, %lo(D_80193C88)($v1)
    /* 1F78 8018AEF0 00000000 */  nop
    /* 1F7C 8018AEF4 10007510 */  beq        $v1, $s5, .L8018AF38
    /* 1F80 8018AEF8 00000000 */   nop
    /* 1F84 8018AEFC 02006228 */  slti       $v0, $v1, 0x2
    /* 1F88 8018AF00 05004010 */  beqz       $v0, .L8018AF18
    /* 1F8C 8018AF04 00000000 */   nop
    /* 1F90 8018AF08 07006010 */  beqz       $v1, .L8018AF28
    /* 1F94 8018AF0C 00000000 */   nop
    /* 1F98 8018AF10 D62B0608 */  j          .L8018AF58
    /* 1F9C 8018AF14 00000000 */   nop
  .L8018AF18:
    /* 1FA0 8018AF18 0B007410 */  beq        $v1, $s4, .L8018AF48
    /* 1FA4 8018AF1C 00000000 */   nop
    /* 1FA8 8018AF20 D62B0608 */  j          .L8018AF58
    /* 1FAC 8018AF24 00000000 */   nop
  .L8018AF28:
    /* 1FB0 8018AF28 AE79000C */  jal        func_8001E6B8
    /* 1FB4 8018AF2C 04000424 */   addiu     $a0, $zero, 0x4
    /* 1FB8 8018AF30 DA2B0608 */  j          .L8018AF68
    /* 1FBC 8018AF34 21202002 */   addu      $a0, $s1, $zero
  .L8018AF38:
    /* 1FC0 8018AF38 AE79000C */  jal        func_8001E6B8
    /* 1FC4 8018AF3C 04000424 */   addiu     $a0, $zero, 0x4
    /* 1FC8 8018AF40 D92B0608 */  j          .L8018AF64
    /* 1FCC 8018AF44 04004224 */   addiu     $v0, $v0, 0x4
  .L8018AF48:
    /* 1FD0 8018AF48 AE79000C */  jal        func_8001E6B8
    /* 1FD4 8018AF4C 02000424 */   addiu     $a0, $zero, 0x2
    /* 1FD8 8018AF50 D92B0608 */  j          .L8018AF64
    /* 1FDC 8018AF54 08004224 */   addiu     $v0, $v0, 0x8
  .L8018AF58:
    /* 1FE0 8018AF58 AE79000C */  jal        func_8001E6B8
    /* 1FE4 8018AF5C 02000424 */   addiu     $a0, $zero, 0x2
    /* 1FE8 8018AF60 0A004224 */  addiu      $v0, $v0, 0xA
  .L8018AF64:
    /* 1FEC 8018AF64 21202002 */  addu       $a0, $s1, $zero
  .L8018AF68:
    /* 1FF0 8018AF68 01005226 */  addiu      $s2, $s2, 0x1
    /* 1FF4 8018AF6C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1FF8 8018AF70 80100200 */  sll        $v0, $v0, 2
    /* 1FFC 8018AF74 1A80013C */  lui        $at, %hi(D_801A3000)
    /* 2000 8018AF78 21082200 */  addu       $at, $at, $v0
    /* 2004 8018AF7C 0030228C */  lw         $v0, %lo(D_801A3000)($at)
    /* 2008 8018AF80 E8033126 */  addiu      $s1, $s1, 0x3E8
    /* 200C 8018AF84 0C6F000C */  jal        func_8001BC30
    /* 2010 8018AF88 7AFC02AE */   sw        $v0, -0x386($s0)
    /* 2014 8018AF8C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 2018 8018AF90 86FC02AE */  sw         $v0, -0x37A($s0)
    /* 201C 8018AF94 8AFC02AE */  sw         $v0, -0x376($s0)
    /* 2020 8018AF98 8EFC02AE */  sw         $v0, -0x372($s0)
    /* 2024 8018AF9C 380E0224 */  addiu      $v0, $zero, 0xE38
    /* 2028 8018AFA0 8AFC02AE */  sw         $v0, -0x376($s0)
    /* 202C 8018AFA4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 2030 8018AFA8 020000A2 */  sb         $zero, 0x2($s0)
    /* 2034 8018AFAC 010000A2 */  sb         $zero, 0x1($s0)
    /* 2038 8018AFB0 5CFC00A6 */  sh         $zero, -0x3A4($s0)
    /* 203C 8018AFB4 5EFC00A6 */  sh         $zero, -0x3A2($s0)
    /* 2040 8018AFB8 60FC00A6 */  sh         $zero, -0x3A0($s0)
    /* 2044 8018AFBC 6AFC00AE */  sw         $zero, -0x396($s0)
    /* 2048 8018AFC0 66FC00AE */  sw         $zero, -0x39A($s0)
    /* 204C 8018AFC4 62FC00AE */  sw         $zero, -0x39E($s0)
    /* 2050 8018AFC8 86FC13AE */  sw         $s3, -0x37A($s0)
    /* 2054 8018AFCC 8EFC13AE */  sw         $s3, -0x372($s0)
    /* 2058 8018AFD0 2C0000A2 */  sb         $zero, 0x2C($s0)
    /* 205C 8018AFD4 F6FF14A2 */  sb         $s4, -0xA($s0)
    /* 2060 8018AFD8 2B0000A2 */  sb         $zero, 0x2B($s0)
    /* 2064 8018AFDC 060000A2 */  sb         $zero, 0x6($s0)
    /* 2068 8018AFE0 FFFF00A2 */  sb         $zero, -0x1($s0)
    /* 206C 8018AFE4 000002A2 */  sb         $v0, 0x0($s0)
    /* 2070 8018AFE8 FF004232 */  andi       $v0, $s2, 0xFF
    /* 2074 8018AFEC 0800422C */  sltiu      $v0, $v0, 0x8
    /* 2078 8018AFF0 B8FF4014 */  bnez       $v0, .L8018AED4
    /* 207C 8018AFF4 E8031026 */   addiu     $s0, $s0, 0x3E8
    /* 2080 8018AFF8 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2084 8018AFFC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2088 8018B000 2800B48F */  lw         $s4, 0x28($sp)
    /* 208C 8018B004 2400B38F */  lw         $s3, 0x24($sp)
    /* 2090 8018B008 2000B28F */  lw         $s2, 0x20($sp)
    /* 2094 8018B00C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2098 8018B010 1800B08F */  lw         $s0, 0x18($sp)
    /* 209C 8018B014 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 20A0 8018B018 0800E003 */  jr         $ra
    /* 20A4 8018B01C 00000000 */   nop
endlabel func_8018AE8C
