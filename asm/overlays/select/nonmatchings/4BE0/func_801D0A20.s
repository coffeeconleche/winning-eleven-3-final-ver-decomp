nonmatching func_801D0A20, 0x190

glabel func_801D0A20
    /* 47AA8 801D0A20 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 47AAC 801D0A24 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 47AB0 801D0A28 21888000 */  addu       $s1, $a0, $zero
    /* 47AB4 801D0A2C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 47AB8 801D0A30 21800000 */  addu       $s0, $zero, $zero
    /* 47ABC 801D0A34 1D80033C */  lui        $v1, %hi(D_801D5AA4)
    /* 47AC0 801D0A38 A45A6390 */  lbu        $v1, %lo(D_801D5AA4)($v1)
    /* 47AC4 801D0A3C 01000224 */  addiu      $v0, $zero, 0x1
    /* 47AC8 801D0A40 2E006210 */  beq        $v1, $v0, .L801D0AFC
    /* 47ACC 801D0A44 2000BFAF */   sw        $ra, 0x20($sp)
    /* 47AD0 801D0A48 02006228 */  slti       $v0, $v1, 0x2
    /* 47AD4 801D0A4C 05004010 */  beqz       $v0, .L801D0A64
    /* 47AD8 801D0A50 00000000 */   nop
    /* 47ADC 801D0A54 08006010 */  beqz       $v1, .L801D0A78
    /* 47AE0 801D0A58 00000000 */   nop
    /* 47AE4 801D0A5C E2420708 */  j          .L801D0B88
    /* 47AE8 801D0A60 00000000 */   nop
  .L801D0A64:
    /* 47AEC 801D0A64 02000224 */  addiu      $v0, $zero, 0x2
    /* 47AF0 801D0A68 3A006210 */  beq        $v1, $v0, .L801D0B54
    /* 47AF4 801D0A6C 00000000 */   nop
    /* 47AF8 801D0A70 E2420708 */  j          .L801D0B88
    /* 47AFC 801D0A74 00000000 */   nop
  .L801D0A78:
    /* 47B00 801D0A78 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 47B04 801D0A7C 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 47B08 801D0A80 124A060C */  jal        func_80192848
    /* 47B0C 801D0A84 21200000 */   addu      $a0, $zero, $zero
    /* 47B10 801D0A88 1E80013C */  lui        $at, %hi(D_801D8C68)
    /* 47B14 801D0A8C 688C22AC */  sw         $v0, %lo(D_801D8C68)($at)
    /* 47B18 801D0A90 124A060C */  jal        func_80192848
    /* 47B1C 801D0A94 21200000 */   addu      $a0, $zero, $zero
    /* 47B20 801D0A98 21204000 */  addu       $a0, $v0, $zero
    /* 47B24 801D0A9C 1E80013C */  lui        $at, %hi(D_801D8C68)
    /* 47B28 801D0AA0 688C24AC */  sw         $a0, %lo(D_801D8C68)($at)
    /* 47B2C 801D0AA4 EC42070C */  jal        func_801D0BB0
    /* 47B30 801D0AA8 FF002532 */   andi      $a1, $s1, 0xFF
    /* 47B34 801D0AAC 11000324 */  addiu      $v1, $zero, 0x11
    /* 47B38 801D0AB0 07004314 */  bne        $v0, $v1, .L801D0AD0
    /* 47B3C 801D0AB4 00000000 */   nop
    /* 47B40 801D0AB8 6D4A060C */  jal        func_801929B4
    /* 47B44 801D0ABC 21200000 */   addu      $a0, $zero, $zero
    /* 47B48 801D0AC0 1D80023C */  lui        $v0, %hi(D_801D5AA4)
    /* 47B4C 801D0AC4 A45A4290 */  lbu        $v0, %lo(D_801D5AA4)($v0)
    /* 47B50 801D0AC8 D1420708 */  j          .L801D0B44
    /* 47B54 801D0ACC 01004224 */   addiu     $v0, $v0, 0x1
  .L801D0AD0:
    /* 47B58 801D0AD0 4849060C */  jal        func_80192520
    /* 47B5C 801D0AD4 21200000 */   addu      $a0, $zero, $zero
  .L801D0AD8:
    /* 47B60 801D0AD8 2849060C */  jal        func_801924A0
    /* 47B64 801D0ADC 00000000 */   nop
    /* 47B68 801D0AE0 21804000 */  addu       $s0, $v0, $zero
    /* 47B6C 801D0AE4 FCFF0012 */  beqz       $s0, .L801D0AD8
    /* 47B70 801D0AE8 01000224 */   addiu     $v0, $zero, 0x1
    /* 47B74 801D0AEC 26000216 */  bne        $s0, $v0, .L801D0B88
    /* 47B78 801D0AF0 00000000 */   nop
    /* 47B7C 801D0AF4 E2420708 */  j          .L801D0B88
    /* 47B80 801D0AF8 02001024 */   addiu     $s0, $zero, 0x2
  .L801D0AFC:
    /* 47B84 801D0AFC 01000424 */  addiu      $a0, $zero, 0x1
    /* 47B88 801D0B00 90000524 */  addiu      $a1, $zero, 0x90
    /* 47B8C 801D0B04 F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 47B90 801D0B08 1000A2AF */  sw         $v0, 0x10($sp)
    /* 47B94 801D0B0C 05000224 */  addiu      $v0, $zero, 0x5
    /* 47B98 801D0B10 1D80073C */  lui        $a3, %hi(D_801D587C)
    /* 47B9C 801D0B14 7C58E78C */  lw         $a3, %lo(D_801D587C)($a3)
    /* 47BA0 801D0B18 34000624 */  addiu      $a2, $zero, 0x34
    /* 47BA4 801D0B1C B914070C */  jal        func_801C52E4
    /* 47BA8 801D0B20 1400A2AF */   sw        $v0, 0x14($sp)
    /* 47BAC 801D0B24 FF004230 */  andi       $v0, $v0, 0xFF
    /* 47BB0 801D0B28 17004010 */  beqz       $v0, .L801D0B88
    /* 47BB4 801D0B2C 00000000 */   nop
    /* 47BB8 801D0B30 1D80023C */  lui        $v0, %hi(D_801D5AA4)
    /* 47BBC 801D0B34 A45A4290 */  lbu        $v0, %lo(D_801D5AA4)($v0)
    /* 47BC0 801D0B38 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 47BC4 801D0B3C 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 47BC8 801D0B40 01004224 */  addiu      $v0, $v0, 0x1
  .L801D0B44:
    /* 47BCC 801D0B44 1D80013C */  lui        $at, %hi(D_801D5AA4)
    /* 47BD0 801D0B48 A45A22A0 */  sb         $v0, %lo(D_801D5AA4)($at)
    /* 47BD4 801D0B4C E2420708 */  j          .L801D0B88
    /* 47BD8 801D0B50 00000000 */   nop
  .L801D0B54:
    /* 47BDC 801D0B54 1D80023C */  lui        $v0, %hi(D_801D5A48)
    /* 47BE0 801D0B58 485A428C */  lw         $v0, %lo(D_801D5A48)($v0)
    /* 47BE4 801D0B5C 00000000 */  nop
    /* 47BE8 801D0B60 01004224 */  addiu      $v0, $v0, 0x1
    /* 47BEC 801D0B64 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 47BF0 801D0B68 485A22AC */  sw         $v0, %lo(D_801D5A48)($at)
    /* 47BF4 801D0B6C 2043070C */  jal        func_801D0C80
    /* 47BF8 801D0B70 FF002432 */   andi      $a0, $s1, 0xFF
    /* 47BFC 801D0B74 21804000 */  addu       $s0, $v0, $zero
    /* 47C00 801D0B78 07000012 */  beqz       $s0, .L801D0B98
    /* 47C04 801D0B7C 21100002 */   addu      $v0, $s0, $zero
    /* 47C08 801D0B80 1D80013C */  lui        $at, %hi(D_801D5AA4)
    /* 47C0C 801D0B84 A45A20A0 */  sb         $zero, %lo(D_801D5AA4)($at)
  .L801D0B88:
    /* 47C10 801D0B88 03000012 */  beqz       $s0, .L801D0B98
    /* 47C14 801D0B8C 21100002 */   addu      $v0, $s0, $zero
    /* 47C18 801D0B90 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 47C1C 801D0B94 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
  .L801D0B98:
    /* 47C20 801D0B98 2000BF8F */  lw         $ra, 0x20($sp)
    /* 47C24 801D0B9C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 47C28 801D0BA0 1800B08F */  lw         $s0, 0x18($sp)
    /* 47C2C 801D0BA4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 47C30 801D0BA8 0800E003 */  jr         $ra
    /* 47C34 801D0BAC 00000000 */   nop
endlabel func_801D0A20
