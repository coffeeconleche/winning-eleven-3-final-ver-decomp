nonmatching func_80050380, 0x190

glabel func_80050380
    /* 40B80 80050380 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 40B84 80050384 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 40B88 80050388 21A88000 */  addu       $s5, $a0, $zero
    /* 40B8C 8005038C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 40B90 80050390 1800B0AF */  sw         $s0, 0x18($sp)
    /* 40B94 80050394 80811500 */  sll        $s0, $s5, 6
    /* 40B98 80050398 60020526 */  addiu      $a1, $s0, 0x260
    /* 40B9C 8005039C 80010624 */  addiu      $a2, $zero, 0x180
    /* 40BA0 800503A0 60030224 */  addiu      $v0, $zero, 0x360
    /* 40BA4 800503A4 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 40BA8 800503A8 80010224 */  addiu      $v0, $zero, 0x180
    /* 40BAC 800503AC 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 40BB0 800503B0 20000224 */  addiu      $v0, $zero, 0x20
    /* 40BB4 800503B4 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 40BB8 800503B8 58000224 */  addiu      $v0, $zero, 0x58
    /* 40BBC 800503BC 3000BFAF */  sw         $ra, 0x30($sp)
    /* 40BC0 800503C0 2800B4AF */  sw         $s4, 0x28($sp)
    /* 40BC4 800503C4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 40BC8 800503C8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 40BCC 800503CC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 40BD0 800503D0 28BA020C */  jal        func_800AE8A0
    /* 40BD4 800503D4 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 40BD8 800503D8 4DB9020C */  jal        func_800AE534
    /* 40BDC 800503DC 21200000 */   addu      $a0, $zero, $zero
    /* 40BE0 800503E0 21880000 */  addu       $s1, $zero, $zero
    /* 40BE4 800503E4 71021426 */  addiu      $s4, $s0, 0x271
    /* 40BE8 800503E8 21800000 */  addu       $s0, $zero, $zero
  .L800503EC:
    /* 40BEC 800503EC FF002232 */  andi       $v0, $s1, 0xFF
    /* 40BF0 800503F0 71035324 */  addiu      $s3, $v0, 0x371
    /* 40BF4 800503F4 21905400 */  addu       $s2, $v0, $s4
    /* 40BF8 800503F8 FFFF6432 */  andi       $a0, $s3, 0xFFFF
  .L800503FC:
    /* 40BFC 800503FC FF000532 */  andi       $a1, $s0, 0xFF
    /* 40C00 80050400 EC01A524 */  addiu      $a1, $a1, 0x1EC
    /* 40C04 80050404 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 40C08 80050408 FFFF4632 */  andi       $a2, $s2, 0xFFFF
    /* 40C0C 8005040C 2C40010C */  jal        func_800500B0
    /* 40C10 80050410 2138A000 */   addu      $a3, $a1, $zero
    /* 40C14 80050414 01001026 */  addiu      $s0, $s0, 0x1
    /* 40C18 80050418 FF000232 */  andi       $v0, $s0, 0xFF
    /* 40C1C 8005041C 1400422C */  sltiu      $v0, $v0, 0x14
    /* 40C20 80050420 F6FF4014 */  bnez       $v0, .L800503FC
    /* 40C24 80050424 FFFF6432 */   andi      $a0, $s3, 0xFFFF
    /* 40C28 80050428 01003126 */  addiu      $s1, $s1, 0x1
    /* 40C2C 8005042C FF002232 */  andi       $v0, $s1, 0xFF
    /* 40C30 80050430 0700422C */  sltiu      $v0, $v0, 0x7
    /* 40C34 80050434 EDFF4014 */  bnez       $v0, .L800503EC
    /* 40C38 80050438 21800000 */   addu      $s0, $zero, $zero
    /* 40C3C 8005043C 21880000 */  addu       $s1, $zero, $zero
    /* 40C40 80050440 80111500 */  sll        $v0, $s5, 6
    /* 40C44 80050444 78025424 */  addiu      $s4, $v0, 0x278
  .L80050448:
    /* 40C48 80050448 21800000 */  addu       $s0, $zero, $zero
    /* 40C4C 8005044C FF002232 */  andi       $v0, $s1, 0xFF
    /* 40C50 80050450 78035324 */  addiu      $s3, $v0, 0x378
    /* 40C54 80050454 21905400 */  addu       $s2, $v0, $s4
    /* 40C58 80050458 FFFF6432 */  andi       $a0, $s3, 0xFFFF
  .L8005045C:
    /* 40C5C 8005045C FF000532 */  andi       $a1, $s0, 0xFF
    /* 40C60 80050460 D801A524 */  addiu      $a1, $a1, 0x1D8
    /* 40C64 80050464 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 40C68 80050468 FFFF4632 */  andi       $a2, $s2, 0xFFFF
    /* 40C6C 8005046C 2C40010C */  jal        func_800500B0
    /* 40C70 80050470 2138A000 */   addu      $a3, $a1, $zero
    /* 40C74 80050474 01001026 */  addiu      $s0, $s0, 0x1
    /* 40C78 80050478 FF000232 */  andi       $v0, $s0, 0xFF
    /* 40C7C 8005047C 2800422C */  sltiu      $v0, $v0, 0x28
    /* 40C80 80050480 F6FF4014 */  bnez       $v0, .L8005045C
    /* 40C84 80050484 FFFF6432 */   andi      $a0, $s3, 0xFFFF
    /* 40C88 80050488 01003126 */  addiu      $s1, $s1, 0x1
    /* 40C8C 8005048C FF002232 */  andi       $v0, $s1, 0xFF
    /* 40C90 80050490 0800422C */  sltiu      $v0, $v0, 0x8
    /* 40C94 80050494 ECFF4014 */  bnez       $v0, .L80050448
    /* 40C98 80050498 E4030224 */   addiu     $v0, $zero, 0x3E4
    /* 40C9C 8005049C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 40CA0 800504A0 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* 40CA4 800504A4 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 40CA8 800504A8 18000224 */  addiu      $v0, $zero, 0x18
    /* 40CAC 800504AC 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 40CB0 800504B0 20000224 */  addiu      $v0, $zero, 0x20
    /* 40CB4 800504B4 0500A016 */  bnez       $s5, .L800504CC
    /* 40CB8 800504B8 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 40CBC 800504BC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 40CC0 800504C0 64020524 */  addiu      $a1, $zero, 0x264
    /* 40CC4 800504C4 36410108 */  j          .L800504D8
    /* 40CC8 800504C8 40010624 */   addiu     $a2, $zero, 0x140
  .L800504CC:
    /* 40CCC 800504CC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 40CD0 800504D0 24020524 */  addiu      $a1, $zero, 0x224
    /* 40CD4 800504D4 C0010624 */  addiu      $a2, $zero, 0x1C0
  .L800504D8:
    /* 40CD8 800504D8 28BA020C */  jal        func_800AE8A0
    /* 40CDC 800504DC 00000000 */   nop
    /* 40CE0 800504E0 4DB9020C */  jal        func_800AE534
    /* 40CE4 800504E4 21200000 */   addu      $a0, $zero, $zero
    /* 40CE8 800504E8 3000BF8F */  lw         $ra, 0x30($sp)
    /* 40CEC 800504EC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 40CF0 800504F0 2800B48F */  lw         $s4, 0x28($sp)
    /* 40CF4 800504F4 2400B38F */  lw         $s3, 0x24($sp)
    /* 40CF8 800504F8 2000B28F */  lw         $s2, 0x20($sp)
    /* 40CFC 800504FC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 40D00 80050500 1800B08F */  lw         $s0, 0x18($sp)
    /* 40D04 80050504 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 40D08 80050508 0800E003 */  jr         $ra
    /* 40D0C 8005050C 00000000 */   nop
endlabel func_80050380
