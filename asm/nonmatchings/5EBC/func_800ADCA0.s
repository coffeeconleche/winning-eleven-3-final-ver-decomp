nonmatching func_800ADCA0, 0x18

glabel func_800ADCA0
    /* 9E4A0 800ADCA0 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 9E4A4 800ADCA4 0000828C */  lw         $v0, 0x0($a0)
    /* 9E4A8 800ADCA8 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 9E4AC 800ADCAC 25104300 */  or         $v0, $v0, $v1
    /* 9E4B0 800ADCB0 0800E003 */  jr         $ra
    /* 9E4B4 800ADCB4 000082AC */   sw        $v0, 0x0($a0)
endlabel func_800ADCA0
