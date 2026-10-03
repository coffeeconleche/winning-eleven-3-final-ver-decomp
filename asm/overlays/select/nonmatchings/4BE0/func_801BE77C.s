nonmatching func_801BE77C, 0x274

glabel func_801BE77C
    /* 35804 801BE77C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 35808 801BE780 4000B6AF */  sw         $s6, 0x40($sp)
    /* 3580C 801BE784 1080163C */  lui        $s6, %hi(D_800FF748)
    /* 35810 801BE788 48F7D626 */  addiu      $s6, $s6, %lo(D_800FF748)
    /* 35814 801BE78C 4400BFAF */  sw         $ra, 0x44($sp)
    /* 35818 801BE790 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 3581C 801BE794 3800B4AF */  sw         $s4, 0x38($sp)
    /* 35820 801BE798 3400B3AF */  sw         $s3, 0x34($sp)
    /* 35824 801BE79C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 35828 801BE7A0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3582C 801BE7A4 D6FE060C */  jal        func_801BFB58
    /* 35830 801BE7A8 2800B0AF */   sw        $s0, 0x28($sp)
    /* 35834 801BE7AC 21A80000 */  addu       $s5, $zero, $zero
    /* 35838 801BE7B0 08001424 */  addiu      $s4, $zero, 0x8
    /* 3583C 801BE7B4 02001224 */  addiu      $s2, $zero, 0x2
    /* 35840 801BE7B8 07001324 */  addiu      $s3, $zero, 0x7
    /* 35844 801BE7BC 63FF1124 */  addiu      $s1, $zero, -0x9D
    /* 35848 801BE7C0 CDFF0424 */  addiu      $a0, $zero, -0x33
  .L801BE7C4:
    /* 3584C 801BE7C4 21282002 */  addu       $a1, $s1, $zero
    /* 35850 801BE7C8 2110D502 */  addu       $v0, $s6, $s5
    /* 35854 801BE7CC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 35858 801BE7D0 21084100 */  addu       $at, $v0, $at
    /* 3585C 801BE7D4 50AB2290 */  lbu        $v0, -0x54B0($at)
    /* 35860 801BE7D8 16000624 */  addiu      $a2, $zero, 0x16
    /* 35864 801BE7DC C0800200 */  sll        $s0, $v0, 3
    /* 35868 801BE7E0 21800202 */  addu       $s0, $s0, $v0
    /* 3586C 801BE7E4 80801000 */  sll        $s0, $s0, 2
    /* 35870 801BE7E8 248F0234 */  ori        $v0, $zero, 0x8F24
    /* 35874 801BE7EC 21800202 */  addu       $s0, $s0, $v0
    /* 35878 801BE7F0 2180D002 */  addu       $s0, $s6, $s0
    /* 3587C 801BE7F4 05000792 */  lbu        $a3, 0x5($s0)
    /* 35880 801BE7F8 0100B526 */  addiu      $s5, $s5, 0x1
    /* 35884 801BE7FC 1000B4AF */  sw         $s4, 0x10($sp)
    /* 35888 801BE800 1400B2AF */  sw         $s2, 0x14($sp)
    /* 3588C 801BE804 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35890 801BE808 7CA2060C */  jal        func_801A89F0
    /* 35894 801BE80C 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 35898 801BE810 E9FF0424 */  addiu      $a0, $zero, -0x17
    /* 3589C 801BE814 21282002 */  addu       $a1, $s1, $zero
    /* 358A0 801BE818 07000792 */  lbu        $a3, 0x7($s0)
    /* 358A4 801BE81C 16000624 */  addiu      $a2, $zero, 0x16
    /* 358A8 801BE820 1000B4AF */  sw         $s4, 0x10($sp)
    /* 358AC 801BE824 1400B2AF */  sw         $s2, 0x14($sp)
    /* 358B0 801BE828 1800B3AF */  sw         $s3, 0x18($sp)
    /* 358B4 801BE82C 7CA2060C */  jal        func_801A89F0
    /* 358B8 801BE830 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 358BC 801BE834 05000424 */  addiu      $a0, $zero, 0x5
    /* 358C0 801BE838 21282002 */  addu       $a1, $s1, $zero
    /* 358C4 801BE83C 06000792 */  lbu        $a3, 0x6($s0)
    /* 358C8 801BE840 16000624 */  addiu      $a2, $zero, 0x16
    /* 358CC 801BE844 1000B4AF */  sw         $s4, 0x10($sp)
    /* 358D0 801BE848 1400B2AF */  sw         $s2, 0x14($sp)
    /* 358D4 801BE84C 1800B3AF */  sw         $s3, 0x18($sp)
    /* 358D8 801BE850 7CA2060C */  jal        func_801A89F0
    /* 358DC 801BE854 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 358E0 801BE858 21000424 */  addiu      $a0, $zero, 0x21
    /* 358E4 801BE85C 21282002 */  addu       $a1, $s1, $zero
    /* 358E8 801BE860 08000796 */  lhu        $a3, 0x8($s0)
    /* 358EC 801BE864 16000624 */  addiu      $a2, $zero, 0x16
    /* 358F0 801BE868 1000B4AF */  sw         $s4, 0x10($sp)
    /* 358F4 801BE86C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 358F8 801BE870 1800B3AF */  sw         $s3, 0x18($sp)
    /* 358FC 801BE874 7CA2060C */  jal        func_801A89F0
    /* 35900 801BE878 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 35904 801BE87C 3D000424 */  addiu      $a0, $zero, 0x3D
    /* 35908 801BE880 21282002 */  addu       $a1, $s1, $zero
    /* 3590C 801BE884 0A000796 */  lhu        $a3, 0xA($s0)
    /* 35910 801BE888 16000624 */  addiu      $a2, $zero, 0x16
    /* 35914 801BE88C 1000B4AF */  sw         $s4, 0x10($sp)
    /* 35918 801BE890 1400B2AF */  sw         $s2, 0x14($sp)
    /* 3591C 801BE894 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35920 801BE898 7CA2060C */  jal        func_801A89F0
    /* 35924 801BE89C 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 35928 801BE8A0 59000424 */  addiu      $a0, $zero, 0x59
    /* 3592C 801BE8A4 21282002 */  addu       $a1, $s1, $zero
    /* 35930 801BE8A8 04000792 */  lbu        $a3, 0x4($s0)
    /* 35934 801BE8AC 16000624 */  addiu      $a2, $zero, 0x16
    /* 35938 801BE8B0 1000B4AF */  sw         $s4, 0x10($sp)
    /* 3593C 801BE8B4 1400B2AF */  sw         $s2, 0x14($sp)
    /* 35940 801BE8B8 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35944 801BE8BC 7CA2060C */  jal        func_801A89F0
    /* 35948 801BE8C0 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 3594C 801BE8C4 75000424 */  addiu      $a0, $zero, 0x75
    /* 35950 801BE8C8 21282002 */  addu       $a1, $s1, $zero
    /* 35954 801BE8CC 0F000792 */  lbu        $a3, 0xF($s0)
    /* 35958 801BE8D0 16000624 */  addiu      $a2, $zero, 0x16
    /* 3595C 801BE8D4 1000B4AF */  sw         $s4, 0x10($sp)
    /* 35960 801BE8D8 1400B2AF */  sw         $s2, 0x14($sp)
    /* 35964 801BE8DC 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35968 801BE8E0 7CA2060C */  jal        func_801A89F0
    /* 3596C 801BE8E4 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 35970 801BE8E8 91000424 */  addiu      $a0, $zero, 0x91
    /* 35974 801BE8EC 21282002 */  addu       $a1, $s1, $zero
    /* 35978 801BE8F0 16000624 */  addiu      $a2, $zero, 0x16
    /* 3597C 801BE8F4 10000792 */  lbu        $a3, 0x10($s0)
    /* 35980 801BE8F8 16003126 */  addiu      $s1, $s1, 0x16
    /* 35984 801BE8FC 1000B4AF */  sw         $s4, 0x10($sp)
    /* 35988 801BE900 1400B2AF */  sw         $s2, 0x14($sp)
    /* 3598C 801BE904 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35990 801BE908 7CA2060C */  jal        func_801A89F0
    /* 35994 801BE90C 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 35998 801BE910 1000A22A */  slti       $v0, $s5, 0x10
    /* 3599C 801BE914 ABFF4014 */  bnez       $v0, .L801BE7C4
    /* 359A0 801BE918 CDFF0424 */   addiu     $a0, $zero, -0x33
    /* 359A4 801BE91C 0050043C */  lui        $a0, (0x50000000 >> 16)
    /* 359A8 801BE920 64FF0524 */  addiu      $a1, $zero, -0x9C
    /* 359AC 801BE924 50000724 */  addiu      $a3, $zero, 0x50
    /* 359B0 801BE928 14001124 */  addiu      $s1, $zero, 0x14
    /* 359B4 801BE92C A0000224 */  addiu      $v0, $zero, 0xA0
    /* 359B8 801BE930 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 359BC 801BE934 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 359C0 801BE938 30001024 */  addiu      $s0, $zero, 0x30
    /* 359C4 801BE93C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 359C8 801BE940 01000224 */  addiu      $v0, $zero, 0x1
    /* 359CC 801BE944 2000A2AF */  sw         $v0, 0x20($sp)
    /* 359D0 801BE948 04000224 */  addiu      $v0, $zero, 0x4
    /* 359D4 801BE94C 1000B1AF */  sw         $s1, 0x10($sp)
    /* 359D8 801BE950 1800B0AF */  sw         $s0, 0x18($sp)
    /* 359DC 801BE954 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 359E0 801BE958 2400A2AF */  sw         $v0, 0x24($sp)
    /* 359E4 801BE95C 40300300 */  sll        $a2, $v1, 1
    /* 359E8 801BE960 2130C300 */  addu       $a2, $a2, $v1
    /* 359EC 801BE964 80300600 */  sll        $a2, $a2, 2
    /* 359F0 801BE968 2330C300 */  subu       $a2, $a2, $v1
    /* 359F4 801BE96C 40300600 */  sll        $a2, $a2, 1
    /* 359F8 801BE970 005A060C */  jal        func_80196800
    /* 359FC 801BE974 60FFC624 */   addiu     $a2, $a2, -0xA0
    /* 35A00 801BE978 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* 35A04 801BE97C CCFF0524 */  addiu      $a1, $zero, -0x34
    /* 35A08 801BE980 E0000724 */  addiu      $a3, $zero, 0xE0
    /* 35A0C 801BE984 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 35A10 801BE988 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 35A14 801BE98C 60000224 */  addiu      $v0, $zero, 0x60
    /* 35A18 801BE990 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 35A1C 801BE994 02000224 */  addiu      $v0, $zero, 0x2
    /* 35A20 801BE998 1000B1AF */  sw         $s1, 0x10($sp)
    /* 35A24 801BE99C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 35A28 801BE9A0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 35A2C 801BE9A4 2000A2AF */  sw         $v0, 0x20($sp)
    /* 35A30 801BE9A8 40300300 */  sll        $a2, $v1, 1
    /* 35A34 801BE9AC 2130C300 */  addu       $a2, $a2, $v1
    /* 35A38 801BE9B0 80300600 */  sll        $a2, $a2, 2
    /* 35A3C 801BE9B4 2330C300 */  subu       $a2, $a2, $v1
    /* 35A40 801BE9B8 40300600 */  sll        $a2, $a2, 1
    /* 35A44 801BE9BC 005A060C */  jal        func_80196800
    /* 35A48 801BE9C0 60FFC624 */   addiu     $a2, $a2, -0xA0
    /* 35A4C 801BE9C4 4400BF8F */  lw         $ra, 0x44($sp)
    /* 35A50 801BE9C8 4000B68F */  lw         $s6, 0x40($sp)
    /* 35A54 801BE9CC 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 35A58 801BE9D0 3800B48F */  lw         $s4, 0x38($sp)
    /* 35A5C 801BE9D4 3400B38F */  lw         $s3, 0x34($sp)
    /* 35A60 801BE9D8 3000B28F */  lw         $s2, 0x30($sp)
    /* 35A64 801BE9DC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 35A68 801BE9E0 2800B08F */  lw         $s0, 0x28($sp)
    /* 35A6C 801BE9E4 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 35A70 801BE9E8 0800E003 */  jr         $ra
    /* 35A74 801BE9EC 00000000 */   nop
endlabel func_801BE77C
