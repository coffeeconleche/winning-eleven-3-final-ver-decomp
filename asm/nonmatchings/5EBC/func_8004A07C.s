nonmatching func_8004A07C, 0x34

glabel func_8004A07C
    /* 3A87C 8004A07C 801F023C */  lui        $v0, (0x1F80028C >> 16)
    /* 3A880 8004A080 8C024290 */  lbu        $v0, (0x1F80028C & 0xFFFF)($v0)
    /* 3A884 8004A084 00000000 */  nop
    /* 3A888 8004A088 04004014 */  bnez       $v0, .L8004A09C
    /* 3A88C 8004A08C 00000000 */   nop
    /* 3A890 8004A090 AA038290 */  lbu        $v0, 0x3AA($a0)
    /* 3A894 8004A094 2A280108 */  j          .L8004A0A8
    /* 3A898 8004A098 00000000 */   nop
  .L8004A09C:
    /* 3A89C 8004A09C 0C80013C */  lui        $at, %hi(D_800C6B74)
    /* 3A8A0 8004A0A0 21082200 */  addu       $at, $at, $v0
    /* 3A8A4 8004A0A4 746B2290 */  lbu        $v0, %lo(D_800C6B74)($at)
  .L8004A0A8:
    /* 3A8A8 8004A0A8 0800E003 */  jr         $ra
    /* 3A8AC 8004A0AC 00000000 */   nop
endlabel func_8004A07C
