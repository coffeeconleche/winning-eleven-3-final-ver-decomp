nonmatching func_80196800, 0x9C

glabel func_80196800
    /* D888 80196800 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D88C 80196804 2800A897 */  lhu        $t0, 0x28($sp)
    /* D890 80196808 2C00A993 */  lbu        $t1, 0x2C($sp)
    /* D894 8019680C 3000AA93 */  lbu        $t2, 0x30($sp)
    /* D898 80196810 3400AB93 */  lbu        $t3, 0x34($sp)
    /* D89C 80196814 3800AC93 */  lbu        $t4, 0x38($sp)
    /* D8A0 80196818 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* D8A4 8019681C 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* D8A8 80196820 1D80033C */  lui        $v1, %hi(D_801D7F88)
    /* D8AC 80196824 887F6324 */  addiu      $v1, $v1, %lo(D_801D7F88)
    /* D8B0 80196828 1000BFAF */  sw         $ra, 0x10($sp)
    /* D8B4 8019682C 000064AC */  sw         $a0, 0x0($v1)
    /* D8B8 80196830 21206000 */  addu       $a0, $v1, $zero
    /* D8BC 80196834 1D80013C */  lui        $at, %hi(D_801D7F8C)
    /* D8C0 80196838 8C7F25A4 */  sh         $a1, %lo(D_801D7F8C)($at)
    /* D8C4 8019683C 1D80013C */  lui        $at, %hi(D_801D7F8E)
    /* D8C8 80196840 8E7F26A4 */  sh         $a2, %lo(D_801D7F8E)($at)
    /* D8CC 80196844 1D80013C */  lui        $at, %hi(D_801D7F90)
    /* D8D0 80196848 907F27A4 */  sh         $a3, %lo(D_801D7F90)($at)
    /* D8D4 8019684C 80280200 */  sll        $a1, $v0, 2
    /* D8D8 80196850 2128A200 */  addu       $a1, $a1, $v0
    /* D8DC 80196854 80280500 */  sll        $a1, $a1, 2
    /* D8E0 80196858 0F80023C */  lui        $v0, %hi(D_800F1018)
    /* D8E4 8019685C 18104224 */  addiu      $v0, $v0, %lo(D_800F1018)
    /* D8E8 80196860 2128A200 */  addu       $a1, $a1, $v0
    /* D8EC 80196864 1D80013C */  lui        $at, %hi(D_801D7F92)
    /* D8F0 80196868 927F28A4 */  sh         $t0, %lo(D_801D7F92)($at)
    /* D8F4 8019686C 1D80013C */  lui        $at, %hi(D_801D7F94)
    /* D8F8 80196870 947F29A0 */  sb         $t1, %lo(D_801D7F94)($at)
    /* D8FC 80196874 1D80013C */  lui        $at, %hi(D_801D7F95)
    /* D900 80196878 957F2AA0 */  sb         $t2, %lo(D_801D7F95)($at)
    /* D904 8019687C 1D80013C */  lui        $at, %hi(D_801D7F96)
    /* D908 80196880 967F2BA0 */  sb         $t3, %lo(D_801D7F96)($at)
    /* D90C 80196884 CACD020C */  jal        func_800B3728
    /* D910 80196888 21308001 */   addu      $a2, $t4, $zero
    /* D914 8019688C 1000BF8F */  lw         $ra, 0x10($sp)
    /* D918 80196890 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D91C 80196894 0800E003 */  jr         $ra
    /* D920 80196898 00000000 */   nop
endlabel func_80196800
