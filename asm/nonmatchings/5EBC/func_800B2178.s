/* Handwritten function */
nonmatching func_800B2178, 0x210

glabel func_800B2178
    /* A2978 800B2178 25100500 */  or         $v0, $zero, $a1
    /* A297C 800B217C 04008884 */  lh         $t0, 0x4($a0)
    /* A2980 800B2180 0D80033C */  lui        $v1, %hi(D_800CED64)
    /* A2984 800B2184 64ED6324 */  addiu      $v1, $v1, %lo(D_800CED64)
    /* A2988 800B2188 00008C8C */  lw         $t4, 0x0($a0)
    /* A298C 800B218C C35F0800 */  sra        $t3, $t0, 31
    /* A2990 800B2190 20400B01 */  add        $t0, $t0, $t3 /* handwritten instruction */
    /* A2994 800B2194 26400B01 */  xor        $t0, $t0, $t3
    /* A2998 800B2198 80400800 */  sll        $t0, $t0, 2
    /* A299C 800B219C FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A29A0 800B21A0 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A29A4 800B21A4 0000068D */  lw         $a2, 0x0($t0)
    /* A29A8 800B21A8 03440C00 */  sra        $t0, $t4, 16
    /* A29AC 800B21AC C3570800 */  sra        $t2, $t0, 31
    /* A29B0 800B21B0 20400A01 */  add        $t0, $t0, $t2 /* handwritten instruction */
    /* A29B4 800B21B4 26400A01 */  xor        $t0, $t0, $t2
    /* A29B8 800B21B8 80400800 */  sll        $t0, $t0, 2
    /* A29BC 800B21BC FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A29C0 800B21C0 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A29C4 800B21C4 0000058D */  lw         $a1, 0x0($t0)
    /* A29C8 800B21C8 00440C00 */  sll        $t0, $t4, 16
    /* A29CC 800B21CC 03440800 */  sra        $t0, $t0, 16
    /* A29D0 800B21D0 C34F0800 */  sra        $t1, $t0, 31
    /* A29D4 800B21D4 20400901 */  add        $t0, $t0, $t1 /* handwritten instruction */
    /* A29D8 800B21D8 26400901 */  xor        $t0, $t0, $t1
    /* A29DC 800B21DC 80400800 */  sll        $t0, $t0, 2
    /* A29E0 800B21E0 FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A29E4 800B21E4 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A29E8 800B21E8 0000048D */  lw         $a0, 0x0($t0)
    /* A29EC 800B21EC 000C0600 */  sll        $at, $a2, 16
    /* A29F0 800B21F0 03340600 */  sra        $a2, $a2, 16
    /* A29F4 800B21F4 00340600 */  sll        $a2, $a2, 16
    /* A29F8 800B21F8 20082B00 */  add        $at, $at, $t3 /* handwritten instruction */
    /* A29FC 800B21FC 26082B00 */  xor        $at, $at, $t3
    /* A2A00 800B2200 020C0100 */  srl        $at, $at, 16
    /* A2A04 800B2204 2530C100 */  or         $a2, $a2, $at
    /* A2A08 800B2208 000C0500 */  sll        $at, $a1, 16
    /* A2A0C 800B220C 032C0500 */  sra        $a1, $a1, 16
    /* A2A10 800B2210 002C0500 */  sll        $a1, $a1, 16
    /* A2A14 800B2214 20082A00 */  add        $at, $at, $t2 /* handwritten instruction */
    /* A2A18 800B2218 26082A00 */  xor        $at, $at, $t2
    /* A2A1C 800B221C 020C0100 */  srl        $at, $at, 16
    /* A2A20 800B2220 2528A100 */  or         $a1, $a1, $at
    /* A2A24 800B2224 000C0400 */  sll        $at, $a0, 16
    /* A2A28 800B2228 03240400 */  sra        $a0, $a0, 16
    /* A2A2C 800B222C 00240400 */  sll        $a0, $a0, 16
    /* A2A30 800B2230 20082900 */  add        $at, $at, $t1 /* handwritten instruction */
    /* A2A34 800B2234 26082900 */  xor        $at, $at, $t1
    /* A2A38 800B2238 020C0100 */  srl        $at, $at, 16
    /* A2A3C 800B223C 25208100 */  or         $a0, $a0, $at
    /* A2A40 800B2240 03440400 */  sra        $t0, $a0, 16
    /* A2A44 800B2244 00408848 */  mtc2       $t0, $8 /* handwritten instruction */
    /* A2A48 800B2248 003C0500 */  sll        $a3, $a1, 16
    /* A2A4C 800B224C 033C0700 */  sra        $a3, $a3, 16
    /* A2A50 800B2250 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* A2A54 800B2254 001C0600 */  sll        $v1, $a2, 16
    /* A2A58 800B2258 031C0300 */  sra        $v1, $v1, 16
    /* A2A5C 800B225C 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* A2A60 800B2260 030C0600 */  sra        $at, $a2, 16
    /* A2A64 800B2264 00588148 */  mtc2       $at, $11 /* handwritten instruction */
    /* A2A68 800B2268 00000000 */  nop
    /* A2A6C 800B226C 00000000 */  nop
    /* A2A70 800B2270 3D00984B */  gpf        1
    /* A2A74 800B2274 030C0500 */  sra        $at, $a1, 16
    /* A2A78 800B2278 18002800 */  mult       $at, $t0
    /* A2A7C 800B227C 00480848 */  mfc2       $t0, $9 /* handwritten instruction */
    /* A2A80 800B2280 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* A2A84 800B2284 00740400 */  sll        $t6, $a0, 16
    /* A2A88 800B2288 00580A48 */  mfc2       $t2, $11 /* handwritten instruction */
    /* A2A8C 800B228C 03740E00 */  sra        $t6, $t6, 16
    /* A2A90 800B2290 00408E48 */  mtc2       $t6, $8 /* handwritten instruction */
    /* A2A94 800B2294 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* A2A98 800B2298 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* A2A9C 800B229C 030C0600 */  sra        $at, $a2, 16
    /* A2AA0 800B22A0 00588148 */  mtc2       $at, $11 /* handwritten instruction */
    /* A2AA4 800B22A4 00000000 */  nop
    /* A2AA8 800B22A8 00000000 */  nop
    /* A2AAC 800B22AC 3D00984B */  gpf        1
    /* A2AB0 800B22B0 12080000 */  mflo       $at
    /* A2AB4 800B22B4 030B0100 */  sra        $at, $at, 12
    /* A2AB8 800B22B8 100041A4 */  sh         $at, 0x10($v0)
    /* A2ABC 800B22BC 00480B48 */  mfc2       $t3, $9 /* handwritten instruction */
    /* A2AC0 800B22C0 00500C48 */  mfc2       $t4, $10 /* handwritten instruction */
    /* A2AC4 800B22C4 00580D48 */  mfc2       $t5, $11 /* handwritten instruction */
    /* A2AC8 800B22C8 030C0600 */  sra        $at, $a2, 16
    /* A2ACC 800B22CC 00408148 */  mtc2       $at, $8 /* handwritten instruction */
    /* A2AD0 800B22D0 030C0500 */  sra        $at, $a1, 16
    /* A2AD4 800B22D4 00488148 */  mtc2       $at, $9 /* handwritten instruction */
    /* A2AD8 800B22D8 18002E00 */  mult       $at, $t6
    /* A2ADC 800B22DC 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
    /* A2AE0 800B22E0 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
    /* A2AE4 800B22E4 00000000 */  nop
    /* A2AE8 800B22E8 00000000 */  nop
    /* A2AEC 800B22EC 3D00984B */  gpf        1
    /* A2AF0 800B22F0 00480448 */  mfc2       $a0, $9 /* handwritten instruction */
    /* A2AF4 800B22F4 00500548 */  mfc2       $a1, $10 /* handwritten instruction */
    /* A2AF8 800B22F8 00580648 */  mfc2       $a2, $11 /* handwritten instruction */
    /* A2AFC 800B22FC 00408348 */  mtc2       $v1, $8 /* handwritten instruction */
    /* A2B00 800B2300 00488148 */  mtc2       $at, $9 /* handwritten instruction */
    /* A2B04 800B2304 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
    /* A2B08 800B2308 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
    /* A2B0C 800B230C 00000000 */  nop
    /* A2B10 800B2310 00000000 */  nop
    /* A2B14 800B2314 3D00984B */  gpf        1
    /* A2B18 800B2318 2048A900 */  add        $t1, $a1, $t1 /* handwritten instruction */
    /* A2B1C 800B231C 004C0900 */  sll        $t1, $t1, 16
    /* A2B20 800B2320 FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* A2B24 800B2324 25482701 */  or         $t1, $t1, $a3
    /* A2B28 800B2328 040049AC */  sw         $t1, 0x4($v0)
    /* A2B2C 800B232C 00480148 */  mfc2       $at, $9 /* handwritten instruction */
    /* A2B30 800B2330 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* A2B34 800B2334 22080100 */  neg        $at, $at /* handwritten instruction */
    /* A2B38 800B2338 000C0100 */  sll        $at, $at, 16
    /* A2B3C 800B233C 25082400 */  or         $at, $at, $a0
    /* A2B40 800B2340 000041AC */  sw         $at, 0x0($v0)
    /* A2B44 800B2344 00500E48 */  mfc2       $t6, $10 /* handwritten instruction */
    /* A2B48 800B2348 12080000 */  mflo       $at
    /* A2B4C 800B234C 00580F48 */  mfc2       $t7, $11 /* handwritten instruction */
    /* A2B50 800B2350 22504E01 */  sub        $t2, $t2, $t6 /* handwritten instruction */
    /* A2B54 800B2354 030B0100 */  sra        $at, $at, 12
    /* A2B58 800B2358 22080100 */  neg        $at, $at /* handwritten instruction */
    /* A2B5C 800B235C FFFF4A31 */  andi       $t2, $t2, 0xFFFF
    /* A2B60 800B2360 000C0100 */  sll        $at, $at, 16
    /* A2B64 800B2364 25082A00 */  or         $at, $at, $t2
    /* A2B68 800B2368 080041AC */  sw         $at, 0x8($v0)
    /* A2B6C 800B236C 22608601 */  sub        $t4, $t4, $a2 /* handwritten instruction */
    /* A2B70 800B2370 FFFF8C31 */  andi       $t4, $t4, 0xFFFF
    /* A2B74 800B2374 2068AF01 */  add        $t5, $t5, $t7 /* handwritten instruction */
    /* A2B78 800B2378 006C0D00 */  sll        $t5, $t5, 16
    /* A2B7C 800B237C 25608D01 */  or         $t4, $t4, $t5
    /* A2B80 800B2380 0800E003 */  jr         $ra
    /* A2B84 800B2384 0C004CAC */   sw        $t4, 0xC($v0)
endlabel func_800B2178
