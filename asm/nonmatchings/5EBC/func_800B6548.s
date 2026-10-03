nonmatching func_800B6548, 0x40

glabel func_800B6548
    /* A6D48 800B6548 2110A000 */  addu       $v0, $a1, $zero
    /* A6D4C 800B654C 0000898C */  lw         $t1, 0x0($a0)
    /* A6D50 800B6550 04008A8C */  lw         $t2, 0x4($a0)
    /* A6D54 800B6554 0400A9AC */  sw         $t1, 0x4($a1)
    /* A6D58 800B6558 0000AAAC */  sw         $t2, 0x0($a1)
    /* A6D5C 800B655C 0000A9A4 */  sh         $t1, 0x0($a1)
    /* A6D60 800B6560 08008B8C */  lw         $t3, 0x8($a0)
    /* A6D64 800B6564 0C00898C */  lw         $t1, 0xC($a0)
    /* A6D68 800B6568 0C00ABAC */  sw         $t3, 0xC($a1)
    /* A6D6C 800B656C 0800A9AC */  sw         $t1, 0x8($a1)
    /* A6D70 800B6570 0C00AAA4 */  sh         $t2, 0xC($a1)
    /* A6D74 800B6574 0800ABA4 */  sh         $t3, 0x8($a1)
    /* A6D78 800B6578 10008A84 */  lh         $t2, 0x10($a0)
    /* A6D7C 800B657C 0400A9A4 */  sh         $t1, 0x4($a1)
    /* A6D80 800B6580 0800E003 */  jr         $ra
    /* A6D84 800B6584 1000AAA4 */   sh        $t2, 0x10($a1)
endlabel func_800B6548
