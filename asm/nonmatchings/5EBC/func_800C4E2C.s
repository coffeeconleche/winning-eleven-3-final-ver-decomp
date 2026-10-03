nonmatching func_800C4E2C, 0x28

glabel func_800C4E2C
    /* B562C 800C4E2C 1180033C */  lui        $v1, %hi(D_8010A40C)
    /* B5630 800C4E30 0CA46324 */  addiu      $v1, $v1, %lo(D_8010A40C)
    /* B5634 800C4E34 0000628C */  lw         $v0, 0x0($v1)
    /* B5638 800C4E38 0800E003 */  jr         $ra
    /* B563C 800C4E3C 000064AC */   sw        $a0, 0x0($v1)
    /* B5640 800C4E40 1180033C */  lui        $v1, %hi(D_8010A410)
    /* B5644 800C4E44 10A46324 */  addiu      $v1, $v1, %lo(D_8010A410)
    /* B5648 800C4E48 0000628C */  lw         $v0, 0x0($v1)
    /* B564C 800C4E4C 0800E003 */  jr         $ra
    /* B5650 800C4E50 000064AC */   sw        $a0, 0x0($v1)
endlabel func_800C4E2C
