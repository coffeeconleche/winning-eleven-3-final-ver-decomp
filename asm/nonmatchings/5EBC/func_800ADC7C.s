nonmatching func_800ADC7C, 0x24

glabel func_800ADC7C
    /* 9E47C 800ADC7C FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 9E480 800ADC80 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 9E484 800ADC84 00FF033C */  lui        $v1, (0xFF000000 >> 16)
    /* 9E488 800ADC88 0000828C */  lw         $v0, 0x0($a0)
    /* 9E48C 800ADC8C 2428A600 */  and        $a1, $a1, $a2
    /* 9E490 800ADC90 24104300 */  and        $v0, $v0, $v1
    /* 9E494 800ADC94 25104500 */  or         $v0, $v0, $a1
    /* 9E498 800ADC98 0800E003 */  jr         $ra
    /* 9E49C 800ADC9C 000082AC */   sw        $v0, 0x0($a0)
endlabel func_800ADC7C
