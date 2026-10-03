/* Handwritten function */
nonmatching func_80019E90, 0x30C

glabel func_80019E90
    /* A690 80019E90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A694 80019E94 1000B0AF */  sw         $s0, 0x10($sp)
    /* A698 80019E98 21808000 */  addu       $s0, $a0, $zero
    /* A69C 80019E9C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A6A0 80019EA0 2188A000 */  addu       $s1, $a1, $zero
    /* A6A4 80019EA4 1800B2AF */  sw         $s2, 0x18($sp)
    /* A6A8 80019EA8 801F123C */  lui        $s2, (0x1F800104 >> 16)
    /* A6AC 80019EAC 04015236 */  ori        $s2, $s2, (0x1F800104 & 0xFFFF)
    /* A6B0 80019EB0 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* A6B4 80019EB4 24018434 */  ori        $a0, $a0, (0x1F800124 & 0xFFFF)
    /* A6B8 80019EB8 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* A6BC 80019EBC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A6C0 80019EC0 5EC8020C */  jal        func_800B2178
    /* A6C4 80019EC4 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* A6C8 80019EC8 00004296 */  lhu        $v0, 0x0($s2)
    /* A6CC 80019ECC 801F033C */  lui        $v1, (0x1F800106 >> 16)
    /* A6D0 80019ED0 06016394 */  lhu        $v1, (0x1F800106 & 0xFFFF)($v1)
    /* A6D4 80019ED4 801F043C */  lui        $a0, (0x1F800108 >> 16)
    /* A6D8 80019ED8 08018494 */  lhu        $a0, (0x1F800108 & 0xFFFF)($a0)
    /* A6DC 80019EDC 801F053C */  lui        $a1, (0x1F80010A >> 16)
    /* A6E0 80019EE0 0A01A594 */  lhu        $a1, (0x1F80010A & 0xFFFF)($a1)
    /* A6E4 80019EE4 801F063C */  lui        $a2, (0x1F80010C >> 16)
    /* A6E8 80019EE8 0C01C694 */  lhu        $a2, (0x1F80010C & 0xFFFF)($a2)
    /* A6EC 80019EEC 801F073C */  lui        $a3, (0x1F80010E >> 16)
    /* A6F0 80019EF0 0E01E794 */  lhu        $a3, (0x1F80010E & 0xFFFF)($a3)
    /* A6F4 80019EF4 801F083C */  lui        $t0, (0x1F800110 >> 16)
    /* A6F8 80019EF8 10010895 */  lhu        $t0, (0x1F800110 & 0xFFFF)($t0)
    /* A6FC 80019EFC 801F093C */  lui        $t1, (0x1F800112 >> 16)
    /* A700 80019F00 12012995 */  lhu        $t1, (0x1F800112 & 0xFFFF)($t1)
    /* A704 80019F04 801F0A3C */  lui        $t2, (0x1F800114 >> 16)
    /* A708 80019F08 14014A95 */  lhu        $t2, (0x1F800114 & 0xFFFF)($t2)
    /* A70C 80019F0C 801F0B3C */  lui        $t3, (0x1F80013C >> 16)
    /* A710 80019F10 3C016B8D */  lw         $t3, (0x1F80013C & 0xFFFF)($t3)
    /* A714 80019F14 801F0C3C */  lui        $t4, (0x1F800140 >> 16)
    /* A718 80019F18 40018C8D */  lw         $t4, (0x1F800140 & 0xFFFF)($t4)
    /* A71C 80019F1C 801F0D3C */  lui        $t5, (0x1F800144 >> 16)
    /* A720 80019F20 4401AD8D */  lw         $t5, (0x1F800144 & 0xFFFF)($t5)
    /* A724 80019F24 801F0F3C */  lui        $t7, (0x1F8001A8 >> 16)
    /* A728 80019F28 A801EF35 */  ori        $t7, $t7, (0x1F8001A8 & 0xFFFF)
    /* A72C 80019F2C 000042A6 */  sh         $v0, 0x0($s2)
    /* A730 80019F30 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* A734 80019F34 060123A4 */  sh         $v1, (0x1F800106 & 0xFFFF)($at)
    /* A738 80019F38 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* A73C 80019F3C 080124A4 */  sh         $a0, (0x1F800108 & 0xFFFF)($at)
    /* A740 80019F40 801F013C */  lui        $at, (0x1F80010A >> 16)
    /* A744 80019F44 0A0125A4 */  sh         $a1, (0x1F80010A & 0xFFFF)($at)
    /* A748 80019F48 801F013C */  lui        $at, (0x1F80010C >> 16)
    /* A74C 80019F4C 0C0126A4 */  sh         $a2, (0x1F80010C & 0xFFFF)($at)
    /* A750 80019F50 801F013C */  lui        $at, (0x1F80010E >> 16)
    /* A754 80019F54 0E0127A4 */  sh         $a3, (0x1F80010E & 0xFFFF)($at)
    /* A758 80019F58 801F013C */  lui        $at, (0x1F800110 >> 16)
    /* A75C 80019F5C 100128A4 */  sh         $t0, (0x1F800110 & 0xFFFF)($at)
    /* A760 80019F60 801F013C */  lui        $at, (0x1F800112 >> 16)
    /* A764 80019F64 120129A4 */  sh         $t1, (0x1F800112 & 0xFFFF)($at)
    /* A768 80019F68 801F013C */  lui        $at, (0x1F800114 >> 16)
    /* A76C 80019F6C 14012AA4 */  sh         $t2, (0x1F800114 & 0xFFFF)($at)
    /* A770 80019F70 801F013C */  lui        $at, (0x1F800118 >> 16)
    /* A774 80019F74 18012BAC */  sw         $t3, (0x1F800118 & 0xFFFF)($at)
    /* A778 80019F78 801F013C */  lui        $at, (0x1F80011C >> 16)
    /* A77C 80019F7C 1C012CAC */  sw         $t4, (0x1F80011C & 0xFFFF)($at)
    /* A780 80019F80 801F013C */  lui        $at, (0x1F800120 >> 16)
    /* A784 80019F84 20012DAC */  sw         $t5, (0x1F800120 & 0xFFFF)($at)
    /* A788 80019F88 0000EC8D */  lw         $t4, 0x0($t7)
    /* A78C 80019F8C 0400ED8D */  lw         $t5, 0x4($t7)
    /* A790 80019F90 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* A794 80019F94 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* A798 80019F98 0800EC8D */  lw         $t4, 0x8($t7)
    /* A79C 80019F9C 0C00ED8D */  lw         $t5, 0xC($t7)
    /* A7A0 80019FA0 1000EE8D */  lw         $t6, 0x10($t7)
    /* A7A4 80019FA4 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* A7A8 80019FA8 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* A7AC 80019FAC 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* A7B0 80019FB0 801F0F3C */  lui        $t7, (0x1F800104 >> 16)
    /* A7B4 80019FB4 0401EF35 */  ori        $t7, $t7, (0x1F800104 & 0xFFFF)
    /* A7B8 80019FB8 0000EC95 */  lhu        $t4, 0x0($t7)
    /* A7BC 80019FBC 0600ED95 */  lhu        $t5, 0x6($t7)
    /* A7C0 80019FC0 0C00EE95 */  lhu        $t6, 0xC($t7)
    /* A7C4 80019FC4 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* A7C8 80019FC8 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* A7CC 80019FCC 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* A7D0 80019FD0 00000000 */  nop
    /* A7D4 80019FD4 00000000 */  nop
    /* A7D8 80019FD8 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* A7DC 80019FDC 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* A7E0 80019FE0 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* A7E4 80019FE4 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* A7E8 80019FE8 0000ECA5 */  sh         $t4, 0x0($t7)
    /* A7EC 80019FEC 0600EDA5 */  sh         $t5, 0x6($t7)
    /* A7F0 80019FF0 0C00EEA5 */  sh         $t6, 0xC($t7)
    /* A7F4 80019FF4 801F0F3C */  lui        $t7, (0x1F800106 >> 16)
    /* A7F8 80019FF8 0601EF35 */  ori        $t7, $t7, (0x1F800106 & 0xFFFF)
    /* A7FC 80019FFC 0000EC95 */  lhu        $t4, 0x0($t7)
    /* A800 8001A000 0600ED95 */  lhu        $t5, 0x6($t7)
    /* A804 8001A004 0C00EE95 */  lhu        $t6, 0xC($t7)
    /* A808 8001A008 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* A80C 8001A00C 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* A810 8001A010 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* A814 8001A014 00000000 */  nop
    /* A818 8001A018 00000000 */  nop
    /* A81C 8001A01C 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* A820 8001A020 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* A824 8001A024 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* A828 8001A028 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* A82C 8001A02C 0000ECA5 */  sh         $t4, 0x0($t7)
    /* A830 8001A030 0600EDA5 */  sh         $t5, 0x6($t7)
    /* A834 8001A034 0C00EEA5 */  sh         $t6, 0xC($t7)
    /* A838 8001A038 801F0F3C */  lui        $t7, (0x1F800108 >> 16)
    /* A83C 8001A03C 0801EF35 */  ori        $t7, $t7, (0x1F800108 & 0xFFFF)
    /* A840 8001A040 0000EC95 */  lhu        $t4, 0x0($t7)
    /* A844 8001A044 0600ED95 */  lhu        $t5, 0x6($t7)
    /* A848 8001A048 0C00EE95 */  lhu        $t6, 0xC($t7)
    /* A84C 8001A04C 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* A850 8001A050 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* A854 8001A054 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* A858 8001A058 00000000 */  nop
    /* A85C 8001A05C 00000000 */  nop
    /* A860 8001A060 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* A864 8001A064 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* A868 8001A068 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* A86C 8001A06C 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* A870 8001A070 0000ECA5 */  sh         $t4, 0x0($t7)
    /* A874 8001A074 0600EDA5 */  sh         $t5, 0x6($t7)
    /* A878 8001A078 0C00EEA5 */  sh         $t6, 0xC($t7)
    /* A87C 8001A07C 801F0F3C */  lui        $t7, (0x1F8001A8 >> 16)
    /* A880 8001A080 A801EF35 */  ori        $t7, $t7, (0x1F8001A8 & 0xFFFF)
    /* A884 8001A084 1400EC8D */  lw         $t4, 0x14($t7)
    /* A888 8001A088 1800ED8D */  lw         $t5, 0x18($t7)
    /* A88C 8001A08C 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* A890 8001A090 1C00EE8D */  lw         $t6, 0x1C($t7)
    /* A894 8001A094 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* A898 8001A098 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* A89C 8001A09C 801F0F3C */  lui        $t7, (0x1F800118 >> 16)
    /* A8A0 8001A0A0 1801EF35 */  ori        $t7, $t7, (0x1F800118 & 0xFFFF)
    /* A8A4 8001A0A4 0400ED95 */  lhu        $t5, 0x4($t7)
    /* A8A8 8001A0A8 0000EC95 */  lhu        $t4, 0x0($t7)
    /* A8AC 8001A0AC 006C0D00 */  sll        $t5, $t5, 16
    /* A8B0 8001A0B0 25608D01 */  or         $t4, $t4, $t5
    /* A8B4 8001A0B4 00008C48 */  mtc2       $t4, $0 /* handwritten instruction */
    /* A8B8 8001A0B8 0800E1C9 */  lwc2       $1, 0x8($t7)
    /* A8BC 8001A0BC 00000000 */  nop
    /* A8C0 8001A0C0 00000000 */  nop
    /* A8C4 8001A0C4 1200484A */  mvmva      1, 0, 0, 0, 0
    /* A8C8 8001A0C8 0000F9E9 */  swc2       $25, 0x0($t7)
    /* A8CC 8001A0CC 0400FAE9 */  swc2       $26, 0x4($t7) /* handwritten instruction */
    /* A8D0 8001A0D0 0800FBE9 */  swc2       $27, 0x8($t7) /* handwritten instruction */
    /* A8D4 8001A0D4 801F0F3C */  lui        $t7, (0x1F800104 >> 16)
    /* A8D8 8001A0D8 0401EF35 */  ori        $t7, $t7, (0x1F800104 & 0xFFFF)
    /* A8DC 8001A0DC 1400EC8D */  lw         $t4, 0x14($t7)
    /* A8E0 8001A0E0 1800ED8D */  lw         $t5, 0x18($t7)
    /* A8E4 8001A0E4 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* A8E8 8001A0E8 1C00EE8D */  lw         $t6, 0x1C($t7)
    /* A8EC 8001A0EC 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* A8F0 8001A0F0 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* A8F4 8001A0F4 0000EC8D */  lw         $t4, 0x0($t7)
    /* A8F8 8001A0F8 0400ED8D */  lw         $t5, 0x4($t7)
    /* A8FC 8001A0FC 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* A900 8001A100 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* A904 8001A104 0800EC8D */  lw         $t4, 0x8($t7)
    /* A908 8001A108 0C00ED8D */  lw         $t5, 0xC($t7)
    /* A90C 8001A10C 1000EE8D */  lw         $t6, 0x10($t7)
    /* A910 8001A110 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* A914 8001A114 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* A918 8001A118 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* A91C 8001A11C 08000326 */  addiu      $v1, $s0, 0x8
    /* A920 8001A120 10000226 */  addiu      $v0, $s0, 0x10
    /* A924 8001A124 000000CA */  lwc2       $0, 0x0($s0)
    /* A928 8001A128 040001CA */  lwc2       $1, 0x4($s0)
    /* A92C 8001A12C 000062C8 */  lwc2       $2, 0x0($v1)
    /* A930 8001A130 040063C8 */  lwc2       $3, 0x4($v1)
    /* A934 8001A134 000044C8 */  lwc2       $4, 0x0($v0)
    /* A938 8001A138 040045C8 */  lwc2       $5, 0x4($v0)
    /* A93C 8001A13C 00000000 */  nop
    /* A940 8001A140 00000000 */  nop
    /* A944 8001A144 3000284A */  rtpt
    /* A948 8001A148 08002426 */  addiu      $a0, $s1, 0x8
    /* A94C 8001A14C 10002326 */  addiu      $v1, $s1, 0x10
    /* A950 8001A150 18002226 */  addiu      $v0, $s1, 0x18
    /* A954 8001A154 00008CE8 */  swc2       $12, 0x0($a0)
    /* A958 8001A158 00006DE8 */  swc2       $13, 0x0($v1)
    /* A95C 8001A15C 00004EE8 */  swc2       $14, 0x0($v0)
    /* A960 8001A160 18001026 */  addiu      $s0, $s0, 0x18
    /* A964 8001A164 000000CA */  lwc2       $0, 0x0($s0)
    /* A968 8001A168 040001CA */  lwc2       $1, 0x4($s0)
    /* A96C 8001A16C 00000000 */  nop
    /* A970 8001A170 00000000 */  nop
    /* A974 8001A174 0100184A */  rtps
    /* A978 8001A178 20003126 */  addiu      $s1, $s1, 0x20
    /* A97C 8001A17C 00002EEA */  swc2       $14, 0x0($s1)
    /* A980 8001A180 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A984 8001A184 1800B28F */  lw         $s2, 0x18($sp)
    /* A988 8001A188 1400B18F */  lw         $s1, 0x14($sp)
    /* A98C 8001A18C 1000B08F */  lw         $s0, 0x10($sp)
    /* A990 8001A190 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A994 8001A194 0800E003 */  jr         $ra
    /* A998 8001A198 00000000 */   nop
endlabel func_80019E90
