nonmatching func_800ADC04, 0x3C

glabel func_800ADC04
    /* 9E404 800ADC04 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 9E408 800ADC08 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 9E40C 800ADC0C 00FF073C */  lui        $a3, (0xFF000000 >> 16)
    /* 9E410 800ADC10 0000A38C */  lw         $v1, 0x0($a1)
    /* 9E414 800ADC14 0000828C */  lw         $v0, 0x0($a0)
    /* 9E418 800ADC18 24186700 */  and        $v1, $v1, $a3
    /* 9E41C 800ADC1C 24104600 */  and        $v0, $v0, $a2
    /* 9E420 800ADC20 25186200 */  or         $v1, $v1, $v0
    /* 9E424 800ADC24 0000A3AC */  sw         $v1, 0x0($a1)
    /* 9E428 800ADC28 0000828C */  lw         $v0, 0x0($a0)
    /* 9E42C 800ADC2C 2428A600 */  and        $a1, $a1, $a2
    /* 9E430 800ADC30 24104700 */  and        $v0, $v0, $a3
    /* 9E434 800ADC34 25104500 */  or         $v0, $v0, $a1
    /* 9E438 800ADC38 0800E003 */  jr         $ra
    /* 9E43C 800ADC3C 000082AC */   sw        $v0, 0x0($a0)
endlabel func_800ADC04
