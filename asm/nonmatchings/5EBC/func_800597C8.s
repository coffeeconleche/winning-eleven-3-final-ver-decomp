nonmatching func_800597C8, 0x44

glabel func_800597C8
    /* 49FC8 800597C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 49FCC 800597CC FF008430 */  andi       $a0, $a0, 0xFF
    /* 49FD0 800597D0 05008010 */  beqz       $a0, .L800597E8
    /* 49FD4 800597D4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 49FD8 800597D8 AE79000C */  jal        func_8001E6B8
    /* 49FDC 800597DC 03000424 */   addiu     $a0, $zero, 0x3
    /* 49FE0 800597E0 FD650108 */  j          .L800597F4
    /* 49FE4 800597E4 070E4424 */   addiu     $a0, $v0, 0xE07
  .L800597E8:
    /* 49FE8 800597E8 AE79000C */  jal        func_8001E6B8
    /* 49FEC 800597EC 05000424 */   addiu     $a0, $zero, 0x5
    /* 49FF0 800597F0 EA0D4424 */  addiu      $a0, $v0, 0xDEA
  .L800597F4:
    /* 49FF4 800597F4 88AD020C */  jal        func_800AB620
    /* 49FF8 800597F8 00000000 */   nop
    /* 49FFC 800597FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4A000 80059800 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4A004 80059804 0800E003 */  jr         $ra
    /* 4A008 80059808 00000000 */   nop
endlabel func_800597C8
