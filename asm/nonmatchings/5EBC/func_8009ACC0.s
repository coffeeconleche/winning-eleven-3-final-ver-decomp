nonmatching func_8009ACC0, 0x114

glabel func_8009ACC0
    /* 8B4C0 8009ACC0 8888023C */  lui        $v0, (0x88888889 >> 16)
    /* 8B4C4 8009ACC4 801F043C */  lui        $a0, (0x1F800290 >> 16)
    /* 8B4C8 8009ACC8 9002848C */  lw         $a0, (0x1F800290 & 0xFFFF)($a0)
    /* 8B4CC 8009ACCC 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
    /* 8B4D0 8009ACD0 18008200 */  mult       $a0, $v0
    /* 8B4D4 8009ACD4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8B4D8 8009ACD8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8B4DC 8009ACDC 1180103C */  lui        $s0, %hi(D_8010C1D8)
    /* 8B4E0 8009ACE0 D8C11026 */  addiu      $s0, $s0, %lo(D_8010C1D8)
    /* 8B4E4 8009ACE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8B4E8 8009ACE8 801F113C */  lui        $s1, (0x1F800010 >> 16)
    /* 8B4EC 8009ACEC C3170400 */  sra        $v0, $a0, 31
    /* 8B4F0 8009ACF0 10280000 */  mfhi       $a1
    /* 8B4F4 8009ACF4 2118A400 */  addu       $v1, $a1, $a0
    /* 8B4F8 8009ACF8 031A0300 */  sra        $v1, $v1, 8
    /* 8B4FC 8009ACFC 23186200 */  subu       $v1, $v1, $v0
    /* 8B500 8009AD00 00110300 */  sll        $v0, $v1, 4
    /* 8B504 8009AD04 23104300 */  subu       $v0, $v0, $v1
    /* 8B508 8009AD08 40110200 */  sll        $v0, $v0, 5
    /* 8B50C 8009AD0C 20008214 */  bne        $a0, $v0, .L8009AD90
    /* 8B510 8009AD10 1800BFAF */   sw        $ra, 0x18($sp)
    /* 8B514 8009AD14 801F023C */  lui        $v0, (0x1F800010 >> 16)
    /* 8B518 8009AD18 10004290 */  lbu        $v0, (0x1F800010 & 0xFFFF)($v0)
    /* 8B51C 8009AD1C 00000000 */  nop
    /* 8B520 8009AD20 1F004014 */  bnez       $v0, .L8009ADA0
    /* 8B524 8009AD24 00000000 */   nop
    /* 8B528 8009AD28 AE79000C */  jal        func_8001E6B8
    /* 8B52C 8009AD2C 05000424 */   addiu     $a0, $zero, 0x5
    /* 8B530 8009AD30 21184000 */  addu       $v1, $v0, $zero
    /* 8B534 8009AD34 0500622C */  sltiu      $v0, $v1, 0x5
    /* 8B538 8009AD38 0D004010 */  beqz       $v0, .L8009AD70
    /* 8B53C 8009AD3C 80100300 */   sll       $v0, $v1, 2
    /* 8B540 8009AD40 0180013C */  lui        $at, %hi(jtbl_800141D0)
    /* 8B544 8009AD44 21082200 */  addu       $at, $at, $v0
    /* 8B548 8009AD48 D041228C */  lw         $v0, %lo(jtbl_800141D0)($at)
    /* 8B54C 8009AD4C 00000000 */  nop
    /* 8B550 8009AD50 08004000 */  jr         $v0
    /* 8B554 8009AD54 00000000 */   nop
  jlabel .L8009AD58
    /* 8B558 8009AD58 5C6B0208 */  j          .L8009AD70
    /* 8B55C 8009AD5C 050000A2 */   sb        $zero, 0x5($s0)
  jlabel .L8009AD60
    /* 8B560 8009AD60 5B6B0208 */  j          .L8009AD6C
    /* 8B564 8009AD64 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8009AD68
    /* 8B568 8009AD68 02000224 */  addiu      $v0, $zero, 0x2
  .L8009AD6C:
    /* 8B56C 8009AD6C 050002A2 */  sb         $v0, 0x5($s0)
  .L8009AD70:
    /* 8B570 8009AD70 06000292 */  lbu        $v0, 0x6($s0)
    /* 8B574 8009AD74 00000000 */  nop
    /* 8B578 8009AD78 04004014 */  bnez       $v0, .L8009AD8C
    /* 8B57C 8009AD7C 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B580 8009AD80 02000224 */  addiu      $v0, $zero, 0x2
    /* 8B584 8009AD84 060002A2 */  sb         $v0, 0x6($s0)
    /* 8B588 8009AD88 01000224 */  addiu      $v0, $zero, 0x1
  .L8009AD8C:
    /* 8B58C 8009AD8C 100022A2 */  sb         $v0, (0x1F800010 & 0xFFFF)($s1)
  .L8009AD90:
    /* 8B590 8009AD90 10002292 */  lbu        $v0, (0x1F800010 & 0xFFFF)($s1)
    /* 8B594 8009AD94 00000000 */  nop
    /* 8B598 8009AD98 08004010 */  beqz       $v0, .L8009ADBC
    /* 8B59C 8009AD9C 00000000 */   nop
  .L8009ADA0:
    /* 8B5A0 8009ADA0 05000492 */  lbu        $a0, 0x5($s0)
    /* 8B5A4 8009ADA4 9E68020C */  jal        func_8009A278
    /* 8B5A8 8009ADA8 00000000 */   nop
    /* 8B5AC 8009ADAC FF004230 */  andi       $v0, $v0, 0xFF
    /* 8B5B0 8009ADB0 02004010 */  beqz       $v0, .L8009ADBC
    /* 8B5B4 8009ADB4 00000000 */   nop
    /* 8B5B8 8009ADB8 100020A2 */  sb         $zero, (0x1F800010 & 0xFFFF)($s1)
  .L8009ADBC:
    /* 8B5BC 8009ADBC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8B5C0 8009ADC0 1400B18F */  lw         $s1, 0x14($sp)
    /* 8B5C4 8009ADC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 8B5C8 8009ADC8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8B5CC 8009ADCC 0800E003 */  jr         $ra
    /* 8B5D0 8009ADD0 00000000 */   nop
endlabel func_8009ACC0
