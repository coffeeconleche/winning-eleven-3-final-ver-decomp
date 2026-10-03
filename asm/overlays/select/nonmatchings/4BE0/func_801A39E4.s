nonmatching func_801A39E4, 0x358

glabel func_801A39E4
    /* 1AA6C 801A39E4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1AA70 801A39E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1AA74 801A39EC 2180C000 */  addu       $s0, $a2, $zero
    /* 1AA78 801A39F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1AA7C 801A39F4 21908000 */  addu       $s2, $a0, $zero
    /* 1AA80 801A39F8 2110A000 */  addu       $v0, $a1, $zero
    /* 1AA84 801A39FC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1AA88 801A3A00 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 1AA8C 801A3A04 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 1AA90 801A3A08 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1AA94 801A3A0C 801F143C */  lui        $s4, (0x1F8002E1 >> 16)
    /* 1AA98 801A3A10 24208500 */  and        $a0, $a0, $a1
    /* 1AA9C 801A3A14 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1AAA0 801A3A18 0200842C */  sltiu      $a0, $a0, 0x2
    /* 1AAA4 801A3A1C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1AAA8 801A3A20 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1AAAC 801A3A24 03008014 */  bnez       $a0, .L801A3A34
    /* 1AAB0 801A3A28 1400B1AF */   sw        $s1, 0x14($sp)
    /* 1AAB4 801A3A2C 458F0608 */  j          .L801A3D14
    /* 1AAB8 801A3A30 21100000 */   addu      $v0, $zero, $zero
  .L801A3A34:
    /* 1AABC 801A3A34 98BB010C */  jal        func_8006EE60
    /* 1AAC0 801A3A38 FF004430 */   andi      $a0, $v0, 0xFF
    /* 1AAC4 801A3A3C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 1AAC8 801A3A40 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 1AACC 801A3A44 FF004232 */  andi       $v0, $s2, 0xFF
    /* 1AAD0 801A3A48 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 1AAD4 801A3A4C 21084100 */  addu       $at, $v0, $at
    /* 1AAD8 801A3A50 DD022390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($at)
    /* 1AADC 801A3A54 00000000 */  nop
    /* 1AAE0 801A3A58 1600622C */  sltiu      $v0, $v1, 0x16
    /* 1AAE4 801A3A5C 11004014 */  bnez       $v0, .L801A3AA4
    /* 1AAE8 801A3A60 21100000 */   addu      $v0, $zero, $zero
    /* 1AAEC 801A3A64 1B00622C */  sltiu      $v0, $v1, 0x1B
    /* 1AAF0 801A3A68 0E004014 */  bnez       $v0, .L801A3AA4
    /* 1AAF4 801A3A6C 01000224 */   addiu     $v0, $zero, 0x1
    /* 1AAF8 801A3A70 1E00622C */  sltiu      $v0, $v1, 0x1E
    /* 1AAFC 801A3A74 0B004014 */  bnez       $v0, .L801A3AA4
    /* 1AB00 801A3A78 02000224 */   addiu     $v0, $zero, 0x2
    /* 1AB04 801A3A7C 2300622C */  sltiu      $v0, $v1, 0x23
    /* 1AB08 801A3A80 08004014 */  bnez       $v0, .L801A3AA4
    /* 1AB0C 801A3A84 03000224 */   addiu     $v0, $zero, 0x3
    /* 1AB10 801A3A88 2700622C */  sltiu      $v0, $v1, 0x27
    /* 1AB14 801A3A8C 05004014 */  bnez       $v0, .L801A3AA4
    /* 1AB18 801A3A90 04000224 */   addiu     $v0, $zero, 0x4
    /* 1AB1C 801A3A94 2800622C */  sltiu      $v0, $v1, 0x28
    /* 1AB20 801A3A98 02004014 */  bnez       $v0, .L801A3AA4
    /* 1AB24 801A3A9C 05000224 */   addiu     $v0, $zero, 0x5
    /* 1AB28 801A3AA0 06000224 */  addiu      $v0, $zero, 0x6
  .L801A3AA4:
    /* 1AB2C 801A3AA4 97000016 */  bnez       $s0, .L801A3D04
    /* 1AB30 801A3AA8 FF005530 */   andi      $s5, $v0, 0xFF
    /* 1AB34 801A3AAC E1028292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s4)
    /* 1AB38 801A3AB0 03000324 */  addiu      $v1, $zero, 0x3
    /* 1AB3C 801A3AB4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1AB40 801A3AB8 07004314 */  bne        $v0, $v1, .L801A3AD8
    /* 1AB44 801A3ABC 00000000 */   nop
    /* 1AB48 801A3AC0 1180043C */  lui        $a0, %hi(D_8010A5A4)
    /* 1AB4C 801A3AC4 A4A58494 */  lhu        $a0, %lo(D_8010A5A4)($a0)
    /* 1AB50 801A3AC8 BA8F060C */  jal        func_801A3EE8
    /* 1AB54 801A3ACC FF004532 */   andi      $a1, $s2, 0xFF
    /* 1AB58 801A3AD0 BB8E0608 */  j          .L801A3AEC
    /* 1AB5C 801A3AD4 21884000 */   addu      $s1, $v0, $zero
  .L801A3AD8:
    /* 1AB60 801A3AD8 1180043C */  lui        $a0, %hi(D_8010A5A4)
    /* 1AB64 801A3ADC A4A58494 */  lhu        $a0, %lo(D_8010A5A4)($a0)
    /* 1AB68 801A3AE0 4F8F060C */  jal        func_801A3D3C
    /* 1AB6C 801A3AE4 FF004532 */   andi      $a1, $s2, 0xFF
    /* 1AB70 801A3AE8 21884000 */  addu       $s1, $v0, $zero
  .L801A3AEC:
    /* 1AB74 801A3AEC E1028292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s4)
    /* 1AB78 801A3AF0 00000000 */  nop
    /* 1AB7C 801A3AF4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1AB80 801A3AF8 03000224 */  addiu      $v0, $zero, 0x3
    /* 1AB84 801A3AFC 46006210 */  beq        $v1, $v0, .L801A3C18
    /* 1AB88 801A3B00 00000000 */   nop
    /* 1AB8C 801A3B04 26006014 */  bnez       $v1, .L801A3BA0
    /* 1AB90 801A3B08 FF004232 */   andi      $v0, $s2, 0xFF
    /* 1AB94 801A3B0C 21808202 */  addu       $s0, $s4, $v0
  .L801A3B10:
    /* 1AB98 801A3B10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1AB9C 801A3B14 21086102 */  addu       $at, $s3, $at
    /* 1ABA0 801A3B18 E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 1ABA4 801A3B1C 00000000 */  nop
    /* 1ABA8 801A3B20 27200200 */  nor        $a0, $zero, $v0
    /* 1ABAC 801A3B24 01008230 */  andi       $v0, $a0, 0x1
    /* 1ABB0 801A3B28 05004010 */  beqz       $v0, .L801A3B40
    /* 1ABB4 801A3B2C 2B000224 */   addiu     $v0, $zero, 0x2B
    /* 1ABB8 801A3B30 DD020392 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($s0)
    /* 1ABBC 801A3B34 00000000 */  nop
    /* 1ABC0 801A3B38 13006210 */  beq        $v1, $v0, .L801A3B88
    /* 1ABC4 801A3B3C 00000000 */   nop
  .L801A3B40:
    /* 1ABC8 801A3B40 43100400 */  sra        $v0, $a0, 1
    /* 1ABCC 801A3B44 01004230 */  andi       $v0, $v0, 0x1
    /* 1ABD0 801A3B48 07004010 */  beqz       $v0, .L801A3B68
    /* 1ABD4 801A3B4C 28000224 */   addiu     $v0, $zero, 0x28
    /* 1ABD8 801A3B50 DD020392 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($s0)
    /* 1ABDC 801A3B54 00000000 */  nop
    /* 1ABE0 801A3B58 0B006210 */  beq        $v1, $v0, .L801A3B88
    /* 1ABE4 801A3B5C 29000224 */   addiu     $v0, $zero, 0x29
    /* 1ABE8 801A3B60 09006210 */  beq        $v1, $v0, .L801A3B88
    /* 1ABEC 801A3B64 00000000 */   nop
  .L801A3B68:
    /* 1ABF0 801A3B68 83100400 */  sra        $v0, $a0, 2
    /* 1ABF4 801A3B6C 01004230 */  andi       $v0, $v0, 0x1
    /* 1ABF8 801A3B70 29004010 */  beqz       $v0, .L801A3C18
    /* 1ABFC 801A3B74 2A000224 */   addiu     $v0, $zero, 0x2A
    /* 1AC00 801A3B78 DD020392 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($s0)
    /* 1AC04 801A3B7C 00000000 */  nop
    /* 1AC08 801A3B80 26006214 */  bne        $v1, $v0, .L801A3C1C
    /* 1AC0C 801A3B84 01000224 */   addiu     $v0, $zero, 0x1
  .L801A3B88:
    /* 1AC10 801A3B88 1180043C */  lui        $a0, %hi(D_8010A5A4)
    /* 1AC14 801A3B8C A4A58494 */  lhu        $a0, %lo(D_8010A5A4)($a0)
    /* 1AC18 801A3B90 4F8F060C */  jal        func_801A3D3C
    /* 1AC1C 801A3B94 FF004532 */   andi      $a1, $s2, 0xFF
    /* 1AC20 801A3B98 C48E0608 */  j          .L801A3B10
    /* 1AC24 801A3B9C 21884000 */   addu      $s1, $v0, $zero
  .L801A3BA0:
    /* 1AC28 801A3BA0 21808202 */  addu       $s0, $s4, $v0
  .L801A3BA4:
    /* 1AC2C 801A3BA4 DD020392 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($s0)
    /* 1AC30 801A3BA8 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 1AC34 801A3BAC 14006210 */  beq        $v1, $v0, .L801A3C00
    /* 1AC38 801A3BB0 00000000 */   nop
    /* 1AC3C 801A3BB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1AC40 801A3BB8 21086102 */  addu       $at, $s3, $at
    /* 1AC44 801A3BBC E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 1AC48 801A3BC0 00000000 */  nop
    /* 1AC4C 801A3BC4 27200200 */  nor        $a0, $zero, $v0
    /* 1AC50 801A3BC8 43100400 */  sra        $v0, $a0, 1
    /* 1AC54 801A3BCC 01004230 */  andi       $v0, $v0, 0x1
    /* 1AC58 801A3BD0 05004010 */  beqz       $v0, .L801A3BE8
    /* 1AC5C 801A3BD4 28000224 */   addiu     $v0, $zero, 0x28
    /* 1AC60 801A3BD8 09006210 */  beq        $v1, $v0, .L801A3C00
    /* 1AC64 801A3BDC 29000224 */   addiu     $v0, $zero, 0x29
    /* 1AC68 801A3BE0 07006210 */  beq        $v1, $v0, .L801A3C00
    /* 1AC6C 801A3BE4 00000000 */   nop
  .L801A3BE8:
    /* 1AC70 801A3BE8 83100400 */  sra        $v0, $a0, 2
    /* 1AC74 801A3BEC 01004230 */  andi       $v0, $v0, 0x1
    /* 1AC78 801A3BF0 09004010 */  beqz       $v0, .L801A3C18
    /* 1AC7C 801A3BF4 2A000224 */   addiu     $v0, $zero, 0x2A
    /* 1AC80 801A3BF8 08006214 */  bne        $v1, $v0, .L801A3C1C
    /* 1AC84 801A3BFC 01000224 */   addiu     $v0, $zero, 0x1
  .L801A3C00:
    /* 1AC88 801A3C00 1180043C */  lui        $a0, %hi(D_8010A5A4)
    /* 1AC8C 801A3C04 A4A58494 */  lhu        $a0, %lo(D_8010A5A4)($a0)
    /* 1AC90 801A3C08 4F8F060C */  jal        func_801A3D3C
    /* 1AC94 801A3C0C FF004532 */   andi      $a1, $s2, 0xFF
    /* 1AC98 801A3C10 E98E0608 */  j          .L801A3BA4
    /* 1AC9C 801A3C14 21884000 */   addu      $s1, $v0, $zero
  .L801A3C18:
    /* 1ACA0 801A3C18 01000224 */  addiu      $v0, $zero, 0x1
  .L801A3C1C:
    /* 1ACA4 801A3C1C 11002216 */  bne        $s1, $v0, .L801A3C64
    /* 1ACA8 801A3C20 FF004232 */   andi      $v0, $s2, 0xFF
    /* 1ACAC 801A3C24 628D060C */  jal        func_801A3588
    /* 1ACB0 801A3C28 00000000 */   nop
    /* 1ACB4 801A3C2C FF004232 */  andi       $v0, $s2, 0xFF
    /* 1ACB8 801A3C30 05004010 */  beqz       $v0, .L801A3C48
    /* 1ACBC 801A3C34 00000000 */   nop
    /* 1ACC0 801A3C38 07005110 */  beq        $v0, $s1, .L801A3C58
    /* 1ACC4 801A3C3C 21108202 */   addu      $v0, $s4, $v0
    /* 1ACC8 801A3C40 1A8F0608 */  j          .L801A3C68
    /* 1ACCC 801A3C44 00000000 */   nop
  .L801A3C48:
    /* 1ACD0 801A3C48 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 1ACD4 801A3C4C 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 1ACD8 801A3C50 198F0608 */  j          .L801A3C64
    /* 1ACDC 801A3C54 FF004232 */   andi      $v0, $s2, 0xFF
  .L801A3C58:
    /* 1ACE0 801A3C58 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 1ACE4 801A3C5C 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 1ACE8 801A3C60 FF004232 */  andi       $v0, $s2, 0xFF
  .L801A3C64:
    /* 1ACEC 801A3C64 21108202 */  addu       $v0, $s4, $v0
  .L801A3C68:
    /* 1ACF0 801A3C68 DD024390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($v0)
    /* 1ACF4 801A3C6C 00000000 */  nop
    /* 1ACF8 801A3C70 1600622C */  sltiu      $v0, $v1, 0x16
    /* 1ACFC 801A3C74 11004014 */  bnez       $v0, .L801A3CBC
    /* 1AD00 801A3C78 21100000 */   addu      $v0, $zero, $zero
    /* 1AD04 801A3C7C 1B00622C */  sltiu      $v0, $v1, 0x1B
    /* 1AD08 801A3C80 0E004014 */  bnez       $v0, .L801A3CBC
    /* 1AD0C 801A3C84 01000224 */   addiu     $v0, $zero, 0x1
    /* 1AD10 801A3C88 1E00622C */  sltiu      $v0, $v1, 0x1E
    /* 1AD14 801A3C8C 0B004014 */  bnez       $v0, .L801A3CBC
    /* 1AD18 801A3C90 02000224 */   addiu     $v0, $zero, 0x2
    /* 1AD1C 801A3C94 2300622C */  sltiu      $v0, $v1, 0x23
    /* 1AD20 801A3C98 08004014 */  bnez       $v0, .L801A3CBC
    /* 1AD24 801A3C9C 03000224 */   addiu     $v0, $zero, 0x3
    /* 1AD28 801A3CA0 2700622C */  sltiu      $v0, $v1, 0x27
    /* 1AD2C 801A3CA4 05004014 */  bnez       $v0, .L801A3CBC
    /* 1AD30 801A3CA8 04000224 */   addiu     $v0, $zero, 0x4
    /* 1AD34 801A3CAC 2800622C */  sltiu      $v0, $v1, 0x28
    /* 1AD38 801A3CB0 02004014 */  bnez       $v0, .L801A3CBC
    /* 1AD3C 801A3CB4 05000224 */   addiu     $v0, $zero, 0x5
    /* 1AD40 801A3CB8 06000224 */  addiu      $v0, $zero, 0x6
  .L801A3CBC:
    /* 1AD44 801A3CBC FF005030 */  andi       $s0, $v0, 0xFF
    /* 1AD48 801A3CC0 06000224 */  addiu      $v0, $zero, 0x6
    /* 1AD4C 801A3CC4 05000216 */  bne        $s0, $v0, .L801A3CDC
    /* 1AD50 801A3CC8 FF004232 */   andi      $v0, $s2, 0xFF
    /* 1AD54 801A3CCC 7740010C */  jal        func_800501DC
    /* 1AD58 801A3CD0 FF004432 */   andi      $a0, $s2, 0xFF
    /* 1AD5C 801A3CD4 3B8F0608 */  j          .L801A3CEC
    /* 1AD60 801A3CD8 00000000 */   nop
  .L801A3CDC:
    /* 1AD64 801A3CDC 21106202 */  addu       $v0, $s3, $v0
    /* 1AD68 801A3CE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1AD6C 801A3CE4 21084100 */  addu       $at, $v0, $at
    /* 1AD70 801A3CE8 20AC20A0 */  sb         $zero, -0x53E0($at)
  .L801A3CEC:
    /* 1AD74 801A3CEC 0500B012 */  beq        $s5, $s0, .L801A3D04
    /* 1AD78 801A3CF0 00000000 */   nop
    /* 1AD7C 801A3CF4 2C5F6492 */  lbu        $a0, 0x5F2C($s3)
    /* 1AD80 801A3CF8 545F6592 */  lbu        $a1, 0x5F54($s3)
    /* 1AD84 801A3CFC 288B060C */  jal        func_801A2CA0
    /* 1AD88 801A3D00 00000000 */   nop
  .L801A3D04:
    /* 1AD8C 801A3D04 1180023C */  lui        $v0, %hi(D_8010A5A4)
    /* 1AD90 801A3D08 A4A54294 */  lhu        $v0, %lo(D_8010A5A4)($v0)
    /* 1AD94 801A3D0C 00000000 */  nop
    /* 1AD98 801A3D10 FF0F4230 */  andi       $v0, $v0, 0xFFF
  .L801A3D14:
    /* 1AD9C 801A3D14 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1ADA0 801A3D18 2400B58F */  lw         $s5, 0x24($sp)
    /* 1ADA4 801A3D1C 2000B48F */  lw         $s4, 0x20($sp)
    /* 1ADA8 801A3D20 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1ADAC 801A3D24 1800B28F */  lw         $s2, 0x18($sp)
    /* 1ADB0 801A3D28 1400B18F */  lw         $s1, 0x14($sp)
    /* 1ADB4 801A3D2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1ADB8 801A3D30 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1ADBC 801A3D34 0800E003 */  jr         $ra
    /* 1ADC0 801A3D38 00000000 */   nop
endlabel func_801A39E4
