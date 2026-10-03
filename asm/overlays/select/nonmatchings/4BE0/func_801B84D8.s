nonmatching func_801B84D8, 0x10C

glabel func_801B84D8
    /* 2F560 801B84D8 1180023C */  lui        $v0, %hi(D_80108668)
    /* 2F564 801B84DC 68864290 */  lbu        $v0, %lo(D_80108668)($v0)
    /* 2F568 801B84E0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2F56C 801B84E4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2F570 801B84E8 21908000 */  addu       $s2, $a0, $zero
    /* 2F574 801B84EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F578 801B84F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2F57C 801B84F4 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 2F580 801B84F8 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 2F584 801B84FC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2F588 801B8500 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2F58C 801B8504 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 2F590 801B8508 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 2F594 801B850C 16004010 */  beqz       $v0, .L801B8568
    /* 2F598 801B8510 21800000 */   addu      $s0, $zero, $zero
    /* 2F59C 801B8514 1980133C */  lui        $s3, %hi(D_8018B1F0)
    /* 2F5A0 801B8518 F0B17326 */  addiu      $s3, $s3, %lo(D_8018B1F0)
    /* 2F5A4 801B851C FF000332 */  andi       $v1, $s0, 0xFF
  .L801B8520:
    /* 2F5A8 801B8520 01001026 */  addiu      $s0, $s0, 0x1
    /* 2F5AC 801B8524 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2F5B0 801B8528 21082102 */  addu       $at, $s1, $at
    /* 2F5B4 801B852C 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 2F5B8 801B8530 80180300 */  sll        $v1, $v1, 2
    /* 2F5BC 801B8534 80110200 */  sll        $v0, $v0, 6
    /* 2F5C0 801B8538 21105300 */  addu       $v0, $v0, $s3
    /* 2F5C4 801B853C 21186200 */  addu       $v1, $v1, $v0
    /* 2F5C8 801B8540 0000648C */  lw         $a0, 0x0($v1)
    /* 2F5CC 801B8544 79E1060C */  jal        func_801B85E4
    /* 2F5D0 801B8548 FF004532 */   andi      $a1, $s2, 0xFF
    /* 2F5D4 801B854C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2F5D8 801B8550 21082102 */  addu       $at, $s1, $at
    /* 2F5DC 801B8554 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2F5E0 801B8558 FF000232 */  andi       $v0, $s0, 0xFF
    /* 2F5E4 801B855C 2B104300 */  sltu       $v0, $v0, $v1
    /* 2F5E8 801B8560 EFFF4014 */  bnez       $v0, .L801B8520
    /* 2F5EC 801B8564 FF000332 */   andi      $v1, $s0, 0xFF
  .L801B8568:
    /* 2F5F0 801B8568 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2F5F4 801B856C 21082102 */  addu       $at, $s1, $at
    /* 2F5F8 801B8570 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2F5FC 801B8574 00000000 */  nop
    /* 2F600 801B8578 12006010 */  beqz       $v1, .L801B85C4
    /* 2F604 801B857C 21800000 */   addu      $s0, $zero, $zero
    /* 2F608 801B8580 1980123C */  lui        $s2, %hi(D_8018B1F0)
    /* 2F60C 801B8584 F0B15226 */  addiu      $s2, $s2, %lo(D_8018B1F0)
    /* 2F610 801B8588 80110300 */  sll        $v0, $v1, 6
  .L801B858C:
    /* 2F614 801B858C 21105200 */  addu       $v0, $v0, $s2
    /* 2F618 801B8590 FF000332 */  andi       $v1, $s0, 0xFF
    /* 2F61C 801B8594 80180300 */  sll        $v1, $v1, 2
    /* 2F620 801B8598 21186200 */  addu       $v1, $v1, $v0
    /* 2F624 801B859C 0000648C */  lw         $a0, 0x0($v1)
    /* 2F628 801B85A0 74E2060C */  jal        func_801B89D0
    /* 2F62C 801B85A4 01001026 */   addiu     $s0, $s0, 0x1
    /* 2F630 801B85A8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2F634 801B85AC 21082102 */  addu       $at, $s1, $at
    /* 2F638 801B85B0 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2F63C 801B85B4 FF000232 */  andi       $v0, $s0, 0xFF
    /* 2F640 801B85B8 2B104300 */  sltu       $v0, $v0, $v1
    /* 2F644 801B85BC F3FF4014 */  bnez       $v0, .L801B858C
    /* 2F648 801B85C0 80110300 */   sll       $v0, $v1, 6
  .L801B85C4:
    /* 2F64C 801B85C4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2F650 801B85C8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2F654 801B85CC 1800B28F */  lw         $s2, 0x18($sp)
    /* 2F658 801B85D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2F65C 801B85D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F660 801B85D8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2F664 801B85DC 0800E003 */  jr         $ra
    /* 2F668 801B85E0 00000000 */   nop
endlabel func_801B84D8
