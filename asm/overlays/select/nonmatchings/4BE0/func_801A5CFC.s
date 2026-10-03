nonmatching func_801A5CFC, 0x2A8

glabel func_801A5CFC
    /* 1CD84 801A5CFC 1E80033C */  lui        $v1, %hi(D_801D8038 + 0x1)
    /* 1CD88 801A5D00 39806390 */  lbu        $v1, %lo(D_801D8038 + 0x1)($v1)
    /* 1CD8C 801A5D04 00000000 */  nop
    /* 1CD90 801A5D08 FC00622C */  sltiu      $v0, $v1, 0xFC
    /* 1CD94 801A5D0C 03004014 */  bnez       $v0, .L801A5D1C
    /* 1CD98 801A5D10 0400622C */   sltiu     $v0, $v1, 0x4
    /* 1CD9C 801A5D14 49970608 */  j          .L801A5D24
    /* 1CDA0 801A5D18 FC000224 */   addiu     $v0, $zero, 0xFC
  .L801A5D1C:
    /* 1CDA4 801A5D1C 03004010 */  beqz       $v0, .L801A5D2C
    /* 1CDA8 801A5D20 04000224 */   addiu     $v0, $zero, 0x4
  .L801A5D24:
    /* 1CDAC 801A5D24 1E80013C */  lui        $at, %hi(D_801D8038 + 0x2)
    /* 1CDB0 801A5D28 3A8022A0 */  sb         $v0, %lo(D_801D8038 + 0x2)($at)
  .L801A5D2C:
    /* 1CDB4 801A5D2C 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CDB8 801A5D30 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CDBC 801A5D34 1E80033C */  lui        $v1, %hi(D_801D8038 + 0x2)
    /* 1CDC0 801A5D38 3A806390 */  lbu        $v1, %lo(D_801D8038 + 0x2)($v1)
    /* 1CDC4 801A5D3C 00000000 */  nop
    /* 1CDC8 801A5D40 21104300 */  addu       $v0, $v0, $v1
    /* 1CDCC 801A5D44 1E80013C */  lui        $at, %hi(D_801D8038 + 0x1)
    /* 1CDD0 801A5D48 398022A0 */  sb         $v0, %lo(D_801D8038 + 0x1)($at)
    /* 1CDD4 801A5D4C 0500822C */  sltiu      $v0, $a0, 0x5
    /* 1CDD8 801A5D50 92004010 */  beqz       $v0, .L801A5F9C
    /* 1CDDC 801A5D54 80100400 */   sll       $v0, $a0, 2
    /* 1CDE0 801A5D58 1980013C */  lui        $at, %hi(jtbl_8018A208)
    /* 1CDE4 801A5D5C 21082200 */  addu       $at, $at, $v0
    /* 1CDE8 801A5D60 08A2228C */  lw         $v0, %lo(jtbl_8018A208)($at)
    /* 1CDEC 801A5D64 00000000 */  nop
    /* 1CDF0 801A5D68 08004000 */  jr         $v0
    /* 1CDF4 801A5D6C 00000000 */   nop
  jlabel .L801A5D70
    /* 1CDF8 801A5D70 21300000 */  addu       $a2, $zero, $zero
    /* 1CDFC 801A5D74 80280500 */  sll        $a1, $a1, 2
    /* 1CE00 801A5D78 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CE04 801A5D7C 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CE08 801A5D80 FF000424 */  addiu      $a0, $zero, 0xFF
    /* 1CE0C 801A5D84 2110A600 */  addu       $v0, $a1, $a2
  .L801A5D88:
    /* 1CE10 801A5D88 C0180200 */  sll        $v1, $v0, 3
    /* 1CE14 801A5D8C 21186200 */  addu       $v1, $v1, $v0
    /* 1CE18 801A5D90 80180300 */  sll        $v1, $v1, 2
    /* 1CE1C 801A5D94 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CE20 801A5D98 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CE24 801A5D9C 21186700 */  addu       $v1, $v1, $a3
    /* 1CE28 801A5DA0 23108200 */  subu       $v0, $a0, $v0
    /* 1CE2C 801A5DA4 040062A0 */  sb         $v0, 0x4($v1)
    /* 1CE30 801A5DA8 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CE34 801A5DAC 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CE38 801A5DB0 060064A0 */  sb         $a0, 0x6($v1)
    /* 1CE3C 801A5DB4 23108200 */  subu       $v0, $a0, $v0
    /* 1CE40 801A5DB8 050062A0 */  sb         $v0, 0x5($v1)
    /* 1CE44 801A5DBC 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CE48 801A5DC0 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CE4C 801A5DC4 00000000 */  nop
    /* 1CE50 801A5DC8 0C0062A0 */  sb         $v0, 0xC($v1)
    /* 1CE54 801A5DCC 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CE58 801A5DD0 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CE5C 801A5DD4 0E0064A0 */  sb         $a0, 0xE($v1)
    /* 1CE60 801A5DD8 0D0062A0 */  sb         $v0, 0xD($v1)
    /* 1CE64 801A5DDC 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CE68 801A5DE0 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CE6C 801A5DE4 00000000 */  nop
    /* 1CE70 801A5DE8 23108200 */  subu       $v0, $a0, $v0
    /* 1CE74 801A5DEC 140062A0 */  sb         $v0, 0x14($v1)
    /* 1CE78 801A5DF0 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CE7C 801A5DF4 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CE80 801A5DF8 160064A0 */  sb         $a0, 0x16($v1)
    /* 1CE84 801A5DFC 23108200 */  subu       $v0, $a0, $v0
    /* 1CE88 801A5E00 150062A0 */  sb         $v0, 0x15($v1)
    /* 1CE8C 801A5E04 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CE90 801A5E08 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CE94 801A5E0C 00000000 */  nop
    /* 1CE98 801A5E10 1C0062A0 */  sb         $v0, 0x1C($v1)
    /* 1CE9C 801A5E14 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CEA0 801A5E18 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CEA4 801A5E1C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CEA8 801A5E20 1E0064A0 */  sb         $a0, 0x1E($v1)
    /* 1CEAC 801A5E24 1D0062A0 */  sb         $v0, 0x1D($v1)
    /* 1CEB0 801A5E28 0400C228 */  slti       $v0, $a2, 0x4
    /* 1CEB4 801A5E2C D6FF4014 */  bnez       $v0, .L801A5D88
    /* 1CEB8 801A5E30 2110A600 */   addu      $v0, $a1, $a2
    /* 1CEBC 801A5E34 E7970608 */  j          .L801A5F9C
    /* 1CEC0 801A5E38 00000000 */   nop
  jlabel .L801A5E3C
    /* 1CEC4 801A5E3C 21300000 */  addu       $a2, $zero, $zero
    /* 1CEC8 801A5E40 80280500 */  sll        $a1, $a1, 2
    /* 1CECC 801A5E44 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CED0 801A5E48 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CED4 801A5E4C FF000424 */  addiu      $a0, $zero, 0xFF
    /* 1CED8 801A5E50 2110A600 */  addu       $v0, $a1, $a2
  .L801A5E54:
    /* 1CEDC 801A5E54 C0180200 */  sll        $v1, $v0, 3
    /* 1CEE0 801A5E58 21186200 */  addu       $v1, $v1, $v0
    /* 1CEE4 801A5E5C 80180300 */  sll        $v1, $v1, 2
    /* 1CEE8 801A5E60 21186700 */  addu       $v1, $v1, $a3
    /* 1CEEC 801A5E64 040064A0 */  sb         $a0, 0x4($v1)
    /* 1CEF0 801A5E68 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CEF4 801A5E6C 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CEF8 801A5E70 00000000 */  nop
    /* 1CEFC 801A5E74 23108200 */  subu       $v0, $a0, $v0
    /* 1CF00 801A5E78 050062A0 */  sb         $v0, 0x5($v1)
    /* 1CF04 801A5E7C 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CF08 801A5E80 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CF0C 801A5E84 0C0064A0 */  sb         $a0, 0xC($v1)
    /* 1CF10 801A5E88 23108200 */  subu       $v0, $a0, $v0
    /* 1CF14 801A5E8C 060062A0 */  sb         $v0, 0x6($v1)
    /* 1CF18 801A5E90 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CF1C 801A5E94 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CF20 801A5E98 00000000 */  nop
    /* 1CF24 801A5E9C 0D0062A0 */  sb         $v0, 0xD($v1)
    /* 1CF28 801A5EA0 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CF2C 801A5EA4 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CF30 801A5EA8 140064A0 */  sb         $a0, 0x14($v1)
    /* 1CF34 801A5EAC 0E0062A0 */  sb         $v0, 0xE($v1)
    /* 1CF38 801A5EB0 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CF3C 801A5EB4 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CF40 801A5EB8 00000000 */  nop
    /* 1CF44 801A5EBC 23108200 */  subu       $v0, $a0, $v0
    /* 1CF48 801A5EC0 150062A0 */  sb         $v0, 0x15($v1)
    /* 1CF4C 801A5EC4 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CF50 801A5EC8 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CF54 801A5ECC 1C0064A0 */  sb         $a0, 0x1C($v1)
    /* 1CF58 801A5ED0 23108200 */  subu       $v0, $a0, $v0
    /* 1CF5C 801A5ED4 160062A0 */  sb         $v0, 0x16($v1)
    /* 1CF60 801A5ED8 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CF64 801A5EDC 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CF68 801A5EE0 00000000 */  nop
    /* 1CF6C 801A5EE4 1D0062A0 */  sb         $v0, 0x1D($v1)
    /* 1CF70 801A5EE8 1E80023C */  lui        $v0, %hi(D_801D8038 + 0x1)
    /* 1CF74 801A5EEC 39804290 */  lbu        $v0, %lo(D_801D8038 + 0x1)($v0)
    /* 1CF78 801A5EF0 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CF7C 801A5EF4 1E0062A0 */  sb         $v0, 0x1E($v1)
    /* 1CF80 801A5EF8 0400C228 */  slti       $v0, $a2, 0x4
    /* 1CF84 801A5EFC D5FF4014 */  bnez       $v0, .L801A5E54
    /* 1CF88 801A5F00 2110A600 */   addu      $v0, $a1, $a2
    /* 1CF8C 801A5F04 E7970608 */  j          .L801A5F9C
    /* 1CF90 801A5F08 00000000 */   nop
  jlabel .L801A5F0C
    /* 1CF94 801A5F0C 21300000 */  addu       $a2, $zero, $zero
    /* 1CF98 801A5F10 80280500 */  sll        $a1, $a1, 2
    /* 1CF9C 801A5F14 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CFA0 801A5F18 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CFA4 801A5F1C FF000424 */  addiu      $a0, $zero, 0xFF
    /* 1CFA8 801A5F20 2118A600 */  addu       $v1, $a1, $a2
  .L801A5F24:
    /* 1CFAC 801A5F24 C0100300 */  sll        $v0, $v1, 3
    /* 1CFB0 801A5F28 21104300 */  addu       $v0, $v0, $v1
    /* 1CFB4 801A5F2C 80100200 */  sll        $v0, $v0, 2
    /* 1CFB8 801A5F30 21104700 */  addu       $v0, $v0, $a3
    /* 1CFBC 801A5F34 040044A0 */  sb         $a0, 0x4($v0)
    /* 1CFC0 801A5F38 050044A0 */  sb         $a0, 0x5($v0)
    /* 1CFC4 801A5F3C 1E80033C */  lui        $v1, %hi(D_801D8038 + 0x1)
    /* 1CFC8 801A5F40 39806390 */  lbu        $v1, %lo(D_801D8038 + 0x1)($v1)
    /* 1CFCC 801A5F44 0C0044A0 */  sb         $a0, 0xC($v0)
    /* 1CFD0 801A5F48 0D0044A0 */  sb         $a0, 0xD($v0)
    /* 1CFD4 801A5F4C 23188300 */  subu       $v1, $a0, $v1
    /* 1CFD8 801A5F50 060043A0 */  sb         $v1, 0x6($v0)
    /* 1CFDC 801A5F54 1E80033C */  lui        $v1, %hi(D_801D8038 + 0x1)
    /* 1CFE0 801A5F58 39806390 */  lbu        $v1, %lo(D_801D8038 + 0x1)($v1)
    /* 1CFE4 801A5F5C 140044A0 */  sb         $a0, 0x14($v0)
    /* 1CFE8 801A5F60 150044A0 */  sb         $a0, 0x15($v0)
    /* 1CFEC 801A5F64 0E0043A0 */  sb         $v1, 0xE($v0)
    /* 1CFF0 801A5F68 1E80033C */  lui        $v1, %hi(D_801D8038 + 0x1)
    /* 1CFF4 801A5F6C 39806390 */  lbu        $v1, %lo(D_801D8038 + 0x1)($v1)
    /* 1CFF8 801A5F70 1C0044A0 */  sb         $a0, 0x1C($v0)
    /* 1CFFC 801A5F74 1D0044A0 */  sb         $a0, 0x1D($v0)
    /* 1D000 801A5F78 23188300 */  subu       $v1, $a0, $v1
    /* 1D004 801A5F7C 160043A0 */  sb         $v1, 0x16($v0)
    /* 1D008 801A5F80 1E80033C */  lui        $v1, %hi(D_801D8038 + 0x1)
    /* 1D00C 801A5F84 39806390 */  lbu        $v1, %lo(D_801D8038 + 0x1)($v1)
    /* 1D010 801A5F88 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1D014 801A5F8C 1E0043A0 */  sb         $v1, 0x1E($v0)
    /* 1D018 801A5F90 0400C228 */  slti       $v0, $a2, 0x4
    /* 1D01C 801A5F94 E3FF4014 */  bnez       $v0, .L801A5F24
    /* 1D020 801A5F98 2118A600 */   addu      $v1, $a1, $a2
  .L801A5F9C:
    /* 1D024 801A5F9C 0800E003 */  jr         $ra
    /* 1D028 801A5FA0 00000000 */   nop
endlabel func_801A5CFC
