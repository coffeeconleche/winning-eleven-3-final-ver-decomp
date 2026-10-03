nonmatching func_800ADC40, 0x3C

glabel func_800ADC40
    /* 9E440 800ADC40 FF00073C */  lui        $a3, (0xFFFFFF >> 16)
    /* 9E444 800ADC44 FFFFE734 */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
    /* 9E448 800ADC48 00FF083C */  lui        $t0, (0xFF000000 >> 16)
    /* 9E44C 800ADC4C 0000C38C */  lw         $v1, 0x0($a2)
    /* 9E450 800ADC50 0000828C */  lw         $v0, 0x0($a0)
    /* 9E454 800ADC54 24186800 */  and        $v1, $v1, $t0
    /* 9E458 800ADC58 24104700 */  and        $v0, $v0, $a3
    /* 9E45C 800ADC5C 25186200 */  or         $v1, $v1, $v0
    /* 9E460 800ADC60 0000C3AC */  sw         $v1, 0x0($a2)
    /* 9E464 800ADC64 0000828C */  lw         $v0, 0x0($a0)
    /* 9E468 800ADC68 2428A700 */  and        $a1, $a1, $a3
    /* 9E46C 800ADC6C 24104800 */  and        $v0, $v0, $t0
    /* 9E470 800ADC70 25104500 */  or         $v0, $v0, $a1
    /* 9E474 800ADC74 0800E003 */  jr         $ra
    /* 9E478 800ADC78 000082AC */   sw        $v0, 0x0($a0)
endlabel func_800ADC40
