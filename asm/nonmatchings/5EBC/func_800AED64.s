nonmatching func_800AED64, 0x434

glabel func_800AED64
    /* 9F564 800AED64 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9F568 800AED68 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F56C 800AED6C 21808000 */  addu       $s0, $a0, $zero
    /* 9F570 800AED70 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F574 800AED74 0D80113C */  lui        $s1, %hi(D_800CEAC6)
    /* 9F578 800AED78 C6EA3126 */  addiu      $s1, $s1, %lo(D_800CEAC6)
    /* 9F57C 800AED7C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9F580 800AED80 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9F584 800AED84 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9F588 800AED88 00002292 */  lbu        $v0, 0x0($s1)
    /* 9F58C 800AED8C 00000000 */  nop
    /* 9F590 800AED90 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9F594 800AED94 08004014 */  bnez       $v0, .L800AEDB8
    /* 9F598 800AED98 0008133C */   lui       $s3, (0x8000008 >> 16)
    /* 9F59C 800AED9C 0180043C */  lui        $a0, %hi(D_80014FF0)
    /* 9F5A0 800AEDA0 F04F8424 */  addiu      $a0, $a0, %lo(D_80014FF0)
    /* 9F5A4 800AEDA4 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9F5A8 800AEDA8 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9F5AC 800AEDAC 00000000 */  nop
    /* 9F5B0 800AEDB0 09F84000 */  jalr       $v0
    /* 9F5B4 800AEDB4 21280002 */   addu      $a1, $s0, $zero
  .L800AEDB8:
    /* 9F5B8 800AEDB8 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 9F5BC 800AEDBC 02000396 */  lhu        $v1, 0x2($s0)
    /* 9F5C0 800AEDC0 00000496 */  lhu        $a0, 0x0($s0)
    /* 9F5C4 800AEDC4 0D80053C */  lui        $a1, %hi(D_800CEABC)
    /* 9F5C8 800AEDC8 BCEAA58C */  lw         $a1, %lo(D_800CEABC)($a1)
    /* 9F5CC 800AEDCC FF036330 */  andi       $v1, $v1, 0x3FF
    /* 9F5D0 800AEDD0 801A0300 */  sll        $v1, $v1, 10
    /* 9F5D4 800AEDD4 FF038430 */  andi       $a0, $a0, 0x3FF
    /* 9F5D8 800AEDD8 25208200 */  or         $a0, $a0, $v0
    /* 9F5DC 800AEDDC 1000A28C */  lw         $v0, 0x10($a1)
    /* 9F5E0 800AEDE0 00000000 */  nop
    /* 9F5E4 800AEDE4 09F84000 */  jalr       $v0
    /* 9F5E8 800AEDE8 25206400 */   or        $a0, $v1, $a0
    /* 9F5EC 800AEDEC 72002426 */  addiu      $a0, $s1, 0x72
    /* 9F5F0 800AEDF0 72002296 */  lhu        $v0, 0x72($s1)
    /* 9F5F4 800AEDF4 08000386 */  lh         $v1, 0x8($s0)
    /* 9F5F8 800AEDF8 00140200 */  sll        $v0, $v0, 16
    /* 9F5FC 800AEDFC 03140200 */  sra        $v0, $v0, 16
    /* 9F600 800AEE00 13004314 */  bne        $v0, $v1, .L800AEE50
    /* 9F604 800AEE04 00000000 */   nop
    /* 9F608 800AEE08 02008294 */  lhu        $v0, 0x2($a0)
    /* 9F60C 800AEE0C 0A000386 */  lh         $v1, 0xA($s0)
    /* 9F610 800AEE10 00140200 */  sll        $v0, $v0, 16
    /* 9F614 800AEE14 03140200 */  sra        $v0, $v0, 16
    /* 9F618 800AEE18 0D004314 */  bne        $v0, $v1, .L800AEE50
    /* 9F61C 800AEE1C 00000000 */   nop
    /* 9F620 800AEE20 04008294 */  lhu        $v0, 0x4($a0)
    /* 9F624 800AEE24 0C000386 */  lh         $v1, 0xC($s0)
    /* 9F628 800AEE28 00140200 */  sll        $v0, $v0, 16
    /* 9F62C 800AEE2C 03140200 */  sra        $v0, $v0, 16
    /* 9F630 800AEE30 07004314 */  bne        $v0, $v1, .L800AEE50
    /* 9F634 800AEE34 00000000 */   nop
    /* 9F638 800AEE38 06008294 */  lhu        $v0, 0x6($a0)
    /* 9F63C 800AEE3C 0E000386 */  lh         $v1, 0xE($s0)
    /* 9F640 800AEE40 00140200 */  sll        $v0, $v0, 16
    /* 9F644 800AEE44 03140200 */  sra        $v0, $v0, 16
    /* 9F648 800AEE48 6E004310 */  beq        $v0, $v1, .L800AF004
    /* 9F64C 800AEE4C 00000000 */   nop
  .L800AEE50:
    /* 9F650 800AEE50 8BEC020C */  jal        func_800BB22C
    /* 9F654 800AEE54 00000000 */   nop
    /* 9F658 800AEE58 08000486 */  lh         $a0, 0x8($s0)
    /* 9F65C 800AEE5C 120002A2 */  sb         $v0, 0x12($s0)
    /* 9F660 800AEE60 FF004230 */  andi       $v0, $v0, 0xFF
    /* 9F664 800AEE64 80180400 */  sll        $v1, $a0, 2
    /* 9F668 800AEE68 21186400 */  addu       $v1, $v1, $a0
    /* 9F66C 800AEE6C 40180300 */  sll        $v1, $v1, 1
    /* 9F670 800AEE70 0A000486 */  lh         $a0, 0xA($s0)
    /* 9F674 800AEE74 03004010 */  beqz       $v0, .L800AEE84
    /* 9F678 800AEE78 60026624 */   addiu     $a2, $v1, 0x260
    /* 9F67C 800AEE7C A2BB0208 */  j          .L800AEE88
    /* 9F680 800AEE80 13009124 */   addiu     $s1, $a0, 0x13
  .L800AEE84:
    /* 9F684 800AEE84 10009124 */  addiu      $s1, $a0, 0x10
  .L800AEE88:
    /* 9F688 800AEE88 0C000386 */  lh         $v1, 0xC($s0)
    /* 9F68C 800AEE8C 00000000 */  nop
    /* 9F690 800AEE90 05006010 */  beqz       $v1, .L800AEEA8
    /* 9F694 800AEE94 80100300 */   sll       $v0, $v1, 2
    /* 9F698 800AEE98 21104300 */  addu       $v0, $v0, $v1
    /* 9F69C 800AEE9C 40100200 */  sll        $v0, $v0, 1
    /* 9F6A0 800AEEA0 ABBB0208 */  j          .L800AEEAC
    /* 9F6A4 800AEEA4 2138C200 */   addu      $a3, $a2, $v0
  .L800AEEA8:
    /* 9F6A8 800AEEA8 000AC724 */  addiu      $a3, $a2, 0xA00
  .L800AEEAC:
    /* 9F6AC 800AEEAC 0E000286 */  lh         $v0, 0xE($s0)
    /* 9F6B0 800AEEB0 00000000 */  nop
    /* 9F6B4 800AEEB4 02004014 */  bnez       $v0, .L800AEEC0
    /* 9F6B8 800AEEB8 21902202 */   addu      $s2, $s1, $v0
    /* 9F6BC 800AEEBC F0003226 */  addiu      $s2, $s1, 0xF0
  .L800AEEC0:
    /* 9F6C0 800AEEC0 F401C228 */  slti       $v0, $a2, 0x1F4
    /* 9F6C4 800AEEC4 05004014 */  bnez       $v0, .L800AEEDC
    /* 9F6C8 800AEEC8 F4010524 */   addiu     $a1, $zero, 0x1F4
    /* 9F6CC 800AEECC DB0CC228 */  slti       $v0, $a2, 0xCDB
    /* 9F6D0 800AEED0 02004010 */  beqz       $v0, .L800AEEDC
    /* 9F6D4 800AEED4 DA0C0524 */   addiu     $a1, $zero, 0xCDA
    /* 9F6D8 800AEED8 2128C000 */  addu       $a1, $a2, $zero
  .L800AEEDC:
    /* 9F6DC 800AEEDC 2130A000 */  addu       $a2, $a1, $zero
    /* 9F6E0 800AEEE0 5000C524 */  addiu      $a1, $a2, 0x50
    /* 9F6E4 800AEEE4 2A10E500 */  slt        $v0, $a3, $a1
    /* 9F6E8 800AEEE8 06004014 */  bnez       $v0, .L800AEF04
    /* 9F6EC 800AEEEC 1000222A */   slti      $v0, $s1, 0x10
    /* 9F6F0 800AEEF0 DB0CE228 */  slti       $v0, $a3, 0xCDB
    /* 9F6F4 800AEEF4 02004010 */  beqz       $v0, .L800AEF00
    /* 9F6F8 800AEEF8 DA0C0524 */   addiu     $a1, $zero, 0xCDA
    /* 9F6FC 800AEEFC 2128E000 */  addu       $a1, $a3, $zero
  .L800AEF00:
    /* 9F700 800AEF00 1000222A */  slti       $v0, $s1, 0x10
  .L800AEF04:
    /* 9F704 800AEF04 12004014 */  bnez       $v0, .L800AEF50
    /* 9F708 800AEF08 2138A000 */   addu      $a3, $a1, $zero
    /* 9F70C 800AEF0C 12000292 */  lbu        $v0, 0x12($s0)
    /* 9F710 800AEF10 00000000 */  nop
    /* 9F714 800AEF14 05004010 */  beqz       $v0, .L800AEF2C
    /* 9F718 800AEF18 3701222A */   slti      $v0, $s1, 0x137
    /* 9F71C 800AEF1C 06004010 */  beqz       $v0, .L800AEF38
    /* 9F720 800AEF20 21202002 */   addu      $a0, $s1, $zero
    /* 9F724 800AEF24 D6BB0208 */  j          .L800AEF58
    /* 9F728 800AEF28 21888000 */   addu      $s1, $a0, $zero
  .L800AEF2C:
    /* 9F72C 800AEF2C 0101222A */  slti       $v0, $s1, 0x101
    /* 9F730 800AEF30 08004014 */  bnez       $v0, .L800AEF54
    /* 9F734 800AEF34 21202002 */   addu      $a0, $s1, $zero
  .L800AEF38:
    /* 9F738 800AEF38 12000292 */  lbu        $v0, 0x12($s0)
    /* 9F73C 800AEF3C 00000000 */  nop
    /* 9F740 800AEF40 04004010 */  beqz       $v0, .L800AEF54
    /* 9F744 800AEF44 00010424 */   addiu     $a0, $zero, 0x100
    /* 9F748 800AEF48 D5BB0208 */  j          .L800AEF54
    /* 9F74C 800AEF4C 36010424 */   addiu     $a0, $zero, 0x136
  .L800AEF50:
    /* 9F750 800AEF50 10000424 */  addiu      $a0, $zero, 0x10
  .L800AEF54:
    /* 9F754 800AEF54 21888000 */  addu       $s1, $a0, $zero
  .L800AEF58:
    /* 9F758 800AEF58 02002526 */  addiu      $a1, $s1, 0x2
    /* 9F75C 800AEF5C 2A104502 */  slt        $v0, $s2, $a1
    /* 9F760 800AEF60 11004014 */  bnez       $v0, .L800AEFA8
    /* 9F764 800AEF64 2118A000 */   addu      $v1, $a1, $zero
    /* 9F768 800AEF68 12000292 */  lbu        $v0, 0x12($s0)
    /* 9F76C 800AEF6C 00000000 */  nop
    /* 9F770 800AEF70 05004010 */  beqz       $v0, .L800AEF88
    /* 9F774 800AEF74 3901422A */   slti      $v0, $s2, 0x139
    /* 9F778 800AEF78 06004010 */  beqz       $v0, .L800AEF94
    /* 9F77C 800AEF7C 21184002 */   addu      $v1, $s2, $zero
    /* 9F780 800AEF80 EBBB0208 */  j          .L800AEFAC
    /* 9F784 800AEF84 21906000 */   addu      $s2, $v1, $zero
  .L800AEF88:
    /* 9F788 800AEF88 0301422A */  slti       $v0, $s2, 0x103
    /* 9F78C 800AEF8C 06004014 */  bnez       $v0, .L800AEFA8
    /* 9F790 800AEF90 21184002 */   addu      $v1, $s2, $zero
  .L800AEF94:
    /* 9F794 800AEF94 12000292 */  lbu        $v0, 0x12($s0)
    /* 9F798 800AEF98 00000000 */  nop
    /* 9F79C 800AEF9C 02004010 */  beqz       $v0, .L800AEFA8
    /* 9F7A0 800AEFA0 02010324 */   addiu     $v1, $zero, 0x102
    /* 9F7A4 800AEFA4 38010324 */  addiu      $v1, $zero, 0x138
  .L800AEFA8:
    /* 9F7A8 800AEFA8 21906000 */  addu       $s2, $v1, $zero
  .L800AEFAC:
    /* 9F7AC 800AEFAC FF0FE330 */  andi       $v1, $a3, 0xFFF
    /* 9F7B0 800AEFB0 001B0300 */  sll        $v1, $v1, 12
    /* 9F7B4 800AEFB4 FF0FC430 */  andi       $a0, $a2, 0xFFF
    /* 9F7B8 800AEFB8 0006023C */  lui        $v0, (0x6000000 >> 16)
    /* 9F7BC 800AEFBC 0D80053C */  lui        $a1, %hi(D_800CEABC)
    /* 9F7C0 800AEFC0 BCEAA58C */  lw         $a1, %lo(D_800CEABC)($a1)
    /* 9F7C4 800AEFC4 25208200 */  or         $a0, $a0, $v0
    /* 9F7C8 800AEFC8 1000A28C */  lw         $v0, 0x10($a1)
    /* 9F7CC 800AEFCC 00000000 */  nop
    /* 9F7D0 800AEFD0 09F84000 */  jalr       $v0
    /* 9F7D4 800AEFD4 25206400 */   or        $a0, $v1, $a0
    /* 9F7D8 800AEFD8 FF034332 */  andi       $v1, $s2, 0x3FF
    /* 9F7DC 800AEFDC 801A0300 */  sll        $v1, $v1, 10
    /* 9F7E0 800AEFE0 FF032432 */  andi       $a0, $s1, 0x3FF
    /* 9F7E4 800AEFE4 0007023C */  lui        $v0, (0x7000000 >> 16)
    /* 9F7E8 800AEFE8 0D80053C */  lui        $a1, %hi(D_800CEABC)
    /* 9F7EC 800AEFEC BCEAA58C */  lw         $a1, %lo(D_800CEABC)($a1)
    /* 9F7F0 800AEFF0 25208200 */  or         $a0, $a0, $v0
    /* 9F7F4 800AEFF4 1000A28C */  lw         $v0, 0x10($a1)
    /* 9F7F8 800AEFF8 00000000 */  nop
    /* 9F7FC 800AEFFC 09F84000 */  jalr       $v0
    /* 9F800 800AF000 25206400 */   or        $a0, $v1, $a0
  .L800AF004:
    /* 9F804 800AF004 0D80043C */  lui        $a0, %hi(D_800CEB40)
    /* 9F808 800AF008 40EB8424 */  addiu      $a0, $a0, %lo(D_800CEB40)
    /* 9F80C 800AF00C 0000838C */  lw         $v1, 0x0($a0)
    /* 9F810 800AF010 1000028E */  lw         $v0, 0x10($s0)
    /* 9F814 800AF014 00000000 */  nop
    /* 9F818 800AF018 19006214 */  bne        $v1, $v0, .L800AF080
    /* 9F81C 800AF01C 00000000 */   nop
    /* 9F820 800AF020 F0FF8294 */  lhu        $v0, -0x10($a0)
    /* 9F824 800AF024 00000386 */  lh         $v1, 0x0($s0)
    /* 9F828 800AF028 00140200 */  sll        $v0, $v0, 16
    /* 9F82C 800AF02C 03140200 */  sra        $v0, $v0, 16
    /* 9F830 800AF030 13004314 */  bne        $v0, $v1, .L800AF080
    /* 9F834 800AF034 F0FF8424 */   addiu     $a0, $a0, -0x10
    /* 9F838 800AF038 02008294 */  lhu        $v0, 0x2($a0)
    /* 9F83C 800AF03C 02000386 */  lh         $v1, 0x2($s0)
    /* 9F840 800AF040 00140200 */  sll        $v0, $v0, 16
    /* 9F844 800AF044 03140200 */  sra        $v0, $v0, 16
    /* 9F848 800AF048 0D004314 */  bne        $v0, $v1, .L800AF080
    /* 9F84C 800AF04C 00000000 */   nop
    /* 9F850 800AF050 04008294 */  lhu        $v0, 0x4($a0)
    /* 9F854 800AF054 04000386 */  lh         $v1, 0x4($s0)
    /* 9F858 800AF058 00140200 */  sll        $v0, $v0, 16
    /* 9F85C 800AF05C 03140200 */  sra        $v0, $v0, 16
    /* 9F860 800AF060 07004314 */  bne        $v0, $v1, .L800AF080
    /* 9F864 800AF064 00000000 */   nop
    /* 9F868 800AF068 06008294 */  lhu        $v0, 0x6($a0)
    /* 9F86C 800AF06C 06000386 */  lh         $v1, 0x6($s0)
    /* 9F870 800AF070 00140200 */  sll        $v0, $v0, 16
    /* 9F874 800AF074 03140200 */  sra        $v0, $v0, 16
    /* 9F878 800AF078 3A004310 */  beq        $v0, $v1, .L800AF164
    /* 9F87C 800AF07C 00000000 */   nop
  .L800AF080:
    /* 9F880 800AF080 8BEC020C */  jal        func_800BB22C
    /* 9F884 800AF084 00000000 */   nop
    /* 9F888 800AF088 120002A2 */  sb         $v0, 0x12($s0)
    /* 9F88C 800AF08C FF004230 */  andi       $v0, $v0, 0xFF
    /* 9F890 800AF090 01000324 */  addiu      $v1, $zero, 0x1
    /* 9F894 800AF094 02004314 */  bne        $v0, $v1, .L800AF0A0
    /* 9F898 800AF098 00000000 */   nop
    /* 9F89C 800AF09C 08007336 */  ori        $s3, $s3, (0x8000008 & 0xFFFF)
  .L800AF0A0:
    /* 9F8A0 800AF0A0 11000292 */  lbu        $v0, 0x11($s0)
    /* 9F8A4 800AF0A4 00000000 */  nop
    /* 9F8A8 800AF0A8 02004010 */  beqz       $v0, .L800AF0B4
    /* 9F8AC 800AF0AC 00000000 */   nop
    /* 9F8B0 800AF0B0 10007336 */  ori        $s3, $s3, (0x8000010 & 0xFFFF)
  .L800AF0B4:
    /* 9F8B4 800AF0B4 10000292 */  lbu        $v0, 0x10($s0)
    /* 9F8B8 800AF0B8 00000000 */  nop
    /* 9F8BC 800AF0BC 02004010 */  beqz       $v0, .L800AF0C8
    /* 9F8C0 800AF0C0 00000000 */   nop
    /* 9F8C4 800AF0C4 20007336 */  ori        $s3, $s3, (0x8000020 & 0xFFFF)
  .L800AF0C8:
    /* 9F8C8 800AF0C8 0D80023C */  lui        $v0, %hi(D_800CEAC7)
    /* 9F8CC 800AF0CC C7EA4290 */  lbu        $v0, %lo(D_800CEAC7)($v0)
    /* 9F8D0 800AF0D0 00000000 */  nop
    /* 9F8D4 800AF0D4 02004010 */  beqz       $v0, .L800AF0E0
    /* 9F8D8 800AF0D8 00000000 */   nop
    /* 9F8DC 800AF0DC 80007336 */  ori        $s3, $s3, (0x8000080 & 0xFFFF)
  .L800AF0E0:
    /* 9F8E0 800AF0E0 04000386 */  lh         $v1, 0x4($s0)
    /* 9F8E4 800AF0E4 00000000 */  nop
    /* 9F8E8 800AF0E8 19016228 */  slti       $v0, $v1, 0x119
    /* 9F8EC 800AF0EC 0E004014 */  bnez       $v0, .L800AF128
    /* 9F8F0 800AF0F0 61016228 */   slti      $v0, $v1, 0x161
    /* 9F8F4 800AF0F4 03004010 */  beqz       $v0, .L800AF104
    /* 9F8F8 800AF0F8 91016228 */   slti      $v0, $v1, 0x191
    /* 9F8FC 800AF0FC 4ABC0208 */  j          .L800AF128
    /* 9F900 800AF100 01007336 */   ori       $s3, $s3, (0x8000001 & 0xFFFF)
  .L800AF104:
    /* 9F904 800AF104 03004010 */  beqz       $v0, .L800AF114
    /* 9F908 800AF108 31026228 */   slti      $v0, $v1, 0x231
    /* 9F90C 800AF10C 4ABC0208 */  j          .L800AF128
    /* 9F910 800AF110 40007336 */   ori       $s3, $s3, (0x8000040 & 0xFFFF)
  .L800AF114:
    /* 9F914 800AF114 03004010 */  beqz       $v0, .L800AF124
    /* 9F918 800AF118 00000000 */   nop
    /* 9F91C 800AF11C 4ABC0208 */  j          .L800AF128
    /* 9F920 800AF120 02007336 */   ori       $s3, $s3, (0x8000002 & 0xFFFF)
  .L800AF124:
    /* 9F924 800AF124 03007336 */  ori        $s3, $s3, (0x8000003 & 0xFFFF)
  .L800AF128:
    /* 9F928 800AF128 12000292 */  lbu        $v0, 0x12($s0)
    /* 9F92C 800AF12C 06000386 */  lh         $v1, 0x6($s0)
    /* 9F930 800AF130 02004014 */  bnez       $v0, .L800AF13C
    /* 9F934 800AF134 21016228 */   slti      $v0, $v1, 0x121
    /* 9F938 800AF138 01016228 */  slti       $v0, $v1, 0x101
  .L800AF13C:
    /* 9F93C 800AF13C 02004014 */  bnez       $v0, .L800AF148
    /* 9F940 800AF140 00000000 */   nop
    /* 9F944 800AF144 24007336 */  ori        $s3, $s3, (0x8000024 & 0xFFFF)
  .L800AF148:
    /* 9F948 800AF148 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9F94C 800AF14C BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9F950 800AF150 00000000 */  nop
    /* 9F954 800AF154 1000428C */  lw         $v0, 0x10($v0)
    /* 9F958 800AF158 00000000 */  nop
    /* 9F95C 800AF15C 09F84000 */  jalr       $v0
    /* 9F960 800AF160 21206002 */   addu      $a0, $s3, $zero
  .L800AF164:
    /* 9F964 800AF164 0D80043C */  lui        $a0, %hi(D_800CEB30)
    /* 9F968 800AF168 30EB8424 */  addiu      $a0, $a0, %lo(D_800CEB30)
    /* 9F96C 800AF16C 21280002 */  addu       $a1, $s0, $zero
    /* 9F970 800AF170 46C4020C */  jal        func_800B1118
    /* 9F974 800AF174 14000624 */   addiu     $a2, $zero, 0x14
    /* 9F978 800AF178 21100002 */  addu       $v0, $s0, $zero
    /* 9F97C 800AF17C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9F980 800AF180 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9F984 800AF184 1800B28F */  lw         $s2, 0x18($sp)
    /* 9F988 800AF188 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F98C 800AF18C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F990 800AF190 0800E003 */  jr         $ra
    /* 9F994 800AF194 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AED64
