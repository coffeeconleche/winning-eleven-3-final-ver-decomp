nonmatching func_800171A0, 0x24

glabel func_800171A0
    /* 79A0 800171A0 801F023C */  lui        $v0, (0x1F80029A >> 16)
    /* 79A4 800171A4 9A024290 */  lbu        $v0, (0x1F80029A & 0xFFFF)($v0)
    /* 79A8 800171A8 801F013C */  lui        $at, (0x1F80029B >> 16)
    /* 79AC 800171AC 9B0220A0 */  sb         $zero, (0x1F80029B & 0xFFFF)($at)
    /* 79B0 800171B0 01004224 */  addiu      $v0, $v0, 0x1
    /* 79B4 800171B4 801F013C */  lui        $at, (0x1F80029A >> 16)
    /* 79B8 800171B8 9A0222A0 */  sb         $v0, (0x1F80029A & 0xFFFF)($at)
    /* 79BC 800171BC 0800E003 */  jr         $ra
    /* 79C0 800171C0 00000000 */   nop
endlabel func_800171A0
