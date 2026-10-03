nonmatching func_801C19EC, 0x270

glabel func_801C19EC
    /* 38A74 801C19EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38A78 801C19F0 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 38A7C 801C19F4 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 38A80 801C19F8 1180033C */  lui        $v1, %hi(D_80108668)
    /* 38A84 801C19FC 68866390 */  lbu        $v1, %lo(D_80108668)($v1)
    /* 38A88 801C1A00 03000224 */  addiu      $v0, $zero, 0x3
    /* 38A8C 801C1A04 1000BFAF */  sw         $ra, 0x10($sp)
    /* 38A90 801C1A08 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 38A94 801C1A0C 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 38A98 801C1A10 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 38A9C 801C1A14 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 38AA0 801C1A18 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 38AA4 801C1A1C 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 38AA8 801C1A20 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 38AAC 801C1A24 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 38AB0 801C1A28 0C006214 */  bne        $v1, $v0, .L801C1A5C
    /* 38AB4 801C1A2C 04000224 */   addiu     $v0, $zero, 0x4
    /* 38AB8 801C1A30 03000224 */  addiu      $v0, $zero, 0x3
    /* 38ABC 801C1A34 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 38AC0 801C1A38 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 38AC4 801C1A3C 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 38AC8 801C1A40 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 38ACC 801C1A44 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 38AD0 801C1A48 D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 38AD4 801C1A4C 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 38AD8 801C1A50 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 38ADC 801C1A54 13070708 */  j          .L801C1C4C
    /* 38AE0 801C1A58 00000000 */   nop
  .L801C1A5C:
    /* 38AE4 801C1A5C 1E80063C */  lui        $a2, %hi(D_801DA5D0)
    /* 38AE8 801C1A60 D0A5C624 */  addiu      $a2, $a2, %lo(D_801DA5D0)
    /* 38AEC 801C1A64 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 38AF0 801C1A68 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 38AF4 801C1A6C D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 38AF8 801C1A70 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 38AFC 801C1A74 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 38B00 801C1A78 0500622C */  sltiu      $v0, $v1, 0x5
    /* 38B04 801C1A7C 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 38B08 801C1A80 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 38B0C 801C1A84 40004014 */  bnez       $v0, .L801C1B88
    /* 38B10 801C1A88 01000224 */   addiu     $v0, $zero, 0x1
    /* 38B14 801C1A8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38B18 801C1A90 21080101 */  addu       $at, $t0, $at
    /* 38B1C 801C1A94 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 38B20 801C1A98 1180053C */  lui        $a1, %hi(D_8010A2E9)
    /* 38B24 801C1A9C E9A2A590 */  lbu        $a1, %lo(D_8010A2E9)($a1)
    /* 38B28 801C1AA0 00000000 */  nop
    /* 38B2C 801C1AA4 0E006510 */  beq        $v1, $a1, .L801C1AE0
    /* 38B30 801C1AA8 0000C2A4 */   sh        $v0, 0x0($a2)
    /* 38B34 801C1AAC 80AB0734 */  ori        $a3, $zero, 0xAB80
  .L801C1AB0:
    /* 38B38 801C1AB0 0000C294 */  lhu        $v0, 0x0($a2)
    /* 38B3C 801C1AB4 00000000 */  nop
    /* 38B40 801C1AB8 01004324 */  addiu      $v1, $v0, 0x1
    /* 38B44 801C1ABC 00140200 */  sll        $v0, $v0, 16
    /* 38B48 801C1AC0 03140200 */  sra        $v0, $v0, 16
    /* 38B4C 801C1AC4 21100201 */  addu       $v0, $t0, $v0
    /* 38B50 801C1AC8 21104700 */  addu       $v0, $v0, $a3
    /* 38B54 801C1ACC 0000C3A4 */  sh         $v1, 0x0($a2)
    /* 38B58 801C1AD0 00004290 */  lbu        $v0, 0x0($v0)
    /* 38B5C 801C1AD4 00000000 */  nop
    /* 38B60 801C1AD8 F5FF4514 */  bne        $v0, $a1, .L801C1AB0
    /* 38B64 801C1ADC 00000000 */   nop
  .L801C1AE0:
    /* 38B68 801C1AE0 1E80053C */  lui        $a1, %hi(D_801DA5D0)
    /* 38B6C 801C1AE4 D0A5A524 */  addiu      $a1, $a1, %lo(D_801DA5D0)
    /* 38B70 801C1AE8 0000A394 */  lhu        $v1, 0x0($a1)
    /* 38B74 801C1AEC 1E80023C */  lui        $v0, %hi(D_801DA5D2)
    /* 38B78 801C1AF0 D2A54294 */  lhu        $v0, %lo(D_801DA5D2)($v0)
    /* 38B7C 801C1AF4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 38B80 801C1AF8 0000A3A4 */  sh         $v1, 0x0($a1)
    /* 38B84 801C1AFC 01004324 */  addiu      $v1, $v0, 0x1
    /* 38B88 801C1B00 00140200 */  sll        $v0, $v0, 16
    /* 38B8C 801C1B04 03140200 */  sra        $v0, $v0, 16
    /* 38B90 801C1B08 21100201 */  addu       $v0, $t0, $v0
    /* 38B94 801C1B0C 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 38B98 801C1B10 D2A523A4 */  sh         $v1, %lo(D_801DA5D2)($at)
    /* 38B9C 801C1B14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38BA0 801C1B18 21084100 */  addu       $at, $v0, $at
    /* 38BA4 801C1B1C 80AB2290 */  lbu        $v0, -0x5480($at)
    /* 38BA8 801C1B20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38BAC 801C1B24 21080101 */  addu       $at, $t0, $at
    /* 38BB0 801C1B28 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 38BB4 801C1B2C 00000000 */  nop
    /* 38BB8 801C1B30 0F004310 */  beq        $v0, $v1, .L801C1B70
    /* 38BBC 801C1B34 0200A524 */   addiu     $a1, $a1, 0x2
    /* 38BC0 801C1B38 80AB0734 */  ori        $a3, $zero, 0xAB80
    /* 38BC4 801C1B3C 21306000 */  addu       $a2, $v1, $zero
  .L801C1B40:
    /* 38BC8 801C1B40 0000A294 */  lhu        $v0, 0x0($a1)
    /* 38BCC 801C1B44 00000000 */  nop
    /* 38BD0 801C1B48 01004324 */  addiu      $v1, $v0, 0x1
    /* 38BD4 801C1B4C 00140200 */  sll        $v0, $v0, 16
    /* 38BD8 801C1B50 03140200 */  sra        $v0, $v0, 16
    /* 38BDC 801C1B54 21100201 */  addu       $v0, $t0, $v0
    /* 38BE0 801C1B58 21104700 */  addu       $v0, $v0, $a3
    /* 38BE4 801C1B5C 0000A3A4 */  sh         $v1, 0x0($a1)
    /* 38BE8 801C1B60 00004290 */  lbu        $v0, 0x0($v0)
    /* 38BEC 801C1B64 00000000 */  nop
    /* 38BF0 801C1B68 F5FF4614 */  bne        $v0, $a2, .L801C1B40
    /* 38BF4 801C1B6C 00000000 */   nop
  .L801C1B70:
    /* 38BF8 801C1B70 1E80033C */  lui        $v1, %hi(D_801DA5D2)
    /* 38BFC 801C1B74 D2A56324 */  addiu      $v1, $v1, %lo(D_801DA5D2)
    /* 38C00 801C1B78 00006294 */  lhu        $v0, 0x0($v1)
    /* 38C04 801C1B7C 00000000 */  nop
    /* 38C08 801C1B80 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 38C0C 801C1B84 000062A4 */  sh         $v0, 0x0($v1)
  .L801C1B88:
    /* 38C10 801C1B88 1E80033C */  lui        $v1, %hi(D_801DA5D0)
    /* 38C14 801C1B8C D0A56324 */  addiu      $v1, $v1, %lo(D_801DA5D0)
    /* 38C18 801C1B90 00006284 */  lh         $v0, 0x0($v1)
    /* 38C1C 801C1B94 1E80053C */  lui        $a1, %hi(D_801DA5D4)
    /* 38C20 801C1B98 D4A5A584 */  lh         $a1, %lo(D_801DA5D4)($a1)
    /* 38C24 801C1B9C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38C28 801C1BA0 21080101 */  addu       $at, $t0, $at
    /* 38C2C 801C1BA4 208F2690 */  lbu        $a2, -0x70E0($at)
    /* 38C30 801C1BA8 21104500 */  addu       $v0, $v0, $a1
    /* 38C34 801C1BAC 2A10C200 */  slt        $v0, $a2, $v0
    /* 38C38 801C1BB0 0D004010 */  beqz       $v0, .L801C1BE8
    /* 38C3C 801C1BB4 00000000 */   nop
    /* 38C40 801C1BB8 2138A000 */  addu       $a3, $a1, $zero
    /* 38C44 801C1BBC 2128C000 */  addu       $a1, $a2, $zero
  .L801C1BC0:
    /* 38C48 801C1BC0 00006294 */  lhu        $v0, 0x0($v1)
    /* 38C4C 801C1BC4 00000000 */  nop
    /* 38C50 801C1BC8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 38C54 801C1BCC 000062A4 */  sh         $v0, 0x0($v1)
    /* 38C58 801C1BD0 00140200 */  sll        $v0, $v0, 16
    /* 38C5C 801C1BD4 03140200 */  sra        $v0, $v0, 16
    /* 38C60 801C1BD8 21104700 */  addu       $v0, $v0, $a3
    /* 38C64 801C1BDC 2A10A200 */  slt        $v0, $a1, $v0
    /* 38C68 801C1BE0 F7FF4014 */  bnez       $v0, .L801C1BC0
    /* 38C6C 801C1BE4 00000000 */   nop
  .L801C1BE8:
    /* 38C70 801C1BE8 1E80033C */  lui        $v1, %hi(D_801DA5D2)
    /* 38C74 801C1BEC D2A56324 */  addiu      $v1, $v1, %lo(D_801DA5D2)
    /* 38C78 801C1BF0 00006284 */  lh         $v0, 0x0($v1)
    /* 38C7C 801C1BF4 1E80053C */  lui        $a1, %hi(D_801DA5D6)
    /* 38C80 801C1BF8 D6A5A584 */  lh         $a1, %lo(D_801DA5D6)($a1)
    /* 38C84 801C1BFC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38C88 801C1C00 21080101 */  addu       $at, $t0, $at
    /* 38C8C 801C1C04 208F2690 */  lbu        $a2, -0x70E0($at)
    /* 38C90 801C1C08 21104500 */  addu       $v0, $v0, $a1
    /* 38C94 801C1C0C 2A10C200 */  slt        $v0, $a2, $v0
    /* 38C98 801C1C10 0C004010 */  beqz       $v0, .L801C1C44
    /* 38C9C 801C1C14 2138A000 */   addu      $a3, $a1, $zero
    /* 38CA0 801C1C18 2128C000 */  addu       $a1, $a2, $zero
  .L801C1C1C:
    /* 38CA4 801C1C1C 00006294 */  lhu        $v0, 0x0($v1)
    /* 38CA8 801C1C20 00000000 */  nop
    /* 38CAC 801C1C24 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 38CB0 801C1C28 000062A4 */  sh         $v0, 0x0($v1)
    /* 38CB4 801C1C2C 00140200 */  sll        $v0, $v0, 16
    /* 38CB8 801C1C30 03140200 */  sra        $v0, $v0, 16
    /* 38CBC 801C1C34 21104700 */  addu       $v0, $v0, $a3
    /* 38CC0 801C1C38 2A10A200 */  slt        $v0, $a1, $v0
    /* 38CC4 801C1C3C F7FF4014 */  bnez       $v0, .L801C1C1C
    /* 38CC8 801C1C40 00000000 */   nop
  .L801C1C44:
    /* 38CCC 801C1C44 09F88000 */  jalr       $a0
    /* 38CD0 801C1C48 00000000 */   nop
  .L801C1C4C:
    /* 38CD4 801C1C4C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38CD8 801C1C50 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38CDC 801C1C54 0800E003 */  jr         $ra
    /* 38CE0 801C1C58 00000000 */   nop
endlabel func_801C19EC
