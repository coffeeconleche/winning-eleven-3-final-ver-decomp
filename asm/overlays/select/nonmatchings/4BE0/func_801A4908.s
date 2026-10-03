nonmatching func_801A4908, 0x40

glabel func_801A4908
    /* 1B990 801A4908 1180023C */  lui        $v0, %hi(D_80108667)
    /* 1B994 801A490C 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 1B998 801A4910 00000000 */  nop
    /* 1B99C 801A4914 0F004230 */  andi       $v0, $v0, 0xF
    /* 1B9A0 801A4918 06004010 */  beqz       $v0, .L801A4934
    /* 1B9A4 801A491C FF008230 */   andi      $v0, $a0, 0xFF
    /* 1B9A8 801A4920 1D80013C */  lui        $at, %hi(D_801D1F74)
    /* 1B9AC 801A4924 21082200 */  addu       $at, $at, $v0
    /* 1B9B0 801A4928 741F2290 */  lbu        $v0, %lo(D_801D1F74)($at)
    /* 1B9B4 801A492C 50920608 */  j          .L801A4940
    /* 1B9B8 801A4930 00000000 */   nop
  .L801A4934:
    /* 1B9BC 801A4934 1D80013C */  lui        $at, %hi(D_801D1F64)
    /* 1B9C0 801A4938 21082200 */  addu       $at, $at, $v0
    /* 1B9C4 801A493C 641F2290 */  lbu        $v0, %lo(D_801D1F64)($at)
  .L801A4940:
    /* 1B9C8 801A4940 0800E003 */  jr         $ra
    /* 1B9CC 801A4944 00000000 */   nop
endlabel func_801A4908
