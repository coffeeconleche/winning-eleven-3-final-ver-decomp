nonmatching func_8006FAF4, 0x3C

glabel func_8006FAF4
    /* 602F4 8006FAF4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 602F8 8006FAF8 80180400 */  sll        $v1, $a0, 2
    /* 602FC 8006FAFC 21186400 */  addu       $v1, $v1, $a0
    /* 60300 8006FB00 C0180300 */  sll        $v1, $v1, 3
    /* 60304 8006FB04 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 60308 8006FB08 40100500 */  sll        $v0, $a1, 1
    /* 6030C 8006FB0C 21104500 */  addu       $v0, $v0, $a1
    /* 60310 8006FB10 1080013C */  lui        $at, %hi(D_80105514)
    /* 60314 8006FB14 21082300 */  addu       $at, $at, $v1
    /* 60318 8006FB18 1455238C */  lw         $v1, %lo(D_80105514)($at)
    /* 6031C 8006FB1C 80100200 */  sll        $v0, $v0, 2
    /* 60320 8006FB20 21104300 */  addu       $v0, $v0, $v1
    /* 60324 8006FB24 0A0046A0 */  sb         $a2, 0xA($v0)
    /* 60328 8006FB28 0800E003 */  jr         $ra
    /* 6032C 8006FB2C 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8006FAF4
