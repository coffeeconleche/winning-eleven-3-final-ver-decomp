nonmatching func_801B3D9C, 0x830

glabel func_801B3D9C
    /* 2AE24 801B3D9C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2AE28 801B3DA0 3400B7AF */  sw         $s7, 0x34($sp)
    /* 2AE2C 801B3DA4 21B88000 */  addu       $s7, $a0, $zero
    /* 2AE30 801B3DA8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2AE34 801B3DAC 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 2AE38 801B3DB0 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 2AE3C 801B3DB4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2AE40 801B3DB8 801F133C */  lui        $s3, (0x1F80029B >> 16)
    /* 2AE44 801B3DBC FF00E232 */  andi       $v0, $s7, 0xFF
    /* 2AE48 801B3DC0 4100422C */  sltiu      $v0, $v0, 0x41
    /* 2AE4C 801B3DC4 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 2AE50 801B3DC8 3800BEAF */  sw         $fp, 0x38($sp)
    /* 2AE54 801B3DCC 3000B6AF */  sw         $s6, 0x30($sp)
    /* 2AE58 801B3DD0 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2AE5C 801B3DD4 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2AE60 801B3DD8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2AE64 801B3DDC 02004014 */  bnez       $v0, .L801B3DE8
    /* 2AE68 801B3DE0 1800B0AF */   sw        $s0, 0x18($sp)
    /* 2AE6C 801B3DE4 BFFF9724 */  addiu      $s7, $a0, -0x41
  .L801B3DE8:
    /* 2AE70 801B3DE8 FF00E432 */  andi       $a0, $s7, 0xFF
    /* 2AE74 801B3DEC 80100400 */  sll        $v0, $a0, 2
    /* 2AE78 801B3DF0 1E80013C */  lui        $at, %hi(D_801D878C)
    /* 2AE7C 801B3DF4 8C8722A0 */  sb         $v0, %lo(D_801D878C)($at)
    /* 2AE80 801B3DF8 21D3060C */  jal        func_801B4C84
    /* 2AE84 801B3DFC 21880000 */   addu      $s1, $zero, $zero
    /* 2AE88 801B3E00 21F04000 */  addu       $fp, $v0, $zero
    /* 2AE8C 801B3E04 1E80033C */  lui        $v1, %hi(D_801D94E8)
    /* 2AE90 801B3E08 E8946324 */  addiu      $v1, $v1, %lo(D_801D94E8)
  .L801B3E0C:
    /* 2AE94 801B3E0C 2C001024 */  addiu      $s0, $zero, 0x2C
    /* 2AE98 801B3E10 2C006224 */  addiu      $v0, $v1, 0x2C
  .L801B3E14:
    /* 2AE9C 801B3E14 000040A0 */  sb         $zero, 0x0($v0)
    /* 2AEA0 801B3E18 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 2AEA4 801B3E1C FDFF0106 */  bgez       $s0, .L801B3E14
    /* 2AEA8 801B3E20 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2AEAC 801B3E24 2D001024 */  addiu      $s0, $zero, 0x2D
    /* 2AEB0 801B3E28 01003126 */  addiu      $s1, $s1, 0x1
    /* 2AEB4 801B3E2C 4100222A */  slti       $v0, $s1, 0x41
    /* 2AEB8 801B3E30 F6FF4014 */  bnez       $v0, .L801B3E0C
    /* 2AEBC 801B3E34 2D006324 */   addiu     $v1, $v1, 0x2D
    /* 2AEC0 801B3E38 0174000C */  jal        func_8001D004
    /* 2AEC4 801B3E3C A1300424 */   addiu     $a0, $zero, 0x30A1
    /* 2AEC8 801B3E40 AB300424 */  addiu      $a0, $zero, 0x30AB
    /* 2AECC 801B3E44 FF00F132 */  andi       $s1, $s7, 0xFF
    /* 2AED0 801B3E48 40181100 */  sll        $v1, $s1, 1
    /* 2AED4 801B3E4C 21187100 */  addu       $v1, $v1, $s1
    /* 2AED8 801B3E50 C0180300 */  sll        $v1, $v1, 3
    /* 2AEDC 801B3E54 0174000C */  jal        func_8001D004
    /* 2AEE0 801B3E58 030043A0 */   sb        $v1, 0x3($v0)
    /* 2AEE4 801B3E5C 21304000 */  addu       $a2, $v0, $zero
    /* 2AEE8 801B3E60 0A000324 */  addiu      $v1, $zero, 0xA
    /* 2AEEC 801B3E64 D5000224 */  addiu      $v0, $zero, 0xD5
    /* 2AEF0 801B3E68 0A00C3A0 */  sb         $v1, 0xA($a2)
    /* 2AEF4 801B3E6C 1600C2A0 */  sb         $v0, 0x16($a2)
    /* 2AEF8 801B3E70 2200C2A0 */  sb         $v0, 0x22($a2)
    /* 2AEFC 801B3E74 2E00C3A0 */  sb         $v1, 0x2E($a2)
    /* 2AF00 801B3E78 3A00C3A0 */  sb         $v1, 0x3A($a2)
    /* 2AF04 801B3E7C 4600C2A0 */  sb         $v0, 0x46($a2)
    /* 2AF08 801B3E80 06002016 */  bnez       $s1, .L801B3E9C
    /* 2AF0C 801B3E84 5200C2A0 */   sb        $v0, 0x52($a2)
    /* 2AF10 801B3E88 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 2AF14 801B3E8C 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 2AF18 801B3E90 1600C2A0 */  sb         $v0, 0x16($a2)
    /* 2AF1C 801B3E94 AFCF0608 */  j          .L801B3EBC
    /* 2AF20 801B3E98 2200C2A0 */   sb        $v0, 0x22($a2)
  .L801B3E9C:
    /* 2AF24 801B3E9C 07000224 */  addiu      $v0, $zero, 0x7
    /* 2AF28 801B3EA0 07002216 */  bne        $s1, $v0, .L801B3EC0
    /* 2AF2C 801B3EA4 0400022A */   slti      $v0, $s0, 0x4
    /* 2AF30 801B3EA8 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 2AF34 801B3EAC 2E00C2A0 */  sb         $v0, 0x2E($a2)
    /* 2AF38 801B3EB0 3A00C2A0 */  sb         $v0, 0x3A($a2)
    /* 2AF3C 801B3EB4 4600C2A0 */  sb         $v0, 0x46($a2)
    /* 2AF40 801B3EB8 5200C2A0 */  sb         $v0, 0x52($a2)
  .L801B3EBC:
    /* 2AF44 801B3EBC 0400022A */  slti       $v0, $s0, 0x4
  .L801B3EC0:
    /* 2AF48 801B3EC0 3B004014 */  bnez       $v0, .L801B3FB0
    /* 2AF4C 801B3EC4 00000000 */   nop
    /* 2AF50 801B3EC8 0174000C */  jal        func_8001D004
    /* 2AF54 801B3ECC A4300424 */   addiu     $a0, $zero, 0x30A4
    /* 2AF58 801B3ED0 9B026392 */  lbu        $v1, (0x1F80029B & 0xFFFF)($s3)
    /* 2AF5C 801B3ED4 21304000 */  addu       $a2, $v0, $zero
    /* 2AF60 801B3ED8 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2AF64 801B3EDC FF006330 */  andi       $v1, $v1, 0xFF
    /* 2AF68 801B3EE0 06006214 */  bne        $v1, $v0, .L801B3EFC
    /* 2AF6C 801B3EE4 0E000224 */   addiu     $v0, $zero, 0xE
    /* 2AF70 801B3EE8 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 2AF74 801B3EEC 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 2AF78 801B3EF0 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 2AF7C 801B3EF4 C6CF0608 */  j          .L801B3F18
    /* 2AF80 801B3EF8 1600C2A0 */   sb        $v0, 0x16($a2)
  .L801B3EFC:
    /* 2AF84 801B3EFC 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 2AF88 801B3F00 0100C293 */  lbu        $v0, 0x1($fp)
    /* 2AF8C 801B3F04 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 2AF90 801B3F08 1600C3A0 */  sb         $v1, 0x16($a2)
    /* 2AF94 801B3F0C C0100200 */  sll        $v0, $v0, 3
    /* 2AF98 801B3F10 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 2AF9C 801B3F14 0300C2A0 */  sb         $v0, 0x3($a2)
  .L801B3F18:
    /* 2AFA0 801B3F18 0174000C */  jal        func_8001D004
    /* 2AFA4 801B3F1C A5300424 */   addiu     $a0, $zero, 0x30A5
    /* 2AFA8 801B3F20 9B026392 */  lbu        $v1, (0x1F80029B & 0xFFFF)($s3)
    /* 2AFAC 801B3F24 21304000 */  addu       $a2, $v0, $zero
    /* 2AFB0 801B3F28 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2AFB4 801B3F2C FF006330 */  andi       $v1, $v1, 0xFF
    /* 2AFB8 801B3F30 06006214 */  bne        $v1, $v0, .L801B3F4C
    /* 2AFBC 801B3F34 0E000224 */   addiu     $v0, $zero, 0xE
    /* 2AFC0 801B3F38 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 2AFC4 801B3F3C 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 2AFC8 801B3F40 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 2AFCC 801B3F44 DACF0608 */  j          .L801B3F68
    /* 2AFD0 801B3F48 1600C2A0 */   sb        $v0, 0x16($a2)
  .L801B3F4C:
    /* 2AFD4 801B3F4C 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 2AFD8 801B3F50 0300C293 */  lbu        $v0, 0x3($fp)
    /* 2AFDC 801B3F54 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 2AFE0 801B3F58 1600C3A0 */  sb         $v1, 0x16($a2)
    /* 2AFE4 801B3F5C C0100200 */  sll        $v0, $v0, 3
    /* 2AFE8 801B3F60 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 2AFEC 801B3F64 0300C2A0 */  sb         $v0, 0x3($a2)
  .L801B3F68:
    /* 2AFF0 801B3F68 0174000C */  jal        func_8001D004
    /* 2AFF4 801B3F6C A6300424 */   addiu     $a0, $zero, 0x30A6
    /* 2AFF8 801B3F70 21304000 */  addu       $a2, $v0, $zero
    /* 2AFFC 801B3F74 0E001024 */  addiu      $s0, $zero, 0xE
    /* 2B000 801B3F78 0A00D0A0 */  sb         $s0, 0xA($a2)
    /* 2B004 801B3F7C 0500C293 */  lbu        $v0, 0x5($fp)
    /* 2B008 801B3F80 A7300424 */  addiu      $a0, $zero, 0x30A7
    /* 2B00C 801B3F84 C0100200 */  sll        $v0, $v0, 3
    /* 2B010 801B3F88 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 2B014 801B3F8C 0174000C */  jal        func_8001D004
    /* 2B018 801B3F90 0300C2A0 */   sb        $v0, 0x3($a2)
    /* 2B01C 801B3F94 21304000 */  addu       $a2, $v0, $zero
    /* 2B020 801B3F98 0A00D0A0 */  sb         $s0, 0xA($a2)
    /* 2B024 801B3F9C 0700C293 */  lbu        $v0, 0x7($fp)
    /* 2B028 801B3FA0 00000000 */  nop
    /* 2B02C 801B3FA4 C0100200 */  sll        $v0, $v0, 3
    /* 2B030 801B3FA8 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 2B034 801B3FAC 0300C2A0 */  sb         $v0, 0x3($a2)
  .L801B3FB0:
    /* 2B038 801B3FB0 0174000C */  jal        func_8001D004
    /* 2B03C 801B3FB4 A8300424 */   addiu     $a0, $zero, 0x30A8
    /* 2B040 801B3FB8 21304000 */  addu       $a2, $v0, $zero
    /* 2B044 801B3FBC 21880000 */  addu       $s1, $zero, $zero
    /* 2B048 801B3FC0 2180C003 */  addu       $s0, $fp, $zero
  .L801B3FC4:
    /* 2B04C 801B3FC4 00000392 */  lbu        $v1, 0x0($s0)
    /* 2B050 801B3FC8 00000000 */  nop
    /* 2B054 801B3FCC C0100300 */  sll        $v0, $v1, 3
    /* 2B058 801B3FD0 21104300 */  addu       $v0, $v0, $v1
    /* 2B05C 801B3FD4 80100200 */  sll        $v0, $v0, 2
    /* 2B060 801B3FD8 21104202 */  addu       $v0, $s2, $v0
    /* 2B064 801B3FDC 1E80013C */  lui        $at, %hi(D_801D878D)
    /* 2B068 801B3FE0 8D8723A0 */  sb         $v1, %lo(D_801D878D)($at)
    /* 2B06C 801B3FE4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B070 801B3FE8 21084100 */  addu       $at, $v0, $at
    /* 2B074 801B3FEC 288F2290 */  lbu        $v0, -0x70D8($at)
    /* 2B078 801B3FF0 00000000 */  nop
    /* 2B07C 801B3FF4 C0100200 */  sll        $v0, $v0, 3
    /* 2B080 801B3FF8 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 2B084 801B3FFC 0300C2A0 */  sb         $v0, 0x3($a2)
    /* 2B088 801B4000 1E80033C */  lui        $v1, %hi(D_801D878D)
    /* 2B08C 801B4004 8D876390 */  lbu        $v1, %lo(D_801D878D)($v1)
    /* 2B090 801B4008 00000000 */  nop
    /* 2B094 801B400C C0100300 */  sll        $v0, $v1, 3
    /* 2B098 801B4010 21104300 */  addu       $v0, $v0, $v1
    /* 2B09C 801B4014 80100200 */  sll        $v0, $v0, 2
    /* 2B0A0 801B4018 21104202 */  addu       $v0, $s2, $v0
    /* 2B0A4 801B401C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B0A8 801B4020 21084100 */  addu       $at, $v0, $at
    /* 2B0AC 801B4024 298F2290 */  lbu        $v0, -0x70D7($at)
    /* 2B0B0 801B4028 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 2B0B4 801B402C C0100200 */  sll        $v0, $v0, 3
    /* 2B0B8 801B4030 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 2B0BC 801B4034 0300C2A0 */  sb         $v0, 0x3($a2)
    /* 2B0C0 801B4038 1E80033C */  lui        $v1, %hi(D_801D878D)
    /* 2B0C4 801B403C 8D876390 */  lbu        $v1, %lo(D_801D878D)($v1)
    /* 2B0C8 801B4040 00000000 */  nop
    /* 2B0CC 801B4044 C0100300 */  sll        $v0, $v1, 3
    /* 2B0D0 801B4048 21104300 */  addu       $v0, $v0, $v1
    /* 2B0D4 801B404C 80100200 */  sll        $v0, $v0, 2
    /* 2B0D8 801B4050 21104202 */  addu       $v0, $s2, $v0
    /* 2B0DC 801B4054 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B0E0 801B4058 21084100 */  addu       $at, $v0, $at
    /* 2B0E4 801B405C 2A8F2290 */  lbu        $v0, -0x70D6($at)
    /* 2B0E8 801B4060 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 2B0EC 801B4064 C0100200 */  sll        $v0, $v0, 3
    /* 2B0F0 801B4068 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 2B0F4 801B406C 0300C2A0 */  sb         $v0, 0x3($a2)
    /* 2B0F8 801B4070 1E80033C */  lui        $v1, %hi(D_801D878D)
    /* 2B0FC 801B4074 8D876390 */  lbu        $v1, %lo(D_801D878D)($v1)
    /* 2B100 801B4078 00000000 */  nop
    /* 2B104 801B407C C0100300 */  sll        $v0, $v1, 3
    /* 2B108 801B4080 21104300 */  addu       $v0, $v0, $v1
    /* 2B10C 801B4084 80100200 */  sll        $v0, $v0, 2
    /* 2B110 801B4088 21104202 */  addu       $v0, $s2, $v0
    /* 2B114 801B408C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B118 801B4090 21084100 */  addu       $at, $v0, $at
    /* 2B11C 801B4094 2B8F2290 */  lbu        $v0, -0x70D5($at)
    /* 2B120 801B4098 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 2B124 801B409C C0100200 */  sll        $v0, $v0, 3
    /* 2B128 801B40A0 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 2B12C 801B40A4 0300C2A0 */  sb         $v0, 0x3($a2)
    /* 2B130 801B40A8 1E80033C */  lui        $v1, %hi(D_801D878D)
    /* 2B134 801B40AC 8D876390 */  lbu        $v1, %lo(D_801D878D)($v1)
    /* 2B138 801B40B0 02001026 */  addiu      $s0, $s0, 0x2
    /* 2B13C 801B40B4 C0100300 */  sll        $v0, $v1, 3
    /* 2B140 801B40B8 21104300 */  addu       $v0, $v0, $v1
    /* 2B144 801B40BC 80100200 */  sll        $v0, $v0, 2
    /* 2B148 801B40C0 21104202 */  addu       $v0, $s2, $v0
    /* 2B14C 801B40C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B150 801B40C8 21084100 */  addu       $at, $v0, $at
    /* 2B154 801B40CC 2C8F2594 */  lhu        $a1, -0x70D4($at)
    /* 2B158 801B40D0 DAC0060C */  jal        func_801B0368
    /* 2B15C 801B40D4 0C00C424 */   addiu     $a0, $a2, 0xC
    /* 2B160 801B40D8 1E80043C */  lui        $a0, %hi(D_801D878D)
    /* 2B164 801B40DC 8D878490 */  lbu        $a0, %lo(D_801D878D)($a0)
    /* 2B168 801B40E0 01003126 */  addiu      $s1, $s1, 0x1
    /* 2B16C 801B40E4 C0180400 */  sll        $v1, $a0, 3
    /* 2B170 801B40E8 21186400 */  addu       $v1, $v1, $a0
    /* 2B174 801B40EC 80180300 */  sll        $v1, $v1, 2
    /* 2B178 801B40F0 21184302 */  addu       $v1, $s2, $v1
    /* 2B17C 801B40F4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B180 801B40F8 21086100 */  addu       $at, $v1, $at
    /* 2B184 801B40FC 2E8F2594 */  lhu        $a1, -0x70D2($at)
    /* 2B188 801B4100 DAC0060C */  jal        func_801B0368
    /* 2B18C 801B4104 21204000 */   addu      $a0, $v0, $zero
    /* 2B190 801B4108 21304000 */  addu       $a2, $v0, $zero
    /* 2B194 801B410C 0400222A */  slti       $v0, $s1, 0x4
    /* 2B198 801B4110 ACFF4014 */  bnez       $v0, .L801B3FC4
    /* 2B19C 801B4114 00000000 */   nop
    /* 2B1A0 801B4118 0174000C */  jal        func_8001D004
    /* 2B1A4 801B411C A9300424 */   addiu     $a0, $zero, 0x30A9
    /* 2B1A8 801B4120 21304000 */  addu       $a2, $v0, $zero
    /* 2B1AC 801B4124 FF00E232 */  andi       $v0, $s7, 0xFF
    /* 2B1B0 801B4128 80100200 */  sll        $v0, $v0, 2
    /* 2B1B4 801B412C 1E80013C */  lui        $at, %hi(D_801D878C)
    /* 2B1B8 801B4130 8C8722A0 */  sb         $v0, %lo(D_801D878C)($at)
    /* 2B1BC 801B4134 21880000 */  addu       $s1, $zero, $zero
    /* 2B1C0 801B4138 21504000 */  addu       $t2, $v0, $zero
  .L801B413C:
    /* 2B1C4 801B413C 21800000 */  addu       $s0, $zero, $zero
    /* 2B1C8 801B4140 2138C000 */  addu       $a3, $a2, $zero
  .L801B4144:
    /* 2B1CC 801B4144 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 2B1D0 801B4148 44003012 */  beq        $s1, $s0, .L801B425C
    /* 2B1D4 801B414C 0A00E2A0 */   sb        $v0, 0xA($a3)
    /* 2B1D8 801B4150 21280000 */  addu       $a1, $zero, $zero
    /* 2B1DC 801B4154 21485001 */  addu       $t1, $t2, $s0
    /* 2B1E0 801B4158 2140E000 */  addu       $t0, $a3, $zero
  .L801B415C:
    /* 2B1E4 801B415C 1E80023C */  lui        $v0, %hi(D_801D878C)
    /* 2B1E8 801B4160 8C874290 */  lbu        $v0, %lo(D_801D878C)($v0)
    /* 2B1EC 801B4164 00000000 */  nop
    /* 2B1F0 801B4168 21105100 */  addu       $v0, $v0, $s1
    /* 2B1F4 801B416C 40180200 */  sll        $v1, $v0, 1
    /* 2B1F8 801B4170 21186200 */  addu       $v1, $v1, $v0
    /* 2B1FC 801B4174 21186500 */  addu       $v1, $v1, $a1
    /* 2B200 801B4178 80180300 */  sll        $v1, $v1, 2
    /* 2B204 801B417C 21184302 */  addu       $v1, $s2, $v1
    /* 2B208 801B4180 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B20C 801B4184 21086100 */  addu       $at, $v1, $at
    /* 2B210 801B4188 D0A92490 */  lbu        $a0, -0x5630($at)
    /* 2B214 801B418C 1E80013C */  lui        $at, %hi(D_801D878E)
    /* 2B218 801B4190 8E8724A0 */  sb         $a0, %lo(D_801D878E)($at)
    /* 2B21C 801B4194 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B220 801B4198 21086100 */  addu       $at, $v1, $at
    /* 2B224 801B419C D1A92290 */  lbu        $v0, -0x562F($at)
    /* 2B228 801B41A0 1E80013C */  lui        $at, %hi(D_801D878D)
    /* 2B22C 801B41A4 8D8722A0 */  sb         $v0, %lo(D_801D878D)($at)
    /* 2B230 801B41A8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B234 801B41AC 27004914 */  bne        $v0, $t1, .L801B424C
    /* 2B238 801B41B0 FF008330 */   andi      $v1, $a0, 0xFF
    /* 2B23C 801B41B4 02000224 */  addiu      $v0, $zero, 0x2
    /* 2B240 801B41B8 13006210 */  beq        $v1, $v0, .L801B4208
    /* 2B244 801B41BC 7E000224 */   addiu     $v0, $zero, 0x7E
    /* 2B248 801B41C0 03006228 */  slti       $v0, $v1, 0x3
    /* 2B24C 801B41C4 05004010 */  beqz       $v0, .L801B41DC
    /* 2B250 801B41C8 01000224 */   addiu     $v0, $zero, 0x1
    /* 2B254 801B41CC 08006210 */  beq        $v1, $v0, .L801B41F0
    /* 2B258 801B41D0 7D000224 */   addiu     $v0, $zero, 0x7D
    /* 2B25C 801B41D4 8BD00608 */  j          .L801B422C
    /* 2B260 801B41D8 00000000 */   nop
  .L801B41DC:
    /* 2B264 801B41DC 03000224 */  addiu      $v0, $zero, 0x3
    /* 2B268 801B41E0 0D006210 */  beq        $v1, $v0, .L801B4218
    /* 2B26C 801B41E4 7F000224 */   addiu     $v0, $zero, 0x7F
    /* 2B270 801B41E8 8BD00608 */  j          .L801B422C
    /* 2B274 801B41EC 00000000 */   nop
  .L801B41F0:
    /* 2B278 801B41F0 1E80013C */  lui        $at, %hi(D_801D8790)
    /* 2B27C 801B41F4 908722A0 */  sb         $v0, %lo(D_801D8790)($at)
    /* 2B280 801B41F8 1E80013C */  lui        $at, %hi(D_801D878F)
    /* 2B284 801B41FC 8F8720A0 */  sb         $zero, %lo(D_801D878F)($at)
    /* 2B288 801B4200 8BD00608 */  j          .L801B422C
    /* 2B28C 801B4204 00000000 */   nop
  .L801B4208:
    /* 2B290 801B4208 1E80013C */  lui        $at, %hi(D_801D8790)
    /* 2B294 801B420C 908722A0 */  sb         $v0, %lo(D_801D8790)($at)
    /* 2B298 801B4210 89D00608 */  j          .L801B4224
    /* 2B29C 801B4214 10000224 */   addiu     $v0, $zero, 0x10
  .L801B4218:
    /* 2B2A0 801B4218 1E80013C */  lui        $at, %hi(D_801D8790)
    /* 2B2A4 801B421C 908722A0 */  sb         $v0, %lo(D_801D8790)($at)
    /* 2B2A8 801B4220 20000224 */  addiu      $v0, $zero, 0x20
  .L801B4224:
    /* 2B2AC 801B4224 1E80013C */  lui        $at, %hi(D_801D878F)
    /* 2B2B0 801B4228 8F8722A0 */  sb         $v0, %lo(D_801D878F)($at)
  .L801B422C:
    /* 2B2B4 801B422C 1E80023C */  lui        $v0, %hi(D_801D8790)
    /* 2B2B8 801B4230 90874290 */  lbu        $v0, %lo(D_801D8790)($v0)
    /* 2B2BC 801B4234 00000000 */  nop
    /* 2B2C0 801B4238 0A0002A1 */  sb         $v0, 0xA($t0)
    /* 2B2C4 801B423C 1E80023C */  lui        $v0, %hi(D_801D878F)
    /* 2B2C8 801B4240 8F874290 */  lbu        $v0, %lo(D_801D878F)($v0)
    /* 2B2CC 801B4244 00000000 */  nop
    /* 2B2D0 801B4248 030002A1 */  sb         $v0, 0x3($t0)
  .L801B424C:
    /* 2B2D4 801B424C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2B2D8 801B4250 0300A228 */  slti       $v0, $a1, 0x3
    /* 2B2DC 801B4254 C1FF4014 */  bnez       $v0, .L801B415C
    /* 2B2E0 801B4258 00000000 */   nop
  .L801B425C:
    /* 2B2E4 801B425C 01001026 */  addiu      $s0, $s0, 0x1
    /* 2B2E8 801B4260 0400022A */  slti       $v0, $s0, 0x4
    /* 2B2EC 801B4264 B7FF4014 */  bnez       $v0, .L801B4144
    /* 2B2F0 801B4268 0C00E724 */   addiu     $a3, $a3, 0xC
    /* 2B2F4 801B426C 01003126 */  addiu      $s1, $s1, 0x1
    /* 2B2F8 801B4270 0400222A */  slti       $v0, $s1, 0x4
    /* 2B2FC 801B4274 B1FF4014 */  bnez       $v0, .L801B413C
    /* 2B300 801B4278 3000C624 */   addiu     $a2, $a2, 0x30
    /* 2B304 801B427C 21800000 */  addu       $s0, $zero, $zero
    /* 2B308 801B4280 21880000 */  addu       $s1, $zero, $zero
    /* 2B30C 801B4284 80AB1534 */  ori        $s5, $zero, 0xAB80
    /* 2B310 801B4288 1C001624 */  addiu      $s6, $zero, 0x1C
    /* 2B314 801B428C 21A0C003 */  addu       $s4, $fp, $zero
    /* 2B318 801B4290 21980000 */  addu       $s3, $zero, $zero
  .L801B4294:
    /* 2B31C 801B4294 1E80033C */  lui        $v1, %hi(D_801D94E8)
    /* 2B320 801B4298 E8946324 */  addiu      $v1, $v1, %lo(D_801D94E8)
    /* 2B324 801B429C 00008292 */  lbu        $v0, 0x0($s4)
    /* 2B328 801B42A0 21306302 */  addu       $a2, $s3, $v1
    /* 2B32C 801B42A4 1E80013C */  lui        $at, %hi(D_801D878D)
    /* 2B330 801B42A8 8D8722A0 */  sb         $v0, %lo(D_801D878D)($at)
    /* 2B334 801B42AC 21105200 */  addu       $v0, $v0, $s2
    /* 2B338 801B42B0 21105500 */  addu       $v0, $v0, $s5
    /* 2B33C 801B42B4 00004390 */  lbu        $v1, 0x0($v0)
    /* 2B340 801B42B8 2120C000 */  addu       $a0, $a2, $zero
    /* 2B344 801B42BC C0100300 */  sll        $v0, $v1, 3
    /* 2B348 801B42C0 21104300 */  addu       $v0, $v0, $v1
    /* 2B34C 801B42C4 80100200 */  sll        $v0, $v0, 2
    /* 2B350 801B42C8 21104202 */  addu       $v0, $s2, $v0
    /* 2B354 801B42CC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B358 801B42D0 21084100 */  addu       $at, $v0, $at
    /* 2B35C 801B42D4 248F2790 */  lbu        $a3, -0x70DC($at)
    /* 2B360 801B42D8 04000524 */  addiu      $a1, $zero, 0x4
    /* 2B364 801B42DC C000E630 */  andi       $a2, $a3, 0xC0
    /* 2B368 801B42E0 3F00E730 */  andi       $a3, $a3, 0x3F
    /* 2B36C 801B42E4 5AA4060C */  jal        func_801A9168
    /* 2B370 801B42E8 0100E724 */   addiu     $a3, $a3, 0x1
    /* 2B374 801B42EC 21304000 */  addu       $a2, $v0, $zero
    /* 2B378 801B42F0 09000224 */  addiu      $v0, $zero, 0x9
    /* 2B37C 801B42F4 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B380 801B42F8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B384 801B42FC 0000D6A0 */  sb         $s6, 0x0($a2)
    /* 2B388 801B4300 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B38C 801B4304 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 2B390 801B4308 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B394 801B430C 1E80023C */  lui        $v0, %hi(D_801D878D)
    /* 2B398 801B4310 8D874290 */  lbu        $v0, %lo(D_801D878D)($v0)
    /* 2B39C 801B4314 00000000 */  nop
    /* 2B3A0 801B4318 21104202 */  addu       $v0, $s2, $v0
    /* 2B3A4 801B431C 21105500 */  addu       $v0, $v0, $s5
    /* 2B3A8 801B4320 00004390 */  lbu        $v1, 0x0($v0)
    /* 2B3AC 801B4324 2D007326 */  addiu      $s3, $s3, 0x2D
    /* 2B3B0 801B4328 C0100300 */  sll        $v0, $v1, 3
    /* 2B3B4 801B432C 21104300 */  addu       $v0, $v0, $v1
    /* 2B3B8 801B4330 80100200 */  sll        $v0, $v0, 2
    /* 2B3BC 801B4334 21104202 */  addu       $v0, $s2, $v0
    /* 2B3C0 801B4338 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B3C4 801B433C 21084100 */  addu       $at, $v0, $at
    /* 2B3C8 801B4340 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 2B3CC 801B4344 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B3D0 801B4348 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B3D4 801B434C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B3D8 801B4350 20000224 */  addiu      $v0, $zero, 0x20
    /* 2B3DC 801B4354 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B3E0 801B4358 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B3E4 801B435C 0000D6A0 */  sb         $s6, 0x0($a2)
    /* 2B3E8 801B4360 1E80023C */  lui        $v0, %hi(D_801D878D)
    /* 2B3EC 801B4364 8D874290 */  lbu        $v0, %lo(D_801D878D)($v0)
    /* 2B3F0 801B4368 01001026 */  addiu      $s0, $s0, 0x1
    /* 2B3F4 801B436C 21104202 */  addu       $v0, $s2, $v0
    /* 2B3F8 801B4370 21105500 */  addu       $v0, $v0, $s5
    /* 2B3FC 801B4374 00004390 */  lbu        $v1, 0x0($v0)
    /* 2B400 801B4378 00000000 */  nop
    /* 2B404 801B437C C0100300 */  sll        $v0, $v1, 3
    /* 2B408 801B4380 21104300 */  addu       $v0, $v0, $v1
    /* 2B40C 801B4384 80100200 */  sll        $v0, $v0, 2
    /* 2B410 801B4388 21104202 */  addu       $v0, $s2, $v0
    /* 2B414 801B438C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B418 801B4390 21084100 */  addu       $at, $v0, $at
    /* 2B41C 801B4394 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 2B420 801B4398 01003126 */  addiu      $s1, $s1, 0x1
    /* 2B424 801B439C 0100C2A0 */  sb         $v0, 0x1($a2)
    /* 2B428 801B43A0 0400222A */  slti       $v0, $s1, 0x4
    /* 2B42C 801B43A4 BBFF4014 */  bnez       $v0, .L801B4294
    /* 2B430 801B43A8 02009426 */   addiu     $s4, $s4, 0x2
    /* 2B434 801B43AC 21880000 */  addu       $s1, $zero, $zero
    /* 2B438 801B43B0 FF00E232 */  andi       $v0, $s7, 0xFF
    /* 2B43C 801B43B4 80100200 */  sll        $v0, $v0, 2
    /* 2B440 801B43B8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2B444 801B43BC 80AB1434 */  ori        $s4, $zero, 0xAB80
    /* 2B448 801B43C0 1C001624 */  addiu      $s6, $zero, 0x1C
    /* 2B44C 801B43C4 40101000 */  sll        $v0, $s0, 1
    /* 2B450 801B43C8 21105000 */  addu       $v0, $v0, $s0
    /* 2B454 801B43CC 00190200 */  sll        $v1, $v0, 4
    /* 2B458 801B43D0 23986200 */  subu       $s3, $v1, $v0
  .L801B43D4:
    /* 2B45C 801B43D4 1E80153C */  lui        $s5, %hi(D_801D94E8)
    /* 2B460 801B43D8 E894B526 */  addiu      $s5, $s5, %lo(D_801D94E8)
    /* 2B464 801B43DC 1000AC8F */  lw         $t4, 0x10($sp)
    /* 2B468 801B43E0 21307502 */  addu       $a2, $s3, $s5
    /* 2B46C 801B43E4 21109101 */  addu       $v0, $t4, $s1
    /* 2B470 801B43E8 1E80013C */  lui        $at, %hi(D_801D878D)
    /* 2B474 801B43EC 8D8722A0 */  sb         $v0, %lo(D_801D878D)($at)
    /* 2B478 801B43F0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B47C 801B43F4 21104202 */  addu       $v0, $s2, $v0
    /* 2B480 801B43F8 21105400 */  addu       $v0, $v0, $s4
    /* 2B484 801B43FC 00004390 */  lbu        $v1, 0x0($v0)
    /* 2B488 801B4400 2120C000 */  addu       $a0, $a2, $zero
    /* 2B48C 801B4404 C0100300 */  sll        $v0, $v1, 3
    /* 2B490 801B4408 21104300 */  addu       $v0, $v0, $v1
    /* 2B494 801B440C 80100200 */  sll        $v0, $v0, 2
    /* 2B498 801B4410 21104202 */  addu       $v0, $s2, $v0
    /* 2B49C 801B4414 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B4A0 801B4418 21084100 */  addu       $at, $v0, $at
    /* 2B4A4 801B441C 248F2790 */  lbu        $a3, -0x70DC($at)
    /* 2B4A8 801B4420 04000524 */  addiu      $a1, $zero, 0x4
    /* 2B4AC 801B4424 C000E630 */  andi       $a2, $a3, 0xC0
    /* 2B4B0 801B4428 3F00E730 */  andi       $a3, $a3, 0x3F
    /* 2B4B4 801B442C 5AA4060C */  jal        func_801A9168
    /* 2B4B8 801B4430 0100E724 */   addiu     $a3, $a3, 0x1
    /* 2B4BC 801B4434 21304000 */  addu       $a2, $v0, $zero
    /* 2B4C0 801B4438 09000224 */  addiu      $v0, $zero, 0x9
    /* 2B4C4 801B443C 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B4C8 801B4440 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B4CC 801B4444 0000D6A0 */  sb         $s6, 0x0($a2)
    /* 2B4D0 801B4448 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B4D4 801B444C 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 2B4D8 801B4450 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B4DC 801B4454 1E80023C */  lui        $v0, %hi(D_801D878D)
    /* 2B4E0 801B4458 8D874290 */  lbu        $v0, %lo(D_801D878D)($v0)
    /* 2B4E4 801B445C 00000000 */  nop
    /* 2B4E8 801B4460 21104202 */  addu       $v0, $s2, $v0
    /* 2B4EC 801B4464 21105400 */  addu       $v0, $v0, $s4
    /* 2B4F0 801B4468 00004390 */  lbu        $v1, 0x0($v0)
    /* 2B4F4 801B446C 00000000 */  nop
    /* 2B4F8 801B4470 C0100300 */  sll        $v0, $v1, 3
    /* 2B4FC 801B4474 21104300 */  addu       $v0, $v0, $v1
    /* 2B500 801B4478 80100200 */  sll        $v0, $v0, 2
    /* 2B504 801B447C 21104202 */  addu       $v0, $s2, $v0
    /* 2B508 801B4480 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B50C 801B4484 21084100 */  addu       $at, $v0, $at
    /* 2B510 801B4488 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 2B514 801B448C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B518 801B4490 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B51C 801B4494 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B520 801B4498 20000224 */  addiu      $v0, $zero, 0x20
    /* 2B524 801B449C 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B528 801B44A0 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B52C 801B44A4 0000D6A0 */  sb         $s6, 0x0($a2)
    /* 2B530 801B44A8 1E80023C */  lui        $v0, %hi(D_801D878D)
    /* 2B534 801B44AC 8D874290 */  lbu        $v0, %lo(D_801D878D)($v0)
    /* 2B538 801B44B0 2D007326 */  addiu      $s3, $s3, 0x2D
    /* 2B53C 801B44B4 21104202 */  addu       $v0, $s2, $v0
    /* 2B540 801B44B8 21105400 */  addu       $v0, $v0, $s4
    /* 2B544 801B44BC 00004390 */  lbu        $v1, 0x0($v0)
    /* 2B548 801B44C0 00000000 */  nop
    /* 2B54C 801B44C4 C0100300 */  sll        $v0, $v1, 3
    /* 2B550 801B44C8 21104300 */  addu       $v0, $v0, $v1
    /* 2B554 801B44CC 80100200 */  sll        $v0, $v0, 2
    /* 2B558 801B44D0 21104202 */  addu       $v0, $s2, $v0
    /* 2B55C 801B44D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B560 801B44D8 21084100 */  addu       $at, $v0, $at
    /* 2B564 801B44DC 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 2B568 801B44E0 01003126 */  addiu      $s1, $s1, 0x1
    /* 2B56C 801B44E4 0100C2A0 */  sb         $v0, 0x1($a2)
    /* 2B570 801B44E8 0400222A */  slti       $v0, $s1, 0x4
    /* 2B574 801B44EC B9FF4014 */  bnez       $v0, .L801B43D4
    /* 2B578 801B44F0 01001026 */   addiu     $s0, $s0, 0x1
    /* 2B57C 801B44F4 40101000 */  sll        $v0, $s0, 1
    /* 2B580 801B44F8 21105000 */  addu       $v0, $v0, $s0
    /* 2B584 801B44FC 00190200 */  sll        $v1, $v0, 4
    /* 2B588 801B4500 23186200 */  subu       $v1, $v1, $v0
    /* 2B58C 801B4504 21307500 */  addu       $a2, $v1, $s5
    /* 2B590 801B4508 21880000 */  addu       $s1, $zero, $zero
    /* 2B594 801B450C 1E000B24 */  addiu      $t3, $zero, 0x1E
    /* 2B598 801B4510 FF00E232 */  andi       $v0, $s7, 0xFF
    /* 2B59C 801B4514 80380200 */  sll        $a3, $v0, 2
    /* 2B5A0 801B4518 80AB0A34 */  ori        $t2, $zero, 0xAB80
    /* 2B5A4 801B451C 20000924 */  addiu      $t1, $zero, 0x20
    /* 2B5A8 801B4520 09000824 */  addiu      $t0, $zero, 0x9
  .L801B4524:
    /* 2B5AC 801B4524 0000CBA0 */  sb         $t3, 0x0($a2)
    /* 2B5B0 801B4528 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B5B4 801B452C 2110F100 */  addu       $v0, $a3, $s1
    /* 2B5B8 801B4530 21104202 */  addu       $v0, $s2, $v0
    /* 2B5BC 801B4534 21104A00 */  addu       $v0, $v0, $t2
    /* 2B5C0 801B4538 01002426 */  addiu      $a0, $s1, 0x1
    /* 2B5C4 801B453C C0280400 */  sll        $a1, $a0, 3
    /* 2B5C8 801B4540 2128A400 */  addu       $a1, $a1, $a0
    /* 2B5CC 801B4544 00004390 */  lbu        $v1, 0x0($v0)
    /* 2B5D0 801B4548 80280500 */  sll        $a1, $a1, 2
    /* 2B5D4 801B454C C0100300 */  sll        $v0, $v1, 3
    /* 2B5D8 801B4550 21104300 */  addu       $v0, $v0, $v1
    /* 2B5DC 801B4554 80100200 */  sll        $v0, $v0, 2
    /* 2B5E0 801B4558 21104202 */  addu       $v0, $s2, $v0
    /* 2B5E4 801B455C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2B5E8 801B4560 21084100 */  addu       $at, $v0, $at
    /* 2B5EC 801B4564 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 2B5F0 801B4568 21888000 */  addu       $s1, $a0, $zero
    /* 2B5F4 801B456C 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 2B5F8 801B4570 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B5FC 801B4574 0000C9A0 */  sb         $t1, 0x0($a2)
    /* 2B600 801B4578 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B604 801B457C 0000C8A0 */  sb         $t0, 0x0($a2)
    /* 2B608 801B4580 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2B60C 801B4584 0000C5A0 */  sb         $a1, 0x0($a2)
    /* 2B610 801B4588 0400222A */  slti       $v0, $s1, 0x4
    /* 2B614 801B458C E5FF4014 */  bnez       $v0, .L801B4524
    /* 2B618 801B4590 0100C624 */   addiu     $a2, $a2, 0x1
    /* 2B61C 801B4594 2110C003 */  addu       $v0, $fp, $zero
    /* 2B620 801B4598 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 2B624 801B459C 3800BE8F */  lw         $fp, 0x38($sp)
    /* 2B628 801B45A0 3400B78F */  lw         $s7, 0x34($sp)
    /* 2B62C 801B45A4 3000B68F */  lw         $s6, 0x30($sp)
    /* 2B630 801B45A8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2B634 801B45AC 2800B48F */  lw         $s4, 0x28($sp)
    /* 2B638 801B45B0 2400B38F */  lw         $s3, 0x24($sp)
    /* 2B63C 801B45B4 2000B28F */  lw         $s2, 0x20($sp)
    /* 2B640 801B45B8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2B644 801B45BC 1800B08F */  lw         $s0, 0x18($sp)
    /* 2B648 801B45C0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2B64C 801B45C4 0800E003 */  jr         $ra
    /* 2B650 801B45C8 00000000 */   nop
endlabel func_801B3D9C
