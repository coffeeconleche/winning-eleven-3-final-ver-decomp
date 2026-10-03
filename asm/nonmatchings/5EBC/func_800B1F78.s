/* Handwritten function */
nonmatching func_800B1F78, 0x1FC

glabel func_800B1F78
    /* A2778 800B1F78 04008884 */  lh         $t0, 0x4($a0)
    /* A277C 800B1F7C 25100500 */  or         $v0, $zero, $a1
    /* A2780 800B1F80 0D80033C */  lui        $v1, %hi(D_800CED64)
    /* A2784 800B1F84 64ED6324 */  addiu      $v1, $v1, %lo(D_800CED64)
    /* A2788 800B1F88 00008C8C */  lw         $t4, 0x0($a0)
    /* A278C 800B1F8C C35F0800 */  sra        $t3, $t0, 31
    /* A2790 800B1F90 20400B01 */  add        $t0, $t0, $t3 /* handwritten instruction */
    /* A2794 800B1F94 26400B01 */  xor        $t0, $t0, $t3
    /* A2798 800B1F98 80400800 */  sll        $t0, $t0, 2
    /* A279C 800B1F9C FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A27A0 800B1FA0 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A27A4 800B1FA4 0000068D */  lw         $a2, 0x0($t0)
    /* A27A8 800B1FA8 03440C00 */  sra        $t0, $t4, 16
    /* A27AC 800B1FAC C3570800 */  sra        $t2, $t0, 31
    /* A27B0 800B1FB0 20400A01 */  add        $t0, $t0, $t2 /* handwritten instruction */
    /* A27B4 800B1FB4 26400A01 */  xor        $t0, $t0, $t2
    /* A27B8 800B1FB8 80400800 */  sll        $t0, $t0, 2
    /* A27BC 800B1FBC FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A27C0 800B1FC0 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A27C4 800B1FC4 0000058D */  lw         $a1, 0x0($t0)
    /* A27C8 800B1FC8 00440C00 */  sll        $t0, $t4, 16
    /* A27CC 800B1FCC 03440800 */  sra        $t0, $t0, 16
    /* A27D0 800B1FD0 C34F0800 */  sra        $t1, $t0, 31
    /* A27D4 800B1FD4 20400901 */  add        $t0, $t0, $t1 /* handwritten instruction */
    /* A27D8 800B1FD8 26400901 */  xor        $t0, $t0, $t1
    /* A27DC 800B1FDC 80400800 */  sll        $t0, $t0, 2
    /* A27E0 800B1FE0 FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A27E4 800B1FE4 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A27E8 800B1FE8 0000048D */  lw         $a0, 0x0($t0)
    /* A27EC 800B1FEC 000C0600 */  sll        $at, $a2, 16
    /* A27F0 800B1FF0 03340600 */  sra        $a2, $a2, 16
    /* A27F4 800B1FF4 00340600 */  sll        $a2, $a2, 16
    /* A27F8 800B1FF8 20082B00 */  add        $at, $at, $t3 /* handwritten instruction */
    /* A27FC 800B1FFC 26082B00 */  xor        $at, $at, $t3
    /* A2800 800B2000 020C0100 */  srl        $at, $at, 16
    /* A2804 800B2004 2530C100 */  or         $a2, $a2, $at
    /* A2808 800B2008 000C0500 */  sll        $at, $a1, 16
    /* A280C 800B200C 032C0500 */  sra        $a1, $a1, 16
    /* A2810 800B2010 002C0500 */  sll        $a1, $a1, 16
    /* A2814 800B2014 20082A00 */  add        $at, $at, $t2 /* handwritten instruction */
    /* A2818 800B2018 26082A00 */  xor        $at, $at, $t2
    /* A281C 800B201C 020C0100 */  srl        $at, $at, 16
    /* A2820 800B2020 2528A100 */  or         $a1, $a1, $at
    /* A2824 800B2024 000C0400 */  sll        $at, $a0, 16
    /* A2828 800B2028 03240400 */  sra        $a0, $a0, 16
    /* A282C 800B202C 00240400 */  sll        $a0, $a0, 16
    /* A2830 800B2030 20082900 */  add        $at, $at, $t1 /* handwritten instruction */
    /* A2834 800B2034 26082900 */  xor        $at, $at, $t1
    /* A2838 800B2038 020C0100 */  srl        $at, $at, 16
    /* A283C 800B203C 25208100 */  or         $a0, $a0, $at
    /* A2840 800B2040 03440400 */  sra        $t0, $a0, 16
    /* A2844 800B2044 00408848 */  mtc2       $t0, $8 /* handwritten instruction */
    /* A2848 800B2048 003C0500 */  sll        $a3, $a1, 16
    /* A284C 800B204C 033C0700 */  sra        $a3, $a3, 16
    /* A2850 800B2050 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* A2854 800B2054 001C0600 */  sll        $v1, $a2, 16
    /* A2858 800B2058 031C0300 */  sra        $v1, $v1, 16
    /* A285C 800B205C 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* A2860 800B2060 030C0600 */  sra        $at, $a2, 16
    /* A2864 800B2064 00588148 */  mtc2       $at, $11 /* handwritten instruction */
    /* A2868 800B2068 00000000 */  nop
    /* A286C 800B206C 00000000 */  nop
    /* A2870 800B2070 3D00984B */  gpf        1
    /* A2874 800B2074 030C0500 */  sra        $at, $a1, 16
    /* A2878 800B2078 18002800 */  mult       $at, $t0
    /* A287C 800B207C 00480848 */  mfc2       $t0, $9 /* handwritten instruction */
    /* A2880 800B2080 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* A2884 800B2084 00740400 */  sll        $t6, $a0, 16
    /* A2888 800B2088 00580A48 */  mfc2       $t2, $11 /* handwritten instruction */
    /* A288C 800B208C 03740E00 */  sra        $t6, $t6, 16
    /* A2890 800B2090 00408E48 */  mtc2       $t6, $8 /* handwritten instruction */
    /* A2894 800B2094 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* A2898 800B2098 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* A289C 800B209C 030C0600 */  sra        $at, $a2, 16
    /* A28A0 800B20A0 00588148 */  mtc2       $at, $11 /* handwritten instruction */
    /* A28A4 800B20A4 00000000 */  nop
    /* A28A8 800B20A8 00000000 */  nop
    /* A28AC 800B20AC 3D00984B */  gpf        1
    /* A28B0 800B20B0 12080000 */  mflo       $at
    /* A28B4 800B20B4 030B0100 */  sra        $at, $at, 12
    /* A28B8 800B20B8 100041A4 */  sh         $at, 0x10($v0)
    /* A28BC 800B20BC 00480B48 */  mfc2       $t3, $9 /* handwritten instruction */
    /* A28C0 800B20C0 00500C48 */  mfc2       $t4, $10 /* handwritten instruction */
    /* A28C4 800B20C4 00580D48 */  mfc2       $t5, $11 /* handwritten instruction */
    /* A28C8 800B20C8 030C0600 */  sra        $at, $a2, 16
    /* A28CC 800B20CC 00408148 */  mtc2       $at, $8 /* handwritten instruction */
    /* A28D0 800B20D0 030C0500 */  sra        $at, $a1, 16
    /* A28D4 800B20D4 00488148 */  mtc2       $at, $9 /* handwritten instruction */
    /* A28D8 800B20D8 18002E00 */  mult       $at, $t6
    /* A28DC 800B20DC 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
    /* A28E0 800B20E0 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
    /* A28E4 800B20E4 22380700 */  neg        $a3, $a3 /* handwritten instruction */
    /* A28E8 800B20E8 FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* A28EC 800B20EC 3D00984B */  gpf        1
    /* A28F0 800B20F0 00480448 */  mfc2       $a0, $9 /* handwritten instruction */
    /* A28F4 800B20F4 00500548 */  mfc2       $a1, $10 /* handwritten instruction */
    /* A28F8 800B20F8 00580648 */  mfc2       $a2, $11 /* handwritten instruction */
    /* A28FC 800B20FC 00488148 */  mtc2       $at, $9 /* handwritten instruction */
    /* A2900 800B2100 12080000 */  mflo       $at
    /* A2904 800B2104 00408348 */  mtc2       $v1, $8 /* handwritten instruction */
    /* A2908 800B2108 030B0100 */  sra        $at, $at, 12
    /* A290C 800B210C 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
    /* A2910 800B2110 000C0100 */  sll        $at, $at, 16
    /* A2914 800B2114 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
    /* A2918 800B2118 2538E100 */  or         $a3, $a3, $at
    /* A291C 800B211C 0C0047AC */  sw         $a3, 0xC($v0)
    /* A2920 800B2120 3D00984B */  gpf        1
    /* A2924 800B2124 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* A2928 800B2128 2228A900 */  sub        $a1, $a1, $t1 /* handwritten instruction */
    /* A292C 800B212C 002C0500 */  sll        $a1, $a1, 16
    /* A2930 800B2130 2528A400 */  or         $a1, $a1, $a0
    /* A2934 800B2134 000045AC */  sw         $a1, 0x0($v0)
    /* A2938 800B2138 00480148 */  mfc2       $at, $9 /* handwritten instruction */
    /* A293C 800B213C 2030CC00 */  add        $a2, $a2, $t4 /* handwritten instruction */
    /* A2940 800B2140 00500E48 */  mfc2       $t6, $10 /* handwritten instruction */
    /* A2944 800B2144 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* A2948 800B2148 00580F48 */  mfc2       $t7, $11 /* handwritten instruction */
    /* A294C 800B214C 000C0100 */  sll        $at, $at, 16
    /* A2950 800B2150 25082600 */  or         $at, $at, $a2
    /* A2954 800B2154 040041AC */  sw         $at, 0x4($v0)
    /* A2958 800B2158 2070CA01 */  add        $t6, $t6, $t2 /* handwritten instruction */
    /* A295C 800B215C FFFFCE31 */  andi       $t6, $t6, 0xFFFF
    /* A2960 800B2160 2278ED01 */  sub        $t7, $t7, $t5 /* handwritten instruction */
    /* A2964 800B2164 007C0F00 */  sll        $t7, $t7, 16
    /* A2968 800B2168 2570CF01 */  or         $t6, $t6, $t7
    /* A296C 800B216C 0800E003 */  jr         $ra
    /* A2970 800B2170 08004EAC */   sw        $t6, 0x8($v0)
endlabel func_800B1F78
    /* A2974 800B2174 00000000 */  nop
