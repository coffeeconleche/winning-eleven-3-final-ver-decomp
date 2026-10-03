nonmatching func_80196E1C, 0x1CC

glabel func_80196E1C
    /* DEA4 80196E1C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* DEA8 80196E20 1800B2AF */  sw         $s2, 0x18($sp)
    /* DEAC 80196E24 21908000 */  addu       $s2, $a0, $zero
    /* DEB0 80196E28 1000B0AF */  sw         $s0, 0x10($sp)
    /* DEB4 80196E2C 2180A000 */  addu       $s0, $a1, $zero
    /* DEB8 80196E30 1400B1AF */  sw         $s1, 0x14($sp)
    /* DEBC 80196E34 1E80113C */  lui        $s1, %hi(D_801D8018)
    /* DEC0 80196E38 18803126 */  addiu      $s1, $s1, %lo(D_801D8018)
    /* DEC4 80196E3C 21202002 */  addu       $a0, $s1, $zero
    /* DEC8 80196E40 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DECC 80196E44 2000BFAF */  sw         $ra, 0x20($sp)
    /* DED0 80196E48 4CB7020C */  jal        func_800ADD30
    /* DED4 80196E4C 2198C000 */   addu      $s3, $a2, $zero
    /* DED8 80196E50 03004012 */  beqz       $s2, .L80196E60
    /* DEDC 80196E54 21202002 */   addu      $a0, $s1, $zero
    /* DEE0 80196E58 995B0608 */  j          .L80196E64
    /* DEE4 80196E5C 01000524 */   addiu     $a1, $zero, 0x1
  .L80196E60:
    /* DEE8 80196E60 21280000 */  addu       $a1, $zero, $zero
  .L80196E64:
    /* DEEC 80196E64 2EB7020C */  jal        func_800ADCB8
    /* DEF0 80196E68 00000000 */   nop
    /* DEF4 80196E6C 00000296 */  lhu        $v0, 0x0($s0)
    /* DEF8 80196E70 1E80043C */  lui        $a0, %hi(D_801D8020)
    /* DEFC 80196E74 20808424 */  addiu      $a0, $a0, %lo(D_801D8020)
    /* DF00 80196E78 000082A4 */  sh         $v0, 0x0($a0)
    /* DF04 80196E7C 02000296 */  lhu        $v0, 0x2($s0)
    /* DF08 80196E80 1E80013C */  lui        $at, %hi(D_801D8022)
    /* DF0C 80196E84 228022A4 */  sh         $v0, %lo(D_801D8022)($at)
    /* DF10 80196E88 04000296 */  lhu        $v0, 0x4($s0)
    /* DF14 80196E8C 1E80013C */  lui        $at, %hi(D_801D8028)
    /* DF18 80196E90 288022A4 */  sh         $v0, %lo(D_801D8028)($at)
    /* DF1C 80196E94 06000296 */  lhu        $v0, 0x6($s0)
    /* DF20 80196E98 1E80013C */  lui        $at, %hi(D_801D802A)
    /* DF24 80196E9C 2A8022A4 */  sh         $v0, %lo(D_801D802A)($at)
    /* DF28 80196EA0 08000296 */  lhu        $v0, 0x8($s0)
    /* DF2C 80196EA4 1E80013C */  lui        $at, %hi(D_801D8030)
    /* DF30 80196EA8 308022A4 */  sh         $v0, %lo(D_801D8030)($at)
    /* DF34 80196EAC 0A000296 */  lhu        $v0, 0xA($s0)
    /* DF38 80196EB0 1E80013C */  lui        $at, %hi(D_801D8032)
    /* DF3C 80196EB4 328022A4 */  sh         $v0, %lo(D_801D8032)($at)
    /* DF40 80196EB8 0C000292 */  lbu        $v0, 0xC($s0)
    /* DF44 80196EBC 1E80013C */  lui        $at, %hi(D_801D801C)
    /* DF48 80196EC0 1C8022A0 */  sb         $v0, %lo(D_801D801C)($at)
    /* DF4C 80196EC4 0D000292 */  lbu        $v0, 0xD($s0)
    /* DF50 80196EC8 1E80013C */  lui        $at, %hi(D_801D801D)
    /* DF54 80196ECC 1D8022A0 */  sb         $v0, %lo(D_801D801D)($at)
    /* DF58 80196ED0 0E000292 */  lbu        $v0, 0xE($s0)
    /* DF5C 80196ED4 1E80013C */  lui        $at, %hi(D_801D801E)
    /* DF60 80196ED8 1E8022A0 */  sb         $v0, %lo(D_801D801E)($at)
    /* DF64 80196EDC 0F000292 */  lbu        $v0, 0xF($s0)
    /* DF68 80196EE0 1E80013C */  lui        $at, %hi(D_801D8024)
    /* DF6C 80196EE4 248022A0 */  sb         $v0, %lo(D_801D8024)($at)
    /* DF70 80196EE8 10000292 */  lbu        $v0, 0x10($s0)
    /* DF74 80196EEC FFFF6632 */  andi       $a2, $s3, 0xFFFF
    /* DF78 80196EF0 1E80013C */  lui        $at, %hi(D_801D8025)
    /* DF7C 80196EF4 258022A0 */  sb         $v0, %lo(D_801D8025)($at)
    /* DF80 80196EF8 11000292 */  lbu        $v0, 0x11($s0)
    /* DF84 80196EFC 0F80113C */  lui        $s1, %hi(D_800F1018)
    /* DF88 80196F00 18103126 */  addiu      $s1, $s1, %lo(D_800F1018)
    /* DF8C 80196F04 1E80013C */  lui        $at, %hi(D_801D8026)
    /* DF90 80196F08 268022A0 */  sb         $v0, %lo(D_801D8026)($at)
    /* DF94 80196F0C 12000292 */  lbu        $v0, 0x12($s0)
    /* DF98 80196F10 F8FF8424 */  addiu      $a0, $a0, -0x8
    /* DF9C 80196F14 1E80013C */  lui        $at, %hi(D_801D802C)
    /* DFA0 80196F18 2C8022A0 */  sb         $v0, %lo(D_801D802C)($at)
    /* DFA4 80196F1C 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* DFA8 80196F20 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* DFAC 80196F24 13000392 */  lbu        $v1, 0x13($s0)
    /* DFB0 80196F28 80280200 */  sll        $a1, $v0, 2
    /* DFB4 80196F2C 2128A200 */  addu       $a1, $a1, $v0
    /* DFB8 80196F30 80280500 */  sll        $a1, $a1, 2
    /* DFBC 80196F34 1E80013C */  lui        $at, %hi(D_801D802D)
    /* DFC0 80196F38 2D8023A0 */  sb         $v1, %lo(D_801D802D)($at)
    /* DFC4 80196F3C 14000292 */  lbu        $v0, 0x14($s0)
    /* DFC8 80196F40 1E80013C */  lui        $at, %hi(D_801D802E)
    /* DFCC 80196F44 2E8022A0 */  sb         $v0, %lo(D_801D802E)($at)
    /* DFD0 80196F48 02CE020C */  jal        func_800B3808
    /* DFD4 80196F4C 2128B100 */   addu      $a1, $a1, $s1
    /* DFD8 80196F50 1D004012 */  beqz       $s2, .L80196FC8
    /* DFDC 80196F54 801F043C */   lui       $a0, (0x1F800180 >> 16)
    /* DFE0 80196F58 80018434 */  ori        $a0, $a0, (0x1F800180 & 0xFFFF)
    /* DFE4 80196F5C FF006632 */  andi       $a2, $s3, 0xFF
    /* DFE8 80196F60 80FE0224 */  addiu      $v0, $zero, -0x180
    /* DFEC 80196F64 801F073C */  lui        $a3, (0x1F80029D >> 16)
    /* DFF0 80196F68 9D02E790 */  lbu        $a3, (0x1F80029D & 0xFFFF)($a3)
    /* DFF4 80196F6C 88FF0324 */  addiu      $v1, $zero, -0x78
    /* DFF8 80196F70 801F013C */  lui        $at, (0x1F800184 >> 16)
    /* DFFC 80196F74 840122A4 */  sh         $v0, (0x1F800184 & 0xFFFF)($at)
    /* E000 80196F78 81FE0224 */  addiu      $v0, $zero, -0x17F
    /* E004 80196F7C 801F013C */  lui        $at, (0x1F800186 >> 16)
    /* E008 80196F80 860123A4 */  sh         $v1, (0x1F800186 & 0xFFFF)($at)
    /* E00C 80196F84 801F013C */  lui        $at, (0x1F800188 >> 16)
    /* E010 80196F88 880122A4 */  sh         $v0, (0x1F800188 & 0xFFFF)($at)
    /* E014 80196F8C 801F013C */  lui        $at, (0x1F80018A >> 16)
    /* E018 80196F90 8A0123A4 */  sh         $v1, (0x1F80018A & 0xFFFF)($at)
    /* E01C 80196F94 801F013C */  lui        $at, (0x1F800180 >> 16)
    /* E020 80196F98 800132AC */  sw         $s2, (0x1F800180 & 0xFFFF)($at)
    /* E024 80196F9C 801F013C */  lui        $at, (0x1F80018C >> 16)
    /* E028 80196FA0 8C0120A0 */  sb         $zero, (0x1F80018C & 0xFFFF)($at)
    /* E02C 80196FA4 801F013C */  lui        $at, (0x1F80018D >> 16)
    /* E030 80196FA8 8D0120A0 */  sb         $zero, (0x1F80018D & 0xFFFF)($at)
    /* E034 80196FAC 801F013C */  lui        $at, (0x1F80018E >> 16)
    /* E038 80196FB0 8E0120A0 */  sb         $zero, (0x1F80018E & 0xFFFF)($at)
    /* E03C 80196FB4 80280700 */  sll        $a1, $a3, 2
    /* E040 80196FB8 2128A700 */  addu       $a1, $a1, $a3
    /* E044 80196FBC 80280500 */  sll        $a1, $a1, 2
    /* E048 80196FC0 26CD020C */  jal        func_800B3498
    /* E04C 80196FC4 2128B100 */   addu      $a1, $a1, $s1
  .L80196FC8:
    /* E050 80196FC8 2000BF8F */  lw         $ra, 0x20($sp)
    /* E054 80196FCC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* E058 80196FD0 1800B28F */  lw         $s2, 0x18($sp)
    /* E05C 80196FD4 1400B18F */  lw         $s1, 0x14($sp)
    /* E060 80196FD8 1000B08F */  lw         $s0, 0x10($sp)
    /* E064 80196FDC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* E068 80196FE0 0800E003 */  jr         $ra
    /* E06C 80196FE4 00000000 */   nop
endlabel func_80196E1C
