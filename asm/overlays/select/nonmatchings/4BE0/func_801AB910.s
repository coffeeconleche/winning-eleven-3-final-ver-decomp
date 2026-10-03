nonmatching func_801AB910, 0x7A4

glabel func_801AB910
    /* 22998 801AB910 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2299C 801AB914 4000B4AF */  sw         $s4, 0x40($sp)
    /* 229A0 801AB918 21A0A000 */  addu       $s4, $a1, $zero
    /* 229A4 801AB91C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 229A8 801AB920 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 229AC 801AB924 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 229B0 801AB928 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 229B4 801AB92C E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 229B8 801AB930 02000224 */  addiu      $v0, $zero, 0x2
    /* 229BC 801AB934 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 229C0 801AB938 4800B6AF */  sw         $s6, 0x48($sp)
    /* 229C4 801AB93C 4400B5AF */  sw         $s5, 0x44($sp)
    /* 229C8 801AB940 3800B2AF */  sw         $s2, 0x38($sp)
    /* 229CC 801AB944 3400B1AF */  sw         $s1, 0x34($sp)
    /* 229D0 801AB948 0D006214 */  bne        $v1, $v0, .L801AB980
    /* 229D4 801AB94C 3000B0AF */   sw        $s0, 0x30($sp)
    /* 229D8 801AB950 1180023C */  lui        $v0, %hi(D_80108667)
    /* 229DC 801AB954 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 229E0 801AB958 00000000 */  nop
    /* 229E4 801AB95C 40004230 */  andi       $v0, $v0, 0x40
    /* 229E8 801AB960 07004010 */  beqz       $v0, .L801AB980
    /* 229EC 801AB964 00000000 */   nop
    /* 229F0 801AB968 1D80153C */  lui        $s5, %hi(D_801D26A4)
    /* 229F4 801AB96C A426B58E */  lw         $s5, %lo(D_801D26A4)($s5)
    /* 229F8 801AB970 1D80013C */  lui        $at, %hi(D_801D26BF)
    /* 229FC 801AB974 BF2620A0 */  sb         $zero, %lo(D_801D26BF)($at)
    /* 22A00 801AB978 65AE0608 */  j          .L801AB994
    /* 22A04 801AB97C 00000000 */   nop
  .L801AB980:
    /* 22A08 801AB980 1D80153C */  lui        $s5, %hi(D_801D26A0)
    /* 22A0C 801AB984 A026B58E */  lw         $s5, %lo(D_801D26A0)($s5)
    /* 22A10 801AB988 0A000224 */  addiu      $v0, $zero, 0xA
    /* 22A14 801AB98C 1D80013C */  lui        $at, %hi(D_801D26BF)
    /* 22A18 801AB990 BF2622A0 */  sb         $v0, %lo(D_801D26BF)($at)
  .L801AB994:
    /* 22A1C 801AB994 12008104 */  bgez       $a0, .L801AB9E0
    /* 22A20 801AB998 9CFF0224 */   addiu     $v0, $zero, -0x64
    /* 22A24 801AB99C 90000224 */  addiu      $v0, $zero, 0x90
  .L801AB9A0:
    /* 22A28 801AB9A0 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 22A2C 801AB9A4 21082200 */  addu       $at, $at, $v0
    /* 22A30 801AB9A8 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 22A34 801AB9AC E8FF4224 */  addiu      $v0, $v0, -0x18
    /* 22A38 801AB9B0 FBFF4104 */  bgez       $v0, .L801AB9A0
    /* 22A3C 801AB9B4 00000000 */   nop
    /* 22A40 801AB9B8 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 22A44 801AB9BC DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 22A48 801AB9C0 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 22A4C 801AB9C4 A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 22A50 801AB9C8 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 22A54 801AB9CC BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 22A58 801AB9D0 88AD020C */  jal        func_800AB620
    /* 22A5C 801AB9D4 29050424 */   addiu     $a0, $zero, 0x529
    /* 22A60 801AB9D8 22B00608 */  j          .L801AC088
    /* 22A64 801AB9DC 00000000 */   nop
  .L801AB9E0:
    /* 22A68 801AB9E0 1E80013C */  lui        $at, %hi(D_801D8D78)
    /* 22A6C 801AB9E4 788D22A4 */  sh         $v0, %lo(D_801D8D78)($at)
    /* 22A70 801AB9E8 C0FF0224 */  addiu      $v0, $zero, -0x40
    /* 22A74 801AB9EC 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 22A78 801AB9F0 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 22A7C 801AB9F4 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 22A80 801AB9F8 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 22A84 801AB9FC 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 22A88 801ABA00 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 22A8C 801ABA04 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 22A90 801ABA08 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 22A94 801ABA0C C0000224 */  addiu      $v0, $zero, 0xC0
    /* 22A98 801ABA10 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 22A9C 801ABA14 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 22AA0 801ABA18 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 22AA4 801ABA1C 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 22AA8 801ABA20 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 22AAC 801ABA24 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 22AB0 801ABA28 FF008232 */  andi       $v0, $s4, 0xFF
    /* 22AB4 801ABA2C 21106202 */  addu       $v0, $s3, $v0
    /* 22AB8 801ABA30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22ABC 801ABA34 21084100 */  addu       $at, $v0, $at
    /* 22AC0 801ABA38 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 22AC4 801ABA3C 00000000 */  nop
    /* 22AC8 801ABA40 C0100300 */  sll        $v0, $v1, 3
    /* 22ACC 801ABA44 21104300 */  addu       $v0, $v0, $v1
    /* 22AD0 801ABA48 80100200 */  sll        $v0, $v0, 2
    /* 22AD4 801ABA4C 21106202 */  addu       $v0, $s3, $v0
    /* 22AD8 801ABA50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22ADC 801ABA54 21084100 */  addu       $at, $v0, $at
    /* 22AE0 801ABA58 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 22AE4 801ABA5C 40000324 */  addiu      $v1, $zero, 0x40
    /* 22AE8 801ABA60 C0004230 */  andi       $v0, $v0, 0xC0
    /* 22AEC 801ABA64 0A004314 */  bne        $v0, $v1, .L801ABA90
    /* 22AF0 801ABA68 80000224 */   addiu     $v0, $zero, 0x80
    /* 22AF4 801ABA6C A0000224 */  addiu      $v0, $zero, 0xA0
    /* 22AF8 801ABA70 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 22AFC 801ABA74 838D22A0 */  sb         $v0, %lo(D_801D8D83)($at)
    /* 22B00 801ABA78 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 22B04 801ABA7C 848D22A0 */  sb         $v0, %lo(D_801D8D84)($at)
    /* 22B08 801ABA80 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 22B0C 801ABA84 858D20A0 */  sb         $zero, %lo(D_801D8D85)($at)
    /* 22B10 801ABA88 ACAE0608 */  j          .L801ABAB0
    /* 22B14 801ABA8C 02000424 */   addiu     $a0, $zero, 0x2
  .L801ABA90:
    /* 22B18 801ABA90 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 22B1C 801ABA94 848D22A0 */  sb         $v0, %lo(D_801D8D84)($at)
    /* 22B20 801ABA98 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 22B24 801ABA9C 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 22B28 801ABAA0 838D20A0 */  sb         $zero, %lo(D_801D8D83)($at)
    /* 22B2C 801ABAA4 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 22B30 801ABAA8 858D22A0 */  sb         $v0, %lo(D_801D8D85)($at)
    /* 22B34 801ABAAC 02000424 */  addiu      $a0, $zero, 0x2
  .L801ABAB0:
    /* 22B38 801ABAB0 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 22B3C 801ABAB4 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 22B40 801ABAB8 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 22B44 801ABABC 01000724 */  addiu      $a3, $zero, 0x1
    /* 22B48 801ABAC0 02000224 */  addiu      $v0, $zero, 0x2
    /* 22B4C 801ABAC4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 22B50 801ABAC8 01000224 */  addiu      $v0, $zero, 0x1
    /* 22B54 801ABACC 3B50060C */  jal        func_801940EC
    /* 22B58 801ABAD0 1400A2AF */   sw        $v0, 0x14($sp)
    /* 22B5C 801ABAD4 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 22B60 801ABAD8 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 22B64 801ABADC 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 22B68 801ABAE0 FF008232 */  andi       $v0, $s4, 0xFF
    /* 22B6C 801ABAE4 21106202 */  addu       $v0, $s3, $v0
    /* 22B70 801ABAE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22B74 801ABAEC 21084100 */  addu       $at, $v0, $at
    /* 22B78 801ABAF0 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 22B7C 801ABAF4 00000000 */  nop
    /* 22B80 801ABAF8 C0100300 */  sll        $v0, $v1, 3
    /* 22B84 801ABAFC 21104300 */  addu       $v0, $v0, $v1
    /* 22B88 801ABB00 80100200 */  sll        $v0, $v0, 2
    /* 22B8C 801ABB04 21106202 */  addu       $v0, $s3, $v0
    /* 22B90 801ABB08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22B94 801ABB0C 21084100 */  addu       $at, $v0, $at
    /* 22B98 801ABB10 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 22B9C 801ABB14 40000324 */  addiu      $v1, $zero, 0x40
    /* 22BA0 801ABB18 C0004230 */  andi       $v0, $v0, 0xC0
    /* 22BA4 801ABB1C 0A004314 */  bne        $v0, $v1, .L801ABB48
    /* 22BA8 801ABB20 21200000 */   addu      $a0, $zero, $zero
    /* 22BAC 801ABB24 80000224 */  addiu      $v0, $zero, 0x80
    /* 22BB0 801ABB28 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 22BB4 801ABB2C 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 22BB8 801ABB30 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 22BBC 801ABB34 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 22BC0 801ABB38 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 22BC4 801ABB3C 828D20A0 */  sb         $zero, %lo(D_801D8D82)($at)
    /* 22BC8 801ABB40 DAAE0608 */  j          .L801ABB68
    /* 22BCC 801ABB44 00000000 */   nop
  .L801ABB48:
    /* 22BD0 801ABB48 60000224 */  addiu      $v0, $zero, 0x60
    /* 22BD4 801ABB4C 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 22BD8 801ABB50 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 22BDC 801ABB54 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 22BE0 801ABB58 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 22BE4 801ABB5C 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 22BE8 801ABB60 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 22BEC 801ABB64 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
  .L801ABB68:
    /* 22BF0 801ABB68 0070053C */  lui        $a1, (0x70000000 >> 16)
    /* 22BF4 801ABB6C 1E80113C */  lui        $s1, %hi(D_801D8D78)
    /* 22BF8 801ABB70 788D3126 */  addiu      $s1, $s1, %lo(D_801D8D78)
    /* 22BFC 801ABB74 21302002 */  addu       $a2, $s1, $zero
    /* 22C00 801ABB78 01000724 */  addiu      $a3, $zero, 0x1
    /* 22C04 801ABB7C 02001224 */  addiu      $s2, $zero, 0x2
    /* 22C08 801ABB80 01001024 */  addiu      $s0, $zero, 0x1
    /* 22C0C 801ABB84 1000B2AF */  sw         $s2, 0x10($sp)
    /* 22C10 801ABB88 3B50060C */  jal        func_801940EC
    /* 22C14 801ABB8C 1400B0AF */   sw        $s0, 0x14($sp)
    /* 22C18 801ABB90 01000424 */  addiu      $a0, $zero, 0x1
    /* 22C1C 801ABB94 0070053C */  lui        $a1, (0x70000000 >> 16)
    /* 22C20 801ABB98 21302002 */  addu       $a2, $s1, $zero
    /* 22C24 801ABB9C 01000724 */  addiu      $a3, $zero, 0x1
    /* 22C28 801ABBA0 9CFF0224 */  addiu      $v0, $zero, -0x64
    /* 22C2C 801ABBA4 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 22C30 801ABBA8 4D000224 */  addiu      $v0, $zero, 0x4D
    /* 22C34 801ABBAC 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 22C38 801ABBB0 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 22C3C 801ABBB4 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 22C40 801ABBB8 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 22C44 801ABBBC 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 22C48 801ABBC0 13000224 */  addiu      $v0, $zero, 0x13
    /* 22C4C 801ABBC4 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 22C50 801ABBC8 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 22C54 801ABBCC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 22C58 801ABBD0 3B50060C */  jal        func_801940EC
    /* 22C5C 801ABBD4 1400B0AF */   sw        $s0, 0x14($sp)
    /* 22C60 801ABBD8 05000424 */  addiu      $a0, $zero, 0x5
    /* 22C64 801ABBDC 1D80053C */  lui        $a1, %hi(D_801D26CC)
    /* 22C68 801ABBE0 CC26A524 */  addiu      $a1, $a1, %lo(D_801D26CC)
    /* 22C6C 801ABBE4 BAFF0624 */  addiu      $a2, $zero, -0x46
    /* 22C70 801ABBE8 4F000724 */  addiu      $a3, $zero, 0x4F
    /* 22C74 801ABBEC 8C000224 */  addiu      $v0, $zero, 0x8C
    /* 22C78 801ABBF0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 22C7C 801ABBF4 03000224 */  addiu      $v0, $zero, 0x3
    /* 22C80 801ABBF8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 22C84 801ABBFC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 22C88 801ABC00 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 22C8C 801ABC04 2000A0AF */  sw         $zero, 0x20($sp)
    /* 22C90 801ABC08 2400B0AF */  sw         $s0, 0x24($sp)
    /* 22C94 801ABC0C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 22C98 801ABC10 B850060C */  jal        func_801942E0
    /* 22C9C 801ABC14 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 22CA0 801ABC18 2C000324 */  addiu      $v1, $zero, 0x2C
    /* 22CA4 801ABC1C 1E80023C */  lui        $v0, %hi(D_801D868C)
    /* 22CA8 801ABC20 8C864224 */  addiu      $v0, $v0, %lo(D_801D868C)
    /* 22CAC 801ABC24 1E80013C */  lui        $at, %hi(D_801D9030)
    /* 22CB0 801ABC28 309020A0 */  sb         $zero, %lo(D_801D9030)($at)
  .L801ABC2C:
    /* 22CB4 801ABC2C 000040A0 */  sb         $zero, 0x0($v0)
    /* 22CB8 801ABC30 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 22CBC 801ABC34 FDFF6104 */  bgez       $v1, .L801ABC2C
    /* 22CC0 801ABC38 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 22CC4 801ABC3C 1E80063C */  lui        $a2, %hi(D_801D8660)
    /* 22CC8 801ABC40 6086C624 */  addiu      $a2, $a2, %lo(D_801D8660)
    /* 22CCC 801ABC44 1F000224 */  addiu      $v0, $zero, 0x1F
    /* 22CD0 801ABC48 FF009032 */  andi       $s0, $s4, 0xFF
    /* 22CD4 801ABC4C 21807002 */  addu       $s0, $s3, $s0
    /* 22CD8 801ABC50 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22CDC 801ABC54 80AB0234 */  ori        $v0, $zero, 0xAB80
    /* 22CE0 801ABC58 21800202 */  addu       $s0, $s0, $v0
    /* 22CE4 801ABC5C 00000392 */  lbu        $v1, 0x0($s0)
    /* 22CE8 801ABC60 00000000 */  nop
    /* 22CEC 801ABC64 C0100300 */  sll        $v0, $v1, 3
    /* 22CF0 801ABC68 21104300 */  addu       $v0, $v0, $v1
    /* 22CF4 801ABC6C 80100200 */  sll        $v0, $v0, 2
    /* 22CF8 801ABC70 21106202 */  addu       $v0, $s3, $v0
    /* 22CFC 801ABC74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22D00 801ABC78 21084100 */  addu       $at, $v0, $at
    /* 22D04 801ABC7C 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 22D08 801ABC80 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22D0C 801ABC84 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22D10 801ABC88 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22D14 801ABC8C 20000224 */  addiu      $v0, $zero, 0x20
    /* 22D18 801ABC90 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22D1C 801ABC94 00000392 */  lbu        $v1, 0x0($s0)
    /* 22D20 801ABC98 04000524 */  addiu      $a1, $zero, 0x4
    /* 22D24 801ABC9C C0100300 */  sll        $v0, $v1, 3
    /* 22D28 801ABCA0 21104300 */  addu       $v0, $v0, $v1
    /* 22D2C 801ABCA4 80100200 */  sll        $v0, $v0, 2
    /* 22D30 801ABCA8 21106202 */  addu       $v0, $s3, $v0
    /* 22D34 801ABCAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22D38 801ABCB0 21084100 */  addu       $at, $v0, $at
    /* 22D3C 801ABCB4 248F2790 */  lbu        $a3, -0x70DC($at)
    /* 22D40 801ABCB8 0100C424 */  addiu      $a0, $a2, 0x1
    /* 22D44 801ABCBC C000E630 */  andi       $a2, $a3, 0xC0
    /* 22D48 801ABCC0 3F00E730 */  andi       $a3, $a3, 0x3F
    /* 22D4C 801ABCC4 5AA4060C */  jal        func_801A9168
    /* 22D50 801ABCC8 0100E724 */   addiu     $a3, $a3, 0x1
    /* 22D54 801ABCCC 21304000 */  addu       $a2, $v0, $zero
    /* 22D58 801ABCD0 09000524 */  addiu      $a1, $zero, 0x9
    /* 22D5C 801ABCD4 0000C5A0 */  sb         $a1, 0x0($a2)
    /* 22D60 801ABCD8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22D64 801ABCDC 3C000424 */  addiu      $a0, $zero, 0x3C
    /* 22D68 801ABCE0 0000C4A0 */  sb         $a0, 0x0($a2)
    /* 22D6C 801ABCE4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22D70 801ABCE8 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 22D74 801ABCEC 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22D78 801ABCF0 00000392 */  lbu        $v1, 0x0($s0)
    /* 22D7C 801ABCF4 00000000 */  nop
    /* 22D80 801ABCF8 C0100300 */  sll        $v0, $v1, 3
    /* 22D84 801ABCFC 21104300 */  addu       $v0, $v0, $v1
    /* 22D88 801ABD00 80100200 */  sll        $v0, $v0, 2
    /* 22D8C 801ABD04 21106202 */  addu       $v0, $s3, $v0
    /* 22D90 801ABD08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22D94 801ABD0C 21084100 */  addu       $at, $v0, $at
    /* 22D98 801ABD10 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 22D9C 801ABD14 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22DA0 801ABD18 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22DA4 801ABD1C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22DA8 801ABD20 0B000224 */  addiu      $v0, $zero, 0xB
    /* 22DAC 801ABD24 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22DB0 801ABD28 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22DB4 801ABD2C 0E000224 */  addiu      $v0, $zero, 0xE
    /* 22DB8 801ABD30 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22DBC 801ABD34 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22DC0 801ABD38 0000C5A0 */  sb         $a1, 0x0($a2)
    /* 22DC4 801ABD3C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22DC8 801ABD40 0000C4A0 */  sb         $a0, 0x0($a2)
    /* 22DCC 801ABD44 00000392 */  lbu        $v1, 0x0($s0)
    /* 22DD0 801ABD48 00000000 */  nop
    /* 22DD4 801ABD4C C0100300 */  sll        $v0, $v1, 3
    /* 22DD8 801ABD50 21104300 */  addu       $v0, $v0, $v1
    /* 22DDC 801ABD54 80100200 */  sll        $v0, $v0, 2
    /* 22DE0 801ABD58 21106202 */  addu       $v0, $s3, $v0
    /* 22DE4 801ABD5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22DE8 801ABD60 21084100 */  addu       $at, $v0, $at
    /* 22DEC 801ABD64 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 22DF0 801ABD68 00000000 */  nop
    /* 22DF4 801ABD6C 80100200 */  sll        $v0, $v0, 2
    /* 22DF8 801ABD70 1D80013C */  lui        $at, %hi(D_801D1E78)
    /* 22DFC 801ABD74 21082200 */  addu       $at, $at, $v0
    /* 22E00 801ABD78 781E238C */  lw         $v1, %lo(D_801D1E78)($at)
    /* 22E04 801ABD7C 0100C624 */  addiu      $a2, $a2, 0x1
  .L801ABD80:
    /* 22E08 801ABD80 00006290 */  lbu        $v0, 0x0($v1)
    /* 22E0C 801ABD84 01006324 */  addiu      $v1, $v1, 0x1
    /* 22E10 801ABD88 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22E14 801ABD8C FCFF4014 */  bnez       $v0, .L801ABD80
    /* 22E18 801ABD90 0100C624 */   addiu     $a2, $a2, 0x1
    /* 22E1C 801ABD94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22E20 801ABD98 21086102 */  addu       $at, $s3, $at
    /* 22E24 801ABD9C 1C8F228C */  lw         $v0, -0x70E4($at)
    /* 22E28 801ABDA0 004F033C */  lui        $v1, (0x4F000000 >> 16)
    /* 22E2C 801ABDA4 24104300 */  and        $v0, $v0, $v1
    /* 22E30 801ABDA8 27004014 */  bnez       $v0, .L801ABE48
    /* 22E34 801ABDAC FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 22E38 801ABDB0 20000424 */  addiu      $a0, $zero, 0x20
    /* 22E3C 801ABDB4 0000C4A0 */  sb         $a0, 0x0($a2)
    /* 22E40 801ABDB8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22E44 801ABDBC 0000C4A0 */  sb         $a0, 0x0($a2)
    /* 22E48 801ABDC0 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22E4C 801ABDC4 FF008232 */  andi       $v0, $s4, 0xFF
    /* 22E50 801ABDC8 21106202 */  addu       $v0, $s3, $v0
    /* 22E54 801ABDCC 0000C4A0 */  sb         $a0, 0x0($a2)
    /* 22E58 801ABDD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22E5C 801ABDD4 21084100 */  addu       $at, $v0, $at
    /* 22E60 801ABDD8 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 22E64 801ABDDC 00000000 */  nop
    /* 22E68 801ABDE0 C0100300 */  sll        $v0, $v1, 3
    /* 22E6C 801ABDE4 21104300 */  addu       $v0, $v0, $v1
    /* 22E70 801ABDE8 80100200 */  sll        $v0, $v0, 2
    /* 22E74 801ABDEC 21106202 */  addu       $v0, $s3, $v0
    /* 22E78 801ABDF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22E7C 801ABDF4 21084100 */  addu       $at, $v0, $at
    /* 22E80 801ABDF8 278F2290 */  lbu        $v0, -0x70D9($at)
    /* 22E84 801ABDFC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22E88 801ABE00 41004224 */  addiu      $v0, $v0, 0x41
    /* 22E8C 801ABE04 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22E90 801ABE08 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22E94 801ABE0C 0000C4A0 */  sb         $a0, 0x0($a2)
    /* 22E98 801ABE10 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22E9C 801ABE14 47000224 */  addiu      $v0, $zero, 0x47
    /* 22EA0 801ABE18 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22EA4 801ABE1C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22EA8 801ABE20 52000224 */  addiu      $v0, $zero, 0x52
    /* 22EAC 801ABE24 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22EB0 801ABE28 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22EB4 801ABE2C 4F000224 */  addiu      $v0, $zero, 0x4F
    /* 22EB8 801ABE30 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22EBC 801ABE34 0100C624 */  addiu      $a2, $a2, 0x1
    /* 22EC0 801ABE38 55000224 */  addiu      $v0, $zero, 0x55
    /* 22EC4 801ABE3C 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 22EC8 801ABE40 50000224 */  addiu      $v0, $zero, 0x50
    /* 22ECC 801ABE44 0100C2A0 */  sb         $v0, 0x1($a2)
  .L801ABE48:
    /* 22ED0 801ABE48 21200000 */  addu       $a0, $zero, $zero
    /* 22ED4 801ABE4C 1E80053C */  lui        $a1, %hi(D_801D8660)
    /* 22ED8 801ABE50 6086A524 */  addiu      $a1, $a1, %lo(D_801D8660)
    /* 22EDC 801ABE54 A4FF0624 */  addiu      $a2, $zero, -0x5C
    /* 22EE0 801ABE58 C4FF0724 */  addiu      $a3, $zero, -0x3C
    /* 22EE4 801ABE5C B8000224 */  addiu      $v0, $zero, 0xB8
    /* 22EE8 801ABE60 01001224 */  addiu      $s2, $zero, 0x1
    /* 22EEC 801ABE64 04001024 */  addiu      $s0, $zero, 0x4
    /* 22EF0 801ABE68 1000A2AF */  sw         $v0, 0x10($sp)
    /* 22EF4 801ABE6C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 22EF8 801ABE70 1800A0AF */  sw         $zero, 0x18($sp)
    /* 22EFC 801ABE74 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 22F00 801ABE78 2000A0AF */  sw         $zero, 0x20($sp)
    /* 22F04 801ABE7C 2400B0AF */  sw         $s0, 0x24($sp)
    /* 22F08 801ABE80 2800B2AF */  sw         $s2, 0x28($sp)
    /* 22F0C 801ABE84 B850060C */  jal        func_801942E0
    /* 22F10 801ABE88 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 22F14 801ABE8C 01000424 */  addiu      $a0, $zero, 0x1
    /* 22F18 801ABE90 2128A002 */  addu       $a1, $s5, $zero
    /* 22F1C 801ABE94 ACFF0624 */  addiu      $a2, $zero, -0x54
    /* 22F20 801ABE98 E1FF0724 */  addiu      $a3, $zero, -0x1F
    /* 22F24 801ABE9C A8001124 */  addiu      $s1, $zero, 0xA8
    /* 22F28 801ABEA0 FFFF1624 */  addiu      $s6, $zero, -0x1
    /* 22F2C 801ABEA4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 22F30 801ABEA8 1400B2AF */  sw         $s2, 0x14($sp)
    /* 22F34 801ABEAC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 22F38 801ABEB0 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 22F3C 801ABEB4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 22F40 801ABEB8 2400B0AF */  sw         $s0, 0x24($sp)
    /* 22F44 801ABEBC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 22F48 801ABEC0 B850060C */  jal        func_801942E0
    /* 22F4C 801ABEC4 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 22F50 801ABEC8 FF008232 */  andi       $v0, $s4, 0xFF
    /* 22F54 801ABECC C0800200 */  sll        $s0, $v0, 3
    /* 22F58 801ABED0 21800202 */  addu       $s0, $s0, $v0
    /* 22F5C 801ABED4 80801000 */  sll        $s0, $s0, 2
    /* 22F60 801ABED8 21807002 */  addu       $s0, $s3, $s0
    /* 22F64 801ABEDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22F68 801ABEE0 21080102 */  addu       $at, $s0, $at
    /* 22F6C 801ABEE4 268F2590 */  lbu        $a1, -0x70DA($at)
    /* 22F70 801ABEE8 1D80043C */  lui        $a0, %hi(D_801D26A8)
    /* 22F74 801ABEEC A8268424 */  addiu      $a0, $a0, %lo(D_801D26A8)
    /* 22F78 801ABEF0 A9A4060C */  jal        func_801A92A4
    /* 22F7C 801ABEF4 02001424 */   addiu     $s4, $zero, 0x2
    /* 22F80 801ABEF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22F84 801ABEFC 21080102 */  addu       $at, $s0, $at
    /* 22F88 801ABF00 298F2590 */  lbu        $a1, -0x70D7($at)
    /* 22F8C 801ABF04 A9A4060C */  jal        func_801A92A4
    /* 22F90 801ABF08 01004424 */   addiu     $a0, $v0, 0x1
    /* 22F94 801ABF0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22F98 801ABF10 21080102 */  addu       $at, $s0, $at
    /* 22F9C 801ABF14 2B8F2590 */  lbu        $a1, -0x70D5($at)
    /* 22FA0 801ABF18 A9A4060C */  jal        func_801A92A4
    /* 22FA4 801ABF1C 01004424 */   addiu     $a0, $v0, 0x1
    /* 22FA8 801ABF20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22FAC 801ABF24 21080102 */  addu       $at, $s0, $at
    /* 22FB0 801ABF28 2A8F2590 */  lbu        $a1, -0x70D6($at)
    /* 22FB4 801ABF2C A9A4060C */  jal        func_801A92A4
    /* 22FB8 801ABF30 01004424 */   addiu     $a0, $v0, 0x1
    /* 22FBC 801ABF34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22FC0 801ABF38 21080102 */  addu       $at, $s0, $at
    /* 22FC4 801ABF3C 2C8F2594 */  lhu        $a1, -0x70D4($at)
    /* 22FC8 801ABF40 A9A4060C */  jal        func_801A92A4
    /* 22FCC 801ABF44 01004424 */   addiu     $a0, $v0, 0x1
    /* 22FD0 801ABF48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22FD4 801ABF4C 21080102 */  addu       $at, $s0, $at
    /* 22FD8 801ABF50 2E8F2594 */  lhu        $a1, -0x70D2($at)
    /* 22FDC 801ABF54 A9A4060C */  jal        func_801A92A4
    /* 22FE0 801ABF58 01004424 */   addiu     $a0, $v0, 0x1
    /* 22FE4 801ABF5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 22FE8 801ABF60 21080102 */  addu       $at, $s0, $at
    /* 22FEC 801ABF64 288F2590 */  lbu        $a1, -0x70D8($at)
    /* 22FF0 801ABF68 A9A4060C */  jal        func_801A92A4
    /* 22FF4 801ABF6C 01004424 */   addiu     $a0, $v0, 0x1
    /* 22FF8 801ABF70 02000424 */  addiu      $a0, $zero, 0x2
    /* 22FFC 801ABF74 1D80053C */  lui        $a1, %hi(D_801D26A8)
    /* 23000 801ABF78 A826A524 */  addiu      $a1, $a1, %lo(D_801D26A8)
    /* 23004 801ABF7C ACFF0624 */  addiu      $a2, $zero, -0x54
    /* 23008 801ABF80 DEFF0724 */  addiu      $a3, $zero, -0x22
    /* 2300C 801ABF84 06001324 */  addiu      $s3, $zero, 0x6
    /* 23010 801ABF88 1000B1AF */  sw         $s1, 0x10($sp)
    /* 23014 801ABF8C 1400B4AF */  sw         $s4, 0x14($sp)
    /* 23018 801ABF90 1800A0AF */  sw         $zero, 0x18($sp)
    /* 2301C 801ABF94 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 23020 801ABF98 2000A0AF */  sw         $zero, 0x20($sp)
    /* 23024 801ABF9C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 23028 801ABFA0 2800B2AF */  sw         $s2, 0x28($sp)
    /* 2302C 801ABFA4 B850060C */  jal        func_801942E0
    /* 23030 801ABFA8 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 23034 801ABFAC 1D80113C */  lui        $s1, %hi(D_801D26C4)
    /* 23038 801ABFB0 C4263126 */  addiu      $s1, $s1, %lo(D_801D26C4)
    /* 2303C 801ABFB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23040 801ABFB8 21080102 */  addu       $at, $s0, $at
    /* 23044 801ABFBC 338F2590 */  lbu        $a1, -0x70CD($at)
    /* 23048 801ABFC0 A9A4060C */  jal        func_801A92A4
    /* 2304C 801ABFC4 21202002 */   addu      $a0, $s1, $zero
    /* 23050 801ABFC8 03000424 */  addiu      $a0, $zero, 0x3
    /* 23054 801ABFCC 21282002 */  addu       $a1, $s1, $zero
    /* 23058 801ABFD0 D8FF0624 */  addiu      $a2, $zero, -0x28
    /* 2305C 801ABFD4 39000724 */  addiu      $a3, $zero, 0x39
    /* 23060 801ABFD8 40001524 */  addiu      $s5, $zero, 0x40
    /* 23064 801ABFDC 1000B5AF */  sw         $s5, 0x10($sp)
    /* 23068 801ABFE0 1400B4AF */  sw         $s4, 0x14($sp)
    /* 2306C 801ABFE4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 23070 801ABFE8 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 23074 801ABFEC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 23078 801ABFF0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2307C 801ABFF4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 23080 801ABFF8 B850060C */  jal        func_801942E0
    /* 23084 801ABFFC 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 23088 801AC000 80001124 */  addiu      $s1, $zero, 0x80
    /* 2308C 801AC004 1E80013C */  lui        $at, %hi(D_801D8FE5)
    /* 23090 801AC008 E58F31A0 */  sb         $s1, %lo(D_801D8FE5)($at)
    /* 23094 801AC00C 1E80013C */  lui        $at, %hi(D_801D8FE6)
    /* 23098 801AC010 E68F31A0 */  sb         $s1, %lo(D_801D8FE6)($at)
    /* 2309C 801AC014 1E80013C */  lui        $at, %hi(D_801D8FE7)
    /* 230A0 801AC018 E78F20A0 */  sb         $zero, %lo(D_801D8FE7)($at)
    /* 230A4 801AC01C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 230A8 801AC020 21080102 */  addu       $at, $s0, $at
    /* 230AC 801AC024 348F2590 */  lbu        $a1, -0x70CC($at)
    /* 230B0 801AC028 1D80103C */  lui        $s0, %hi(D_801D26C8)
    /* 230B4 801AC02C C8261026 */  addiu      $s0, $s0, %lo(D_801D26C8)
    /* 230B8 801AC030 A9A4060C */  jal        func_801A92A4
    /* 230BC 801AC034 21200002 */   addu      $a0, $s0, $zero
    /* 230C0 801AC038 04000424 */  addiu      $a0, $zero, 0x4
    /* 230C4 801AC03C 21280002 */  addu       $a1, $s0, $zero
    /* 230C8 801AC040 14000624 */  addiu      $a2, $zero, 0x14
    /* 230CC 801AC044 39000724 */  addiu      $a3, $zero, 0x39
    /* 230D0 801AC048 1000B5AF */  sw         $s5, 0x10($sp)
    /* 230D4 801AC04C 1400B4AF */  sw         $s4, 0x14($sp)
    /* 230D8 801AC050 1800A0AF */  sw         $zero, 0x18($sp)
    /* 230DC 801AC054 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 230E0 801AC058 2000A0AF */  sw         $zero, 0x20($sp)
    /* 230E4 801AC05C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 230E8 801AC060 2800B2AF */  sw         $s2, 0x28($sp)
    /* 230EC 801AC064 B850060C */  jal        func_801942E0
    /* 230F0 801AC068 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 230F4 801AC06C 30000224 */  addiu      $v0, $zero, 0x30
    /* 230F8 801AC070 1E80013C */  lui        $at, %hi(D_801D8FFD)
    /* 230FC 801AC074 FD8F31A0 */  sb         $s1, %lo(D_801D8FFD)($at)
    /* 23100 801AC078 1E80013C */  lui        $at, %hi(D_801D8FFE)
    /* 23104 801AC07C FE8F22A0 */  sb         $v0, %lo(D_801D8FFE)($at)
    /* 23108 801AC080 1E80013C */  lui        $at, %hi(D_801D8FFF)
    /* 2310C 801AC084 FF8F20A0 */  sb         $zero, %lo(D_801D8FFF)($at)
  .L801AC088:
    /* 23110 801AC088 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 23114 801AC08C 4800B68F */  lw         $s6, 0x48($sp)
    /* 23118 801AC090 4400B58F */  lw         $s5, 0x44($sp)
    /* 2311C 801AC094 4000B48F */  lw         $s4, 0x40($sp)
    /* 23120 801AC098 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 23124 801AC09C 3800B28F */  lw         $s2, 0x38($sp)
    /* 23128 801AC0A0 3400B18F */  lw         $s1, 0x34($sp)
    /* 2312C 801AC0A4 3000B08F */  lw         $s0, 0x30($sp)
    /* 23130 801AC0A8 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 23134 801AC0AC 0800E003 */  jr         $ra
    /* 23138 801AC0B0 00000000 */   nop
endlabel func_801AB910
