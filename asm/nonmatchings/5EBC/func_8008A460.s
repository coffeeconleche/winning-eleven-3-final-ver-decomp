nonmatching func_8008A460, 0x1FC

glabel func_8008A460
    /* 7AC60 8008A460 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7AC64 8008A464 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7AC68 8008A468 21888000 */  addu       $s1, $a0, $zero
    /* 7AC6C 8008A46C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 7AC70 8008A470 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7AC74 8008A474 97032392 */  lbu        $v1, 0x397($s1)
    /* 7AC78 8008A478 00000000 */  nop
    /* 7AC7C 8008A47C 06006010 */  beqz       $v1, .L8008A498
    /* 7AC80 8008A480 801F103C */   lui       $s0, (0x1F8002F4 >> 16)
    /* 7AC84 8008A484 01000224 */  addiu      $v0, $zero, 0x1
    /* 7AC88 8008A488 18006210 */  beq        $v1, $v0, .L8008A4EC
    /* 7AC8C 8008A48C 00000000 */   nop
    /* 7AC90 8008A490 6C290208 */  j          .L8008A5B0
    /* 7AC94 8008A494 00000000 */   nop
  .L8008A498:
    /* 7AC98 8008A498 AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 7AC9C 8008A49C AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 7ACA0 8008A4A0 02004014 */  bnez       $v0, .L8008A4AC
    /* 7ACA4 8008A4A4 40006224 */   addiu     $v0, $v1, 0x40
    /* 7ACA8 8008A4A8 C0FF6224 */  addiu      $v0, $v1, -0x40
  .L8008A4AC:
    /* 7ACAC 8008A4AC 21202002 */  addu       $a0, $s1, $zero
    /* 7ACB0 8008A4B0 21000524 */  addiu      $a1, $zero, 0x21
    /* 7ACB4 8008A4B4 21300000 */  addu       $a2, $zero, $zero
    /* 7ACB8 8008A4B8 AA0322A2 */  sb         $v0, 0x3AA($s1)
    /* 7ACBC 8008A4BC 8C6E010C */  jal        func_8005BA30
    /* 7ACC0 8008A4C0 AB0322A2 */   sb        $v0, 0x3AB($s1)
    /* 7ACC4 8008A4C4 38000424 */  addiu      $a0, $zero, 0x38
    /* 7ACC8 8008A4C8 AE79000C */  jal        func_8001E6B8
    /* 7ACCC 8008A4CC AD0320A2 */   sb        $zero, 0x3AD($s1)
    /* 7ACD0 8008A4D0 97032392 */  lbu        $v1, 0x397($s1)
    /* 7ACD4 8008A4D4 10004224 */  addiu      $v0, $v0, 0x10
    /* 7ACD8 8008A4D8 D00322A2 */  sb         $v0, 0x3D0($s1)
    /* 7ACDC 8008A4DC A00320AE */  sw         $zero, 0x3A0($s1)
    /* 7ACE0 8008A4E0 01006324 */  addiu      $v1, $v1, 0x1
    /* 7ACE4 8008A4E4 6C290208 */  j          .L8008A5B0
    /* 7ACE8 8008A4E8 970323A2 */   sb        $v1, 0x397($s1)
  .L8008A4EC:
    /* 7ACEC 8008A4EC 90032292 */  lbu        $v0, 0x390($s1)
    /* 7ACF0 8008A4F0 00000000 */  nop
    /* 7ACF4 8008A4F4 0A004014 */  bnez       $v0, .L8008A520
    /* 7ACF8 8008A4F8 07000224 */   addiu     $v0, $zero, 0x7
    /* 7ACFC 8008A4FC 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 7AD00 8008A500 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 7AD04 8008A504 00000000 */  nop
    /* 7AD08 8008A508 05006214 */  bne        $v1, $v0, .L8008A520
    /* 7AD0C 8008A50C 00000000 */   nop
    /* 7AD10 8008A510 D0032292 */  lbu        $v0, 0x3D0($s1)
    /* 7AD14 8008A514 00000000 */  nop
    /* 7AD18 8008A518 25004014 */  bnez       $v0, .L8008A5B0
    /* 7AD1C 8008A51C 00000000 */   nop
  .L8008A520:
    /* 7AD20 8008A520 476F010C */  jal        func_8005BD1C
    /* 7AD24 8008A524 21202002 */   addu      $a0, $s1, $zero
    /* 7AD28 8008A528 90032292 */  lbu        $v0, 0x390($s1)
    /* 7AD2C 8008A52C 00000000 */  nop
    /* 7AD30 8008A530 0600422C */  sltiu      $v0, $v0, 0x6
    /* 7AD34 8008A534 12004014 */  bnez       $v0, .L8008A580
    /* 7AD38 8008A538 01000324 */   addiu     $v1, $zero, 0x1
    /* 7AD3C 8008A53C 9A020292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s0)
    /* 7AD40 8008A540 00000000 */  nop
    /* 7AD44 8008A544 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7AD48 8008A548 0D004314 */  bne        $v0, $v1, .L8008A580
    /* 7AD4C 8008A54C 00000000 */   nop
    /* 7AD50 8008A550 02002486 */  lh         $a0, 0x2($s1)
    /* 7AD54 8008A554 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 7AD58 8008A558 06002586 */  lh         $a1, 0x6($s1)
    /* 7AD5C 8008A55C 02004684 */  lh         $a2, 0x2($v0)
    /* 7AD60 8008A560 06004784 */  lh         $a3, 0x6($v0)
    /* 7AD64 8008A564 DB6C010C */  jal        func_8005B36C
    /* 7AD68 8008A568 00000000 */   nop
    /* 7AD6C 8008A56C FF004430 */  andi       $a0, $v0, 0xFF
    /* 7AD70 8008A570 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 7AD74 8008A574 F36D010C */  jal        func_8005B7CC
    /* 7AD78 8008A578 04000624 */   addiu     $a2, $zero, 0x4
    /* 7AD7C 8008A57C AA0322A2 */  sb         $v0, 0x3AA($s1)
  .L8008A580:
    /* 7AD80 8008A580 90032292 */  lbu        $v0, 0x390($s1)
    /* 7AD84 8008A584 90032392 */  lbu        $v1, 0x390($s1)
    /* 7AD88 8008A588 0C80013C */  lui        $at, %hi(D_800C6BDC)
    /* 7AD8C 8008A58C 21082200 */  addu       $at, $at, $v0
    /* 7AD90 8008A590 DC6B2290 */  lbu        $v0, %lo(D_800C6BDC)($at)
    /* 7AD94 8008A594 00000000 */  nop
    /* 7AD98 8008A598 A00322AE */  sw         $v0, 0x3A0($s1)
    /* 7AD9C 8008A59C 13000224 */  addiu      $v0, $zero, 0x13
    /* 7ADA0 8008A5A0 03006214 */  bne        $v1, $v0, .L8008A5B0
    /* 7ADA4 8008A5A4 82000224 */   addiu     $v0, $zero, 0x82
    /* 7ADA8 8008A5A8 960322A2 */  sb         $v0, 0x396($s1)
    /* 7ADAC 8008A5AC 970320A2 */  sb         $zero, 0x397($s1)
  .L8008A5B0:
    /* 7ADB0 8008A5B0 A0032596 */  lhu        $a1, 0x3A0($s1)
    /* 7ADB4 8008A5B4 196E010C */  jal        func_8005B864
    /* 7ADB8 8008A5B8 21202002 */   addu      $a0, $s1, $zero
    /* 7ADBC 8008A5BC F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 7ADC0 8008A5C0 00000000 */  nop
    /* 7ADC4 8008A5C4 A4035090 */  lbu        $s0, 0x3A4($v0)
    /* 7ADC8 8008A5C8 03000424 */  addiu      $a0, $zero, 0x3
    /* 7ADCC 8008A5CC E871010C */  jal        func_8005C7A0
    /* 7ADD0 8008A5D0 80FF1026 */   addiu     $s0, $s0, -0x80
    /* 7ADD4 8008A5D4 21202002 */  addu       $a0, $s1, $zero
    /* 7ADD8 8008A5D8 0C000524 */  addiu      $a1, $zero, 0xC
    /* 7ADDC 8008A5DC FF000632 */  andi       $a2, $s0, 0xFF
    /* 7ADE0 8008A5E0 21380000 */  addu       $a3, $zero, $zero
    /* 7ADE4 8008A5E4 00140200 */  sll        $v0, $v0, 16
    /* 7ADE8 8008A5E8 03140200 */  sra        $v0, $v0, 16
    /* 7ADEC 8008A5EC 02004224 */  addiu      $v0, $v0, 0x2
    /* 7ADF0 8008A5F0 8B51020C */  jal        func_8009462C
    /* 7ADF4 8008A5F4 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7ADF8 8008A5F8 3A55020C */  jal        func_800954E8
    /* 7ADFC 8008A5FC 21202002 */   addu      $a0, $s1, $zero
    /* 7AE00 8008A600 90032292 */  lbu        $v0, 0x390($s1)
    /* 7AE04 8008A604 00000000 */  nop
    /* 7AE08 8008A608 0C00422C */  sltiu      $v0, $v0, 0xC
    /* 7AE0C 8008A60C 0D004014 */  bnez       $v0, .L8008A644
    /* 7AE10 8008A610 00000000 */   nop
    /* 7AE14 8008A614 BE032286 */  lh         $v0, 0x3BE($s1)
    /* 7AE18 8008A618 00000000 */  nop
    /* 7AE1C 8008A61C 09004010 */  beqz       $v0, .L8008A644
    /* 7AE20 8008A620 06001024 */   addiu     $s0, $zero, 0x6
    /* 7AE24 8008A624 21202002 */  addu       $a0, $s1, $zero
  .L8008A628:
    /* 7AE28 8008A628 EA2A020C */  jal        func_8008ABA8
    /* 7AE2C 8008A62C 21280002 */   addu      $a1, $s0, $zero
    /* 7AE30 8008A630 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7AE34 8008A634 03004014 */  bnez       $v0, .L8008A644
    /* 7AE38 8008A638 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 7AE3C 8008A63C FAFF0106 */  bgez       $s0, .L8008A628
    /* 7AE40 8008A640 21202002 */   addu      $a0, $s1, $zero
  .L8008A644:
    /* 7AE44 8008A644 2000BF8F */  lw         $ra, 0x20($sp)
    /* 7AE48 8008A648 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7AE4C 8008A64C 1800B08F */  lw         $s0, 0x18($sp)
    /* 7AE50 8008A650 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7AE54 8008A654 0800E003 */  jr         $ra
    /* 7AE58 8008A658 00000000 */   nop
endlabel func_8008A460
