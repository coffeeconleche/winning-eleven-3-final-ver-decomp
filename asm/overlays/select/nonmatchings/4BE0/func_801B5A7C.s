nonmatching func_801B5A7C, 0x1648

glabel func_801B5A7C
    /* 2CB04 801B5A7C 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 2CB08 801B5A80 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 2CB0C 801B5A84 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2CB10 801B5A88 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2CB14 801B5A8C 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 2CB18 801B5A90 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 2CB1C 801B5A94 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2CB20 801B5A98 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2CB24 801B5A9C 1E80013C */  lui        $at, %hi(D_801D8A48)
    /* 2CB28 801B5AA0 488A20A0 */  sb         $zero, %lo(D_801D8A48)($at)
    /* 2CB2C 801B5AA4 CE00622C */  sltiu      $v0, $v1, 0xCE
    /* 2CB30 801B5AA8 80054010 */  beqz       $v0, .L801B70AC
    /* 2CB34 801B5AAC 801F113C */   lui       $s1, (0x1F8002A2 >> 16)
    /* 2CB38 801B5AB0 80100300 */  sll        $v0, $v1, 2
    /* 2CB3C 801B5AB4 1980013C */  lui        $at, %hi(jtbl_8018ADC4)
    /* 2CB40 801B5AB8 21082200 */  addu       $at, $at, $v0
    /* 2CB44 801B5ABC C4AD228C */  lw         $v0, %lo(jtbl_8018ADC4)($at)
    /* 2CB48 801B5AC0 00000000 */  nop
    /* 2CB4C 801B5AC4 08004000 */  jr         $v0
    /* 2CB50 801B5AC8 00000000 */   nop
  jlabel .L801B5ACC
    /* 2CB54 801B5ACC C2E1060C */  jal        func_801B8708
    /* 2CB58 801B5AD0 21200000 */   addu      $a0, $zero, $zero
    /* 2CB5C 801B5AD4 153F010C */  jal        func_8004FC54
    /* 2CB60 801B5AD8 21200000 */   addu      $a0, $zero, $zero
    /* 2CB64 801B5ADC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2CB68 801B5AE0 28DC0608 */  j          .L801B70A0
    /* 2CB6C 801B5AE4 A20220A2 */   sb        $zero, (0x1F8002A2 & 0xFFFF)($s1)
  jlabel .L801B5AE8
    /* 2CB70 801B5AE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CB74 801B5AEC 21080102 */  addu       $at, $s0, $at
    /* 2CB78 801B5AF0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CB7C 801B5AF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CB80 801B5AF8 21080102 */  addu       $at, $s0, $at
    /* 2CB84 801B5AFC 238F20A0 */  sb         $zero, -0x70DD($at)
    /* 2CB88 801B5B00 1E80013C */  lui        $at, %hi(D_801DADB6)
    /* 2CB8C 801B5B04 B6AD20A0 */  sb         $zero, %lo(D_801DADB6)($at)
    /* 2CB90 801B5B08 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* 2CB94 801B5B0C 188B20A0 */  sb         $zero, %lo(D_801D8B18)($at)
    /* 2CB98 801B5B10 28DC0608 */  j          .L801B70A0
    /* 2CB9C 801B5B14 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B5B18
    /* 2CBA0 801B5B18 35E3060C */  jal        func_801B8CD4
    /* 2CBA4 801B5B1C 00000000 */   nop
    /* 2CBA8 801B5B20 1E80023C */  lui        $v0, %hi(D_801DA618)
    /* 2CBAC 801B5B24 18A64290 */  lbu        $v0, %lo(D_801DA618)($v0)
    /* 2CBB0 801B5B28 00000000 */  nop
    /* 2CBB4 801B5B2C 06004010 */  beqz       $v0, .L801B5B48
    /* 2CBB8 801B5B30 00000000 */   nop
    /* 2CBBC 801B5B34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CBC0 801B5B38 21080102 */  addu       $at, $s0, $at
    /* 2CBC4 801B5B3C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CBC8 801B5B40 28DC0608 */  j          .L801B70A0
    /* 2CBCC 801B5B44 01004224 */   addiu     $v0, $v0, 0x1
  .L801B5B48:
    /* 2CBD0 801B5B48 88E2060C */  jal        func_801B8A20
    /* 2CBD4 801B5B4C 00000000 */   nop
    /* 2CBD8 801B5B50 01000424 */  addiu      $a0, $zero, 0x1
    /* 2CBDC 801B5B54 ECE2060C */  jal        func_801B8BB0
    /* 2CBE0 801B5B58 02000524 */   addiu     $a1, $zero, 0x2
    /* 2CBE4 801B5B5C 05000424 */  addiu      $a0, $zero, 0x5
    /* 2CBE8 801B5B60 ECE2060C */  jal        func_801B8BB0
    /* 2CBEC 801B5B64 03000524 */   addiu     $a1, $zero, 0x3
    /* 2CBF0 801B5B68 36E1060C */  jal        func_801B84D8
    /* 2CBF4 801B5B6C 21200000 */   addu      $a0, $zero, $zero
    /* 2CBF8 801B5B70 2BDC0608 */  j          .L801B70AC
    /* 2CBFC 801B5B74 00000000 */   nop
  jlabel .L801B5B78
    /* 2CC00 801B5B78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC04 801B5B7C 21080102 */  addu       $at, $s0, $at
    /* 2CC08 801B5B80 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 2CC0C 801B5B84 82A6060C */  jal        func_801A9A08
    /* 2CC10 801B5B88 00000000 */   nop
    /* 2CC14 801B5B8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC18 801B5B90 21080102 */  addu       $at, $s0, $at
    /* 2CC1C 801B5B94 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CC20 801B5B98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC24 801B5B9C 21080102 */  addu       $at, $s0, $at
    /* 2CC28 801B5BA0 A7AB20A0 */  sb         $zero, -0x5459($at)
    /* 2CC2C 801B5BA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC30 801B5BA8 21080102 */  addu       $at, $s0, $at
    /* 2CC34 801B5BAC A5AB20A0 */  sb         $zero, -0x545B($at)
    /* 2CC38 801B5BB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC3C 801B5BB4 21080102 */  addu       $at, $s0, $at
    /* 2CC40 801B5BB8 A6AB20A0 */  sb         $zero, -0x545A($at)
    /* 2CC44 801B5BBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC48 801B5BC0 21080102 */  addu       $at, $s0, $at
    /* 2CC4C 801B5BC4 A4AB20A0 */  sb         $zero, -0x545C($at)
    /* 2CC50 801B5BC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC54 801B5BCC 21080102 */  addu       $at, $s0, $at
    /* 2CC58 801B5BD0 A3AB20A0 */  sb         $zero, -0x545D($at)
    /* 2CC5C 801B5BD4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC60 801B5BD8 21080102 */  addu       $at, $s0, $at
    /* 2CC64 801B5BDC A2AB20A0 */  sb         $zero, -0x545E($at)
    /* 2CC68 801B5BE0 28DC0608 */  j          .L801B70A0
    /* 2CC6C 801B5BE4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B5BE8
    /* 2CC70 801B5BE8 E2022292 */  lbu        $v0, 0x2E2($s1)
    /* 2CC74 801B5BEC 04000324 */  addiu      $v1, $zero, 0x4
    /* 2CC78 801B5BF0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2CC7C 801B5BF4 2A054314 */  bne        $v0, $v1, .L801B70A0
    /* 2CC80 801B5BF8 14000224 */   addiu     $v0, $zero, 0x14
    /* 2CC84 801B5BFC 28DC0608 */  j          .L801B70A0
    /* 2CC88 801B5C00 28000224 */   addiu     $v0, $zero, 0x28
  jlabel .L801B5C04
    /* 2CC8C 801B5C04 01000224 */  addiu      $v0, $zero, 0x1
    /* 2CC90 801B5C08 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 2CC94 801B5C0C F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 2CC98 801B5C10 40E4060C */  jal        func_801B9100
    /* 2CC9C 801B5C14 00000000 */   nop
    /* 2CCA0 801B5C18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CCA4 801B5C1C 21080102 */  addu       $at, $s0, $at
    /* 2CCA8 801B5C20 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CCAC 801B5C24 28DC0608 */  j          .L801B70A0
    /* 2CCB0 801B5C28 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B5C2C
    /* 2CCB4 801B5C2C 1FBC010C */  jal        func_8006F07C
    /* 2CCB8 801B5C30 10000424 */   addiu     $a0, $zero, 0x10
    /* 2CCBC 801B5C34 1D054010 */  beqz       $v0, .L801B70AC
    /* 2CCC0 801B5C38 00000000 */   nop
    /* 2CCC4 801B5C3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CCC8 801B5C40 21080102 */  addu       $at, $s0, $at
    /* 2CCCC 801B5C44 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CCD0 801B5C48 28DC0608 */  j          .L801B70A0
    /* 2CCD4 801B5C4C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B5C50
    /* 2CCD8 801B5C50 40000424 */  addiu      $a0, $zero, 0x40
    /* 2CCDC 801B5C54 37BC010C */  jal        func_8006F0DC
    /* 2CCE0 801B5C58 01000524 */   addiu     $a1, $zero, 0x1
    /* 2CCE4 801B5C5C 13054010 */  beqz       $v0, .L801B70AC
    /* 2CCE8 801B5C60 1E000224 */   addiu     $v0, $zero, 0x1E
    /* 2CCEC 801B5C64 28DC0608 */  j          .L801B70A0
    /* 2CCF0 801B5C68 00000000 */   nop
  jlabel .L801B5C6C
    /* 2CCF4 801B5C6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CCF8 801B5C70 21080102 */  addu       $at, $s0, $at
    /* 2CCFC 801B5C74 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2CD00 801B5C78 00000000 */  nop
    /* 2CD04 801B5C7C 20004230 */  andi       $v0, $v0, 0x20
    /* 2CD08 801B5C80 07054014 */  bnez       $v0, .L801B70A0
    /* 2CD0C 801B5C84 28000224 */   addiu     $v0, $zero, 0x28
    /* 2CD10 801B5C88 51E4060C */  jal        func_801B9144
    /* 2CD14 801B5C8C 21200000 */   addu      $a0, $zero, $zero
    /* 2CD18 801B5C90 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CD1C 801B5C94 21080102 */  addu       $at, $s0, $at
    /* 2CD20 801B5C98 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2CD24 801B5C9C 1E80013C */  lui        $at, %hi(D_801D8802)
    /* 2CD28 801B5CA0 028822A0 */  sb         $v0, %lo(D_801D8802)($at)
    /* 2CD2C 801B5CA4 9FDB0608 */  j          .L801B6E7C
    /* 2CD30 801B5CA8 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801B5CAC
    /* 2CD34 801B5CAC 1FBC010C */  jal        func_8006F07C
    /* 2CD38 801B5CB0 10000424 */   addiu     $a0, $zero, 0x10
    /* 2CD3C 801B5CB4 FD044010 */  beqz       $v0, .L801B70AC
    /* 2CD40 801B5CB8 00000000 */   nop
    /* 2CD44 801B5CBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CD48 801B5CC0 21080102 */  addu       $at, $s0, $at
    /* 2CD4C 801B5CC4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CD50 801B5CC8 28DC0608 */  j          .L801B70A0
    /* 2CD54 801B5CCC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B5CD0
    /* 2CD58 801B5CD0 14E1060C */  jal        func_801B8450
    /* 2CD5C 801B5CD4 21200000 */   addu      $a0, $zero, $zero
    /* 2CD60 801B5CD8 01000424 */  addiu      $a0, $zero, 0x1
    /* 2CD64 801B5CDC 01000524 */  addiu      $a1, $zero, 0x1
    /* 2CD68 801B5CE0 BD3A060C */  jal        func_8018EAF4
    /* 2CD6C 801B5CE4 21300000 */   addu      $a2, $zero, $zero
    /* 2CD70 801B5CE8 51DA0608 */  j          .L801B6944
    /* 2CD74 801B5CEC 00000000 */   nop
  jlabel .L801B5CF0
    /* 2CD78 801B5CF0 14E1060C */  jal        func_801B8450
    /* 2CD7C 801B5CF4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2CD80 801B5CF8 40000424 */  addiu      $a0, $zero, 0x40
    /* 2CD84 801B5CFC 37BC010C */  jal        func_8006F0DC
    /* 2CD88 801B5D00 01000524 */   addiu     $a1, $zero, 0x1
    /* 2CD8C 801B5D04 E9044010 */  beqz       $v0, .L801B70AC
    /* 2CD90 801B5D08 02000224 */   addiu     $v0, $zero, 0x2
    /* 2CD94 801B5D0C 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 2CD98 801B5D10 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 2CD9C 801B5D14 00000000 */  nop
    /* 2CDA0 801B5D18 E1046214 */  bne        $v1, $v0, .L801B70A0
    /* 2CDA4 801B5D1C 14000224 */   addiu     $v0, $zero, 0x14
    /* 2CDA8 801B5D20 28DC0608 */  j          .L801B70A0
    /* 2CDAC 801B5D24 28000224 */   addiu     $v0, $zero, 0x28
  jlabel .L801B5D28
    /* 2CDB0 801B5D28 36E1060C */  jal        func_801B84D8
    /* 2CDB4 801B5D2C 21200000 */   addu      $a0, $zero, $zero
    /* 2CDB8 801B5D30 E2022292 */  lbu        $v0, 0x2E2($s1)
    /* 2CDBC 801B5D34 04000324 */  addiu      $v1, $zero, 0x4
    /* 2CDC0 801B5D38 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2CDC4 801B5D3C 0D004314 */  bne        $v0, $v1, .L801B5D74
    /* 2CDC8 801B5D40 00000000 */   nop
    /* 2CDCC 801B5D44 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CDD0 801B5D48 21080102 */  addu       $at, $s0, $at
    /* 2CDD4 801B5D4C 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2CDD8 801B5D50 00000000 */  nop
    /* 2CDDC 801B5D54 20004230 */  andi       $v0, $v0, 0x20
    /* 2CDE0 801B5D58 02004014 */  bnez       $v0, .L801B5D64
    /* 2CDE4 801B5D5C 01000424 */   addiu     $a0, $zero, 0x1
    /* 2CDE8 801B5D60 21200000 */  addu       $a0, $zero, $zero
  .L801B5D64:
    /* 2CDEC 801B5D64 F1A9060C */  jal        func_801AA7C4
    /* 2CDF0 801B5D68 00000000 */   nop
    /* 2CDF4 801B5D6C 28DC0608 */  j          .L801B70A0
    /* 2CDF8 801B5D70 32000224 */   addiu     $v0, $zero, 0x32
  .L801B5D74:
    /* 2CDFC 801B5D74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CE00 801B5D78 21080102 */  addu       $at, $s0, $at
    /* 2CE04 801B5D7C 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2CE08 801B5D80 00000000 */  nop
    /* 2CE0C 801B5D84 20004230 */  andi       $v0, $v0, 0x20
    /* 2CE10 801B5D88 35014014 */  bnez       $v0, .L801B6260
    /* 2CE14 801B5D8C 00000000 */   nop
    /* 2CE18 801B5D90 A4AC060C */  jal        func_801AB290
    /* 2CE1C 801B5D94 21200000 */   addu      $a0, $zero, $zero
    /* 2CE20 801B5D98 2BDC0608 */  j          .L801B70AC
    /* 2CE24 801B5D9C 00000000 */   nop
  jlabel .L801B5DA0
    /* 2CE28 801B5DA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2CE2C 801B5DA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CE30 801B5DA8 21080102 */  addu       $at, $s0, $at
    /* 2CE34 801B5DAC 238F22A0 */  sb         $v0, -0x70DD($at)
    /* 2CE38 801B5DB0 C2E1060C */  jal        func_801B8708
    /* 2CE3C 801B5DB4 21200000 */   addu      $a0, $zero, $zero
    /* 2CE40 801B5DB8 35E3060C */  jal        func_801B8CD4
    /* 2CE44 801B5DBC 00000000 */   nop
    /* 2CE48 801B5DC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CE4C 801B5DC4 21080102 */  addu       $at, $s0, $at
    /* 2CE50 801B5DC8 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 2CE54 801B5DCC 82A6060C */  jal        func_801A9A08
    /* 2CE58 801B5DD0 00000000 */   nop
    /* 2CE5C 801B5DD4 D1022292 */  lbu        $v0, 0x2D1($s1)
    /* 2CE60 801B5DD8 D2022392 */  lbu        $v1, 0x2D2($s1)
    /* 2CE64 801B5DDC D3022492 */  lbu        $a0, 0x2D3($s1)
    /* 2CE68 801B5DE0 D7022592 */  lbu        $a1, 0x2D7($s1)
    /* 2CE6C 801B5DE4 D4022692 */  lbu        $a2, 0x2D4($s1)
    /* 2CE70 801B5DE8 D8022792 */  lbu        $a3, 0x2D8($s1)
    /* 2CE74 801B5DEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CE78 801B5DF0 21080102 */  addu       $at, $s0, $at
    /* 2CE7C 801B5DF4 A2AB22A0 */  sb         $v0, -0x545E($at)
    /* 2CE80 801B5DF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CE84 801B5DFC 21080102 */  addu       $at, $s0, $at
    /* 2CE88 801B5E00 A3AB23A0 */  sb         $v1, -0x545D($at)
    /* 2CE8C 801B5E04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CE90 801B5E08 21080102 */  addu       $at, $s0, $at
    /* 2CE94 801B5E0C A4AB24A0 */  sb         $a0, -0x545C($at)
    /* 2CE98 801B5E10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CE9C 801B5E14 21080102 */  addu       $at, $s0, $at
    /* 2CEA0 801B5E18 A6AB25A0 */  sb         $a1, -0x545A($at)
    /* 2CEA4 801B5E1C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CEA8 801B5E20 21080102 */  addu       $at, $s0, $at
    /* 2CEAC 801B5E24 A5AB26A0 */  sb         $a2, -0x545B($at)
    /* 2CEB0 801B5E28 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CEB4 801B5E2C 21080102 */  addu       $at, $s0, $at
    /* 2CEB8 801B5E30 A7AB27A0 */  sb         $a3, -0x5459($at)
    /* 2CEBC 801B5E34 15A7060C */  jal        func_801A9C54
    /* 2CEC0 801B5E38 00000000 */   nop
    /* 2CEC4 801B5E3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CEC8 801B5E40 21080102 */  addu       $at, $s0, $at
    /* 2CECC 801B5E44 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 2CED0 801B5E48 00000000 */  nop
    /* 2CED4 801B5E4C C0100300 */  sll        $v0, $v1, 3
    /* 2CED8 801B5E50 21104300 */  addu       $v0, $v0, $v1
    /* 2CEDC 801B5E54 80100200 */  sll        $v0, $v0, 2
    /* 2CEE0 801B5E58 21100202 */  addu       $v0, $s0, $v0
    /* 2CEE4 801B5E5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CEE8 801B5E60 21084100 */  addu       $at, $v0, $at
    /* 2CEEC 801B5E64 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 2CEF0 801B5E68 00000000 */  nop
    /* 2CEF4 801B5E6C 01006324 */  addiu      $v1, $v1, 0x1
    /* 2CEF8 801B5E70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CEFC 801B5E74 21084100 */  addu       $at, $v0, $at
    /* 2CF00 801B5E78 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 2CF04 801B5E7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CF08 801B5E80 21080102 */  addu       $at, $s0, $at
    /* 2CF0C 801B5E84 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2CF10 801B5E88 00000000 */  nop
    /* 2CF14 801B5E8C C0100300 */  sll        $v0, $v1, 3
    /* 2CF18 801B5E90 21104300 */  addu       $v0, $v0, $v1
    /* 2CF1C 801B5E94 80100200 */  sll        $v0, $v0, 2
    /* 2CF20 801B5E98 21100202 */  addu       $v0, $s0, $v0
    /* 2CF24 801B5E9C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CF28 801B5EA0 21084100 */  addu       $at, $v0, $at
    /* 2CF2C 801B5EA4 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 2CF30 801B5EA8 00000000 */  nop
    /* 2CF34 801B5EAC 01006324 */  addiu      $v1, $v1, 0x1
    /* 2CF38 801B5EB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CF3C 801B5EB4 21084100 */  addu       $at, $v0, $at
    /* 2CF40 801B5EB8 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 2CF44 801B5EBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CF48 801B5EC0 21080102 */  addu       $at, $s0, $at
    /* 2CF4C 801B5EC4 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 2CF50 801B5EC8 00000000 */  nop
    /* 2CF54 801B5ECC C0100300 */  sll        $v0, $v1, 3
    /* 2CF58 801B5ED0 21104300 */  addu       $v0, $v0, $v1
    /* 2CF5C 801B5ED4 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2CF60 801B5ED8 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2CF64 801B5EDC 80100200 */  sll        $v0, $v0, 2
    /* 2CF68 801B5EE0 05006390 */  lbu        $v1, 0x5($v1)
    /* 2CF6C 801B5EE4 21100202 */  addu       $v0, $s0, $v0
    /* 2CF70 801B5EE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CF74 801B5EEC 21084100 */  addu       $at, $v0, $at
    /* 2CF78 801B5EF0 378F23A0 */  sb         $v1, -0x70C9($at)
    /* 2CF7C 801B5EF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CF80 801B5EF8 21080102 */  addu       $at, $s0, $at
    /* 2CF84 801B5EFC A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2CF88 801B5F00 00000000 */  nop
    /* 2CF8C 801B5F04 C0100300 */  sll        $v0, $v1, 3
    /* 2CF90 801B5F08 21104300 */  addu       $v0, $v0, $v1
    /* 2CF94 801B5F0C 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2CF98 801B5F10 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2CF9C 801B5F14 80100200 */  sll        $v0, $v0, 2
    /* 2CFA0 801B5F18 05006390 */  lbu        $v1, 0x5($v1)
    /* 2CFA4 801B5F1C 21100202 */  addu       $v0, $s0, $v0
    /* 2CFA8 801B5F20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CFAC 801B5F24 21084100 */  addu       $at, $v0, $at
    /* 2CFB0 801B5F28 378F23A0 */  sb         $v1, -0x70C9($at)
    /* 2CFB4 801B5F2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CFB8 801B5F30 21080102 */  addu       $at, $s0, $at
    /* 2CFBC 801B5F34 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CFC0 801B5F38 28DC0608 */  j          .L801B70A0
    /* 2CFC4 801B5F3C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B5F40
    /* 2CFC8 801B5F40 36E1060C */  jal        func_801B84D8
    /* 2CFCC 801B5F44 21200000 */   addu      $a0, $zero, $zero
    /* 2CFD0 801B5F48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CFD4 801B5F4C 21080102 */  addu       $at, $s0, $at
    /* 2CFD8 801B5F50 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2CFDC 801B5F54 00000000 */  nop
    /* 2CFE0 801B5F58 20004230 */  andi       $v0, $v0, 0x20
    /* 2CFE4 801B5F5C 4D004010 */  beqz       $v0, .L801B6094
    /* 2CFE8 801B5F60 00000000 */   nop
    /* 2CFEC 801B5F64 D1022292 */  lbu        $v0, 0x2D1($s1)
    /* 2CFF0 801B5F68 DB022492 */  lbu        $a0, 0x2DB($s1)
    /* 2CFF4 801B5F6C D2022392 */  lbu        $v1, 0x2D2($s1)
    /* 2CFF8 801B5F70 DC022592 */  lbu        $a1, 0x2DC($s1)
    /* 2CFFC 801B5F74 21104400 */  addu       $v0, $v0, $a0
    /* 2D000 801B5F78 21186500 */  addu       $v1, $v1, $a1
    /* 2D004 801B5F7C 1E80013C */  lui        $at, %hi(D_801DA333)
    /* 2D008 801B5F80 33A322A0 */  sb         $v0, %lo(D_801DA333)($at)
    /* 2D00C 801B5F84 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D010 801B5F88 1E80013C */  lui        $at, %hi(D_801DA334)
    /* 2D014 801B5F8C 34A323A0 */  sb         $v1, %lo(D_801DA334)($at)
    /* 2D018 801B5F90 FF006330 */  andi       $v1, $v1, 0xFF
    /* 2D01C 801B5F94 2B104300 */  sltu       $v0, $v0, $v1
    /* 2D020 801B5F98 09004014 */  bnez       $v0, .L801B5FC0
    /* 2D024 801B5F9C 00000000 */   nop
    /* 2D028 801B5FA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D02C 801B5FA4 21080102 */  addu       $at, $s0, $at
    /* 2D030 801B5FA8 A0AB2290 */  lbu        $v0, -0x5460($at)
    /* 2D034 801B5FAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D038 801B5FB0 21080102 */  addu       $at, $s0, $at
    /* 2D03C 801B5FB4 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2D040 801B5FB8 F6D70608 */  j          .L801B5FD8
    /* 2D044 801B5FBC 00000000 */   nop
  .L801B5FC0:
    /* 2D048 801B5FC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D04C 801B5FC4 21080102 */  addu       $at, $s0, $at
    /* 2D050 801B5FC8 A1AB2290 */  lbu        $v0, -0x545F($at)
    /* 2D054 801B5FCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D058 801B5FD0 21080102 */  addu       $at, $s0, $at
    /* 2D05C 801B5FD4 A0AB2390 */  lbu        $v1, -0x5460($at)
  .L801B5FD8:
    /* 2D060 801B5FD8 1E80013C */  lui        $at, %hi(D_801D8800)
    /* 2D064 801B5FDC 008822A0 */  sb         $v0, %lo(D_801D8800)($at)
    /* 2D068 801B5FE0 1E80013C */  lui        $at, %hi(D_801D8800 + 0x1)
    /* 2D06C 801B5FE4 018823A0 */  sb         $v1, %lo(D_801D8800 + 0x1)($at)
    /* 2D070 801B5FE8 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2D074 801B5FEC 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2D078 801B5FF0 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D07C 801B5FF4 060062A0 */  sb         $v0, 0x6($v1)
    /* 2D080 801B5FF8 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2D084 801B5FFC 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2D088 801B6000 1E80023C */  lui        $v0, %hi(D_801D8800)
    /* 2D08C 801B6004 00884290 */  lbu        $v0, %lo(D_801D8800)($v0)
    /* 2D090 801B6008 00000000 */  nop
    /* 2D094 801B600C 070062A0 */  sb         $v0, 0x7($v1)
    /* 2D098 801B6010 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2D09C 801B6014 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2D0A0 801B6018 1E80023C */  lui        $v0, %hi(D_801D8800 + 0x1)
    /* 2D0A4 801B601C 01884290 */  lbu        $v0, %lo(D_801D8800 + 0x1)($v0)
    /* 2D0A8 801B6020 00000000 */  nop
    /* 2D0AC 801B6024 080062A0 */  sb         $v0, 0x8($v1)
    /* 2D0B0 801B6028 1E80023C */  lui        $v0, %hi(D_801D8800 + 0x1)
    /* 2D0B4 801B602C 01884290 */  lbu        $v0, %lo(D_801D8800 + 0x1)($v0)
    /* 2D0B8 801B6030 00000000 */  nop
    /* 2D0BC 801B6034 21100202 */  addu       $v0, $s0, $v0
    /* 2D0C0 801B6038 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D0C4 801B603C 21084100 */  addu       $at, $v0, $at
    /* 2D0C8 801B6040 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 2D0CC 801B6044 00000000 */  nop
    /* 2D0D0 801B6048 C0100300 */  sll        $v0, $v1, 3
    /* 2D0D4 801B604C 21104300 */  addu       $v0, $v0, $v1
    /* 2D0D8 801B6050 80100200 */  sll        $v0, $v0, 2
    /* 2D0DC 801B6054 21100202 */  addu       $v0, $s0, $v0
    /* 2D0E0 801B6058 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D0E4 801B605C 21084100 */  addu       $at, $v0, $at
    /* 2D0E8 801B6060 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 2D0EC 801B6064 00000000 */  nop
    /* 2D0F0 801B6068 C0004230 */  andi       $v0, $v0, 0xC0
    /* 2D0F4 801B606C 09004014 */  bnez       $v0, .L801B6094
    /* 2D0F8 801B6070 00000000 */   nop
    /* 2D0FC 801B6074 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D100 801B6078 21080102 */  addu       $at, $s0, $at
    /* 2D104 801B607C 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 2D108 801B6080 00000000 */  nop
    /* 2D10C 801B6084 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2D110 801B6088 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D114 801B608C 21080102 */  addu       $at, $s0, $at
    /* 2D118 801B6090 218F22A0 */  sb         $v0, -0x70DF($at)
  .L801B6094:
    /* 2D11C 801B6094 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D120 801B6098 21080102 */  addu       $at, $s0, $at
    /* 2D124 801B609C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D128 801B60A0 28DC0608 */  j          .L801B70A0
    /* 2D12C 801B60A4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B60A8
    /* 2D130 801B60A8 E2022292 */  lbu        $v0, 0x2E2($s1)
    /* 2D134 801B60AC 04000324 */  addiu      $v1, $zero, 0x4
    /* 2D138 801B60B0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D13C 801B60B4 0A004314 */  bne        $v0, $v1, .L801B60E0
    /* 2D140 801B60B8 00000000 */   nop
    /* 2D144 801B60BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D148 801B60C0 21080102 */  addu       $at, $s0, $at
    /* 2D14C 801B60C4 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2D150 801B60C8 00000000 */  nop
    /* 2D154 801B60CC 20004230 */  andi       $v0, $v0, 0x20
    /* 2D158 801B60D0 F3034014 */  bnez       $v0, .L801B70A0
    /* 2D15C 801B60D4 A0000224 */   addiu     $v0, $zero, 0xA0
    /* 2D160 801B60D8 28DC0608 */  j          .L801B70A0
    /* 2D164 801B60DC 5A000224 */   addiu     $v0, $zero, 0x5A
  .L801B60E0:
    /* 2D168 801B60E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D16C 801B60E4 21080102 */  addu       $at, $s0, $at
    /* 2D170 801B60E8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D174 801B60EC 28DC0608 */  j          .L801B70A0
    /* 2D178 801B60F0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B60F4
    /* 2D17C 801B60F4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D180 801B60F8 21080102 */  addu       $at, $s0, $at
    /* 2D184 801B60FC 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2D188 801B6100 00000000 */  nop
    /* 2D18C 801B6104 20004230 */  andi       $v0, $v0, 0x20
    /* 2D190 801B6108 E5034014 */  bnez       $v0, .L801B70A0
    /* 2D194 801B610C 82000224 */   addiu     $v0, $zero, 0x82
    /* 2D198 801B6110 28DC0608 */  j          .L801B70A0
    /* 2D19C 801B6114 3C000224 */   addiu     $v0, $zero, 0x3C
  jlabel .L801B6118
    /* 2D1A0 801B6118 51E4060C */  jal        func_801B9144
    /* 2D1A4 801B611C 01000424 */   addiu     $a0, $zero, 0x1
    /* 2D1A8 801B6120 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D1AC 801B6124 21080102 */  addu       $at, $s0, $at
    /* 2D1B0 801B6128 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2D1B4 801B612C 1E80013C */  lui        $at, %hi(D_801D8802)
    /* 2D1B8 801B6130 028822A0 */  sb         $v0, %lo(D_801D8802)($at)
    /* 2D1BC 801B6134 9FDB0608 */  j          .L801B6E7C
    /* 2D1C0 801B6138 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801B613C
    /* 2D1C4 801B613C 1FBC010C */  jal        func_8006F07C
    /* 2D1C8 801B6140 10000424 */   addiu     $a0, $zero, 0x10
    /* 2D1CC 801B6144 D9034010 */  beqz       $v0, .L801B70AC
    /* 2D1D0 801B6148 00000000 */   nop
    /* 2D1D4 801B614C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D1D8 801B6150 21080102 */  addu       $at, $s0, $at
    /* 2D1DC 801B6154 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D1E0 801B6158 28DC0608 */  j          .L801B70A0
    /* 2D1E4 801B615C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6160
    /* 2D1E8 801B6160 14E1060C */  jal        func_801B8450
    /* 2D1EC 801B6164 01000424 */   addiu     $a0, $zero, 0x1
    /* 2D1F0 801B6168 4FDA0608 */  j          .L801B693C
    /* 2D1F4 801B616C 01000424 */   addiu     $a0, $zero, 0x1
  jlabel .L801B6170
    /* 2D1F8 801B6170 14E1060C */  jal        func_801B8450
    /* 2D1FC 801B6174 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D200 801B6178 40000424 */  addiu      $a0, $zero, 0x40
    /* 2D204 801B617C 37BC010C */  jal        func_8006F0DC
    /* 2D208 801B6180 01000524 */   addiu     $a1, $zero, 0x1
    /* 2D20C 801B6184 C9034010 */  beqz       $v0, .L801B70AC
    /* 2D210 801B6188 46000224 */   addiu     $v0, $zero, 0x46
    /* 2D214 801B618C 28DC0608 */  j          .L801B70A0
    /* 2D218 801B6190 00000000 */   nop
  jlabel .L801B6194
    /* 2D21C 801B6194 02000224 */  addiu      $v0, $zero, 0x2
    /* 2D220 801B6198 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D224 801B619C 21080102 */  addu       $at, $s0, $at
    /* 2D228 801B61A0 238F22A0 */  sb         $v0, -0x70DD($at)
    /* 2D22C 801B61A4 35E3060C */  jal        func_801B8CD4
    /* 2D230 801B61A8 00000000 */   nop
    /* 2D234 801B61AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D238 801B61B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D23C 801B61B4 21080102 */  addu       $at, $s0, $at
    /* 2D240 801B61B8 158F22A0 */  sb         $v0, -0x70EB($at)
    /* 2D244 801B61BC 82A6060C */  jal        func_801A9A08
    /* 2D248 801B61C0 00000000 */   nop
    /* 2D24C 801B61C4 51E4060C */  jal        func_801B9144
    /* 2D250 801B61C8 02000424 */   addiu     $a0, $zero, 0x2
    /* 2D254 801B61CC 1E80013C */  lui        $at, %hi(D_801D8802)
    /* 2D258 801B61D0 028822A0 */  sb         $v0, %lo(D_801D8802)($at)
    /* 2D25C 801B61D4 28DC0608 */  j          .L801B70A0
    /* 2D260 801B61D8 50000224 */   addiu     $v0, $zero, 0x50
  jlabel .L801B61DC
    /* 2D264 801B61DC 1FBC010C */  jal        func_8006F07C
    /* 2D268 801B61E0 10000424 */   addiu     $a0, $zero, 0x10
    /* 2D26C 801B61E4 B1034010 */  beqz       $v0, .L801B70AC
    /* 2D270 801B61E8 00000000 */   nop
    /* 2D274 801B61EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D278 801B61F0 21080102 */  addu       $at, $s0, $at
    /* 2D27C 801B61F4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D280 801B61F8 28DC0608 */  j          .L801B70A0
    /* 2D284 801B61FC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6200
    /* 2D288 801B6200 14E1060C */  jal        func_801B8450
    /* 2D28C 801B6204 02000424 */   addiu     $a0, $zero, 0x2
    /* 2D290 801B6208 4FDA0608 */  j          .L801B693C
    /* 2D294 801B620C 01000424 */   addiu     $a0, $zero, 0x1
  jlabel .L801B6210
    /* 2D298 801B6210 14E1060C */  jal        func_801B8450
    /* 2D29C 801B6214 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D2A0 801B6218 40000424 */  addiu      $a0, $zero, 0x40
    /* 2D2A4 801B621C 37BC010C */  jal        func_8006F0DC
    /* 2D2A8 801B6220 01000524 */   addiu     $a1, $zero, 0x1
    /* 2D2AC 801B6224 A1034010 */  beqz       $v0, .L801B70AC
    /* 2D2B0 801B6228 5A000224 */   addiu     $v0, $zero, 0x5A
    /* 2D2B4 801B622C 28DC0608 */  j          .L801B70A0
    /* 2D2B8 801B6230 00000000 */   nop
  jlabel .L801B6234
    /* 2D2BC 801B6234 36E1060C */  jal        func_801B84D8
    /* 2D2C0 801B6238 21200000 */   addu      $a0, $zero, $zero
    /* 2D2C4 801B623C E2022292 */  lbu        $v0, 0x2E2($s1)
    /* 2D2C8 801B6240 04000324 */  addiu      $v1, $zero, 0x4
    /* 2D2CC 801B6244 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D2D0 801B6248 05004314 */  bne        $v0, $v1, .L801B6260
    /* 2D2D4 801B624C 00000000 */   nop
    /* 2D2D8 801B6250 F1A9060C */  jal        func_801AA7C4
    /* 2D2DC 801B6254 21200000 */   addu      $a0, $zero, $zero
    /* 2D2E0 801B6258 28DC0608 */  j          .L801B70A0
    /* 2D2E4 801B625C 64000224 */   addiu     $v0, $zero, 0x64
  .L801B6260:
    /* 2D2E8 801B6260 A4AC060C */  jal        func_801AB290
    /* 2D2EC 801B6264 01000424 */   addiu     $a0, $zero, 0x1
    /* 2D2F0 801B6268 2BDC0608 */  j          .L801B70AC
    /* 2D2F4 801B626C 00000000 */   nop
  jlabel .L801B6270
    /* 2D2F8 801B6270 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D2FC 801B6274 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D300 801B6278 21080102 */  addu       $at, $s0, $at
    /* 2D304 801B627C 238F22A0 */  sb         $v0, -0x70DD($at)
    /* 2D308 801B6280 C2E1060C */  jal        func_801B8708
    /* 2D30C 801B6284 21200000 */   addu      $a0, $zero, $zero
    /* 2D310 801B6288 35E3060C */  jal        func_801B8CD4
    /* 2D314 801B628C 00000000 */   nop
    /* 2D318 801B6290 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D31C 801B6294 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D320 801B6298 21080102 */  addu       $at, $s0, $at
    /* 2D324 801B629C 158F22A0 */  sb         $v0, -0x70EB($at)
    /* 2D328 801B62A0 82A6060C */  jal        func_801A9A08
    /* 2D32C 801B62A4 00000000 */   nop
    /* 2D330 801B62A8 15A7060C */  jal        func_801A9C54
    /* 2D334 801B62AC 00000000 */   nop
    /* 2D338 801B62B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D33C 801B62B4 21080102 */  addu       $at, $s0, $at
    /* 2D340 801B62B8 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 2D344 801B62BC 00000000 */  nop
    /* 2D348 801B62C0 C0100300 */  sll        $v0, $v1, 3
    /* 2D34C 801B62C4 21104300 */  addu       $v0, $v0, $v1
    /* 2D350 801B62C8 80100200 */  sll        $v0, $v0, 2
    /* 2D354 801B62CC 21100202 */  addu       $v0, $s0, $v0
    /* 2D358 801B62D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D35C 801B62D4 21084100 */  addu       $at, $v0, $at
    /* 2D360 801B62D8 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 2D364 801B62DC 00000000 */  nop
    /* 2D368 801B62E0 01006324 */  addiu      $v1, $v1, 0x1
    /* 2D36C 801B62E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D370 801B62E8 21084100 */  addu       $at, $v0, $at
    /* 2D374 801B62EC 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 2D378 801B62F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D37C 801B62F4 21080102 */  addu       $at, $s0, $at
    /* 2D380 801B62F8 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2D384 801B62FC 00000000 */  nop
    /* 2D388 801B6300 C0100300 */  sll        $v0, $v1, 3
    /* 2D38C 801B6304 21104300 */  addu       $v0, $v0, $v1
    /* 2D390 801B6308 80100200 */  sll        $v0, $v0, 2
    /* 2D394 801B630C 21100202 */  addu       $v0, $s0, $v0
    /* 2D398 801B6310 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D39C 801B6314 21084100 */  addu       $at, $v0, $at
    /* 2D3A0 801B6318 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 2D3A4 801B631C 00000000 */  nop
    /* 2D3A8 801B6320 01006324 */  addiu      $v1, $v1, 0x1
    /* 2D3AC 801B6324 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D3B0 801B6328 21084100 */  addu       $at, $v0, $at
    /* 2D3B4 801B632C 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 2D3B8 801B6330 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D3BC 801B6334 21080102 */  addu       $at, $s0, $at
    /* 2D3C0 801B6338 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 2D3C4 801B633C 00000000 */  nop
    /* 2D3C8 801B6340 C0100300 */  sll        $v0, $v1, 3
    /* 2D3CC 801B6344 21104300 */  addu       $v0, $v0, $v1
    /* 2D3D0 801B6348 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2D3D4 801B634C 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2D3D8 801B6350 80100200 */  sll        $v0, $v0, 2
    /* 2D3DC 801B6354 05006390 */  lbu        $v1, 0x5($v1)
    /* 2D3E0 801B6358 21100202 */  addu       $v0, $s0, $v0
    /* 2D3E4 801B635C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D3E8 801B6360 21084100 */  addu       $at, $v0, $at
    /* 2D3EC 801B6364 378F23A0 */  sb         $v1, -0x70C9($at)
    /* 2D3F0 801B6368 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D3F4 801B636C 21080102 */  addu       $at, $s0, $at
    /* 2D3F8 801B6370 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2D3FC 801B6374 00000000 */  nop
    /* 2D400 801B6378 C0100300 */  sll        $v0, $v1, 3
    /* 2D404 801B637C 21104300 */  addu       $v0, $v0, $v1
    /* 2D408 801B6380 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2D40C 801B6384 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2D410 801B6388 80100200 */  sll        $v0, $v0, 2
    /* 2D414 801B638C 05006390 */  lbu        $v1, 0x5($v1)
    /* 2D418 801B6390 21100202 */  addu       $v0, $s0, $v0
    /* 2D41C 801B6394 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D420 801B6398 21084100 */  addu       $at, $v0, $at
    /* 2D424 801B639C 378F23A0 */  sb         $v1, -0x70C9($at)
    /* 2D428 801B63A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D42C 801B63A4 21080102 */  addu       $at, $s0, $at
    /* 2D430 801B63A8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D434 801B63AC 28DC0608 */  j          .L801B70A0
    /* 2D438 801B63B0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B63B4
    /* 2D43C 801B63B4 E2022292 */  lbu        $v0, 0x2E2($s1)
    /* 2D440 801B63B8 04000324 */  addiu      $v1, $zero, 0x4
    /* 2D444 801B63BC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D448 801B63C0 4E004314 */  bne        $v0, $v1, .L801B64FC
    /* 2D44C 801B63C4 00000000 */   nop
    /* 2D450 801B63C8 AEE3060C */  jal        func_801B8EB8
    /* 2D454 801B63CC 00000000 */   nop
    /* 2D458 801B63D0 19004010 */  beqz       $v0, .L801B6438
    /* 2D45C 801B63D4 00000000 */   nop
    /* 2D460 801B63D8 D1022292 */  lbu        $v0, 0x2D1($s1)
    /* 2D464 801B63DC D2022392 */  lbu        $v1, 0x2D2($s1)
    /* 2D468 801B63E0 1E80013C */  lui        $at, %hi(D_801DA333)
    /* 2D46C 801B63E4 33A322A0 */  sb         $v0, %lo(D_801DA333)($at)
    /* 2D470 801B63E8 1E80013C */  lui        $at, %hi(D_801DA334)
    /* 2D474 801B63EC 34A323A0 */  sb         $v1, %lo(D_801DA334)($at)
    /* 2D478 801B63F0 F1A9060C */  jal        func_801AA7C4
    /* 2D47C 801B63F4 02000424 */   addiu     $a0, $zero, 0x2
    /* 2D480 801B63F8 D1022292 */  lbu        $v0, 0x2D1($s1)
    /* 2D484 801B63FC 1E80043C */  lui        $a0, %hi(D_801DA333)
    /* 2D488 801B6400 33A38490 */  lbu        $a0, %lo(D_801DA333)($a0)
    /* 2D48C 801B6404 D2022392 */  lbu        $v1, 0x2D2($s1)
    /* 2D490 801B6408 1E80053C */  lui        $a1, %hi(D_801DA334)
    /* 2D494 801B640C 34A3A590 */  lbu        $a1, %lo(D_801DA334)($a1)
    /* 2D498 801B6410 21104400 */  addu       $v0, $v0, $a0
    /* 2D49C 801B6414 D10222A2 */  sb         $v0, 0x2D1($s1)
    /* 2D4A0 801B6418 D1022292 */  lbu        $v0, 0x2D1($s1)
    /* 2D4A4 801B641C 21186500 */  addu       $v1, $v1, $a1
    /* 2D4A8 801B6420 D20223A2 */  sb         $v1, 0x2D2($s1)
    /* 2D4AC 801B6424 D2022392 */  lbu        $v1, 0x2D2($s1)
    /* 2D4B0 801B6428 1E80013C */  lui        $at, %hi(D_801DA333)
    /* 2D4B4 801B642C 33A322A0 */  sb         $v0, %lo(D_801DA333)($at)
    /* 2D4B8 801B6430 1E80013C */  lui        $at, %hi(D_801DA334)
    /* 2D4BC 801B6434 34A323A0 */  sb         $v1, %lo(D_801DA334)($at)
  .L801B6438:
    /* 2D4C0 801B6438 1E80023C */  lui        $v0, %hi(D_801DA333)
    /* 2D4C4 801B643C 33A34290 */  lbu        $v0, %lo(D_801DA333)($v0)
    /* 2D4C8 801B6440 1E80033C */  lui        $v1, %hi(D_801DA334)
    /* 2D4CC 801B6444 34A36390 */  lbu        $v1, %lo(D_801DA334)($v1)
    /* 2D4D0 801B6448 00000000 */  nop
    /* 2D4D4 801B644C 2B104300 */  sltu       $v0, $v0, $v1
    /* 2D4D8 801B6450 09004014 */  bnez       $v0, .L801B6478
    /* 2D4DC 801B6454 00000000 */   nop
    /* 2D4E0 801B6458 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D4E4 801B645C 21080102 */  addu       $at, $s0, $at
    /* 2D4E8 801B6460 A0AB2290 */  lbu        $v0, -0x5460($at)
    /* 2D4EC 801B6464 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D4F0 801B6468 21080102 */  addu       $at, $s0, $at
    /* 2D4F4 801B646C A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2D4F8 801B6470 24D90608 */  j          .L801B6490
    /* 2D4FC 801B6474 00000000 */   nop
  .L801B6478:
    /* 2D500 801B6478 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D504 801B647C 21080102 */  addu       $at, $s0, $at
    /* 2D508 801B6480 A1AB2290 */  lbu        $v0, -0x545F($at)
    /* 2D50C 801B6484 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D510 801B6488 21080102 */  addu       $at, $s0, $at
    /* 2D514 801B648C A0AB2390 */  lbu        $v1, -0x5460($at)
  .L801B6490:
    /* 2D518 801B6490 1E80013C */  lui        $at, %hi(D_801D8800)
    /* 2D51C 801B6494 008822A0 */  sb         $v0, %lo(D_801D8800)($at)
    /* 2D520 801B6498 1E80013C */  lui        $at, %hi(D_801D8800 + 0x1)
    /* 2D524 801B649C 018823A0 */  sb         $v1, %lo(D_801D8800 + 0x1)($at)
    /* 2D528 801B64A0 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2D52C 801B64A4 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2D530 801B64A8 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D534 801B64AC 060062A0 */  sb         $v0, 0x6($v1)
    /* 2D538 801B64B0 1E80023C */  lui        $v0, %hi(D_801D8A4C)
    /* 2D53C 801B64B4 4C8A428C */  lw         $v0, %lo(D_801D8A4C)($v0)
    /* 2D540 801B64B8 1E80033C */  lui        $v1, %hi(D_801D8800)
    /* 2D544 801B64BC 00886390 */  lbu        $v1, %lo(D_801D8800)($v1)
    /* 2D548 801B64C0 00000000 */  nop
    /* 2D54C 801B64C4 070043A0 */  sb         $v1, 0x7($v0)
    /* 2D550 801B64C8 1E80043C */  lui        $a0, %hi(D_801D8A4C)
    /* 2D554 801B64CC 4C8A848C */  lw         $a0, %lo(D_801D8A4C)($a0)
    /* 2D558 801B64D0 1E80023C */  lui        $v0, %hi(D_801D8800 + 0x1)
    /* 2D55C 801B64D4 01884290 */  lbu        $v0, %lo(D_801D8800 + 0x1)($v0)
    /* 2D560 801B64D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D564 801B64DC 21080102 */  addu       $at, $s0, $at
    /* 2D568 801B64E0 A0AB23A0 */  sb         $v1, -0x5460($at)
    /* 2D56C 801B64E4 080082A0 */  sb         $v0, 0x8($a0)
    /* 2D570 801B64E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D574 801B64EC 21080102 */  addu       $at, $s0, $at
    /* 2D578 801B64F0 A1AB22A0 */  sb         $v0, -0x545F($at)
    /* 2D57C 801B64F4 28DC0608 */  j          .L801B70A0
    /* 2D580 801B64F8 A0000224 */   addiu     $v0, $zero, 0xA0
  .L801B64FC:
    /* 2D584 801B64FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D588 801B6500 21080102 */  addu       $at, $s0, $at
    /* 2D58C 801B6504 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D590 801B6508 28DC0608 */  j          .L801B70A0
    /* 2D594 801B650C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6510
    /* 2D598 801B6510 D3022292 */  lbu        $v0, 0x2D3($s1)
    /* 2D59C 801B6514 D4022392 */  lbu        $v1, 0x2D4($s1)
    /* 2D5A0 801B6518 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D5A4 801B651C 21080102 */  addu       $at, $s0, $at
    /* 2D5A8 801B6520 A2AB2490 */  lbu        $a0, -0x545E($at)
    /* 2D5AC 801B6524 21104300 */  addu       $v0, $v0, $v1
    /* 2D5B0 801B6528 21208200 */  addu       $a0, $a0, $v0
    /* 2D5B4 801B652C 1E80013C */  lui        $at, %hi(D_801DA333)
    /* 2D5B8 801B6530 33A324A0 */  sb         $a0, %lo(D_801DA333)($at)
    /* 2D5BC 801B6534 FF008430 */  andi       $a0, $a0, 0xFF
    /* 2D5C0 801B6538 D7022392 */  lbu        $v1, 0x2D7($s1)
    /* 2D5C4 801B653C D8022592 */  lbu        $a1, 0x2D8($s1)
    /* 2D5C8 801B6540 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D5CC 801B6544 21080102 */  addu       $at, $s0, $at
    /* 2D5D0 801B6548 A3AB2290 */  lbu        $v0, -0x545D($at)
    /* 2D5D4 801B654C 21186500 */  addu       $v1, $v1, $a1
    /* 2D5D8 801B6550 21104300 */  addu       $v0, $v0, $v1
    /* 2D5DC 801B6554 1E80013C */  lui        $at, %hi(D_801DA334)
    /* 2D5E0 801B6558 34A322A0 */  sb         $v0, %lo(D_801DA334)($at)
    /* 2D5E4 801B655C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D5E8 801B6560 3B008214 */  bne        $a0, $v0, .L801B6650
    /* 2D5EC 801B6564 00000000 */   nop
    /* 2D5F0 801B6568 D3022292 */  lbu        $v0, 0x2D3($s1)
    /* 2D5F4 801B656C D4022392 */  lbu        $v1, 0x2D4($s1)
    /* 2D5F8 801B6570 00000000 */  nop
    /* 2D5FC 801B6574 21186200 */  addu       $v1, $v1, $v0
    /* 2D600 801B6578 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D604 801B657C 21080102 */  addu       $at, $s0, $at
    /* 2D608 801B6580 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 2D60C 801B6584 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D610 801B6588 21080102 */  addu       $at, $s0, $at
    /* 2D614 801B658C A2AB2490 */  lbu        $a0, -0x545E($at)
    /* 2D618 801B6590 03004014 */  bnez       $v0, .L801B65A0
    /* 2D61C 801B6594 40100300 */   sll       $v0, $v1, 1
    /* 2D620 801B6598 6AD90608 */  j          .L801B65A8
    /* 2D624 801B659C 40100400 */   sll       $v0, $a0, 1
  .L801B65A0:
    /* 2D628 801B65A0 6BD90608 */  j          .L801B65AC
    /* 2D62C 801B65A4 21208200 */   addu      $a0, $a0, $v0
  .L801B65A8:
    /* 2D630 801B65A8 21204300 */  addu       $a0, $v0, $v1
  .L801B65AC:
    /* 2D634 801B65AC D7022292 */  lbu        $v0, 0x2D7($s1)
    /* 2D638 801B65B0 D8022392 */  lbu        $v1, 0x2D8($s1)
    /* 2D63C 801B65B4 1E80013C */  lui        $at, %hi(D_801DA333)
    /* 2D640 801B65B8 33A324A0 */  sb         $a0, %lo(D_801DA333)($at)
    /* 2D644 801B65BC 21186200 */  addu       $v1, $v1, $v0
    /* 2D648 801B65C0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D64C 801B65C4 21080102 */  addu       $at, $s0, $at
    /* 2D650 801B65C8 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 2D654 801B65CC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D658 801B65D0 21080102 */  addu       $at, $s0, $at
    /* 2D65C 801B65D4 A3AB2490 */  lbu        $a0, -0x545D($at)
    /* 2D660 801B65D8 04004014 */  bnez       $v0, .L801B65EC
    /* 2D664 801B65DC 40100400 */   sll       $v0, $a0, 1
    /* 2D668 801B65E0 40100300 */  sll        $v0, $v1, 1
    /* 2D66C 801B65E4 7CD90608 */  j          .L801B65F0
    /* 2D670 801B65E8 21288200 */   addu      $a1, $a0, $v0
  .L801B65EC:
    /* 2D674 801B65EC 21284300 */  addu       $a1, $v0, $v1
  .L801B65F0:
    /* 2D678 801B65F0 1E80063C */  lui        $a2, %hi(D_801DA333)
    /* 2D67C 801B65F4 33A3C690 */  lbu        $a2, %lo(D_801DA333)($a2)
    /* 2D680 801B65F8 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 2D684 801B65FC 1E80013C */  lui        $at, %hi(D_801DA334)
    /* 2D688 801B6600 34A325A0 */  sb         $a1, %lo(D_801DA334)($at)
    /* 2D68C 801B6604 FF00C330 */  andi       $v1, $a2, 0xFF
    /* 2D690 801B6608 11006214 */  bne        $v1, $v0, .L801B6650
    /* 2D694 801B660C 00000000 */   nop
    /* 2D698 801B6610 D5022392 */  lbu        $v1, 0x2D5($s1)
    /* 2D69C 801B6614 D6022492 */  lbu        $a0, 0x2D6($s1)
    /* 2D6A0 801B6618 DB022292 */  lbu        $v0, 0x2DB($s1)
    /* 2D6A4 801B661C 21186400 */  addu       $v1, $v1, $a0
    /* 2D6A8 801B6620 21104300 */  addu       $v0, $v0, $v1
    /* 2D6AC 801B6624 2110C200 */  addu       $v0, $a2, $v0
    /* 2D6B0 801B6628 1E80013C */  lui        $at, %hi(D_801DA333)
    /* 2D6B4 801B662C 33A322A0 */  sb         $v0, %lo(D_801DA333)($at)
    /* 2D6B8 801B6630 D9022392 */  lbu        $v1, 0x2D9($s1)
    /* 2D6BC 801B6634 DA022492 */  lbu        $a0, 0x2DA($s1)
    /* 2D6C0 801B6638 DC022292 */  lbu        $v0, 0x2DC($s1)
    /* 2D6C4 801B663C 21186400 */  addu       $v1, $v1, $a0
    /* 2D6C8 801B6640 21104300 */  addu       $v0, $v0, $v1
    /* 2D6CC 801B6644 2110A200 */  addu       $v0, $a1, $v0
    /* 2D6D0 801B6648 1E80013C */  lui        $at, %hi(D_801DA334)
    /* 2D6D4 801B664C 34A322A0 */  sb         $v0, %lo(D_801DA334)($at)
  .L801B6650:
    /* 2D6D8 801B6650 1E80023C */  lui        $v0, %hi(D_801DA333)
    /* 2D6DC 801B6654 33A34290 */  lbu        $v0, %lo(D_801DA333)($v0)
    /* 2D6E0 801B6658 1E80033C */  lui        $v1, %hi(D_801DA334)
    /* 2D6E4 801B665C 34A36390 */  lbu        $v1, %lo(D_801DA334)($v1)
    /* 2D6E8 801B6660 00000000 */  nop
    /* 2D6EC 801B6664 2B104300 */  sltu       $v0, $v0, $v1
    /* 2D6F0 801B6668 09004014 */  bnez       $v0, .L801B6690
    /* 2D6F4 801B666C 00000000 */   nop
    /* 2D6F8 801B6670 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D6FC 801B6674 21080102 */  addu       $at, $s0, $at
    /* 2D700 801B6678 A0AB2290 */  lbu        $v0, -0x5460($at)
    /* 2D704 801B667C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D708 801B6680 21080102 */  addu       $at, $s0, $at
    /* 2D70C 801B6684 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2D710 801B6688 AAD90608 */  j          .L801B66A8
    /* 2D714 801B668C 00000000 */   nop
  .L801B6690:
    /* 2D718 801B6690 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D71C 801B6694 21080102 */  addu       $at, $s0, $at
    /* 2D720 801B6698 A1AB2290 */  lbu        $v0, -0x545F($at)
    /* 2D724 801B669C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D728 801B66A0 21080102 */  addu       $at, $s0, $at
    /* 2D72C 801B66A4 A0AB2390 */  lbu        $v1, -0x5460($at)
  .L801B66A8:
    /* 2D730 801B66A8 1E80013C */  lui        $at, %hi(D_801D8800)
    /* 2D734 801B66AC 008822A0 */  sb         $v0, %lo(D_801D8800)($at)
    /* 2D738 801B66B0 1E80013C */  lui        $at, %hi(D_801D8800 + 0x1)
    /* 2D73C 801B66B4 018823A0 */  sb         $v1, %lo(D_801D8800 + 0x1)($at)
    /* 2D740 801B66B8 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2D744 801B66BC 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2D748 801B66C0 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D74C 801B66C4 060062A0 */  sb         $v0, 0x6($v1)
    /* 2D750 801B66C8 1E80023C */  lui        $v0, %hi(D_801D8A4C)
    /* 2D754 801B66CC 4C8A428C */  lw         $v0, %lo(D_801D8A4C)($v0)
    /* 2D758 801B66D0 1E80033C */  lui        $v1, %hi(D_801D8800)
    /* 2D75C 801B66D4 00886390 */  lbu        $v1, %lo(D_801D8800)($v1)
    /* 2D760 801B66D8 00000000 */  nop
    /* 2D764 801B66DC 070043A0 */  sb         $v1, 0x7($v0)
    /* 2D768 801B66E0 1E80023C */  lui        $v0, %hi(D_801D8A4C)
    /* 2D76C 801B66E4 4C8A428C */  lw         $v0, %lo(D_801D8A4C)($v0)
    /* 2D770 801B66E8 1E80043C */  lui        $a0, %hi(D_801D8800 + 0x1)
    /* 2D774 801B66EC 01888490 */  lbu        $a0, %lo(D_801D8800 + 0x1)($a0)
    /* 2D778 801B66F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D77C 801B66F4 21080102 */  addu       $at, $s0, $at
    /* 2D780 801B66F8 A0AB23A0 */  sb         $v1, -0x5460($at)
    /* 2D784 801B66FC 080044A0 */  sb         $a0, 0x8($v0)
    /* 2D788 801B6700 1E80023C */  lui        $v0, %hi(D_801D8800 + 0x1)
    /* 2D78C 801B6704 01884290 */  lbu        $v0, %lo(D_801D8800 + 0x1)($v0)
    /* 2D790 801B6708 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D794 801B670C 21080102 */  addu       $at, $s0, $at
    /* 2D798 801B6710 A1AB24A0 */  sb         $a0, -0x545F($at)
    /* 2D79C 801B6714 21100202 */  addu       $v0, $s0, $v0
    /* 2D7A0 801B6718 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D7A4 801B671C 21084100 */  addu       $at, $v0, $at
    /* 2D7A8 801B6720 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 2D7AC 801B6724 00000000 */  nop
    /* 2D7B0 801B6728 C0100300 */  sll        $v0, $v1, 3
    /* 2D7B4 801B672C 21104300 */  addu       $v0, $v0, $v1
    /* 2D7B8 801B6730 80100200 */  sll        $v0, $v0, 2
    /* 2D7BC 801B6734 21100202 */  addu       $v0, $s0, $v0
    /* 2D7C0 801B6738 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D7C4 801B673C 21084100 */  addu       $at, $v0, $at
    /* 2D7C8 801B6740 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 2D7CC 801B6744 00000000 */  nop
    /* 2D7D0 801B6748 C0004230 */  andi       $v0, $v0, 0xC0
    /* 2D7D4 801B674C 09004014 */  bnez       $v0, .L801B6774
    /* 2D7D8 801B6750 00000000 */   nop
    /* 2D7DC 801B6754 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D7E0 801B6758 21080102 */  addu       $at, $s0, $at
    /* 2D7E4 801B675C 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 2D7E8 801B6760 00000000 */  nop
    /* 2D7EC 801B6764 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2D7F0 801B6768 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D7F4 801B676C 21080102 */  addu       $at, $s0, $at
    /* 2D7F8 801B6770 218F22A0 */  sb         $v0, -0x70DF($at)
  .L801B6774:
    /* 2D7FC 801B6774 28DC0608 */  j          .L801B70A0
    /* 2D800 801B6778 6E000224 */   addiu     $v0, $zero, 0x6E
  jlabel .L801B677C
    /* 2D804 801B677C 51E4060C */  jal        func_801B9144
    /* 2D808 801B6780 03000424 */   addiu     $a0, $zero, 0x3
    /* 2D80C 801B6784 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D810 801B6788 21080102 */  addu       $at, $s0, $at
    /* 2D814 801B678C DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2D818 801B6790 1E80013C */  lui        $at, %hi(D_801D8802)
    /* 2D81C 801B6794 028822A0 */  sb         $v0, %lo(D_801D8802)($at)
    /* 2D820 801B6798 9FDB0608 */  j          .L801B6E7C
    /* 2D824 801B679C 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801B67A0
    /* 2D828 801B67A0 1FBC010C */  jal        func_8006F07C
    /* 2D82C 801B67A4 10000424 */   addiu     $a0, $zero, 0x10
    /* 2D830 801B67A8 40024010 */  beqz       $v0, .L801B70AC
    /* 2D834 801B67AC 00000000 */   nop
    /* 2D838 801B67B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D83C 801B67B4 21080102 */  addu       $at, $s0, $at
    /* 2D840 801B67B8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D844 801B67BC 28DC0608 */  j          .L801B70A0
    /* 2D848 801B67C0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B67C4
    /* 2D84C 801B67C4 14E1060C */  jal        func_801B8450
    /* 2D850 801B67C8 03000424 */   addiu     $a0, $zero, 0x3
    /* 2D854 801B67CC 4FDA0608 */  j          .L801B693C
    /* 2D858 801B67D0 01000424 */   addiu     $a0, $zero, 0x1
  jlabel .L801B67D4
    /* 2D85C 801B67D4 14E1060C */  jal        func_801B8450
    /* 2D860 801B67D8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D864 801B67DC 40000424 */  addiu      $a0, $zero, 0x40
    /* 2D868 801B67E0 37BC010C */  jal        func_8006F0DC
    /* 2D86C 801B67E4 01000524 */   addiu     $a1, $zero, 0x1
    /* 2D870 801B67E8 30024010 */  beqz       $v0, .L801B70AC
    /* 2D874 801B67EC 78000224 */   addiu     $v0, $zero, 0x78
    /* 2D878 801B67F0 28DC0608 */  j          .L801B70A0
    /* 2D87C 801B67F4 00000000 */   nop
  jlabel .L801B67F8
    /* 2D880 801B67F8 AEE3060C */  jal        func_801B8EB8
    /* 2D884 801B67FC 00000000 */   nop
    /* 2D888 801B6800 27024010 */  beqz       $v0, .L801B70A0
    /* 2D88C 801B6804 82000224 */   addiu     $v0, $zero, 0x82
    /* 2D890 801B6808 51E4060C */  jal        func_801B9144
    /* 2D894 801B680C 04000424 */   addiu     $a0, $zero, 0x4
    /* 2D898 801B6810 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D89C 801B6814 21080102 */  addu       $at, $s0, $at
    /* 2D8A0 801B6818 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2D8A4 801B681C 1E80013C */  lui        $at, %hi(D_801D8802)
    /* 2D8A8 801B6820 028822A0 */  sb         $v0, %lo(D_801D8802)($at)
    /* 2D8AC 801B6824 9FDB0608 */  j          .L801B6E7C
    /* 2D8B0 801B6828 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801B682C
    /* 2D8B4 801B682C 1FBC010C */  jal        func_8006F07C
    /* 2D8B8 801B6830 10000424 */   addiu     $a0, $zero, 0x10
    /* 2D8BC 801B6834 1D024010 */  beqz       $v0, .L801B70AC
    /* 2D8C0 801B6838 00000000 */   nop
    /* 2D8C4 801B683C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D8C8 801B6840 21080102 */  addu       $at, $s0, $at
    /* 2D8CC 801B6844 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D8D0 801B6848 28DC0608 */  j          .L801B70A0
    /* 2D8D4 801B684C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6850
    /* 2D8D8 801B6850 01000424 */  addiu      $a0, $zero, 0x1
    /* 2D8DC 801B6854 01000524 */  addiu      $a1, $zero, 0x1
    /* 2D8E0 801B6858 BD3A060C */  jal        func_8018EAF4
    /* 2D8E4 801B685C 21300000 */   addu      $a2, $zero, $zero
    /* 2D8E8 801B6860 51DA0608 */  j          .L801B6944
    /* 2D8EC 801B6864 00000000 */   nop
  jlabel .L801B6868
    /* 2D8F0 801B6868 40000424 */  addiu      $a0, $zero, 0x40
    /* 2D8F4 801B686C 37BC010C */  jal        func_8006F0DC
    /* 2D8F8 801B6870 01000524 */   addiu     $a1, $zero, 0x1
    /* 2D8FC 801B6874 0D024010 */  beqz       $v0, .L801B70AC
    /* 2D900 801B6878 02000224 */   addiu     $v0, $zero, 0x2
    /* 2D904 801B687C 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 2D908 801B6880 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 2D90C 801B6884 00000000 */  nop
    /* 2D910 801B6888 05026214 */  bne        $v1, $v0, .L801B70A0
    /* 2D914 801B688C 6E000224 */   addiu     $v0, $zero, 0x6E
    /* 2D918 801B6890 28DC0608 */  j          .L801B70A0
    /* 2D91C 801B6894 82000224 */   addiu     $v0, $zero, 0x82
  jlabel .L801B6898
    /* 2D920 801B6898 40E4060C */  jal        func_801B9100
    /* 2D924 801B689C 00000000 */   nop
    /* 2D928 801B68A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D92C 801B68A4 21080102 */  addu       $at, $s0, $at
    /* 2D930 801B68A8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D934 801B68AC 01000324 */  addiu      $v1, $zero, 0x1
    /* 2D938 801B68B0 1E80013C */  lui        $at, %hi(D_801DADB6)
    /* 2D93C 801B68B4 B6AD23A0 */  sb         $v1, %lo(D_801DADB6)($at)
    /* 2D940 801B68B8 28DC0608 */  j          .L801B70A0
    /* 2D944 801B68BC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B68C0
    /* 2D948 801B68C0 1FBC010C */  jal        func_8006F07C
    /* 2D94C 801B68C4 10000424 */   addiu     $a0, $zero, 0x10
    /* 2D950 801B68C8 F8014010 */  beqz       $v0, .L801B70AC
    /* 2D954 801B68CC 00000000 */   nop
    /* 2D958 801B68D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D95C 801B68D4 21080102 */  addu       $at, $s0, $at
    /* 2D960 801B68D8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2D964 801B68DC 28DC0608 */  j          .L801B70A0
    /* 2D968 801B68E0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B68E4
    /* 2D96C 801B68E4 1E80023C */  lui        $v0, %hi(D_801D8B18)
    /* 2D970 801B68E8 188B4290 */  lbu        $v0, %lo(D_801D8B18)($v0)
    /* 2D974 801B68EC 01000324 */  addiu      $v1, $zero, 0x1
    /* 2D978 801B68F0 12004310 */  beq        $v0, $v1, .L801B693C
    /* 2D97C 801B68F4 01000424 */   addiu     $a0, $zero, 0x1
    /* 2D980 801B68F8 1E80023C */  lui        $v0, %hi(D_801D8DFB)
    /* 2D984 801B68FC FB8D4290 */  lbu        $v0, %lo(D_801D8DFB)($v0)
    /* 2D988 801B6900 00000000 */  nop
    /* 2D98C 801B6904 0D004310 */  beq        $v0, $v1, .L801B693C
    /* 2D990 801B6908 00000000 */   nop
    /* 2D994 801B690C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D998 801B6910 21080102 */  addu       $at, $s0, $at
    /* 2D99C 801B6914 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2D9A0 801B6918 00000000 */  nop
    /* 2D9A4 801B691C 20004230 */  andi       $v0, $v0, 0x20
    /* 2D9A8 801B6920 06004014 */  bnez       $v0, .L801B693C
    /* 2D9AC 801B6924 02000524 */   addiu     $a1, $zero, 0x2
    /* 2D9B0 801B6928 BD3A060C */  jal        func_8018EAF4
    /* 2D9B4 801B692C 21300000 */   addu      $a2, $zero, $zero
    /* 2D9B8 801B6930 51DA0608 */  j          .L801B6944
    /* 2D9BC 801B6934 00000000 */   nop
  jlabel .L801B6938
    /* 2D9C0 801B6938 01000424 */  addiu      $a0, $zero, 0x1
  .L801B693C:
    /* 2D9C4 801B693C A33A060C */  jal        func_8018EA8C
    /* 2D9C8 801B6940 21280000 */   addu      $a1, $zero, $zero
  .L801B6944:
    /* 2D9CC 801B6944 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D9D0 801B6948 21080102 */  addu       $at, $s0, $at
    /* 2D9D4 801B694C DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2D9D8 801B6950 00000000 */  nop
    /* 2D9DC 801B6954 21186200 */  addu       $v1, $v1, $v0
    /* 2D9E0 801B6958 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D9E4 801B695C 21080102 */  addu       $at, $s0, $at
    /* 2D9E8 801B6960 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 2D9EC 801B6964 2BDC0608 */  j          .L801B70AC
    /* 2D9F0 801B6968 00000000 */   nop
  jlabel .L801B696C
    /* 2D9F4 801B696C 40000424 */  addiu      $a0, $zero, 0x40
    /* 2D9F8 801B6970 37BC010C */  jal        func_8006F0DC
    /* 2D9FC 801B6974 01000524 */   addiu     $a1, $zero, 0x1
    /* 2DA00 801B6978 CC014010 */  beqz       $v0, .L801B70AC
    /* 2DA04 801B697C 8C000224 */   addiu     $v0, $zero, 0x8C
    /* 2DA08 801B6980 28DC0608 */  j          .L801B70A0
    /* 2DA0C 801B6984 00000000 */   nop
  jlabel .L801B6988
    /* 2DA10 801B6988 40000424 */  addiu      $a0, $zero, 0x40
    /* 2DA14 801B698C 37BC010C */  jal        func_8006F0DC
    /* 2DA18 801B6990 01000524 */   addiu     $a1, $zero, 0x1
    /* 2DA1C 801B6994 C5014010 */  beqz       $v0, .L801B70AC
    /* 2DA20 801B6998 00000000 */   nop
    /* 2DA24 801B699C AEE3060C */  jal        func_801B8EB8
    /* 2DA28 801B69A0 00000000 */   nop
    /* 2DA2C 801B69A4 BE014010 */  beqz       $v0, .L801B70A0
    /* 2DA30 801B69A8 6E000224 */   addiu     $v0, $zero, 0x6E
    /* 2DA34 801B69AC 51E4060C */  jal        func_801B9144
    /* 2DA38 801B69B0 04000424 */   addiu     $a0, $zero, 0x4
    /* 2DA3C 801B69B4 28DC0608 */  j          .L801B70A0
    /* 2DA40 801B69B8 79000224 */   addiu     $v0, $zero, 0x79
  jlabel .L801B69BC
    /* 2DA44 801B69BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DA48 801B69C0 21080102 */  addu       $at, $s0, $at
    /* 2DA4C 801B69C4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2DA50 801B69C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DA54 801B69CC 21080102 */  addu       $at, $s0, $at
    /* 2DA58 801B69D0 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 2DA5C 801B69D4 28DC0608 */  j          .L801B70A0
    /* 2DA60 801B69D8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B69DC
    /* 2DA64 801B69DC A5B8060C */  jal        func_801AE294
    /* 2DA68 801B69E0 21200000 */   addu      $a0, $zero, $zero
    /* 2DA6C 801B69E4 21184000 */  addu       $v1, $v0, $zero
    /* 2DA70 801B69E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DA74 801B69EC 05006210 */  beq        $v1, $v0, .L801B6A04
    /* 2DA78 801B69F0 02000224 */   addiu     $v0, $zero, 0x2
    /* 2DA7C 801B69F4 AD016214 */  bne        $v1, $v0, .L801B70AC
    /* 2DA80 801B69F8 96000224 */   addiu     $v0, $zero, 0x96
    /* 2DA84 801B69FC 28DC0608 */  j          .L801B70A0
    /* 2DA88 801B6A00 00000000 */   nop
  .L801B6A04:
    /* 2DA8C 801B6A04 28DC0608 */  j          .L801B70A0
    /* 2DA90 801B6A08 82000224 */   addiu     $v0, $zero, 0x82
  jlabel .L801B6A0C
    /* 2DA94 801B6A0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DA98 801B6A10 21080102 */  addu       $at, $s0, $at
    /* 2DA9C 801B6A14 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2DAA0 801B6A18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DAA4 801B6A1C 21080102 */  addu       $at, $s0, $at
    /* 2DAA8 801B6A20 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 2DAAC 801B6A24 28DC0608 */  j          .L801B70A0
    /* 2DAB0 801B6A28 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6A2C
    /* 2DAB4 801B6A2C A5B8060C */  jal        func_801AE294
    /* 2DAB8 801B6A30 01000424 */   addiu     $a0, $zero, 0x1
    /* 2DABC 801B6A34 21184000 */  addu       $v1, $v0, $zero
    /* 2DAC0 801B6A38 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DAC4 801B6A3C 05006210 */  beq        $v1, $v0, .L801B6A54
    /* 2DAC8 801B6A40 02000224 */   addiu     $v0, $zero, 0x2
    /* 2DACC 801B6A44 99016214 */  bne        $v1, $v0, .L801B70AC
    /* 2DAD0 801B6A48 A0000224 */   addiu     $v0, $zero, 0xA0
    /* 2DAD4 801B6A4C 28DC0608 */  j          .L801B70A0
    /* 2DAD8 801B6A50 00000000 */   nop
  .L801B6A54:
    /* 2DADC 801B6A54 28DC0608 */  j          .L801B70A0
    /* 2DAE0 801B6A58 8C000224 */   addiu     $v0, $zero, 0x8C
  jlabel .L801B6A5C
    /* 2DAE4 801B6A5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DAE8 801B6A60 21080102 */  addu       $at, $s0, $at
    /* 2DAEC 801B6A64 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 2DAF0 801B6A68 00000000 */  nop
    /* 2DAF4 801B6A6C 06004010 */  beqz       $v0, .L801B6A88
    /* 2DAF8 801B6A70 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DAFC 801B6A74 1E80033C */  lui        $v1, %hi(D_801D8B18)
    /* 2DB00 801B6A78 188B6390 */  lbu        $v1, %lo(D_801D8B18)($v1)
    /* 2DB04 801B6A7C 00000000 */  nop
    /* 2DB08 801B6A80 03006214 */  bne        $v1, $v0, .L801B6A90
    /* 2DB0C 801B6A84 00000000 */   nop
  .L801B6A88:
    /* 2DB10 801B6A88 28DC0608 */  j          .L801B70A0
    /* 2DB14 801B6A8C C8000224 */   addiu     $v0, $zero, 0xC8
  .L801B6A90:
    /* 2DB18 801B6A90 1E80023C */  lui        $v0, %hi(D_801D8A4C)
    /* 2DB1C 801B6A94 4C8A428C */  lw         $v0, %lo(D_801D8A4C)($v0)
    /* 2DB20 801B6A98 00000000 */  nop
    /* 2DB24 801B6A9C 04004390 */  lbu        $v1, 0x4($v0)
    /* 2DB28 801B6AA0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2DB2C 801B6AA4 08006214 */  bne        $v1, $v0, .L801B6AC8
    /* 2DB30 801B6AA8 00000000 */   nop
    /* 2DB34 801B6AAC 1E80023C */  lui        $v0, %hi(D_801D8DFB)
    /* 2DB38 801B6AB0 FB8D4290 */  lbu        $v0, %lo(D_801D8DFB)($v0)
    /* 2DB3C 801B6AB4 00000000 */  nop
    /* 2DB40 801B6AB8 03004014 */  bnez       $v0, .L801B6AC8
    /* 2DB44 801B6ABC 00000000 */   nop
    /* 2DB48 801B6AC0 28DC0608 */  j          .L801B70A0
    /* 2DB4C 801B6AC4 BE000224 */   addiu     $v0, $zero, 0xBE
  .L801B6AC8:
    /* 2DB50 801B6AC8 36E1060C */  jal        func_801B84D8
    /* 2DB54 801B6ACC 21200000 */   addu      $a0, $zero, $zero
    /* 2DB58 801B6AD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DB5C 801B6AD4 21080102 */  addu       $at, $s0, $at
    /* 2DB60 801B6AD8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2DB64 801B6ADC 28DC0608 */  j          .L801B70A0
    /* 2DB68 801B6AE0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6AE4
    /* 2DB6C 801B6AE4 E2022292 */  lbu        $v0, 0x2E2($s1)
    /* 2DB70 801B6AE8 04000324 */  addiu      $v1, $zero, 0x4
    /* 2DB74 801B6AEC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2DB78 801B6AF0 6B014314 */  bne        $v0, $v1, .L801B70A0
    /* 2DB7C 801B6AF4 AA000224 */   addiu     $v0, $zero, 0xAA
    /* 2DB80 801B6AF8 28DC0608 */  j          .L801B70A0
    /* 2DB84 801B6AFC AC000224 */   addiu     $v0, $zero, 0xAC
  jlabel .L801B6B00
    /* 2DB88 801B6B00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DB8C 801B6B04 21080102 */  addu       $at, $s0, $at
    /* 2DB90 801B6B08 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2DB94 801B6B0C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DB98 801B6B10 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 2DB9C 801B6B14 FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 2DBA0 801B6B18 9BDB0608 */  j          .L801B6E6C
    /* 2DBA4 801B6B1C 00000000 */   nop
  jlabel .L801B6B20
    /* 2DBA8 801B6B20 1E80043C */  lui        $a0, %hi(D_801D8DFB)
    /* 2DBAC 801B6B24 FB8D8490 */  lbu        $a0, %lo(D_801D8DFB)($a0)
    /* 2DBB0 801B6B28 00000000 */  nop
    /* 2DBB4 801B6B2C 2B200400 */  sltu       $a0, $zero, $a0
    /* 2DBB8 801B6B30 8BB3060C */  jal        func_801ACE2C
    /* 2DBBC 801B6B34 40200400 */   sll       $a0, $a0, 1
    /* 2DBC0 801B6B38 21184000 */  addu       $v1, $v0, $zero
    /* 2DBC4 801B6B3C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2DBC8 801B6B40 0D006210 */  beq        $v1, $v0, .L801B6B78
    /* 2DBCC 801B6B44 00000000 */   nop
    /* 2DBD0 801B6B48 03006228 */  slti       $v0, $v1, 0x3
    /* 2DBD4 801B6B4C 05004010 */  beqz       $v0, .L801B6B64
    /* 2DBD8 801B6B50 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DBDC 801B6B54 52016210 */  beq        $v1, $v0, .L801B70A0
    /* 2DBE0 801B6B58 96000224 */   addiu     $v0, $zero, 0x96
    /* 2DBE4 801B6B5C 2BDC0608 */  j          .L801B70AC
    /* 2DBE8 801B6B60 00000000 */   nop
  .L801B6B64:
    /* 2DBEC 801B6B64 03000224 */  addiu      $v0, $zero, 0x3
    /* 2DBF0 801B6B68 08006210 */  beq        $v1, $v0, .L801B6B8C
    /* 2DBF4 801B6B6C 00000000 */   nop
    /* 2DBF8 801B6B70 2BDC0608 */  j          .L801B70AC
    /* 2DBFC 801B6B74 00000000 */   nop
  .L801B6B78:
    /* 2DC00 801B6B78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DC04 801B6B7C 21080102 */  addu       $at, $s0, $at
    /* 2DC08 801B6B80 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2DC0C 801B6B84 28DC0608 */  j          .L801B70A0
    /* 2DC10 801B6B88 01004224 */   addiu     $v0, $v0, 0x1
  .L801B6B8C:
    /* 2DC14 801B6B8C C2E1060C */  jal        func_801B8708
    /* 2DC18 801B6B90 01000424 */   addiu     $a0, $zero, 0x1
    /* 2DC1C 801B6B94 03DC0608 */  j          .L801B700C
    /* 2DC20 801B6B98 9F0220A2 */   sb        $zero, 0x29F($s1)
  jlabel .L801B6B9C
    /* 2DC24 801B6B9C 40000424 */  addiu      $a0, $zero, 0x40
    /* 2DC28 801B6BA0 37BC010C */  jal        func_8006F0DC
    /* 2DC2C 801B6BA4 21280000 */   addu      $a1, $zero, $zero
    /* 2DC30 801B6BA8 40014010 */  beqz       $v0, .L801B70AC
    /* 2DC34 801B6BAC 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DC38 801B6BB0 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 2DC3C 801B6BB4 FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 2DC40 801B6BB8 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 2DC44 801B6BBC FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 2DC48 801B6BC0 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 2DC4C 801B6BC4 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 2DC50 801B6BC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DC54 801B6BCC 21080102 */  addu       $at, $s0, $at
    /* 2DC58 801B6BD0 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 2DC5C 801B6BD4 0A000324 */  addiu      $v1, $zero, 0xA
    /* 2DC60 801B6BD8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DC64 801B6BDC 21080102 */  addu       $at, $s0, $at
    /* 2DC68 801B6BE0 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 2DC6C 801B6BE4 01004224 */  addiu      $v0, $v0, 0x1
    /* 2DC70 801B6BE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DC74 801B6BEC 21080102 */  addu       $at, $s0, $at
    /* 2DC78 801B6BF0 228F22A0 */  sb         $v0, -0x70DE($at)
    /* 2DC7C 801B6BF4 2BDC0608 */  j          .L801B70AC
    /* 2DC80 801B6BF8 00000000 */   nop
  jlabel .L801B6BFC
    /* 2DC84 801B6BFC 4E39060C */  jal        func_8018E538
    /* 2DC88 801B6C00 21200000 */   addu      $a0, $zero, $zero
    /* 2DC8C 801B6C04 21200000 */  addu       $a0, $zero, $zero
    /* 2DC90 801B6C08 C2E1060C */  jal        func_801B8708
    /* 2DC94 801B6C0C 300320A2 */   sb        $zero, 0x330($s1)
    /* 2DC98 801B6C10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DC9C 801B6C14 21080102 */  addu       $at, $s0, $at
    /* 2DCA0 801B6C18 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2DCA4 801B6C1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DCA8 801B6C20 1E80013C */  lui        $at, %hi(D_801DADB6)
    /* 2DCAC 801B6C24 B6AD22A0 */  sb         $v0, %lo(D_801DADB6)($at)
    /* 2DCB0 801B6C28 9EDB0608 */  j          .L801B6E78
    /* 2DCB4 801B6C2C 9F0220A2 */   sb        $zero, 0x29F($s1)
  jlabel .L801B6C30
    /* 2DCB8 801B6C30 D966000C */  jal        func_80019B64
    /* 2DCBC 801B6C34 CA000424 */   addiu     $a0, $zero, 0xCA
    /* 2DCC0 801B6C38 1C014010 */  beqz       $v0, .L801B70AC
    /* 2DCC4 801B6C3C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DCC8 801B6C40 300322A2 */  sb         $v0, 0x330($s1)
    /* 2DCCC 801B6C44 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DCD0 801B6C48 21080102 */  addu       $at, $s0, $at
    /* 2DCD4 801B6C4C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2DCD8 801B6C50 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 2DCDC 801B6C54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DCE0 801B6C58 21080102 */  addu       $at, $s0, $at
    /* 2DCE4 801B6C5C D6AB23A4 */  sh         $v1, -0x542A($at)
    /* 2DCE8 801B6C60 28DC0608 */  j          .L801B70A0
    /* 2DCEC 801B6C64 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6C68
    /* 2DCF0 801B6C68 88AD020C */  jal        func_800AB620
    /* 2DCF4 801B6C6C 05020424 */   addiu     $a0, $zero, 0x205
    /* 2DCF8 801B6C70 28DC0608 */  j          .L801B70A0
    /* 2DCFC 801B6C74 82000224 */   addiu     $v0, $zero, 0x82
  jlabel .L801B6C78
    /* 2DD00 801B6C78 10000424 */  addiu      $a0, $zero, 0x10
    /* 2DD04 801B6C7C 37BC010C */  jal        func_8006F0DC
    /* 2DD08 801B6C80 01000524 */   addiu     $a1, $zero, 0x1
    /* 2DD0C 801B6C84 09014010 */  beqz       $v0, .L801B70AC
    /* 2DD10 801B6C88 01000324 */   addiu     $v1, $zero, 0x1
    /* 2DD14 801B6C8C 1E80023C */  lui        $v0, %hi(D_801D8800)
    /* 2DD18 801B6C90 00884290 */  lbu        $v0, %lo(D_801D8800)($v0)
    /* 2DD1C 801B6C94 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 2DD20 801B6C98 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 2DD24 801B6C9C 1E80013C */  lui        $at, %hi(D_801DAD85)
    /* 2DD28 801B6CA0 85AD23A0 */  sb         $v1, %lo(D_801DAD85)($at)
    /* 2DD2C 801B6CA4 21100202 */  addu       $v0, $s0, $v0
    /* 2DD30 801B6CA8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DD34 801B6CAC 21084100 */  addu       $at, $v0, $at
    /* 2DD38 801B6CB0 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 2DD3C 801B6CB4 00000000 */  nop
    /* 2DD40 801B6CB8 C0100300 */  sll        $v0, $v1, 3
    /* 2DD44 801B6CBC 21104300 */  addu       $v0, $v0, $v1
    /* 2DD48 801B6CC0 80100200 */  sll        $v0, $v0, 2
    /* 2DD4C 801B6CC4 21100202 */  addu       $v0, $s0, $v0
    /* 2DD50 801B6CC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DD54 801B6CCC 21084100 */  addu       $at, $v0, $at
    /* 2DD58 801B6CD0 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 2DD5C 801B6CD4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DD60 801B6CD8 21080102 */  addu       $at, $s0, $at
    /* 2DD64 801B6CDC 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2DD68 801B6CE0 A20220A2 */  sb         $zero, 0x2A2($s1)
    /* 2DD6C 801B6CE4 0F004230 */  andi       $v0, $v0, 0xF
    /* 2DD70 801B6CE8 0E004014 */  bnez       $v0, .L801B6D24
    /* 2DD74 801B6CEC DD0223A2 */   sb        $v1, 0x2DD($s1)
    /* 2DD78 801B6CF0 DD022292 */  lbu        $v0, 0x2DD($s1)
    /* 2DD7C 801B6CF4 02000324 */  addiu      $v1, $zero, 0x2
    /* 2DD80 801B6CF8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2DD84 801B6CFC 09004314 */  bne        $v0, $v1, .L801B6D24
    /* 2DD88 801B6D00 00000000 */   nop
    /* 2DD8C 801B6D04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DD90 801B6D08 21080102 */  addu       $at, $s0, $at
    /* 2DD94 801B6D0C E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 2DD98 801B6D10 00000000 */  nop
    /* 2DD9C 801B6D14 01004234 */  ori        $v0, $v0, 0x1
    /* 2DDA0 801B6D18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DDA4 801B6D1C 21080102 */  addu       $at, $s0, $at
    /* 2DDA8 801B6D20 E2AB22A0 */  sb         $v0, -0x541E($at)
  .L801B6D24:
    /* 2DDAC 801B6D24 88AD020C */  jal        func_800AB620
    /* 2DDB0 801B6D28 07000424 */   addiu     $a0, $zero, 0x7
    /* 2DDB4 801B6D2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DDB8 801B6D30 21080102 */  addu       $at, $s0, $at
    /* 2DDBC 801B6D34 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2DDC0 801B6D38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DDC4 801B6D3C 21080102 */  addu       $at, $s0, $at
    /* 2DDC8 801B6D40 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 2DDCC 801B6D44 28DC0608 */  j          .L801B70A0
    /* 2DDD0 801B6D48 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6D4C
    /* 2DDD4 801B6D4C FBB5060C */  jal        func_801AD7EC
    /* 2DDD8 801B6D50 00000000 */   nop
    /* 2DDDC 801B6D54 2BDC0608 */  j          .L801B70AC
    /* 2DDE0 801B6D58 00000000 */   nop
  jlabel .L801B6D5C
    /* 2DDE4 801B6D5C 04000424 */  addiu      $a0, $zero, 0x4
    /* 2DDE8 801B6D60 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 2DDEC 801B6D64 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 2DDF0 801B6D68 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 2DDF4 801B6D6C 01000724 */  addiu      $a3, $zero, 0x1
    /* 2DDF8 801B6D70 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DDFC 801B6D74 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 2DE00 801B6D78 FB8D22A0 */  sb         $v0, %lo(D_801D8DFB)($at)
    /* 2DE04 801B6D7C 41000224 */  addiu      $v0, $zero, 0x41
    /* 2DE08 801B6D80 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 2DE0C 801B6D84 FC8D20A0 */  sb         $zero, %lo(D_801D8DFC)($at)
    /* 2DE10 801B6D88 A20222A2 */  sb         $v0, 0x2A2($s1)
    /* 2DE14 801B6D8C 90010224 */  addiu      $v0, $zero, 0x190
    /* 2DE18 801B6D90 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 2DE1C 801B6D94 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 2DE20 801B6D98 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 2DE24 801B6D9C F0000224 */  addiu      $v0, $zero, 0xF0
    /* 2DE28 801B6DA0 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 2DE2C 801B6DA4 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 2DE30 801B6DA8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DE34 801B6DAC 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 2DE38 801B6DB0 7A8D20A4 */  sh         $zero, %lo(D_801D8D7A)($at)
    /* 2DE3C 801B6DB4 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 2DE40 801B6DB8 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 2DE44 801B6DBC 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 2DE48 801B6DC0 818D20A0 */  sb         $zero, %lo(D_801D8D81)($at)
    /* 2DE4C 801B6DC4 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 2DE50 801B6DC8 828D20A0 */  sb         $zero, %lo(D_801D8D82)($at)
    /* 2DE54 801B6DCC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2DE58 801B6DD0 7850060C */  jal        func_801941E0
    /* 2DE5C 801B6DD4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 2DE60 801B6DD8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DE64 801B6DDC 21080102 */  addu       $at, $s0, $at
    /* 2DE68 801B6DE0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2DE6C 801B6DE4 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 2DE70 801B6DE8 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 2DE74 801B6DEC 28DC0608 */  j          .L801B70A0
    /* 2DE78 801B6DF0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6DF4
    /* 2DE7C 801B6DF4 1E80033C */  lui        $v1, %hi(D_801DA058)
    /* 2DE80 801B6DF8 58A0638C */  lw         $v1, %lo(D_801DA058)($v1)
    /* 2DE84 801B6DFC 00000000 */  nop
    /* 2DE88 801B6E00 10006228 */  slti       $v0, $v1, 0x10
    /* 2DE8C 801B6E04 0F004010 */  beqz       $v0, .L801B6E44
    /* 2DE90 801B6E08 01006324 */   addiu     $v1, $v1, 0x1
    /* 2DE94 801B6E0C 1E80043C */  lui        $a0, %hi(D_801D9320)
    /* 2DE98 801B6E10 20938424 */  addiu      $a0, $a0, %lo(D_801D9320)
    /* 2DE9C 801B6E14 00008290 */  lbu        $v0, 0x0($a0)
    /* 2DEA0 801B6E18 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 2DEA4 801B6E1C 58A023AC */  sw         $v1, %lo(D_801DA058)($at)
    /* 2DEA8 801B6E20 02004224 */  addiu      $v0, $v0, 0x2
    /* 2DEAC 801B6E24 000082A0 */  sb         $v0, 0x0($a0)
    /* 2DEB0 801B6E28 1E80023C */  lui        $v0, %hi(D_801D9321)
    /* 2DEB4 801B6E2C 21934290 */  lbu        $v0, %lo(D_801D9321)($v0)
    /* 2DEB8 801B6E30 1E80033C */  lui        $v1, %hi(D_801D9322)
    /* 2DEBC 801B6E34 22936390 */  lbu        $v1, %lo(D_801D9322)($v1)
    /* 2DEC0 801B6E38 02004224 */  addiu      $v0, $v0, 0x2
    /* 2DEC4 801B6E3C 1ADC0608 */  j          .L801B7068
    /* 2DEC8 801B6E40 02006324 */   addiu     $v1, $v1, 0x2
  .L801B6E44:
    /* 2DECC 801B6E44 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DED0 801B6E48 21080102 */  addu       $at, $s0, $at
    /* 2DED4 801B6E4C DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2DED8 801B6E50 20000224 */  addiu      $v0, $zero, 0x20
    /* 2DEDC 801B6E54 1E80013C */  lui        $at, %hi(D_801D9320)
    /* 2DEE0 801B6E58 209322A0 */  sb         $v0, %lo(D_801D9320)($at)
    /* 2DEE4 801B6E5C 1E80013C */  lui        $at, %hi(D_801D9321)
    /* 2DEE8 801B6E60 219322A0 */  sb         $v0, %lo(D_801D9321)($at)
    /* 2DEEC 801B6E64 1E80013C */  lui        $at, %hi(D_801D9322)
    /* 2DEF0 801B6E68 229322A0 */  sb         $v0, %lo(D_801D9322)($at)
  .L801B6E6C:
    /* 2DEF4 801B6E6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DEF8 801B6E70 21080102 */  addu       $at, $s0, $at
    /* 2DEFC 801B6E74 D8AB20A0 */  sb         $zero, -0x5428($at)
  .L801B6E78:
    /* 2DF00 801B6E78 01006324 */  addiu      $v1, $v1, 0x1
  .L801B6E7C:
    /* 2DF04 801B6E7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DF08 801B6E80 21080102 */  addu       $at, $s0, $at
    /* 2DF0C 801B6E84 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 2DF10 801B6E88 2BDC0608 */  j          .L801B70AC
    /* 2DF14 801B6E8C 00000000 */   nop
  jlabel .L801B6E90
    /* 2DF18 801B6E90 04000424 */  addiu      $a0, $zero, 0x4
    /* 2DF1C 801B6E94 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 2DF20 801B6E98 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 2DF24 801B6E9C 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 2DF28 801B6EA0 01000724 */  addiu      $a3, $zero, 0x1
    /* 2DF2C 801B6EA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DF30 801B6EA8 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* 2DF34 801B6EAC 188B22A0 */  sb         $v0, %lo(D_801D8B18)($at)
    /* 2DF38 801B6EB0 90010224 */  addiu      $v0, $zero, 0x190
    /* 2DF3C 801B6EB4 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 2DF40 801B6EB8 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 2DF44 801B6EBC 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 2DF48 801B6EC0 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 2DF4C 801B6EC4 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 2DF50 801B6EC8 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 2DF54 801B6ECC 20000224 */  addiu      $v0, $zero, 0x20
    /* 2DF58 801B6ED0 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 2DF5C 801B6ED4 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 2DF60 801B6ED8 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 2DF64 801B6EDC 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 2DF68 801B6EE0 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 2DF6C 801B6EE4 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 2DF70 801B6EE8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DF74 801B6EEC 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 2DF78 801B6EF0 7A8D20A4 */  sh         $zero, %lo(D_801D8D7A)($at)
    /* 2DF7C 801B6EF4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2DF80 801B6EF8 7850060C */  jal        func_801941E0
    /* 2DF84 801B6EFC 1400A2AF */   sw        $v0, 0x14($sp)
    /* 2DF88 801B6F00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DF8C 801B6F04 21080102 */  addu       $at, $s0, $at
    /* 2DF90 801B6F08 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2DF94 801B6F0C 41000324 */  addiu      $v1, $zero, 0x41
    /* 2DF98 801B6F10 A20223A2 */  sb         $v1, 0x2A2($s1)
    /* 2DF9C 801B6F14 28DC0608 */  j          .L801B70A0
    /* 2DFA0 801B6F18 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B6F1C
    /* 2DFA4 801B6F1C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DFA8 801B6F20 21080102 */  addu       $at, $s0, $at
    /* 2DFAC 801B6F24 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2DFB0 801B6F28 00000000 */  nop
    /* 2DFB4 801B6F2C 0F004230 */  andi       $v0, $v0, 0xF
    /* 2DFB8 801B6F30 02004014 */  bnez       $v0, .L801B6F3C
    /* 2DFBC 801B6F34 03000424 */   addiu     $a0, $zero, 0x3
    /* 2DFC0 801B6F38 01000424 */  addiu      $a0, $zero, 0x1
  .L801B6F3C:
    /* 2DFC4 801B6F3C 8BB3060C */  jal        func_801ACE2C
    /* 2DFC8 801B6F40 00000000 */   nop
    /* 2DFCC 801B6F44 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2DFD0 801B6F48 02000224 */  addiu      $v0, $zero, 0x2
    /* 2DFD4 801B6F4C 0C006210 */  beq        $v1, $v0, .L801B6F80
    /* 2DFD8 801B6F50 03006228 */   slti      $v0, $v1, 0x3
    /* 2DFDC 801B6F54 05004010 */  beqz       $v0, .L801B6F6C
    /* 2DFE0 801B6F58 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DFE4 801B6F5C 21006210 */  beq        $v1, $v0, .L801B6FE4
    /* 2DFE8 801B6F60 00000000 */   nop
    /* 2DFEC 801B6F64 2BDC0608 */  j          .L801B70AC
    /* 2DFF0 801B6F68 00000000 */   nop
  .L801B6F6C:
    /* 2DFF4 801B6F6C 03000224 */  addiu      $v0, $zero, 0x3
    /* 2DFF8 801B6F70 23006210 */  beq        $v1, $v0, .L801B7000
    /* 2DFFC 801B6F74 00000000 */   nop
    /* 2E000 801B6F78 2BDC0608 */  j          .L801B70AC
    /* 2E004 801B6F7C 00000000 */   nop
  .L801B6F80:
    /* 2E008 801B6F80 7F5C000C */  jal        func_800171FC
    /* 2E00C 801B6F84 02000424 */   addiu     $a0, $zero, 0x2
    /* 2E010 801B6F88 1E80043C */  lui        $a0, %hi(D_801D8A4C)
    /* 2E014 801B6F8C 4C8A848C */  lw         $a0, %lo(D_801D8A4C)($a0)
    /* 2E018 801B6F90 00000000 */  nop
    /* 2E01C 801B6F94 04008390 */  lbu        $v1, 0x4($a0)
    /* 2E020 801B6F98 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2E024 801B6F9C 0D006214 */  bne        $v1, $v0, .L801B6FD4
    /* 2E028 801B6FA0 00000000 */   nop
    /* 2E02C 801B6FA4 07008290 */  lbu        $v0, 0x7($a0)
    /* 2E030 801B6FA8 1E80013C */  lui        $at, %hi(D_801D8800)
    /* 2E034 801B6FAC 008822A0 */  sb         $v0, %lo(D_801D8800)($at)
    /* 2E038 801B6FB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E03C 801B6FB4 21080102 */  addu       $at, $s0, $at
    /* 2E040 801B6FB8 A8AB22A0 */  sb         $v0, -0x5458($at)
    /* 2E044 801B6FBC CEE3060C */  jal        func_801B8F38
    /* 2E048 801B6FC0 00000000 */   nop
    /* 2E04C 801B6FC4 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 2E050 801B6FC8 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 2E054 801B6FCC 28DC0608 */  j          .L801B70A0
    /* 2E058 801B6FD0 1E000224 */   addiu     $v0, $zero, 0x1E
  .L801B6FD4:
    /* 2E05C 801B6FD4 36E1060C */  jal        func_801B84D8
    /* 2E060 801B6FD8 21200000 */   addu      $a0, $zero, $zero
    /* 2E064 801B6FDC 28DC0608 */  j          .L801B70A0
    /* 2E068 801B6FE0 0A000224 */   addiu     $v0, $zero, 0xA
  .L801B6FE4:
    /* 2E06C 801B6FE4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E070 801B6FE8 21080102 */  addu       $at, $s0, $at
    /* 2E074 801B6FEC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E078 801B6FF0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 2E07C 801B6FF4 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 2E080 801B6FF8 28DC0608 */  j          .L801B70A0
    /* 2E084 801B6FFC 01004224 */   addiu     $v0, $v0, 0x1
  .L801B7000:
    /* 2E088 801B7000 9F0220A2 */  sb         $zero, 0x29F($s1)
    /* 2E08C 801B7004 C2E1060C */  jal        func_801B8708
    /* 2E090 801B7008 01000424 */   addiu     $a0, $zero, 0x1
  .L801B700C:
    /* 2E094 801B700C 715C000C */  jal        func_800171C4
    /* 2E098 801B7010 FF000424 */   addiu     $a0, $zero, 0xFF
    /* 2E09C 801B7014 2BDC0608 */  j          .L801B70AC
    /* 2E0A0 801B7018 00000000 */   nop
  jlabel .L801B701C
    /* 2E0A4 801B701C 1E80033C */  lui        $v1, %hi(D_801DA058)
    /* 2E0A8 801B7020 58A0638C */  lw         $v1, %lo(D_801DA058)($v1)
    /* 2E0AC 801B7024 00000000 */  nop
    /* 2E0B0 801B7028 10006228 */  slti       $v0, $v1, 0x10
    /* 2E0B4 801B702C 14004010 */  beqz       $v0, .L801B7080
    /* 2E0B8 801B7030 01006324 */   addiu     $v1, $v1, 0x1
    /* 2E0BC 801B7034 1E80043C */  lui        $a0, %hi(D_801D9320)
    /* 2E0C0 801B7038 20938424 */  addiu      $a0, $a0, %lo(D_801D9320)
    /* 2E0C4 801B703C 00008290 */  lbu        $v0, 0x0($a0)
    /* 2E0C8 801B7040 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 2E0CC 801B7044 58A023AC */  sw         $v1, %lo(D_801DA058)($at)
    /* 2E0D0 801B7048 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 2E0D4 801B704C 000082A0 */  sb         $v0, 0x0($a0)
    /* 2E0D8 801B7050 1E80023C */  lui        $v0, %hi(D_801D9321)
    /* 2E0DC 801B7054 21934290 */  lbu        $v0, %lo(D_801D9321)($v0)
    /* 2E0E0 801B7058 1E80033C */  lui        $v1, %hi(D_801D9322)
    /* 2E0E4 801B705C 22936390 */  lbu        $v1, %lo(D_801D9322)($v1)
    /* 2E0E8 801B7060 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 2E0EC 801B7064 FEFF6324 */  addiu      $v1, $v1, -0x2
  .L801B7068:
    /* 2E0F0 801B7068 1E80013C */  lui        $at, %hi(D_801D9321)
    /* 2E0F4 801B706C 219322A0 */  sb         $v0, %lo(D_801D9321)($at)
    /* 2E0F8 801B7070 1E80013C */  lui        $at, %hi(D_801D9322)
    /* 2E0FC 801B7074 229323A0 */  sb         $v1, %lo(D_801D9322)($at)
    /* 2E100 801B7078 2BDC0608 */  j          .L801B70AC
    /* 2E104 801B707C 00000000 */   nop
  .L801B7080:
    /* 2E108 801B7080 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E10C 801B7084 21080102 */  addu       $at, $s0, $at
    /* 2E110 801B7088 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E114 801B708C 1E80013C */  lui        $at, %hi(D_801D9313)
    /* 2E118 801B7090 139320A0 */  sb         $zero, %lo(D_801D9313)($at)
    /* 2E11C 801B7094 28DC0608 */  j          .L801B70A0
    /* 2E120 801B7098 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B709C
    /* 2E124 801B709C 96000224 */  addiu      $v0, $zero, 0x96
  .L801B70A0:
    /* 2E128 801B70A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E12C 801B70A4 21080102 */  addu       $at, $s0, $at
    /* 2E130 801B70A8 DAAB22A0 */  sb         $v0, -0x5426($at)
  jlabel .L801B70AC
    /* 2E134 801B70AC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2E138 801B70B0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2E13C 801B70B4 1800B08F */  lw         $s0, 0x18($sp)
    /* 2E140 801B70B8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2E144 801B70BC 0800E003 */  jr         $ra
    /* 2E148 801B70C0 00000000 */   nop
endlabel func_801B5A7C
