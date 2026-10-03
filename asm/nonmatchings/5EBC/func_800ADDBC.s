nonmatching func_800ADDBC, 0x14

glabel func_800ADDBC
    /* 9E5BC 800ADDBC 03000224 */  addiu      $v0, $zero, 0x3
    /* 9E5C0 800ADDC0 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E5C4 800ADDC4 7C000224 */  addiu      $v0, $zero, 0x7C
    /* 9E5C8 800ADDC8 0800E003 */  jr         $ra
    /* 9E5CC 800ADDCC 070082A0 */   sb        $v0, 0x7($a0)
endlabel func_800ADDBC
