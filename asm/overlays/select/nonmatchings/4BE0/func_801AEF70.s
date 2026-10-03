nonmatching func_801AEF70, 0x70

glabel func_801AEF70
    /* 25FF8 801AEF70 40200400 */  sll        $a0, $a0, 1
    /* 25FFC 801AEF74 40280500 */  sll        $a1, $a1, 1
    /* 26000 801AEF78 1E80013C */  lui        $at, %hi(D_801DA620)
    /* 26004 801AEF7C 21082500 */  addu       $at, $at, $a1
    /* 26008 801AEF80 20A62290 */  lbu        $v0, %lo(D_801DA620)($at)
    /* 2600C 801AEF84 1E80013C */  lui        $at, %hi(D_801DA620)
    /* 26010 801AEF88 21082400 */  addu       $at, $at, $a0
    /* 26014 801AEF8C 20A62690 */  lbu        $a2, %lo(D_801DA620)($at)
    /* 26018 801AEF90 1E80013C */  lui        $at, %hi(D_801DA620 + 0x1)
    /* 2601C 801AEF94 21082400 */  addu       $at, $at, $a0
    /* 26020 801AEF98 21A62390 */  lbu        $v1, %lo(D_801DA620 + 0x1)($at)
    /* 26024 801AEF9C 1E80013C */  lui        $at, %hi(D_801DA620)
    /* 26028 801AEFA0 21082400 */  addu       $at, $at, $a0
    /* 2602C 801AEFA4 20A622A0 */  sb         $v0, %lo(D_801DA620)($at)
    /* 26030 801AEFA8 1E80013C */  lui        $at, %hi(D_801DA620 + 0x1)
    /* 26034 801AEFAC 21082500 */  addu       $at, $at, $a1
    /* 26038 801AEFB0 21A62290 */  lbu        $v0, %lo(D_801DA620 + 0x1)($at)
    /* 2603C 801AEFB4 1E80013C */  lui        $at, %hi(D_801DA620 + 0x1)
    /* 26040 801AEFB8 21082400 */  addu       $at, $at, $a0
    /* 26044 801AEFBC 21A622A0 */  sb         $v0, %lo(D_801DA620 + 0x1)($at)
    /* 26048 801AEFC0 1E80013C */  lui        $at, %hi(D_801DA620)
    /* 2604C 801AEFC4 21082500 */  addu       $at, $at, $a1
    /* 26050 801AEFC8 20A626A0 */  sb         $a2, %lo(D_801DA620)($at)
    /* 26054 801AEFCC 1E80013C */  lui        $at, %hi(D_801DA620 + 0x1)
    /* 26058 801AEFD0 21082500 */  addu       $at, $at, $a1
    /* 2605C 801AEFD4 21A623A0 */  sb         $v1, %lo(D_801DA620 + 0x1)($at)
    /* 26060 801AEFD8 0800E003 */  jr         $ra
    /* 26064 801AEFDC 00000000 */   nop
endlabel func_801AEF70
