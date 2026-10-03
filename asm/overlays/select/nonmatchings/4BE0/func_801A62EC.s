nonmatching func_801A62EC, 0xBC

glabel func_801A62EC
    /* 1D374 801A62EC 21300000 */  addu       $a2, $zero, $zero
    /* 1D378 801A62F0 00400A3C */  lui        $t2, (0x40000000 >> 16)
    /* 1D37C 801A62F4 54010924 */  addiu      $t1, $zero, 0x154
    /* 1D380 801A62F8 2D000824 */  addiu      $t0, $zero, 0x2D
    /* 1D384 801A62FC 20000724 */  addiu      $a3, $zero, 0x20
    /* 1D388 801A6300 1E80053C */  lui        $a1, %hi(D_801D8058)
    /* 1D38C 801A6304 5880A524 */  addiu      $a1, $a1, %lo(D_801D8058)
    /* 1D390 801A6308 21200000 */  addu       $a0, $zero, $zero
    /* 1D394 801A630C 21180000 */  addu       $v1, $zero, $zero
  .L801A6310:
    /* 1D398 801A6310 1E80013C */  lui        $at, %hi(D_801D8058)
    /* 1D39C 801A6314 21082300 */  addu       $at, $at, $v1
    /* 1D3A0 801A6318 58802AAC */  sw         $t2, %lo(D_801D8058)($at)
    /* 1D3A4 801A631C 1E80013C */  lui        $at, %hi(D_801D8080)
    /* 1D3A8 801A6320 21082400 */  addu       $at, $at, $a0
    /* 1D3AC 801A6324 80802294 */  lhu        $v0, %lo(D_801D8080)($at)
    /* 1D3B0 801A6328 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1D3B4 801A632C 1E80013C */  lui        $at, %hi(D_801D805C)
    /* 1D3B8 801A6330 21082300 */  addu       $at, $at, $v1
    /* 1D3BC 801A6334 5C8022A4 */  sh         $v0, %lo(D_801D805C)($at)
    /* 1D3C0 801A6338 1E80013C */  lui        $at, %hi(D_801D8082)
    /* 1D3C4 801A633C 21082400 */  addu       $at, $at, $a0
    /* 1D3C8 801A6340 82802294 */  lhu        $v0, %lo(D_801D8082)($at)
    /* 1D3CC 801A6344 90008424 */  addiu      $a0, $a0, 0x90
    /* 1D3D0 801A6348 1E80013C */  lui        $at, %hi(D_801D8060)
    /* 1D3D4 801A634C 21082300 */  addu       $at, $at, $v1
    /* 1D3D8 801A6350 608029A4 */  sh         $t1, %lo(D_801D8060)($at)
    /* 1D3DC 801A6354 1E80013C */  lui        $at, %hi(D_801D8062)
    /* 1D3E0 801A6358 21082300 */  addu       $at, $at, $v1
    /* 1D3E4 801A635C 628028A4 */  sh         $t0, %lo(D_801D8062)($at)
    /* 1D3E8 801A6360 1E80013C */  lui        $at, %hi(D_801D805E)
    /* 1D3EC 801A6364 21082300 */  addu       $at, $at, $v1
    /* 1D3F0 801A6368 5E8022A4 */  sh         $v0, %lo(D_801D805E)($at)
    /* 1D3F4 801A636C 0E00A7A0 */  sb         $a3, 0xE($a1)
    /* 1D3F8 801A6370 0D00A7A0 */  sb         $a3, 0xD($a1)
    /* 1D3FC 801A6374 1000A524 */  addiu      $a1, $a1, 0x10
    /* 1D400 801A6378 1E80013C */  lui        $at, %hi(D_801D8064)
    /* 1D404 801A637C 21082300 */  addu       $at, $at, $v1
    /* 1D408 801A6380 648027A0 */  sb         $a3, %lo(D_801D8064)($at)
    /* 1D40C 801A6384 0200C228 */  slti       $v0, $a2, 0x2
    /* 1D410 801A6388 E1FF4014 */  bnez       $v0, .L801A6310
    /* 1D414 801A638C 10006324 */   addiu     $v1, $v1, 0x10
    /* 1D418 801A6390 1E80013C */  lui        $at, %hi(D_801D819C)
    /* 1D41C 801A6394 9C8120A0 */  sb         $zero, %lo(D_801D819C)($at)
    /* 1D420 801A6398 1E80013C */  lui        $at, %hi(D_801D819D)
    /* 1D424 801A639C 9D8120A0 */  sb         $zero, %lo(D_801D819D)($at)
    /* 1D428 801A63A0 0800E003 */  jr         $ra
    /* 1D42C 801A63A4 00000000 */   nop
endlabel func_801A62EC
