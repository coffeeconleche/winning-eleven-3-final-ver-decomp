/* Handwritten function */
nonmatching func_800B4D38, 0x10C

glabel func_800B4D38
    /* A5538 800B4D38 0000888C */  lw         $t0, 0x0($a0)
    /* A553C 800B4D3C 0400898C */  lw         $t1, 0x4($a0)
    /* A5540 800B4D40 08008A8C */  lw         $t2, 0x8($a0)
    /* A5544 800B4D44 0C008B8C */  lw         $t3, 0xC($a0)
    /* A5548 800B4D48 10008C8C */  lw         $t4, 0x10($a0)
    /* A554C 800B4D4C 0000C848 */  ctc2       $t0, $0 /* handwritten instruction */
    /* A5550 800B4D50 0008C948 */  ctc2       $t1, $1 /* handwritten instruction */
    /* A5554 800B4D54 0010CA48 */  ctc2       $t2, $2 /* handwritten instruction */
    /* A5558 800B4D58 0018CB48 */  ctc2       $t3, $3 /* handwritten instruction */
    /* A555C 800B4D5C 0020CC48 */  ctc2       $t4, $4 /* handwritten instruction */
    /* A5560 800B4D60 0000A894 */  lhu        $t0, 0x0($a1)
    /* A5564 800B4D64 0400A98C */  lw         $t1, 0x4($a1)
    /* A5568 800B4D68 0C00AA8C */  lw         $t2, 0xC($a1)
    /* A556C 800B4D6C FFFF013C */  lui        $at, (0xFFFF0000 >> 16)
    /* A5570 800B4D70 24482101 */  and        $t1, $t1, $at
    /* A5574 800B4D74 25400901 */  or         $t0, $t0, $t1
    /* A5578 800B4D78 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A557C 800B4D7C 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A5580 800B4D80 00000000 */  nop
    /* A5584 800B4D84 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A5588 800B4D88 0200A894 */  lhu        $t0, 0x2($a1)
    /* A558C 800B4D8C 0800A98C */  lw         $t1, 0x8($a1)
    /* A5590 800B4D90 0E00AA84 */  lh         $t2, 0xE($a1)
    /* A5594 800B4D94 004C0900 */  sll        $t1, $t1, 16
    /* A5598 800B4D98 25400901 */  or         $t0, $t0, $t1
    /* A559C 800B4D9C 00480B48 */  mfc2       $t3, $9 /* handwritten instruction */
    /* A55A0 800B4DA0 00500C48 */  mfc2       $t4, $10 /* handwritten instruction */
    /* A55A4 800B4DA4 00580D48 */  mfc2       $t5, $11 /* handwritten instruction */
    /* A55A8 800B4DA8 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A55AC 800B4DAC 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A55B0 800B4DB0 00000000 */  nop
    /* A55B4 800B4DB4 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A55B8 800B4DB8 0400A894 */  lhu        $t0, 0x4($a1)
    /* A55BC 800B4DBC 0800A98C */  lw         $t1, 0x8($a1)
    /* A55C0 800B4DC0 1000AA8C */  lw         $t2, 0x10($a1)
    /* A55C4 800B4DC4 FFFF013C */  lui        $at, (0xFFFF0000 >> 16)
    /* A55C8 800B4DC8 24482101 */  and        $t1, $t1, $at
    /* A55CC 800B4DCC 25400901 */  or         $t0, $t0, $t1
    /* A55D0 800B4DD0 00480E48 */  mfc2       $t6, $9 /* handwritten instruction */
    /* A55D4 800B4DD4 00500F48 */  mfc2       $t7, $10 /* handwritten instruction */
    /* A55D8 800B4DD8 00581848 */  mfc2       $t8, $11 /* handwritten instruction */
    /* A55DC 800B4DDC 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A55E0 800B4DE0 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A55E4 800B4DE4 00000000 */  nop
    /* A55E8 800B4DE8 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A55EC 800B4DEC FFFF6B31 */  andi       $t3, $t3, 0xFFFF
    /* A55F0 800B4DF0 00740E00 */  sll        $t6, $t6, 16
    /* A55F4 800B4DF4 2570CB01 */  or         $t6, $t6, $t3
    /* A55F8 800B4DF8 0000CEAC */  sw         $t6, 0x0($a2)
    /* A55FC 800B4DFC FFFFAD31 */  andi       $t5, $t5, 0xFFFF
    /* A5600 800B4E00 00C41800 */  sll        $t8, $t8, 16
    /* A5604 800B4E04 25C00D03 */  or         $t8, $t8, $t5
    /* A5608 800B4E08 0C00D8AC */  sw         $t8, 0xC($a2)
    /* A560C 800B4E0C 00480848 */  mfc2       $t0, $9 /* handwritten instruction */
    /* A5610 800B4E10 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* A5614 800B4E14 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* A5618 800B4E18 00640C00 */  sll        $t4, $t4, 16
    /* A561C 800B4E1C 25400C01 */  or         $t0, $t0, $t4
    /* A5620 800B4E20 0400C8AC */  sw         $t0, 0x4($a2)
    /* A5624 800B4E24 FFFFEF31 */  andi       $t7, $t7, 0xFFFF
    /* A5628 800B4E28 004C0900 */  sll        $t1, $t1, 16
    /* A562C 800B4E2C 25482F01 */  or         $t1, $t1, $t7
    /* A5630 800B4E30 0800C9AC */  sw         $t1, 0x8($a2)
    /* A5634 800B4E34 1000CBE8 */  swc2       $11, 0x10($a2)
    /* A5638 800B4E38 2110C000 */  addu       $v0, $a2, $zero
    /* A563C 800B4E3C 0800E003 */  jr         $ra
    /* A5640 800B4E40 00000000 */   nop
endlabel func_800B4D38
    /* A5644 800B4E44 00000000 */  nop
