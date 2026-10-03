nonmatching func_800B1318, 0x24

glabel func_800B1318
    /* A1B18 800B1318 0000A88C */  lw         $t0, 0x0($a1)
    /* A1B1C 800B131C 0400A98C */  lw         $t1, 0x4($a1)
    /* A1B20 800B1320 0800AA8C */  lw         $t2, 0x8($a1)
    /* A1B24 800B1324 140088AC */  sw         $t0, 0x14($a0)
    /* A1B28 800B1328 180089AC */  sw         $t1, 0x18($a0)
    /* A1B2C 800B132C 1C008AAC */  sw         $t2, 0x1C($a0)
    /* A1B30 800B1330 21108000 */  addu       $v0, $a0, $zero
    /* A1B34 800B1334 0800E003 */  jr         $ra
    /* A1B38 800B1338 00000000 */   nop
endlabel func_800B1318
    /* A1B3C 800B133C 00000000 */  nop
    /* A1B40 800B1340 00000000 */  nop
    /* A1B44 800B1344 00000000 */  nop
