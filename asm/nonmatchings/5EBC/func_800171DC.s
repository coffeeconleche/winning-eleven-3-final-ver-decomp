nonmatching func_800171DC, 0x20

glabel func_800171DC
    /* 79DC 800171DC 801F023C */  lui        $v0, (0x1F80029B >> 16)
    /* 79E0 800171E0 9B024290 */  lbu        $v0, (0x1F80029B & 0xFFFF)($v0)
    /* 79E4 800171E4 00000000 */  nop
    /* 79E8 800171E8 01004224 */  addiu      $v0, $v0, 0x1
    /* 79EC 800171EC 801F013C */  lui        $at, (0x1F80029B >> 16)
    /* 79F0 800171F0 9B0222A0 */  sb         $v0, (0x1F80029B & 0xFFFF)($at)
    /* 79F4 800171F4 0800E003 */  jr         $ra
    /* 79F8 800171F8 00000000 */   nop
endlabel func_800171DC
