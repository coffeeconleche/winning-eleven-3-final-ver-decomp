nonmatching func_8005707C, 0x74

glabel func_8005707C
    /* 4787C 8005707C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 47880 80057080 1000B0AF */  sw         $s0, 0x10($sp)
    /* 47884 80057084 21808000 */  addu       $s0, $a0, $zero
    /* 47888 80057088 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4788C 8005708C 88AD020C */  jal        func_800AB620
    /* 47890 80057090 11000424 */   addiu     $a0, $zero, 0x11
    /* 47894 80057094 AE79000C */  jal        func_8001E6B8
    /* 47898 80057098 02000424 */   addiu     $a0, $zero, 0x2
    /* 4789C 8005709C 06004010 */  beqz       $v0, .L800570B8
    /* 478A0 800570A0 21200002 */   addu      $a0, $s0, $zero
    /* 478A4 800570A4 21280000 */  addu       $a1, $zero, $zero
    /* 478A8 800570A8 B95E010C */  jal        func_80057AE4
    /* 478AC 800570AC 01000624 */   addiu     $a2, $zero, 0x1
    /* 478B0 800570B0 0A004014 */  bnez       $v0, .L800570DC
    /* 478B4 800570B4 00000000 */   nop
  .L800570B8:
    /* 478B8 800570B8 AE79000C */  jal        func_8001E6B8
    /* 478BC 800570BC 03000424 */   addiu     $a0, $zero, 0x3
    /* 478C0 800570C0 04004010 */  beqz       $v0, .L800570D4
    /* 478C4 800570C4 E90C0424 */   addiu     $a0, $zero, 0xCE9
    /* 478C8 800570C8 AE79000C */  jal        func_8001E6B8
    /* 478CC 800570CC 02000424 */   addiu     $a0, $zero, 0x2
    /* 478D0 800570D0 D70C4424 */  addiu      $a0, $v0, 0xCD7
  .L800570D4:
    /* 478D4 800570D4 88AD020C */  jal        func_800AB620
    /* 478D8 800570D8 00000000 */   nop
  .L800570DC:
    /* 478DC 800570DC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 478E0 800570E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 478E4 800570E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 478E8 800570E8 0800E003 */  jr         $ra
    /* 478EC 800570EC 00000000 */   nop
endlabel func_8005707C
