nonmatching func_801AECB4, 0xDC

glabel func_801AECB4
    /* 25D3C 801AECB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 25D40 801AECB8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 25D44 801AECBC 1080093C */  lui        $t1, %hi(D_800FF748)
    /* 25D48 801AECC0 48F72925 */  addiu      $t1, $t1, %lo(D_800FF748)
    /* 25D4C 801AECC4 1E80063C */  lui        $a2, %hi(D_801DA620)
    /* 25D50 801AECC8 20A6C624 */  addiu      $a2, $a2, %lo(D_801DA620)
    /* 25D54 801AECCC 21380000 */  addu       $a3, $zero, $zero
    /* 25D58 801AECD0 A4930834 */  ori        $t0, $zero, 0x93A4
  .L801AECD4:
    /* 25D5C 801AECD4 21280000 */  addu       $a1, $zero, $zero
    /* 25D60 801AECD8 21202801 */  addu       $a0, $t1, $t0
  .L801AECDC:
    /* 25D64 801AECDC 0000C7A0 */  sb         $a3, 0x0($a2)
    /* 25D68 801AECE0 0100C5A0 */  sb         $a1, 0x1($a2)
    /* 25D6C 801AECE4 00008390 */  lbu        $v1, 0x0($a0)
    /* 25D70 801AECE8 02008294 */  lhu        $v0, 0x2($a0)
    /* 25D74 801AECEC 00000000 */  nop
    /* 25D78 801AECF0 2B104300 */  sltu       $v0, $v0, $v1
    /* 25D7C 801AECF4 02004010 */  beqz       $v0, .L801AED00
    /* 25D80 801AECF8 00000000 */   nop
    /* 25D84 801AECFC 020083A4 */  sh         $v1, 0x2($a0)
  .L801AED00:
    /* 25D88 801AED00 0200C624 */  addiu      $a2, $a2, 0x2
    /* 25D8C 801AED04 0100A524 */  addiu      $a1, $a1, 0x1
    /* 25D90 801AED08 1600A228 */  slti       $v0, $a1, 0x16
    /* 25D94 801AED0C F3FF4014 */  bnez       $v0, .L801AECDC
    /* 25D98 801AED10 06008424 */   addiu     $a0, $a0, 0x6
    /* 25D9C 801AED14 0100E724 */  addiu      $a3, $a3, 0x1
    /* 25DA0 801AED18 2B00E228 */  slti       $v0, $a3, 0x2B
    /* 25DA4 801AED1C EDFF4014 */  bnez       $v0, .L801AECD4
    /* 25DA8 801AED20 84000825 */   addiu     $t0, $t0, 0x84
    /* 25DAC 801AED24 1E80033C */  lui        $v1, %hi(D_801D86F2)
    /* 25DB0 801AED28 F2866390 */  lbu        $v1, %lo(D_801D86F2)($v1)
    /* 25DB4 801AED2C 00000000 */  nop
    /* 25DB8 801AED30 05006010 */  beqz       $v1, .L801AED48
    /* 25DBC 801AED34 01000224 */   addiu     $v0, $zero, 0x1
    /* 25DC0 801AED38 0A006210 */  beq        $v1, $v0, .L801AED64
    /* 25DC4 801AED3C B2030524 */   addiu     $a1, $zero, 0x3B2
    /* 25DC8 801AED40 60BB0608 */  j          .L801AED80
    /* 25DCC 801AED44 00000000 */   nop
  .L801AED48:
    /* 25DD0 801AED48 1E80043C */  lui        $a0, %hi(D_801DA620)
    /* 25DD4 801AED4C 20A68424 */  addiu      $a0, $a0, %lo(D_801DA620)
    /* 25DD8 801AED50 B2030524 */  addiu      $a1, $zero, 0x3B2
    /* 25DDC 801AED54 1B80073C */  lui        $a3, %hi(func_801AEFE0)
    /* 25DE0 801AED58 E0EFE724 */  addiu      $a3, $a3, %lo(func_801AEFE0)
    /* 25DE4 801AED5C 5EBB0608 */  j          .L801AED78
    /* 25DE8 801AED60 02000624 */   addiu     $a2, $zero, 0x2
  .L801AED64:
    /* 25DEC 801AED64 1E80043C */  lui        $a0, %hi(D_801DA620)
    /* 25DF0 801AED68 20A68424 */  addiu      $a0, $a0, %lo(D_801DA620)
    /* 25DF4 801AED6C 02000624 */  addiu      $a2, $zero, 0x2
    /* 25DF8 801AED70 1B80073C */  lui        $a3, %hi(func_801AF110)
    /* 25DFC 801AED74 10F1E724 */  addiu      $a3, $a3, %lo(func_801AF110)
  .L801AED78:
    /* 25E00 801AED78 AAB5020C */  jal        func_800AD6A8
    /* 25E04 801AED7C 00000000 */   nop
  .L801AED80:
    /* 25E08 801AED80 1000BF8F */  lw         $ra, 0x10($sp)
    /* 25E0C 801AED84 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 25E10 801AED88 0800E003 */  jr         $ra
    /* 25E14 801AED8C 00000000 */   nop
endlabel func_801AECB4
