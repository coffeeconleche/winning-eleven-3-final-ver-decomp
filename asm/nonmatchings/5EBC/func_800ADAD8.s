nonmatching func_800ADAD8, 0x3C

glabel func_800ADAD8
    /* 9E2D8 800ADAD8 03008230 */  andi       $v0, $a0, 0x3
    /* 9E2DC 800ADADC C0110200 */  sll        $v0, $v0, 7
    /* 9E2E0 800ADAE0 0300A530 */  andi       $a1, $a1, 0x3
    /* 9E2E4 800ADAE4 40290500 */  sll        $a1, $a1, 5
    /* 9E2E8 800ADAE8 25104500 */  or         $v0, $v0, $a1
    /* 9E2EC 800ADAEC 0001E330 */  andi       $v1, $a3, 0x100
    /* 9E2F0 800ADAF0 03190300 */  sra        $v1, $v1, 4
    /* 9E2F4 800ADAF4 25104300 */  or         $v0, $v0, $v1
    /* 9E2F8 800ADAF8 FF03C630 */  andi       $a2, $a2, 0x3FF
    /* 9E2FC 800ADAFC 83310600 */  sra        $a2, $a2, 6
    /* 9E300 800ADB00 25104600 */  or         $v0, $v0, $a2
    /* 9E304 800ADB04 0002E730 */  andi       $a3, $a3, 0x200
    /* 9E308 800ADB08 80380700 */  sll        $a3, $a3, 2
    /* 9E30C 800ADB0C 0800E003 */  jr         $ra
    /* 9E310 800ADB10 25104700 */   or        $v0, $v0, $a3
endlabel func_800ADAD8
