nonmatching func_8018EC3C, 0x24

glabel func_8018EC3C
    /* 5CC4 8018EC3C FF008430 */  andi       $a0, $a0, 0xFF
    /* 5CC8 8018EC40 40100400 */  sll        $v0, $a0, 1
    /* 5CCC 8018EC44 21104400 */  addu       $v0, $v0, $a0
    /* 5CD0 8018EC48 C0100200 */  sll        $v0, $v0, 3
    /* 5CD4 8018EC4C 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 5CD8 8018EC50 21082200 */  addu       $at, $at, $v0
    /* 5CDC 8018EC54 A08F25A0 */  sb         $a1, %lo(D_801D8FA0)($at)
    /* 5CE0 8018EC58 0800E003 */  jr         $ra
    /* 5CE4 8018EC5C 00000000 */   nop
endlabel func_8018EC3C
