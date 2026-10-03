nonmatching func_801A49D4, 0x298

glabel func_801A49D4
    /* 1BA5C 801A49D4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1BA60 801A49D8 21380000 */  addu       $a3, $zero, $zero
    /* 1BA64 801A49DC 21300000 */  addu       $a2, $zero, $zero
    /* 1BA68 801A49E0 1180023C */  lui        $v0, %hi(D_80108668)
    /* 1BA6C 801A49E4 68864290 */  lbu        $v0, %lo(D_80108668)($v0)
    /* 1BA70 801A49E8 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1BA74 801A49EC 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1BA78 801A49F0 1C004018 */  blez       $v0, .L801A4A64
    /* 1BA7C 801A49F4 21280000 */   addu      $a1, $zero, $zero
    /* 1BA80 801A49F8 80AB0B34 */  ori        $t3, $zero, 0xAB80
    /* 1BA84 801A49FC 40000A24 */  addiu      $t2, $zero, 0x40
    /* 1BA88 801A4A00 21484000 */  addu       $t1, $v0, $zero
    /* 1BA8C 801A4A04 21100501 */  addu       $v0, $t0, $a1
  .L801A4A08:
    /* 1BA90 801A4A08 21104B00 */  addu       $v0, $v0, $t3
    /* 1BA94 801A4A0C 00004390 */  lbu        $v1, 0x0($v0)
    /* 1BA98 801A4A10 00000000 */  nop
    /* 1BA9C 801A4A14 C0100300 */  sll        $v0, $v1, 3
    /* 1BAA0 801A4A18 21104300 */  addu       $v0, $v0, $v1
    /* 1BAA4 801A4A1C 80100200 */  sll        $v0, $v0, 2
    /* 1BAA8 801A4A20 21100201 */  addu       $v0, $t0, $v0
    /* 1BAAC 801A4A24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BAB0 801A4A28 21084100 */  addu       $at, $v0, $at
    /* 1BAB4 801A4A2C 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 1BAB8 801A4A30 00000000 */  nop
    /* 1BABC 801A4A34 C0004230 */  andi       $v0, $v0, 0xC0
    /* 1BAC0 801A4A38 03004014 */  bnez       $v0, .L801A4A48
    /* 1BAC4 801A4A3C 00000000 */   nop
    /* 1BAC8 801A4A40 95920608 */  j          .L801A4A54
    /* 1BACC 801A4A44 0100C624 */   addiu     $a2, $a2, 0x1
  .L801A4A48:
    /* 1BAD0 801A4A48 02004A14 */  bne        $v0, $t2, .L801A4A54
    /* 1BAD4 801A4A4C 00000000 */   nop
    /* 1BAD8 801A4A50 0100E724 */  addiu      $a3, $a3, 0x1
  .L801A4A54:
    /* 1BADC 801A4A54 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1BAE0 801A4A58 2A10A900 */  slt        $v0, $a1, $t1
    /* 1BAE4 801A4A5C EAFF4014 */  bnez       $v0, .L801A4A08
    /* 1BAE8 801A4A60 21100501 */   addu      $v0, $t0, $a1
  .L801A4A64:
    /* 1BAEC 801A4A64 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1BAF0 801A4A68 03008010 */  beqz       $a0, .L801A4A78
    /* 1BAF4 801A4A6C 40000224 */   addiu     $v0, $zero, 0x40
    /* 1BAF8 801A4A70 0A008210 */  beq        $a0, $v0, .L801A4A9C
    /* 1BAFC 801A4A74 00000000 */   nop
  .L801A4A78:
    /* 1BB00 801A4A78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BB04 801A4A7C 21080101 */  addu       $at, $t0, $at
    /* 1BB08 801A4A80 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 1BB0C 801A4A84 00000000 */  nop
    /* 1BB10 801A4A88 2A10C200 */  slt        $v0, $a2, $v0
    /* 1BB14 801A4A8C 3E004010 */  beqz       $v0, .L801A4B88
    /* 1BB18 801A4A90 00000000 */   nop
    /* 1BB1C 801A4A94 B2920608 */  j          .L801A4AC8
    /* 1BB20 801A4A98 00000000 */   nop
  .L801A4A9C:
    /* 1BB24 801A4A9C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BB28 801A4AA0 21080101 */  addu       $at, $t0, $at
    /* 1BB2C 801A4AA4 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 1BB30 801A4AA8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BB34 801A4AAC 21080101 */  addu       $at, $t0, $at
    /* 1BB38 801A4AB0 218F2390 */  lbu        $v1, -0x70DF($at)
    /* 1BB3C 801A4AB4 00000000 */  nop
    /* 1BB40 801A4AB8 23104300 */  subu       $v0, $v0, $v1
    /* 1BB44 801A4ABC 2A10E200 */  slt        $v0, $a3, $v0
    /* 1BB48 801A4AC0 31004014 */  bnez       $v0, .L801A4B88
    /* 1BB4C 801A4AC4 00000000 */   nop
  .L801A4AC8:
    /* 1BB50 801A4AC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BB54 801A4ACC 21080101 */  addu       $at, $t0, $at
    /* 1BB58 801A4AD0 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 1BB5C 801A4AD4 00000000 */  nop
    /* 1BB60 801A4AD8 29004018 */  blez       $v0, .L801A4B80
    /* 1BB64 801A4ADC 21280000 */   addu      $a1, $zero, $zero
    /* 1BB68 801A4AE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BB6C 801A4AE4 21080101 */  addu       $at, $t0, $at
    /* 1BB70 801A4AE8 208F2B90 */  lbu        $t3, -0x70E0($at)
    /* 1BB74 801A4AEC 80AB0934 */  ori        $t1, $zero, 0xAB80
    /* 1BB78 801A4AF0 21504000 */  addu       $t2, $v0, $zero
    /* 1BB7C 801A4AF4 01000624 */  addiu      $a2, $zero, 0x1
  .L801A4AF8:
    /* 1BB80 801A4AF8 1B006011 */  beqz       $t3, .L801A4B68
    /* 1BB84 801A4AFC 21200000 */   addu      $a0, $zero, $zero
    /* 1BB88 801A4B00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BB8C 801A4B04 21080101 */  addu       $at, $t0, $at
    /* 1BB90 801A4B08 208F2790 */  lbu        $a3, -0x70E0($at)
    /* 1BB94 801A4B0C 21100401 */  addu       $v0, $t0, $a0
  .L801A4B10:
    /* 1BB98 801A4B10 21104900 */  addu       $v0, $v0, $t1
    /* 1BB9C 801A4B14 00004390 */  lbu        $v1, 0x0($v0)
    /* 1BBA0 801A4B18 00000000 */  nop
    /* 1BBA4 801A4B1C C0100300 */  sll        $v0, $v1, 3
    /* 1BBA8 801A4B20 21104300 */  addu       $v0, $v0, $v1
    /* 1BBAC 801A4B24 80100200 */  sll        $v0, $v0, 2
    /* 1BBB0 801A4B28 21100201 */  addu       $v0, $t0, $v0
    /* 1BBB4 801A4B2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BBB8 801A4B30 21084100 */  addu       $at, $v0, $at
    /* 1BBBC 801A4B34 248F2390 */  lbu        $v1, -0x70DC($at)
    /* 1BBC0 801A4B38 00000000 */  nop
    /* 1BBC4 801A4B3C C0006230 */  andi       $v0, $v1, 0xC0
    /* 1BBC8 801A4B40 05004014 */  bnez       $v0, .L801A4B58
    /* 1BBCC 801A4B44 3F006230 */   andi      $v0, $v1, 0x3F
    /* 1BBD0 801A4B48 03004514 */  bne        $v0, $a1, .L801A4B58
    /* 1BBD4 801A4B4C 00000000 */   nop
    /* 1BBD8 801A4B50 DA920608 */  j          .L801A4B68
    /* 1BBDC 801A4B54 21300000 */   addu      $a2, $zero, $zero
  .L801A4B58:
    /* 1BBE0 801A4B58 01008424 */  addiu      $a0, $a0, 0x1
    /* 1BBE4 801A4B5C 2A108700 */  slt        $v0, $a0, $a3
    /* 1BBE8 801A4B60 EBFF4014 */  bnez       $v0, .L801A4B10
    /* 1BBEC 801A4B64 21100401 */   addu      $v0, $t0, $a0
  .L801A4B68:
    /* 1BBF0 801A4B68 3D00C014 */  bnez       $a2, .L801A4C60
    /* 1BBF4 801A4B6C FF00A230 */   andi      $v0, $a1, 0xFF
    /* 1BBF8 801A4B70 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1BBFC 801A4B74 2A10AA00 */  slt        $v0, $a1, $t2
    /* 1BC00 801A4B78 DFFF4014 */  bnez       $v0, .L801A4AF8
    /* 1BC04 801A4B7C 01000624 */   addiu     $a2, $zero, 0x1
  .L801A4B80:
    /* 1BC08 801A4B80 18930608 */  j          .L801A4C60
    /* 1BC0C 801A4B84 FF00A230 */   andi      $v0, $a1, 0xFF
  .L801A4B88:
    /* 1BC10 801A4B88 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BC14 801A4B8C 21080101 */  addu       $at, $t0, $at
    /* 1BC18 801A4B90 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 1BC1C 801A4B94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BC20 801A4B98 21080101 */  addu       $at, $t0, $at
    /* 1BC24 801A4B9C 218F2490 */  lbu        $a0, -0x70DF($at)
    /* 1BC28 801A4BA0 00000000 */  nop
    /* 1BC2C 801A4BA4 23106400 */  subu       $v0, $v1, $a0
    /* 1BC30 801A4BA8 2B004018 */  blez       $v0, .L801A4C58
    /* 1BC34 801A4BAC 21280000 */   addu      $a1, $zero, $zero
    /* 1BC38 801A4BB0 80AB0A34 */  ori        $t2, $zero, 0xAB80
    /* 1BC3C 801A4BB4 40000924 */  addiu      $t1, $zero, 0x40
    /* 1BC40 801A4BB8 21588000 */  addu       $t3, $a0, $zero
    /* 1BC44 801A4BBC 01000624 */  addiu      $a2, $zero, 0x1
  .L801A4BC0:
    /* 1BC48 801A4BC0 1B006010 */  beqz       $v1, .L801A4C30
    /* 1BC4C 801A4BC4 21200000 */   addu      $a0, $zero, $zero
    /* 1BC50 801A4BC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BC54 801A4BCC 21080101 */  addu       $at, $t0, $at
    /* 1BC58 801A4BD0 208F2790 */  lbu        $a3, -0x70E0($at)
    /* 1BC5C 801A4BD4 21100401 */  addu       $v0, $t0, $a0
  .L801A4BD8:
    /* 1BC60 801A4BD8 21104A00 */  addu       $v0, $v0, $t2
    /* 1BC64 801A4BDC 00004390 */  lbu        $v1, 0x0($v0)
    /* 1BC68 801A4BE0 00000000 */  nop
    /* 1BC6C 801A4BE4 C0100300 */  sll        $v0, $v1, 3
    /* 1BC70 801A4BE8 21104300 */  addu       $v0, $v0, $v1
    /* 1BC74 801A4BEC 80100200 */  sll        $v0, $v0, 2
    /* 1BC78 801A4BF0 21100201 */  addu       $v0, $t0, $v0
    /* 1BC7C 801A4BF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BC80 801A4BF8 21084100 */  addu       $at, $v0, $at
    /* 1BC84 801A4BFC 248F2390 */  lbu        $v1, -0x70DC($at)
    /* 1BC88 801A4C00 00000000 */  nop
    /* 1BC8C 801A4C04 C0006230 */  andi       $v0, $v1, 0xC0
    /* 1BC90 801A4C08 05004914 */  bne        $v0, $t1, .L801A4C20
    /* 1BC94 801A4C0C 3F006230 */   andi      $v0, $v1, 0x3F
    /* 1BC98 801A4C10 03004514 */  bne        $v0, $a1, .L801A4C20
    /* 1BC9C 801A4C14 00000000 */   nop
    /* 1BCA0 801A4C18 0C930608 */  j          .L801A4C30
    /* 1BCA4 801A4C1C 21300000 */   addu      $a2, $zero, $zero
  .L801A4C20:
    /* 1BCA8 801A4C20 01008424 */  addiu      $a0, $a0, 0x1
    /* 1BCAC 801A4C24 2A108700 */  slt        $v0, $a0, $a3
    /* 1BCB0 801A4C28 EBFF4014 */  bnez       $v0, .L801A4BD8
    /* 1BCB4 801A4C2C 21100401 */   addu      $v0, $t0, $a0
  .L801A4C30:
    /* 1BCB8 801A4C30 0A00C014 */  bnez       $a2, .L801A4C5C
    /* 1BCBC 801A4C34 4000A234 */   ori       $v0, $a1, 0x40
    /* 1BCC0 801A4C38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BCC4 801A4C3C 21080101 */  addu       $at, $t0, $at
    /* 1BCC8 801A4C40 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 1BCCC 801A4C44 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1BCD0 801A4C48 23106B00 */  subu       $v0, $v1, $t3
    /* 1BCD4 801A4C4C 2A10A200 */  slt        $v0, $a1, $v0
    /* 1BCD8 801A4C50 DBFF4014 */  bnez       $v0, .L801A4BC0
    /* 1BCDC 801A4C54 01000624 */   addiu     $a2, $zero, 0x1
  .L801A4C58:
    /* 1BCE0 801A4C58 4000A234 */  ori        $v0, $a1, 0x40
  .L801A4C5C:
    /* 1BCE4 801A4C5C FF004230 */  andi       $v0, $v0, 0xFF
  .L801A4C60:
    /* 1BCE8 801A4C60 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1BCEC 801A4C64 0800E003 */  jr         $ra
    /* 1BCF0 801A4C68 00000000 */   nop
endlabel func_801A49D4
