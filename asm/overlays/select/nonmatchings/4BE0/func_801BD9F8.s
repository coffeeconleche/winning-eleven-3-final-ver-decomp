nonmatching func_801BD9F8, 0x17C

glabel func_801BD9F8
    /* 34A80 801BD9F8 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 34A84 801BD9FC 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 34A88 801BDA00 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 34A8C 801BDA04 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 34A90 801BDA08 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 34A94 801BDA0C 21880000 */  addu       $s1, $zero, $zero
    /* 34A98 801BDA10 3800B4AF */  sw         $s4, 0x38($sp)
    /* 34A9C 801BDA14 CEFF1424 */  addiu      $s4, $zero, -0x32
    /* 34AA0 801BDA18 2800B0AF */  sw         $s0, 0x28($sp)
    /* 34AA4 801BDA1C 20011024 */  addiu      $s0, $zero, 0x120
    /* 34AA8 801BDA20 3400B3AF */  sw         $s3, 0x34($sp)
    /* 34AAC 801BDA24 18001324 */  addiu      $s3, $zero, 0x18
    /* 34AB0 801BDA28 3000B2AF */  sw         $s2, 0x30($sp)
    /* 34AB4 801BDA2C 0C001224 */  addiu      $s2, $zero, 0xC
    /* 34AB8 801BDA30 4000BFAF */  sw         $ra, 0x40($sp)
  .L801BDA34:
    /* 34ABC 801BDA34 1E80013C */  lui        $at, %hi(D_801D8A4C)
    /* 34AC0 801BDA38 21083200 */  addu       $at, $at, $s2
    /* 34AC4 801BDA3C 4C8A2290 */  lbu        $v0, %lo(D_801D8A4C)($at)
    /* 34AC8 801BDA40 00000000 */  nop
    /* 34ACC 801BDA44 0F004230 */  andi       $v0, $v0, 0xF
    /* 34AD0 801BDA48 39004014 */  bnez       $v0, .L801BDB30
    /* 34AD4 801BDA4C 00000000 */   nop
    /* 34AD8 801BDA50 1E80023C */  lui        $v0, %hi(D_801DA2F0)
    /* 34ADC 801BDA54 F0A24290 */  lbu        $v0, %lo(D_801DA2F0)($v0)
    /* 34AE0 801BDA58 00000000 */  nop
    /* 34AE4 801BDA5C 24004010 */  beqz       $v0, .L801BDAF0
    /* 34AE8 801BDA60 10000224 */   addiu     $v0, $zero, 0x10
    /* 34AEC 801BDA64 1E80013C */  lui        $at, %hi(D_801D9278)
    /* 34AF0 801BDA68 21083300 */  addu       $at, $at, $s3
    /* 34AF4 801BDA6C 78922390 */  lbu        $v1, %lo(D_801D9278)($at)
    /* 34AF8 801BDA70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 34AFC 801BDA74 2108A102 */  addu       $at, $s5, $at
    /* 34B00 801BDA78 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 34B04 801BDA7C 00000000 */  nop
    /* 34B08 801BDA80 09006214 */  bne        $v1, $v0, .L801BDAA8
    /* 34B0C 801BDA84 40201100 */   sll       $a0, $s1, 1
    /* 34B10 801BDA88 1E80023C */  lui        $v0, %hi(D_801DA332)
    /* 34B14 801BDA8C 32A34290 */  lbu        $v0, %lo(D_801DA332)($v0)
    /* 34B18 801BDA90 00000000 */  nop
    /* 34B1C 801BDA94 42110200 */  srl        $v0, $v0, 5
    /* 34B20 801BDA98 01004230 */  andi       $v0, $v0, 0x1
    /* 34B24 801BDA9C 1E80013C */  lui        $at, %hi(D_801D8EE0)
    /* 34B28 801BDAA0 21083000 */  addu       $at, $at, $s0
    /* 34B2C 801BDAA4 E08E22A0 */  sb         $v0, %lo(D_801D8EE0)($at)
  .L801BDAA8:
    /* 34B30 801BDAA8 1E80013C */  lui        $at, %hi(D_801D9291)
    /* 34B34 801BDAAC 21082400 */  addu       $at, $at, $a0
    /* 34B38 801BDAB0 91922390 */  lbu        $v1, %lo(D_801D9291)($at)
    /* 34B3C 801BDAB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 34B40 801BDAB8 2108A102 */  addu       $at, $s5, $at
    /* 34B44 801BDABC 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 34B48 801BDAC0 00000000 */  nop
    /* 34B4C 801BDAC4 0A006214 */  bne        $v1, $v0, .L801BDAF0
    /* 34B50 801BDAC8 10000224 */   addiu     $v0, $zero, 0x10
    /* 34B54 801BDACC 1E80023C */  lui        $v0, %hi(D_801DA332)
    /* 34B58 801BDAD0 32A34290 */  lbu        $v0, %lo(D_801DA332)($v0)
    /* 34B5C 801BDAD4 00000000 */  nop
    /* 34B60 801BDAD8 42110200 */  srl        $v0, $v0, 5
    /* 34B64 801BDADC 01004230 */  andi       $v0, $v0, 0x1
    /* 34B68 801BDAE0 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 34B6C 801BDAE4 21083000 */  addu       $at, $at, $s0
    /* 34B70 801BDAE8 A08F22A0 */  sb         $v0, %lo(D_801D8FA0)($at)
    /* 34B74 801BDAEC 10000224 */  addiu      $v0, $zero, 0x10
  .L801BDAF0:
    /* 34B78 801BDAF0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 34B7C 801BDAF4 68000224 */  addiu      $v0, $zero, 0x68
    /* 34B80 801BDAF8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 34B84 801BDAFC E8000224 */  addiu      $v0, $zero, 0xE8
    /* 34B88 801BDB00 1800A2AF */  sw         $v0, 0x18($sp)
    /* 34B8C 801BDB04 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 34B90 801BDB08 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 34B94 801BDB0C 13000224 */  addiu      $v0, $zero, 0x13
    /* 34B98 801BDB10 2000A2AF */  sw         $v0, 0x20($sp)
    /* 34B9C 801BDB14 01000224 */  addiu      $v0, $zero, 0x1
    /* 34BA0 801BDB18 21200000 */  addu       $a0, $zero, $zero
    /* 34BA4 801BDB1C F4FF0524 */  addiu      $a1, $zero, -0xC
    /* 34BA8 801BDB20 21308002 */  addu       $a2, $s4, $zero
    /* 34BAC 801BDB24 18000724 */  addiu      $a3, $zero, 0x18
    /* 34BB0 801BDB28 DE58060C */  jal        func_80196378
    /* 34BB4 801BDB2C 2400A2AF */   sw        $v0, 0x24($sp)
  .L801BDB30:
    /* 34BB8 801BDB30 13009426 */  addiu      $s4, $s4, 0x13
    /* 34BBC 801BDB34 18001026 */  addiu      $s0, $s0, 0x18
    /* 34BC0 801BDB38 02007326 */  addiu      $s3, $s3, 0x2
    /* 34BC4 801BDB3C 01003126 */  addiu      $s1, $s1, 0x1
    /* 34BC8 801BDB40 0800222A */  slti       $v0, $s1, 0x8
    /* 34BCC 801BDB44 BBFF4014 */  bnez       $v0, .L801BDA34
    /* 34BD0 801BDB48 01005226 */   addiu     $s2, $s2, 0x1
    /* 34BD4 801BDB4C 4000BF8F */  lw         $ra, 0x40($sp)
    /* 34BD8 801BDB50 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 34BDC 801BDB54 3800B48F */  lw         $s4, 0x38($sp)
    /* 34BE0 801BDB58 3400B38F */  lw         $s3, 0x34($sp)
    /* 34BE4 801BDB5C 3000B28F */  lw         $s2, 0x30($sp)
    /* 34BE8 801BDB60 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 34BEC 801BDB64 2800B08F */  lw         $s0, 0x28($sp)
    /* 34BF0 801BDB68 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 34BF4 801BDB6C 0800E003 */  jr         $ra
    /* 34BF8 801BDB70 00000000 */   nop
endlabel func_801BD9F8
