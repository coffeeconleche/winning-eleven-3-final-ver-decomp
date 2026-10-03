nonmatching func_800B1DD8, 0x198

glabel func_800B1DD8
    /* A25D8 800B1DD8 21788000 */  addu       $t7, $a0, $zero
    /* A25DC 800B1DDC 2110A000 */  addu       $v0, $a1, $zero
    /* A25E0 800B1DE0 0E00E105 */  bgez       $t7, .L800B1E1C
    /* A25E4 800B1DE4 FF0FF931 */   andi      $t9, $t7, 0xFFF
    /* A25E8 800B1DE8 23780F00 */  negu       $t7, $t7
    /* A25EC 800B1DEC 0100E105 */  bgez       $t7, .L800B1DF4
    /* A25F0 800B1DF0 FF0FEF31 */   andi      $t7, $t7, 0xFFF
  .L800B1DF4:
    /* A25F4 800B1DF4 80C00F00 */  sll        $t8, $t7, 2
    /* A25F8 800B1DF8 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A25FC 800B1DFC 21C83803 */  addu       $t9, $t9, $t8
    /* A2600 800B1E00 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A2604 800B1E04 00000000 */  nop
    /* A2608 800B1E08 00741900 */  sll        $t6, $t9, 16
    /* A260C 800B1E0C 03740E00 */  sra        $t6, $t6, 16
    /* A2610 800B1E10 23480E00 */  negu       $t1, $t6
    /* A2614 800B1E14 8FC70208 */  j          .L800B1E3C
    /* A2618 800B1E18 03441900 */   sra       $t0, $t9, 16
  .L800B1E1C:
    /* A261C 800B1E1C 80C01900 */  sll        $t8, $t9, 2
    /* A2620 800B1E20 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A2624 800B1E24 21C83803 */  addu       $t9, $t9, $t8
    /* A2628 800B1E28 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A262C 800B1E2C 00000000 */  nop
    /* A2630 800B1E30 00C41900 */  sll        $t8, $t9, 16
    /* A2634 800B1E34 034C1800 */  sra        $t1, $t8, 16
    /* A2638 800B1E38 03441900 */  sra        $t0, $t9, 16
  .L800B1E3C:
    /* A263C 800B1E3C 0000AA84 */  lh         $t2, 0x0($a1)
    /* A2640 800B1E40 0600AD84 */  lh         $t5, 0x6($a1)
    /* A2644 800B1E44 19000A01 */  multu      $t0, $t2
    /* A2648 800B1E48 0200AB84 */  lh         $t3, 0x2($a1)
    /* A264C 800B1E4C 0800AE84 */  lh         $t6, 0x8($a1)
    /* A2650 800B1E50 12C00000 */  mflo       $t8
    /* A2654 800B1E54 0400AC84 */  lh         $t4, 0x4($a1)
    /* A2658 800B1E58 0A00AF84 */  lh         $t7, 0xA($a1)
    /* A265C 800B1E5C 19002D01 */  multu      $t1, $t5
    /* A2660 800B1E60 00000000 */  nop
    /* A2664 800B1E64 00000000 */  nop
    /* A2668 800B1E68 12C80000 */  mflo       $t9
    /* A266C 800B1E6C 23C81903 */  subu       $t9, $t8, $t9
    /* A2670 800B1E70 03C31900 */  sra        $t8, $t9, 12
    /* A2674 800B1E74 19000B01 */  multu      $t0, $t3
    /* A2678 800B1E78 0000B8A4 */  sh         $t8, 0x0($a1)
    /* A267C 800B1E7C 00000000 */  nop
    /* A2680 800B1E80 12C00000 */  mflo       $t8
    /* A2684 800B1E84 00000000 */  nop
    /* A2688 800B1E88 00000000 */  nop
    /* A268C 800B1E8C 19002E01 */  multu      $t1, $t6
    /* A2690 800B1E90 00000000 */  nop
    /* A2694 800B1E94 00000000 */  nop
    /* A2698 800B1E98 12C80000 */  mflo       $t9
    /* A269C 800B1E9C 23C81903 */  subu       $t9, $t8, $t9
    /* A26A0 800B1EA0 03C31900 */  sra        $t8, $t9, 12
    /* A26A4 800B1EA4 19000C01 */  multu      $t0, $t4
    /* A26A8 800B1EA8 0200B8A4 */  sh         $t8, 0x2($a1)
    /* A26AC 800B1EAC 00000000 */  nop
    /* A26B0 800B1EB0 12C00000 */  mflo       $t8
    /* A26B4 800B1EB4 00000000 */  nop
    /* A26B8 800B1EB8 00000000 */  nop
    /* A26BC 800B1EBC 19002F01 */  multu      $t1, $t7
    /* A26C0 800B1EC0 00000000 */  nop
    /* A26C4 800B1EC4 00000000 */  nop
    /* A26C8 800B1EC8 12C80000 */  mflo       $t9
    /* A26CC 800B1ECC 23C81903 */  subu       $t9, $t8, $t9
    /* A26D0 800B1ED0 03C31900 */  sra        $t8, $t9, 12
    /* A26D4 800B1ED4 19002A01 */  multu      $t1, $t2
    /* A26D8 800B1ED8 0400B8A4 */  sh         $t8, 0x4($a1)
    /* A26DC 800B1EDC 00000000 */  nop
    /* A26E0 800B1EE0 12C00000 */  mflo       $t8
    /* A26E4 800B1EE4 00000000 */  nop
    /* A26E8 800B1EE8 00000000 */  nop
    /* A26EC 800B1EEC 19000D01 */  multu      $t0, $t5
    /* A26F0 800B1EF0 00000000 */  nop
    /* A26F4 800B1EF4 00000000 */  nop
    /* A26F8 800B1EF8 12C80000 */  mflo       $t9
    /* A26FC 800B1EFC 21C81903 */  addu       $t9, $t8, $t9
    /* A2700 800B1F00 03C31900 */  sra        $t8, $t9, 12
    /* A2704 800B1F04 19002B01 */  multu      $t1, $t3
    /* A2708 800B1F08 0600B8A4 */  sh         $t8, 0x6($a1)
    /* A270C 800B1F0C 00000000 */  nop
    /* A2710 800B1F10 12C00000 */  mflo       $t8
    /* A2714 800B1F14 00000000 */  nop
    /* A2718 800B1F18 00000000 */  nop
    /* A271C 800B1F1C 19000E01 */  multu      $t0, $t6
    /* A2720 800B1F20 00000000 */  nop
    /* A2724 800B1F24 00000000 */  nop
    /* A2728 800B1F28 12C80000 */  mflo       $t9
    /* A272C 800B1F2C 21C81903 */  addu       $t9, $t8, $t9
    /* A2730 800B1F30 03C31900 */  sra        $t8, $t9, 12
    /* A2734 800B1F34 19002C01 */  multu      $t1, $t4
    /* A2738 800B1F38 0800B8A4 */  sh         $t8, 0x8($a1)
    /* A273C 800B1F3C 00000000 */  nop
    /* A2740 800B1F40 12C00000 */  mflo       $t8
    /* A2744 800B1F44 00000000 */  nop
    /* A2748 800B1F48 00000000 */  nop
    /* A274C 800B1F4C 19000F01 */  multu      $t0, $t7
    /* A2750 800B1F50 00000000 */  nop
    /* A2754 800B1F54 00000000 */  nop
    /* A2758 800B1F58 12C80000 */  mflo       $t9
    /* A275C 800B1F5C 21C81903 */  addu       $t9, $t8, $t9
    /* A2760 800B1F60 03C31900 */  sra        $t8, $t9, 12
    /* A2764 800B1F64 0A00B8A4 */  sh         $t8, 0xA($a1)
    /* A2768 800B1F68 0800E003 */  jr         $ra
    /* A276C 800B1F6C 00000000 */   nop
endlabel func_800B1DD8
    /* A2770 800B1F70 00000000 */  nop
    /* A2774 800B1F74 00000000 */  nop
