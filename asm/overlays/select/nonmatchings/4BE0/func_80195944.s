nonmatching func_80195944, 0x49C

glabel func_80195944
    /* C9CC 80195944 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* C9D0 80195948 1E80093C */  lui        $t1, %hi(D_801D92A0)
    /* C9D4 8019594C A0922925 */  addiu      $t1, $t1, %lo(D_801D92A0)
    /* C9D8 80195950 7000BEAF */  sw         $fp, 0x70($sp)
    /* C9DC 80195954 15003E25 */  addiu      $fp, $t1, 0x15
    /* C9E0 80195958 2800A9AF */  sw         $t1, 0x28($sp)
    /* C9E4 8019595C 08002925 */  addiu      $t1, $t1, 0x8
    /* C9E8 80195960 7400BFAF */  sw         $ra, 0x74($sp)
    /* C9EC 80195964 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* C9F0 80195968 6800B6AF */  sw         $s6, 0x68($sp)
    /* C9F4 8019596C 6400B5AF */  sw         $s5, 0x64($sp)
    /* C9F8 80195970 6000B4AF */  sw         $s4, 0x60($sp)
    /* C9FC 80195974 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* CA00 80195978 5800B2AF */  sw         $s2, 0x58($sp)
    /* CA04 8019597C 5400B1AF */  sw         $s1, 0x54($sp)
    /* CA08 80195980 5000B0AF */  sw         $s0, 0x50($sp)
    /* CA0C 80195984 3000A0AF */  sw         $zero, 0x30($sp)
    /* CA10 80195988 4800A9AF */  sw         $t1, 0x48($sp)
  .L8019598C:
    /* CA14 8019598C EEFFC293 */  lbu        $v0, -0x12($fp)
    /* CA18 80195990 00000000 */  nop
    /* CA1C 80195994 F4004010 */  beqz       $v0, .L80195D68
    /* CA20 80195998 00000000 */   nop
    /* CA24 8019599C F7FFC797 */  lhu        $a3, -0x9($fp)
    /* CA28 801959A0 F9FFD497 */  lhu        $s4, -0x7($fp)
    /* CA2C 801959A4 F3FFC597 */  lhu        $a1, -0xD($fp)
    /* CA30 801959A8 F5FFC697 */  lhu        $a2, -0xB($fp)
    /* CA34 801959AC 2800A98F */  lw         $t1, 0x28($sp)
    /* CA38 801959B0 0100E32C */  sltiu      $v1, $a3, 0x1
    /* CA3C 801959B4 0100822E */  sltiu      $v0, $s4, 0x1
    /* CA40 801959B8 25186200 */  or         $v1, $v1, $v0
    /* CA44 801959BC 00002895 */  lhu        $t0, 0x0($t1)
    /* CA48 801959C0 E9006014 */  bnez       $v1, .L80195D68
    /* CA4C 801959C4 00000000 */   nop
    /* CA50 801959C8 EDFFC393 */  lbu        $v1, -0x13($fp)
    /* CA54 801959CC 00000000 */  nop
    /* CA58 801959D0 0500622C */  sltiu      $v0, $v1, 0x5
    /* CA5C 801959D4 E4004010 */  beqz       $v0, .L80195D68
    /* CA60 801959D8 80100300 */   sll       $v0, $v1, 2
    /* CA64 801959DC 1980013C */  lui        $at, %hi(jtbl_80189804)
    /* CA68 801959E0 21082200 */  addu       $at, $at, $v0
    /* CA6C 801959E4 0498228C */  lw         $v0, %lo(jtbl_80189804)($at)
    /* CA70 801959E8 00000000 */  nop
    /* CA74 801959EC 08004000 */  jr         $v0
    /* CA78 801959F0 00000000 */   nop
  jlabel .L801959F4
    /* CA7C 801959F4 21200000 */  addu       $a0, $zero, $zero
    /* CA80 801959F8 00940500 */  sll        $s2, $a1, 16
    /* CA84 801959FC 03941200 */  sra        $s2, $s2, 16
    /* CA88 80195A00 21284002 */  addu       $a1, $s2, $zero
    /* CA8C 80195A04 009C0600 */  sll        $s3, $a2, 16
    /* CA90 80195A08 039C1300 */  sra        $s3, $s3, 16
    /* CA94 80195A0C FEFF6626 */  addiu      $a2, $s3, -0x2
    /* CA98 80195A10 FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* CA9C 80195A14 21B04702 */  addu       $s6, $s2, $a3
    /* CAA0 80195A18 FFFFD126 */  addiu      $s1, $s6, -0x1
    /* CAA4 80195A1C 3800A7AF */  sw         $a3, 0x38($sp)
    /* CAA8 80195A20 21382002 */  addu       $a3, $s1, $zero
    /* CAAC 80195A24 E0000924 */  addiu      $t1, $zero, 0xE0
    /* CAB0 80195A28 1400A9AF */  sw         $t1, 0x14($sp)
    /* CAB4 80195A2C 1800A9AF */  sw         $t1, 0x18($sp)
    /* CAB8 80195A30 FFFF1031 */  andi       $s0, $t0, 0xFFFF
    /* CABC 80195A34 1000A6AF */  sw         $a2, 0x10($sp)
    /* CAC0 80195A38 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CAC4 80195A3C 1759060C */  jal        func_8019645C
    /* CAC8 80195A40 2000B0AF */   sw        $s0, 0x20($sp)
    /* CACC 80195A44 21200000 */  addu       $a0, $zero, $zero
    /* CAD0 80195A48 21284002 */  addu       $a1, $s2, $zero
    /* CAD4 80195A4C FFFF7726 */  addiu      $s7, $s3, -0x1
    /* CAD8 80195A50 2130E002 */  addu       $a2, $s7, $zero
    /* CADC 80195A54 21382002 */  addu       $a3, $s1, $zero
    /* CAE0 80195A58 60000924 */  addiu      $t1, $zero, 0x60
    /* CAE4 80195A5C 1400A9AF */  sw         $t1, 0x14($sp)
    /* CAE8 80195A60 1800A9AF */  sw         $t1, 0x18($sp)
    /* CAEC 80195A64 1000B7AF */  sw         $s7, 0x10($sp)
    /* CAF0 80195A68 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CAF4 80195A6C 1759060C */  jal        func_8019645C
    /* CAF8 80195A70 2000B0AF */   sw        $s0, 0x20($sp)
    /* CAFC 80195A74 21200000 */  addu       $a0, $zero, $zero
    /* CB00 80195A78 FFFF5526 */  addiu      $s5, $s2, -0x1
    /* CB04 80195A7C 2128A002 */  addu       $a1, $s5, $zero
    /* CB08 80195A80 FFFF9432 */  andi       $s4, $s4, 0xFFFF
    /* CB0C 80195A84 4000B4AF */  sw         $s4, 0x40($sp)
    /* CB10 80195A88 21A07402 */  addu       $s4, $s3, $s4
    /* CB14 80195A8C 21308002 */  addu       $a2, $s4, $zero
    /* CB18 80195A90 2138C002 */  addu       $a3, $s6, $zero
    /* CB1C 80195A94 E0000924 */  addiu      $t1, $zero, 0xE0
    /* CB20 80195A98 1400A9AF */  sw         $t1, 0x14($sp)
    /* CB24 80195A9C 1800A9AF */  sw         $t1, 0x18($sp)
    /* CB28 80195AA0 1000B4AF */  sw         $s4, 0x10($sp)
    /* CB2C 80195AA4 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CB30 80195AA8 1759060C */  jal        func_8019645C
    /* CB34 80195AAC 2000B0AF */   sw        $s0, 0x20($sp)
    /* CB38 80195AB0 21200000 */  addu       $a0, $zero, $zero
    /* CB3C 80195AB4 21284002 */  addu       $a1, $s2, $zero
    /* CB40 80195AB8 01008626 */  addiu      $a2, $s4, 0x1
    /* CB44 80195ABC 21382002 */  addu       $a3, $s1, $zero
    /* CB48 80195AC0 60000924 */  addiu      $t1, $zero, 0x60
    /* CB4C 80195AC4 1400A9AF */  sw         $t1, 0x14($sp)
    /* CB50 80195AC8 1800A9AF */  sw         $t1, 0x18($sp)
    /* CB54 80195ACC 1000A6AF */  sw         $a2, 0x10($sp)
    /* CB58 80195AD0 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CB5C 80195AD4 1759060C */  jal        func_8019645C
    /* CB60 80195AD8 2000B0AF */   sw        $s0, 0x20($sp)
    /* CB64 80195ADC 21200000 */  addu       $a0, $zero, $zero
    /* CB68 80195AE0 FEFF4526 */  addiu      $a1, $s2, -0x2
    /* CB6C 80195AE4 21306002 */  addu       $a2, $s3, $zero
    /* CB70 80195AE8 2138A000 */  addu       $a3, $a1, $zero
    /* CB74 80195AEC FFFF9126 */  addiu      $s1, $s4, -0x1
    /* CB78 80195AF0 E0000924 */  addiu      $t1, $zero, 0xE0
    /* CB7C 80195AF4 1400A9AF */  sw         $t1, 0x14($sp)
    /* CB80 80195AF8 1800A9AF */  sw         $t1, 0x18($sp)
    /* CB84 80195AFC 1000B1AF */  sw         $s1, 0x10($sp)
    /* CB88 80195B00 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CB8C 80195B04 1759060C */  jal        func_8019645C
    /* CB90 80195B08 2000B0AF */   sw        $s0, 0x20($sp)
    /* CB94 80195B0C 21200000 */  addu       $a0, $zero, $zero
    /* CB98 80195B10 2128A002 */  addu       $a1, $s5, $zero
    /* CB9C 80195B14 21306002 */  addu       $a2, $s3, $zero
    /* CBA0 80195B18 2138A002 */  addu       $a3, $s5, $zero
    /* CBA4 80195B1C 60000924 */  addiu      $t1, $zero, 0x60
    /* CBA8 80195B20 1400A9AF */  sw         $t1, 0x14($sp)
    /* CBAC 80195B24 1800A9AF */  sw         $t1, 0x18($sp)
    /* CBB0 80195B28 1000B1AF */  sw         $s1, 0x10($sp)
    /* CBB4 80195B2C 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CBB8 80195B30 1759060C */  jal        func_8019645C
    /* CBBC 80195B34 2000B0AF */   sw        $s0, 0x20($sp)
    /* CBC0 80195B38 21200000 */  addu       $a0, $zero, $zero
    /* CBC4 80195B3C 2128C002 */  addu       $a1, $s6, $zero
    /* CBC8 80195B40 2130E002 */  addu       $a2, $s7, $zero
    /* CBCC 80195B44 2138C002 */  addu       $a3, $s6, $zero
    /* CBD0 80195B48 E0000924 */  addiu      $t1, $zero, 0xE0
    /* CBD4 80195B4C 1400A9AF */  sw         $t1, 0x14($sp)
    /* CBD8 80195B50 1800A9AF */  sw         $t1, 0x18($sp)
    /* CBDC 80195B54 1000B4AF */  sw         $s4, 0x10($sp)
    /* CBE0 80195B58 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CBE4 80195B5C 1759060C */  jal        func_8019645C
    /* CBE8 80195B60 2000B0AF */   sw        $s0, 0x20($sp)
    /* CBEC 80195B64 21200000 */  addu       $a0, $zero, $zero
    /* CBF0 80195B68 0100C526 */  addiu      $a1, $s6, 0x1
    /* CBF4 80195B6C 21306002 */  addu       $a2, $s3, $zero
    /* CBF8 80195B70 2138A000 */  addu       $a3, $a1, $zero
    /* CBFC 80195B74 60000924 */  addiu      $t1, $zero, 0x60
    /* CC00 80195B78 1400A9AF */  sw         $t1, 0x14($sp)
    /* CC04 80195B7C 1800A9AF */  sw         $t1, 0x18($sp)
    /* CC08 80195B80 1000B1AF */  sw         $s1, 0x10($sp)
    /* CC0C 80195B84 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CC10 80195B88 1759060C */  jal        func_8019645C
    /* CC14 80195B8C 2000B0AF */   sw        $s0, 0x20($sp)
    /* CC18 80195B90 21200000 */  addu       $a0, $zero, $zero
    /* CC1C 80195B94 2128A002 */  addu       $a1, $s5, $zero
    /* CC20 80195B98 2130E002 */  addu       $a2, $s7, $zero
    /* CC24 80195B9C 2138A000 */  addu       $a3, $a1, $zero
    /* CC28 80195BA0 E0000924 */  addiu      $t1, $zero, 0xE0
    /* CC2C 80195BA4 1400A9AF */  sw         $t1, 0x14($sp)
    /* CC30 80195BA8 1800A9AF */  sw         $t1, 0x18($sp)
    /* CC34 80195BAC 1000A6AF */  sw         $a2, 0x10($sp)
    /* CC38 80195BB0 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CC3C 80195BB4 1759060C */  jal        func_8019645C
    /* CC40 80195BB8 2000B0AF */   sw        $s0, 0x20($sp)
    /* CC44 80195BBC 21200000 */  addu       $a0, $zero, $zero
    /* CC48 80195BC0 2128C002 */  addu       $a1, $s6, $zero
    /* CC4C 80195BC4 21308002 */  addu       $a2, $s4, $zero
    /* CC50 80195BC8 2138A000 */  addu       $a3, $a1, $zero
    /* CC54 80195BCC 60000924 */  addiu      $t1, $zero, 0x60
    /* CC58 80195BD0 1400A9AF */  sw         $t1, 0x14($sp)
    /* CC5C 80195BD4 1800A9AF */  sw         $t1, 0x18($sp)
    /* CC60 80195BD8 1000A6AF */  sw         $a2, 0x10($sp)
    /* CC64 80195BDC 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* CC68 80195BE0 1759060C */  jal        func_8019645C
    /* CC6C 80195BE4 2000B0AF */   sw        $s0, 0x20($sp)
    /* CC70 80195BE8 4000A98F */  lw         $t1, 0x40($sp)
    /* CC74 80195BEC 3800A78F */  lw         $a3, 0x38($sp)
    /* CC78 80195BF0 1000A9AF */  sw         $t1, 0x10($sp)
    /* CC7C 80195BF4 FBFFC293 */  lbu        $v0, -0x5($fp)
    /* CC80 80195BF8 00000000 */  nop
    /* CC84 80195BFC 1400A2AF */  sw         $v0, 0x14($sp)
    /* CC88 80195C00 FCFFC293 */  lbu        $v0, -0x4($fp)
    /* CC8C 80195C04 00000000 */  nop
    /* CC90 80195C08 1800A2AF */  sw         $v0, 0x18($sp)
    /* CC94 80195C0C FDFFC293 */  lbu        $v0, -0x3($fp)
    /* CC98 80195C10 21284002 */  addu       $a1, $s2, $zero
    /* CC9C 80195C14 2000B0AF */  sw         $s0, 0x20($sp)
    /* CCA0 80195C18 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* CCA4 80195C1C EFFFC48F */  lw         $a0, -0x11($fp)
    /* CCA8 80195C20 005A060C */  jal        func_80196800
    /* CCAC 80195C24 21306002 */   addu      $a2, $s3, $zero
    /* CCB0 80195C28 5A570608 */  j          .L80195D68
    /* CCB4 80195C2C 00000000 */   nop
  jlabel .L80195C30
    /* CCB8 80195C30 21200000 */  addu       $a0, $zero, $zero
    /* CCBC 80195C34 008C0500 */  sll        $s1, $a1, 16
    /* CCC0 80195C38 038C1100 */  sra        $s1, $s1, 16
    /* CCC4 80195C3C 21282002 */  addu       $a1, $s1, $zero
    /* CCC8 80195C40 FFFF9332 */  andi       $s3, $s4, 0xFFFF
    /* CCCC 80195C44 00840600 */  sll        $s0, $a2, 16
    /* CCD0 80195C48 03841000 */  sra        $s0, $s0, 16
    /* CCD4 80195C4C 21300002 */  addu       $a2, $s0, $zero
    /* CCD8 80195C50 1000B3AF */  sw         $s3, 0x10($sp)
    /* CCDC 80195C54 FEFFC293 */  lbu        $v0, -0x2($fp)
    /* CCE0 80195C58 FFFFF430 */  andi       $s4, $a3, 0xFFFF
    /* CCE4 80195C5C 1400A2AF */  sw         $v0, 0x14($sp)
    /* CCE8 80195C60 FFFFC293 */  lbu        $v0, -0x1($fp)
    /* CCEC 80195C64 21388002 */  addu       $a3, $s4, $zero
    /* CCF0 80195C68 1800A2AF */  sw         $v0, 0x18($sp)
    /* CCF4 80195C6C 0000C293 */  lbu        $v0, 0x0($fp)
    /* CCF8 80195C70 FFFF1231 */  andi       $s2, $t0, 0xFFFF
    /* CCFC 80195C74 2000B2AF */  sw         $s2, 0x20($sp)
    /* CD00 80195C78 6759060C */  jal        func_8019659C
    /* CD04 80195C7C 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* CD08 80195C80 1000B3AF */  sw         $s3, 0x10($sp)
    /* CD0C 80195C84 FBFFC293 */  lbu        $v0, -0x5($fp)
    /* CD10 80195C88 00000000 */  nop
    /* CD14 80195C8C 1400A2AF */  sw         $v0, 0x14($sp)
    /* CD18 80195C90 FCFFC293 */  lbu        $v0, -0x4($fp)
    /* CD1C 80195C94 21282002 */  addu       $a1, $s1, $zero
    /* CD20 80195C98 1800A2AF */  sw         $v0, 0x18($sp)
    /* CD24 80195C9C FDFFC293 */  lbu        $v0, -0x3($fp)
    /* CD28 80195CA0 21300002 */  addu       $a2, $s0, $zero
    /* CD2C 80195CA4 2000B2AF */  sw         $s2, 0x20($sp)
    /* CD30 80195CA8 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* CD34 80195CAC EFFFC48F */  lw         $a0, -0x11($fp)
    /* CD38 80195CB0 005A060C */  jal        func_80196800
    /* CD3C 80195CB4 21388002 */   addu      $a3, $s4, $zero
    /* CD40 80195CB8 5A570608 */  j          .L80195D68
    /* CD44 80195CBC 00000000 */   nop
  jlabel .L80195CC0
    /* CD48 80195CC0 EFFFC48F */  lw         $a0, -0x11($fp)
    /* CD4C 80195CC4 4800A58F */  lw         $a1, 0x48($sp)
    /* CD50 80195CC8 985A060C */  jal        func_80196A60
    /* CD54 80195CCC 21300001 */   addu      $a2, $t0, $zero
    /* CD58 80195CD0 5A570608 */  j          .L80195D68
    /* CD5C 80195CD4 00000000 */   nop
  jlabel .L80195CD8
    /* CD60 80195CD8 21200000 */  addu       $a0, $zero, $zero
    /* CD64 80195CDC 002C0500 */  sll        $a1, $a1, 16
    /* CD68 80195CE0 032C0500 */  sra        $a1, $a1, 16
    /* CD6C 80195CE4 00340600 */  sll        $a2, $a2, 16
    /* CD70 80195CE8 1000B4AF */  sw         $s4, 0x10($sp)
    /* CD74 80195CEC FEFFC293 */  lbu        $v0, -0x2($fp)
    /* CD78 80195CF0 03340600 */  sra        $a2, $a2, 16
    /* CD7C 80195CF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* CD80 80195CF8 FFFFC293 */  lbu        $v0, -0x1($fp)
    /* CD84 80195CFC 00000000 */  nop
    /* CD88 80195D00 1800A2AF */  sw         $v0, 0x18($sp)
    /* CD8C 80195D04 0000C293 */  lbu        $v0, 0x0($fp)
    /* CD90 80195D08 FFFF1031 */  andi       $s0, $t0, 0xFFFF
    /* CD94 80195D0C 2000B0AF */  sw         $s0, 0x20($sp)
    /* CD98 80195D10 6759060C */  jal        func_8019659C
    /* CD9C 80195D14 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* CDA0 80195D18 4800A58F */  lw         $a1, 0x48($sp)
    /* CDA4 80195D1C EFFFC48F */  lw         $a0, -0x11($fp)
    /* CDA8 80195D20 985A060C */  jal        func_80196A60
    /* CDAC 80195D24 21300002 */   addu      $a2, $s0, $zero
    /* CDB0 80195D28 5A570608 */  j          .L80195D68
    /* CDB4 80195D2C 00000000 */   nop
  jlabel .L80195D30
    /* CDB8 80195D30 21200000 */  addu       $a0, $zero, $zero
    /* CDBC 80195D34 002C0500 */  sll        $a1, $a1, 16
    /* CDC0 80195D38 032C0500 */  sra        $a1, $a1, 16
    /* CDC4 80195D3C 1000B4AF */  sw         $s4, 0x10($sp)
    /* CDC8 80195D40 FEFFC293 */  lbu        $v0, -0x2($fp)
    /* CDCC 80195D44 00340600 */  sll        $a2, $a2, 16
    /* CDD0 80195D48 1400A2AF */  sw         $v0, 0x14($sp)
    /* CDD4 80195D4C FFFFC293 */  lbu        $v0, -0x1($fp)
    /* CDD8 80195D50 03340600 */  sra        $a2, $a2, 16
    /* CDDC 80195D54 1800A2AF */  sw         $v0, 0x18($sp)
    /* CDE0 80195D58 0000C293 */  lbu        $v0, 0x0($fp)
    /* CDE4 80195D5C 2000A8AF */  sw         $t0, 0x20($sp)
    /* CDE8 80195D60 6759060C */  jal        func_8019659C
    /* CDEC 80195D64 1C00A2AF */   sw        $v0, 0x1C($sp)
  .L80195D68:
    /* CDF0 80195D68 3000A98F */  lw         $t1, 0x30($sp)
    /* CDF4 80195D6C 00000000 */  nop
    /* CDF8 80195D70 01002925 */  addiu      $t1, $t1, 0x1
    /* CDFC 80195D74 3000A9AF */  sw         $t1, 0x30($sp)
    /* CE00 80195D78 4800A98F */  lw         $t1, 0x48($sp)
    /* CE04 80195D7C 00000000 */  nop
    /* CE08 80195D80 1C002925 */  addiu      $t1, $t1, 0x1C
    /* CE0C 80195D84 4800A9AF */  sw         $t1, 0x48($sp)
    /* CE10 80195D88 2800A98F */  lw         $t1, 0x28($sp)
    /* CE14 80195D8C 00000000 */  nop
    /* CE18 80195D90 1C002925 */  addiu      $t1, $t1, 0x1C
    /* CE1C 80195D94 2800A9AF */  sw         $t1, 0x28($sp)
    /* CE20 80195D98 3000A98F */  lw         $t1, 0x30($sp)
    /* CE24 80195D9C 00000000 */  nop
    /* CE28 80195DA0 14002229 */  slti       $v0, $t1, 0x14
    /* CE2C 80195DA4 F9FE4014 */  bnez       $v0, .L8019598C
    /* CE30 80195DA8 1C00DE27 */   addiu     $fp, $fp, 0x1C
    /* CE34 80195DAC 7400BF8F */  lw         $ra, 0x74($sp)
    /* CE38 80195DB0 7000BE8F */  lw         $fp, 0x70($sp)
    /* CE3C 80195DB4 6C00B78F */  lw         $s7, 0x6C($sp)
    /* CE40 80195DB8 6800B68F */  lw         $s6, 0x68($sp)
    /* CE44 80195DBC 6400B58F */  lw         $s5, 0x64($sp)
    /* CE48 80195DC0 6000B48F */  lw         $s4, 0x60($sp)
    /* CE4C 80195DC4 5C00B38F */  lw         $s3, 0x5C($sp)
    /* CE50 80195DC8 5800B28F */  lw         $s2, 0x58($sp)
    /* CE54 80195DCC 5400B18F */  lw         $s1, 0x54($sp)
    /* CE58 80195DD0 5000B08F */  lw         $s0, 0x50($sp)
    /* CE5C 80195DD4 7800BD27 */  addiu      $sp, $sp, 0x78
    /* CE60 80195DD8 0800E003 */  jr         $ra
    /* CE64 80195DDC 00000000 */   nop
endlabel func_80195944
