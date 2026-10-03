nonmatching func_8018F88C, 0x48

glabel func_8018F88C
    /* 6914 8018F88C 801F023C */  lui        $v0, (0x1F8002E4 >> 16)
    /* 6918 8018F890 E4024290 */  lbu        $v0, (0x1F8002E4 & 0xFFFF)($v0)
    /* 691C 8018F894 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6920 8018F898 05004014 */  bnez       $v0, .L8018F8B0
    /* 6924 8018F89C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 6928 8018F8A0 AE79000C */  jal        func_8001E6B8
    /* 692C 8018F8A4 02000424 */   addiu     $a0, $zero, 0x2
    /* 6930 8018F8A8 2F3E0608 */  j          .L8018F8BC
    /* 6934 8018F8AC 8A0C4424 */   addiu     $a0, $v0, 0xC8A
  .L8018F8B0:
    /* 6938 8018F8B0 AE79000C */  jal        func_8001E6B8
    /* 693C 8018F8B4 03000424 */   addiu     $a0, $zero, 0x3
    /* 6940 8018F8B8 8C0C4424 */  addiu      $a0, $v0, 0xC8C
  .L8018F8BC:
    /* 6944 8018F8BC 88AD020C */  jal        func_800AB620
    /* 6948 8018F8C0 00000000 */   nop
    /* 694C 8018F8C4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6950 8018F8C8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6954 8018F8CC 0800E003 */  jr         $ra
    /* 6958 8018F8D0 00000000 */   nop
endlabel func_8018F88C
