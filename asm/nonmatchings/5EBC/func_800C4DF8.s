nonmatching func_800C4DF8, 0x34

glabel func_800C4DF8
    /* B55F8 800C4DF8 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B55FC 800C4DFC 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B5600 800C4E00 00210400 */  sll        $a0, $a0, 4
    /* B5604 800C4E04 21208200 */  addu       $a0, $a0, $v0
    /* B5608 800C4E08 0C008294 */  lhu        $v0, 0xC($a0)
    /* B560C 800C4E0C 0800E003 */  jr         $ra
    /* B5610 800C4E10 0000A2A4 */   sh        $v0, 0x0($a1)
    /* B5614 800C4E14 00000000 */  nop
    /* B5618 800C4E18 1180033C */  lui        $v1, %hi(D_8010A408)
    /* B561C 800C4E1C 08A46324 */  addiu      $v1, $v1, %lo(D_8010A408)
    /* B5620 800C4E20 0000628C */  lw         $v0, 0x0($v1)
    /* B5624 800C4E24 0800E003 */  jr         $ra
    /* B5628 800C4E28 000064AC */   sw        $a0, 0x0($v1)
endlabel func_800C4DF8
