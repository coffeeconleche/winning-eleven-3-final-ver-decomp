nonmatching func_8006EC80, 0x1E0

glabel func_8006EC80
    /* 5F480 8006EC80 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5F484 8006EC84 01000224 */  addiu      $v0, $zero, 0x1
    /* 5F488 8006EC88 10008210 */  beq        $a0, $v0, .L8006ECCC
    /* 5F48C 8006EC8C 801F193C */   lui       $t9, (0x1F800230 >> 16)
    /* 5F490 8006EC90 02008228 */  slti       $v0, $a0, 0x2
    /* 5F494 8006EC94 05004010 */  beqz       $v0, .L8006ECAC
    /* 5F498 8006EC98 00000000 */   nop
    /* 5F49C 8006EC9C 08008010 */  beqz       $a0, .L8006ECC0
    /* 5F4A0 8006ECA0 00000000 */   nop
    /* 5F4A4 8006ECA4 42BB0108 */  j          .L8006ED08
    /* 5F4A8 8006ECA8 00000000 */   nop
  .L8006ECAC:
    /* 5F4AC 8006ECAC 02000224 */  addiu      $v0, $zero, 0x2
    /* 5F4B0 8006ECB0 13008210 */  beq        $a0, $v0, .L8006ED00
    /* 5F4B4 8006ECB4 00000000 */   nop
    /* 5F4B8 8006ECB8 42BB0108 */  j          .L8006ED08
    /* 5F4BC 8006ECBC 00000000 */   nop
  .L8006ECC0:
    /* 5F4C0 8006ECC0 21280000 */  addu       $a1, $zero, $zero
    /* 5F4C4 8006ECC4 42BB0108 */  j          .L8006ED08
    /* 5F4C8 8006ECC8 01000D24 */   addiu     $t5, $zero, 0x1
  .L8006ECCC:
    /* 5F4CC 8006ECCC 41BB0108 */  j          .L8006ED04
    /* 5F4D0 8006ECD0 01000524 */   addiu     $a1, $zero, 0x1
  .L8006ECD4:
    /* 5F4D4 8006ECD4 0F80033C */  lui        $v1, %hi(D_800F10A0)
    /* 5F4D8 8006ECD8 A0106324 */  addiu      $v1, $v1, %lo(D_800F10A0)
    /* 5F4DC 8006ECDC 21184301 */  addu       $v1, $t2, $v1
    /* 5F4E0 8006ECE0 0000E0A4 */  sh         $zero, 0x0($a3)
    /* 5F4E4 8006ECE4 00006294 */  lhu        $v0, 0x0($v1)
    /* 5F4E8 8006ECE8 00000000 */  nop
    /* 5F4EC 8006ECEC 01004224 */  addiu      $v0, $v0, 0x1
    /* 5F4F0 8006ECF0 000062A4 */  sh         $v0, 0x0($v1)
    /* 5F4F4 8006ECF4 00002295 */  lhu        $v0, 0x0($t1)
    /* 5F4F8 8006ECF8 96BB0108 */  j          .L8006EE58
    /* 5F4FC 8006ECFC 00000000 */   nop
  .L8006ED00:
    /* 5F500 8006ED00 21280000 */  addu       $a1, $zero, $zero
  .L8006ED04:
    /* 5F504 8006ED04 02000D24 */  addiu      $t5, $zero, 0x2
  .L8006ED08:
    /* 5F508 8006ED08 98022293 */  lbu        $v0, (0x1F800298 & 0xFFFF)($t9)
    /* 5F50C 8006ED0C 04000324 */  addiu      $v1, $zero, 0x4
    /* 5F510 8006ED10 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5F514 8006ED14 02004314 */  bne        $v0, $v1, .L8006ED20
    /* 5F518 8006ED18 02000424 */   addiu     $a0, $zero, 0x2
    /* 5F51C 8006ED1C 01000424 */  addiu      $a0, $zero, 0x1
  .L8006ED20:
    /* 5F520 8006ED20 2140A000 */  addu       $t0, $a1, $zero
    /* 5F524 8006ED24 FF000231 */  andi       $v0, $t0, 0xFF
    /* 5F528 8006ED28 FF00A331 */  andi       $v1, $t5, 0xFF
    /* 5F52C 8006ED2C 2B104300 */  sltu       $v0, $v0, $v1
    /* 5F530 8006ED30 49004010 */  beqz       $v0, .L8006EE58
    /* 5F534 8006ED34 21100000 */   addu      $v0, $zero, $zero
    /* 5F538 8006ED38 0D80183C */  lui        $t8, %hi(D_800C8544)
    /* 5F53C 8006ED3C 44851827 */  addiu      $t8, $t8, %lo(D_800C8544)
    /* 5F540 8006ED40 11800F3C */  lui        $t7, %hi(D_8010CD44)
    /* 5F544 8006ED44 44CDEF25 */  addiu      $t7, $t7, %lo(D_8010CD44)
    /* 5F548 8006ED48 FF008C30 */  andi       $t4, $a0, 0xFF
    /* 5F54C 8006ED4C 0F800E3C */  lui        $t6, %hi(D_800F10A0)
    /* 5F550 8006ED50 A010CE25 */  addiu      $t6, $t6, %lo(D_800F10A0)
  .L8006ED54:
    /* 5F554 8006ED54 04000524 */  addiu      $a1, $zero, 0x4
    /* 5F558 8006ED58 FF000331 */  andi       $v1, $t0, 0xFF
    /* 5F55C 8006ED5C C0100300 */  sll        $v0, $v1, 3
    /* 5F560 8006ED60 21302203 */  addu       $a2, $t9, $v0
    /* 5F564 8006ED64 40500300 */  sll        $t2, $v1, 1
    /* 5F568 8006ED68 21384F01 */  addu       $a3, $t2, $t7
    /* 5F56C 8006ED6C 21584E01 */  addu       $t3, $t2, $t6
    /* 5F570 8006ED70 FF00A430 */  andi       $a0, $a1, 0xFF
  .L8006ED74:
    /* 5F574 8006ED74 40100400 */  sll        $v0, $a0, 1
    /* 5F578 8006ED78 21485800 */  addu       $t1, $v0, $t8
    /* 5F57C 8006ED7C 3402C294 */  lhu        $v0, (0x1F800234 & 0xFFFF)($a2)
    /* 5F580 8006ED80 00002395 */  lhu        $v1, 0x0($t1)
    /* 5F584 8006ED84 00000000 */  nop
    /* 5F588 8006ED88 24106200 */  and        $v0, $v1, $v0
    /* 5F58C 8006ED8C 32004014 */  bnez       $v0, .L8006EE58
    /* 5F590 8006ED90 FFFF6230 */   andi      $v0, $v1, 0xFFFF
    /* 5F594 8006ED94 3002C294 */  lhu        $v0, (0x1F800230 & 0xFFFF)($a2)
    /* 5F598 8006ED98 00000000 */  nop
    /* 5F59C 8006ED9C 24106200 */  and        $v0, $v1, $v0
    /* 5F5A0 8006EDA0 1B004010 */  beqz       $v0, .L8006EE10
    /* 5F5A4 8006EDA4 0800822C */   sltiu     $v0, $a0, 0x8
    /* 5F5A8 8006EDA8 19004010 */  beqz       $v0, .L8006EE10
    /* 5F5AC 8006EDAC 10000224 */   addiu     $v0, $zero, 0x10
    /* 5F5B0 8006EDB0 1A004C00 */  div        $zero, $v0, $t4
    /* 5F5B4 8006EDB4 02008015 */  bnez       $t4, .L8006EDC0
    /* 5F5B8 8006EDB8 00000000 */   nop
    /* 5F5BC 8006EDBC 0D000700 */  break      7
  .L8006EDC0:
    /* 5F5C0 8006EDC0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 5F5C4 8006EDC4 04008115 */  bne        $t4, $at, .L8006EDD8
    /* 5F5C8 8006EDC8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 5F5CC 8006EDCC 02004114 */  bne        $v0, $at, .L8006EDD8
    /* 5F5D0 8006EDD0 00000000 */   nop
    /* 5F5D4 8006EDD4 0D000600 */  break      6
  .L8006EDD8:
    /* 5F5D8 8006EDD8 12100000 */  mflo       $v0
    /* 5F5DC 8006EDDC 0000E394 */  lhu        $v1, 0x0($a3)
    /* 5F5E0 8006EDE0 00000000 */  nop
    /* 5F5E4 8006EDE4 2A106200 */  slt        $v0, $v1, $v0
    /* 5F5E8 8006EDE8 BAFF4010 */  beqz       $v0, .L8006ECD4
    /* 5F5EC 8006EDEC 00000000 */   nop
    /* 5F5F0 8006EDF0 00006295 */  lhu        $v0, 0x0($t3)
    /* 5F5F4 8006EDF4 00000000 */  nop
    /* 5F5F8 8006EDF8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5F5FC 8006EDFC 02004014 */  bnez       $v0, .L8006EE08
    /* 5F600 8006EE00 01006224 */   addiu     $v0, $v1, 0x1
    /* 5F604 8006EE04 03006224 */  addiu      $v0, $v1, 0x3
  .L8006EE08:
    /* 5F608 8006EE08 95BB0108 */  j          .L8006EE54
    /* 5F60C 8006EE0C 0000E2A4 */   sh        $v0, 0x0($a3)
  .L8006EE10:
    /* 5F610 8006EE10 0100A524 */  addiu      $a1, $a1, 0x1
    /* 5F614 8006EE14 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 5F618 8006EE18 1200422C */  sltiu      $v0, $v0, 0x12
    /* 5F61C 8006EE1C D5FF4014 */  bnez       $v0, .L8006ED74
    /* 5F620 8006EE20 FF00A430 */   andi      $a0, $a1, 0xFF
    /* 5F624 8006EE24 FF000331 */  andi       $v1, $t0, 0xFF
    /* 5F628 8006EE28 01000825 */  addiu      $t0, $t0, 0x1
    /* 5F62C 8006EE2C 40180300 */  sll        $v1, $v1, 1
    /* 5F630 8006EE30 21106F00 */  addu       $v0, $v1, $t7
    /* 5F634 8006EE34 21186E00 */  addu       $v1, $v1, $t6
    /* 5F638 8006EE38 000040A4 */  sh         $zero, 0x0($v0)
    /* 5F63C 8006EE3C FF000231 */  andi       $v0, $t0, 0xFF
    /* 5F640 8006EE40 000060A4 */  sh         $zero, 0x0($v1)
    /* 5F644 8006EE44 FF00A331 */  andi       $v1, $t5, 0xFF
    /* 5F648 8006EE48 2B104300 */  sltu       $v0, $v0, $v1
    /* 5F64C 8006EE4C C1FF4014 */  bnez       $v0, .L8006ED54
    /* 5F650 8006EE50 00000000 */   nop
  .L8006EE54:
    /* 5F654 8006EE54 21100000 */  addu       $v0, $zero, $zero
  .L8006EE58:
    /* 5F658 8006EE58 0800E003 */  jr         $ra
    /* 5F65C 8006EE5C 00000000 */   nop
endlabel func_8006EC80
