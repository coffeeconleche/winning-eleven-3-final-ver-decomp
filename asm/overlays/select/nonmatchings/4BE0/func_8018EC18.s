nonmatching func_8018EC18, 0x24

glabel func_8018EC18
    /* 5CA0 8018EC18 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5CA4 8018EC1C C0100400 */  sll        $v0, $a0, 3
    /* 5CA8 8018EC20 23104400 */  subu       $v0, $v0, $a0
    /* 5CAC 8018EC24 80100200 */  sll        $v0, $v0, 2
    /* 5CB0 8018EC28 1E80013C */  lui        $at, %hi(D_801D92AA)
    /* 5CB4 8018EC2C 21082200 */  addu       $at, $at, $v0
    /* 5CB8 8018EC30 AA9225A4 */  sh         $a1, %lo(D_801D92AA)($at)
    /* 5CBC 8018EC34 0800E003 */  jr         $ra
    /* 5CC0 8018EC38 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8018EC18
