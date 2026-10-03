nonmatching func_8003EF94, 0x13C

glabel func_8003EF94
    /* 2F794 8003EF94 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2F798 8003EF98 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2F79C 8003EF9C 21888000 */  addu       $s1, $a0, $zero
    /* 2F7A0 8003EFA0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F7A4 8003EFA4 2180A000 */  addu       $s0, $a1, $zero
    /* 2F7A8 8003EFA8 21200002 */  addu       $a0, $s0, $zero
    /* 2F7AC 8003EFAC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2F7B0 8003EFB0 644B010C */  jal        func_80052D90
    /* 2F7B4 8003EFB4 1800B2AF */   sw        $s2, 0x18($sp)
    /* 2F7B8 8003EFB8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2F7BC 8003EFBC 03004010 */  beqz       $v0, .L8003EFCC
    /* 2F7C0 8003EFC0 801F123C */   lui       $s2, (0x1F8002F4 >> 16)
    /* 2F7C4 8003EFC4 2DFC0008 */  j          .L8003F0B4
    /* 2F7C8 8003EFC8 21100000 */   addu      $v0, $zero, $zero
  .L8003EFCC:
    /* 2F7CC 8003EFCC A003028E */  lw         $v0, 0x3A0($s0)
    /* 2F7D0 8003EFD0 00000000 */  nop
    /* 2F7D4 8003EFD4 1B004010 */  beqz       $v0, .L8003F044
    /* 2F7D8 8003EFD8 01000424 */   addiu     $a0, $zero, 0x1
    /* 2F7DC 8003EFDC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 2F7E0 8003EFE0 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 2F7E4 8003EFE4 99032392 */  lbu        $v1, 0x399($s1)
    /* 2F7E8 8003EFE8 02004284 */  lh         $v0, 0x2($v0)
    /* 2F7EC 8003EFEC 07006010 */  beqz       $v1, .L8003F00C
    /* 2F7F0 8003EFF0 00000000 */   nop
    /* 2F7F4 8003EFF4 23100200 */  negu       $v0, $v0
    /* 2F7F8 8003EFF8 1EDF4228 */  slti       $v0, $v0, -0x20E2
    /* 2F7FC 8003EFFC 06004014 */  bnez       $v0, .L8003F018
    /* 2F800 8003F000 0C000424 */   addiu     $a0, $zero, 0xC
    /* 2F804 8003F004 11FC0008 */  j          .L8003F044
    /* 2F808 8003F008 00000000 */   nop
  .L8003F00C:
    /* 2F80C 8003F00C 1EDF4228 */  slti       $v0, $v0, -0x20E2
    /* 2F810 8003F010 0C004010 */  beqz       $v0, .L8003F044
    /* 2F814 8003F014 0C000424 */   addiu     $a0, $zero, 0xC
  .L8003F018:
    /* 2F818 8003F018 F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 2F81C 8003F01C 00000000 */  nop
    /* 2F820 8003F020 06004284 */  lh         $v0, 0x6($v0)
    /* 2F824 8003F024 00000000 */  nop
    /* 2F828 8003F028 02004104 */  bgez       $v0, .L8003F034
    /* 2F82C 8003F02C 00000000 */   nop
    /* 2F830 8003F030 23100200 */  negu       $v0, $v0
  .L8003F034:
    /* 2F834 8003F034 F4134228 */  slti       $v0, $v0, 0x13F4
    /* 2F838 8003F038 02004014 */  bnez       $v0, .L8003F044
    /* 2F83C 8003F03C 01000424 */   addiu     $a0, $zero, 0x1
    /* 2F840 8003F040 0C000424 */  addiu      $a0, $zero, 0xC
  .L8003F044:
    /* 2F844 8003F044 CC79000C */  jal        func_8001E730
    /* 2F848 8003F048 00000000 */   nop
    /* 2F84C 8003F04C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2F850 8003F050 14004010 */  beqz       $v0, .L8003F0A4
    /* 2F854 8003F054 21100000 */   addu      $v0, $zero, $zero
    /* 2F858 8003F058 AE79000C */  jal        func_8001E6B8
    /* 2F85C 8003F05C 0C000424 */   addiu     $a0, $zero, 0xC
    /* 2F860 8003F060 03004010 */  beqz       $v0, .L8003F070
    /* 2F864 8003F064 00000000 */   nop
    /* 2F868 8003F068 1DFC0008 */  j          .L8003F074
    /* 2F86C 8003F06C 01000224 */   addiu     $v0, $zero, 0x1
  .L8003F070:
    /* 2F870 8003F070 02000224 */  addiu      $v0, $zero, 0x2
  .L8003F074:
    /* 2F874 8003F074 AF0242A2 */  sb         $v0, (0x1F8002AF & 0xFFFF)($s2)
    /* 2F878 8003F078 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 2F87C 8003F07C 00000000 */  nop
    /* 2F880 8003F080 AD0242A2 */  sb         $v0, (0x1F8002AD & 0xFFFF)($s2)
    /* 2F884 8003F084 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 2F888 8003F088 21200002 */  addu       $a0, $s0, $zero
    /* 2F88C 8003F08C BF24010C */  jal        func_800492FC
    /* 2F890 8003F090 AE0242A2 */   sb        $v0, (0x1F8002AE & 0xFFFF)($s2)
    /* 2F894 8003F094 715C000C */  jal        func_800171C4
    /* 2F898 8003F098 06000424 */   addiu     $a0, $zero, 0x6
    /* 2F89C 8003F09C 2DFC0008 */  j          .L8003F0B4
    /* 2F8A0 8003F0A0 01000224 */   addiu     $v0, $zero, 0x1
  .L8003F0A4:
    /* 2F8A4 8003F0A4 08000324 */  addiu      $v1, $zero, 0x8
    /* 2F8A8 8003F0A8 9B0303A2 */  sb         $v1, 0x39B($s0)
    /* 2F8AC 8003F0AC 01000324 */  addiu      $v1, $zero, 0x1
    /* 2F8B0 8003F0B0 C80323A6 */  sh         $v1, 0x3C8($s1)
  .L8003F0B4:
    /* 2F8B4 8003F0B4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2F8B8 8003F0B8 1800B28F */  lw         $s2, 0x18($sp)
    /* 2F8BC 8003F0BC 1400B18F */  lw         $s1, 0x14($sp)
    /* 2F8C0 8003F0C0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F8C4 8003F0C4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F8C8 8003F0C8 0800E003 */  jr         $ra
    /* 2F8CC 8003F0CC 00000000 */   nop
endlabel func_8003EF94
