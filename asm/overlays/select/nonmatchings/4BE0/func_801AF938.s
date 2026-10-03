nonmatching func_801AF938, 0x594

glabel func_801AF938
    /* 269C0 801AF938 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 269C4 801AF93C 21188000 */  addu       $v1, $a0, $zero
    /* 269C8 801AF940 02000424 */  addiu      $a0, $zero, 0x2
    /* 269CC 801AF944 AC300524 */  addiu      $a1, $zero, 0x30AC
    /* 269D0 801AF948 21300000 */  addu       $a2, $zero, $zero
    /* 269D4 801AF94C 00140300 */  sll        $v0, $v1, 16
    /* 269D8 801AF950 6800B4AF */  sw         $s4, 0x68($sp)
    /* 269DC 801AF954 03A40200 */  sra        $s4, $v0, 16
    /* 269E0 801AF958 21388002 */  addu       $a3, $s4, $zero
    /* 269E4 801AF95C 5800B0AF */  sw         $s0, 0x58($sp)
    /* 269E8 801AF960 03850200 */  sra        $s0, $v0, 20
    /* 269EC 801AF964 02000226 */  addiu      $v0, $s0, 0x2
    /* 269F0 801AF968 7000B6AF */  sw         $s6, 0x70($sp)
    /* 269F4 801AF96C 1D001624 */  addiu      $s6, $zero, 0x1D
    /* 269F8 801AF970 6400B3AF */  sw         $s3, 0x64($sp)
    /* 269FC 801AF974 00101324 */  addiu      $s3, $zero, 0x1000
    /* 26A00 801AF978 6000B2AF */  sw         $s2, 0x60($sp)
    /* 26A04 801AF97C 80001224 */  addiu      $s2, $zero, 0x80
    /* 26A08 801AF980 6C00B5AF */  sw         $s5, 0x6C($sp)
    /* 26A0C 801AF984 01001524 */  addiu      $s5, $zero, 0x1
    /* 26A10 801AF988 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 26A14 801AF98C 7800BEAF */  sw         $fp, 0x78($sp)
    /* 26A18 801AF990 7400B7AF */  sw         $s7, 0x74($sp)
    /* 26A1C 801AF994 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* 26A20 801AF998 1000A2AF */  sw         $v0, 0x10($sp)
    /* 26A24 801AF99C 1400B6AF */  sw         $s6, 0x14($sp)
    /* 26A28 801AF9A0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26A2C 801AF9A4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26A30 801AF9A8 2000B3AF */  sw         $s3, 0x20($sp)
    /* 26A34 801AF9AC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26A38 801AF9B0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26A3C 801AF9B4 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 26A40 801AF9B8 3000B2AF */  sw         $s2, 0x30($sp)
    /* 26A44 801AF9BC 3400B2AF */  sw         $s2, 0x34($sp)
    /* 26A48 801AF9C0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26A4C 801AF9C4 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 26A50 801AF9C8 4000B5AF */  sw         $s5, 0x40($sp)
    /* 26A54 801AF9CC ED4F060C */  jal        func_80193FB4
    /* 26A58 801AF9D0 4800A3A7 */   sh        $v1, 0x48($sp)
    /* 26A5C 801AF9D4 08000424 */  addiu      $a0, $zero, 0x8
    /* 26A60 801AF9D8 C0300524 */  addiu      $a1, $zero, 0x30C0
    /* 26A64 801AF9DC 21300000 */  addu       $a2, $zero, $zero
    /* 26A68 801AF9E0 21380000 */  addu       $a3, $zero, $zero
    /* 26A6C 801AF9E4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 26A70 801AF9E8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26A74 801AF9EC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 26A78 801AF9F0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26A7C 801AF9F4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26A80 801AF9F8 2000B3AF */  sw         $s3, 0x20($sp)
    /* 26A84 801AF9FC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26A88 801AFA00 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26A8C 801AFA04 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 26A90 801AFA08 3000B2AF */  sw         $s2, 0x30($sp)
    /* 26A94 801AFA0C 3400B2AF */  sw         $s2, 0x34($sp)
    /* 26A98 801AFA10 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26A9C 801AFA14 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 26AA0 801AFA18 ED4F060C */  jal        func_80193FB4
    /* 26AA4 801AFA1C 4000B5AF */   sw        $s5, 0x40($sp)
    /* 26AA8 801AFA20 1E80023C */  lui        $v0, %hi(D_801D86F2)
    /* 26AAC 801AFA24 F2864290 */  lbu        $v0, %lo(D_801D86F2)($v0)
    /* 26AB0 801AFA28 00000000 */  nop
    /* 26AB4 801AFA2C 2A004014 */  bnez       $v0, .L801AFAD8
    /* 26AB8 801AFA30 03000424 */   addiu     $a0, $zero, 0x3
    /* 26ABC 801AFA34 B0300524 */  addiu      $a1, $zero, 0x30B0
    /* 26AC0 801AFA38 21300000 */  addu       $a2, $zero, $zero
    /* 26AC4 801AFA3C 21388002 */  addu       $a3, $s4, $zero
    /* 26AC8 801AFA40 23801000 */  negu       $s0, $s0
    /* 26ACC 801AFA44 18000224 */  addiu      $v0, $zero, 0x18
    /* 26AD0 801AFA48 04001124 */  addiu      $s1, $zero, 0x4
    /* 26AD4 801AFA4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 26AD8 801AFA50 1400A2AF */  sw         $v0, 0x14($sp)
    /* 26ADC 801AFA54 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26AE0 801AFA58 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26AE4 801AFA5C 2000B3AF */  sw         $s3, 0x20($sp)
    /* 26AE8 801AFA60 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26AEC 801AFA64 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26AF0 801AFA68 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 26AF4 801AFA6C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 26AF8 801AFA70 3400B2AF */  sw         $s2, 0x34($sp)
    /* 26AFC 801AFA74 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26B00 801AFA78 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 26B04 801AFA7C ED4F060C */  jal        func_80193FB4
    /* 26B08 801AFA80 4000B5AF */   sw        $s5, 0x40($sp)
    /* 26B0C 801AFA84 05000424 */  addiu      $a0, $zero, 0x5
    /* 26B10 801AFA88 BE300524 */  addiu      $a1, $zero, 0x30BE
    /* 26B14 801AFA8C 21300000 */  addu       $a2, $zero, $zero
    /* 26B18 801AFA90 21388002 */  addu       $a3, $s4, $zero
    /* 26B1C 801AFA94 1000B0AF */  sw         $s0, 0x10($sp)
    /* 26B20 801AFA98 1400B6AF */  sw         $s6, 0x14($sp)
    /* 26B24 801AFA9C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26B28 801AFAA0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26B2C 801AFAA4 2000B3AF */  sw         $s3, 0x20($sp)
    /* 26B30 801AFAA8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26B34 801AFAAC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26B38 801AFAB0 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 26B3C 801AFAB4 3000B2AF */  sw         $s2, 0x30($sp)
    /* 26B40 801AFAB8 3400B2AF */  sw         $s2, 0x34($sp)
    /* 26B44 801AFABC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26B48 801AFAC0 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 26B4C 801AFAC4 ED4F060C */  jal        func_80193FB4
    /* 26B50 801AFAC8 4000B5AF */   sw        $s5, 0x40($sp)
    /* 26B54 801AFACC 07000424 */  addiu      $a0, $zero, 0x7
    /* 26B58 801AFAD0 DEBE0608 */  j          .L801AFB78
    /* 26B5C 801AFAD4 BE300524 */   addiu     $a1, $zero, 0x30BE
  .L801AFAD8:
    /* 26B60 801AFAD8 B1300524 */  addiu      $a1, $zero, 0x30B1
    /* 26B64 801AFADC 21300000 */  addu       $a2, $zero, $zero
    /* 26B68 801AFAE0 21388002 */  addu       $a3, $s4, $zero
    /* 26B6C 801AFAE4 23801000 */  negu       $s0, $s0
    /* 26B70 801AFAE8 18000224 */  addiu      $v0, $zero, 0x18
    /* 26B74 801AFAEC 04001124 */  addiu      $s1, $zero, 0x4
    /* 26B78 801AFAF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 26B7C 801AFAF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 26B80 801AFAF8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26B84 801AFAFC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26B88 801AFB00 2000B3AF */  sw         $s3, 0x20($sp)
    /* 26B8C 801AFB04 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26B90 801AFB08 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26B94 801AFB0C 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 26B98 801AFB10 3000B2AF */  sw         $s2, 0x30($sp)
    /* 26B9C 801AFB14 3400B2AF */  sw         $s2, 0x34($sp)
    /* 26BA0 801AFB18 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26BA4 801AFB1C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 26BA8 801AFB20 ED4F060C */  jal        func_80193FB4
    /* 26BAC 801AFB24 4000B5AF */   sw        $s5, 0x40($sp)
    /* 26BB0 801AFB28 05000424 */  addiu      $a0, $zero, 0x5
    /* 26BB4 801AFB2C BF300524 */  addiu      $a1, $zero, 0x30BF
    /* 26BB8 801AFB30 21300000 */  addu       $a2, $zero, $zero
    /* 26BBC 801AFB34 21388002 */  addu       $a3, $s4, $zero
    /* 26BC0 801AFB38 1000B0AF */  sw         $s0, 0x10($sp)
    /* 26BC4 801AFB3C 1400B6AF */  sw         $s6, 0x14($sp)
    /* 26BC8 801AFB40 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26BCC 801AFB44 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26BD0 801AFB48 2000B3AF */  sw         $s3, 0x20($sp)
    /* 26BD4 801AFB4C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26BD8 801AFB50 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26BDC 801AFB54 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 26BE0 801AFB58 3000B2AF */  sw         $s2, 0x30($sp)
    /* 26BE4 801AFB5C 3400B2AF */  sw         $s2, 0x34($sp)
    /* 26BE8 801AFB60 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26BEC 801AFB64 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 26BF0 801AFB68 ED4F060C */  jal        func_80193FB4
    /* 26BF4 801AFB6C 4000B5AF */   sw        $s5, 0x40($sp)
    /* 26BF8 801AFB70 07000424 */  addiu      $a0, $zero, 0x7
    /* 26BFC 801AFB74 BF300524 */  addiu      $a1, $zero, 0x30BF
  .L801AFB78:
    /* 26C00 801AFB78 21300000 */  addu       $a2, $zero, $zero
    /* 26C04 801AFB7C 21388002 */  addu       $a3, $s4, $zero
    /* 26C08 801AFB80 03001026 */  addiu      $s0, $s0, 0x3
    /* 26C0C 801AFB84 74000224 */  addiu      $v0, $zero, 0x74
    /* 26C10 801AFB88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 26C14 801AFB8C 1400B6AF */  sw         $s6, 0x14($sp)
    /* 26C18 801AFB90 1800A2AF */  sw         $v0, 0x18($sp)
    /* 26C1C 801AFB94 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26C20 801AFB98 2000B3AF */  sw         $s3, 0x20($sp)
    /* 26C24 801AFB9C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26C28 801AFBA0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26C2C 801AFBA4 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 26C30 801AFBA8 3000B2AF */  sw         $s2, 0x30($sp)
    /* 26C34 801AFBAC 3400B2AF */  sw         $s2, 0x34($sp)
    /* 26C38 801AFBB0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26C3C 801AFBB4 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 26C40 801AFBB8 ED4F060C */  jal        func_80193FB4
    /* 26C44 801AFBBC 4000B5AF */   sw        $s5, 0x40($sp)
    /* 26C48 801AFBC0 04000424 */  addiu      $a0, $zero, 0x4
    /* 26C4C 801AFBC4 B2300524 */  addiu      $a1, $zero, 0x30B2
    /* 26C50 801AFBC8 21300000 */  addu       $a2, $zero, $zero
    /* 26C54 801AFBCC 1D001424 */  addiu      $s4, $zero, 0x1D
    /* 26C58 801AFBD0 00101224 */  addiu      $s2, $zero, 0x1000
    /* 26C5C 801AFBD4 80001124 */  addiu      $s1, $zero, 0x80
    /* 26C60 801AFBD8 04000224 */  addiu      $v0, $zero, 0x4
    /* 26C64 801AFBDC 4800A897 */  lhu        $t0, 0x48($sp)
    /* 26C68 801AFBE0 01001324 */  addiu      $s3, $zero, 0x1
    /* 26C6C 801AFBE4 1400B4AF */  sw         $s4, 0x14($sp)
    /* 26C70 801AFBE8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26C74 801AFBEC 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 26C78 801AFBF0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 26C7C 801AFBF4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26C80 801AFBF8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26C84 801AFBFC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 26C88 801AFC00 3000B1AF */  sw         $s1, 0x30($sp)
    /* 26C8C 801AFC04 3400B1AF */  sw         $s1, 0x34($sp)
    /* 26C90 801AFC08 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26C94 801AFC0C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 26C98 801AFC10 4000B3AF */  sw         $s3, 0x40($sp)
    /* 26C9C 801AFC14 00840800 */  sll        $s0, $t0, 16
    /* 26CA0 801AFC18 03AC1000 */  sra        $s5, $s0, 16
    /* 26CA4 801AFC1C 2138A002 */  addu       $a3, $s5, $zero
    /* 26CA8 801AFC20 03851000 */  sra        $s0, $s0, 20
    /* 26CAC 801AFC24 23801000 */  negu       $s0, $s0
    /* 26CB0 801AFC28 ED4F060C */  jal        func_80193FB4
    /* 26CB4 801AFC2C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 26CB8 801AFC30 06000424 */  addiu      $a0, $zero, 0x6
    /* 26CBC 801AFC34 B2300524 */  addiu      $a1, $zero, 0x30B2
    /* 26CC0 801AFC38 21300000 */  addu       $a2, $zero, $zero
    /* 26CC4 801AFC3C 2138A002 */  addu       $a3, $s5, $zero
    /* 26CC8 801AFC40 03001026 */  addiu      $s0, $s0, 0x3
    /* 26CCC 801AFC44 74000224 */  addiu      $v0, $zero, 0x74
    /* 26CD0 801AFC48 1800A2AF */  sw         $v0, 0x18($sp)
    /* 26CD4 801AFC4C 05000224 */  addiu      $v0, $zero, 0x5
    /* 26CD8 801AFC50 1000B0AF */  sw         $s0, 0x10($sp)
    /* 26CDC 801AFC54 1400B4AF */  sw         $s4, 0x14($sp)
    /* 26CE0 801AFC58 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 26CE4 801AFC5C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 26CE8 801AFC60 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26CEC 801AFC64 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26CF0 801AFC68 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 26CF4 801AFC6C 3000B1AF */  sw         $s1, 0x30($sp)
    /* 26CF8 801AFC70 3400B1AF */  sw         $s1, 0x34($sp)
    /* 26CFC 801AFC74 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26D00 801AFC78 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 26D04 801AFC7C ED4F060C */  jal        func_80193FB4
    /* 26D08 801AFC80 4000B3AF */   sw        $s3, 0x40($sp)
    /* 26D0C 801AFC84 21880000 */  addu       $s1, $zero, $zero
    /* 26D10 801AFC88 00101524 */  addiu      $s5, $zero, 0x1000
    /* 26D14 801AFC8C 80001424 */  addiu      $s4, $zero, 0x80
    /* 26D18 801AFC90 C7FF0824 */  addiu      $t0, $zero, -0x39
    /* 26D1C 801AFC94 1E80023C */  lui        $v0, %hi(D_801D9623)
    /* 26D20 801AFC98 23964224 */  addiu      $v0, $v0, %lo(D_801D9623)
    /* 26D24 801AFC9C 95015E24 */  addiu      $fp, $v0, 0x195
    /* 26D28 801AFCA0 C9FF1724 */  addiu      $s7, $zero, -0x37
    /* 26D2C 801AFCA4 21B04000 */  addu       $s6, $v0, $zero
    /* 26D30 801AFCA8 21900000 */  addu       $s2, $zero, $zero
    /* 26D34 801AFCAC 5000A8AF */  sw         $t0, 0x50($sp)
  .L801AFCB0:
    /* 26D38 801AFCB0 1E80033C */  lui        $v1, %hi(D_801D86EA)
    /* 26D3C 801AFCB4 EA866384 */  lh         $v1, %lo(D_801D86EA)($v1)
    /* 26D40 801AFCB8 00000000 */  nop
    /* 26D44 801AFCBC 21187100 */  addu       $v1, $v1, $s1
    /* 26D48 801AFCC0 80100300 */  sll        $v0, $v1, 2
    /* 26D4C 801AFCC4 21104300 */  addu       $v0, $v0, $v1
    /* 26D50 801AFCC8 40100200 */  sll        $v0, $v0, 1
    /* 26D54 801AFCCC 1E80013C */  lui        $at, %hi(D_801D8B21)
    /* 26D58 801AFCD0 21082200 */  addu       $at, $at, $v0
    /* 26D5C 801AFCD4 218B2390 */  lbu        $v1, %lo(D_801D8B21)($at)
    /* 26D60 801AFCD8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 26D64 801AFCDC 6E006210 */  beq        $v1, $v0, .L801AFE98
    /* 26D68 801AFCE0 09002426 */   addiu     $a0, $s1, 0x9
    /* 26D6C 801AFCE4 B5302526 */  addiu      $a1, $s1, 0x30B5
    /* 26D70 801AFCE8 4800A897 */  lhu        $t0, 0x48($sp)
    /* 26D74 801AFCEC 21300000 */  addu       $a2, $zero, $zero
    /* 26D78 801AFCF0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26D7C 801AFCF4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26D80 801AFCF8 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 26D84 801AFCFC 2000B5AF */  sw         $s5, 0x20($sp)
    /* 26D88 801AFD00 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26D8C 801AFD04 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26D90 801AFD08 2C00B4AF */  sw         $s4, 0x2C($sp)
    /* 26D94 801AFD0C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 26D98 801AFD10 3400B4AF */  sw         $s4, 0x34($sp)
    /* 26D9C 801AFD14 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26DA0 801AFD18 4000B3AF */  sw         $s3, 0x40($sp)
    /* 26DA4 801AFD1C 00840800 */  sll        $s0, $t0, 16
    /* 26DA8 801AFD20 03841000 */  sra        $s0, $s0, 16
    /* 26DAC 801AFD24 23801000 */  negu       $s0, $s0
    /* 26DB0 801AFD28 21380002 */  addu       $a3, $s0, $zero
    /* 26DB4 801AFD2C 0C000824 */  addiu      $t0, $zero, 0xC
    /* 26DB8 801AFD30 1400A8AF */  sw         $t0, 0x14($sp)
    /* 26DBC 801AFD34 03000824 */  addiu      $t0, $zero, 0x3
    /* 26DC0 801AFD38 ED4F060C */  jal        func_80193FB4
    /* 26DC4 801AFD3C 3C00A8AF */   sw        $t0, 0x3C($sp)
    /* 26DC8 801AFD40 12002426 */  addiu      $a0, $s1, 0x12
    /* 26DCC 801AFD44 B3300524 */  addiu      $a1, $zero, 0x30B3
    /* 26DD0 801AFD48 21300000 */  addu       $a2, $zero, $zero
    /* 26DD4 801AFD4C 21380002 */  addu       $a3, $s0, $zero
    /* 26DD8 801AFD50 0C000824 */  addiu      $t0, $zero, 0xC
    /* 26DDC 801AFD54 1400A8AF */  sw         $t0, 0x14($sp)
    /* 26DE0 801AFD58 04000824 */  addiu      $t0, $zero, 0x4
    /* 26DE4 801AFD5C 1000B2AF */  sw         $s2, 0x10($sp)
    /* 26DE8 801AFD60 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26DEC 801AFD64 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 26DF0 801AFD68 2000B5AF */  sw         $s5, 0x20($sp)
    /* 26DF4 801AFD6C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26DF8 801AFD70 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26DFC 801AFD74 2C00B4AF */  sw         $s4, 0x2C($sp)
    /* 26E00 801AFD78 3000B4AF */  sw         $s4, 0x30($sp)
    /* 26E04 801AFD7C 3400B4AF */  sw         $s4, 0x34($sp)
    /* 26E08 801AFD80 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26E0C 801AFD84 3C00A8AF */  sw         $t0, 0x3C($sp)
    /* 26E10 801AFD88 ED4F060C */  jal        func_80193FB4
    /* 26E14 801AFD8C 4000B3AF */   sw        $s3, 0x40($sp)
    /* 26E18 801AFD90 1B002426 */  addiu      $a0, $s1, 0x1B
    /* 26E1C 801AFD94 B4300524 */  addiu      $a1, $zero, 0x30B4
    /* 26E20 801AFD98 21300000 */  addu       $a2, $zero, $zero
    /* 26E24 801AFD9C 21380002 */  addu       $a3, $s0, $zero
    /* 26E28 801AFDA0 0C000824 */  addiu      $t0, $zero, 0xC
    /* 26E2C 801AFDA4 20000224 */  addiu      $v0, $zero, 0x20
    /* 26E30 801AFDA8 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 26E34 801AFDAC 30000224 */  addiu      $v0, $zero, 0x30
    /* 26E38 801AFDB0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 26E3C 801AFDB4 C0101100 */  sll        $v0, $s1, 3
    /* 26E40 801AFDB8 30004224 */  addiu      $v0, $v0, 0x30
    /* 26E44 801AFDBC 3400A2AF */  sw         $v0, 0x34($sp)
    /* 26E48 801AFDC0 05000224 */  addiu      $v0, $zero, 0x5
    /* 26E4C 801AFDC4 1000B2AF */  sw         $s2, 0x10($sp)
    /* 26E50 801AFDC8 1400A8AF */  sw         $t0, 0x14($sp)
    /* 26E54 801AFDCC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26E58 801AFDD0 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 26E5C 801AFDD4 2000B5AF */  sw         $s5, 0x20($sp)
    /* 26E60 801AFDD8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 26E64 801AFDDC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 26E68 801AFDE0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 26E6C 801AFDE4 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 26E70 801AFDE8 ED4F060C */  jal        func_80193FB4
    /* 26E74 801AFDEC 4000B3AF */   sw        $s3, 0x40($sp)
    /* 26E78 801AFDF0 07002426 */  addiu      $a0, $s1, 0x7
    /* 26E7C 801AFDF4 2128C002 */  addu       $a1, $s6, $zero
    /* 26E80 801AFDF8 7CFF0626 */  addiu      $a2, $s0, -0x84
    /* 26E84 801AFDFC 2138E002 */  addu       $a3, $s7, $zero
    /* 26E88 801AFE00 C8000824 */  addiu      $t0, $zero, 0xC8
    /* 26E8C 801AFE04 1000A8AF */  sw         $t0, 0x10($sp)
    /* 26E90 801AFE08 04000824 */  addiu      $t0, $zero, 0x4
    /* 26E94 801AFE0C 2400A8AF */  sw         $t0, 0x24($sp)
    /* 26E98 801AFE10 03000824 */  addiu      $t0, $zero, 0x3
    /* 26E9C 801AFE14 1400B3AF */  sw         $s3, 0x14($sp)
    /* 26EA0 801AFE18 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26EA4 801AFE1C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 26EA8 801AFE20 2000A0AF */  sw         $zero, 0x20($sp)
    /* 26EAC 801AFE24 2800A8AF */  sw         $t0, 0x28($sp)
    /* 26EB0 801AFE28 B850060C */  jal        func_801942E0
    /* 26EB4 801AFE2C 2C00B3AF */   sw        $s3, 0x2C($sp)
    /* 26EB8 801AFE30 10002426 */  addiu      $a0, $s1, 0x10
    /* 26EBC 801AFE34 2128C003 */  addu       $a1, $fp, $zero
    /* 26EC0 801AFE38 9CFF0626 */  addiu      $a2, $s0, -0x64
    /* 26EC4 801AFE3C C8000824 */  addiu      $t0, $zero, 0xC8
    /* 26EC8 801AFE40 5000A78F */  lw         $a3, 0x50($sp)
    /* 26ECC 801AFE44 02000224 */  addiu      $v0, $zero, 0x2
    /* 26ED0 801AFE48 1000A8AF */  sw         $t0, 0x10($sp)
    /* 26ED4 801AFE4C 03000824 */  addiu      $t0, $zero, 0x3
    /* 26ED8 801AFE50 1400B3AF */  sw         $s3, 0x14($sp)
    /* 26EDC 801AFE54 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26EE0 801AFE58 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 26EE4 801AFE5C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 26EE8 801AFE60 2400A2AF */  sw         $v0, 0x24($sp)
    /* 26EEC 801AFE64 2800A8AF */  sw         $t0, 0x28($sp)
    /* 26EF0 801AFE68 B850060C */  jal        func_801942E0
    /* 26EF4 801AFE6C 2C00B3AF */   sw        $s3, 0x2C($sp)
    /* 26EF8 801AFE70 2D00DE27 */  addiu      $fp, $fp, 0x2D
    /* 26EFC 801AFE74 1100F726 */  addiu      $s7, $s7, 0x11
    /* 26F00 801AFE78 2D00D626 */  addiu      $s6, $s6, 0x2D
    /* 26F04 801AFE7C 11005226 */  addiu      $s2, $s2, 0x11
    /* 26F08 801AFE80 01003126 */  addiu      $s1, $s1, 0x1
    /* 26F0C 801AFE84 5000A88F */  lw         $t0, 0x50($sp)
    /* 26F10 801AFE88 0900222A */  slti       $v0, $s1, 0x9
    /* 26F14 801AFE8C 11000825 */  addiu      $t0, $t0, 0x11
    /* 26F18 801AFE90 87FF4014 */  bnez       $v0, .L801AFCB0
    /* 26F1C 801AFE94 5000A8AF */   sw        $t0, 0x50($sp)
  .L801AFE98:
    /* 26F20 801AFE98 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 26F24 801AFE9C 7800BE8F */  lw         $fp, 0x78($sp)
    /* 26F28 801AFEA0 7400B78F */  lw         $s7, 0x74($sp)
    /* 26F2C 801AFEA4 7000B68F */  lw         $s6, 0x70($sp)
    /* 26F30 801AFEA8 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 26F34 801AFEAC 6800B48F */  lw         $s4, 0x68($sp)
    /* 26F38 801AFEB0 6400B38F */  lw         $s3, 0x64($sp)
    /* 26F3C 801AFEB4 6000B28F */  lw         $s2, 0x60($sp)
    /* 26F40 801AFEB8 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 26F44 801AFEBC 5800B08F */  lw         $s0, 0x58($sp)
    /* 26F48 801AFEC0 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 26F4C 801AFEC4 0800E003 */  jr         $ra
    /* 26F50 801AFEC8 00000000 */   nop
endlabel func_801AF938
