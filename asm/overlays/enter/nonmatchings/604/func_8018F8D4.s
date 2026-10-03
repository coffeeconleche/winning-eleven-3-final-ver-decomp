nonmatching func_8018F8D4, 0x68

glabel func_8018F8D4
    /* 695C 8018F8D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6960 8018F8D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6964 8018F8DC AE79000C */  jal        func_8001E6B8
    /* 6968 8018F8E0 02000424 */   addiu     $a0, $zero, 0x2
    /* 696C 8018F8E4 88AD020C */  jal        func_800AB620
    /* 6970 8018F8E8 830C4424 */   addiu     $a0, $v0, 0xC83
    /* 6974 8018F8EC 1180023C */  lui        $v0, %hi(D_8010865D)
    /* 6978 8018F8F0 5D864290 */  lbu        $v0, %lo(D_8010865D)($v0)
    /* 697C 8018F8F4 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 6980 8018F8F8 21084100 */  addu       $at, $v0, $at
    /* 6984 8018F8FC DD022490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($at)
    /* 6988 8018F900 7C68010C */  jal        func_8005A1F0
    /* 698C 8018F904 A60F0524 */   addiu     $a1, $zero, 0xFA6
    /* 6990 8018F908 1180023C */  lui        $v0, %hi(D_8010865D)
    /* 6994 8018F90C 5D864290 */  lbu        $v0, %lo(D_8010865D)($v0)
    /* 6998 8018F910 00000000 */  nop
    /* 699C 8018F914 01004238 */  xori       $v0, $v0, 0x1
    /* 69A0 8018F918 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 69A4 8018F91C 21084100 */  addu       $at, $v0, $at
    /* 69A8 8018F920 DD022490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($at)
    /* 69AC 8018F924 7C68010C */  jal        func_8005A1F0
    /* 69B0 8018F928 D60F0524 */   addiu     $a1, $zero, 0xFD6
    /* 69B4 8018F92C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 69B8 8018F930 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 69BC 8018F934 0800E003 */  jr         $ra
    /* 69C0 8018F938 00000000 */   nop
endlabel func_8018F8D4
