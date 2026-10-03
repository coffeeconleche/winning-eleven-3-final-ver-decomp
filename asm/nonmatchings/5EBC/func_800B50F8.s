/* Handwritten function */
nonmatching func_800B50F8, 0x10C

glabel func_800B50F8
    /* A58F8 800B50F8 0000888C */  lw         $t0, 0x0($a0)
    /* A58FC 800B50FC 0400898C */  lw         $t1, 0x4($a0)
    /* A5900 800B5100 08008A8C */  lw         $t2, 0x8($a0)
    /* A5904 800B5104 0C008B8C */  lw         $t3, 0xC($a0)
    /* A5908 800B5108 10008C8C */  lw         $t4, 0x10($a0)
    /* A590C 800B510C 0000C848 */  ctc2       $t0, $0 /* handwritten instruction */
    /* A5910 800B5110 0008C948 */  ctc2       $t1, $1 /* handwritten instruction */
    /* A5914 800B5114 0010CA48 */  ctc2       $t2, $2 /* handwritten instruction */
    /* A5918 800B5118 0018CB48 */  ctc2       $t3, $3 /* handwritten instruction */
    /* A591C 800B511C 0020CC48 */  ctc2       $t4, $4 /* handwritten instruction */
    /* A5920 800B5120 0000A894 */  lhu        $t0, 0x0($a1)
    /* A5924 800B5124 0400A98C */  lw         $t1, 0x4($a1)
    /* A5928 800B5128 0C00AA8C */  lw         $t2, 0xC($a1)
    /* A592C 800B512C FFFF013C */  lui        $at, (0xFFFF0000 >> 16)
    /* A5930 800B5130 24482101 */  and        $t1, $t1, $at
    /* A5934 800B5134 25400901 */  or         $t0, $t0, $t1
    /* A5938 800B5138 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A593C 800B513C 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A5940 800B5140 00000000 */  nop
    /* A5944 800B5144 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A5948 800B5148 0200A894 */  lhu        $t0, 0x2($a1)
    /* A594C 800B514C 0800A98C */  lw         $t1, 0x8($a1)
    /* A5950 800B5150 0E00AA84 */  lh         $t2, 0xE($a1)
    /* A5954 800B5154 004C0900 */  sll        $t1, $t1, 16
    /* A5958 800B5158 25400901 */  or         $t0, $t0, $t1
    /* A595C 800B515C 00480B48 */  mfc2       $t3, $9 /* handwritten instruction */
    /* A5960 800B5160 00500C48 */  mfc2       $t4, $10 /* handwritten instruction */
    /* A5964 800B5164 00580D48 */  mfc2       $t5, $11 /* handwritten instruction */
    /* A5968 800B5168 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A596C 800B516C 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A5970 800B5170 00000000 */  nop
    /* A5974 800B5174 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A5978 800B5178 0400A894 */  lhu        $t0, 0x4($a1)
    /* A597C 800B517C 0800A98C */  lw         $t1, 0x8($a1)
    /* A5980 800B5180 1000AA8C */  lw         $t2, 0x10($a1)
    /* A5984 800B5184 FFFF013C */  lui        $at, (0xFFFF0000 >> 16)
    /* A5988 800B5188 24482101 */  and        $t1, $t1, $at
    /* A598C 800B518C 25400901 */  or         $t0, $t0, $t1
    /* A5990 800B5190 00480E48 */  mfc2       $t6, $9 /* handwritten instruction */
    /* A5994 800B5194 00500F48 */  mfc2       $t7, $10 /* handwritten instruction */
    /* A5998 800B5198 00581848 */  mfc2       $t8, $11 /* handwritten instruction */
    /* A599C 800B519C 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A59A0 800B51A0 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A59A4 800B51A4 00000000 */  nop
    /* A59A8 800B51A8 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A59AC 800B51AC FFFF6B31 */  andi       $t3, $t3, 0xFFFF
    /* A59B0 800B51B0 00740E00 */  sll        $t6, $t6, 16
    /* A59B4 800B51B4 2570CB01 */  or         $t6, $t6, $t3
    /* A59B8 800B51B8 00008EAC */  sw         $t6, 0x0($a0)
    /* A59BC 800B51BC FFFFAD31 */  andi       $t5, $t5, 0xFFFF
    /* A59C0 800B51C0 00C41800 */  sll        $t8, $t8, 16
    /* A59C4 800B51C4 25C00D03 */  or         $t8, $t8, $t5
    /* A59C8 800B51C8 0C0098AC */  sw         $t8, 0xC($a0)
    /* A59CC 800B51CC 00480848 */  mfc2       $t0, $9 /* handwritten instruction */
    /* A59D0 800B51D0 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* A59D4 800B51D4 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* A59D8 800B51D8 00640C00 */  sll        $t4, $t4, 16
    /* A59DC 800B51DC 25400C01 */  or         $t0, $t0, $t4
    /* A59E0 800B51E0 040088AC */  sw         $t0, 0x4($a0)
    /* A59E4 800B51E4 FFFFEF31 */  andi       $t7, $t7, 0xFFFF
    /* A59E8 800B51E8 004C0900 */  sll        $t1, $t1, 16
    /* A59EC 800B51EC 25482F01 */  or         $t1, $t1, $t7
    /* A59F0 800B51F0 080089AC */  sw         $t1, 0x8($a0)
    /* A59F4 800B51F4 10008BE8 */  swc2       $11, 0x10($a0)
    /* A59F8 800B51F8 21108000 */  addu       $v0, $a0, $zero
    /* A59FC 800B51FC 0800E003 */  jr         $ra
    /* A5A00 800B5200 00000000 */   nop
endlabel func_800B50F8
    /* A5A04 800B5204 00000000 */  nop
