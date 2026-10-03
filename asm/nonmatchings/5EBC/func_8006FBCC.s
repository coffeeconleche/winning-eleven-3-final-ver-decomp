nonmatching func_8006FBCC, 0x3C

glabel func_8006FBCC
    /* 603CC 8006FBCC FF008430 */  andi       $a0, $a0, 0xFF
    /* 603D0 8006FBD0 80180400 */  sll        $v1, $a0, 2
    /* 603D4 8006FBD4 21186400 */  addu       $v1, $v1, $a0
    /* 603D8 8006FBD8 C0180300 */  sll        $v1, $v1, 3
    /* 603DC 8006FBDC FF00A530 */  andi       $a1, $a1, 0xFF
    /* 603E0 8006FBE0 40100500 */  sll        $v0, $a1, 1
    /* 603E4 8006FBE4 21104500 */  addu       $v0, $v0, $a1
    /* 603E8 8006FBE8 1080013C */  lui        $at, %hi(D_80105514)
    /* 603EC 8006FBEC 21082300 */  addu       $at, $at, $v1
    /* 603F0 8006FBF0 1455238C */  lw         $v1, %lo(D_80105514)($at)
    /* 603F4 8006FBF4 80100200 */  sll        $v0, $v0, 2
    /* 603F8 8006FBF8 21104300 */  addu       $v0, $v0, $v1
    /* 603FC 8006FBFC 040046A0 */  sb         $a2, 0x4($v0)
    /* 60400 8006FC00 0800E003 */  jr         $ra
    /* 60404 8006FC04 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8006FBCC
