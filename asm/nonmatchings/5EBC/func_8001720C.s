nonmatching func_8001720C, 0x20

glabel func_8001720C
    /* 7A0C 8001720C 801F023C */  lui        $v0, (0x1F80029C >> 16)
    /* 7A10 80017210 9C024290 */  lbu        $v0, (0x1F80029C & 0xFFFF)($v0)
    /* 7A14 80017214 00000000 */  nop
    /* 7A18 80017218 01004224 */  addiu      $v0, $v0, 0x1
    /* 7A1C 8001721C 801F013C */  lui        $at, (0x1F80029C >> 16)
    /* 7A20 80017220 9C0222A0 */  sb         $v0, (0x1F80029C & 0xFFFF)($at)
    /* 7A24 80017224 0800E003 */  jr         $ra
    /* 7A28 80017228 00000000 */   nop
endlabel func_8001720C
