nonmatching func_8007AD20, 0x67C

glabel func_8007AD20
    /* 6B520 8007AD20 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6B524 8007AD24 1800B0AF */  sw         $s0, 0x18($sp)
    /* 6B528 8007AD28 21808000 */  addu       $s0, $a0, $zero
    /* 6B52C 8007AD2C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 6B530 8007AD30 2000B2AF */  sw         $s2, 0x20($sp)
    /* 6B534 8007AD34 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6B538 8007AD38 97030392 */  lbu        $v1, 0x397($s0)
    /* 6B53C 8007AD3C 00000000 */  nop
    /* 6B540 8007AD40 0900622C */  sltiu      $v0, $v1, 0x9
    /* 6B544 8007AD44 8E014010 */  beqz       $v0, .L8007B380
    /* 6B548 8007AD48 801F123C */   lui       $s2, (0x1F8002AD >> 16)
    /* 6B54C 8007AD4C 80100300 */  sll        $v0, $v1, 2
    /* 6B550 8007AD50 0180013C */  lui        $at, %hi(jtbl_80013134)
    /* 6B554 8007AD54 21082200 */  addu       $at, $at, $v0
    /* 6B558 8007AD58 3431228C */  lw         $v0, %lo(jtbl_80013134)($at)
    /* 6B55C 8007AD5C 00000000 */  nop
    /* 6B560 8007AD60 08004000 */  jr         $v0
    /* 6B564 8007AD64 00000000 */   nop
  jlabel .L8007AD68
    /* 6B568 8007AD68 476F010C */  jal        func_8005BD1C
    /* 6B56C 8007AD6C 21200002 */   addu      $a0, $s0, $zero
    /* 6B570 8007AD70 AD024392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s2)
    /* 6B574 8007AD74 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 6B578 8007AD78 00000000 */  nop
    /* 6B57C 8007AD7C 1C004314 */  bne        $v0, $v1, .L8007ADF0
    /* 6B580 8007AD80 04000224 */   addiu     $v0, $zero, 0x4
    /* 6B584 8007AD84 7CEB0108 */  j          .L8007ADF0
    /* 6B588 8007AD88 03000224 */   addiu     $v0, $zero, 0x3
  jlabel .L8007AD8C
    /* 6B58C 8007AD8C 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 6B590 8007AD90 38000224 */  addiu      $v0, $zero, 0x38
    /* 6B594 8007AD94 06006214 */  bne        $v1, $v0, .L8007ADB0
    /* 6B598 8007AD98 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 6B59C 8007AD9C 90030292 */  lbu        $v0, 0x390($s0)
    /* 6B5A0 8007ADA0 00000000 */  nop
    /* 6B5A4 8007ADA4 0D00422C */  sltiu      $v0, $v0, 0xD
    /* 6B5A8 8007ADA8 08004014 */  bnez       $v0, .L8007ADCC
    /* 6B5AC 8007ADAC 3C000224 */   addiu     $v0, $zero, 0x3C
  .L8007ADB0:
    /* 6B5B0 8007ADB0 08006214 */  bne        $v1, $v0, .L8007ADD4
    /* 6B5B4 8007ADB4 00000000 */   nop
    /* 6B5B8 8007ADB8 90030292 */  lbu        $v0, 0x390($s0)
    /* 6B5BC 8007ADBC 00000000 */  nop
    /* 6B5C0 8007ADC0 2D00422C */  sltiu      $v0, $v0, 0x2D
    /* 6B5C4 8007ADC4 03004010 */  beqz       $v0, .L8007ADD4
    /* 6B5C8 8007ADC8 00000000 */   nop
  .L8007ADCC:
    /* 6B5CC 8007ADCC 476F010C */  jal        func_8005BD1C
    /* 6B5D0 8007ADD0 21200002 */   addu      $a0, $s0, $zero
  .L8007ADD4:
    /* 6B5D4 8007ADD4 9B024292 */  lbu        $v0, 0x29B($s2)
    /* 6B5D8 8007ADD8 00000000 */  nop
    /* 6B5DC 8007ADDC 05004010 */  beqz       $v0, .L8007ADF4
    /* 6B5E0 8007ADE0 00000000 */   nop
    /* 6B5E4 8007ADE4 97030292 */  lbu        $v0, 0x397($s0)
    /* 6B5E8 8007ADE8 00000000 */  nop
    /* 6B5EC 8007ADEC 01004224 */  addiu      $v0, $v0, 0x1
  .L8007ADF0:
    /* 6B5F0 8007ADF0 970302A2 */  sb         $v0, 0x397($s0)
  .L8007ADF4:
    /* 6B5F4 8007ADF4 E0EC0108 */  j          .L8007B380
    /* 6B5F8 8007ADF8 A00300AE */   sw        $zero, 0x3A0($s0)
  jlabel .L8007ADFC
    /* 6B5FC 8007ADFC 476F010C */  jal        func_8005BD1C
    /* 6B600 8007AE00 21200002 */   addu      $a0, $s0, $zero
    /* 6B604 8007AE04 90030292 */  lbu        $v0, 0x390($s0)
    /* 6B608 8007AE08 00000000 */  nop
    /* 6B60C 8007AE0C 5C014014 */  bnez       $v0, .L8007B380
    /* 6B610 8007AE10 01000224 */   addiu     $v0, $zero, 0x1
    /* 6B614 8007AE14 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 6B618 8007AE18 00000000 */  nop
    /* 6B61C 8007AE1C 3E006210 */  beq        $v1, $v0, .L8007AF18
    /* 6B620 8007AE20 04000224 */   addiu     $v0, $zero, 0x4
    /* 6B624 8007AE24 AE79000C */  jal        func_8001E6B8
    /* 6B628 8007AE28 15000424 */   addiu     $a0, $zero, 0x15
    /* 6B62C 8007AE2C 21200002 */  addu       $a0, $s0, $zero
    /* 6B630 8007AE30 01000524 */  addiu      $a1, $zero, 0x1
    /* 6B634 8007AE34 8C6E010C */  jal        func_8005BA30
    /* 6B638 8007AE38 FF004630 */   andi      $a2, $v0, 0xFF
    /* 6B63C 8007AE3C C6EB0108 */  j          .L8007AF18
    /* 6B640 8007AE40 04000224 */   addiu     $v0, $zero, 0x4
  jlabel .L8007AE44
    /* 6B644 8007AE44 476F010C */  jal        func_8005BD1C
    /* 6B648 8007AE48 21200002 */   addu      $a0, $s0, $zero
    /* 6B64C 8007AE4C 02000486 */  lh         $a0, 0x2($s0)
    /* 6B650 8007AE50 F402428E */  lw         $v0, 0x2F4($s2)
    /* 6B654 8007AE54 06000586 */  lh         $a1, 0x6($s0)
    /* 6B658 8007AE58 02004684 */  lh         $a2, 0x2($v0)
    /* 6B65C 8007AE5C 06004784 */  lh         $a3, 0x6($v0)
    /* 6B660 8007AE60 DB6C010C */  jal        func_8005B36C
    /* 6B664 8007AE64 00000000 */   nop
    /* 6B668 8007AE68 FF004430 */  andi       $a0, $v0, 0xFF
    /* 6B66C 8007AE6C AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 6B670 8007AE70 F36D010C */  jal        func_8005B7CC
    /* 6B674 8007AE74 10000624 */   addiu     $a2, $zero, 0x10
    /* 6B678 8007AE78 21200002 */  addu       $a0, $s0, $zero
    /* 6B67C 8007AE7C 1C000524 */  addiu      $a1, $zero, 0x1C
    /* 6B680 8007AE80 196E010C */  jal        func_8005B864
    /* 6B684 8007AE84 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 6B688 8007AE88 A8024292 */  lbu        $v0, 0x2A8($s2)
    /* 6B68C 8007AE8C 00000000 */  nop
    /* 6B690 8007AE90 21004014 */  bnez       $v0, .L8007AF18
    /* 6B694 8007AE94 04000224 */   addiu     $v0, $zero, 0x4
    /* 6B698 8007AE98 9B030292 */  lbu        $v0, 0x39B($s0)
    /* 6B69C 8007AE9C 00000000 */  nop
    /* 6B6A0 8007AEA0 1D004014 */  bnez       $v0, .L8007AF18
    /* 6B6A4 8007AEA4 04000224 */   addiu     $v0, $zero, 0x4
    /* 6B6A8 8007AEA8 06000586 */  lh         $a1, 0x6($s0)
    /* 6B6AC 8007AEAC 00000000 */  nop
    /* 6B6B0 8007AEB0 0200A104 */  bgez       $a1, .L8007AEBC
    /* 6B6B4 8007AEB4 2110A000 */   addu      $v0, $a1, $zero
    /* 6B6B8 8007AEB8 23100200 */  negu       $v0, $v0
  .L8007AEBC:
    /* 6B6BC 8007AEBC 81214228 */  slti       $v0, $v0, 0x2181
    /* 6B6C0 8007AEC0 15004010 */  beqz       $v0, .L8007AF18
    /* 6B6C4 8007AEC4 04000224 */   addiu     $v0, $zero, 0x4
    /* 6B6C8 8007AEC8 F402448E */  lw         $a0, 0x2F4($s2)
    /* 6B6CC 8007AECC 02000286 */  lh         $v0, 0x2($s0)
    /* 6B6D0 8007AED0 02008384 */  lh         $v1, 0x2($a0)
    /* 6B6D4 8007AED4 00000000 */  nop
    /* 6B6D8 8007AED8 23104300 */  subu       $v0, $v0, $v1
    /* 6B6DC 8007AEDC 18004200 */  mult       $v0, $v0
    /* 6B6E0 8007AEE0 06008284 */  lh         $v0, 0x6($a0)
    /* 6B6E4 8007AEE4 12180000 */  mflo       $v1
    /* 6B6E8 8007AEE8 2310A200 */  subu       $v0, $a1, $v0
    /* 6B6EC 8007AEEC 00000000 */  nop
    /* 6B6F0 8007AEF0 18004200 */  mult       $v0, $v0
    /* 6B6F4 8007AEF4 12480000 */  mflo       $t1
    /* 6B6F8 8007AEF8 21106900 */  addu       $v0, $v1, $t1
    /* 6B6FC 8007AEFC 00404228 */  slti       $v0, $v0, 0x4000
    /* 6B700 8007AF00 05004014 */  bnez       $v0, .L8007AF18
    /* 6B704 8007AF04 04000224 */   addiu     $v0, $zero, 0x4
    /* 6B708 8007AF08 9B024292 */  lbu        $v0, 0x29B($s2)
    /* 6B70C 8007AF0C 00000000 */  nop
    /* 6B710 8007AF10 03004010 */  beqz       $v0, .L8007AF20
    /* 6B714 8007AF14 04000224 */   addiu     $v0, $zero, 0x4
  .L8007AF18:
    /* 6B718 8007AF18 E0EC0108 */  j          .L8007B380
    /* 6B71C 8007AF1C 970302A2 */   sb        $v0, 0x397($s0)
  .L8007AF20:
    /* 6B720 8007AF20 21200002 */  addu       $a0, $s0, $zero
    /* 6B724 8007AF24 90038690 */  lbu        $a2, 0x390($a0)
    /* 6B728 8007AF28 9E6E010C */  jal        func_8005BA78
    /* 6B72C 8007AF2C 02000524 */   addiu     $a1, $zero, 0x2
    /* 6B730 8007AF30 E0EC0108 */  j          .L8007B380
    /* 6B734 8007AF34 00000000 */   nop
  jlabel .L8007AF38
    /* 6B738 8007AF38 8E030296 */  lhu        $v0, 0x38E($s0)
    /* 6B73C 8007AF3C 01001124 */  addiu      $s1, $zero, 0x1
    /* 6B740 8007AF40 07005110 */  beq        $v0, $s1, .L8007AF60
    /* 6B744 8007AF44 00000000 */   nop
    /* 6B748 8007AF48 AE79000C */  jal        func_8001E6B8
    /* 6B74C 8007AF4C 15000424 */   addiu     $a0, $zero, 0x15
    /* 6B750 8007AF50 21200002 */  addu       $a0, $s0, $zero
    /* 6B754 8007AF54 01000524 */  addiu      $a1, $zero, 0x1
    /* 6B758 8007AF58 8C6E010C */  jal        func_8005BA30
    /* 6B75C 8007AF5C FF004630 */   andi      $a2, $v0, 0xFF
  .L8007AF60:
    /* 6B760 8007AF60 476F010C */  jal        func_8005BD1C
    /* 6B764 8007AF64 21200002 */   addu      $a0, $s0, $zero
    /* 6B768 8007AF68 9A024292 */  lbu        $v0, 0x29A($s2)
    /* 6B76C 8007AF6C 00000000 */  nop
    /* 6B770 8007AF70 01015110 */  beq        $v0, $s1, .L8007B378
    /* 6B774 8007AF74 00000000 */   nop
    /* 6B778 8007AF78 9B024292 */  lbu        $v0, 0x29B($s2)
    /* 6B77C 8007AF7C 00000000 */  nop
    /* 6B780 8007AF80 FF004010 */  beqz       $v0, .L8007B380
    /* 6B784 8007AF84 00000000 */   nop
    /* 6B788 8007AF88 DFEC0108 */  j          .L8007B37C
    /* 6B78C 8007AF8C 960300A2 */   sb        $zero, 0x396($s0)
  jlabel .L8007AF90
    /* 6B790 8007AF90 0E80023C */  lui        $v0, %hi(D_800E7658)
    /* 6B794 8007AF94 5876428C */  lw         $v0, %lo(D_800E7658)($v0)
    /* 6B798 8007AF98 00000000 */  nop
    /* 6B79C 8007AF9C 10004228 */  slti       $v0, $v0, 0x10
    /* 6B7A0 8007AFA0 03004010 */  beqz       $v0, .L8007AFB0
    /* 6B7A4 8007AFA4 21200002 */   addu      $a0, $s0, $zero
    /* 6B7A8 8007AFA8 E0EC0108 */  j          .L8007B380
    /* 6B7AC 8007AFAC 940240A6 */   sh        $zero, 0x294($s2)
  .L8007AFB0:
    /* 6B7B0 8007AFB0 94024296 */  lhu        $v0, 0x294($s2)
    /* 6B7B4 8007AFB4 00000000 */  nop
    /* 6B7B8 8007AFB8 01004224 */  addiu      $v0, $v0, 0x1
    /* 6B7BC 8007AFBC FB71010C */  jal        func_8005C7EC
    /* 6B7C0 8007AFC0 940242A6 */   sh        $v0, 0x294($s2)
    /* 6B7C4 8007AFC4 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 6B7C8 8007AFC8 00000000 */  nop
    /* 6B7CC 8007AFCC 0F004014 */  bnez       $v0, .L8007B00C
    /* 6B7D0 8007AFD0 00000000 */   nop
    /* 6B7D4 8007AFD4 D4030396 */  lhu        $v1, 0x3D4($s0)
    /* 6B7D8 8007AFD8 00000000 */  nop
    /* 6B7DC 8007AFDC 00806230 */  andi       $v0, $v1, 0x8000
    /* 6B7E0 8007AFE0 04004010 */  beqz       $v0, .L8007AFF4
    /* 6B7E4 8007AFE4 00000000 */   nop
    /* 6B7E8 8007AFE8 AA030292 */  lbu        $v0, 0x3AA($s0)
    /* 6B7EC 8007AFEC 2FEC0108 */  j          .L8007B0BC
    /* 6B7F0 8007AFF0 04004224 */   addiu     $v0, $v0, 0x4
  .L8007AFF4:
    /* 6B7F4 8007AFF4 00206230 */  andi       $v0, $v1, 0x2000
    /* 6B7F8 8007AFF8 31004010 */  beqz       $v0, .L8007B0C0
    /* 6B7FC 8007AFFC 00000000 */   nop
    /* 6B800 8007B000 AA030292 */  lbu        $v0, 0x3AA($s0)
    /* 6B804 8007B004 2FEC0108 */  j          .L8007B0BC
    /* 6B808 8007B008 FCFF4224 */   addiu     $v0, $v0, -0x4
  .L8007B00C:
    /* 6B80C 8007B00C F402428E */  lw         $v0, 0x2F4($s2)
    /* 6B810 8007B010 99030392 */  lbu        $v1, 0x399($s0)
    /* 6B814 8007B014 02004284 */  lh         $v0, 0x2($v0)
    /* 6B818 8007B018 02006014 */  bnez       $v1, .L8007B024
    /* 6B81C 8007B01C 23880200 */   negu      $s1, $v0
    /* 6B820 8007B020 21884000 */  addu       $s1, $v0, $zero
  .L8007B024:
    /* 6B824 8007B024 94024296 */  lhu        $v0, 0x294($s2)
    /* 6B828 8007B028 00000000 */  nop
    /* 6B82C 8007B02C 1F00422C */  sltiu      $v0, $v0, 0x1F
    /* 6B830 8007B030 19004014 */  bnez       $v0, .L8007B098
    /* 6B834 8007B034 38F32226 */   addiu     $v0, $s1, -0xCC8
    /* 6B838 8007B038 00141100 */  sll        $v0, $s1, 16
    /* 6B83C 8007B03C 03140200 */  sra        $v0, $v0, 16
    /* 6B840 8007B040 E2234228 */  slti       $v0, $v0, 0x23E2
    /* 6B844 8007B044 05004014 */  bnez       $v0, .L8007B05C
    /* 6B848 8007B048 00000000 */   nop
    /* 6B84C 8007B04C AE79000C */  jal        func_8001E6B8
    /* 6B850 8007B050 04000424 */   addiu     $a0, $zero, 0x4
    /* 6B854 8007B054 08004010 */  beqz       $v0, .L8007B078
    /* 6B858 8007B058 00000000 */   nop
  .L8007B05C:
    /* 6B85C 8007B05C 98030292 */  lbu        $v0, 0x398($s0)
    /* 6B860 8007B060 00000000 */  nop
    /* 6B864 8007B064 40100200 */  sll        $v0, $v0, 1
    /* 6B868 8007B068 21105200 */  addu       $v0, $v0, $s2
    /* 6B86C 8007B06C 16004294 */  lhu        $v0, 0x16($v0)
    /* 6B870 8007B070 25EC0108 */  j          .L8007B094
    /* 6B874 8007B074 D60302A6 */   sh        $v0, 0x3D6($s0)
  .L8007B078:
    /* 6B878 8007B078 98030292 */  lbu        $v0, 0x398($s0)
    /* 6B87C 8007B07C 00000000 */  nop
    /* 6B880 8007B080 40100200 */  sll        $v0, $v0, 1
    /* 6B884 8007B084 21105200 */  addu       $v0, $v0, $s2
    /* 6B888 8007B088 1A004294 */  lhu        $v0, 0x1A($v0)
    /* 6B88C 8007B08C 00000000 */  nop
    /* 6B890 8007B090 D60302A6 */  sh         $v0, 0x3D6($s0)
  .L8007B094:
    /* 6B894 8007B094 38F32226 */  addiu      $v0, $s1, -0xCC8
  .L8007B098:
    /* 6B898 8007B098 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 6B89C 8007B09C 1A17422C */  sltiu      $v0, $v0, 0x171A
    /* 6B8A0 8007B0A0 07004010 */  beqz       $v0, .L8007B0C0
    /* 6B8A4 8007B0A4 01000624 */   addiu     $a2, $zero, 0x1
    /* 6B8A8 8007B0A8 99030492 */  lbu        $a0, 0x399($s0)
    /* 6B8AC 8007B0AC AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 6B8B0 8007B0B0 C0210400 */  sll        $a0, $a0, 7
    /* 6B8B4 8007B0B4 F36D010C */  jal        func_8005B7CC
    /* 6B8B8 8007B0B8 80008430 */   andi      $a0, $a0, 0x80
  .L8007B0BC:
    /* 6B8BC 8007B0BC AA0302A2 */  sb         $v0, 0x3AA($s0)
  .L8007B0C0:
    /* 6B8C0 8007B0C0 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 6B8C4 8007B0C4 AB030592 */  lbu        $a1, 0x3AB($s0)
    /* 6B8C8 8007B0C8 F36D010C */  jal        func_8005B7CC
    /* 6B8CC 8007B0CC 28000624 */   addiu     $a2, $zero, 0x28
    /* 6B8D0 8007B0D0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 6B8D4 8007B0D4 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 6B8D8 8007B0D8 23186400 */  subu       $v1, $v1, $a0
    /* 6B8DC 8007B0DC 21206000 */  addu       $a0, $v1, $zero
    /* 6B8E0 8007B0E0 02006104 */  bgez       $v1, .L8007B0EC
    /* 6B8E4 8007B0E4 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 6B8E8 8007B0E8 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8007B0EC:
    /* 6B8EC 8007B0EC 03120400 */  sra        $v0, $a0, 8
    /* 6B8F0 8007B0F0 00120200 */  sll        $v0, $v0, 8
    /* 6B8F4 8007B0F4 23106200 */  subu       $v0, $v1, $v0
    /* 6B8F8 8007B0F8 98030392 */  lbu        $v1, 0x398($s0)
    /* 6B8FC 8007B0FC D6030496 */  lhu        $a0, 0x3D6($s0)
    /* 6B900 8007B100 00110200 */  sll        $v0, $v0, 4
    /* 6B904 8007B104 260002A6 */  sh         $v0, 0x26($s0)
    /* 6B908 8007B108 40180300 */  sll        $v1, $v1, 1
    /* 6B90C 8007B10C 21187200 */  addu       $v1, $v1, $s2
    /* 6B910 8007B110 16006294 */  lhu        $v0, 0x16($v1)
    /* 6B914 8007B114 00000000 */  nop
    /* 6B918 8007B118 24104400 */  and        $v0, $v0, $a0
    /* 6B91C 8007B11C 03004010 */  beqz       $v0, .L8007B12C
    /* 6B920 8007B120 00000000 */   nop
    /* 6B924 8007B124 51EC0108 */  j          .L8007B144
    /* 6B928 8007B128 C20300A6 */   sh        $zero, 0x3C2($s0)
  .L8007B12C:
    /* 6B92C 8007B12C 1A006294 */  lhu        $v0, 0x1A($v1)
    /* 6B930 8007B130 00000000 */  nop
    /* 6B934 8007B134 24104400 */  and        $v0, $v0, $a0
    /* 6B938 8007B138 91004010 */  beqz       $v0, .L8007B380
    /* 6B93C 8007B13C 01000224 */   addiu     $v0, $zero, 0x1
    /* 6B940 8007B140 C20302A6 */  sh         $v0, 0x3C2($s0)
  .L8007B144:
    /* 6B944 8007B144 4441010C */  jal        func_80050510
    /* 6B948 8007B148 21200000 */   addu      $a0, $zero, $zero
    /* 6B94C 8007B14C 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 6B950 8007B150 00000000 */  nop
    /* 6B954 8007B154 18004014 */  bnez       $v0, .L8007B1B8
    /* 6B958 8007B158 01000224 */   addiu     $v0, $zero, 0x1
    /* 6B95C 8007B15C F0014436 */  ori        $a0, $s2, 0x1F0
    /* 6B960 8007B160 03000224 */  addiu      $v0, $zero, 0x3
    /* 6B964 8007B164 A146010C */  jal        func_80051A84
    /* 6B968 8007B168 F20242A2 */   sb        $v0, 0x2F2($s2)
    /* 6B96C 8007B16C F001428E */  lw         $v0, 0x1F0($s2)
    /* 6B970 8007B170 F401438E */  lw         $v1, 0x1F4($s2)
    /* 6B974 8007B174 F801448E */  lw         $a0, 0x1F8($s2)
    /* 6B978 8007B178 FC01458E */  lw         $a1, 0x1FC($s2)
    /* 6B97C 8007B17C 100242AE */  sw         $v0, 0x210($s2)
    /* 6B980 8007B180 140243AE */  sw         $v1, 0x214($s2)
    /* 6B984 8007B184 180244AE */  sw         $a0, 0x218($s2)
    /* 6B988 8007B188 1C0245AE */  sw         $a1, 0x21C($s2)
    /* 6B98C 8007B18C 0002428E */  lw         $v0, 0x200($s2)
    /* 6B990 8007B190 0402438E */  lw         $v1, 0x204($s2)
    /* 6B994 8007B194 0802448E */  lw         $a0, 0x208($s2)
    /* 6B998 8007B198 0C02458E */  lw         $a1, 0x20C($s2)
    /* 6B99C 8007B19C 200242AE */  sw         $v0, 0x220($s2)
    /* 6B9A0 8007B1A0 240243AE */  sw         $v1, 0x224($s2)
    /* 6B9A4 8007B1A4 280244AE */  sw         $a0, 0x228($s2)
    /* 6B9A8 8007B1A8 2C0245AE */  sw         $a1, 0x22C($s2)
    /* 6B9AC 8007B1AC 02000224 */  addiu      $v0, $zero, 0x2
    /* 6B9B0 8007B1B0 090342A2 */  sb         $v0, 0x309($s2)
    /* 6B9B4 8007B1B4 01000224 */  addiu      $v0, $zero, 0x1
  .L8007B1B8:
    /* 6B9B8 8007B1B8 C00242A2 */  sb         $v0, 0x2C0($s2)
    /* 6B9BC 8007B1BC 97030292 */  lbu        $v0, 0x397($s0)
    /* 6B9C0 8007B1C0 B7EC0108 */  j          .L8007B2DC
    /* 6B9C4 8007B1C4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8007B1C8
    /* 6B9C8 8007B1C8 476F010C */  jal        func_8005BD1C
    /* 6B9CC 8007B1CC 21200002 */   addu      $a0, $s0, $zero
    /* 6B9D0 8007B1D0 90030392 */  lbu        $v1, 0x390($s0)
    /* 6B9D4 8007B1D4 0B000224 */  addiu      $v0, $zero, 0xB
    /* 6B9D8 8007B1D8 26006214 */  bne        $v1, $v0, .L8007B274
    /* 6B9DC 8007B1DC 00000000 */   nop
    /* 6B9E0 8007B1E0 C2030286 */  lh         $v0, 0x3C2($s0)
    /* 6B9E4 8007B1E4 00000000 */  nop
    /* 6B9E8 8007B1E8 06004014 */  bnez       $v0, .L8007B204
    /* 6B9EC 8007B1EC 00000000 */   nop
    /* 6B9F0 8007B1F0 AE79000C */  jal        func_8001E6B8
    /* 6B9F4 8007B1F4 04000424 */   addiu     $a0, $zero, 0x4
    /* 6B9F8 8007B1F8 80005124 */  addiu      $s1, $v0, 0x80
    /* 6B9FC 8007B1FC 87EC0108 */  j          .L8007B21C
    /* 6BA00 8007B200 02000724 */   addiu     $a3, $zero, 0x2
  .L8007B204:
    /* 6BA04 8007B204 AE79000C */  jal        func_8001E6B8
    /* 6BA08 8007B208 08000424 */   addiu     $a0, $zero, 0x8
    /* 6BA0C 8007B20C 80005124 */  addiu      $s1, $v0, 0x80
    /* 6BA10 8007B210 AE79000C */  jal        func_8001E6B8
    /* 6BA14 8007B214 03000424 */   addiu     $a0, $zero, 0x3
    /* 6BA18 8007B218 16004724 */  addiu      $a3, $v0, 0x16
  .L8007B21C:
    /* 6BA1C 8007B21C 21200002 */  addu       $a0, $s0, $zero
    /* 6BA20 8007B220 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 6BA24 8007B224 3C2C010C */  jal        func_8004B0F0
    /* 6BA28 8007B228 21302002 */   addu      $a2, $s1, $zero
    /* 6BA2C 8007B22C 06000224 */  addiu      $v0, $zero, 0x6
    /* 6BA30 8007B230 D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 6BA34 8007B234 9E2C010C */  jal        func_8004B278
    /* 6BA38 8007B238 B00242AE */   sw        $v0, 0x2B0($s2)
    /* 6BA3C 8007B23C 21200002 */  addu       $a0, $s0, $zero
    /* 6BA40 8007B240 21280000 */  addu       $a1, $zero, $zero
    /* 6BA44 8007B244 01000624 */  addiu      $a2, $zero, 0x1
    /* 6BA48 8007B248 B4024796 */  lhu        $a3, 0x2B4($s2)
    /* 6BA4C 8007B24C B6024296 */  lhu        $v0, 0x2B6($s2)
    /* 6BA50 8007B250 003C0700 */  sll        $a3, $a3, 16
    /* 6BA54 8007B254 033C0700 */  sra        $a3, $a3, 16
    /* 6BA58 8007B258 00140200 */  sll        $v0, $v0, 16
    /* 6BA5C 8007B25C 03140200 */  sra        $v0, $v0, 16
    /* 6BA60 8007B260 A526010C */  jal        func_80049A94
    /* 6BA64 8007B264 1000A2AF */   sw        $v0, 0x10($sp)
    /* 6BA68 8007B268 04000224 */  addiu      $v0, $zero, 0x4
    /* 6BA6C 8007B26C 51DB010C */  jal        func_80076D44
    /* 6BA70 8007B270 1C0342A6 */   sh        $v0, 0x31C($s2)
  .L8007B274:
    /* 6BA74 8007B274 90030292 */  lbu        $v0, 0x390($s0)
    /* 6BA78 8007B278 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* 6BA7C 8007B27C 0D80013C */  lui        $at, %hi(D_800CA58C)
    /* 6BA80 8007B280 21082200 */  addu       $at, $at, $v0
    /* 6BA84 8007B284 8CA52290 */  lbu        $v0, %lo(D_800CA58C)($at)
    /* 6BA88 8007B288 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 6BA8C 8007B28C 40110200 */  sll        $v0, $v0, 5
    /* 6BA90 8007B290 18004300 */  mult       $v0, $v1
    /* 6BA94 8007B294 21200002 */  addu       $a0, $s0, $zero
    /* 6BA98 8007B298 C3170200 */  sra        $v0, $v0, 31
    /* 6BA9C 8007B29C 10400000 */  mfhi       $t0
    /* 6BAA0 8007B2A0 C3280800 */  sra        $a1, $t0, 3
    /* 6BAA4 8007B2A4 2328A200 */  subu       $a1, $a1, $v0
    /* 6BAA8 8007B2A8 196E010C */  jal        func_8005B864
    /* 6BAAC 8007B2AC FFFFA530 */   andi      $a1, $a1, 0xFFFF
    /* 6BAB0 8007B2B0 90030292 */  lbu        $v0, 0x390($s0)
    /* 6BAB4 8007B2B4 00000000 */  nop
    /* 6BAB8 8007B2B8 31004014 */  bnez       $v0, .L8007B380
    /* 6BABC 8007B2BC 21200002 */   addu      $a0, $s0, $zero
    /* 6BAC0 8007B2C0 02000524 */  addiu      $a1, $zero, 0x2
    /* 6BAC4 8007B2C4 8C6E010C */  jal        func_8005BA30
    /* 6BAC8 8007B2C8 21300000 */   addu      $a2, $zero, $zero
    /* 6BACC 8007B2CC 97030292 */  lbu        $v0, 0x397($s0)
    /* 6BAD0 8007B2D0 30000324 */  addiu      $v1, $zero, 0x30
    /* 6BAD4 8007B2D4 A00303AE */  sw         $v1, 0x3A0($s0)
    /* 6BAD8 8007B2D8 01004224 */  addiu      $v0, $v0, 0x1
  .L8007B2DC:
    /* 6BADC 8007B2DC E0EC0108 */  j          .L8007B380
    /* 6BAE0 8007B2E0 970302A2 */   sb        $v0, 0x397($s0)
  jlabel .L8007B2E4
    /* 6BAE4 8007B2E4 476F010C */  jal        func_8005BD1C
    /* 6BAE8 8007B2E8 21200002 */   addu      $a0, $s0, $zero
    /* 6BAEC 8007B2EC 90030292 */  lbu        $v0, 0x390($s0)
    /* 6BAF0 8007B2F0 00000000 */  nop
    /* 6BAF4 8007B2F4 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 6BAF8 8007B2F8 0A004014 */  bnez       $v0, .L8007B324
    /* 6BAFC 8007B2FC 21380000 */   addu      $a3, $zero, $zero
    /* 6BB00 8007B300 21200002 */  addu       $a0, $s0, $zero
    /* 6BB04 8007B304 01000524 */  addiu      $a1, $zero, 0x1
    /* 6BB08 8007B308 8C6E010C */  jal        func_8005BA30
    /* 6BB0C 8007B30C 21300000 */   addu      $a2, $zero, $zero
    /* 6BB10 8007B310 97030292 */  lbu        $v0, 0x397($s0)
    /* 6BB14 8007B314 A00300AE */  sw         $zero, 0x3A0($s0)
    /* 6BB18 8007B318 01004224 */  addiu      $v0, $v0, 0x1
    /* 6BB1C 8007B31C 970302A2 */  sb         $v0, 0x397($s0)
    /* 6BB20 8007B320 21380000 */  addu       $a3, $zero, $zero
  .L8007B324:
    /* 6BB24 8007B324 02000486 */  lh         $a0, 0x2($s0)
    /* 6BB28 8007B328 06000586 */  lh         $a1, 0x6($s0)
    /* 6BB2C 8007B32C DB6C010C */  jal        func_8005B36C
    /* 6BB30 8007B330 21308000 */   addu      $a2, $a0, $zero
    /* 6BB34 8007B334 FF004430 */  andi       $a0, $v0, 0xFF
    /* 6BB38 8007B338 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 6BB3C 8007B33C F36D010C */  jal        func_8005B7CC
    /* 6BB40 8007B340 0C000624 */   addiu     $a2, $zero, 0xC
    /* 6BB44 8007B344 A0030596 */  lhu        $a1, 0x3A0($s0)
    /* 6BB48 8007B348 21200002 */  addu       $a0, $s0, $zero
    /* 6BB4C 8007B34C 196E010C */  jal        func_8005B864
    /* 6BB50 8007B350 AA0382A0 */   sb        $v0, 0x3AA($a0)
    /* 6BB54 8007B354 E0EC0108 */  j          .L8007B380
    /* 6BB58 8007B358 00000000 */   nop
  jlabel .L8007B35C
    /* 6BB5C 8007B35C 476F010C */  jal        func_8005BD1C
    /* 6BB60 8007B360 21200002 */   addu      $a0, $s0, $zero
    /* 6BB64 8007B364 AC024392 */  lbu        $v1, 0x2AC($s2)
    /* 6BB68 8007B368 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 6BB6C 8007B36C 00000000 */  nop
    /* 6BB70 8007B370 03004310 */  beq        $v0, $v1, .L8007B380
    /* 6BB74 8007B374 00000000 */   nop
  .L8007B378:
    /* 6BB78 8007B378 960300A2 */  sb         $zero, 0x396($s0)
  .L8007B37C:
    /* 6BB7C 8007B37C 970300A2 */  sb         $zero, 0x397($s0)
  .L8007B380:
    /* 6BB80 8007B380 2400BF8F */  lw         $ra, 0x24($sp)
    /* 6BB84 8007B384 2000B28F */  lw         $s2, 0x20($sp)
    /* 6BB88 8007B388 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 6BB8C 8007B38C 1800B08F */  lw         $s0, 0x18($sp)
    /* 6BB90 8007B390 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6BB94 8007B394 0800E003 */  jr         $ra
    /* 6BB98 8007B398 00000000 */   nop
endlabel func_8007AD20
