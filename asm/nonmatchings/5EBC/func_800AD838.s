nonmatching func_800AD838, 0xE8

glabel func_800AD838
    /* 9E038 800AD838 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 9E03C 800AD83C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 9E040 800AD840 4000B38F */  lw         $s3, 0x40($sp)
    /* 9E044 800AD844 4400A38F */  lw         $v1, 0x44($sp)
    /* 9E048 800AD848 4800A28F */  lw         $v0, 0x48($sp)
    /* 9E04C 800AD84C 21408000 */  addu       $t0, $a0, $zero
    /* 9E050 800AD850 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9E054 800AD854 2180A000 */  addu       $s0, $a1, $zero
    /* 9E058 800AD858 2000B2AF */  sw         $s2, 0x20($sp)
    /* 9E05C 800AD85C 2190C000 */  addu       $s2, $a2, $zero
    /* 9E060 800AD860 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 9E064 800AD864 2188E000 */  addu       $s1, $a3, $zero
    /* 9E068 800AD868 2800BFAF */  sw         $ra, 0x28($sp)
    /* 9E06C 800AD86C 1000B1A7 */  sh         $s1, 0x10($sp)
    /* 9E070 800AD870 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9E074 800AD874 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E078 800AD878 13000212 */  beq        $s0, $v0, .L800AD8C8
    /* 9E07C 800AD87C 1200B3A7 */   sh        $s3, 0x12($sp)
    /* 9E080 800AD880 0200022A */  slti       $v0, $s0, 0x2
    /* 9E084 800AD884 05004010 */  beqz       $v0, .L800AD89C
    /* 9E088 800AD888 00000000 */   nop
    /* 9E08C 800AD88C 08000012 */  beqz       $s0, .L800AD8B0
    /* 9E090 800AD890 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E094 800AD894 39B60208 */  j          .L800AD8E4
    /* 9E098 800AD898 00000000 */   nop
  .L800AD89C:
    /* 9E09C 800AD89C 02000224 */  addiu      $v0, $zero, 0x2
    /* 9E0A0 800AD8A0 0E000212 */  beq        $s0, $v0, .L800AD8DC
    /* 9E0A4 800AD8A4 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E0A8 800AD8A8 39B60208 */  j          .L800AD8E4
    /* 9E0AC 800AD8AC 00000000 */   nop
  .L800AD8B0:
    /* 9E0B0 800AD8B0 02006104 */  bgez       $v1, .L800AD8BC
    /* 9E0B4 800AD8B4 21106000 */   addu      $v0, $v1, $zero
    /* 9E0B8 800AD8B8 03006224 */  addiu      $v0, $v1, 0x3
  .L800AD8BC:
    /* 9E0BC 800AD8BC 83100200 */  sra        $v0, $v0, 2
    /* 9E0C0 800AD8C0 38B60208 */  j          .L800AD8E0
    /* 9E0C4 800AD8C4 1400A2A7 */   sh        $v0, 0x14($sp)
  .L800AD8C8:
    /* 9E0C8 800AD8C8 C2170300 */  srl        $v0, $v1, 31
    /* 9E0CC 800AD8CC 21106200 */  addu       $v0, $v1, $v0
    /* 9E0D0 800AD8D0 43100200 */  sra        $v0, $v0, 1
    /* 9E0D4 800AD8D4 38B60208 */  j          .L800AD8E0
    /* 9E0D8 800AD8D8 1400A2A7 */   sh        $v0, 0x14($sp)
  .L800AD8DC:
    /* 9E0DC 800AD8DC 1400A3A7 */  sh         $v1, 0x14($sp)
  .L800AD8E0:
    /* 9E0E0 800AD8E0 1000A427 */  addiu      $a0, $sp, 0x10
  .L800AD8E4:
    /* 9E0E4 800AD8E4 F8B9020C */  jal        func_800AE7E0
    /* 9E0E8 800AD8E8 21280001 */   addu      $a1, $t0, $zero
    /* 9E0EC 800AD8EC 21200002 */  addu       $a0, $s0, $zero
    /* 9E0F0 800AD8F0 21284002 */  addu       $a1, $s2, $zero
    /* 9E0F4 800AD8F4 21302002 */  addu       $a2, $s1, $zero
    /* 9E0F8 800AD8F8 B6B6020C */  jal        func_800ADAD8
    /* 9E0FC 800AD8FC 21386002 */   addu      $a3, $s3, $zero
    /* 9E100 800AD900 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 9E104 800AD904 2800BF8F */  lw         $ra, 0x28($sp)
    /* 9E108 800AD908 2400B38F */  lw         $s3, 0x24($sp)
    /* 9E10C 800AD90C 2000B28F */  lw         $s2, 0x20($sp)
    /* 9E110 800AD910 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9E114 800AD914 1800B08F */  lw         $s0, 0x18($sp)
    /* 9E118 800AD918 0800E003 */  jr         $ra
    /* 9E11C 800AD91C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800AD838
