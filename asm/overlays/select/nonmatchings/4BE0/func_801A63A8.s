nonmatching func_801A63A8, 0x58

glabel func_801A63A8
    /* 1D430 801A63A8 21280000 */  addu       $a1, $zero, $zero
    /* 1D434 801A63AC 21200000 */  addu       $a0, $zero, $zero
    /* 1D438 801A63B0 21180000 */  addu       $v1, $zero, $zero
  .L801A63B4:
    /* 1D43C 801A63B4 1E80013C */  lui        $at, %hi(D_801D8080)
    /* 1D440 801A63B8 21082400 */  addu       $at, $at, $a0
    /* 1D444 801A63BC 80802294 */  lhu        $v0, %lo(D_801D8080)($at)
    /* 1D448 801A63C0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1D44C 801A63C4 1E80013C */  lui        $at, %hi(D_801D805C)
    /* 1D450 801A63C8 21082300 */  addu       $at, $at, $v1
    /* 1D454 801A63CC 5C8022A4 */  sh         $v0, %lo(D_801D805C)($at)
    /* 1D458 801A63D0 1E80013C */  lui        $at, %hi(D_801D8082)
    /* 1D45C 801A63D4 21082400 */  addu       $at, $at, $a0
    /* 1D460 801A63D8 82802294 */  lhu        $v0, %lo(D_801D8082)($at)
    /* 1D464 801A63DC 90008424 */  addiu      $a0, $a0, 0x90
    /* 1D468 801A63E0 1E80013C */  lui        $at, %hi(D_801D805E)
    /* 1D46C 801A63E4 21082300 */  addu       $at, $at, $v1
    /* 1D470 801A63E8 5E8022A4 */  sh         $v0, %lo(D_801D805E)($at)
    /* 1D474 801A63EC 0200A228 */  slti       $v0, $a1, 0x2
    /* 1D478 801A63F0 F0FF4014 */  bnez       $v0, .L801A63B4
    /* 1D47C 801A63F4 10006324 */   addiu     $v1, $v1, 0x10
    /* 1D480 801A63F8 0800E003 */  jr         $ra
    /* 1D484 801A63FC 00000000 */   nop
endlabel func_801A63A8
