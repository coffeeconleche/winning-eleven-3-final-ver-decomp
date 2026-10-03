nonmatching func_801BD6EC, 0x1FC

glabel func_801BD6EC
    /* 34774 801BD6EC A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 34778 801BD6F0 FF008430 */  andi       $a0, $a0, 0xFF
    /* 3477C 801BD6F4 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 34780 801BD6F8 5800BEAF */  sw         $fp, 0x58($sp)
    /* 34784 801BD6FC 5400B7AF */  sw         $s7, 0x54($sp)
    /* 34788 801BD700 5000B6AF */  sw         $s6, 0x50($sp)
    /* 3478C 801BD704 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 34790 801BD708 4800B4AF */  sw         $s4, 0x48($sp)
    /* 34794 801BD70C 4400B3AF */  sw         $s3, 0x44($sp)
    /* 34798 801BD710 4000B2AF */  sw         $s2, 0x40($sp)
    /* 3479C 801BD714 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 347A0 801BD718 97F7060C */  jal        func_801BDE5C
    /* 347A4 801BD71C 3800B0AF */   sw        $s0, 0x38($sp)
    /* 347A8 801BD720 21980000 */  addu       $s3, $zero, $zero
    /* 347AC 801BD724 01001624 */  addiu      $s6, $zero, 0x1
    /* 347B0 801BD728 1E80033C */  lui        $v1, %hi(D_801D8D9B)
    /* 347B4 801BD72C 9B8D6324 */  addiu      $v1, $v1, %lo(D_801D8D9B)
    /* 347B8 801BD730 F5FF7124 */  addiu      $s1, $v1, -0xB
    /* 347BC 801BD734 1E80023C */  lui        $v0, %hi(D_801D94E8)
    /* 347C0 801BD738 E8944224 */  addiu      $v0, $v0, %lo(D_801D94E8)
    /* 347C4 801BD73C 68014824 */  addiu      $t0, $v0, 0x168
    /* 347C8 801BD740 0C001224 */  addiu      $s2, $zero, 0xC
    /* 347CC 801BD744 20001524 */  addiu      $s5, $zero, 0x20
    /* 347D0 801BD748 CEFF1E24 */  addiu      $fp, $zero, -0x32
    /* 347D4 801BD74C CFFF1424 */  addiu      $s4, $zero, -0x31
    /* 347D8 801BD750 21B84000 */  addu       $s7, $v0, $zero
    /* 347DC 801BD754 80000224 */  addiu      $v0, $zero, 0x80
    /* 347E0 801BD758 3000A8AF */  sw         $t0, 0x30($sp)
    /* 347E4 801BD75C 000062A0 */  sb         $v0, 0x0($v1)
    /* 347E8 801BD760 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 347EC 801BD764 1E80013C */  lui        $at, %hi(D_801D8D9C)
    /* 347F0 801BD768 9C8D22A0 */  sb         $v0, %lo(D_801D8D9C)($at)
    /* 347F4 801BD76C 1E80013C */  lui        $at, %hi(D_801D8D9D)
    /* 347F8 801BD770 9D8D20A0 */  sb         $zero, %lo(D_801D8D9D)($at)
  .L801BD774:
    /* 347FC 801BD774 04007026 */  addiu      $s0, $s3, 0x4
    /* 34800 801BD778 21200002 */  addu       $a0, $s0, $zero
    /* 34804 801BD77C 2128E002 */  addu       $a1, $s7, $zero
    /* 34808 801BD780 6EFD0624 */  addiu      $a2, $zero, -0x292
    /* 3480C 801BD784 21388002 */  addu       $a3, $s4, $zero
    /* 34810 801BD788 00010824 */  addiu      $t0, $zero, 0x100
    /* 34814 801BD78C 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34818 801BD790 02000824 */  addiu      $t0, $zero, 0x2
    /* 3481C 801BD794 03000224 */  addiu      $v0, $zero, 0x3
    /* 34820 801BD798 1400B6AF */  sw         $s6, 0x14($sp)
    /* 34824 801BD79C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 34828 801BD7A0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3482C 801BD7A4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 34830 801BD7A8 2400A8AF */  sw         $t0, 0x24($sp)
    /* 34834 801BD7AC 2800A2AF */  sw         $v0, 0x28($sp)
    /* 34838 801BD7B0 B850060C */  jal        func_801942E0
    /* 3483C 801BD7B4 2C00B6AF */   sw        $s6, 0x2C($sp)
    /* 34840 801BD7B8 21200002 */  addu       $a0, $s0, $zero
    /* 34844 801BD7BC 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 34848 801BD7C0 21302002 */  addu       $a2, $s1, $zero
    /* 3484C 801BD7C4 01000724 */  addiu      $a3, $zero, 0x1
    /* 34850 801BD7C8 5CFD0224 */  addiu      $v0, $zero, -0x2A4
    /* 34854 801BD7CC 000022A6 */  sh         $v0, 0x0($s1)
    /* 34858 801BD7D0 64000224 */  addiu      $v0, $zero, 0x64
    /* 3485C 801BD7D4 040022A6 */  sh         $v0, 0x4($s1)
    /* 34860 801BD7D8 10000224 */  addiu      $v0, $zero, 0x10
    /* 34864 801BD7DC 04000824 */  addiu      $t0, $zero, 0x4
    /* 34868 801BD7E0 02003EA6 */  sh         $fp, 0x2($s1)
    /* 3486C 801BD7E4 060022A6 */  sh         $v0, 0x6($s1)
    /* 34870 801BD7E8 080020A2 */  sb         $zero, 0x8($s1)
    /* 34874 801BD7EC 090020A2 */  sb         $zero, 0x9($s1)
    /* 34878 801BD7F0 0A0035A2 */  sb         $s5, 0xA($s1)
    /* 3487C 801BD7F4 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34880 801BD7F8 3B50060C */  jal        func_801940EC
    /* 34884 801BD7FC 1400B6AF */   sw        $s6, 0x14($sp)
    /* 34888 801BD800 21204002 */  addu       $a0, $s2, $zero
    /* 3488C 801BD804 20020624 */  addiu      $a2, $zero, 0x220
    /* 34890 801BD808 21388002 */  addu       $a3, $s4, $zero
    /* 34894 801BD80C 3000A58F */  lw         $a1, 0x30($sp)
    /* 34898 801BD810 00010824 */  addiu      $t0, $zero, 0x100
    /* 3489C 801BD814 1000A8AF */  sw         $t0, 0x10($sp)
    /* 348A0 801BD818 02000824 */  addiu      $t0, $zero, 0x2
    /* 348A4 801BD81C 2400A8AF */  sw         $t0, 0x24($sp)
    /* 348A8 801BD820 1400B6AF */  sw         $s6, 0x14($sp)
    /* 348AC 801BD824 1800A0AF */  sw         $zero, 0x18($sp)
    /* 348B0 801BD828 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 348B4 801BD82C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 348B8 801BD830 2800A8AF */  sw         $t0, 0x28($sp)
    /* 348BC 801BD834 B850060C */  jal        func_801942E0
    /* 348C0 801BD838 2C00B6AF */   sw        $s6, 0x2C($sp)
    /* 348C4 801BD83C 21204002 */  addu       $a0, $s2, $zero
    /* 348C8 801BD840 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 348CC 801BD844 21302002 */  addu       $a2, $s1, $zero
    /* 348D0 801BD848 01000724 */  addiu      $a3, $zero, 0x1
    /* 348D4 801BD84C 40020224 */  addiu      $v0, $zero, 0x240
    /* 348D8 801BD850 04000824 */  addiu      $t0, $zero, 0x4
    /* 348DC 801BD854 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 348E0 801BD858 988D20A0 */  sb         $zero, %lo(D_801D8D98)($at)
    /* 348E4 801BD85C 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 348E8 801BD860 998D20A0 */  sb         $zero, %lo(D_801D8D99)($at)
    /* 348EC 801BD864 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 348F0 801BD868 9A8D35A0 */  sb         $s5, %lo(D_801D8D9A)($at)
    /* 348F4 801BD86C 000022A6 */  sh         $v0, 0x0($s1)
    /* 348F8 801BD870 1000A8AF */  sw         $t0, 0x10($sp)
    /* 348FC 801BD874 3B50060C */  jal        func_801940EC
    /* 34900 801BD878 1400B6AF */   sw        $s6, 0x14($sp)
    /* 34904 801BD87C 1000B526 */  addiu      $s5, $s5, 0x10
    /* 34908 801BD880 1300DE27 */  addiu      $fp, $fp, 0x13
    /* 3490C 801BD884 13009426 */  addiu      $s4, $s4, 0x13
    /* 34910 801BD888 3000A88F */  lw         $t0, 0x30($sp)
    /* 34914 801BD88C 2D00F726 */  addiu      $s7, $s7, 0x2D
    /* 34918 801BD890 2D000825 */  addiu      $t0, $t0, 0x2D
    /* 3491C 801BD894 3000A8AF */  sw         $t0, 0x30($sp)
    /* 34920 801BD898 1E80013C */  lui        $at, %hi(D_801D8A4C)
    /* 34924 801BD89C 21083200 */  addu       $at, $at, $s2
    /* 34928 801BD8A0 4C8A33A0 */  sb         $s3, %lo(D_801D8A4C)($at)
    /* 3492C 801BD8A4 01007326 */  addiu      $s3, $s3, 0x1
    /* 34930 801BD8A8 0800622A */  slti       $v0, $s3, 0x8
    /* 34934 801BD8AC B1FF4014 */  bnez       $v0, .L801BD774
    /* 34938 801BD8B0 01005226 */   addiu     $s2, $s2, 0x1
    /* 3493C 801BD8B4 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 34940 801BD8B8 5800BE8F */  lw         $fp, 0x58($sp)
    /* 34944 801BD8BC 5400B78F */  lw         $s7, 0x54($sp)
    /* 34948 801BD8C0 5000B68F */  lw         $s6, 0x50($sp)
    /* 3494C 801BD8C4 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 34950 801BD8C8 4800B48F */  lw         $s4, 0x48($sp)
    /* 34954 801BD8CC 4400B38F */  lw         $s3, 0x44($sp)
    /* 34958 801BD8D0 4000B28F */  lw         $s2, 0x40($sp)
    /* 3495C 801BD8D4 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 34960 801BD8D8 3800B08F */  lw         $s0, 0x38($sp)
    /* 34964 801BD8DC 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 34968 801BD8E0 0800E003 */  jr         $ra
    /* 3496C 801BD8E4 00000000 */   nop
endlabel func_801BD6EC
