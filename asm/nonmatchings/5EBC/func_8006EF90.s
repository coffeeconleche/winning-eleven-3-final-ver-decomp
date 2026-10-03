nonmatching func_8006EF90, 0xEC

glabel func_8006EF90
    /* 5F790 8006EF90 801F023C */  lui        $v0, (0x1F8002E2 >> 16)
    /* 5F794 8006EF94 E2024290 */  lbu        $v0, (0x1F8002E2 & 0xFFFF)($v0)
    /* 5F798 8006EF98 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5F79C 8006EF9C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 5F7A0 8006EFA0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5F7A4 8006EFA4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5F7A8 8006EFA8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5F7AC 8006EFAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5F7B0 8006EFB0 07004014 */  bnez       $v0, .L8006EFD0
    /* 5F7B4 8006EFB4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 5F7B8 8006EFB8 21200000 */  addu       $a0, $zero, $zero
    /* 5F7BC 8006EFBC FABB0108 */  j          .L8006EFE8
    /* 5F7C0 8006EFC0 01001324 */   addiu     $s3, $zero, 0x1
  .L8006EFC4:
    /* 5F7C4 8006EFC4 00002296 */  lhu        $v0, 0x0($s1)
    /* 5F7C8 8006EFC8 16BC0108 */  j          .L8006F058
    /* 5F7CC 8006EFCC 00000000 */   nop
  .L8006EFD0:
    /* 5F7D0 8006EFD0 05004004 */  bltz       $v0, .L8006EFE8
    /* 5F7D4 8006EFD4 05004228 */   slti      $v0, $v0, 0x5
    /* 5F7D8 8006EFD8 04004010 */  beqz       $v0, .L8006EFEC
    /* 5F7DC 8006EFDC 21908000 */   addu      $s2, $a0, $zero
    /* 5F7E0 8006EFE0 21200000 */  addu       $a0, $zero, $zero
    /* 5F7E4 8006EFE4 02001324 */  addiu      $s3, $zero, 0x2
  .L8006EFE8:
    /* 5F7E8 8006EFE8 21908000 */  addu       $s2, $a0, $zero
  .L8006EFEC:
    /* 5F7EC 8006EFEC FF004232 */  andi       $v0, $s2, 0xFF
    /* 5F7F0 8006EFF0 FF006332 */  andi       $v1, $s3, 0xFF
    /* 5F7F4 8006EFF4 2B104300 */  sltu       $v0, $v0, $v1
    /* 5F7F8 8006EFF8 17004010 */  beqz       $v0, .L8006F058
    /* 5F7FC 8006EFFC 21100000 */   addu      $v0, $zero, $zero
    /* 5F800 8006F000 0D80143C */  lui        $s4, %hi(D_800C8544)
    /* 5F804 8006F004 44859426 */  addiu      $s4, $s4, %lo(D_800C8544)
  .L8006F008:
    /* 5F808 8006F008 21800000 */  addu       $s0, $zero, $zero
    /* 5F80C 8006F00C FF000232 */  andi       $v0, $s0, 0xFF
  .L8006F010:
    /* 5F810 8006F010 40100200 */  sll        $v0, $v0, 1
    /* 5F814 8006F014 21885400 */  addu       $s1, $v0, $s4
    /* 5F818 8006F018 FF004432 */  andi       $a0, $s2, 0xFF
    /* 5F81C 8006F01C 00002696 */  lhu        $a2, 0x0($s1)
    /* 5F820 8006F020 385D000C */  jal        func_800174E0
    /* 5F824 8006F024 21280000 */   addu      $a1, $zero, $zero
    /* 5F828 8006F028 E6FF4014 */  bnez       $v0, .L8006EFC4
    /* 5F82C 8006F02C 01001026 */   addiu     $s0, $s0, 0x1
    /* 5F830 8006F030 FF000232 */  andi       $v0, $s0, 0xFF
    /* 5F834 8006F034 1200422C */  sltiu      $v0, $v0, 0x12
    /* 5F838 8006F038 F5FF4014 */  bnez       $v0, .L8006F010
    /* 5F83C 8006F03C FF000232 */   andi      $v0, $s0, 0xFF
    /* 5F840 8006F040 01005226 */  addiu      $s2, $s2, 0x1
    /* 5F844 8006F044 FF004232 */  andi       $v0, $s2, 0xFF
    /* 5F848 8006F048 FF006332 */  andi       $v1, $s3, 0xFF
    /* 5F84C 8006F04C 2B104300 */  sltu       $v0, $v0, $v1
    /* 5F850 8006F050 EDFF4014 */  bnez       $v0, .L8006F008
    /* 5F854 8006F054 21100000 */   addu      $v0, $zero, $zero
  .L8006F058:
    /* 5F858 8006F058 2400BF8F */  lw         $ra, 0x24($sp)
    /* 5F85C 8006F05C 2000B48F */  lw         $s4, 0x20($sp)
    /* 5F860 8006F060 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5F864 8006F064 1800B28F */  lw         $s2, 0x18($sp)
    /* 5F868 8006F068 1400B18F */  lw         $s1, 0x14($sp)
    /* 5F86C 8006F06C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5F870 8006F070 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 5F874 8006F074 0800E003 */  jr         $ra
    /* 5F878 8006F078 00000000 */   nop
endlabel func_8006EF90
