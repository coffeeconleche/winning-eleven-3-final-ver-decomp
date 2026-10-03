nonmatching func_801CB334, 0x48

glabel func_801CB334
    /* 423BC 801CB334 21180000 */  addu       $v1, $zero, $zero
    /* 423C0 801CB338 1D80063C */  lui        $a2, %hi(D_801D5988)
    /* 423C4 801CB33C 8859C624 */  addiu      $a2, $a2, %lo(D_801D5988)
    /* 423C8 801CB340 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 423CC 801CB344 FF006530 */  andi       $a1, $v1, 0xFF
  .L801CB348:
    /* 423D0 801CB348 40100500 */  sll        $v0, $a1, 1
    /* 423D4 801CB34C 21104600 */  addu       $v0, $v0, $a2
    /* 423D8 801CB350 00004294 */  lhu        $v0, 0x0($v0)
    /* 423DC 801CB354 00000000 */  nop
    /* 423E0 801CB358 06004410 */  beq        $v0, $a0, .L801CB374
    /* 423E4 801CB35C 2110A000 */   addu      $v0, $a1, $zero
    /* 423E8 801CB360 01006324 */  addiu      $v1, $v1, 0x1
    /* 423EC 801CB364 FF006230 */  andi       $v0, $v1, 0xFF
    /* 423F0 801CB368 0600422C */  sltiu      $v0, $v0, 0x6
    /* 423F4 801CB36C F6FF4014 */  bnez       $v0, .L801CB348
    /* 423F8 801CB370 FF006530 */   andi      $a1, $v1, 0xFF
  .L801CB374:
    /* 423FC 801CB374 0800E003 */  jr         $ra
    /* 42400 801CB378 00000000 */   nop
endlabel func_801CB334
