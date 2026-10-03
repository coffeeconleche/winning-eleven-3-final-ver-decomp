nonmatching func_8019A700, 0x104

glabel func_8019A700
    /* 11788 8019A700 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1178C 8019A704 1180043C */  lui        $a0, %hi(D_8010866C)
    /* 11790 8019A708 6C868424 */  addiu      $a0, $a0, %lo(D_8010866C)
    /* 11794 8019A70C 01000224 */  addiu      $v0, $zero, 0x1
    /* 11798 8019A710 3000BFAF */  sw         $ra, 0x30($sp)
    /* 1179C 8019A714 1180013C */  lui        $at, %hi(D_80108667)
    /* 117A0 8019A718 678620A0 */  sb         $zero, %lo(D_80108667)($at)
    /* 117A4 8019A71C 1180013C */  lui        $at, %hi(D_80108668)
    /* 117A8 8019A720 688620A0 */  sb         $zero, %lo(D_80108668)($at)
    /* 117AC 8019A724 1180013C */  lui        $at, %hi(D_80108669)
    /* 117B0 8019A728 698620A0 */  sb         $zero, %lo(D_80108669)($at)
    /* 117B4 8019A72C 1180013C */  lui        $at, %hi(D_8010866A)
    /* 117B8 8019A730 6A8620A0 */  sb         $zero, %lo(D_8010866A)($at)
    /* 117BC 8019A734 1180013C */  lui        $at, %hi(D_8010866B)
    /* 117C0 8019A738 6B8620A0 */  sb         $zero, %lo(D_8010866B)($at)
    /* 117C4 8019A73C 1180013C */  lui        $at, %hi(D_8010A2F0)
    /* 117C8 8019A740 F0A220A0 */  sb         $zero, %lo(D_8010A2F0)($at)
    /* 117CC 8019A744 801F013C */  lui        $at, (0x1F8002E2 >> 16)
    /* 117D0 8019A748 E20220A0 */  sb         $zero, (0x1F8002E2 & 0xFFFF)($at)
    /* 117D4 8019A74C 801F013C */  lui        $at, (0x1F8002E3 >> 16)
    /* 117D8 8019A750 E30220A0 */  sb         $zero, (0x1F8002E3 & 0xFFFF)($at)
    /* 117DC 8019A754 1180013C */  lui        $at, %hi(D_8010A5A9)
    /* 117E0 8019A758 A9A522A0 */  sb         $v0, %lo(D_8010A5A9)($at)
    /* 117E4 8019A75C 1180013C */  lui        $at, %hi(D_8010A5A8)
    /* 117E8 8019A760 A8A522A0 */  sb         $v0, %lo(D_8010A5A8)($at)
    /* 117EC 8019A764 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 117F0 8019A768 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 117F4 8019A76C 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 117F8 8019A770 FC8D20A0 */  sb         $zero, %lo(D_801D8DFC)($at)
    /* 117FC 8019A774 96B5020C */  jal        func_800AD658
    /* 11800 8019A778 80040524 */   addiu     $a1, $zero, 0x480
    /* 11804 8019A77C 1180043C */  lui        $a0, %hi(D_80108AEC)
    /* 11808 8019A780 EC8A8424 */  addiu      $a0, $a0, %lo(D_80108AEC)
    /* 1180C 8019A784 96B5020C */  jal        func_800AD658
    /* 11810 8019A788 2C160524 */   addiu     $a1, $zero, 0x162C
    /* 11814 8019A78C 1180043C */  lui        $a0, %hi(D_8010A118)
    /* 11818 8019A790 18A18424 */  addiu      $a0, $a0, %lo(D_8010A118)
    /* 1181C 8019A794 96B5020C */  jal        func_800AD658
    /* 11820 8019A798 80010524 */   addiu     $a1, $zero, 0x180
    /* 11824 8019A79C 1180043C */  lui        $a0, %hi(D_8010A298)
    /* 11828 8019A7A0 98A28424 */  addiu      $a0, $a0, %lo(D_8010A298)
    /* 1182C 8019A7A4 96B5020C */  jal        func_800AD658
    /* 11830 8019A7A8 30000524 */   addiu     $a1, $zero, 0x30
    /* 11834 8019A7AC 1180043C */  lui        $a0, %hi(D_8010A2C8)
    /* 11838 8019A7B0 C8A28424 */  addiu      $a0, $a0, %lo(D_8010A2C8)
    /* 1183C 8019A7B4 96B5020C */  jal        func_800AD658
    /* 11840 8019A7B8 20000524 */   addiu     $a1, $zero, 0x20
    /* 11844 8019A7BC 775C000C */  jal        func_800171DC
    /* 11848 8019A7C0 00000000 */   nop
    /* 1184C 8019A7C4 1180013C */  lui        $at, %hi(D_8010A322)
    /* 11850 8019A7C8 22A320A0 */  sb         $zero, %lo(D_8010A322)($at)
    /* 11854 8019A7CC 1E80013C */  lui        $at, %hi(D_801D8A82)
    /* 11858 8019A7D0 828A20A4 */  sh         $zero, %lo(D_801D8A82)($at)
    /* 1185C 8019A7D4 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 11860 8019A7D8 848A20A4 */  sh         $zero, %lo(D_801D8A84)($at)
    /* 11864 8019A7DC 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 11868 8019A7E0 868A20A4 */  sh         $zero, %lo(D_801D8A86)($at)
    /* 1186C 8019A7E4 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 11870 8019A7E8 888A20A4 */  sh         $zero, %lo(D_801D8A88)($at)
    /* 11874 8019A7EC 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 11878 8019A7F0 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 1187C 8019A7F4 3000BF8F */  lw         $ra, 0x30($sp)
    /* 11880 8019A7F8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 11884 8019A7FC 0800E003 */  jr         $ra
    /* 11888 8019A800 00000000 */   nop
endlabel func_8019A700
