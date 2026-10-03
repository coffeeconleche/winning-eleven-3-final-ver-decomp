nonmatching func_801A2610, 0x3EC

glabel func_801A2610
    /* 19698 801A2610 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 1969C 801A2614 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 196A0 801A2618 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 196A4 801A261C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 196A8 801A2620 01001424 */  addiu      $s4, $zero, 0x1
    /* 196AC 801A2624 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 196B0 801A2628 21A80000 */  addu       $s5, $zero, $zero
    /* 196B4 801A262C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 196B8 801A2630 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 196BC 801A2634 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 196C0 801A2638 6000B6AF */  sw         $s6, 0x60($sp)
    /* 196C4 801A263C 801F163C */  lui        $s6, (0x1F8002E1 >> 16)
    /* 196C8 801A2640 6400BFAF */  sw         $ra, 0x64($sp)
    /* 196CC 801A2644 5400B3AF */  sw         $s3, 0x54($sp)
    /* 196D0 801A2648 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 196D4 801A264C 0600622C */  sltiu      $v0, $v1, 0x6
    /* 196D8 801A2650 1C004010 */  beqz       $v0, .L801A26C4
    /* 196DC 801A2654 4800B0AF */   sw        $s0, 0x48($sp)
    /* 196E0 801A2658 80100300 */  sll        $v0, $v1, 2
    /* 196E4 801A265C 1980013C */  lui        $at, %hi(jtbl_8018A1C0)
    /* 196E8 801A2660 21082200 */  addu       $at, $at, $v0
    /* 196EC 801A2664 C0A1228C */  lw         $v0, %lo(jtbl_8018A1C0)($at)
    /* 196F0 801A2668 00000000 */  nop
    /* 196F4 801A266C 08004000 */  jr         $v0
    /* 196F8 801A2670 00000000 */   nop
  jlabel .L801A2674
    /* 196FC 801A2674 A739060C */  jal        func_8018E69C
    /* 19700 801A2678 01000424 */   addiu     $a0, $zero, 0x1
    /* 19704 801A267C 02000324 */  addiu      $v1, $zero, 0x2
    /* 19708 801A2680 11004310 */  beq        $v0, $v1, .L801A26C8
    /* 1970C 801A2684 03000424 */   addiu     $a0, $zero, 0x3
    /* 19710 801A2688 B2890608 */  j          .L801A26C8
    /* 19714 801A268C 01001524 */   addiu     $s5, $zero, 0x1
  jlabel .L801A2690
    /* 19718 801A2690 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1971C 801A2694 21084102 */  addu       $at, $s2, $at
    /* 19720 801A2698 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 19724 801A269C 00000000 */  nop
    /* 19728 801A26A0 0F004230 */  andi       $v0, $v0, 0xF
    /* 1972C 801A26A4 08004014 */  bnez       $v0, .L801A26C8
    /* 19730 801A26A8 03000424 */   addiu     $a0, $zero, 0x3
    /* 19734 801A26AC B2890608 */  j          .L801A26C8
    /* 19738 801A26B0 21A00000 */   addu      $s4, $zero, $zero
  jlabel .L801A26B4
    /* 1973C 801A26B4 E102C492 */  lbu        $a0, 0x2E1($s6)
    /* 19740 801A26B8 0174000C */  jal        func_8001D004
    /* 19744 801A26BC 05308424 */   addiu     $a0, $a0, 0x3005
    /* 19748 801A26C0 F45D42AE */  sw         $v0, 0x5DF4($s2)
  jlabel .L801A26C4
    /* 1974C 801A26C4 03000424 */  addiu      $a0, $zero, 0x3
  .L801A26C8:
    /* 19750 801A26C8 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 19754 801A26CC 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 19758 801A26D0 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 1975C 801A26D4 21380000 */  addu       $a3, $zero, $zero
    /* 19760 801A26D8 38000224 */  addiu      $v0, $zero, 0x38
    /* 19764 801A26DC 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 19768 801A26E0 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 1976C 801A26E4 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 19770 801A26E8 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 19774 801A26EC 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 19778 801A26F0 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 1977C 801A26F4 5E000224 */  addiu      $v0, $zero, 0x5E
    /* 19780 801A26F8 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 19784 801A26FC 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 19788 801A2700 60000224 */  addiu      $v0, $zero, 0x60
    /* 1978C 801A2704 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 19790 801A2708 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 19794 801A270C 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 19798 801A2710 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 1979C 801A2714 20000224 */  addiu      $v0, $zero, 0x20
    /* 197A0 801A2718 80001024 */  addiu      $s0, $zero, 0x80
    /* 197A4 801A271C 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 197A8 801A2720 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 197AC 801A2724 04000224 */  addiu      $v0, $zero, 0x4
    /* 197B0 801A2728 01001324 */  addiu      $s3, $zero, 0x1
    /* 197B4 801A272C 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 197B8 801A2730 838D30A0 */  sb         $s0, %lo(D_801D8D83)($at)
    /* 197BC 801A2734 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 197C0 801A2738 848D30A0 */  sb         $s0, %lo(D_801D8D84)($at)
    /* 197C4 801A273C 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 197C8 801A2740 858D30A0 */  sb         $s0, %lo(D_801D8D85)($at)
    /* 197CC 801A2744 1000A2AF */  sw         $v0, 0x10($sp)
    /* 197D0 801A2748 7850060C */  jal        func_801941E0
    /* 197D4 801A274C 1400B3AF */   sw        $s3, 0x14($sp)
    /* 197D8 801A2750 04000424 */  addiu      $a0, $zero, 0x4
    /* 197DC 801A2754 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 197E0 801A2758 1E80063C */  lui        $a2, %hi(D_801D8D90)
    /* 197E4 801A275C 908DC624 */  addiu      $a2, $a2, %lo(D_801D8D90)
    /* 197E8 801A2760 01000724 */  addiu      $a3, $zero, 0x1
    /* 197EC 801A2764 52FD0224 */  addiu      $v0, $zero, -0x2AE
    /* 197F0 801A2768 F5FF0A24 */  addiu      $t2, $zero, -0xB
    /* 197F4 801A276C AC000924 */  addiu      $t1, $zero, 0xAC
    /* 197F8 801A2770 10000824 */  addiu      $t0, $zero, 0x10
    /* 197FC 801A2774 A0000324 */  addiu      $v1, $zero, 0xA0
    /* 19800 801A2778 1E80113C */  lui        $s1, %hi(D_801D8DA8)
    /* 19804 801A277C A88D3126 */  addiu      $s1, $s1, %lo(D_801D8DA8)
    /* 19808 801A2780 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 1980C 801A2784 01020224 */  addiu      $v0, $zero, 0x201
    /* 19810 801A2788 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 19814 801A278C 928D2AA4 */  sh         $t2, %lo(D_801D8D92)($at)
    /* 19818 801A2790 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 1981C 801A2794 948D29A4 */  sh         $t1, %lo(D_801D8D94)($at)
    /* 19820 801A2798 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 19824 801A279C 968D28A4 */  sh         $t0, %lo(D_801D8D96)($at)
    /* 19828 801A27A0 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 1982C 801A27A4 988D23A0 */  sb         $v1, %lo(D_801D8D98)($at)
    /* 19830 801A27A8 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 19834 801A27AC 998D23A0 */  sb         $v1, %lo(D_801D8D99)($at)
    /* 19838 801A27B0 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 1983C 801A27B4 9A8D23A0 */  sb         $v1, %lo(D_801D8D9A)($at)
    /* 19840 801A27B8 000022A6 */  sh         $v0, 0x0($s1)
    /* 19844 801A27BC 1E80013C */  lui        $at, %hi(D_801D8D9B)
    /* 19848 801A27C0 9B8D30A0 */  sb         $s0, %lo(D_801D8D9B)($at)
    /* 1984C 801A27C4 1E80013C */  lui        $at, %hi(D_801D8D9C)
    /* 19850 801A27C8 9C8D30A0 */  sb         $s0, %lo(D_801D8D9C)($at)
    /* 19854 801A27CC 1E80013C */  lui        $at, %hi(D_801D8DB3)
    /* 19858 801A27D0 B38D30A0 */  sb         $s0, %lo(D_801D8DB3)($at)
    /* 1985C 801A27D4 1E80013C */  lui        $at, %hi(D_801D8DB4)
    /* 19860 801A27D8 B48D30A0 */  sb         $s0, %lo(D_801D8DB4)($at)
    /* 19864 801A27DC 03001024 */  addiu      $s0, $zero, 0x3
    /* 19868 801A27E0 1E80013C */  lui        $at, %hi(D_801D8DAA)
    /* 1986C 801A27E4 AA8D2AA4 */  sh         $t2, %lo(D_801D8DAA)($at)
    /* 19870 801A27E8 1E80013C */  lui        $at, %hi(D_801D8DAC)
    /* 19874 801A27EC AC8D29A4 */  sh         $t1, %lo(D_801D8DAC)($at)
    /* 19878 801A27F0 1E80013C */  lui        $at, %hi(D_801D8DAE)
    /* 1987C 801A27F4 AE8D28A4 */  sh         $t0, %lo(D_801D8DAE)($at)
    /* 19880 801A27F8 1E80013C */  lui        $at, %hi(D_801D8DB0)
    /* 19884 801A27FC B08D23A0 */  sb         $v1, %lo(D_801D8DB0)($at)
    /* 19888 801A2800 1E80013C */  lui        $at, %hi(D_801D8DB1)
    /* 1988C 801A2804 B18D23A0 */  sb         $v1, %lo(D_801D8DB1)($at)
    /* 19890 801A2808 1E80013C */  lui        $at, %hi(D_801D8DB2)
    /* 19894 801A280C B28D23A0 */  sb         $v1, %lo(D_801D8DB2)($at)
    /* 19898 801A2810 1E80013C */  lui        $at, %hi(D_801D8D9D)
    /* 1989C 801A2814 9D8D23A0 */  sb         $v1, %lo(D_801D8D9D)($at)
    /* 198A0 801A2818 1E80013C */  lui        $at, %hi(D_801D8DB5)
    /* 198A4 801A281C B58D23A0 */  sb         $v1, %lo(D_801D8DB5)($at)
    /* 198A8 801A2820 1000B0AF */  sw         $s0, 0x10($sp)
    /* 198AC 801A2824 3B50060C */  jal        func_801940EC
    /* 198B0 801A2828 1400B3AF */   sw        $s3, 0x14($sp)
    /* 198B4 801A282C 05000424 */  addiu      $a0, $zero, 0x5
    /* 198B8 801A2830 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 198BC 801A2834 21302002 */  addu       $a2, $s1, $zero
    /* 198C0 801A2838 01000724 */  addiu      $a3, $zero, 0x1
    /* 198C4 801A283C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 198C8 801A2840 3B50060C */  jal        func_801940EC
    /* 198CC 801A2844 1400B3AF */   sw        $s3, 0x14($sp)
    /* 198D0 801A2848 21208002 */  addu       $a0, $s4, $zero
    /* 198D4 801A284C 288B060C */  jal        func_801A2CA0
    /* 198D8 801A2850 2128A002 */   addu      $a1, $s5, $zero
    /* 198DC 801A2854 E85E4426 */  addiu      $a0, $s2, 0x5EE8
    /* 198E0 801A2858 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 198E4 801A285C 00020624 */  addiu      $a2, $zero, 0x200
    /* 198E8 801A2860 653A060C */  jal        func_8018E994
    /* 198EC 801A2864 21804000 */   addu      $s0, $v0, $zero
    /* 198F0 801A2868 385F4426 */  addiu      $a0, $s2, 0x5F38
    /* 198F4 801A286C 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 198F8 801A2870 653A060C */  jal        func_8018E994
    /* 198FC 801A2874 00020624 */   addiu     $a2, $zero, 0x200
    /* 19900 801A2878 105F4426 */  addiu      $a0, $s2, 0x5F10
    /* 19904 801A287C FF001032 */  andi       $s0, $s0, 0xFF
    /* 19908 801A2880 1980013C */  lui        $at, %hi(D_80189FFC)
    /* 1990C 801A2884 21083000 */  addu       $at, $at, $s0
    /* 19910 801A2888 FC9F2590 */  lbu        $a1, %lo(D_80189FFC)($at)
    /* 19914 801A288C 00020624 */  addiu      $a2, $zero, 0x200
    /* 19918 801A2890 653A060C */  jal        func_8018E994
    /* 1991C 801A2894 0002A534 */   ori       $a1, $a1, 0x200
    /* 19920 801A2898 605F4426 */  addiu      $a0, $s2, 0x5F60
    /* 19924 801A289C 1980013C */  lui        $at, %hi(D_8018A004)
    /* 19928 801A28A0 21083000 */  addu       $at, $at, $s0
    /* 1992C 801A28A4 04A02590 */  lbu        $a1, %lo(D_8018A004)($at)
    /* 19930 801A28A8 00020624 */  addiu      $a2, $zero, 0x200
    /* 19934 801A28AC 653A060C */  jal        func_8018E994
    /* 19938 801A28B0 0002A534 */   ori       $a1, $a1, 0x200
    /* 1993C 801A28B4 E102C292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s6)
    /* 19940 801A28B8 02000324 */  addiu      $v1, $zero, 0x2
    /* 19944 801A28BC FF004230 */  andi       $v0, $v0, 0xFF
    /* 19948 801A28C0 08004314 */  bne        $v0, $v1, .L801A28E4
    /* 1994C 801A28C4 0B000424 */   addiu     $a0, $zero, 0xB
    /* 19950 801A28C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19954 801A28CC 21084102 */  addu       $at, $s2, $at
    /* 19958 801A28D0 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 1995C 801A28D4 00000000 */  nop
    /* 19960 801A28D8 0F004230 */  andi       $v0, $v0, 0xF
    /* 19964 801A28DC 15004010 */  beqz       $v0, .L801A2934
    /* 19968 801A28E0 00000000 */   nop
  .L801A28E4:
    /* 1996C 801A28E4 60300524 */  addiu      $a1, $zero, 0x3060
    /* 19970 801A28E8 21300000 */  addu       $a2, $zero, $zero
    /* 19974 801A28EC 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 19978 801A28F0 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 1997C 801A28F4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 19980 801A28F8 00100224 */  addiu      $v0, $zero, 0x1000
    /* 19984 801A28FC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 19988 801A2900 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1998C 801A2904 80000224 */  addiu      $v0, $zero, 0x80
    /* 19990 801A2908 1000A0AF */  sw         $zero, 0x10($sp)
    /* 19994 801A290C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 19998 801A2910 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1999C 801A2914 2800A0AF */  sw         $zero, 0x28($sp)
    /* 199A0 801A2918 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 199A4 801A291C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 199A8 801A2920 3400A2AF */  sw         $v0, 0x34($sp)
    /* 199AC 801A2924 3800A0AF */  sw         $zero, 0x38($sp)
    /* 199B0 801A2928 3C00A3AF */  sw         $v1, 0x3C($sp)
    /* 199B4 801A292C ED4F060C */  jal        func_80193FB4
    /* 199B8 801A2930 4000B3AF */   sw        $s3, 0x40($sp)
  .L801A2934:
    /* 199BC 801A2934 E102C292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s6)
    /* 199C0 801A2938 00000000 */  nop
    /* 199C4 801A293C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 199C8 801A2940 0200422C */  sltiu      $v0, $v0, 0x2
    /* 199CC 801A2944 0C004010 */  beqz       $v0, .L801A2978
    /* 199D0 801A2948 0C000424 */   addiu     $a0, $zero, 0xC
    /* 199D4 801A294C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 199D8 801A2950 21084102 */  addu       $at, $s2, $at
    /* 199DC 801A2954 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 199E0 801A2958 00000000 */  nop
    /* 199E4 801A295C 0F004230 */  andi       $v0, $v0, 0xF
    /* 199E8 801A2960 03004014 */  bnez       $v0, .L801A2970
    /* 199EC 801A2964 10000424 */   addiu     $a0, $zero, 0x10
    /* 199F0 801A2968 5F8A0608 */  j          .L801A297C
    /* 199F4 801A296C 78300524 */   addiu     $a1, $zero, 0x3078
  .L801A2970:
    /* 199F8 801A2970 5F8A0608 */  j          .L801A297C
    /* 199FC 801A2974 77300524 */   addiu     $a1, $zero, 0x3077
  .L801A2978:
    /* 19A00 801A2978 61300524 */  addiu      $a1, $zero, 0x3061
  .L801A297C:
    /* 19A04 801A297C 21300000 */  addu       $a2, $zero, $zero
    /* 19A08 801A2980 00020724 */  addiu      $a3, $zero, 0x200
    /* 19A0C 801A2984 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 19A10 801A2988 1400A2AF */  sw         $v0, 0x14($sp)
    /* 19A14 801A298C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 19A18 801A2990 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 19A1C 801A2994 2000A2AF */  sw         $v0, 0x20($sp)
    /* 19A20 801A2998 80000224 */  addiu      $v0, $zero, 0x80
    /* 19A24 801A299C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 19A28 801A29A0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 19A2C 801A29A4 3400A2AF */  sw         $v0, 0x34($sp)
    /* 19A30 801A29A8 02000224 */  addiu      $v0, $zero, 0x2
    /* 19A34 801A29AC 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 19A38 801A29B0 01000224 */  addiu      $v0, $zero, 0x1
    /* 19A3C 801A29B4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 19A40 801A29B8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 19A44 801A29BC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 19A48 801A29C0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 19A4C 801A29C4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 19A50 801A29C8 ED4F060C */  jal        func_80193FB4
    /* 19A54 801A29CC 4000A2AF */   sw        $v0, 0x40($sp)
    /* 19A58 801A29D0 6400BF8F */  lw         $ra, 0x64($sp)
    /* 19A5C 801A29D4 6000B68F */  lw         $s6, 0x60($sp)
    /* 19A60 801A29D8 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 19A64 801A29DC 5800B48F */  lw         $s4, 0x58($sp)
    /* 19A68 801A29E0 5400B38F */  lw         $s3, 0x54($sp)
    /* 19A6C 801A29E4 5000B28F */  lw         $s2, 0x50($sp)
    /* 19A70 801A29E8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 19A74 801A29EC 4800B08F */  lw         $s0, 0x48($sp)
    /* 19A78 801A29F0 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 19A7C 801A29F4 0800E003 */  jr         $ra
    /* 19A80 801A29F8 00000000 */   nop
endlabel func_801A2610
