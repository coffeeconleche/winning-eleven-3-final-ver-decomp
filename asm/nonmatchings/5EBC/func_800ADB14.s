nonmatching func_800ADB14, 0x18

glabel func_800ADB14
    /* 9E314 800ADB14 80110500 */  sll        $v0, $a1, 6
    /* 9E318 800ADB18 03210400 */  sra        $a0, $a0, 4
    /* 9E31C 800ADB1C 3F008430 */  andi       $a0, $a0, 0x3F
    /* 9E320 800ADB20 25104400 */  or         $v0, $v0, $a0
    /* 9E324 800ADB24 0800E003 */  jr         $ra
    /* 9E328 800ADB28 FFFF4230 */   andi      $v0, $v0, 0xFFFF
endlabel func_800ADB14
