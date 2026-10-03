nonmatching func_801CCA00, 0x824

glabel func_801CCA00
    /* 43A88 801CCA00 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 43A8C 801CCA04 21200000 */  addu       $a0, $zero, $zero
    /* 43A90 801CCA08 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 43A94 801CCA0C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 43A98 801CCA10 5400B3AF */  sw         $s3, 0x54($sp)
    /* 43A9C 801CCA14 5000B2AF */  sw         $s2, 0x50($sp)
    /* 43AA0 801CCA18 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 43AA4 801CCA1C 98BB010C */  jal        func_8006EE60
    /* 43AA8 801CCA20 4800B0AF */   sw        $s0, 0x48($sp)
    /* 43AAC 801CCA24 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 43AB0 801CCA28 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 43AB4 801CCA2C 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 43AB8 801CCA30 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 43ABC 801CCA34 1E80143C */  lui        $s4, %hi(D_801D8D90)
    /* 43AC0 801CCA38 908D9426 */  addiu      $s4, $s4, %lo(D_801D8D90)
    /* 43AC4 801CCA3C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 43AC8 801CCA40 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 43ACC 801CCA44 1000622C */  sltiu      $v0, $v1, 0x10
    /* 43AD0 801CCA48 ED014010 */  beqz       $v0, .L801CD200
    /* 43AD4 801CCA4C 801F133C */   lui       $s3, (0x1F80029B >> 16)
    /* 43AD8 801CCA50 80100300 */  sll        $v0, $v1, 2
    /* 43ADC 801CCA54 1980013C */  lui        $at, %hi(jtbl_8018DA58)
    /* 43AE0 801CCA58 21082200 */  addu       $at, $at, $v0
    /* 43AE4 801CCA5C 58DA228C */  lw         $v0, %lo(jtbl_8018DA58)($at)
    /* 43AE8 801CCA60 00000000 */  nop
    /* 43AEC 801CCA64 08004000 */  jr         $v0
    /* 43AF0 801CCA68 00000000 */   nop
  jlabel .L801CCA6C
    /* 43AF4 801CCA6C 80000224 */  addiu      $v0, $zero, 0x80
    /* 43AF8 801CCA70 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 43AFC 801CCA74 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 43B00 801CCA78 83000224 */  addiu      $v0, $zero, 0x83
    /* 43B04 801CCA7C A20262A2 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($s3)
    /* 43B08 801CCA80 04000224 */  addiu      $v0, $zero, 0x4
    /* 43B0C 801CCA84 1E80013C */  lui        $at, %hi(D_801D8A30)
    /* 43B10 801CCA88 308A20A0 */  sb         $zero, %lo(D_801D8A30)($at)
    /* 43B14 801CCA8C 1E80013C */  lui        $at, %hi(D_801D8A30 + 0x1)
    /* 43B18 801CCA90 318A22A0 */  sb         $v0, %lo(D_801D8A30 + 0x1)($at)
    /* 43B1C 801CCA94 1E80013C */  lui        $at, %hi(D_801D8B0D)
    /* 43B20 801CCA98 0D8B20A0 */  sb         $zero, %lo(D_801D8B0D)($at)
    /* 43B24 801CCA9C 9B026292 */  lbu        $v0, (0x1F80029B & 0xFFFF)($s3)
    /* 43B28 801CCAA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 43B2C 801CCAA4 21080102 */  addu       $at, $s0, $at
    /* 43B30 801CCAA8 138F2390 */  lbu        $v1, -0x70ED($at)
    /* 43B34 801CCAAC 01004224 */  addiu      $v0, $v0, 0x1
    /* 43B38 801CCAB0 1E80013C */  lui        $at, %hi(D_801D8D70)
    /* 43B3C 801CCAB4 708D23A0 */  sb         $v1, %lo(D_801D8D70)($at)
    /* 43B40 801CCAB8 1E80013C */  lui        $at, %hi(D_801D8A34)
    /* 43B44 801CCABC 348A23A0 */  sb         $v1, %lo(D_801D8A34)($at)
    /* 43B48 801CCAC0 80340708 */  j          .L801CD200
    /* 43B4C 801CCAC4 9B0262A2 */   sb        $v0, (0x1F80029B & 0xFFFF)($s3)
  jlabel .L801CCAC8
    /* 43B50 801CCAC8 03000424 */  addiu      $a0, $zero, 0x3
    /* 43B54 801CCACC 21280000 */  addu       $a1, $zero, $zero
    /* 43B58 801CCAD0 21300000 */  addu       $a2, $zero, $zero
    /* 43B5C 801CCAD4 21380000 */  addu       $a3, $zero, $zero
    /* 43B60 801CCAD8 60000324 */  addiu      $v1, $zero, 0x60
    /* 43B64 801CCADC 2800A3AF */  sw         $v1, 0x28($sp)
    /* 43B68 801CCAE0 3400A3AF */  sw         $v1, 0x34($sp)
    /* 43B6C 801CCAE4 1E80033C */  lui        $v1, %hi(D_801D8A30)
    /* 43B70 801CCAE8 308A6390 */  lbu        $v1, %lo(D_801D8A30)($v1)
    /* 43B74 801CCAEC 1E80083C */  lui        $t0, %hi(D_801D8A30 + 0x1)
    /* 43B78 801CCAF0 318A0891 */  lbu        $t0, %lo(D_801D8A30 + 0x1)($t0)
    /* 43B7C 801CCAF4 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 43B80 801CCAF8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43B84 801CCAFC 34000224 */  addiu      $v0, $zero, 0x34
    /* 43B88 801CCB00 1400A2AF */  sw         $v0, 0x14($sp)
    /* 43B8C 801CCB04 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 43B90 801CCB08 1800A2AF */  sw         $v0, 0x18($sp)
    /* 43B94 801CCB0C E4FF0224 */  addiu      $v0, $zero, -0x1C
    /* 43B98 801CCB10 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 43B9C 801CCB14 20000224 */  addiu      $v0, $zero, 0x20
    /* 43BA0 801CCB18 2000A2AF */  sw         $v0, 0x20($sp)
    /* 43BA4 801CCB1C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 43BA8 801CCB20 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 43BAC 801CCB24 3000A2AF */  sw         $v0, 0x30($sp)
    /* 43BB0 801CCB28 01000224 */  addiu      $v0, $zero, 0x1
    /* 43BB4 801CCB2C 4000A0AF */  sw         $zero, 0x40($sp)
    /* 43BB8 801CCB30 4400A2AF */  sw         $v0, 0x44($sp)
    /* 43BBC 801CCB34 3800A3AF */  sw         $v1, 0x38($sp)
    /* 43BC0 801CCB38 F813070C */  jal        func_801C4FE0
    /* 43BC4 801CCB3C 3C00A8AF */   sw        $t0, 0x3C($sp)
    /* 43BC8 801CCB40 1E80033C */  lui        $v1, %hi(D_801D8A30)
    /* 43BCC 801CCB44 308A6390 */  lbu        $v1, %lo(D_801D8A30)($v1)
    /* 43BD0 801CCB48 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 43BD4 801CCB4C 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 43BD8 801CCB50 01006324 */  addiu      $v1, $v1, 0x1
    /* 43BDC 801CCB54 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 43BE0 801CCB58 1E80013C */  lui        $at, %hi(D_801D8A30)
    /* 43BE4 801CCB5C 308A23A0 */  sb         $v1, %lo(D_801D8A30)($at)
    /* 43BE8 801CCB60 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 43BEC 801CCB64 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 43BF0 801CCB68 AF0F070C */  jal        func_801C3EBC
    /* 43BF4 801CCB6C FF004430 */   andi      $a0, $v0, 0xFF
    /* 43BF8 801CCB70 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 43BFC 801CCB74 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 43C00 801CCB78 00000000 */  nop
    /* 43C04 801CCB7C 4100422C */  sltiu      $v0, $v0, 0x41
    /* 43C08 801CCB80 9F014010 */  beqz       $v0, .L801CD200
    /* 43C0C 801CCB84 00000000 */   nop
    /* 43C10 801CCB88 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43C14 801CCB8C 43340708 */  j          .L801CD10C
    /* 43C18 801CCB90 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CCB94
    /* 43C1C 801CCB94 21200000 */  addu       $a0, $zero, $zero
    /* 43C20 801CCB98 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 43C24 801CCB9C 1D80123C */  lui        $s2, %hi(D_801D5870)
    /* 43C28 801CCBA0 70585226 */  addiu      $s2, $s2, %lo(D_801D5870)
    /* 43C2C 801CCBA4 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 43C30 801CCBA8 38010224 */  addiu      $v0, $zero, 0x138
    /* 43C34 801CCBAC 03001124 */  addiu      $s1, $zero, 0x3
    /* 43C38 801CCBB0 0000458E */  lw         $a1, 0x0($s2)
    /* 43C3C 801CCBB4 01001024 */  addiu      $s0, $zero, 0x1
    /* 43C40 801CCBB8 1E80013C */  lui        $at, %hi(D_801D92F7)
    /* 43C44 801CCBBC F79220A0 */  sb         $zero, %lo(D_801D92F7)($at)
    /* 43C48 801CCBC0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43C4C 801CCBC4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 43C50 801CCBC8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 43C54 801CCBCC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 43C58 801CCBD0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 43C5C 801CCBD4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 43C60 801CCBD8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 43C64 801CCBDC B850060C */  jal        func_801942E0
    /* 43C68 801CCBE0 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 43C6C 801CCBE4 01000424 */  addiu      $a0, $zero, 0x1
    /* 43C70 801CCBE8 80FF0624 */  addiu      $a2, $zero, -0x80
    /* 43C74 801CCBEC EFFF0724 */  addiu      $a3, $zero, -0x11
    /* 43C78 801CCBF0 0000458E */  lw         $a1, 0x0($s2)
    /* 43C7C 801CCBF4 00010224 */  addiu      $v0, $zero, 0x100
    /* 43C80 801CCBF8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43C84 801CCBFC 05000224 */  addiu      $v0, $zero, 0x5
    /* 43C88 801CCC00 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 43C8C 801CCC04 0C000224 */  addiu      $v0, $zero, 0xC
    /* 43C90 801CCC08 1400B1AF */  sw         $s1, 0x14($sp)
    /* 43C94 801CCC0C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 43C98 801CCC10 2000A0AF */  sw         $zero, 0x20($sp)
    /* 43C9C 801CCC14 2400A2AF */  sw         $v0, 0x24($sp)
    /* 43CA0 801CCC18 2800B0AF */  sw         $s0, 0x28($sp)
    /* 43CA4 801CCC1C B850060C */  jal        func_801942E0
    /* 43CA8 801CCC20 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 43CAC 801CCC24 01000424 */  addiu      $a0, $zero, 0x1
    /* 43CB0 801CCC28 21280000 */  addu       $a1, $zero, $zero
    /* 43CB4 801CCC2C 21308002 */  addu       $a2, $s4, $zero
    /* 43CB8 801CCC30 21380000 */  addu       $a3, $zero, $zero
    /* 43CBC 801CCC34 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 43CC0 801CCC38 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 43CC4 801CCC3C 34000224 */  addiu      $v0, $zero, 0x34
    /* 43CC8 801CCC40 0600C2A4 */  sh         $v0, 0x6($a2)
    /* 43CCC 801CCC44 20000224 */  addiu      $v0, $zero, 0x20
    /* 43CD0 801CCC48 0800C2A0 */  sb         $v0, 0x8($a2)
    /* 43CD4 801CCC4C 0900C2A0 */  sb         $v0, 0x9($a2)
    /* 43CD8 801CCC50 60000224 */  addiu      $v0, $zero, 0x60
    /* 43CDC 801CCC54 0200C0A4 */  sh         $zero, 0x2($a2)
    /* 43CE0 801CCC58 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 43CE4 801CCC5C 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 43CE8 801CCC60 1000B1AF */  sw         $s1, 0x10($sp)
    /* 43CEC 801CCC64 7850060C */  jal        func_801941E0
    /* 43CF0 801CCC68 1400B0AF */   sw        $s0, 0x14($sp)
    /* 43CF4 801CCC6C 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43CF8 801CCC70 01000324 */  addiu      $v1, $zero, 0x1
    /* 43CFC 801CCC74 1E80013C */  lui        $at, %hi(D_801D8B0D)
    /* 43D00 801CCC78 0D8B23A0 */  sb         $v1, %lo(D_801D8B0D)($at)
    /* 43D04 801CCC7C 43340708 */  j          .L801CD10C
    /* 43D08 801CCC80 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CCC84
    /* 43D0C 801CCC84 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 43D10 801CCC88 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 43D14 801CCC8C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 43D18 801CCC90 23006210 */  beq        $v1, $v0, .L801CCD20
    /* 43D1C 801CCC94 01106228 */   slti      $v0, $v1, 0x1001
    /* 43D20 801CCC98 07004010 */  beqz       $v0, .L801CCCB8
    /* 43D24 801CCC9C 20000224 */   addiu     $v0, $zero, 0x20
    /* 43D28 801CCCA0 4A006210 */  beq        $v1, $v0, .L801CCDCC
    /* 43D2C 801CCCA4 40000224 */   addiu     $v0, $zero, 0x40
    /* 43D30 801CCCA8 60006210 */  beq        $v1, $v0, .L801CCE2C
    /* 43D34 801CCCAC 00000000 */   nop
    /* 43D38 801CCCB0 80340708 */  j          .L801CD200
    /* 43D3C 801CCCB4 00000000 */   nop
  .L801CCCB8:
    /* 43D40 801CCCB8 00400224 */  addiu      $v0, $zero, 0x4000
    /* 43D44 801CCCBC 0C006210 */  beq        $v1, $v0, .L801CCCF0
    /* 43D48 801CCCC0 01406228 */   slti      $v0, $v1, 0x4001
    /* 43D4C 801CCCC4 05004010 */  beqz       $v0, .L801CCCDC
    /* 43D50 801CCCC8 00200224 */   addiu     $v0, $zero, 0x2000
    /* 43D54 801CCCCC 2D006210 */  beq        $v1, $v0, .L801CCD84
    /* 43D58 801CCCD0 02000224 */   addiu     $v0, $zero, 0x2
    /* 43D5C 801CCCD4 80340708 */  j          .L801CD200
    /* 43D60 801CCCD8 00000000 */   nop
  .L801CCCDC:
    /* 43D64 801CCCDC 00800234 */  ori        $v0, $zero, 0x8000
    /* 43D68 801CCCE0 1D006210 */  beq        $v1, $v0, .L801CCD58
    /* 43D6C 801CCCE4 02000224 */   addiu     $v0, $zero, 0x2
    /* 43D70 801CCCE8 80340708 */  j          .L801CD200
    /* 43D74 801CCCEC 00000000 */   nop
  .L801CCCF0:
    /* 43D78 801CCCF0 1E80033C */  lui        $v1, %hi(D_801D8D70)
    /* 43D7C 801CCCF4 708D6390 */  lbu        $v1, %lo(D_801D8D70)($v1)
    /* 43D80 801CCCF8 02000224 */  addiu      $v0, $zero, 0x2
    /* 43D84 801CCCFC 04006210 */  beq        $v1, $v0, .L801CCD10
    /* 43D88 801CCD00 02000224 */   addiu     $v0, $zero, 0x2
    /* 43D8C 801CCD04 88AD020C */  jal        func_800AB620
    /* 43D90 801CCD08 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 43D94 801CCD0C 02000224 */  addiu      $v0, $zero, 0x2
  .L801CCD10:
    /* 43D98 801CCD10 1E80013C */  lui        $at, %hi(D_801D8D70)
    /* 43D9C 801CCD14 708D22A0 */  sb         $v0, %lo(D_801D8D70)($at)
    /* 43DA0 801CCD18 80340708 */  j          .L801CD200
    /* 43DA4 801CCD1C 00000000 */   nop
  .L801CCD20:
    /* 43DA8 801CCD20 1E80033C */  lui        $v1, %hi(D_801D8D70)
    /* 43DAC 801CCD24 708D6390 */  lbu        $v1, %lo(D_801D8D70)($v1)
    /* 43DB0 801CCD28 02000224 */  addiu      $v0, $zero, 0x2
    /* 43DB4 801CCD2C 34016214 */  bne        $v1, $v0, .L801CD200
    /* 43DB8 801CCD30 00000000 */   nop
    /* 43DBC 801CCD34 88AD020C */  jal        func_800AB620
    /* 43DC0 801CCD38 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 43DC4 801CCD3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 43DC8 801CCD40 21080102 */  addu       $at, $s0, $at
    /* 43DCC 801CCD44 138F2290 */  lbu        $v0, -0x70ED($at)
    /* 43DD0 801CCD48 1E80013C */  lui        $at, %hi(D_801D8D70)
    /* 43DD4 801CCD4C 708D22A0 */  sb         $v0, %lo(D_801D8D70)($at)
    /* 43DD8 801CCD50 80340708 */  j          .L801CD200
    /* 43DDC 801CCD54 00000000 */   nop
  .L801CCD58:
    /* 43DE0 801CCD58 1E80033C */  lui        $v1, %hi(D_801D8D70)
    /* 43DE4 801CCD5C 708D6390 */  lbu        $v1, %lo(D_801D8D70)($v1)
    /* 43DE8 801CCD60 00000000 */  nop
    /* 43DEC 801CCD64 26016210 */  beq        $v1, $v0, .L801CD200
    /* 43DF0 801CCD68 00000000 */   nop
    /* 43DF4 801CCD6C 24016014 */  bnez       $v1, .L801CD200
    /* 43DF8 801CCD70 01000224 */   addiu     $v0, $zero, 0x1
    /* 43DFC 801CCD74 1E80013C */  lui        $at, %hi(D_801D8D70)
    /* 43E00 801CCD78 708D22A0 */  sb         $v0, %lo(D_801D8D70)($at)
    /* 43E04 801CCD7C 6A330708 */  j          .L801CCDA8
    /* 43E08 801CCD80 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801CCD84:
    /* 43E0C 801CCD84 1E80033C */  lui        $v1, %hi(D_801D8D70)
    /* 43E10 801CCD88 708D6390 */  lbu        $v1, %lo(D_801D8D70)($v1)
    /* 43E14 801CCD8C 00000000 */  nop
    /* 43E18 801CCD90 1B016210 */  beq        $v1, $v0, .L801CD200
    /* 43E1C 801CCD94 01000224 */   addiu     $v0, $zero, 0x1
    /* 43E20 801CCD98 19016214 */  bne        $v1, $v0, .L801CD200
    /* 43E24 801CCD9C 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 43E28 801CCDA0 1E80013C */  lui        $at, %hi(D_801D8D70)
    /* 43E2C 801CCDA4 708D20A0 */  sb         $zero, %lo(D_801D8D70)($at)
  .L801CCDA8:
    /* 43E30 801CCDA8 88AD020C */  jal        func_800AB620
    /* 43E34 801CCDAC 00000000 */   nop
    /* 43E38 801CCDB0 1E80023C */  lui        $v0, %hi(D_801D8D70)
    /* 43E3C 801CCDB4 708D4290 */  lbu        $v0, %lo(D_801D8D70)($v0)
    /* 43E40 801CCDB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 43E44 801CCDBC 21080102 */  addu       $at, $s0, $at
    /* 43E48 801CCDC0 138F22A0 */  sb         $v0, -0x70ED($at)
    /* 43E4C 801CCDC4 80340708 */  j          .L801CD200
    /* 43E50 801CCDC8 00000000 */   nop
  .L801CCDCC:
    /* 43E54 801CCDCC 1E80033C */  lui        $v1, %hi(D_801D8D70)
    /* 43E58 801CCDD0 708D6390 */  lbu        $v1, %lo(D_801D8D70)($v1)
    /* 43E5C 801CCDD4 02000224 */  addiu      $v0, $zero, 0x2
    /* 43E60 801CCDD8 0F006214 */  bne        $v1, $v0, .L801CCE18
    /* 43E64 801CCDDC 00000000 */   nop
    /* 43E68 801CCDE0 88AD020C */  jal        func_800AB620
    /* 43E6C 801CCDE4 28050424 */   addiu     $a0, $zero, 0x528
    /* 43E70 801CCDE8 0100033C */  lui        $v1, (0x10000 >> 16)
    /* 43E74 801CCDEC 138F6390 */  lbu        $v1, -0x70ED($v1)
    /* 43E78 801CCDF0 0A000224 */  addiu      $v0, $zero, 0xA
    /* 43E7C 801CCDF4 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 43E80 801CCDF8 B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 43E84 801CCDFC 1E80013C */  lui        $at, %hi(D_801D8B0D)
    /* 43E88 801CCE00 0D8B20A0 */  sb         $zero, %lo(D_801D8B0D)($at)
    /* 43E8C 801CCE04 9B0262A2 */  sb         $v0, 0x29B($s3)
    /* 43E90 801CCE08 1E80013C */  lui        $at, %hi(D_801D8A34)
    /* 43E94 801CCE0C 348A23A0 */  sb         $v1, %lo(D_801D8A34)($at)
    /* 43E98 801CCE10 80340708 */  j          .L801CD200
    /* 43E9C 801CCE14 00000000 */   nop
  .L801CCE18:
    /* 43EA0 801CCE18 88AD020C */  jal        func_800AB620
    /* 43EA4 801CCE1C 28050424 */   addiu     $a0, $zero, 0x528
    /* 43EA8 801CCE20 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43EAC 801CCE24 43340708 */  j          .L801CD10C
    /* 43EB0 801CCE28 01004224 */   addiu     $v0, $v0, 0x1
  .L801CCE2C:
    /* 43EB4 801CCE2C 88AD020C */  jal        func_800AB620
    /* 43EB8 801CCE30 29050424 */   addiu     $a0, $zero, 0x529
    /* 43EBC 801CCE34 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43EC0 801CCE38 1E80033C */  lui        $v1, %hi(D_801D8A34)
    /* 43EC4 801CCE3C 348A6390 */  lbu        $v1, %lo(D_801D8A34)($v1)
    /* 43EC8 801CCE40 01004224 */  addiu      $v0, $v0, 0x1
    /* 43ECC 801CCE44 0100013C */  lui        $at, (0x10000 >> 16)
    /* 43ED0 801CCE48 21080102 */  addu       $at, $s0, $at
    /* 43ED4 801CCE4C 138F23A0 */  sb         $v1, -0x70ED($at)
    /* 43ED8 801CCE50 80340708 */  j          .L801CD200
    /* 43EDC 801CCE54 9B0262A2 */   sb        $v0, 0x29B($s3)
  jlabel .L801CCE58
    /* 43EE0 801CCE58 03000424 */  addiu      $a0, $zero, 0x3
    /* 43EE4 801CCE5C 21280000 */  addu       $a1, $zero, $zero
    /* 43EE8 801CCE60 21300000 */  addu       $a2, $zero, $zero
    /* 43EEC 801CCE64 21380000 */  addu       $a3, $zero, $zero
    /* 43EF0 801CCE68 60000324 */  addiu      $v1, $zero, 0x60
    /* 43EF4 801CCE6C 2800A3AF */  sw         $v1, 0x28($sp)
    /* 43EF8 801CCE70 3400A3AF */  sw         $v1, 0x34($sp)
    /* 43EFC 801CCE74 1E80033C */  lui        $v1, %hi(D_801D8A30 + 0x1)
    /* 43F00 801CCE78 318A6390 */  lbu        $v1, %lo(D_801D8A30 + 0x1)($v1)
    /* 43F04 801CCE7C 04000224 */  addiu      $v0, $zero, 0x4
    /* 43F08 801CCE80 1E80013C */  lui        $at, %hi(D_801D8A30)
    /* 43F0C 801CCE84 308A22A0 */  sb         $v0, %lo(D_801D8A30)($at)
    /* 43F10 801CCE88 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 43F14 801CCE8C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43F18 801CCE90 34000224 */  addiu      $v0, $zero, 0x34
    /* 43F1C 801CCE94 1400A2AF */  sw         $v0, 0x14($sp)
    /* 43F20 801CCE98 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 43F24 801CCE9C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 43F28 801CCEA0 E4FF0224 */  addiu      $v0, $zero, -0x1C
    /* 43F2C 801CCEA4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 43F30 801CCEA8 20000224 */  addiu      $v0, $zero, 0x20
    /* 43F34 801CCEAC 2000A2AF */  sw         $v0, 0x20($sp)
    /* 43F38 801CCEB0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 43F3C 801CCEB4 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 43F40 801CCEB8 3000A2AF */  sw         $v0, 0x30($sp)
    /* 43F44 801CCEBC 04000224 */  addiu      $v0, $zero, 0x4
    /* 43F48 801CCEC0 3800A2AF */  sw         $v0, 0x38($sp)
    /* 43F4C 801CCEC4 01000224 */  addiu      $v0, $zero, 0x1
    /* 43F50 801CCEC8 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 43F54 801CCECC B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 43F58 801CCED0 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 43F5C 801CCED4 BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 43F60 801CCED8 1E80013C */  lui        $at, %hi(D_801D8B0D)
    /* 43F64 801CCEDC 0D8B20A0 */  sb         $zero, %lo(D_801D8B0D)($at)
    /* 43F68 801CCEE0 4000A0AF */  sw         $zero, 0x40($sp)
    /* 43F6C 801CCEE4 4400A2AF */  sw         $v0, 0x44($sp)
    /* 43F70 801CCEE8 F813070C */  jal        func_801C4FE0
    /* 43F74 801CCEEC 3C00A3AF */   sw        $v1, 0x3C($sp)
    /* 43F78 801CCEF0 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43F7C 801CCEF4 43340708 */  j          .L801CD10C
    /* 43F80 801CCEF8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CCEFC
    /* 43F84 801CCEFC 03000424 */  addiu      $a0, $zero, 0x3
    /* 43F88 801CCF00 21280000 */  addu       $a1, $zero, $zero
    /* 43F8C 801CCF04 21300000 */  addu       $a2, $zero, $zero
    /* 43F90 801CCF08 21380000 */  addu       $a3, $zero, $zero
    /* 43F94 801CCF0C 60000324 */  addiu      $v1, $zero, 0x60
    /* 43F98 801CCF10 2800A3AF */  sw         $v1, 0x28($sp)
    /* 43F9C 801CCF14 3400A3AF */  sw         $v1, 0x34($sp)
    /* 43FA0 801CCF18 1E80033C */  lui        $v1, %hi(D_801D8A30)
    /* 43FA4 801CCF1C 308A6390 */  lbu        $v1, %lo(D_801D8A30)($v1)
    /* 43FA8 801CCF20 1E80083C */  lui        $t0, %hi(D_801D8A30 + 0x1)
    /* 43FAC 801CCF24 318A0891 */  lbu        $t0, %lo(D_801D8A30 + 0x1)($t0)
    /* 43FB0 801CCF28 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 43FB4 801CCF2C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43FB8 801CCF30 34000224 */  addiu      $v0, $zero, 0x34
    /* 43FBC 801CCF34 1400A2AF */  sw         $v0, 0x14($sp)
    /* 43FC0 801CCF38 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 43FC4 801CCF3C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 43FC8 801CCF40 E4FF0224 */  addiu      $v0, $zero, -0x1C
    /* 43FCC 801CCF44 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 43FD0 801CCF48 20000224 */  addiu      $v0, $zero, 0x20
    /* 43FD4 801CCF4C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 43FD8 801CCF50 2400A2AF */  sw         $v0, 0x24($sp)
    /* 43FDC 801CCF54 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 43FE0 801CCF58 3000A2AF */  sw         $v0, 0x30($sp)
    /* 43FE4 801CCF5C 01000224 */  addiu      $v0, $zero, 0x1
    /* 43FE8 801CCF60 4000A0AF */  sw         $zero, 0x40($sp)
    /* 43FEC 801CCF64 4400A2AF */  sw         $v0, 0x44($sp)
    /* 43FF0 801CCF68 3800A3AF */  sw         $v1, 0x38($sp)
    /* 43FF4 801CCF6C F813070C */  jal        func_801C4FE0
    /* 43FF8 801CCF70 3C00A8AF */   sw        $t0, 0x3C($sp)
    /* 43FFC 801CCF74 1E80023C */  lui        $v0, %hi(D_801D8A30)
    /* 44000 801CCF78 308A4290 */  lbu        $v0, %lo(D_801D8A30)($v0)
    /* 44004 801CCF7C 00000000 */  nop
    /* 44008 801CCF80 03004010 */  beqz       $v0, .L801CCF90
    /* 4400C 801CCF84 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 44010 801CCF88 1E80013C */  lui        $at, %hi(D_801D8A30)
    /* 44014 801CCF8C 308A22A0 */  sb         $v0, %lo(D_801D8A30)($at)
  .L801CCF90:
    /* 44018 801CCF90 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 4401C 801CCF94 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 44020 801CCF98 00000000 */  nop
    /* 44024 801CCF9C 08004224 */  addiu      $v0, $v0, 0x8
    /* 44028 801CCFA0 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 4402C 801CCFA4 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 44030 801CCFA8 AF0F070C */  jal        func_801C3EBC
    /* 44034 801CCFAC FF004430 */   andi      $a0, $v0, 0xFF
    /* 44038 801CCFB0 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 4403C 801CCFB4 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 44040 801CCFB8 00000000 */  nop
    /* 44044 801CCFBC 8000422C */  sltiu      $v0, $v0, 0x80
    /* 44048 801CCFC0 8F004014 */  bnez       $v0, .L801CD200
    /* 4404C 801CCFC4 00000000 */   nop
    /* 44050 801CCFC8 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 44054 801CCFCC 1E80013C */  lui        $at, %hi(D_801D92F7)
    /* 44058 801CCFD0 F79220A0 */  sb         $zero, %lo(D_801D92F7)($at)
    /* 4405C 801CCFD4 43340708 */  j          .L801CD10C
    /* 44060 801CCFD8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CCFDC
    /* 44064 801CCFDC 9B0E070C */  jal        func_801C3A6C
    /* 44068 801CCFE0 A20260A2 */   sb        $zero, 0x2A2($s3)
    /* 4406C 801CCFE4 03000224 */  addiu      $v0, $zero, 0x3
    /* 44070 801CCFE8 9B0262A2 */  sb         $v0, 0x29B($s3)
    /* 44074 801CCFEC 10000224 */  addiu      $v0, $zero, 0x10
    /* 44078 801CCFF0 80340708 */  j          .L801CD200
    /* 4407C 801CCFF4 9A0262A2 */   sb        $v0, 0x29A($s3)
  jlabel .L801CCFF8
    /* 44080 801CCFF8 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 44084 801CCFFC 00000000 */  nop
    /* 44088 801CD000 01004224 */  addiu      $v0, $v0, 0x1
    /* 4408C 801CD004 9B0262A2 */  sb         $v0, 0x29B($s3)
  jlabel .L801CD008
    /* 44090 801CD008 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 44094 801CD00C 55A020A0 */  sb         $zero, %lo(D_801DA055)($at)
    /* 44098 801CD010 9B026392 */  lbu        $v1, 0x29B($s3)
    /* 4409C 801CD014 0100013C */  lui        $at, (0x10000 >> 16)
    /* 440A0 801CD018 21080102 */  addu       $at, $s0, $at
    /* 440A4 801CD01C 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 440A8 801CD020 01006324 */  addiu      $v1, $v1, 0x1
    /* 440AC 801CD024 08004234 */  ori        $v0, $v0, 0x8
    /* 440B0 801CD028 0100013C */  lui        $at, (0x10000 >> 16)
    /* 440B4 801CD02C 21080102 */  addu       $at, $s0, $at
    /* 440B8 801CD030 148F22A0 */  sb         $v0, -0x70EC($at)
    /* 440BC 801CD034 9B0263A2 */  sb         $v1, 0x29B($s3)
  jlabel .L801CD038
    /* 440C0 801CD038 01000424 */  addiu      $a0, $zero, 0x1
    /* 440C4 801CD03C 0438070C */  jal        func_801CE010
    /* 440C8 801CD040 FF000524 */   addiu     $a1, $zero, 0xFF
    /* 440CC 801CD044 FF004330 */  andi       $v1, $v0, 0xFF
    /* 440D0 801CD048 01000224 */  addiu      $v0, $zero, 0x1
    /* 440D4 801CD04C 0C006210 */  beq        $v1, $v0, .L801CD080
    /* 440D8 801CD050 02006228 */   slti      $v0, $v1, 0x2
    /* 440DC 801CD054 05004010 */  beqz       $v0, .L801CD06C
    /* 440E0 801CD058 00000000 */   nop
    /* 440E4 801CD05C 68006010 */  beqz       $v1, .L801CD200
    /* 440E8 801CD060 04000224 */   addiu     $v0, $zero, 0x4
    /* 440EC 801CD064 65340708 */  j          .L801CD194
    /* 440F0 801CD068 00000000 */   nop
  .L801CD06C:
    /* 440F4 801CD06C 02000224 */  addiu      $v0, $zero, 0x2
    /* 440F8 801CD070 0B006210 */  beq        $v1, $v0, .L801CD0A0
    /* 440FC 801CD074 14000224 */   addiu     $v0, $zero, 0x14
    /* 44100 801CD078 65340708 */  j          .L801CD194
    /* 44104 801CD07C 04000224 */   addiu     $v0, $zero, 0x4
  .L801CD080:
    /* 44108 801CD080 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 4410C 801CD084 55A020A0 */  sb         $zero, %lo(D_801DA055)($at)
    /* 44110 801CD088 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 44114 801CD08C 15000324 */  addiu      $v1, $zero, 0x15
    /* 44118 801CD090 1E80013C */  lui        $at, %hi(D_801D8A30 + 0x3)
    /* 4411C 801CD094 338A23A0 */  sb         $v1, %lo(D_801D8A30 + 0x3)($at)
    /* 44120 801CD098 43340708 */  j          .L801CD10C
    /* 44124 801CD09C 01004224 */   addiu     $v0, $v0, 0x1
  .L801CD0A0:
    /* 44128 801CD0A0 1E80013C */  lui        $at, %hi(D_801D8A30 + 0x3)
    /* 4412C 801CD0A4 338A22A0 */  sb         $v0, %lo(D_801D8A30 + 0x3)($at)
    /* 44130 801CD0A8 0E000224 */  addiu      $v0, $zero, 0xE
    /* 44134 801CD0AC 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 44138 801CD0B0 55A020A0 */  sb         $zero, %lo(D_801DA055)($at)
    /* 4413C 801CD0B4 80340708 */  j          .L801CD200
    /* 44140 801CD0B8 9B0262A2 */   sb        $v0, 0x29B($s3)
  jlabel .L801CD0BC
    /* 44144 801CD0BC 01000424 */  addiu      $a0, $zero, 0x1
    /* 44148 801CD0C0 D0000524 */  addiu      $a1, $zero, 0xD0
    /* 4414C 801CD0C4 1E80023C */  lui        $v0, %hi(D_801D8A30 + 0x3)
    /* 44150 801CD0C8 338A4290 */  lbu        $v0, %lo(D_801D8A30 + 0x3)($v0)
    /* 44154 801CD0CC F8FF0324 */  addiu      $v1, $zero, -0x8
    /* 44158 801CD0D0 1000A3AF */  sw         $v1, 0x10($sp)
    /* 4415C 801CD0D4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44160 801CD0D8 80100200 */  sll        $v0, $v0, 2
    /* 44164 801CD0DC 1D80013C */  lui        $at, %hi(D_801D5844)
    /* 44168 801CD0E0 21082200 */  addu       $at, $at, $v0
    /* 4416C 801CD0E4 4458278C */  lw         $a3, %lo(D_801D5844)($at)
    /* 44170 801CD0E8 B914070C */  jal        func_801C52E4
    /* 44174 801CD0EC 34000624 */   addiu     $a2, $zero, 0x34
    /* 44178 801CD0F0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4417C 801CD0F4 42004010 */  beqz       $v0, .L801CD200
    /* 44180 801CD0F8 00000000 */   nop
    /* 44184 801CD0FC 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 44188 801CD100 1E80013C */  lui        $at, %hi(D_801D8A30 + 0x2)
    /* 4418C 801CD104 328A20A0 */  sb         $zero, %lo(D_801D8A30 + 0x2)($at)
    /* 44190 801CD108 01004224 */  addiu      $v0, $v0, 0x1
  .L801CD10C:
    /* 44194 801CD10C 80340708 */  j          .L801CD200
    /* 44198 801CD110 9B0262A2 */   sb        $v0, 0x29B($s3)
  jlabel .L801CD114
    /* 4419C 801CD114 1E80023C */  lui        $v0, %hi(D_801D8A30 + 0x2)
    /* 441A0 801CD118 328A4290 */  lbu        $v0, %lo(D_801D8A30 + 0x2)($v0)
    /* 441A4 801CD11C 1E80033C */  lui        $v1, %hi(D_801D8A30 + 0x3)
    /* 441A8 801CD120 338A6390 */  lbu        $v1, %lo(D_801D8A30 + 0x3)($v1)
    /* 441AC 801CD124 01004224 */  addiu      $v0, $v0, 0x1
    /* 441B0 801CD128 1E80013C */  lui        $at, %hi(D_801D8A30 + 0x2)
    /* 441B4 801CD12C 328A22A0 */  sb         $v0, %lo(D_801D8A30 + 0x2)($at)
    /* 441B8 801CD130 14000224 */  addiu      $v0, $zero, 0x14
    /* 441BC 801CD134 03006214 */  bne        $v1, $v0, .L801CD144
    /* 441C0 801CD138 00000000 */   nop
    /* 441C4 801CD13C 1E80013C */  lui        $at, %hi(D_801D8A30 + 0x2)
    /* 441C8 801CD140 328A20A0 */  sb         $zero, %lo(D_801D8A30 + 0x2)($at)
  .L801CD144:
    /* 441CC 801CD144 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 441D0 801CD148 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 441D4 801CD14C 00000000 */  nop
    /* 441D8 801CD150 FF0F6230 */  andi       $v0, $v1, 0xFFF
    /* 441DC 801CD154 09004010 */  beqz       $v0, .L801CD17C
    /* 441E0 801CD158 20000224 */   addiu     $v0, $zero, 0x20
    /* 441E4 801CD15C 02006214 */  bne        $v1, $v0, .L801CD168
    /* 441E8 801CD160 29050424 */   addiu     $a0, $zero, 0x529
    /* 441EC 801CD164 28050424 */  addiu      $a0, $zero, 0x528
  .L801CD168:
    /* 441F0 801CD168 88AD020C */  jal        func_800AB620
    /* 441F4 801CD16C 00000000 */   nop
    /* 441F8 801CD170 64000224 */  addiu      $v0, $zero, 0x64
    /* 441FC 801CD174 1E80013C */  lui        $at, %hi(D_801D8A30 + 0x2)
    /* 44200 801CD178 328A22A0 */  sb         $v0, %lo(D_801D8A30 + 0x2)($at)
  .L801CD17C:
    /* 44204 801CD17C 1E80023C */  lui        $v0, %hi(D_801D8A30 + 0x2)
    /* 44208 801CD180 328A4290 */  lbu        $v0, %lo(D_801D8A30 + 0x2)($v0)
    /* 4420C 801CD184 00000000 */  nop
    /* 44210 801CD188 6400422C */  sltiu      $v0, $v0, 0x64
    /* 44214 801CD18C 1C004014 */  bnez       $v0, .L801CD200
    /* 44218 801CD190 04000224 */   addiu     $v0, $zero, 0x4
  .L801CD194:
    /* 4421C 801CD194 80340708 */  j          .L801CD200
    /* 44220 801CD198 9B0262A2 */   sb        $v0, 0x29B($s3)
  jlabel .L801CD19C
    /* 44224 801CD19C 01000424 */  addiu      $a0, $zero, 0x1
    /* 44228 801CD1A0 D0000524 */  addiu      $a1, $zero, 0xD0
    /* 4422C 801CD1A4 34000624 */  addiu      $a2, $zero, 0x34
    /* 44230 801CD1A8 1D80073C */  lui        $a3, %hi(D_801D5870)
    /* 44234 801CD1AC 7058E78C */  lw         $a3, %lo(D_801D5870)($a3)
    /* 44238 801CD1B0 EFFF0224 */  addiu      $v0, $zero, -0x11
    /* 4423C 801CD1B4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44240 801CD1B8 05000224 */  addiu      $v0, $zero, 0x5
    /* 44244 801CD1BC B914070C */  jal        func_801C52E4
    /* 44248 801CD1C0 1400A2AF */   sw        $v0, 0x14($sp)
    /* 4424C 801CD1C4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 44250 801CD1C8 0D004010 */  beqz       $v0, .L801CD200
    /* 44254 801CD1CC 01000224 */   addiu     $v0, $zero, 0x1
    /* 44258 801CD1D0 1E80013C */  lui        $at, %hi(D_801D8B0D)
    /* 4425C 801CD1D4 0D8B22A0 */  sb         $v0, %lo(D_801D8B0D)($at)
    /* 44260 801CD1D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 44264 801CD1DC 21080102 */  addu       $at, $s0, $at
    /* 44268 801CD1E0 138F2390 */  lbu        $v1, -0x70ED($at)
    /* 4426C 801CD1E4 03000224 */  addiu      $v0, $zero, 0x3
    /* 44270 801CD1E8 9B0262A2 */  sb         $v0, 0x29B($s3)
    /* 44274 801CD1EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 44278 801CD1F0 21080102 */  addu       $at, $s0, $at
    /* 4427C 801CD1F4 138F23A0 */  sb         $v1, -0x70ED($at)
    /* 44280 801CD1F8 1E80013C */  lui        $at, %hi(D_801D8D70)
    /* 44284 801CD1FC 708D23A0 */  sb         $v1, %lo(D_801D8D70)($at)
  jlabel .L801CD200
    /* 44288 801CD200 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 4428C 801CD204 5800B48F */  lw         $s4, 0x58($sp)
    /* 44290 801CD208 5400B38F */  lw         $s3, 0x54($sp)
    /* 44294 801CD20C 5000B28F */  lw         $s2, 0x50($sp)
    /* 44298 801CD210 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 4429C 801CD214 4800B08F */  lw         $s0, 0x48($sp)
    /* 442A0 801CD218 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 442A4 801CD21C 0800E003 */  jr         $ra
    /* 442A8 801CD220 00000000 */   nop
endlabel func_801CCA00
