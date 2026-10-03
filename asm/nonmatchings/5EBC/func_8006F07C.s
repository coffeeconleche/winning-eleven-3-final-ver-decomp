nonmatching func_8006F07C, 0x60

glabel func_8006F07C
    /* 5F87C 8006F07C F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 5F880 8006F080 1180033C */  lui        $v1, %hi(D_8010A31E)
    /* 5F884 8006F084 1EA36384 */  lh         $v1, %lo(D_8010A31E)($v1)
    /* 5F888 8006F088 01000224 */  addiu      $v0, $zero, 0x1
    /* 5F88C 8006F08C 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 5F890 8006F090 300322A0 */  sb         $v0, (0x1F800330 & 0xFFFF)($at)
    /* 5F894 8006F094 FF008230 */  andi       $v0, $a0, 0xFF
    /* 5F898 8006F098 2A104300 */  slt        $v0, $v0, $v1
    /* 5F89C 8006F09C 07004014 */  bnez       $v0, .L8006F0BC
    /* 5F8A0 8006F0A0 21286000 */   addu      $a1, $v1, $zero
    /* 5F8A4 8006F0A4 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 5F8A8 8006F0A8 300320A0 */  sb         $zero, (0x1F800330 & 0xFFFF)($at)
    /* 5F8AC 8006F0AC 1180013C */  lui        $at, %hi(D_8010A31E)
    /* 5F8B0 8006F0B0 1EA320A4 */  sh         $zero, %lo(D_8010A31E)($at)
    /* 5F8B4 8006F0B4 34BC0108 */  j          .L8006F0D0
    /* 5F8B8 8006F0B8 01000224 */   addiu     $v0, $zero, 0x1
  .L8006F0BC:
    /* 5F8BC 8006F0BC FF008230 */  andi       $v0, $a0, 0xFF
    /* 5F8C0 8006F0C0 2310A200 */  subu       $v0, $a1, $v0
    /* 5F8C4 8006F0C4 1180013C */  lui        $at, %hi(D_8010A31E)
    /* 5F8C8 8006F0C8 1EA322A4 */  sh         $v0, %lo(D_8010A31E)($at)
    /* 5F8CC 8006F0CC 21100000 */  addu       $v0, $zero, $zero
  .L8006F0D0:
    /* 5F8D0 8006F0D0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 5F8D4 8006F0D4 0800E003 */  jr         $ra
    /* 5F8D8 8006F0D8 00000000 */   nop
endlabel func_8006F07C
