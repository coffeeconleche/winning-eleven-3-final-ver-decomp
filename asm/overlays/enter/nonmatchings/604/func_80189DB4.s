nonmatching func_80189DB4, 0x254

glabel func_80189DB4
    /* E3C 80189DB4 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* E40 80189DB8 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* E44 80189DBC 1080153C */  lui        $s5, %hi(D_800FF748)
    /* E48 80189DC0 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* E4C 80189DC4 4400B3AF */  sw         $s3, 0x44($sp)
    /* E50 80189DC8 E803B326 */  addiu      $s3, $s5, 0x3E8
    /* E54 80189DCC 4000B2AF */  sw         $s2, 0x40($sp)
    /* E58 80189DD0 21900000 */  addu       $s2, $zero, $zero
    /* E5C 80189DD4 4800B4AF */  sw         $s4, 0x48($sp)
    /* E60 80189DD8 2800B427 */  addiu      $s4, $sp, 0x28
    /* E64 80189DDC 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* E68 80189DE0 8107B126 */  addiu      $s1, $s5, 0x781
    /* E6C 80189DE4 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* E70 80189DE8 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* E74 80189DEC 0B000324 */  addiu      $v1, $zero, 0xB
    /* E78 80189DF0 5000BFAF */  sw         $ra, 0x50($sp)
    /* E7C 80189DF4 3800B0AF */  sw         $s0, 0x38($sp)
    /* E80 80189DF8 801F013C */  lui        $at, (0x1F8002A8 >> 16)
    /* E84 80189DFC A80223A0 */  sb         $v1, (0x1F8002A8 & 0xFFFF)($at)
    /* E88 80189E00 000040A0 */  sb         $zero, 0x0($v0)
    /* E8C 80189E04 00DF0234 */  ori        $v0, $zero, 0xDF00
    /* E90 80189E08 3200A2A7 */  sh         $v0, 0x32($sp)
    /* E94 80189E0C 3000A2A7 */  sh         $v0, 0x30($sp)
  .L80189E10:
    /* E98 80189E10 9EB5020C */  jal        func_800AD678
    /* E9C 80189E14 00000000 */   nop
    /* EA0 80189E18 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* EA4 80189E1C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* EA8 80189E20 18004300 */  mult       $v0, $v1
    /* EAC 80189E24 21206002 */  addu       $a0, $s3, $zero
    /* EB0 80189E28 05000524 */  addiu      $a1, $zero, 0x5
    /* EB4 80189E2C C31F0200 */  sra        $v1, $v0, 31
    /* EB8 80189E30 10400000 */  mfhi       $t0
    /* EBC 80189E34 83300800 */  sra        $a2, $t0, 2
    /* EC0 80189E38 2330C300 */  subu       $a2, $a2, $v1
    /* EC4 80189E3C 80180600 */  sll        $v1, $a2, 2
    /* EC8 80189E40 21186600 */  addu       $v1, $v1, $a2
    /* ECC 80189E44 40180300 */  sll        $v1, $v1, 1
    /* ED0 80189E48 23104300 */  subu       $v0, $v0, $v1
    /* ED4 80189E4C 8C6E010C */  jal        func_8005BA30
    /* ED8 80189E50 FF004630 */   andi      $a2, $v0, 0xFF
    /* EDC 80189E54 0C000224 */  addiu      $v0, $zero, 0xC
    /* EE0 80189E58 0C0022A2 */  sb         $v0, 0xC($s1)
    /* EE4 80189E5C 18000224 */  addiu      $v0, $zero, 0x18
    /* EE8 80189E60 0D0022A2 */  sb         $v0, 0xD($s1)
    /* EEC 80189E64 01000224 */  addiu      $v0, $zero, 0x1
    /* EF0 80189E68 030022A2 */  sb         $v0, 0x3($s1)
    /* EF4 80189E6C 10000224 */  addiu      $v0, $zero, 0x10
    /* EF8 80189E70 070022AE */  sw         $v0, 0x7($s1)
    /* EFC 80189E74 40000224 */  addiu      $v0, $zero, 0x40
    /* F00 80189E78 110022A2 */  sb         $v0, 0x11($s1)
    /* F04 80189E7C 11002392 */  lbu        $v1, 0x11($s1)
    /* F08 80189E80 0B0022A2 */  sb         $v0, 0xB($s1)
    /* F0C 80189E84 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* F10 80189E88 3A0020A2 */  sb         $zero, 0x3A($s1)
    /* F14 80189E8C FDFF20A2 */  sb         $zero, -0x3($s1)
    /* F18 80189E90 170020A2 */  sb         $zero, 0x17($s1)
    /* F1C 80189E94 23184300 */  subu       $v1, $v0, $v1
    /* F20 80189E98 02006104 */  bgez       $v1, .L80189EA4
    /* F24 80189E9C 21106000 */   addu      $v0, $v1, $zero
    /* F28 80189EA0 FF006224 */  addiu      $v0, $v1, 0xFF
  .L80189EA4:
    /* F2C 80189EA4 03120200 */  sra        $v0, $v0, 8
    /* F30 80189EA8 00120200 */  sll        $v0, $v0, 8
    /* F34 80189EAC 23106200 */  subu       $v0, $v1, $v0
    /* F38 80189EB0 00110200 */  sll        $v0, $v0, 4
    /* F3C 80189EB4 8DFC22A6 */  sh         $v0, -0x373($s1)
    /* F40 80189EB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* F44 80189EBC 2108A102 */  addu       $at, $s5, $at
    /* F48 80189EC0 158F2290 */  lbu        $v0, -0x70EB($at)
    /* F4C 80189EC4 00000000 */  nop
    /* F50 80189EC8 0B004014 */  bnez       $v0, .L80189EF8
    /* F54 80189ECC 0B00422A */   slti      $v0, $s2, 0xB
    /* F58 80189ED0 13004014 */  bnez       $v0, .L80189F20
    /* F5C 80189ED4 00000000 */   nop
    /* F60 80189ED8 E871010C */  jal        func_8005C7A0
    /* F64 80189EDC 2C000424 */   addiu     $a0, $zero, 0x2C
    /* F68 80189EE0 40000424 */  addiu      $a0, $zero, 0x40
    /* F6C 80189EE4 AE79000C */  jal        func_8001E6B8
    /* F70 80189EE8 21804000 */   addu      $s0, $v0, $zero
    /* F74 80189EEC 90004224 */  addiu      $v0, $v0, 0x90
    /* F78 80189EF0 CF270608 */  j          .L80189F3C
    /* F7C 80189EF4 21800202 */   addu      $s0, $s0, $v0
  .L80189EF8:
    /* F80 80189EF8 09004010 */  beqz       $v0, .L80189F20
    /* F84 80189EFC 00000000 */   nop
    /* F88 80189F00 E871010C */  jal        func_8005C7A0
    /* F8C 80189F04 2C000424 */   addiu     $a0, $zero, 0x2C
    /* F90 80189F08 40000424 */  addiu      $a0, $zero, 0x40
    /* F94 80189F0C AE79000C */  jal        func_8001E6B8
    /* F98 80189F10 21804000 */   addu      $s0, $v0, $zero
    /* F9C 80189F14 90004224 */  addiu      $v0, $v0, 0x90
    /* FA0 80189F18 CF270608 */  j          .L80189F3C
    /* FA4 80189F1C 21800202 */   addu      $s0, $s0, $v0
  .L80189F20:
    /* FA8 80189F20 E871010C */  jal        func_8005C7A0
    /* FAC 80189F24 24000424 */   addiu     $a0, $zero, 0x24
    /* FB0 80189F28 40000424 */  addiu      $a0, $zero, 0x40
    /* FB4 80189F2C AE79000C */  jal        func_8001E6B8
    /* FB8 80189F30 21804000 */   addu      $s0, $v0, $zero
    /* FBC 80189F34 90004224 */  addiu      $v0, $v0, 0x90
    /* FC0 80189F38 23800202 */  subu       $s0, $s0, $v0
  .L80189F3C:
    /* FC4 80189F3C 69FC30A6 */  sh         $s0, -0x397($s1)
    /* FC8 80189F40 E871010C */  jal        func_8005C7A0
    /* FCC 80189F44 60000424 */   addiu     $a0, $zero, 0x60
    /* FD0 80189F48 00002392 */  lbu        $v1, 0x0($s1)
    /* FD4 80189F4C 00000000 */  nop
    /* FD8 80189F50 40180300 */  sll        $v1, $v1, 1
    /* FDC 80189F54 21187400 */  addu       $v1, $v1, $s4
    /* FE0 80189F58 08006394 */  lhu        $v1, 0x8($v1)
    /* FE4 80189F5C 01005226 */  addiu      $s2, $s2, 0x1
    /* FE8 80189F60 00FF6324 */  addiu      $v1, $v1, -0x100
    /* FEC 80189F64 23186200 */  subu       $v1, $v1, $v0
    /* FF0 80189F68 00002292 */  lbu        $v0, 0x0($s1)
    /* FF4 80189F6C E8037326 */  addiu      $s3, $s3, 0x3E8
    /* FF8 80189F70 6DFC23A6 */  sh         $v1, -0x393($s1)
    /* FFC 80189F74 40100200 */  sll        $v0, $v0, 1
    /* 1000 80189F78 21105400 */  addu       $v0, $v0, $s4
    /* 1004 80189F7C 080043A4 */  sh         $v1, 0x8($v0)
    /* 1008 80189F80 1600422A */  slti       $v0, $s2, 0x16
    /* 100C 80189F84 A2FF4014 */  bnez       $v0, .L80189E10
    /* 1010 80189F88 E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 1014 80189F8C 17000424 */  addiu      $a0, $zero, 0x17
    /* 1018 80189F90 41000524 */  addiu      $a1, $zero, 0x41
    /* 101C 80189F94 05000624 */  addiu      $a2, $zero, 0x5
    /* 1020 80189F98 00E00224 */  addiu      $v0, $zero, -0x2000
    /* 1024 80189F9C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1028 80189FA0 40000224 */  addiu      $v0, $zero, 0x40
    /* 102C 80189FA4 0C0E0324 */  addiu      $v1, $zero, 0xE0C
    /* 1030 80189FA8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1034 80189FAC 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1038 80189FB0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 103C 80189FB4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1040 80189FB8 21380000 */  addu       $a3, $zero, $zero
    /* 1044 80189FBC 1800A3AF */  sw         $v1, 0x18($sp)
    /* 1048 80189FC0 2000A3AF */  sw         $v1, 0x20($sp)
    /* 104C 80189FC4 5374000C */  jal        func_8001D14C
    /* 1050 80189FC8 2400A2AF */   sw        $v0, 0x24($sp)
    /* 1054 80189FCC 10000224 */  addiu      $v0, $zero, 0x10
    /* 1058 80189FD0 A00362AE */  sw         $v0, 0x3A0($s3)
    /* 105C 80189FD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1060 80189FD8 9C0362A2 */  sb         $v0, 0x39C($s3)
    /* 1064 80189FDC D30362A2 */  sb         $v0, 0x3D3($s3)
    /* 1068 80189FE0 5000BF8F */  lw         $ra, 0x50($sp)
    /* 106C 80189FE4 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 1070 80189FE8 4800B48F */  lw         $s4, 0x48($sp)
    /* 1074 80189FEC 4400B38F */  lw         $s3, 0x44($sp)
    /* 1078 80189FF0 4000B28F */  lw         $s2, 0x40($sp)
    /* 107C 80189FF4 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 1080 80189FF8 3800B08F */  lw         $s0, 0x38($sp)
    /* 1084 80189FFC 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 1088 8018A000 0800E003 */  jr         $ra
    /* 108C 8018A004 00000000 */   nop
endlabel func_80189DB4
