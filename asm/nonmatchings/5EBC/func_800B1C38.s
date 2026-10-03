nonmatching func_800B1C38, 0x198

glabel func_800B1C38
    /* A2438 800B1C38 21788000 */  addu       $t7, $a0, $zero
    /* A243C 800B1C3C 2110A000 */  addu       $v0, $a1, $zero
    /* A2440 800B1C40 0D00E105 */  bgez       $t7, .L800B1C78
    /* A2444 800B1C44 FF0FF931 */   andi      $t9, $t7, 0xFFF
    /* A2448 800B1C48 23780F00 */  negu       $t7, $t7
    /* A244C 800B1C4C 0100E105 */  bgez       $t7, .L800B1C54
    /* A2450 800B1C50 FF0FEF31 */   andi      $t7, $t7, 0xFFF
  .L800B1C54:
    /* A2454 800B1C54 80C00F00 */  sll        $t8, $t7, 2
    /* A2458 800B1C58 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A245C 800B1C5C 21C83803 */  addu       $t9, $t9, $t8
    /* A2460 800B1C60 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A2464 800B1C64 00000000 */  nop
    /* A2468 800B1C68 00741900 */  sll        $t6, $t9, 16
    /* A246C 800B1C6C 034C0E00 */  sra        $t1, $t6, 16
    /* A2470 800B1C70 27C70208 */  j          .L800B1C9C
    /* A2474 800B1C74 03441900 */   sra       $t0, $t9, 16
  .L800B1C78:
    /* A2478 800B1C78 80C01900 */  sll        $t8, $t9, 2
    /* A247C 800B1C7C 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A2480 800B1C80 21C83803 */  addu       $t9, $t9, $t8
    /* A2484 800B1C84 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A2488 800B1C88 00000000 */  nop
    /* A248C 800B1C8C 00C41900 */  sll        $t8, $t9, 16
    /* A2490 800B1C90 037C1800 */  sra        $t7, $t8, 16
    /* A2494 800B1C94 23480F00 */  negu       $t1, $t7
    /* A2498 800B1C98 03441900 */  sra        $t0, $t9, 16
  .L800B1C9C:
    /* A249C 800B1C9C 0000AA84 */  lh         $t2, 0x0($a1)
    /* A24A0 800B1CA0 0C00AD84 */  lh         $t5, 0xC($a1)
    /* A24A4 800B1CA4 19000A01 */  multu      $t0, $t2
    /* A24A8 800B1CA8 0200AB84 */  lh         $t3, 0x2($a1)
    /* A24AC 800B1CAC 0E00AE84 */  lh         $t6, 0xE($a1)
    /* A24B0 800B1CB0 12C00000 */  mflo       $t8
    /* A24B4 800B1CB4 0400AC84 */  lh         $t4, 0x4($a1)
    /* A24B8 800B1CB8 1000AF84 */  lh         $t7, 0x10($a1)
    /* A24BC 800B1CBC 19002D01 */  multu      $t1, $t5
    /* A24C0 800B1CC0 00000000 */  nop
    /* A24C4 800B1CC4 00000000 */  nop
    /* A24C8 800B1CC8 12C80000 */  mflo       $t9
    /* A24CC 800B1CCC 23C81903 */  subu       $t9, $t8, $t9
    /* A24D0 800B1CD0 03C31900 */  sra        $t8, $t9, 12
    /* A24D4 800B1CD4 19000B01 */  multu      $t0, $t3
    /* A24D8 800B1CD8 0000B8A4 */  sh         $t8, 0x0($a1)
    /* A24DC 800B1CDC 00000000 */  nop
    /* A24E0 800B1CE0 12C00000 */  mflo       $t8
    /* A24E4 800B1CE4 00000000 */  nop
    /* A24E8 800B1CE8 00000000 */  nop
    /* A24EC 800B1CEC 19002E01 */  multu      $t1, $t6
    /* A24F0 800B1CF0 00000000 */  nop
    /* A24F4 800B1CF4 00000000 */  nop
    /* A24F8 800B1CF8 12C80000 */  mflo       $t9
    /* A24FC 800B1CFC 23C81903 */  subu       $t9, $t8, $t9
    /* A2500 800B1D00 03C31900 */  sra        $t8, $t9, 12
    /* A2504 800B1D04 19000C01 */  multu      $t0, $t4
    /* A2508 800B1D08 0200B8A4 */  sh         $t8, 0x2($a1)
    /* A250C 800B1D0C 00000000 */  nop
    /* A2510 800B1D10 12C00000 */  mflo       $t8
    /* A2514 800B1D14 00000000 */  nop
    /* A2518 800B1D18 00000000 */  nop
    /* A251C 800B1D1C 19002F01 */  multu      $t1, $t7
    /* A2520 800B1D20 00000000 */  nop
    /* A2524 800B1D24 00000000 */  nop
    /* A2528 800B1D28 12C80000 */  mflo       $t9
    /* A252C 800B1D2C 23C81903 */  subu       $t9, $t8, $t9
    /* A2530 800B1D30 03C31900 */  sra        $t8, $t9, 12
    /* A2534 800B1D34 19002A01 */  multu      $t1, $t2
    /* A2538 800B1D38 0400B8A4 */  sh         $t8, 0x4($a1)
    /* A253C 800B1D3C 00000000 */  nop
    /* A2540 800B1D40 12C00000 */  mflo       $t8
    /* A2544 800B1D44 00000000 */  nop
    /* A2548 800B1D48 00000000 */  nop
    /* A254C 800B1D4C 19000D01 */  multu      $t0, $t5
    /* A2550 800B1D50 00000000 */  nop
    /* A2554 800B1D54 00000000 */  nop
    /* A2558 800B1D58 12C80000 */  mflo       $t9
    /* A255C 800B1D5C 21C81903 */  addu       $t9, $t8, $t9
    /* A2560 800B1D60 03C31900 */  sra        $t8, $t9, 12
    /* A2564 800B1D64 19002B01 */  multu      $t1, $t3
    /* A2568 800B1D68 0C00B8A4 */  sh         $t8, 0xC($a1)
    /* A256C 800B1D6C 00000000 */  nop
    /* A2570 800B1D70 12C00000 */  mflo       $t8
    /* A2574 800B1D74 00000000 */  nop
    /* A2578 800B1D78 00000000 */  nop
    /* A257C 800B1D7C 19000E01 */  multu      $t0, $t6
    /* A2580 800B1D80 00000000 */  nop
    /* A2584 800B1D84 00000000 */  nop
    /* A2588 800B1D88 12C80000 */  mflo       $t9
    /* A258C 800B1D8C 21C81903 */  addu       $t9, $t8, $t9
    /* A2590 800B1D90 03C31900 */  sra        $t8, $t9, 12
    /* A2594 800B1D94 19002C01 */  multu      $t1, $t4
    /* A2598 800B1D98 0E00B8A4 */  sh         $t8, 0xE($a1)
    /* A259C 800B1D9C 00000000 */  nop
    /* A25A0 800B1DA0 12C00000 */  mflo       $t8
    /* A25A4 800B1DA4 00000000 */  nop
    /* A25A8 800B1DA8 00000000 */  nop
    /* A25AC 800B1DAC 19000F01 */  multu      $t0, $t7
    /* A25B0 800B1DB0 00000000 */  nop
    /* A25B4 800B1DB4 00000000 */  nop
    /* A25B8 800B1DB8 12C80000 */  mflo       $t9
    /* A25BC 800B1DBC 21C81903 */  addu       $t9, $t8, $t9
    /* A25C0 800B1DC0 03C31900 */  sra        $t8, $t9, 12
    /* A25C4 800B1DC4 1000B8A4 */  sh         $t8, 0x10($a1)
    /* A25C8 800B1DC8 0800E003 */  jr         $ra
    /* A25CC 800B1DCC 00000000 */   nop
endlabel func_800B1C38
    /* A25D0 800B1DD0 00000000 */  nop
    /* A25D4 800B1DD4 00000000 */  nop
