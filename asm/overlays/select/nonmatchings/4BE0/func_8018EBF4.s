nonmatching func_8018EBF4, 0x24

glabel func_8018EBF4
    /* 5C7C 8018EBF4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5C80 8018EBF8 C0100400 */  sll        $v0, $a0, 3
    /* 5C84 8018EBFC 23104400 */  subu       $v0, $v0, $a0
    /* 5C88 8018EC00 80100200 */  sll        $v0, $v0, 2
    /* 5C8C 8018EC04 1E80013C */  lui        $at, %hi(D_801D92A8)
    /* 5C90 8018EC08 21082200 */  addu       $at, $at, $v0
    /* 5C94 8018EC0C A89225A4 */  sh         $a1, %lo(D_801D92A8)($at)
    /* 5C98 8018EC10 0800E003 */  jr         $ra
    /* 5C9C 8018EC14 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8018EBF4
