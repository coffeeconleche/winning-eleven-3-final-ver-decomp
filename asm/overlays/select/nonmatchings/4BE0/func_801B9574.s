nonmatching func_801B9574, 0x858

glabel func_801B9574
    /* 305FC 801B9574 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 30600 801B9578 4800A4A3 */  sb         $a0, 0x48($sp)
    /* 30604 801B957C 21200000 */  addu       $a0, $zero, $zero
    /* 30608 801B9580 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 3060C 801B9584 1E80063C */  lui        $a2, %hi(D_801D8D90)
    /* 30610 801B9588 908DC624 */  addiu      $a2, $a2, %lo(D_801D8D90)
    /* 30614 801B958C 21380000 */  addu       $a3, $zero, $zero
    /* 30618 801B9590 14000224 */  addiu      $v0, $zero, 0x14
    /* 3061C 801B9594 8C00BFAF */  sw         $ra, 0x8C($sp)
    /* 30620 801B9598 8800BEAF */  sw         $fp, 0x88($sp)
    /* 30624 801B959C 8400B7AF */  sw         $s7, 0x84($sp)
    /* 30628 801B95A0 8000B6AF */  sw         $s6, 0x80($sp)
    /* 3062C 801B95A4 7C00B5AF */  sw         $s5, 0x7C($sp)
    /* 30630 801B95A8 7800B4AF */  sw         $s4, 0x78($sp)
    /* 30634 801B95AC 7400B3AF */  sw         $s3, 0x74($sp)
    /* 30638 801B95B0 7000B2AF */  sw         $s2, 0x70($sp)
    /* 3063C 801B95B4 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 30640 801B95B8 6800B0AF */  sw         $s0, 0x68($sp)
    /* 30644 801B95BC 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 30648 801B95C0 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 3064C 801B95C4 928D22A4 */  sh         $v0, %lo(D_801D8D92)($at)
    /* 30650 801B95C8 7A000224 */  addiu      $v0, $zero, 0x7A
    /* 30654 801B95CC 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 30658 801B95D0 948D22A4 */  sh         $v0, %lo(D_801D8D94)($at)
    /* 3065C 801B95D4 68000224 */  addiu      $v0, $zero, 0x68
    /* 30660 801B95D8 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 30664 801B95DC 968D22A4 */  sh         $v0, %lo(D_801D8D96)($at)
    /* 30668 801B95E0 20000224 */  addiu      $v0, $zero, 0x20
    /* 3066C 801B95E4 4800B593 */  lbu        $s5, 0x48($sp)
    /* 30670 801B95E8 1180033C */  lui        $v1, %hi(D_8010865D)
    /* 30674 801B95EC 5D866390 */  lbu        $v1, %lo(D_8010865D)($v1)
    /* 30678 801B95F0 01001724 */  addiu      $s7, $zero, 0x1
    /* 3067C 801B95F4 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 30680 801B95F8 988D20A0 */  sb         $zero, %lo(D_801D8D98)($at)
    /* 30684 801B95FC 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 30688 801B9600 998D20A0 */  sb         $zero, %lo(D_801D8D99)($at)
    /* 3068C 801B9604 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 30690 801B9608 9A8D22A0 */  sb         $v0, %lo(D_801D8D9A)($at)
    /* 30694 801B960C 1000B7AF */  sw         $s7, 0x10($sp)
    /* 30698 801B9610 1400B7AF */  sw         $s7, 0x14($sp)
    /* 3069C 801B9614 0200A22E */  sltiu      $v0, $s5, 0x2
    /* 306A0 801B9618 01004238 */  xori       $v0, $v0, 0x1
    /* 306A4 801B961C 26104300 */  xor        $v0, $v0, $v1
    /* 306A8 801B9620 01004838 */  xori       $t0, $v0, 0x1
    /* 306AC 801B9624 21F04000 */  addu       $fp, $v0, $zero
    /* 306B0 801B9628 7850060C */  jal        func_801941E0
    /* 306B4 801B962C 5000A8A3 */   sb        $t0, 0x50($sp)
    /* 306B8 801B9630 04000424 */  addiu      $a0, $zero, 0x4
    /* 306BC 801B9634 F1300524 */  addiu      $a1, $zero, 0x30F1
    /* 306C0 801B9638 21300000 */  addu       $a2, $zero, $zero
    /* 306C4 801B963C 21380000 */  addu       $a3, $zero, $zero
    /* 306C8 801B9640 1A001324 */  addiu      $s3, $zero, 0x1A
    /* 306CC 801B9644 00101124 */  addiu      $s1, $zero, 0x1000
    /* 306D0 801B9648 80001024 */  addiu      $s0, $zero, 0x80
    /* 306D4 801B964C 02001224 */  addiu      $s2, $zero, 0x2
    /* 306D8 801B9650 1000A0AF */  sw         $zero, 0x10($sp)
    /* 306DC 801B9654 1400B3AF */  sw         $s3, 0x14($sp)
    /* 306E0 801B9658 1800A0AF */  sw         $zero, 0x18($sp)
    /* 306E4 801B965C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 306E8 801B9660 2000B1AF */  sw         $s1, 0x20($sp)
    /* 306EC 801B9664 2400A0AF */  sw         $zero, 0x24($sp)
    /* 306F0 801B9668 2800A0AF */  sw         $zero, 0x28($sp)
    /* 306F4 801B966C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 306F8 801B9670 3000B0AF */  sw         $s0, 0x30($sp)
    /* 306FC 801B9674 3400B0AF */  sw         $s0, 0x34($sp)
    /* 30700 801B9678 3800A0AF */  sw         $zero, 0x38($sp)
    /* 30704 801B967C 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 30708 801B9680 ED4F060C */  jal        func_80193FB4
    /* 3070C 801B9684 4000B7AF */   sw        $s7, 0x40($sp)
    /* 30710 801B9688 05000424 */  addiu      $a0, $zero, 0x5
    /* 30714 801B968C F0300524 */  addiu      $a1, $zero, 0x30F0
    /* 30718 801B9690 21300000 */  addu       $a2, $zero, $zero
    /* 3071C 801B9694 21380000 */  addu       $a3, $zero, $zero
    /* 30720 801B9698 1000A0AF */  sw         $zero, 0x10($sp)
    /* 30724 801B969C 1400B3AF */  sw         $s3, 0x14($sp)
    /* 30728 801B96A0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3072C 801B96A4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 30730 801B96A8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 30734 801B96AC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 30738 801B96B0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3073C 801B96B4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 30740 801B96B8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 30744 801B96BC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 30748 801B96C0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3074C 801B96C4 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 30750 801B96C8 ED4F060C */  jal        func_80193FB4
    /* 30754 801B96CC 4000B7AF */   sw        $s7, 0x40($sp)
    /* 30758 801B96D0 06000424 */  addiu      $a0, $zero, 0x6
    /* 3075C 801B96D4 F4300524 */  addiu      $a1, $zero, 0x30F4
    /* 30760 801B96D8 21300000 */  addu       $a2, $zero, $zero
    /* 30764 801B96DC 21380000 */  addu       $a3, $zero, $zero
    /* 30768 801B96E0 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 3076C 801B96E4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 30770 801B96E8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 30774 801B96EC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 30778 801B96F0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3077C 801B96F4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 30780 801B96F8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 30784 801B96FC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 30788 801B9700 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3078C 801B9704 3000B0AF */  sw         $s0, 0x30($sp)
    /* 30790 801B9708 3400B0AF */  sw         $s0, 0x34($sp)
    /* 30794 801B970C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 30798 801B9710 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 3079C 801B9714 ED4F060C */  jal        func_80193FB4
    /* 307A0 801B9718 4000B7AF */   sw        $s7, 0x40($sp)
    /* 307A4 801B971C 1080163C */  lui        $s6, %hi(D_800FF748)
    /* 307A8 801B9720 48F7D626 */  addiu      $s6, $s6, %lo(D_800FF748)
    /* 307AC 801B9724 0300A22A */  slti       $v0, $s5, 0x3
    /* 307B0 801B9728 07004010 */  beqz       $v0, .L801B9748
    /* 307B4 801B972C 00000000 */   nop
    /* 307B8 801B9730 5000A016 */  bnez       $s5, .L801B9874
    /* 307BC 801B9734 00000000 */   nop
    /* 307C0 801B9738 0800A012 */  beqz       $s5, .L801B975C
    /* 307C4 801B973C 00000000 */   nop
    /* 307C8 801B9740 E3E60608 */  j          .L801B9B8C
    /* 307CC 801B9744 00000000 */   nop
  .L801B9748:
    /* 307D0 801B9748 03000224 */  addiu      $v0, $zero, 0x3
    /* 307D4 801B974C A600A212 */  beq        $s5, $v0, .L801B99E8
    /* 307D8 801B9750 00000000 */   nop
    /* 307DC 801B9754 E3E60608 */  j          .L801B9B8C
    /* 307E0 801B9758 00000000 */   nop
  .L801B975C:
    /* 307E4 801B975C 0174000C */  jal        func_8001D004
    /* 307E8 801B9760 F0300424 */   addiu     $a0, $zero, 0x30F0
    /* 307EC 801B9764 21204000 */  addu       $a0, $v0, $zero
    /* 307F0 801B9768 21280000 */  addu       $a1, $zero, $zero
    /* 307F4 801B976C 02000624 */  addiu      $a2, $zero, 0x2
    /* 307F8 801B9770 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 307FC 801B9774 61001024 */  addiu      $s0, $zero, 0x61
    /* 30800 801B9778 50A5060C */  jal        func_801A9540
    /* 30804 801B977C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 30808 801B9780 21204000 */  addu       $a0, $v0, $zero
    /* 3080C 801B9784 21280000 */  addu       $a1, $zero, $zero
    /* 30810 801B9788 01000624 */  addiu      $a2, $zero, 0x1
    /* 30814 801B978C B0000724 */  addiu      $a3, $zero, 0xB0
    /* 30818 801B9790 50A5060C */  jal        func_801A9540
    /* 3081C 801B9794 1000B0AF */   sw        $s0, 0x10($sp)
    /* 30820 801B9798 0C004424 */  addiu      $a0, $v0, 0xC
    /* 30824 801B979C 21280000 */  addu       $a1, $zero, $zero
    /* 30828 801B97A0 02000624 */  addiu      $a2, $zero, 0x2
    /* 3082C 801B97A4 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 30830 801B97A8 5B001024 */  addiu      $s0, $zero, 0x5B
    /* 30834 801B97AC 50A5060C */  jal        func_801A9540
    /* 30838 801B97B0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3083C 801B97B4 21204000 */  addu       $a0, $v0, $zero
    /* 30840 801B97B8 21280000 */  addu       $a1, $zero, $zero
    /* 30844 801B97BC 01000624 */  addiu      $a2, $zero, 0x1
    /* 30848 801B97C0 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 3084C 801B97C4 50A5060C */  jal        func_801A9540
    /* 30850 801B97C8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 30854 801B97CC 0174000C */  jal        func_8001D004
    /* 30858 801B97D0 F4300424 */   addiu     $a0, $zero, 0x30F4
    /* 3085C 801B97D4 21204000 */  addu       $a0, $v0, $zero
    /* 30860 801B97D8 21280000 */  addu       $a1, $zero, $zero
    /* 30864 801B97DC 02000624 */  addiu      $a2, $zero, 0x2
    /* 30868 801B97E0 85A5060C */  jal        func_801A9614
    /* 3086C 801B97E4 50000724 */   addiu     $a3, $zero, 0x50
    /* 30870 801B97E8 21204000 */  addu       $a0, $v0, $zero
    /* 30874 801B97EC 21280000 */  addu       $a1, $zero, $zero
    /* 30878 801B97F0 01000624 */  addiu      $a2, $zero, 0x1
    /* 3087C 801B97F4 85A5060C */  jal        func_801A9614
    /* 30880 801B97F8 50000724 */   addiu     $a3, $zero, 0x50
    /* 30884 801B97FC 21204000 */  addu       $a0, $v0, $zero
    /* 30888 801B9800 21280000 */  addu       $a1, $zero, $zero
    /* 3088C 801B9804 02000624 */  addiu      $a2, $zero, 0x2
    /* 30890 801B9808 85A5060C */  jal        func_801A9614
    /* 30894 801B980C 50000724 */   addiu     $a3, $zero, 0x50
    /* 30898 801B9810 21204000 */  addu       $a0, $v0, $zero
    /* 3089C 801B9814 21280000 */  addu       $a1, $zero, $zero
    /* 308A0 801B9818 01000624 */  addiu      $a2, $zero, 0x1
    /* 308A4 801B981C 85A5060C */  jal        func_801A9614
    /* 308A8 801B9820 50000724 */   addiu     $a3, $zero, 0x50
    /* 308AC 801B9824 21204000 */  addu       $a0, $v0, $zero
    /* 308B0 801B9828 21280000 */  addu       $a1, $zero, $zero
    /* 308B4 801B982C 02000624 */  addiu      $a2, $zero, 0x2
    /* 308B8 801B9830 85A5060C */  jal        func_801A9614
    /* 308BC 801B9834 5B000724 */   addiu     $a3, $zero, 0x5B
    /* 308C0 801B9838 21204000 */  addu       $a0, $v0, $zero
    /* 308C4 801B983C 21280000 */  addu       $a1, $zero, $zero
    /* 308C8 801B9840 01000624 */  addiu      $a2, $zero, 0x1
    /* 308CC 801B9844 85A5060C */  jal        func_801A9614
    /* 308D0 801B9848 5B000724 */   addiu     $a3, $zero, 0x5B
    /* 308D4 801B984C 21204000 */  addu       $a0, $v0, $zero
    /* 308D8 801B9850 21280000 */  addu       $a1, $zero, $zero
    /* 308DC 801B9854 02000624 */  addiu      $a2, $zero, 0x2
    /* 308E0 801B9858 85A5060C */  jal        func_801A9614
    /* 308E4 801B985C 5B000724 */   addiu     $a3, $zero, 0x5B
    /* 308E8 801B9860 21204000 */  addu       $a0, $v0, $zero
    /* 308EC 801B9864 21280000 */  addu       $a1, $zero, $zero
    /* 308F0 801B9868 01000624 */  addiu      $a2, $zero, 0x1
    /* 308F4 801B986C E0E60608 */  j          .L801B9B80
    /* 308F8 801B9870 5B000724 */   addiu     $a3, $zero, 0x5B
  .L801B9874:
    /* 308FC 801B9874 0200B716 */  bne        $s5, $s7, .L801B9880
    /* 30900 801B9878 61001324 */   addiu     $s3, $zero, 0x61
    /* 30904 801B987C 5B001324 */  addiu      $s3, $zero, 0x5B
  .L801B9880:
    /* 30908 801B9880 0174000C */  jal        func_8001D004
    /* 3090C 801B9884 F0300424 */   addiu     $a0, $zero, 0x30F0
    /* 30910 801B9888 21204000 */  addu       $a0, $v0, $zero
    /* 30914 801B988C 02000624 */  addiu      $a2, $zero, 0x2
    /* 30918 801B9890 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 3091C 801B9894 FF00D133 */  andi       $s1, $fp, 0xFF
    /* 30920 801B9898 21103602 */  addu       $v0, $s1, $s6
    /* 30924 801B989C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30928 801B98A0 21084100 */  addu       $at, $v0, $at
    /* 3092C 801B98A4 A2AB2590 */  lbu        $a1, -0x545E($at)
    /* 30930 801B98A8 61001224 */  addiu      $s2, $zero, 0x61
    /* 30934 801B98AC 50A5060C */  jal        func_801A9540
    /* 30938 801B98B0 1000B2AF */   sw        $s2, 0x10($sp)
    /* 3093C 801B98B4 21204000 */  addu       $a0, $v0, $zero
    /* 30940 801B98B8 5000B093 */  lbu        $s0, 0x50($sp)
    /* 30944 801B98BC 01000624 */  addiu      $a2, $zero, 0x1
    /* 30948 801B98C0 21101602 */  addu       $v0, $s0, $s6
    /* 3094C 801B98C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30950 801B98C8 21084100 */  addu       $at, $v0, $at
    /* 30954 801B98CC A2AB2590 */  lbu        $a1, -0x545E($at)
    /* 30958 801B98D0 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 3095C 801B98D4 50A5060C */  jal        func_801A9540
    /* 30960 801B98D8 1000B2AF */   sw        $s2, 0x10($sp)
    /* 30964 801B98DC 0C004424 */  addiu      $a0, $v0, 0xC
    /* 30968 801B98E0 21280000 */  addu       $a1, $zero, $zero
    /* 3096C 801B98E4 02000624 */  addiu      $a2, $zero, 0x2
    /* 30970 801B98E8 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 30974 801B98EC FF007232 */  andi       $s2, $s3, 0xFF
    /* 30978 801B98F0 50A5060C */  jal        func_801A9540
    /* 3097C 801B98F4 1000B2AF */   sw        $s2, 0x10($sp)
    /* 30980 801B98F8 21204000 */  addu       $a0, $v0, $zero
    /* 30984 801B98FC 21280000 */  addu       $a1, $zero, $zero
    /* 30988 801B9900 01000624 */  addiu      $a2, $zero, 0x1
    /* 3098C 801B9904 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 30990 801B9908 50A5060C */  jal        func_801A9540
    /* 30994 801B990C 1000B2AF */   sw        $s2, 0x10($sp)
    /* 30998 801B9910 0174000C */  jal        func_8001D004
    /* 3099C 801B9914 F4300424 */   addiu     $a0, $zero, 0x30F4
    /* 309A0 801B9918 21204000 */  addu       $a0, $v0, $zero
    /* 309A4 801B991C 02000624 */  addiu      $a2, $zero, 0x2
    /* 309A8 801B9920 40881100 */  sll        $s1, $s1, 1
    /* 309AC 801B9924 21883602 */  addu       $s1, $s1, $s6
    /* 309B0 801B9928 0100013C */  lui        $at, (0x10000 >> 16)
    /* 309B4 801B992C 21082102 */  addu       $at, $s1, $at
    /* 309B8 801B9930 A4AB2590 */  lbu        $a1, -0x545C($at)
    /* 309BC 801B9934 85A5060C */  jal        func_801A9614
    /* 309C0 801B9938 50000724 */   addiu     $a3, $zero, 0x50
    /* 309C4 801B993C 21204000 */  addu       $a0, $v0, $zero
    /* 309C8 801B9940 01000624 */  addiu      $a2, $zero, 0x1
    /* 309CC 801B9944 40801000 */  sll        $s0, $s0, 1
    /* 309D0 801B9948 21801602 */  addu       $s0, $s0, $s6
    /* 309D4 801B994C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 309D8 801B9950 21080102 */  addu       $at, $s0, $at
    /* 309DC 801B9954 A4AB2590 */  lbu        $a1, -0x545C($at)
    /* 309E0 801B9958 85A5060C */  jal        func_801A9614
    /* 309E4 801B995C 50000724 */   addiu     $a3, $zero, 0x50
    /* 309E8 801B9960 21204000 */  addu       $a0, $v0, $zero
    /* 309EC 801B9964 02000624 */  addiu      $a2, $zero, 0x2
    /* 309F0 801B9968 0100013C */  lui        $at, (0x10000 >> 16)
    /* 309F4 801B996C 21082102 */  addu       $at, $s1, $at
    /* 309F8 801B9970 A5AB2590 */  lbu        $a1, -0x545B($at)
    /* 309FC 801B9974 85A5060C */  jal        func_801A9614
    /* 30A00 801B9978 50000724 */   addiu     $a3, $zero, 0x50
    /* 30A04 801B997C 21204000 */  addu       $a0, $v0, $zero
    /* 30A08 801B9980 01000624 */  addiu      $a2, $zero, 0x1
    /* 30A0C 801B9984 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30A10 801B9988 21080102 */  addu       $at, $s0, $at
    /* 30A14 801B998C A5AB2590 */  lbu        $a1, -0x545B($at)
    /* 30A18 801B9990 85A5060C */  jal        func_801A9614
    /* 30A1C 801B9994 50000724 */   addiu     $a3, $zero, 0x50
    /* 30A20 801B9998 21204000 */  addu       $a0, $v0, $zero
    /* 30A24 801B999C 21280000 */  addu       $a1, $zero, $zero
    /* 30A28 801B99A0 02000624 */  addiu      $a2, $zero, 0x2
    /* 30A2C 801B99A4 85A5060C */  jal        func_801A9614
    /* 30A30 801B99A8 21384002 */   addu      $a3, $s2, $zero
    /* 30A34 801B99AC 21204000 */  addu       $a0, $v0, $zero
    /* 30A38 801B99B0 21280000 */  addu       $a1, $zero, $zero
    /* 30A3C 801B99B4 01000624 */  addiu      $a2, $zero, 0x1
    /* 30A40 801B99B8 85A5060C */  jal        func_801A9614
    /* 30A44 801B99BC 21384002 */   addu      $a3, $s2, $zero
    /* 30A48 801B99C0 21204000 */  addu       $a0, $v0, $zero
    /* 30A4C 801B99C4 21280000 */  addu       $a1, $zero, $zero
    /* 30A50 801B99C8 02000624 */  addiu      $a2, $zero, 0x2
    /* 30A54 801B99CC 85A5060C */  jal        func_801A9614
    /* 30A58 801B99D0 21384002 */   addu      $a3, $s2, $zero
    /* 30A5C 801B99D4 21204000 */  addu       $a0, $v0, $zero
    /* 30A60 801B99D8 21280000 */  addu       $a1, $zero, $zero
    /* 30A64 801B99DC 01000624 */  addiu      $a2, $zero, 0x1
    /* 30A68 801B99E0 E0E60608 */  j          .L801B9B80
    /* 30A6C 801B99E4 21384002 */   addu      $a3, $s2, $zero
  .L801B99E8:
    /* 30A70 801B99E8 0174000C */  jal        func_8001D004
    /* 30A74 801B99EC F0300424 */   addiu     $a0, $zero, 0x30F0
    /* 30A78 801B99F0 21204000 */  addu       $a0, $v0, $zero
    /* 30A7C 801B99F4 02000624 */  addiu      $a2, $zero, 0x2
    /* 30A80 801B99F8 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 30A84 801B99FC FF00D333 */  andi       $s3, $fp, 0xFF
    /* 30A88 801B9A00 21107602 */  addu       $v0, $s3, $s6
    /* 30A8C 801B9A04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30A90 801B9A08 21084100 */  addu       $at, $v0, $at
    /* 30A94 801B9A0C A2AB2590 */  lbu        $a1, -0x545E($at)
    /* 30A98 801B9A10 61001024 */  addiu      $s0, $zero, 0x61
    /* 30A9C 801B9A14 50A5060C */  jal        func_801A9540
    /* 30AA0 801B9A18 1000B0AF */   sw        $s0, 0x10($sp)
    /* 30AA4 801B9A1C 21204000 */  addu       $a0, $v0, $zero
    /* 30AA8 801B9A20 5000B293 */  lbu        $s2, 0x50($sp)
    /* 30AAC 801B9A24 01000624 */  addiu      $a2, $zero, 0x1
    /* 30AB0 801B9A28 21105602 */  addu       $v0, $s2, $s6
    /* 30AB4 801B9A2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30AB8 801B9A30 21084100 */  addu       $at, $v0, $at
    /* 30ABC 801B9A34 A2AB2590 */  lbu        $a1, -0x545E($at)
    /* 30AC0 801B9A38 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 30AC4 801B9A3C 50A5060C */  jal        func_801A9540
    /* 30AC8 801B9A40 1000B0AF */   sw        $s0, 0x10($sp)
    /* 30ACC 801B9A44 0C004424 */  addiu      $a0, $v0, 0xC
    /* 30AD0 801B9A48 02000624 */  addiu      $a2, $zero, 0x2
    /* 30AD4 801B9A4C 801F013C */  lui        $at, (0x1F8002D1 >> 16)
    /* 30AD8 801B9A50 21086102 */  addu       $at, $s3, $at
    /* 30ADC 801B9A54 D1022590 */  lbu        $a1, (0x1F8002D1 & 0xFFFF)($at)
    /* 30AE0 801B9A58 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 30AE4 801B9A5C 50A5060C */  jal        func_801A9540
    /* 30AE8 801B9A60 1000B0AF */   sw        $s0, 0x10($sp)
    /* 30AEC 801B9A64 21204000 */  addu       $a0, $v0, $zero
    /* 30AF0 801B9A68 01000624 */  addiu      $a2, $zero, 0x1
    /* 30AF4 801B9A6C 801F013C */  lui        $at, (0x1F8002D1 >> 16)
    /* 30AF8 801B9A70 21084102 */  addu       $at, $s2, $at
    /* 30AFC 801B9A74 D1022590 */  lbu        $a1, (0x1F8002D1 & 0xFFFF)($at)
    /* 30B00 801B9A78 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 30B04 801B9A7C 50A5060C */  jal        func_801A9540
    /* 30B08 801B9A80 1000B0AF */   sw        $s0, 0x10($sp)
    /* 30B0C 801B9A84 0174000C */  jal        func_8001D004
    /* 30B10 801B9A88 F4300424 */   addiu     $a0, $zero, 0x30F4
    /* 30B14 801B9A8C 21204000 */  addu       $a0, $v0, $zero
    /* 30B18 801B9A90 02000624 */  addiu      $a2, $zero, 0x2
    /* 30B1C 801B9A94 40881300 */  sll        $s1, $s3, 1
    /* 30B20 801B9A98 21883602 */  addu       $s1, $s1, $s6
    /* 30B24 801B9A9C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30B28 801B9AA0 21082102 */  addu       $at, $s1, $at
    /* 30B2C 801B9AA4 A4AB2590 */  lbu        $a1, -0x545C($at)
    /* 30B30 801B9AA8 85A5060C */  jal        func_801A9614
    /* 30B34 801B9AAC 50000724 */   addiu     $a3, $zero, 0x50
    /* 30B38 801B9AB0 21204000 */  addu       $a0, $v0, $zero
    /* 30B3C 801B9AB4 01000624 */  addiu      $a2, $zero, 0x1
    /* 30B40 801B9AB8 40801200 */  sll        $s0, $s2, 1
    /* 30B44 801B9ABC 21801602 */  addu       $s0, $s0, $s6
    /* 30B48 801B9AC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30B4C 801B9AC4 21080102 */  addu       $at, $s0, $at
    /* 30B50 801B9AC8 A4AB2590 */  lbu        $a1, -0x545C($at)
    /* 30B54 801B9ACC 85A5060C */  jal        func_801A9614
    /* 30B58 801B9AD0 50000724 */   addiu     $a3, $zero, 0x50
    /* 30B5C 801B9AD4 21204000 */  addu       $a0, $v0, $zero
    /* 30B60 801B9AD8 02000624 */  addiu      $a2, $zero, 0x2
    /* 30B64 801B9ADC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30B68 801B9AE0 21082102 */  addu       $at, $s1, $at
    /* 30B6C 801B9AE4 A5AB2590 */  lbu        $a1, -0x545B($at)
    /* 30B70 801B9AE8 85A5060C */  jal        func_801A9614
    /* 30B74 801B9AEC 50000724 */   addiu     $a3, $zero, 0x50
    /* 30B78 801B9AF0 21204000 */  addu       $a0, $v0, $zero
    /* 30B7C 801B9AF4 01000624 */  addiu      $a2, $zero, 0x1
    /* 30B80 801B9AF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30B84 801B9AFC 21080102 */  addu       $at, $s0, $at
    /* 30B88 801B9B00 A5AB2590 */  lbu        $a1, -0x545B($at)
    /* 30B8C 801B9B04 85A5060C */  jal        func_801A9614
    /* 30B90 801B9B08 50000724 */   addiu     $a3, $zero, 0x50
    /* 30B94 801B9B0C 21204000 */  addu       $a0, $v0, $zero
    /* 30B98 801B9B10 02000624 */  addiu      $a2, $zero, 0x2
    /* 30B9C 801B9B14 80981300 */  sll        $s3, $s3, 2
    /* 30BA0 801B9B18 801F013C */  lui        $at, (0x1F8002D3 >> 16)
    /* 30BA4 801B9B1C 21086102 */  addu       $at, $s3, $at
    /* 30BA8 801B9B20 D3022590 */  lbu        $a1, (0x1F8002D3 & 0xFFFF)($at)
    /* 30BAC 801B9B24 85A5060C */  jal        func_801A9614
    /* 30BB0 801B9B28 50000724 */   addiu     $a3, $zero, 0x50
    /* 30BB4 801B9B2C 21204000 */  addu       $a0, $v0, $zero
    /* 30BB8 801B9B30 01000624 */  addiu      $a2, $zero, 0x1
    /* 30BBC 801B9B34 80901200 */  sll        $s2, $s2, 2
    /* 30BC0 801B9B38 801F013C */  lui        $at, (0x1F8002D3 >> 16)
    /* 30BC4 801B9B3C 21084102 */  addu       $at, $s2, $at
    /* 30BC8 801B9B40 D3022590 */  lbu        $a1, (0x1F8002D3 & 0xFFFF)($at)
    /* 30BCC 801B9B44 85A5060C */  jal        func_801A9614
    /* 30BD0 801B9B48 50000724 */   addiu     $a3, $zero, 0x50
    /* 30BD4 801B9B4C 21204000 */  addu       $a0, $v0, $zero
    /* 30BD8 801B9B50 02000624 */  addiu      $a2, $zero, 0x2
    /* 30BDC 801B9B54 801F013C */  lui        $at, (0x1F8002D4 >> 16)
    /* 30BE0 801B9B58 21086102 */  addu       $at, $s3, $at
    /* 30BE4 801B9B5C D4022590 */  lbu        $a1, (0x1F8002D4 & 0xFFFF)($at)
    /* 30BE8 801B9B60 85A5060C */  jal        func_801A9614
    /* 30BEC 801B9B64 50000724 */   addiu     $a3, $zero, 0x50
    /* 30BF0 801B9B68 21204000 */  addu       $a0, $v0, $zero
    /* 30BF4 801B9B6C 01000624 */  addiu      $a2, $zero, 0x1
    /* 30BF8 801B9B70 801F013C */  lui        $at, (0x1F8002D4 >> 16)
    /* 30BFC 801B9B74 21084102 */  addu       $at, $s2, $at
    /* 30C00 801B9B78 D4022590 */  lbu        $a1, (0x1F8002D4 & 0xFFFF)($at)
    /* 30C04 801B9B7C 50000724 */  addiu      $a3, $zero, 0x50
  .L801B9B80:
    /* 30C08 801B9B80 85A5060C */  jal        func_801A9614
    /* 30C0C 801B9B84 00000000 */   nop
    /* 30C10 801B9B88 21A04000 */  addu       $s4, $v0, $zero
  .L801B9B8C:
    /* 30C14 801B9B8C 4800A393 */  lbu        $v1, 0x48($sp)
    /* 30C18 801B9B90 03000224 */  addiu      $v0, $zero, 0x3
    /* 30C1C 801B9B94 44006214 */  bne        $v1, $v0, .L801B9CA8
    /* 30C20 801B9B98 21208002 */   addu      $a0, $s4, $zero
    /* 30C24 801B9B9C 801F023C */  lui        $v0, (0x1F8002DF >> 16)
    /* 30C28 801B9BA0 DF024290 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($v0)
    /* 30C2C 801B9BA4 00000000 */  nop
    /* 30C30 801B9BA8 FF004330 */  andi       $v1, $v0, 0xFF
    /* 30C34 801B9BAC 02006228 */  slti       $v0, $v1, 0x2
    /* 30C38 801B9BB0 3E004014 */  bnez       $v0, .L801B9CAC
    /* 30C3C 801B9BB4 21280000 */   addu      $a1, $zero, $zero
    /* 30C40 801B9BB8 04006228 */  slti       $v0, $v1, 0x4
    /* 30C44 801B9BBC 06004014 */  bnez       $v0, .L801B9BD8
    /* 30C48 801B9BC0 02000624 */   addiu     $a2, $zero, 0x2
    /* 30C4C 801B9BC4 06006228 */  slti       $v0, $v1, 0x6
    /* 30C50 801B9BC8 20004014 */  bnez       $v0, .L801B9C4C
    /* 30C54 801B9BCC 801F083C */   lui       $t0, (0x1F8002DB >> 16)
    /* 30C58 801B9BD0 2AE70608 */  j          .L801B9CA8
    /* 30C5C 801B9BD4 00000000 */   nop
  .L801B9BD8:
    /* 30C60 801B9BD8 80101E00 */  sll        $v0, $fp, 2
    /* 30C64 801B9BDC 801F093C */  lui        $t1, (0x1F8002D6 >> 16)
    /* 30C68 801B9BE0 21102201 */  addu       $v0, $t1, $v0
    /* 30C6C 801B9BE4 D5024390 */  lbu        $v1, (0x1F8002D5 & 0xFFFF)($v0)
    /* 30C70 801B9BE8 D6024590 */  lbu        $a1, (0x1F8002D6 & 0xFFFF)($v0)
    /* 30C74 801B9BEC 50000724 */  addiu      $a3, $zero, 0x50
    /* 30C78 801B9BF0 85A5060C */  jal        func_801A9614
    /* 30C7C 801B9BF4 21286500 */   addu      $a1, $v1, $a1
    /* 30C80 801B9BF8 21204000 */  addu       $a0, $v0, $zero
    /* 30C84 801B9BFC 01000624 */  addiu      $a2, $zero, 0x1
    /* 30C88 801B9C00 5000A893 */  lbu        $t0, 0x50($sp)
    /* 30C8C 801B9C04 801F093C */  lui        $t1, (0x1F8002D6 >> 16)
    /* 30C90 801B9C08 80100800 */  sll        $v0, $t0, 2
    /* 30C94 801B9C0C 21102201 */  addu       $v0, $t1, $v0
    /* 30C98 801B9C10 D5024390 */  lbu        $v1, (0x1F8002D5 & 0xFFFF)($v0)
    /* 30C9C 801B9C14 D6024590 */  lbu        $a1, (0x1F8002D6 & 0xFFFF)($v0)
    /* 30CA0 801B9C18 50000724 */  addiu      $a3, $zero, 0x50
    /* 30CA4 801B9C1C 85A5060C */  jal        func_801A9614
    /* 30CA8 801B9C20 21286500 */   addu      $a1, $v1, $a1
    /* 30CAC 801B9C24 21A04000 */  addu       $s4, $v0, $zero
    /* 30CB0 801B9C28 F0300424 */  addiu      $a0, $zero, 0x30F0
    /* 30CB4 801B9C2C 50000224 */  addiu      $v0, $zero, 0x50
    /* 30CB8 801B9C30 0A0082A2 */  sb         $v0, 0xA($s4)
    /* 30CBC 801B9C34 38000224 */  addiu      $v0, $zero, 0x38
    /* 30CC0 801B9C38 030080A2 */  sb         $zero, 0x3($s4)
    /* 30CC4 801B9C3C 0174000C */  jal        func_8001D004
    /* 30CC8 801B9C40 040082A2 */   sb        $v0, 0x4($s4)
    /* 30CCC 801B9C44 38E70608 */  j          .L801B9CE0
    /* 30CD0 801B9C48 5B000324 */   addiu     $v1, $zero, 0x5B
  .L801B9C4C:
    /* 30CD4 801B9C4C 2510C803 */  or         $v0, $fp, $t0
    /* 30CD8 801B9C50 DB024590 */  lbu        $a1, (0x1F8002DB & 0xFFFF)($v0)
    /* 30CDC 801B9C54 85A5060C */  jal        func_801A9614
    /* 30CE0 801B9C58 50000724 */   addiu     $a3, $zero, 0x50
    /* 30CE4 801B9C5C 21204000 */  addu       $a0, $v0, $zero
    /* 30CE8 801B9C60 01000624 */  addiu      $a2, $zero, 0x1
    /* 30CEC 801B9C64 5000A993 */  lbu        $t1, 0x50($sp)
    /* 30CF0 801B9C68 801F083C */  lui        $t0, (0x1F8002DB >> 16)
    /* 30CF4 801B9C6C 25102801 */  or         $v0, $t1, $t0
    /* 30CF8 801B9C70 DB024590 */  lbu        $a1, (0x1F8002DB & 0xFFFF)($v0)
    /* 30CFC 801B9C74 85A5060C */  jal        func_801A9614
    /* 30D00 801B9C78 50000724 */   addiu     $a3, $zero, 0x50
    /* 30D04 801B9C7C 21A04000 */  addu       $s4, $v0, $zero
    /* 30D08 801B9C80 F0300424 */  addiu      $a0, $zero, 0x30F0
    /* 30D0C 801B9C84 50000224 */  addiu      $v0, $zero, 0x50
    /* 30D10 801B9C88 0A0082A2 */  sb         $v0, 0xA($s4)
    /* 30D14 801B9C8C 20000224 */  addiu      $v0, $zero, 0x20
    /* 30D18 801B9C90 030082A2 */  sb         $v0, 0x3($s4)
    /* 30D1C 801B9C94 08000224 */  addiu      $v0, $zero, 0x8
    /* 30D20 801B9C98 0174000C */  jal        func_8001D004
    /* 30D24 801B9C9C 040082A2 */   sb        $v0, 0x4($s4)
    /* 30D28 801B9CA0 38E70608 */  j          .L801B9CE0
    /* 30D2C 801B9CA4 5B000324 */   addiu     $v1, $zero, 0x5B
  .L801B9CA8:
    /* 30D30 801B9CA8 21280000 */  addu       $a1, $zero, $zero
  .L801B9CAC:
    /* 30D34 801B9CAC 02000624 */  addiu      $a2, $zero, 0x2
    /* 30D38 801B9CB0 85A5060C */  jal        func_801A9614
    /* 30D3C 801B9CB4 5B000724 */   addiu     $a3, $zero, 0x5B
    /* 30D40 801B9CB8 21204000 */  addu       $a0, $v0, $zero
    /* 30D44 801B9CBC 21280000 */  addu       $a1, $zero, $zero
    /* 30D48 801B9CC0 01000624 */  addiu      $a2, $zero, 0x1
    /* 30D4C 801B9CC4 85A5060C */  jal        func_801A9614
    /* 30D50 801B9CC8 5B000724 */   addiu     $a3, $zero, 0x5B
    /* 30D54 801B9CCC F0300424 */  addiu      $a0, $zero, 0x30F0
    /* 30D58 801B9CD0 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 30D5C 801B9CD4 0174000C */  jal        func_8001D004
    /* 30D60 801B9CD8 0A0043A0 */   sb        $v1, 0xA($v0)
    /* 30D64 801B9CDC 61000324 */  addiu      $v1, $zero, 0x61
  .L801B9CE0:
    /* 30D68 801B9CE0 760043A0 */  sb         $v1, 0x76($v0)
    /* 30D6C 801B9CE4 4800A393 */  lbu        $v1, 0x48($sp)
    /* 30D70 801B9CE8 01000224 */  addiu      $v0, $zero, 0x1
    /* 30D74 801B9CEC 16006210 */  beq        $v1, $v0, .L801B9D48
    /* 30D78 801B9CF0 00000000 */   nop
    /* 30D7C 801B9CF4 02006228 */  slti       $v0, $v1, 0x2
    /* 30D80 801B9CF8 05004010 */  beqz       $v0, .L801B9D10
    /* 30D84 801B9CFC 00000000 */   nop
    /* 30D88 801B9D00 08006010 */  beqz       $v1, .L801B9D24
    /* 30D8C 801B9D04 00000000 */   nop
    /* 30D90 801B9D08 66E70608 */  j          .L801B9D98
    /* 30D94 801B9D0C 00000000 */   nop
  .L801B9D10:
    /* 30D98 801B9D10 02000224 */  addiu      $v0, $zero, 0x2
    /* 30D9C 801B9D14 17006210 */  beq        $v1, $v0, .L801B9D74
    /* 30DA0 801B9D18 00000000 */   nop
    /* 30DA4 801B9D1C 66E70608 */  j          .L801B9D98
    /* 30DA8 801B9D20 00000000 */   nop
  .L801B9D24:
    /* 30DAC 801B9D24 0174000C */  jal        func_8001D004
    /* 30DB0 801B9D28 F4300424 */   addiu     $a0, $zero, 0x30F4
    /* 30DB4 801B9D2C 5B000424 */  addiu      $a0, $zero, 0x5B
    /* 30DB8 801B9D30 07000324 */  addiu      $v1, $zero, 0x7
    /* 30DBC 801B9D34 54004224 */  addiu      $v0, $v0, 0x54
  .L801B9D38:
    /* 30DC0 801B9D38 0A0044A0 */  sb         $a0, 0xA($v0)
    /* 30DC4 801B9D3C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 30DC8 801B9D40 FDFF6104 */  bgez       $v1, .L801B9D38
    /* 30DCC 801B9D44 F4FF4224 */   addiu     $v0, $v0, -0xC
  .L801B9D48:
    /* 30DD0 801B9D48 0174000C */  jal        func_8001D004
    /* 30DD4 801B9D4C F4300424 */   addiu     $a0, $zero, 0x30F4
    /* 30DD8 801B9D50 5B000424 */  addiu      $a0, $zero, 0x5B
    /* 30DDC 801B9D54 0C000324 */  addiu      $v1, $zero, 0xC
    /* 30DE0 801B9D58 90004224 */  addiu      $v0, $v0, 0x90
  .L801B9D5C:
    /* 30DE4 801B9D5C 6A0044A0 */  sb         $a0, 0x6A($v0)
    /* 30DE8 801B9D60 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 30DEC 801B9D64 FDFF6104 */  bgez       $v1, .L801B9D5C
    /* 30DF0 801B9D68 F4FF4224 */   addiu     $v0, $v0, -0xC
    /* 30DF4 801B9D6C 66E70608 */  j          .L801B9D98
    /* 30DF8 801B9D70 00000000 */   nop
  .L801B9D74:
    /* 30DFC 801B9D74 0174000C */  jal        func_8001D004
    /* 30E00 801B9D78 F4300424 */   addiu     $a0, $zero, 0x30F4
    /* 30E04 801B9D7C 5B000424 */  addiu      $a0, $zero, 0x5B
    /* 30E08 801B9D80 0C000324 */  addiu      $v1, $zero, 0xC
    /* 30E0C 801B9D84 90004224 */  addiu      $v0, $v0, 0x90
  .L801B9D88:
    /* 30E10 801B9D88 6A0044A0 */  sb         $a0, 0x6A($v0)
    /* 30E14 801B9D8C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 30E18 801B9D90 FDFF6104 */  bgez       $v1, .L801B9D88
    /* 30E1C 801B9D94 F4FF4224 */   addiu     $v0, $v0, -0xC
  .L801B9D98:
    /* 30E20 801B9D98 8C00BF8F */  lw         $ra, 0x8C($sp)
    /* 30E24 801B9D9C 8800BE8F */  lw         $fp, 0x88($sp)
    /* 30E28 801B9DA0 8400B78F */  lw         $s7, 0x84($sp)
    /* 30E2C 801B9DA4 8000B68F */  lw         $s6, 0x80($sp)
    /* 30E30 801B9DA8 7C00B58F */  lw         $s5, 0x7C($sp)
    /* 30E34 801B9DAC 7800B48F */  lw         $s4, 0x78($sp)
    /* 30E38 801B9DB0 7400B38F */  lw         $s3, 0x74($sp)
    /* 30E3C 801B9DB4 7000B28F */  lw         $s2, 0x70($sp)
    /* 30E40 801B9DB8 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 30E44 801B9DBC 6800B08F */  lw         $s0, 0x68($sp)
    /* 30E48 801B9DC0 9000BD27 */  addiu      $sp, $sp, 0x90
    /* 30E4C 801B9DC4 0800E003 */  jr         $ra
    /* 30E50 801B9DC8 00000000 */   nop
endlabel func_801B9574
