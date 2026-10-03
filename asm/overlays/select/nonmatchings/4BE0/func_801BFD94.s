nonmatching func_801BFD94, 0x148

glabel func_801BFD94
    /* 36E1C 801BFD94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 36E20 801BFD98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36E24 801BFD9C 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 36E28 801BFDA0 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 36E2C 801BFDA4 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 36E30 801BFDA8 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 36E34 801BFDAC 04000224 */  addiu      $v0, $zero, 0x4
    /* 36E38 801BFDB0 2C006210 */  beq        $v1, $v0, .L801BFE64
    /* 36E3C 801BFDB4 1400BFAF */   sw        $ra, 0x14($sp)
    /* 36E40 801BFDB8 05006228 */  slti       $v0, $v1, 0x5
    /* 36E44 801BFDBC 10004010 */  beqz       $v0, .L801BFE00
    /* 36E48 801BFDC0 01000224 */   addiu     $v0, $zero, 0x1
    /* 36E4C 801BFDC4 1B006210 */  beq        $v1, $v0, .L801BFE34
    /* 36E50 801BFDC8 02006228 */   slti      $v0, $v1, 0x2
    /* 36E54 801BFDCC 05004010 */  beqz       $v0, .L801BFDE4
    /* 36E58 801BFDD0 00000000 */   nop
    /* 36E5C 801BFDD4 13006010 */  beqz       $v1, .L801BFE24
    /* 36E60 801BFDD8 00000000 */   nop
    /* 36E64 801BFDDC B2FF0608 */  j          .L801BFEC8
    /* 36E68 801BFDE0 00000000 */   nop
  .L801BFDE4:
    /* 36E6C 801BFDE4 02000224 */  addiu      $v0, $zero, 0x2
    /* 36E70 801BFDE8 16006210 */  beq        $v1, $v0, .L801BFE44
    /* 36E74 801BFDEC 03000224 */   addiu     $v0, $zero, 0x3
    /* 36E78 801BFDF0 18006210 */  beq        $v1, $v0, .L801BFE54
    /* 36E7C 801BFDF4 00000000 */   nop
    /* 36E80 801BFDF8 B2FF0608 */  j          .L801BFEC8
    /* 36E84 801BFDFC 00000000 */   nop
  .L801BFE00:
    /* 36E88 801BFE00 80006228 */  slti       $v0, $v1, 0x80
    /* 36E8C 801BFE04 30004014 */  bnez       $v0, .L801BFEC8
    /* 36E90 801BFE08 82006228 */   slti      $v0, $v1, 0x82
    /* 36E94 801BFE0C 19004014 */  bnez       $v0, .L801BFE74
    /* 36E98 801BFE10 84006228 */   slti      $v0, $v1, 0x84
    /* 36E9C 801BFE14 2C004010 */  beqz       $v0, .L801BFEC8
    /* 36EA0 801BFE18 00000000 */   nop
    /* 36EA4 801BFE1C A1FF0608 */  j          .L801BFE84
    /* 36EA8 801BFE20 00000000 */   nop
  .L801BFE24:
    /* 36EAC 801BFE24 B7FF060C */  jal        func_801BFEDC
    /* 36EB0 801BFE28 00000000 */   nop
    /* 36EB4 801BFE2C B2FF0608 */  j          .L801BFEC8
    /* 36EB8 801BFE30 00000000 */   nop
  .L801BFE34:
    /* 36EBC 801BFE34 3D00070C */  jal        func_801C00F4
    /* 36EC0 801BFE38 00000000 */   nop
    /* 36EC4 801BFE3C B2FF0608 */  j          .L801BFEC8
    /* 36EC8 801BFE40 00000000 */   nop
  .L801BFE44:
    /* 36ECC 801BFE44 0202070C */  jal        func_801C0808
    /* 36ED0 801BFE48 00000000 */   nop
    /* 36ED4 801BFE4C B2FF0608 */  j          .L801BFEC8
    /* 36ED8 801BFE50 00000000 */   nop
  .L801BFE54:
    /* 36EDC 801BFE54 5602070C */  jal        func_801C0958
    /* 36EE0 801BFE58 00000000 */   nop
    /* 36EE4 801BFE5C B2FF0608 */  j          .L801BFEC8
    /* 36EE8 801BFE60 00000000 */   nop
  .L801BFE64:
    /* 36EEC 801BFE64 8204070C */  jal        func_801C1208
    /* 36EF0 801BFE68 00000000 */   nop
    /* 36EF4 801BFE6C B2FF0608 */  j          .L801BFEC8
    /* 36EF8 801BFE70 00000000 */   nop
  .L801BFE74:
    /* 36EFC 801BFE74 C93C060C */  jal        func_8018F324
    /* 36F00 801BFE78 00000000 */   nop
    /* 36F04 801BFE7C B2FF0608 */  j          .L801BFEC8
    /* 36F08 801BFE80 00000000 */   nop
  .L801BFE84:
    /* 36F0C 801BFE84 34A3060C */  jal        func_801A8CD0
    /* 36F10 801BFE88 00000000 */   nop
    /* 36F14 801BFE8C 1E80033C */  lui        $v1, %hi(D_801D8B18)
    /* 36F18 801BFE90 188B6390 */  lbu        $v1, %lo(D_801D8B18)($v1)
    /* 36F1C 801BFE94 01000224 */  addiu      $v0, $zero, 0x1
    /* 36F20 801BFE98 05006214 */  bne        $v1, $v0, .L801BFEB0
    /* 36F24 801BFE9C 00000000 */   nop
    /* 36F28 801BFEA0 7F5C000C */  jal        func_800171FC
    /* 36F2C 801BFEA4 04000424 */   addiu     $a0, $zero, 0x4
    /* 36F30 801BFEA8 AFFF0608 */  j          .L801BFEBC
    /* 36F34 801BFEAC C8000224 */   addiu     $v0, $zero, 0xC8
  .L801BFEB0:
    /* 36F38 801BFEB0 7F5C000C */  jal        func_800171FC
    /* 36F3C 801BFEB4 03000424 */   addiu     $a0, $zero, 0x3
    /* 36F40 801BFEB8 1F000224 */  addiu      $v0, $zero, 0x1F
  .L801BFEBC:
    /* 36F44 801BFEBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36F48 801BFEC0 21080102 */  addu       $at, $s0, $at
    /* 36F4C 801BFEC4 DAAB22A0 */  sb         $v0, -0x5426($at)
  .L801BFEC8:
    /* 36F50 801BFEC8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 36F54 801BFECC 1000B08F */  lw         $s0, 0x10($sp)
    /* 36F58 801BFED0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 36F5C 801BFED4 0800E003 */  jr         $ra
    /* 36F60 801BFED8 00000000 */   nop
endlabel func_801BFD94
