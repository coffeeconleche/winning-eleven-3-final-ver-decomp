nonmatching func_8006FB90, 0x3C

glabel func_8006FB90
    /* 60390 8006FB90 FF008430 */  andi       $a0, $a0, 0xFF
    /* 60394 8006FB94 80180400 */  sll        $v1, $a0, 2
    /* 60398 8006FB98 21186400 */  addu       $v1, $v1, $a0
    /* 6039C 8006FB9C C0180300 */  sll        $v1, $v1, 3
    /* 603A0 8006FBA0 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 603A4 8006FBA4 40100500 */  sll        $v0, $a1, 1
    /* 603A8 8006FBA8 21104500 */  addu       $v0, $v0, $a1
    /* 603AC 8006FBAC 1080013C */  lui        $at, %hi(D_80105514)
    /* 603B0 8006FBB0 21082300 */  addu       $at, $at, $v1
    /* 603B4 8006FBB4 1455238C */  lw         $v1, %lo(D_80105514)($at)
    /* 603B8 8006FBB8 80100200 */  sll        $v0, $v0, 2
    /* 603BC 8006FBBC 21104300 */  addu       $v0, $v0, $v1
    /* 603C0 8006FBC0 030046A0 */  sb         $a2, 0x3($v0)
    /* 603C4 8006FBC4 0800E003 */  jr         $ra
    /* 603C8 8006FBC8 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8006FB90
