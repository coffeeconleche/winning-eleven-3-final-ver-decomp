nonmatching func_800B7598, 0x80

glabel func_800B7598
    /* A7D98 800B7598 00008390 */  lbu        $v1, 0x0($a0)
    /* A7D9C 800B759C 01008690 */  lbu        $a2, 0x1($a0)
    /* A7DA0 800B75A0 02290300 */  srl        $a1, $v1, 4
    /* A7DA4 800B75A4 80100500 */  sll        $v0, $a1, 2
    /* A7DA8 800B75A8 21104500 */  addu       $v0, $v0, $a1
    /* A7DAC 800B75AC 40100200 */  sll        $v0, $v0, 1
    /* A7DB0 800B75B0 0F006330 */  andi       $v1, $v1, 0xF
    /* A7DB4 800B75B4 21104300 */  addu       $v0, $v0, $v1
    /* A7DB8 800B75B8 00290200 */  sll        $a1, $v0, 4
    /* A7DBC 800B75BC 2328A200 */  subu       $a1, $a1, $v0
    /* A7DC0 800B75C0 80280500 */  sll        $a1, $a1, 2
    /* A7DC4 800B75C4 02190600 */  srl        $v1, $a2, 4
    /* A7DC8 800B75C8 80100300 */  sll        $v0, $v1, 2
    /* A7DCC 800B75CC 21104300 */  addu       $v0, $v0, $v1
    /* A7DD0 800B75D0 40100200 */  sll        $v0, $v0, 1
    /* A7DD4 800B75D4 0F00C630 */  andi       $a2, $a2, 0xF
    /* A7DD8 800B75D8 21104600 */  addu       $v0, $v0, $a2
    /* A7DDC 800B75DC 2128A200 */  addu       $a1, $a1, $v0
    /* A7DE0 800B75E0 80180500 */  sll        $v1, $a1, 2
    /* A7DE4 800B75E4 21186500 */  addu       $v1, $v1, $a1
    /* A7DE8 800B75E8 00110300 */  sll        $v0, $v1, 4
    /* A7DEC 800B75EC 02008590 */  lbu        $a1, 0x2($a0)
    /* A7DF0 800B75F0 23104300 */  subu       $v0, $v0, $v1
    /* A7DF4 800B75F4 02210500 */  srl        $a0, $a1, 4
    /* A7DF8 800B75F8 80180400 */  sll        $v1, $a0, 2
    /* A7DFC 800B75FC 21186400 */  addu       $v1, $v1, $a0
    /* A7E00 800B7600 40180300 */  sll        $v1, $v1, 1
    /* A7E04 800B7604 0F00A530 */  andi       $a1, $a1, 0xF
    /* A7E08 800B7608 21186500 */  addu       $v1, $v1, $a1
    /* A7E0C 800B760C 21104300 */  addu       $v0, $v0, $v1
    /* A7E10 800B7610 0800E003 */  jr         $ra
    /* A7E14 800B7614 6AFF4224 */   addiu     $v0, $v0, -0x96
endlabel func_800B7598
