nonmatching func_801AC9D8, 0x454

glabel func_801AC9D8
    /* 23A60 801AC9D8 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 23A64 801AC9DC FF008430 */  andi       $a0, $a0, 0xFF
    /* 23A68 801AC9E0 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 23A6C 801AC9E4 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 23A70 801AC9E8 6800B4AF */  sw         $s4, 0x68($sp)
    /* 23A74 801AC9EC 6400B3AF */  sw         $s3, 0x64($sp)
    /* 23A78 801AC9F0 6000B2AF */  sw         $s2, 0x60($sp)
    /* 23A7C 801AC9F4 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* 23A80 801AC9F8 5800B0AF */  sw         $s0, 0x58($sp)
    /* 23A84 801AC9FC 1180013C */  lui        $at, %hi(D_8010A2C8)
    /* 23A88 801ACA00 21082400 */  addu       $at, $at, $a0
    /* 23A8C 801ACA04 C8A22290 */  lbu        $v0, %lo(D_8010A2C8)($at)
    /* 23A90 801ACA08 1180013C */  lui        $at, %hi(D_8010A2C8)
    /* 23A94 801ACA0C 21082500 */  addu       $at, $at, $a1
    /* 23A98 801ACA10 C8A22490 */  lbu        $a0, %lo(D_8010A2C8)($at)
    /* 23A9C 801ACA14 C0180200 */  sll        $v1, $v0, 3
    /* 23AA0 801ACA18 21186200 */  addu       $v1, $v1, $v0
    /* 23AA4 801ACA1C 80180300 */  sll        $v1, $v1, 2
    /* 23AA8 801ACA20 C0100400 */  sll        $v0, $a0, 3
    /* 23AAC 801ACA24 21104400 */  addu       $v0, $v0, $a0
    /* 23AB0 801ACA28 80100200 */  sll        $v0, $v0, 2
    /* 23AB4 801ACA2C 1180013C */  lui        $at, %hi(D_8010866D)
    /* 23AB8 801ACA30 21082300 */  addu       $at, $at, $v1
    /* 23ABC 801ACA34 6D863390 */  lbu        $s3, %lo(D_8010866D)($at)
    /* 23AC0 801ACA38 1180013C */  lui        $at, %hi(D_8010866D)
    /* 23AC4 801ACA3C 21082200 */  addu       $at, $at, $v0
    /* 23AC8 801ACA40 6D863490 */  lbu        $s4, %lo(D_8010866D)($at)
    /* 23ACC 801ACA44 1180043C */  lui        $a0, %hi(D_8010A320)
    /* 23AD0 801ACA48 20A38490 */  lbu        $a0, %lo(D_8010A320)($a0)
    /* 23AD4 801ACA4C 01001224 */  addiu      $s2, $zero, 0x1
    /* 23AD8 801ACA50 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 23ADC 801ACA54 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 23AE0 801ACA58 FF008330 */  andi       $v1, $a0, 0xFF
    /* 23AE4 801ACA5C C9007210 */  beq        $v1, $s2, .L801ACD84
    /* 23AE8 801ACA60 02006228 */   slti      $v0, $v1, 0x2
    /* 23AEC 801ACA64 05004010 */  beqz       $v0, .L801ACA7C
    /* 23AF0 801ACA68 00000000 */   nop
    /* 23AF4 801ACA6C 0A006010 */  beqz       $v1, .L801ACA98
    /* 23AF8 801ACA70 21100000 */   addu      $v0, $zero, $zero
    /* 23AFC 801ACA74 82B30608 */  j          .L801ACE08
    /* 23B00 801ACA78 00000000 */   nop
  .L801ACA7C:
    /* 23B04 801ACA7C 02000224 */  addiu      $v0, $zero, 0x2
    /* 23B08 801ACA80 C0006210 */  beq        $v1, $v0, .L801ACD84
    /* 23B0C 801ACA84 03000224 */   addiu     $v0, $zero, 0x3
    /* 23B10 801ACA88 C3006210 */  beq        $v1, $v0, .L801ACD98
    /* 23B14 801ACA8C 01000424 */   addiu     $a0, $zero, 0x1
    /* 23B18 801ACA90 82B30608 */  j          .L801ACE08
    /* 23B1C 801ACA94 21100000 */   addu      $v0, $zero, $zero
  .L801ACA98:
    /* 23B20 801ACA98 1E80013C */  lui        $at, %hi(D_801D86BD)
    /* 23B24 801ACA9C BD8620A0 */  sb         $zero, %lo(D_801D86BD)($at)
    /* 23B28 801ACAA0 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 23B2C 801ACAA4 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 23B30 801ACAA8 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* 23B34 801ACAAC EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* 23B38 801ACAB0 1458020C */  jal        func_80096050
    /* 23B3C 801ACAB4 00000000 */   nop
    /* 23B40 801ACAB8 2771010C */  jal        func_8005C49C
    /* 23B44 801ACABC 00000000 */   nop
    /* 23B48 801ACAC0 1180033C */  lui        $v1, %hi(D_8010865D)
    /* 23B4C 801ACAC4 5D866390 */  lbu        $v1, %lo(D_8010865D)($v1)
    /* 23B50 801ACAC8 C0FF0224 */  addiu      $v0, $zero, -0x40
    /* 23B54 801ACACC 1180013C */  lui        $at, %hi(D_8010A370)
    /* 23B58 801ACAD0 70A322A4 */  sh         $v0, %lo(D_8010A370)($at)
    /* 23B5C 801ACAD4 40000224 */  addiu      $v0, $zero, 0x40
    /* 23B60 801ACAD8 1180013C */  lui        $at, %hi(D_8010A372)
    /* 23B64 801ACADC 72A322A4 */  sh         $v0, %lo(D_8010A372)($at)
    /* 23B68 801ACAE0 08000224 */  addiu      $v0, $zero, 0x8
    /* 23B6C 801ACAE4 1180013C */  lui        $at, %hi(D_8010A376)
    /* 23B70 801ACAE8 76A322A4 */  sh         $v0, %lo(D_8010A376)($at)
    /* 23B74 801ACAEC 1180013C */  lui        $at, %hi(D_8010A374)
    /* 23B78 801ACAF0 74A322A4 */  sh         $v0, %lo(D_8010A374)($at)
    /* 23B7C 801ACAF4 00030224 */  addiu      $v0, $zero, 0x300
    /* 23B80 801ACAF8 1180013C */  lui        $at, %hi(D_8010A37A)
    /* 23B84 801ACAFC 7AA322A4 */  sh         $v0, %lo(D_8010A37A)($at)
    /* 23B88 801ACB00 1180013C */  lui        $at, %hi(D_8010A378)
    /* 23B8C 801ACB04 78A322A4 */  sh         $v0, %lo(D_8010A378)($at)
    /* 23B90 801ACB08 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 23B94 801ACB0C 1180013C */  lui        $at, %hi(D_8010A384)
    /* 23B98 801ACB10 84A322A4 */  sh         $v0, %lo(D_8010A384)($at)
    /* 23B9C 801ACB14 1180013C */  lui        $at, %hi(D_8010A37C)
    /* 23BA0 801ACB18 7CA322A4 */  sh         $v0, %lo(D_8010A37C)($at)
    /* 23BA4 801ACB1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 23BA8 801ACB20 1180013C */  lui        $at, %hi(D_8010A369)
    /* 23BAC 801ACB24 69A322A0 */  sb         $v0, %lo(D_8010A369)($at)
    /* 23BB0 801ACB28 1180013C */  lui        $at, %hi(D_8010A368)
    /* 23BB4 801ACB2C 68A322A0 */  sb         $v0, %lo(D_8010A368)($at)
    /* 23BB8 801ACB30 09006010 */  beqz       $v1, .L801ACB58
    /* 23BBC 801ACB34 00000000 */   nop
    /* 23BC0 801ACB38 801F023C */  lui        $v0, (0x1F8002DE >> 16)
    /* 23BC4 801ACB3C DE024290 */  lbu        $v0, (0x1F8002DE & 0xFFFF)($v0)
    /* 23BC8 801ACB40 801F033C */  lui        $v1, (0x1F8002DD >> 16)
    /* 23BCC 801ACB44 DD026390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($v1)
    /* 23BD0 801ACB48 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 23BD4 801ACB4C DD0222A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($at)
    /* 23BD8 801ACB50 801F013C */  lui        $at, (0x1F8002DE >> 16)
    /* 23BDC 801ACB54 DE0223A0 */  sb         $v1, (0x1F8002DE & 0xFFFF)($at)
  .L801ACB58:
    /* 23BE0 801ACB58 7740010C */  jal        func_800501DC
    /* 23BE4 801ACB5C 21200000 */   addu      $a0, $zero, $zero
    /* 23BE8 801ACB60 7740010C */  jal        func_800501DC
    /* 23BEC 801ACB64 01000424 */   addiu     $a0, $zero, 0x1
    /* 23BF0 801ACB68 21200000 */  addu       $a0, $zero, $zero
    /* 23BF4 801ACB6C 0050053C */  lui        $a1, (0x50000000 >> 16)
    /* 23BF8 801ACB70 1E80103C */  lui        $s0, %hi(D_801D8D78)
    /* 23BFC 801ACB74 788D1026 */  addiu      $s0, $s0, %lo(D_801D8D78)
    /* 23C00 801ACB78 21300002 */  addu       $a2, $s0, $zero
    /* 23C04 801ACB7C 01000724 */  addiu      $a3, $zero, 0x1
    /* 23C08 801ACB80 FAFF0224 */  addiu      $v0, $zero, -0x6
    /* 23C0C 801ACB84 000000A6 */  sh         $zero, 0x0($s0)
    /* 23C10 801ACB88 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 23C14 801ACB8C 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 23C18 801ACB90 18010224 */  addiu      $v0, $zero, 0x118
    /* 23C1C 801ACB94 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 23C20 801ACB98 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 23C24 801ACB9C 60000224 */  addiu      $v0, $zero, 0x60
    /* 23C28 801ACBA0 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 23C2C 801ACBA4 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 23C30 801ACBA8 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 23C34 801ACBAC 02001124 */  addiu      $s1, $zero, 0x2
    /* 23C38 801ACBB0 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 23C3C 801ACBB4 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 23C40 801ACBB8 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 23C44 801ACBBC 818D20A0 */  sb         $zero, %lo(D_801D8D81)($at)
    /* 23C48 801ACBC0 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 23C4C 801ACBC4 828D20A0 */  sb         $zero, %lo(D_801D8D82)($at)
    /* 23C50 801ACBC8 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 23C54 801ACBCC 838D22A0 */  sb         $v0, %lo(D_801D8D83)($at)
    /* 23C58 801ACBD0 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 23C5C 801ACBD4 848D22A0 */  sb         $v0, %lo(D_801D8D84)($at)
    /* 23C60 801ACBD8 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 23C64 801ACBDC 858D22A0 */  sb         $v0, %lo(D_801D8D85)($at)
    /* 23C68 801ACBE0 1E80013C */  lui        $at, %hi(D_801D8D86)
    /* 23C6C 801ACBE4 868D20A0 */  sb         $zero, %lo(D_801D8D86)($at)
    /* 23C70 801ACBE8 1E80013C */  lui        $at, %hi(D_801D8D87)
    /* 23C74 801ACBEC 878D20A0 */  sb         $zero, %lo(D_801D8D87)($at)
    /* 23C78 801ACBF0 1E80013C */  lui        $at, %hi(D_801D8D88)
    /* 23C7C 801ACBF4 888D20A0 */  sb         $zero, %lo(D_801D8D88)($at)
    /* 23C80 801ACBF8 1E80013C */  lui        $at, %hi(D_801D8D89)
    /* 23C84 801ACBFC 898D20A0 */  sb         $zero, %lo(D_801D8D89)($at)
    /* 23C88 801ACC00 1E80013C */  lui        $at, %hi(D_801D8D8A)
    /* 23C8C 801ACC04 8A8D20A0 */  sb         $zero, %lo(D_801D8D8A)($at)
    /* 23C90 801ACC08 1E80013C */  lui        $at, %hi(D_801D8D8B)
    /* 23C94 801ACC0C 8B8D20A0 */  sb         $zero, %lo(D_801D8D8B)($at)
    /* 23C98 801ACC10 1000B1AF */  sw         $s1, 0x10($sp)
    /* 23C9C 801ACC14 7850060C */  jal        func_801941E0
    /* 23CA0 801ACC18 1400B2AF */   sw        $s2, 0x14($sp)
    /* 23CA4 801ACC1C 01000424 */  addiu      $a0, $zero, 0x1
    /* 23CA8 801ACC20 21280000 */  addu       $a1, $zero, $zero
    /* 23CAC 801ACC24 21300002 */  addu       $a2, $s0, $zero
    /* 23CB0 801ACC28 02000724 */  addiu      $a3, $zero, 0x2
    /* 23CB4 801ACC2C 30000324 */  addiu      $v1, $zero, 0x30
    /* 23CB8 801ACC30 80000224 */  addiu      $v0, $zero, 0x80
    /* 23CBC 801ACC34 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 23CC0 801ACC38 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 23CC4 801ACC3C 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 23CC8 801ACC40 818D20A0 */  sb         $zero, %lo(D_801D8D81)($at)
    /* 23CCC 801ACC44 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 23CD0 801ACC48 828D20A0 */  sb         $zero, %lo(D_801D8D82)($at)
    /* 23CD4 801ACC4C 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 23CD8 801ACC50 838D23A0 */  sb         $v1, %lo(D_801D8D83)($at)
    /* 23CDC 801ACC54 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 23CE0 801ACC58 848D20A0 */  sb         $zero, %lo(D_801D8D84)($at)
    /* 23CE4 801ACC5C 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 23CE8 801ACC60 858D22A0 */  sb         $v0, %lo(D_801D8D85)($at)
    /* 23CEC 801ACC64 1E80013C */  lui        $at, %hi(D_801D8D86)
    /* 23CF0 801ACC68 868D23A0 */  sb         $v1, %lo(D_801D8D86)($at)
    /* 23CF4 801ACC6C 1E80013C */  lui        $at, %hi(D_801D8D87)
    /* 23CF8 801ACC70 878D20A0 */  sb         $zero, %lo(D_801D8D87)($at)
    /* 23CFC 801ACC74 1E80013C */  lui        $at, %hi(D_801D8D88)
    /* 23D00 801ACC78 888D22A0 */  sb         $v0, %lo(D_801D8D88)($at)
    /* 23D04 801ACC7C 1E80013C */  lui        $at, %hi(D_801D8D89)
    /* 23D08 801ACC80 898D20A0 */  sb         $zero, %lo(D_801D8D89)($at)
    /* 23D0C 801ACC84 1E80013C */  lui        $at, %hi(D_801D8D8A)
    /* 23D10 801ACC88 8A8D20A0 */  sb         $zero, %lo(D_801D8D8A)($at)
    /* 23D14 801ACC8C 1E80013C */  lui        $at, %hi(D_801D8D8B)
    /* 23D18 801ACC90 8B8D20A0 */  sb         $zero, %lo(D_801D8D8B)($at)
    /* 23D1C 801ACC94 1000B1AF */  sw         $s1, 0x10($sp)
    /* 23D20 801ACC98 7850060C */  jal        func_801941E0
    /* 23D24 801ACC9C 1400B2AF */   sw        $s2, 0x14($sp)
    /* 23D28 801ACCA0 21200000 */  addu       $a0, $zero, $zero
    /* 23D2C 801ACCA4 1D80053C */  lui        $a1, %hi(D_801D2728)
    /* 23D30 801ACCA8 2827A524 */  addiu      $a1, $a1, %lo(D_801D2728)
    /* 23D34 801ACCAC 9CFF0624 */  addiu      $a2, $zero, -0x64
    /* 23D38 801ACCB0 CEFF0724 */  addiu      $a3, $zero, -0x32
    /* 23D3C 801ACCB4 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 23D40 801ACCB8 03001024 */  addiu      $s0, $zero, 0x3
    /* 23D44 801ACCBC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 23D48 801ACCC0 1400B0AF */  sw         $s0, 0x14($sp)
    /* 23D4C 801ACCC4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 23D50 801ACCC8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 23D54 801ACCCC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 23D58 801ACCD0 2400B2AF */  sw         $s2, 0x24($sp)
    /* 23D5C 801ACCD4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 23D60 801ACCD8 B850060C */  jal        func_801942E0
    /* 23D64 801ACCDC 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 23D68 801ACCE0 01000424 */  addiu      $a0, $zero, 0x1
    /* 23D6C 801ACCE4 74FF0624 */  addiu      $a2, $zero, -0x8C
    /* 23D70 801ACCE8 80001124 */  addiu      $s1, $zero, 0x80
    /* 23D74 801ACCEC 80101300 */  sll        $v0, $s3, 2
    /* 23D78 801ACCF0 1000B1AF */  sw         $s1, 0x10($sp)
    /* 23D7C 801ACCF4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 23D80 801ACCF8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 23D84 801ACCFC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 23D88 801ACD00 2000A0AF */  sw         $zero, 0x20($sp)
    /* 23D8C 801ACD04 2400B2AF */  sw         $s2, 0x24($sp)
    /* 23D90 801ACD08 2800A0AF */  sw         $zero, 0x28($sp)
    /* 23D94 801ACD0C 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 23D98 801ACD10 1D80013C */  lui        $at, %hi(D_801D1D18)
    /* 23D9C 801ACD14 21082200 */  addu       $at, $at, $v0
    /* 23DA0 801ACD18 181D258C */  lw         $a1, %lo(D_801D1D18)($at)
    /* 23DA4 801ACD1C B850060C */  jal        func_801942E0
    /* 23DA8 801ACD20 11000724 */   addiu     $a3, $zero, 0x11
    /* 23DAC 801ACD24 02000424 */  addiu      $a0, $zero, 0x2
    /* 23DB0 801ACD28 0C000624 */  addiu      $a2, $zero, 0xC
    /* 23DB4 801ACD2C 80101400 */  sll        $v0, $s4, 2
    /* 23DB8 801ACD30 1000B1AF */  sw         $s1, 0x10($sp)
    /* 23DBC 801ACD34 1400B0AF */  sw         $s0, 0x14($sp)
    /* 23DC0 801ACD38 1800A0AF */  sw         $zero, 0x18($sp)
    /* 23DC4 801ACD3C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 23DC8 801ACD40 2000A0AF */  sw         $zero, 0x20($sp)
    /* 23DCC 801ACD44 2400B2AF */  sw         $s2, 0x24($sp)
    /* 23DD0 801ACD48 2800A0AF */  sw         $zero, 0x28($sp)
    /* 23DD4 801ACD4C 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 23DD8 801ACD50 1D80013C */  lui        $at, %hi(D_801D1D18)
    /* 23DDC 801ACD54 21082200 */  addu       $at, $at, $v0
    /* 23DE0 801ACD58 181D258C */  lw         $a1, %lo(D_801D1D18)($at)
    /* 23DE4 801ACD5C B850060C */  jal        func_801942E0
    /* 23DE8 801ACD60 11000724 */   addiu     $a3, $zero, 0x11
    /* 23DEC 801ACD64 1180023C */  lui        $v0, %hi(D_8010A320)
    /* 23DF0 801ACD68 20A34290 */  lbu        $v0, %lo(D_8010A320)($v0)
    /* 23DF4 801ACD6C 00000000 */  nop
    /* 23DF8 801ACD70 01004224 */  addiu      $v0, $v0, 0x1
    /* 23DFC 801ACD74 1180013C */  lui        $at, %hi(D_8010A320)
    /* 23E00 801ACD78 20A322A0 */  sb         $v0, %lo(D_8010A320)($at)
    /* 23E04 801ACD7C 82B30608 */  j          .L801ACE08
    /* 23E08 801ACD80 21100000 */   addu      $v0, $zero, $zero
  .L801ACD84:
    /* 23E0C 801ACD84 01008224 */  addiu      $v0, $a0, 0x1
    /* 23E10 801ACD88 1180013C */  lui        $at, %hi(D_8010A320)
    /* 23E14 801ACD8C 20A322A0 */  sb         $v0, %lo(D_8010A320)($at)
    /* 23E18 801ACD90 82B30608 */  j          .L801ACE08
    /* 23E1C 801ACD94 21100000 */   addu      $v0, $zero, $zero
  .L801ACD98:
    /* 23E20 801ACD98 01000524 */  addiu      $a1, $zero, 0x1
    /* 23E24 801ACD9C BD3A060C */  jal        func_8018EAF4
    /* 23E28 801ACDA0 21300000 */   addu      $a2, $zero, $zero
    /* 23E2C 801ACDA4 18004010 */  beqz       $v0, .L801ACE08
    /* 23E30 801ACDA8 21100000 */   addu      $v0, $zero, $zero
    /* 23E34 801ACDAC 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 23E38 801ACDB0 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 23E3C 801ACDB4 00000000 */  nop
    /* 23E40 801ACDB8 13005214 */  bne        $v0, $s2, .L801ACE08
    /* 23E44 801ACDBC 00000000 */   nop
    /* 23E48 801ACDC0 1180013C */  lui        $at, %hi(D_8010A369)
    /* 23E4C 801ACDC4 69A320A0 */  sb         $zero, %lo(D_8010A369)($at)
    /* 23E50 801ACDC8 1180013C */  lui        $at, %hi(D_8010A368)
    /* 23E54 801ACDCC 68A320A0 */  sb         $zero, %lo(D_8010A368)($at)
    /* 23E58 801ACDD0 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 23E5C 801ACDD4 A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 23E60 801ACDD8 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 23E64 801ACDDC BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 23E68 801ACDE0 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 23E6C 801ACDE4 DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 23E70 801ACDE8 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 23E74 801ACDEC A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 23E78 801ACDF0 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 23E7C 801ACDF4 B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 23E80 801ACDF8 1E80013C */  lui        $at, %hi(D_801D8FD0)
    /* 23E84 801ACDFC D08F20A0 */  sb         $zero, %lo(D_801D8FD0)($at)
    /* 23E88 801ACE00 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 23E8C 801ACE04 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
  .L801ACE08:
    /* 23E90 801ACE08 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 23E94 801ACE0C 6800B48F */  lw         $s4, 0x68($sp)
    /* 23E98 801ACE10 6400B38F */  lw         $s3, 0x64($sp)
    /* 23E9C 801ACE14 6000B28F */  lw         $s2, 0x60($sp)
    /* 23EA0 801ACE18 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 23EA4 801ACE1C 5800B08F */  lw         $s0, 0x58($sp)
    /* 23EA8 801ACE20 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 23EAC 801ACE24 0800E003 */  jr         $ra
    /* 23EB0 801ACE28 00000000 */   nop
endlabel func_801AC9D8
