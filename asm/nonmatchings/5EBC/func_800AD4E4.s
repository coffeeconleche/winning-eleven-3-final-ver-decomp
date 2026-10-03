/* Handwritten function */
nonmatching func_800AD4E4, 0x8C

glabel func_800AD4E4
    /* 9DCE4 800AD4E4 0E80013C */  lui        $at, %hi(D_800E7028)
    /* 9DCE8 800AD4E8 28703FAC */  sw         $ra, %lo(D_800E7028)($at)
    /* 9DCEC 800AD4EC F6B4020C */  jal        func_800AD3D8
    /* 9DCF0 800AD4F0 00000000 */   nop
    /* 9DCF4 800AD4F4 57000924 */  addiu      $t1, $zero, 0x57
    /* 9DCF8 800AD4F8 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9DCFC 800AD4FC 09F84001 */  jalr       $t2
    /* 9DD00 800AD500 00000000 */   nop
    /* 9DD04 800AD504 0B800A3C */  lui        $t2, %hi(func_800AD570)
    /* 9DD08 800AD508 70D54A25 */  addiu      $t2, $t2, %lo(func_800AD570)
    /* 9DD0C 800AD50C 0B80093C */  lui        $t1, %hi(D_800AD580)
    /* 9DD10 800AD510 80D52925 */  addiu      $t1, $t1, %lo(D_800AD580)
    /* 9DD14 800AD514 6C01428C */  lw         $v0, 0x16C($v0)
    /* 9DD18 800AD518 00000000 */  nop
    /* 9DD1C 800AD51C A0074320 */  addi       $v1, $v0, 0x7A0 /* handwritten instruction */
    /* 9DD20 800AD520 0E80013C */  lui        $at, %hi(D_800E702C)
    /* 9DD24 800AD524 2C7023AC */  sw         $v1, %lo(D_800E702C)($at)
  .L800AD528:
    /* 9DD28 800AD528 0000438D */  lw         $v1, 0x0($t2)
    /* 9DD2C 800AD52C 00000000 */  nop
    /* 9DD30 800AD530 D80343AC */  sw         $v1, 0x3D8($v0)
    /* 9DD34 800AD534 E00443AC */  sw         $v1, 0x4E0($v0)
    /* 9DD38 800AD538 04004224 */  addiu      $v0, $v0, 0x4
    /* 9DD3C 800AD53C 04004A25 */  addiu      $t2, $t2, 0x4
    /* 9DD40 800AD540 F9FF4915 */  bne        $t2, $t1, .L800AD528
    /* 9DD44 800AD544 00000000 */   nop
    /* 9DD48 800AD548 2AB5020C */  jal        func_800AD4A8
    /* 9DD4C 800AD54C 00000000 */   nop
    /* 9DD50 800AD550 9AB3020C */  jal        func_800ACE68
    /* 9DD54 800AD554 00000000 */   nop
    /* 9DD58 800AD558 0E801F3C */  lui        $ra, %hi(D_800E7028)
    /* 9DD5C 800AD55C 2870FF8F */  lw         $ra, %lo(D_800E7028)($ra)
    /* 9DD60 800AD560 0E80023C */  lui        $v0, %hi(D_800E702C)
    /* 9DD64 800AD564 2C70428C */  lw         $v0, %lo(D_800E702C)($v0)
    /* 9DD68 800AD568 0800E003 */  jr         $ra
    /* 9DD6C 800AD56C 00000000 */   nop
endlabel func_800AD4E4
