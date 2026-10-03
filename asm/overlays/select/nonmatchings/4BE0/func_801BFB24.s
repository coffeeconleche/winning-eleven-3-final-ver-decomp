nonmatching func_801BFB24, 0x34

glabel func_801BFB24
    /* 36BAC 801BFB24 1E80033C */  lui        $v1, %hi(D_801DA5D0)
    /* 36BB0 801BFB28 D0A56384 */  lh         $v1, %lo(D_801DA5D0)($v1)
    /* 36BB4 801BFB2C 00000000 */  nop
    /* 36BB8 801BFB30 23180300 */  negu       $v1, $v1
    /* 36BBC 801BFB34 80100300 */  sll        $v0, $v1, 2
    /* 36BC0 801BFB38 21104300 */  addu       $v0, $v0, $v1
    /* 36BC4 801BFB3C 80100200 */  sll        $v0, $v0, 2
    /* 36BC8 801BFB40 1080013C */  lui        $at, %hi(D_80105810)
    /* 36BCC 801BFB44 105822A4 */  sh         $v0, %lo(D_80105810)($at)
    /* 36BD0 801BFB48 1080013C */  lui        $at, %hi(D_801058B0)
    /* 36BD4 801BFB4C B05822A4 */  sh         $v0, %lo(D_801058B0)($at)
    /* 36BD8 801BFB50 0800E003 */  jr         $ra
    /* 36BDC 801BFB54 00000000 */   nop
endlabel func_801BFB24
