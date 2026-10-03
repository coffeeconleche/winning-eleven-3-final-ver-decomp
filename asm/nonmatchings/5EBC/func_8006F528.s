nonmatching func_8006F528, 0xFC

glabel func_8006F528
    /* 5FD28 8006F528 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5FD2C 8006F52C 80100400 */  sll        $v0, $a0, 2
    /* 5FD30 8006F530 21104400 */  addu       $v0, $v0, $a0
    /* 5FD34 8006F534 C0100200 */  sll        $v0, $v0, 3
    /* 5FD38 8006F538 1080033C */  lui        $v1, %hi(D_80105508)
    /* 5FD3C 8006F53C 08556324 */  addiu      $v1, $v1, %lo(D_80105508)
    /* 5FD40 8006F540 21404300 */  addu       $t0, $v0, $v1
    /* 5FD44 8006F544 FF00E230 */  andi       $v0, $a3, 0xFF
    /* 5FD48 8006F548 0800422C */  sltiu      $v0, $v0, 0x8
    /* 5FD4C 8006F54C 02004014 */  bnez       $v0, .L8006F558
    /* 5FD50 8006F550 07000224 */   addiu     $v0, $zero, 0x7
    /* 5FD54 8006F554 07000724 */  addiu      $a3, $zero, 0x7
  .L8006F558:
    /* 5FD58 8006F558 23384700 */  subu       $a3, $v0, $a3
    /* 5FD5C 8006F55C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 5FD60 8006F560 801F033C */  lui        $v1, (0x1F800290 >> 16)
    /* 5FD64 8006F564 9002638C */  lw         $v1, (0x1F800290 & 0xFFFF)($v1)
    /* 5FD68 8006F568 0710E200 */  srav       $v0, $v0, $a3
    /* 5FD6C 8006F56C 24106200 */  and        $v0, $v1, $v0
    /* 5FD70 8006F570 29004014 */  bnez       $v0, .L8006F618
    /* 5FD74 8006F574 FF00C430 */   andi      $a0, $a2, 0xFF
    /* 5FD78 8006F578 2B104400 */  sltu       $v0, $v0, $a0
    /* 5FD7C 8006F57C 12004010 */  beqz       $v0, .L8006F5C8
    /* 5FD80 8006F580 21180000 */   addu      $v1, $zero, $zero
    /* 5FD84 8006F584 15000791 */  lbu        $a3, 0x15($t0)
    /* 5FD88 8006F588 FF006230 */  andi       $v0, $v1, 0xFF
  .L8006F58C:
    /* 5FD8C 8006F58C 2110A200 */  addu       $v0, $a1, $v0
    /* 5FD90 8006F590 00004290 */  lbu        $v0, 0x0($v0)
    /* 5FD94 8006F594 00000000 */  nop
    /* 5FD98 8006F598 0600E210 */  beq        $a3, $v0, .L8006F5B4
    /* 5FD9C 8006F59C 00000000 */   nop
    /* 5FDA0 8006F5A0 01006324 */  addiu      $v1, $v1, 0x1
    /* 5FDA4 8006F5A4 FF006230 */  andi       $v0, $v1, 0xFF
    /* 5FDA8 8006F5A8 2B104400 */  sltu       $v0, $v0, $a0
    /* 5FDAC 8006F5AC F7FF4014 */  bnez       $v0, .L8006F58C
    /* 5FDB0 8006F5B0 FF006230 */   andi      $v0, $v1, 0xFF
  .L8006F5B4:
    /* 5FDB4 8006F5B4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 5FDB8 8006F5B8 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 5FDBC 8006F5BC 2B106600 */  sltu       $v0, $v1, $a2
    /* 5FDC0 8006F5C0 03004014 */  bnez       $v0, .L8006F5D0
    /* 5FDC4 8006F5C4 01006224 */   addiu     $v0, $v1, 0x1
  .L8006F5C8:
    /* 5FDC8 8006F5C8 7FBD0108 */  j          .L8006F5FC
    /* 5FDCC 8006F5CC 21180000 */   addu      $v1, $zero, $zero
  .L8006F5D0:
    /* 5FDD0 8006F5D0 1A004600 */  div        $zero, $v0, $a2
    /* 5FDD4 8006F5D4 0200C014 */  bnez       $a2, .L8006F5E0
    /* 5FDD8 8006F5D8 00000000 */   nop
    /* 5FDDC 8006F5DC 0D000700 */  break      7
  .L8006F5E0:
    /* 5FDE0 8006F5E0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 5FDE4 8006F5E4 0400C114 */  bne        $a2, $at, .L8006F5F8
    /* 5FDE8 8006F5E8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 5FDEC 8006F5EC 02004114 */  bne        $v0, $at, .L8006F5F8
    /* 5FDF0 8006F5F0 00000000 */   nop
    /* 5FDF4 8006F5F4 0D000600 */  break      6
  .L8006F5F8:
    /* 5FDF8 8006F5F8 10180000 */  mfhi       $v1
  .L8006F5FC:
    /* 5FDFC 8006F5FC 00000000 */  nop
    /* 5FE00 8006F600 FF006230 */  andi       $v0, $v1, 0xFF
    /* 5FE04 8006F604 2110A200 */  addu       $v0, $a1, $v0
    /* 5FE08 8006F608 00004390 */  lbu        $v1, 0x0($v0)
    /* 5FE0C 8006F60C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5FE10 8006F610 87BD0108 */  j          .L8006F61C
    /* 5FE14 8006F614 150003A1 */   sb        $v1, 0x15($t0)
  .L8006F618:
    /* 5FE18 8006F618 21100000 */  addu       $v0, $zero, $zero
  .L8006F61C:
    /* 5FE1C 8006F61C 0800E003 */  jr         $ra
    /* 5FE20 8006F620 00000000 */   nop
endlabel func_8006F528
