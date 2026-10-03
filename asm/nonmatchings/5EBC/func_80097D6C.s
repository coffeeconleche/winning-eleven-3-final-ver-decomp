nonmatching func_80097D6C, 0x44

glabel func_80097D6C
    /* 8856C 80097D6C 80FC0224 */  addiu      $v0, $zero, -0x380
    /* 88570 80097D70 801F013C */  lui        $at, (0x1F800200 >> 16)
    /* 88574 80097D74 000222AC */  sw         $v0, (0x1F800200 & 0xFFFF)($at)
    /* 88578 80097D78 00F40224 */  addiu      $v0, $zero, -0xC00
    /* 8857C 80097D7C 801F013C */  lui        $at, (0x1F8001F4 >> 16)
    /* 88580 80097D80 F40122AC */  sw         $v0, (0x1F8001F4 & 0xFFFF)($at)
    /* 88584 80097D84 00C00224 */  addiu      $v0, $zero, -0x4000
    /* 88588 80097D88 801F013C */  lui        $at, (0x1F8001FC >> 16)
    /* 8858C 80097D8C FC0120AC */  sw         $zero, (0x1F8001FC & 0xFFFF)($at)
    /* 88590 80097D90 801F013C */  lui        $at, (0x1F800204 >> 16)
    /* 88594 80097D94 040220AC */  sw         $zero, (0x1F800204 & 0xFFFF)($at)
    /* 88598 80097D98 801F013C */  lui        $at, (0x1F8001F0 >> 16)
    /* 8859C 80097D9C F00120AC */  sw         $zero, (0x1F8001F0 & 0xFFFF)($at)
    /* 885A0 80097DA0 801F013C */  lui        $at, (0x1F8001F8 >> 16)
    /* 885A4 80097DA4 F80122AC */  sw         $v0, (0x1F8001F8 & 0xFFFF)($at)
    /* 885A8 80097DA8 0800E003 */  jr         $ra
    /* 885AC 80097DAC 00000000 */   nop
endlabel func_80097D6C
