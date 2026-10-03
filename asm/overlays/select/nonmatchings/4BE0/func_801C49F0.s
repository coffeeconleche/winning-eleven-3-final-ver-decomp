nonmatching func_801C49F0, 0x204

glabel func_801C49F0
    /* 3BA78 801C49F0 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 3BA7C 801C49F4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 3BA80 801C49F8 5400BFAF */  sw         $ra, 0x54($sp)
    /* 3BA84 801C49FC 5000B2AF */  sw         $s2, 0x50($sp)
    /* 3BA88 801C4A00 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 3BA8C 801C4A04 08008010 */  beqz       $a0, .L801C4A28
    /* 3BA90 801C4A08 4800B0AF */   sw        $s0, 0x48($sp)
    /* 3BA94 801C4A0C 10000224 */  addiu      $v0, $zero, 0x10
    /* 3BA98 801C4A10 1D80013C */  lui        $at, %hi(D_801D429F)
    /* 3BA9C 801C4A14 9F4220A0 */  sb         $zero, %lo(D_801D429F)($at)
    /* 3BAA0 801C4A18 1D80013C */  lui        $at, %hi(D_801D429E)
    /* 3BAA4 801C4A1C 9E4222A0 */  sb         $v0, %lo(D_801D429E)($at)
    /* 3BAA8 801C4A20 F6120708 */  j          .L801C4BD8
    /* 3BAAC 801C4A24 00000000 */   nop
  .L801C4A28:
    /* 3BAB0 801C4A28 14000424 */  addiu      $a0, $zero, 0x14
    /* 3BAB4 801C4A2C 01700524 */  addiu      $a1, $zero, 0x7001
    /* 3BAB8 801C4A30 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 3BABC 801C4A34 21380000 */  addu       $a3, $zero, $zero
    /* 3BAC0 801C4A38 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3BAC4 801C4A3C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3BAC8 801C4A40 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3BACC 801C4A44 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3BAD0 801C4A48 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3BAD4 801C4A4C 80000224 */  addiu      $v0, $zero, 0x80
    /* 3BAD8 801C4A50 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3BADC 801C4A54 3000A2AF */  sw         $v0, 0x30($sp)
    /* 3BAE0 801C4A58 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3BAE4 801C4A5C 04000224 */  addiu      $v0, $zero, 0x4
    /* 3BAE8 801C4A60 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 3BAEC 801C4A64 01000224 */  addiu      $v0, $zero, 0x1
    /* 3BAF0 801C4A68 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3BAF4 801C4A6C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3BAF8 801C4A70 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3BAFC 801C4A74 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3BB00 801C4A78 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3BB04 801C4A7C ED4F060C */  jal        func_80193FB4
    /* 3BB08 801C4A80 4000A2AF */   sw        $v0, 0x40($sp)
    /* 3BB0C 801C4A84 21800000 */  addu       $s0, $zero, $zero
    /* 3BB10 801C4A88 00101224 */  addiu      $s2, $zero, 0x1000
    /* 3BB14 801C4A8C 80001124 */  addiu      $s1, $zero, 0x80
    /* 3BB18 801C4A90 FF000532 */  andi       $a1, $s0, 0xFF
  .L801C4A94:
    /* 3BB1C 801C4A94 1500A424 */  addiu      $a0, $a1, 0x15
    /* 3BB20 801C4A98 0470A524 */  addiu      $a1, $a1, 0x7004
    /* 3BB24 801C4A9C 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 3BB28 801C4AA0 21380000 */  addu       $a3, $zero, $zero
    /* 3BB2C 801C4AA4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3BB30 801C4AA8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3BB34 801C4AAC 04000224 */  addiu      $v0, $zero, 0x4
    /* 3BB38 801C4AB0 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 3BB3C 801C4AB4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3BB40 801C4AB8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3BB44 801C4ABC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3BB48 801C4AC0 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3BB4C 801C4AC4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3BB50 801C4AC8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3BB54 801C4ACC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3BB58 801C4AD0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3BB5C 801C4AD4 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3BB60 801C4AD8 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3BB64 801C4ADC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3BB68 801C4AE0 ED4F060C */  jal        func_80193FB4
    /* 3BB6C 801C4AE4 4000A2AF */   sw        $v0, 0x40($sp)
    /* 3BB70 801C4AE8 01001026 */  addiu      $s0, $s0, 0x1
    /* 3BB74 801C4AEC FF000232 */  andi       $v0, $s0, 0xFF
    /* 3BB78 801C4AF0 0800422C */  sltiu      $v0, $v0, 0x8
    /* 3BB7C 801C4AF4 E7FF4014 */  bnez       $v0, .L801C4A94
    /* 3BB80 801C4AF8 FF000532 */   andi      $a1, $s0, 0xFF
    /* 3BB84 801C4AFC 1D80033C */  lui        $v1, %hi(D_801D429E)
    /* 3BB88 801C4B00 9E426380 */  lb         $v1, %lo(D_801D429E)($v1)
    /* 3BB8C 801C4B04 1D80023C */  lui        $v0, %hi(D_801D429F)
    /* 3BB90 801C4B08 9F424280 */  lb         $v0, %lo(D_801D429F)($v0)
    /* 3BB94 801C4B0C 00000000 */  nop
    /* 3BB98 801C4B10 03004010 */  beqz       $v0, .L801C4B20
    /* 3BB9C 801C4B14 40800300 */   sll       $s0, $v1, 1
    /* 3BBA0 801C4B18 C9120708 */  j          .L801C4B24
    /* 3BBA4 801C4B1C FFFF6224 */   addiu     $v0, $v1, -0x1
  .L801C4B20:
    /* 3BBA8 801C4B20 01006224 */  addiu      $v0, $v1, 0x1
  .L801C4B24:
    /* 3BBAC 801C4B24 1D80013C */  lui        $at, %hi(D_801D429E)
    /* 3BBB0 801C4B28 9E4222A0 */  sb         $v0, %lo(D_801D429E)($at)
    /* 3BBB4 801C4B2C 00160200 */  sll        $v0, $v0, 24
    /* 3BBB8 801C4B30 031E0200 */  sra        $v1, $v0, 24
    /* 3BBBC 801C4B34 64006228 */  slti       $v0, $v1, 0x64
    /* 3BBC0 801C4B38 05004014 */  bnez       $v0, .L801C4B50
    /* 3BBC4 801C4B3C 31006228 */   slti      $v0, $v1, 0x31
    /* 3BBC8 801C4B40 01000224 */  addiu      $v0, $zero, 0x1
    /* 3BBCC 801C4B44 1D80013C */  lui        $at, %hi(D_801D429F)
    /* 3BBD0 801C4B48 9F4222A0 */  sb         $v0, %lo(D_801D429F)($at)
    /* 3BBD4 801C4B4C 31006228 */  slti       $v0, $v1, 0x31
  .L801C4B50:
    /* 3BBD8 801C4B50 03004010 */  beqz       $v0, .L801C4B60
    /* 3BBDC 801C4B54 00000000 */   nop
    /* 3BBE0 801C4B58 1D80013C */  lui        $at, %hi(D_801D429F)
    /* 3BBE4 801C4B5C 9F4220A0 */  sb         $zero, %lo(D_801D429F)($at)
  .L801C4B60:
    /* 3BBE8 801C4B60 1D80053C */  lui        $a1, %hi(D_801D4298)
    /* 3BBEC 801C4B64 9842A590 */  lbu        $a1, %lo(D_801D4298)($a1)
    /* 3BBF0 801C4B68 00000000 */  nop
    /* 3BBF4 801C4B6C 0300A010 */  beqz       $a1, .L801C4B7C
    /* 3BBF8 801C4B70 1400A424 */   addiu     $a0, $a1, 0x14
    /* 3BBFC 801C4B74 E1120708 */  j          .L801C4B84
    /* 3BC00 801C4B78 0370A524 */   addiu     $a1, $a1, 0x7003
  .L801C4B7C:
    /* 3BC04 801C4B7C 14000424 */  addiu      $a0, $zero, 0x14
    /* 3BC08 801C4B80 01700524 */  addiu      $a1, $zero, 0x7001
  .L801C4B84:
    /* 3BC0C 801C4B84 21300000 */  addu       $a2, $zero, $zero
    /* 3BC10 801C4B88 21380000 */  addu       $a3, $zero, $zero
    /* 3BC14 801C4B8C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3BC18 801C4B90 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3BC1C 801C4B94 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3BC20 801C4B98 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3BC24 801C4B9C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3BC28 801C4BA0 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3BC2C 801C4BA4 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3BC30 801C4BA8 3000A2AF */  sw         $v0, 0x30($sp)
    /* 3BC34 801C4BAC 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3BC38 801C4BB0 04000224 */  addiu      $v0, $zero, 0x4
    /* 3BC3C 801C4BB4 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 3BC40 801C4BB8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3BC44 801C4BBC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3BC48 801C4BC0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3BC4C 801C4BC4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3BC50 801C4BC8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3BC54 801C4BCC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3BC58 801C4BD0 ED4F060C */  jal        func_80193FB4
    /* 3BC5C 801C4BD4 4000A2AF */   sw        $v0, 0x40($sp)
  .L801C4BD8:
    /* 3BC60 801C4BD8 5400BF8F */  lw         $ra, 0x54($sp)
    /* 3BC64 801C4BDC 5000B28F */  lw         $s2, 0x50($sp)
    /* 3BC68 801C4BE0 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 3BC6C 801C4BE4 4800B08F */  lw         $s0, 0x48($sp)
    /* 3BC70 801C4BE8 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 3BC74 801C4BEC 0800E003 */  jr         $ra
    /* 3BC78 801C4BF0 00000000 */   nop
endlabel func_801C49F0
