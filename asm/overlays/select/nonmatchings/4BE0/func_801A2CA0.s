nonmatching func_801A2CA0, 0x2F0

glabel func_801A2CA0
    /* 19D28 801A2CA0 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 19D2C 801A2CA4 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 19D30 801A2CA8 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 19D34 801A2CAC 6000B2AF */  sw         $s2, 0x60($sp)
    /* 19D38 801A2CB0 21908000 */  addu       $s2, $a0, $zero
    /* 19D3C 801A2CB4 7400B7AF */  sw         $s7, 0x74($sp)
    /* 19D40 801A2CB8 1080173C */  lui        $s7, %hi(D_800FF748)
    /* 19D44 801A2CBC 48F7F726 */  addiu      $s7, $s7, %lo(D_800FF748)
    /* 19D48 801A2CC0 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 19D4C 801A2CC4 7800BEAF */  sw         $fp, 0x78($sp)
    /* 19D50 801A2CC8 7000B6AF */  sw         $s6, 0x70($sp)
    /* 19D54 801A2CCC 6C00B5AF */  sw         $s5, 0x6C($sp)
    /* 19D58 801A2CD0 6800B4AF */  sw         $s4, 0x68($sp)
    /* 19D5C 801A2CD4 6400B3AF */  sw         $s3, 0x64($sp)
    /* 19D60 801A2CD8 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* 19D64 801A2CDC 5800B0AF */  sw         $s0, 0x58($sp)
    /* 19D68 801A2CE0 06006010 */  beqz       $v1, .L801A2CFC
    /* 19D6C 801A2CE4 4800A5A3 */   sb        $a1, 0x48($sp)
    /* 19D70 801A2CE8 01000224 */  addiu      $v0, $zero, 0x1
    /* 19D74 801A2CEC 1E006210 */  beq        $v1, $v0, .L801A2D68
    /* 19D78 801A2CF0 FF00D633 */   andi      $s6, $fp, 0xFF
    /* 19D7C 801A2CF4 648B0608 */  j          .L801A2D90
    /* 19D80 801A2CF8 00000000 */   nop
  .L801A2CFC:
    /* 19D84 801A2CFC 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 19D88 801A2D00 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 19D8C 801A2D04 00000000 */  nop
    /* 19D90 801A2D08 21105700 */  addu       $v0, $v0, $s7
    /* 19D94 801A2D0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19D98 801A2D10 21084100 */  addu       $at, $v0, $at
    /* 19D9C 801A2D14 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 19DA0 801A2D18 00000000 */  nop
    /* 19DA4 801A2D1C C0100300 */  sll        $v0, $v1, 3
    /* 19DA8 801A2D20 21104300 */  addu       $v0, $v0, $v1
    /* 19DAC 801A2D24 80100200 */  sll        $v0, $v0, 2
    /* 19DB0 801A2D28 21105700 */  addu       $v0, $v0, $s7
    /* 19DB4 801A2D2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19DB8 801A2D30 21084100 */  addu       $at, $v0, $at
    /* 19DBC 801A2D34 258F2490 */  lbu        $a0, -0x70DB($at)
    /* 19DC0 801A2D38 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 19DC4 801A2D3C 03008214 */  bne        $a0, $v0, .L801A2D4C
    /* 19DC8 801A2D40 21F00000 */   addu      $fp, $zero, $zero
    /* 19DCC 801A2D44 568B0608 */  j          .L801A2D58
    /* 19DD0 801A2D48 21900000 */   addu      $s2, $zero, $zero
  .L801A2D4C:
    /* 19DD4 801A2D4C B48D060C */  jal        func_801A36D0
    /* 19DD8 801A2D50 00000000 */   nop
    /* 19DDC 801A2D54 21F04000 */  addu       $fp, $v0, $zero
  .L801A2D58:
    /* 19DE0 801A2D58 801F043C */  lui        $a0, (0x1F8002DE >> 16)
    /* 19DE4 801A2D5C DE028490 */  lbu        $a0, (0x1F8002DE & 0xFFFF)($a0)
    /* 19DE8 801A2D60 618B0608 */  j          .L801A2D84
    /* 19DEC 801A2D64 00000000 */   nop
  .L801A2D68:
    /* 19DF0 801A2D68 801F043C */  lui        $a0, (0x1F8002DD >> 16)
    /* 19DF4 801A2D6C DD028490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($a0)
    /* 19DF8 801A2D70 B48D060C */  jal        func_801A36D0
    /* 19DFC 801A2D74 00000000 */   nop
    /* 19E00 801A2D78 801F043C */  lui        $a0, (0x1F8002DE >> 16)
    /* 19E04 801A2D7C DE028490 */  lbu        $a0, (0x1F8002DE & 0xFFFF)($a0)
    /* 19E08 801A2D80 21F04000 */  addu       $fp, $v0, $zero
  .L801A2D84:
    /* 19E0C 801A2D84 B48D060C */  jal        func_801A36D0
    /* 19E10 801A2D88 FF00D633 */   andi      $s6, $fp, 0xFF
    /* 19E14 801A2D8C 5000A2A3 */  sb         $v0, 0x50($sp)
  .L801A2D90:
    /* 19E18 801A2D90 06000224 */  addiu      $v0, $zero, 0x6
    /* 19E1C 801A2D94 0800C216 */  bne        $s6, $v0, .L801A2DB8
    /* 19E20 801A2D98 07000424 */   addiu     $a0, $zero, 0x7
    /* 19E24 801A2D9C DC5EE0A2 */  sb         $zero, 0x5EDC($s7)
    /* 19E28 801A2DA0 2C5FE0A2 */  sb         $zero, 0x5F2C($s7)
    /* 19E2C 801A2DA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19E30 801A2DA8 2108E102 */  addu       $at, $s7, $at
    /* 19E34 801A2DAC 20AC32A0 */  sb         $s2, -0x53E0($at)
    /* 19E38 801A2DB0 9A8B0608 */  j          .L801A2E68
    /* 19E3C 801A2DB4 00000000 */   nop
  .L801A2DB8:
    /* 19E40 801A2DB8 5230C526 */  addiu      $a1, $s6, 0x3052
    /* 19E44 801A2DBC 21300000 */  addu       $a2, $zero, $zero
    /* 19E48 801A2DC0 21380000 */  addu       $a3, $zero, $zero
    /* 19E4C 801A2DC4 01001524 */  addiu      $s5, $zero, 0x1
    /* 19E50 801A2DC8 1A001424 */  addiu      $s4, $zero, 0x1A
    /* 19E54 801A2DCC 00101124 */  addiu      $s1, $zero, 0x1000
    /* 19E58 801A2DD0 80001024 */  addiu      $s0, $zero, 0x80
    /* 19E5C 801A2DD4 05001324 */  addiu      $s3, $zero, 0x5
    /* 19E60 801A2DD8 FF005232 */  andi       $s2, $s2, 0xFF
    /* 19E64 801A2DDC 1000B5AF */  sw         $s5, 0x10($sp)
    /* 19E68 801A2DE0 1400B4AF */  sw         $s4, 0x14($sp)
    /* 19E6C 801A2DE4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 19E70 801A2DE8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 19E74 801A2DEC 2000B1AF */  sw         $s1, 0x20($sp)
    /* 19E78 801A2DF0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 19E7C 801A2DF4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 19E80 801A2DF8 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 19E84 801A2DFC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 19E88 801A2E00 3400B0AF */  sw         $s0, 0x34($sp)
    /* 19E8C 801A2E04 3800A0AF */  sw         $zero, 0x38($sp)
    /* 19E90 801A2E08 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 19E94 801A2E0C ED4F060C */  jal        func_80193FB4
    /* 19E98 801A2E10 4000B2AF */   sw        $s2, 0x40($sp)
    /* 19E9C 801A2E14 09000424 */  addiu      $a0, $zero, 0x9
    /* 19EA0 801A2E18 5930C526 */  addiu      $a1, $s6, 0x3059
    /* 19EA4 801A2E1C 21300000 */  addu       $a2, $zero, $zero
    /* 19EA8 801A2E20 21380000 */  addu       $a3, $zero, $zero
    /* 19EAC 801A2E24 1000B5AF */  sw         $s5, 0x10($sp)
    /* 19EB0 801A2E28 1400B4AF */  sw         $s4, 0x14($sp)
    /* 19EB4 801A2E2C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 19EB8 801A2E30 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 19EBC 801A2E34 2000B1AF */  sw         $s1, 0x20($sp)
    /* 19EC0 801A2E38 2400A0AF */  sw         $zero, 0x24($sp)
    /* 19EC4 801A2E3C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 19EC8 801A2E40 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 19ECC 801A2E44 3000B0AF */  sw         $s0, 0x30($sp)
    /* 19ED0 801A2E48 3400B0AF */  sw         $s0, 0x34($sp)
    /* 19ED4 801A2E4C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 19ED8 801A2E50 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 19EDC 801A2E54 ED4F060C */  jal        func_80193FB4
    /* 19EE0 801A2E58 4000B2AF */   sw        $s2, 0x40($sp)
    /* 19EE4 801A2E5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19EE8 801A2E60 2108E102 */  addu       $at, $s7, $at
    /* 19EEC 801A2E64 20AC20A0 */  sb         $zero, -0x53E0($at)
  .L801A2E68:
    /* 19EF0 801A2E68 5000B693 */  lbu        $s6, 0x50($sp)
    /* 19EF4 801A2E6C 06000224 */  addiu      $v0, $zero, 0x6
    /* 19EF8 801A2E70 0900C216 */  bne        $s6, $v0, .L801A2E98
    /* 19EFC 801A2E74 08000424 */   addiu     $a0, $zero, 0x8
    /* 19F00 801A2E78 045FE0A2 */  sb         $zero, 0x5F04($s7)
    /* 19F04 801A2E7C 545FE0A2 */  sb         $zero, 0x5F54($s7)
    /* 19F08 801A2E80 4800A893 */  lbu        $t0, 0x48($sp)
    /* 19F0C 801A2E84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19F10 801A2E88 2108E102 */  addu       $at, $s7, $at
    /* 19F14 801A2E8C 21AC28A0 */  sb         $t0, -0x53DF($at)
    /* 19F18 801A2E90 D78B0608 */  j          .L801A2F5C
    /* 19F1C 801A2E94 FF00C233 */   andi      $v0, $fp, 0xFF
  .L801A2E98:
    /* 19F20 801A2E98 5230C526 */  addiu      $a1, $s6, 0x3052
    /* 19F24 801A2E9C 21300000 */  addu       $a2, $zero, $zero
    /* 19F28 801A2EA0 01001524 */  addiu      $s5, $zero, 0x1
    /* 19F2C 801A2EA4 1A001424 */  addiu      $s4, $zero, 0x1A
    /* 19F30 801A2EA8 00101124 */  addiu      $s1, $zero, 0x1000
    /* 19F34 801A2EAC 80001024 */  addiu      $s0, $zero, 0x80
    /* 19F38 801A2EB0 1980013C */  lui        $at, %hi(D_80189FFC)
    /* 19F3C 801A2EB4 21083600 */  addu       $at, $at, $s6
    /* 19F40 801A2EB8 FC9F2790 */  lbu        $a3, %lo(D_80189FFC)($at)
    /* 19F44 801A2EBC 4800B293 */  lbu        $s2, 0x48($sp)
    /* 19F48 801A2EC0 05001324 */  addiu      $s3, $zero, 0x5
    /* 19F4C 801A2EC4 1000B5AF */  sw         $s5, 0x10($sp)
    /* 19F50 801A2EC8 1400B4AF */  sw         $s4, 0x14($sp)
    /* 19F54 801A2ECC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 19F58 801A2ED0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 19F5C 801A2ED4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 19F60 801A2ED8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 19F64 801A2EDC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 19F68 801A2EE0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 19F6C 801A2EE4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 19F70 801A2EE8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 19F74 801A2EEC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 19F78 801A2EF0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 19F7C 801A2EF4 ED4F060C */  jal        func_80193FB4
    /* 19F80 801A2EF8 4000B2AF */   sw        $s2, 0x40($sp)
    /* 19F84 801A2EFC 0A000424 */  addiu      $a0, $zero, 0xA
    /* 19F88 801A2F00 5930C526 */  addiu      $a1, $s6, 0x3059
    /* 19F8C 801A2F04 1980013C */  lui        $at, %hi(D_8018A004)
    /* 19F90 801A2F08 21083600 */  addu       $at, $at, $s6
    /* 19F94 801A2F0C 04A02790 */  lbu        $a3, %lo(D_8018A004)($at)
    /* 19F98 801A2F10 21300000 */  addu       $a2, $zero, $zero
    /* 19F9C 801A2F14 1000B5AF */  sw         $s5, 0x10($sp)
    /* 19FA0 801A2F18 1400B4AF */  sw         $s4, 0x14($sp)
    /* 19FA4 801A2F1C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 19FA8 801A2F20 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 19FAC 801A2F24 2000B1AF */  sw         $s1, 0x20($sp)
    /* 19FB0 801A2F28 2400A0AF */  sw         $zero, 0x24($sp)
    /* 19FB4 801A2F2C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 19FB8 801A2F30 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 19FBC 801A2F34 3000B0AF */  sw         $s0, 0x30($sp)
    /* 19FC0 801A2F38 3400B0AF */  sw         $s0, 0x34($sp)
    /* 19FC4 801A2F3C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 19FC8 801A2F40 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 19FCC 801A2F44 ED4F060C */  jal        func_80193FB4
    /* 19FD0 801A2F48 4000B2AF */   sw        $s2, 0x40($sp)
    /* 19FD4 801A2F4C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19FD8 801A2F50 2108E102 */  addu       $at, $s7, $at
    /* 19FDC 801A2F54 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 19FE0 801A2F58 FF00C233 */  andi       $v0, $fp, 0xFF
  .L801A2F5C:
    /* 19FE4 801A2F5C 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 19FE8 801A2F60 7800BE8F */  lw         $fp, 0x78($sp)
    /* 19FEC 801A2F64 7400B78F */  lw         $s7, 0x74($sp)
    /* 19FF0 801A2F68 7000B68F */  lw         $s6, 0x70($sp)
    /* 19FF4 801A2F6C 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 19FF8 801A2F70 6800B48F */  lw         $s4, 0x68($sp)
    /* 19FFC 801A2F74 6400B38F */  lw         $s3, 0x64($sp)
    /* 1A000 801A2F78 6000B28F */  lw         $s2, 0x60($sp)
    /* 1A004 801A2F7C 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 1A008 801A2F80 5800B08F */  lw         $s0, 0x58($sp)
    /* 1A00C 801A2F84 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 1A010 801A2F88 0800E003 */  jr         $ra
    /* 1A014 801A2F8C 00000000 */   nop
endlabel func_801A2CA0
