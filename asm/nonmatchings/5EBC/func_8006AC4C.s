nonmatching func_8006AC4C, 0x3F8

glabel func_8006AC4C
    /* 5B44C 8006AC4C 801F023C */  lui        $v0, (0x1F800009 >> 16)
    /* 5B450 8006AC50 09004290 */  lbu        $v0, (0x1F800009 & 0xFFFF)($v0)
    /* 5B454 8006AC54 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B458 8006AC58 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B45C 8006AC5C 21888000 */  addu       $s1, $a0, $zero
    /* 5B460 8006AC60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B464 8006AC64 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B468 8006AC68 1180123C */  lui        $s2, %hi(D_8010C1D8)
    /* 5B46C 8006AC6C D8C15226 */  addiu      $s2, $s2, %lo(D_8010C1D8)
    /* 5B470 8006AC70 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5B474 8006AC74 99032592 */  lbu        $a1, 0x399($s1)
    /* 5B478 8006AC78 2C004010 */  beqz       $v0, .L8006AD2C
    /* 5B47C 8006AC7C 801F103C */   lui       $s0, (0x1F80030B >> 16)
    /* 5B480 8006AC80 98032292 */  lbu        $v0, 0x398($s1)
    /* 5B484 8006AC84 801F013C */  lui        $at, (0x1F8002FF >> 16)
    /* 5B488 8006AC88 21084100 */  addu       $at, $v0, $at
    /* 5B48C 8006AC8C FF022390 */  lbu        $v1, (0x1F8002FF & 0xFFFF)($at)
    /* 5B490 8006AC90 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B494 8006AC94 13006210 */  beq        $v1, $v0, .L8006ACE4
    /* 5B498 8006AC98 02006228 */   slti      $v0, $v1, 0x2
    /* 5B49C 8006AC9C 05004010 */  beqz       $v0, .L8006ACB4
    /* 5B4A0 8006ACA0 00000000 */   nop
    /* 5B4A4 8006ACA4 08006010 */  beqz       $v1, .L8006ACC8
    /* 5B4A8 8006ACA8 80100500 */   sll       $v0, $a1, 2
    /* 5B4AC 8006ACAC 4BAB0108 */  j          .L8006AD2C
    /* 5B4B0 8006ACB0 00000000 */   nop
  .L8006ACB4:
    /* 5B4B4 8006ACB4 02000224 */  addiu      $v0, $zero, 0x2
    /* 5B4B8 8006ACB8 12006210 */  beq        $v1, $v0, .L8006AD04
    /* 5B4BC 8006ACBC 80100500 */   sll       $v0, $a1, 2
    /* 5B4C0 8006ACC0 4BAB0108 */  j          .L8006AD2C
    /* 5B4C4 8006ACC4 00000000 */   nop
  .L8006ACC8:
    /* 5B4C8 8006ACC8 801F043C */  lui        $a0, (0x1F8000F8 >> 16)
    /* 5B4CC 8006ACCC F8008484 */  lh         $a0, (0x1F8000F8 & 0xFFFF)($a0)
    /* 5B4D0 8006ACD0 801F013C */  lui        $at, (0x1F800314 >> 16)
    /* 5B4D4 8006ACD4 21084100 */  addu       $at, $v0, $at
    /* 5B4D8 8006ACD8 1403258C */  lw         $a1, (0x1F800314 & 0xFFFF)($at)
    /* 5B4DC 8006ACDC 47AB0108 */  j          .L8006AD1C
    /* 5B4E0 8006ACE0 19000624 */   addiu     $a2, $zero, 0x19
  .L8006ACE4:
    /* 5B4E4 8006ACE4 80100500 */  sll        $v0, $a1, 2
    /* 5B4E8 8006ACE8 801F043C */  lui        $a0, (0x1F8000F8 >> 16)
    /* 5B4EC 8006ACEC F8008484 */  lh         $a0, (0x1F8000F8 & 0xFFFF)($a0)
    /* 5B4F0 8006ACF0 801F013C */  lui        $at, (0x1F800314 >> 16)
    /* 5B4F4 8006ACF4 21084100 */  addu       $at, $v0, $at
    /* 5B4F8 8006ACF8 1403258C */  lw         $a1, (0x1F800314 & 0xFFFF)($at)
    /* 5B4FC 8006ACFC 47AB0108 */  j          .L8006AD1C
    /* 5B500 8006AD00 12000624 */   addiu     $a2, $zero, 0x12
  .L8006AD04:
    /* 5B504 8006AD04 801F043C */  lui        $a0, (0x1F8000F8 >> 16)
    /* 5B508 8006AD08 F8008484 */  lh         $a0, (0x1F8000F8 & 0xFFFF)($a0)
    /* 5B50C 8006AD0C 801F013C */  lui        $at, (0x1F800314 >> 16)
    /* 5B510 8006AD10 21084100 */  addu       $at, $v0, $at
    /* 5B514 8006AD14 1403258C */  lw         $a1, (0x1F800314 & 0xFFFF)($at)
    /* 5B518 8006AD18 0A000624 */  addiu      $a2, $zero, 0xA
  .L8006AD1C:
    /* 5B51C 8006AD1C F969010C */  jal        func_8005A7E4
    /* 5B520 8006AD20 00000000 */   nop
    /* 5B524 8006AD24 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5B528 8006AD28 F80022A4 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($at)
  .L8006AD2C:
    /* 5B52C 8006AD2C 0B030292 */  lbu        $v0, (0x1F80030B & 0xFFFF)($s0)
    /* 5B530 8006AD30 00000000 */  nop
    /* 5B534 8006AD34 FF004330 */  andi       $v1, $v0, 0xFF
    /* 5B538 8006AD38 0600622C */  sltiu      $v0, $v1, 0x6
    /* 5B53C 8006AD3C 67004010 */  beqz       $v0, .L8006AEDC
    /* 5B540 8006AD40 80100300 */   sll       $v0, $v1, 2
    /* 5B544 8006AD44 0180013C */  lui        $at, %hi(jtbl_80012800)
    /* 5B548 8006AD48 21082200 */  addu       $at, $at, $v0
    /* 5B54C 8006AD4C 0028228C */  lw         $v0, %lo(jtbl_80012800)($at)
    /* 5B550 8006AD50 00000000 */  nop
    /* 5B554 8006AD54 08004000 */  jr         $v0
    /* 5B558 8006AD58 00000000 */   nop
  jlabel .L8006AD5C
    /* 5B55C 8006AD5C 05000624 */  addiu      $a2, $zero, 0x5
    /* 5B560 8006AD60 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5B564 8006AD64 F402028E */  lw         $v0, 0x2F4($s0)
    /* 5B568 8006AD68 00240400 */  sll        $a0, $a0, 16
    /* 5B56C 8006AD6C 06004584 */  lh         $a1, 0x6($v0)
    /* 5B570 8006AD70 DB69010C */  jal        func_8005A76C
    /* 5B574 8006AD74 03240400 */   sra       $a0, $a0, 16
    /* 5B578 8006AD78 F8000396 */  lhu        $v1, 0xF8($s0)
    /* 5B57C 8006AD7C FC0002A6 */  sh         $v0, 0xFC($s0)
    /* 5B580 8006AD80 99032292 */  lbu        $v0, 0x399($s1)
    /* 5B584 8006AD84 001C0300 */  sll        $v1, $v1, 16
    /* 5B588 8006AD88 80200200 */  sll        $a0, $v0, 2
    /* 5B58C 8006AD8C 21209000 */  addu       $a0, $a0, $s0
    /* 5B590 8006AD90 01004238 */  xori       $v0, $v0, 0x1
    /* 5B594 8006AD94 40100200 */  sll        $v0, $v0, 1
    /* 5B598 8006AD98 21105000 */  addu       $v0, $v0, $s0
    /* 5B59C 8006AD9C 0C034584 */  lh         $a1, 0x30C($v0)
    /* 5B5A0 8006ADA0 1403828C */  lw         $v0, 0x314($a0)
    /* 5B5A4 8006ADA4 031C0300 */  sra        $v1, $v1, 16
    /* 5B5A8 8006ADA8 21104500 */  addu       $v0, $v0, $a1
    /* 5B5AC 8006ADAC C2270200 */  srl        $a0, $v0, 31
    /* 5B5B0 8006ADB0 21104400 */  addu       $v0, $v0, $a0
    /* 5B5B4 8006ADB4 43100200 */  sra        $v0, $v0, 1
    /* 5B5B8 8006ADB8 21186200 */  addu       $v1, $v1, $v0
    /* 5B5BC 8006ADBC C2170300 */  srl        $v0, $v1, 31
    /* 5B5C0 8006ADC0 21186200 */  addu       $v1, $v1, $v0
    /* 5B5C4 8006ADC4 43180300 */  sra        $v1, $v1, 1
    /* 5B5C8 8006ADC8 B7AB0108 */  j          .L8006AEDC
    /* 5B5CC 8006ADCC F80003A6 */   sh        $v1, 0xF8($s0)
  jlabel .L8006ADD0
    /* 5B5D0 8006ADD0 04000624 */  addiu      $a2, $zero, 0x4
    /* 5B5D4 8006ADD4 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5B5D8 8006ADD8 F402028E */  lw         $v0, 0x2F4($s0)
    /* 5B5DC 8006ADDC 00240400 */  sll        $a0, $a0, 16
    /* 5B5E0 8006ADE0 06004584 */  lh         $a1, 0x6($v0)
    /* 5B5E4 8006ADE4 DB69010C */  jal        func_8005A76C
    /* 5B5E8 8006ADE8 03240400 */   sra       $a0, $a0, 16
    /* 5B5EC 8006ADEC 21202002 */  addu       $a0, $s1, $zero
    /* 5B5F0 8006ADF0 877F020C */  jal        func_8009FE1C
    /* 5B5F4 8006ADF4 FC0002A6 */   sh        $v0, 0xFC($s0)
    /* 5B5F8 8006ADF8 38004010 */  beqz       $v0, .L8006AEDC
    /* 5B5FC 8006ADFC 21202002 */   addu      $a0, $s1, $zero
    /* 5B600 8006AE00 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5B604 8006AE04 FC000636 */  ori        $a2, $s0, 0xFC
    /* 5B608 8006AE08 B5AB0108 */  j          .L8006AED4
    /* 5B60C 8006AE0C 00100724 */   addiu     $a3, $zero, 0x1000
  jlabel .L8006AE10
    /* 5B610 8006AE10 03000624 */  addiu      $a2, $zero, 0x3
    /* 5B614 8006AE14 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5B618 8006AE18 F402028E */  lw         $v0, 0x2F4($s0)
    /* 5B61C 8006AE1C 00240400 */  sll        $a0, $a0, 16
    /* 5B620 8006AE20 06004584 */  lh         $a1, 0x6($v0)
    /* 5B624 8006AE24 DB69010C */  jal        func_8005A76C
    /* 5B628 8006AE28 03240400 */   sra       $a0, $a0, 16
    /* 5B62C 8006AE2C 21202002 */  addu       $a0, $s1, $zero
    /* 5B630 8006AE30 877F020C */  jal        func_8009FE1C
    /* 5B634 8006AE34 FC0002A6 */   sh        $v0, 0xFC($s0)
    /* 5B638 8006AE38 28004010 */  beqz       $v0, .L8006AEDC
    /* 5B63C 8006AE3C 21202002 */   addu      $a0, $s1, $zero
    /* 5B640 8006AE40 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5B644 8006AE44 FC000636 */  ori        $a2, $s0, 0xFC
    /* 5B648 8006AE48 2185020C */  jal        func_800A1484
    /* 5B64C 8006AE4C 00100724 */   addiu     $a3, $zero, 0x1000
    /* 5B650 8006AE50 01000624 */  addiu      $a2, $zero, 0x1
    /* 5B654 8006AE54 99032292 */  lbu        $v0, 0x399($s1)
    /* 5B658 8006AE58 F8000496 */  lhu        $a0, 0xF8($s0)
    /* 5B65C 8006AE5C 80100200 */  sll        $v0, $v0, 2
    /* 5B660 8006AE60 21105000 */  addu       $v0, $v0, $s0
    /* 5B664 8006AE64 00240400 */  sll        $a0, $a0, 16
    /* 5B668 8006AE68 1403458C */  lw         $a1, 0x314($v0)
    /* 5B66C 8006AE6C DB69010C */  jal        func_8005A76C
    /* 5B670 8006AE70 03240400 */   sra       $a0, $a0, 16
    /* 5B674 8006AE74 B7AB0108 */  j          .L8006AEDC
    /* 5B678 8006AE78 F80002A6 */   sh        $v0, 0xF8($s0)
  jlabel .L8006AE7C
    /* 5B67C 8006AE7C 21280000 */  addu       $a1, $zero, $zero
    /* 5B680 8006AE80 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5B684 8006AE84 02000624 */  addiu      $a2, $zero, 0x2
    /* 5B688 8006AE88 00240400 */  sll        $a0, $a0, 16
    /* 5B68C 8006AE8C DB69010C */  jal        func_8005A76C
    /* 5B690 8006AE90 03240400 */   sra       $a0, $a0, 16
    /* 5B694 8006AE94 21202002 */  addu       $a0, $s1, $zero
    /* 5B698 8006AE98 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5B69C 8006AE9C FC000636 */  ori        $a2, $s0, 0xFC
    /* 5B6A0 8006AEA0 B4AB0108 */  j          .L8006AED0
    /* 5B6A4 8006AEA4 000C0724 */   addiu     $a3, $zero, 0xC00
  jlabel .L8006AEA8
    /* 5B6A8 8006AEA8 21280000 */  addu       $a1, $zero, $zero
    /* 5B6AC 8006AEAC FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5B6B0 8006AEB0 02000624 */  addiu      $a2, $zero, 0x2
    /* 5B6B4 8006AEB4 00240400 */  sll        $a0, $a0, 16
    /* 5B6B8 8006AEB8 DB69010C */  jal        func_8005A76C
    /* 5B6BC 8006AEBC 03240400 */   sra       $a0, $a0, 16
    /* 5B6C0 8006AEC0 21202002 */  addu       $a0, $s1, $zero
    /* 5B6C4 8006AEC4 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5B6C8 8006AEC8 FC000636 */  ori        $a2, $s0, 0xFC
    /* 5B6CC 8006AECC 000A0724 */  addiu      $a3, $zero, 0xA00
  .L8006AED0:
    /* 5B6D0 8006AED0 FC0002A6 */  sh         $v0, 0xFC($s0)
  .L8006AED4:
    /* 5B6D4 8006AED4 2185020C */  jal        func_800A1484
    /* 5B6D8 8006AED8 00000000 */   nop
  .L8006AEDC:
    /* 5B6DC 8006AEDC 99032292 */  lbu        $v0, 0x399($s1)
    /* 5B6E0 8006AEE0 00000000 */  nop
    /* 5B6E4 8006AEE4 0D004014 */  bnez       $v0, .L8006AF1C
    /* 5B6E8 8006AEE8 00000000 */   nop
    /* 5B6EC 8006AEEC F8000396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5B6F0 8006AEF0 0E030496 */  lhu        $a0, (0x1F80030E & 0xFFFF)($s0)
    /* 5B6F4 8006AEF4 001C0300 */  sll        $v1, $v1, 16
    /* 5B6F8 8006AEF8 031C0300 */  sra        $v1, $v1, 16
    /* 5B6FC 8006AEFC 00140400 */  sll        $v0, $a0, 16
    /* 5B700 8006AF00 03140200 */  sra        $v0, $v0, 16
    /* 5B704 8006AF04 00014224 */  addiu      $v0, $v0, 0x100
    /* 5B708 8006AF08 2A104300 */  slt        $v0, $v0, $v1
    /* 5B70C 8006AF0C 0E004010 */  beqz       $v0, .L8006AF48
    /* 5B710 8006AF10 00018224 */   addiu     $v0, $a0, 0x100
    /* 5B714 8006AF14 D2AB0108 */  j          .L8006AF48
    /* 5B718 8006AF18 F80002A6 */   sh        $v0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006AF1C:
    /* 5B71C 8006AF1C F8000396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5B720 8006AF20 0C030496 */  lhu        $a0, (0x1F80030C & 0xFFFF)($s0)
    /* 5B724 8006AF24 001C0300 */  sll        $v1, $v1, 16
    /* 5B728 8006AF28 031C0300 */  sra        $v1, $v1, 16
    /* 5B72C 8006AF2C 00140400 */  sll        $v0, $a0, 16
    /* 5B730 8006AF30 03140200 */  sra        $v0, $v0, 16
    /* 5B734 8006AF34 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 5B738 8006AF38 2A186200 */  slt        $v1, $v1, $v0
    /* 5B73C 8006AF3C 02006010 */  beqz       $v1, .L8006AF48
    /* 5B740 8006AF40 00FF8224 */   addiu     $v0, $a0, -0x100
    /* 5B744 8006AF44 F80002A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006AF48:
    /* 5B748 8006AF48 98032292 */  lbu        $v0, 0x398($s1)
    /* 5B74C 8006AF4C 00000000 */  nop
    /* 5B750 8006AF50 21104202 */  addu       $v0, $s2, $v0
    /* 5B754 8006AF54 0D004390 */  lbu        $v1, 0xD($v0)
    /* 5B758 8006AF58 04000224 */  addiu      $v0, $zero, 0x4
    /* 5B75C 8006AF5C 1D006214 */  bne        $v1, $v0, .L8006AFD4
    /* 5B760 8006AF60 00000000 */   nop
    /* 5B764 8006AF64 99032392 */  lbu        $v1, 0x399($s1)
    /* 5B768 8006AF68 00000000 */  nop
    /* 5B76C 8006AF6C 08006014 */  bnez       $v1, .L8006AF90
    /* 5B770 8006AF70 01000224 */   addiu     $v0, $zero, 0x1
    /* 5B774 8006AF74 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5B778 8006AF78 00000000 */  nop
    /* 5B77C 8006AF7C 02004284 */  lh         $v0, 0x2($v0)
    /* 5B780 8006AF80 00000000 */  nop
    /* 5B784 8006AF84 0A00401C */  bgtz       $v0, .L8006AFB0
    /* 5B788 8006AF88 08000624 */   addiu     $a2, $zero, 0x8
    /* 5B78C 8006AF8C 01000224 */  addiu      $v0, $zero, 0x1
  .L8006AF90:
    /* 5B790 8006AF90 10006214 */  bne        $v1, $v0, .L8006AFD4
    /* 5B794 8006AF94 00000000 */   nop
    /* 5B798 8006AF98 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5B79C 8006AF9C 00000000 */  nop
    /* 5B7A0 8006AFA0 02004284 */  lh         $v0, 0x2($v0)
    /* 5B7A4 8006AFA4 00000000 */  nop
    /* 5B7A8 8006AFA8 0A004104 */  bgez       $v0, .L8006AFD4
    /* 5B7AC 8006AFAC 08000624 */   addiu     $a2, $zero, 0x8
  .L8006AFB0:
    /* 5B7B0 8006AFB0 99032292 */  lbu        $v0, 0x399($s1)
    /* 5B7B4 8006AFB4 F8000496 */  lhu        $a0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5B7B8 8006AFB8 80100200 */  sll        $v0, $v0, 2
    /* 5B7BC 8006AFBC 21105000 */  addu       $v0, $v0, $s0
    /* 5B7C0 8006AFC0 00240400 */  sll        $a0, $a0, 16
    /* 5B7C4 8006AFC4 1403458C */  lw         $a1, (0x1F800314 & 0xFFFF)($v0)
    /* 5B7C8 8006AFC8 DB69010C */  jal        func_8005A76C
    /* 5B7CC 8006AFCC 03240400 */   sra       $a0, $a0, 16
    /* 5B7D0 8006AFD0 F80002A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006AFD4:
    /* 5B7D4 8006AFD4 3A004296 */  lhu        $v0, 0x3A($s2)
    /* 5B7D8 8006AFD8 00000000 */  nop
    /* 5B7DC 8006AFDC 12004010 */  beqz       $v0, .L8006B028
    /* 5B7E0 8006AFE0 09000624 */   addiu     $a2, $zero, 0x9
    /* 5B7E4 8006AFE4 99032292 */  lbu        $v0, 0x399($s1)
    /* 5B7E8 8006AFE8 F8000496 */  lhu        $a0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5B7EC 8006AFEC 80100200 */  sll        $v0, $v0, 2
    /* 5B7F0 8006AFF0 21105000 */  addu       $v0, $v0, $s0
    /* 5B7F4 8006AFF4 00240400 */  sll        $a0, $a0, 16
    /* 5B7F8 8006AFF8 1403458C */  lw         $a1, (0x1F800314 & 0xFFFF)($v0)
    /* 5B7FC 8006AFFC DB69010C */  jal        func_8005A76C
    /* 5B800 8006B000 03240400 */   sra       $a0, $a0, 16
    /* 5B804 8006B004 FC000496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5B808 8006B008 03000624 */  addiu      $a2, $zero, 0x3
    /* 5B80C 8006B00C F80002A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5B810 8006B010 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5B814 8006B014 00240400 */  sll        $a0, $a0, 16
    /* 5B818 8006B018 06004584 */  lh         $a1, 0x6($v0)
    /* 5B81C 8006B01C DB69010C */  jal        func_8005A76C
    /* 5B820 8006B020 03240400 */   sra       $a0, $a0, 16
    /* 5B824 8006B024 FC0002A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s0)
  .L8006B028:
    /* 5B828 8006B028 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5B82C 8006B02C 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B830 8006B030 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B834 8006B034 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B838 8006B038 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5B83C 8006B03C 0800E003 */  jr         $ra
    /* 5B840 8006B040 00000000 */   nop
endlabel func_8006AC4C
