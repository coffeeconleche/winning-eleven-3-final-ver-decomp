nonmatching func_800B01D0, 0x24

glabel func_800B01D0
    /* A09D0 800B01D0 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A09D4 800B01D4 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A09D8 800B01D8 00000000 */  nop
    /* A09DC 800B01DC 000044AC */  sw         $a0, 0x0($v0)
    /* A09E0 800B01E0 02160400 */  srl        $v0, $a0, 24
    /* A09E4 800B01E4 0E80013C */  lui        $at, %hi(D_800E7090)
    /* A09E8 800B01E8 21082200 */  addu       $at, $at, $v0
    /* A09EC 800B01EC 0800E003 */  jr         $ra
    /* A09F0 800B01F0 907024A0 */   sb        $a0, %lo(D_800E7090)($at)
endlabel func_800B01D0
