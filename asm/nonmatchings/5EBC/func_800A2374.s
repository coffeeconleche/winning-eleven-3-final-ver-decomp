nonmatching func_800A2374, 0x48

glabel func_800A2374
    /* 92B74 800A2374 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 92B78 800A2378 0800A22C */  sltiu      $v0, $a1, 0x8
    /* 92B7C 800A237C 0D004010 */  beqz       $v0, .L800A23B4
    /* 92B80 800A2380 00000000 */   nop
    /* 92B84 800A2384 80100500 */  sll        $v0, $a1, 2
    /* 92B88 800A2388 0180013C */  lui        $at, %hi(jtbl_800145CC)
    /* 92B8C 800A238C 21082200 */  addu       $at, $at, $v0
    /* 92B90 800A2390 CC45228C */  lw         $v0, %lo(jtbl_800145CC)($at)
    /* 92B94 800A2394 00000000 */  nop
    /* 92B98 800A2398 08004000 */  jr         $v0
    /* 92B9C 800A239C 00000000 */   nop
  jlabel .L800A23A0
    /* 92BA0 800A23A0 ED880208 */  j          .L800A23B4
    /* 92BA4 800A23A4 21100000 */   addu      $v0, $zero, $zero
  jlabel .L800A23A8
    /* 92BA8 800A23A8 ED880208 */  j          .L800A23B4
    /* 92BAC 800A23AC 0F000224 */   addiu     $v0, $zero, 0xF
  jlabel .L800A23B0
    /* 92BB0 800A23B0 21100000 */  addu       $v0, $zero, $zero
  .L800A23B4:
    /* 92BB4 800A23B4 0800E003 */  jr         $ra
    /* 92BB8 800A23B8 00000000 */   nop
endlabel func_800A2374
