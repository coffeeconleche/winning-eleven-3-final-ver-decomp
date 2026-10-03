nonmatching func_800A95E8, 0x34

glabel func_800A95E8
    /* 99DE8 800A95E8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 99DEC 800A95EC 09000434 */  ori        $a0, $zero, 0x9
    /* 99DF0 800A95F0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 99DF4 800A95F4 DE0080A7 */  sh         $zero, %gp_rel(D_800E6B6A)($gp)
    /* 99DF8 800A95F8 5CDC020C */  jal        func_800B7170
    /* 99DFC 800A95FC 21280000 */   addu      $a1, $zero, $zero
    /* 99E00 800A9600 21100000 */  addu       $v0, $zero, $zero
    /* 99E04 800A9604 0E80013C */  lui        $at, %hi(D_800E6B28)
    /* 99E08 800A9608 286B20A4 */  sh         $zero, %lo(D_800E6B28)($at)
    /* 99E0C 800A960C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 99E10 800A9610 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 99E14 800A9614 0800E003 */  jr         $ra
    /* 99E18 800A9618 00000000 */   nop
endlabel func_800A95E8
