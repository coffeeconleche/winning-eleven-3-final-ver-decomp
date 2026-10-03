nonmatching func_8003ACA8, 0x418

glabel func_8003ACA8
    /* 2B4A8 8003ACA8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2B4AC 8003ACAC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2B4B0 8003ACB0 21888000 */  addu       $s1, $a0, $zero
    /* 2B4B4 8003ACB4 05000524 */  addiu      $a1, $zero, 0x5
    /* 2B4B8 8003ACB8 0200063C */  lui        $a2, (0x24000 >> 16)
    /* 2B4BC 8003ACBC 0040C634 */  ori        $a2, $a2, (0x24000 & 0xFFFF)
    /* 2B4C0 8003ACC0 3800BFAF */  sw         $ra, 0x38($sp)
    /* 2B4C4 8003ACC4 3400B7AF */  sw         $s7, 0x34($sp)
    /* 2B4C8 8003ACC8 3000B6AF */  sw         $s6, 0x30($sp)
    /* 2B4CC 8003ACCC 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2B4D0 8003ACD0 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2B4D4 8003ACD4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2B4D8 8003ACD8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2B4DC 8003ACDC 9A4A010C */  jal        func_80052A68
    /* 2B4E0 8003ACE0 1800B0AF */   sw        $s0, 0x18($sp)
    /* 2B4E4 8003ACE4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B4E8 8003ACE8 E8004014 */  bnez       $v0, .L8003B08C
    /* 2B4EC 8003ACEC 801F153C */   lui       $s5, (0x1F80004E >> 16)
    /* 2B4F0 8003ACF0 21202002 */  addu       $a0, $s1, $zero
    /* 2B4F4 8003ACF4 3AF5000C */  jal        func_8003D4E8
    /* 2B4F8 8003ACF8 06000524 */   addiu     $a1, $zero, 0x6
    /* 2B4FC 8003ACFC 02002486 */  lh         $a0, 0x2($s1)
    /* 2B500 8003AD00 06002586 */  lh         $a1, 0x6($s1)
    /* 2B504 8003AD04 801F063C */  lui        $a2, (0x1F800040 >> 16)
    /* 2B508 8003AD08 4000C684 */  lh         $a2, (0x1F800040 & 0xFFFF)($a2)
    /* 2B50C 8003AD0C 801F073C */  lui        $a3, (0x1F800070 >> 16)
    /* 2B510 8003AD10 7000E784 */  lh         $a3, (0x1F800070 & 0xFFFF)($a3)
    /* 2B514 8003AD14 DB6C010C */  jal        func_8005B36C
    /* 2B518 8003AD18 21B84000 */   addu      $s7, $v0, $zero
    /* 2B51C 8003AD1C 21804000 */  addu       $s0, $v0, $zero
    /* 2B520 8003AD20 2310F002 */  subu       $v0, $s7, $s0
    /* 2B524 8003AD24 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2B528 8003AD28 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2B52C 8003AD2C 04004014 */  bnez       $v0, .L8003AD40
    /* 2B530 8003AD30 23101702 */   subu      $v0, $s0, $s7
    /* 2B534 8003AD34 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B538 8003AD38 51EB0008 */  j          .L8003AD44
    /* 2B53C 8003AD3C 20004228 */   slti      $v0, $v0, 0x20
  .L8003AD40:
    /* 2B540 8003AD40 20006228 */  slti       $v0, $v1, 0x20
  .L8003AD44:
    /* 2B544 8003AD44 D2004010 */  beqz       $v0, .L8003B090
    /* 2B548 8003AD48 21100000 */   addu      $v0, $zero, $zero
    /* 2B54C 8003AD4C AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 2B550 8003AD50 00000000 */  nop
    /* 2B554 8003AD54 23100402 */  subu       $v0, $s0, $a0
    /* 2B558 8003AD58 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2B55C 8003AD5C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2B560 8003AD60 04004014 */  bnez       $v0, .L8003AD74
    /* 2B564 8003AD64 23109000 */   subu      $v0, $a0, $s0
    /* 2B568 8003AD68 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B56C 8003AD6C 5EEB0008 */  j          .L8003AD78
    /* 2B570 8003AD70 40004228 */   slti      $v0, $v0, 0x40
  .L8003AD74:
    /* 2B574 8003AD74 40006228 */  slti       $v0, $v1, 0x40
  .L8003AD78:
    /* 2B578 8003AD78 C4004010 */  beqz       $v0, .L8003B08C
    /* 2B57C 8003AD7C 21202002 */   addu      $a0, $s1, $zero
    /* 2B580 8003AD80 31000524 */  addiu      $a1, $zero, 0x31
    /* 2B584 8003AD84 92032292 */  lbu        $v0, 0x392($s1)
    /* 2B588 8003AD88 98032792 */  lbu        $a3, 0x398($s1)
    /* 2B58C 8003AD8C 21300000 */  addu       $a2, $zero, $zero
    /* 2B590 8003AD90 AB0330A2 */  sb         $s0, 0x3AB($s1)
    /* 2B594 8003AD94 40180200 */  sll        $v1, $v0, 1
    /* 2B598 8003AD98 21186200 */  addu       $v1, $v1, $v0
    /* 2B59C 8003AD9C 80180300 */  sll        $v1, $v1, 2
    /* 2B5A0 8003ADA0 40110700 */  sll        $v0, $a3, 5
    /* 2B5A4 8003ADA4 21104700 */  addu       $v0, $v0, $a3
    /* 2B5A8 8003ADA8 C0100200 */  sll        $v0, $v0, 3
    /* 2B5AC 8003ADAC 21186200 */  addu       $v1, $v1, $v0
    /* 2B5B0 8003ADB0 1180013C */  lui        $at, %hi(D_8010C330)
    /* 2B5B4 8003ADB4 21082300 */  addu       $at, $at, $v1
    /* 2B5B8 8003ADB8 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 2B5BC 8003ADBC FF000732 */  andi       $a3, $s0, 0xFF
    /* 2B5C0 8003ADC0 02110200 */  srl        $v0, $v0, 4
    /* 2B5C4 8003ADC4 01004230 */  andi       $v0, $v0, 0x1
    /* 2B5C8 8003ADC8 AB70010C */  jal        func_8005C2AC
    /* 2B5CC 8003ADCC 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2B5D0 8003ADD0 05001624 */  addiu      $s6, $zero, 0x5
    /* 2B5D4 8003ADD4 40101600 */  sll        $v0, $s6, 1
    /* 2B5D8 8003ADD8 21A05500 */  addu       $s4, $v0, $s5
    /* 2B5DC 8003ADDC 36008686 */  lh         $a2, (0x1F800036 & 0xFFFF)($s4)
    /* 2B5E0 8003ADE0 F000A496 */  lhu        $a0, (0x1F8000F0 & 0xFFFF)($s5)
    /* 2B5E4 8003ADE4 66008786 */  lh         $a3, (0x1F800066 & 0xFFFF)($s4)
    /* 2B5E8 8003ADE8 F400A596 */  lhu        $a1, (0x1F8000F4 & 0xFFFF)($s5)
    /* 2B5EC 8003ADEC 00240400 */  sll        $a0, $a0, 16
    /* 2B5F0 8003ADF0 03240400 */  sra        $a0, $a0, 16
    /* 2B5F4 8003ADF4 002C0500 */  sll        $a1, $a1, 16
    /* 2B5F8 8003ADF8 DB6C010C */  jal        func_8005B36C
    /* 2B5FC 8003ADFC 032C0500 */   sra       $a1, $a1, 16
    /* 2B600 8003AE00 F000A396 */  lhu        $v1, (0x1F8000F0 & 0xFFFF)($s5)
    /* 2B604 8003AE04 36008486 */  lh         $a0, (0x1F800036 & 0xFFFF)($s4)
    /* 2B608 8003AE08 001C0300 */  sll        $v1, $v1, 16
    /* 2B60C 8003AE0C 031C0300 */  sra        $v1, $v1, 16
    /* 2B610 8003AE10 23186400 */  subu       $v1, $v1, $a0
    /* 2B614 8003AE14 18006300 */  mult       $v1, $v1
    /* 2B618 8003AE18 F400A396 */  lhu        $v1, (0x1F8000F4 & 0xFFFF)($s5)
    /* 2B61C 8003AE1C 66008486 */  lh         $a0, (0x1F800066 & 0xFFFF)($s4)
    /* 2B620 8003AE20 001C0300 */  sll        $v1, $v1, 16
    /* 2B624 8003AE24 12280000 */  mflo       $a1
    /* 2B628 8003AE28 031C0300 */  sra        $v1, $v1, 16
    /* 2B62C 8003AE2C 23186400 */  subu       $v1, $v1, $a0
    /* 2B630 8003AE30 18006300 */  mult       $v1, $v1
    /* 2B634 8003AE34 21804000 */  addu       $s0, $v0, $zero
    /* 2B638 8003AE38 12180000 */  mflo       $v1
    /* 2B63C 8003AE3C 4AC4020C */  jal        func_800B1128
    /* 2B640 8003AE40 2120A300 */   addu      $a0, $a1, $v1
    /* 2B644 8003AE44 0100D226 */  addiu      $s2, $s6, 0x1
    /* 2B648 8003AE48 1B005200 */  divu       $zero, $v0, $s2
    /* 2B64C 8003AE4C 02004016 */  bnez       $s2, .L8003AE58
    /* 2B650 8003AE50 00000000 */   nop
    /* 2B654 8003AE54 0D000700 */  break      7
  .L8003AE58:
    /* 2B658 8003AE58 12980000 */  mflo       $s3
    /* 2B65C 8003AE5C 92032292 */  lbu        $v0, 0x392($s1)
    /* 2B660 8003AE60 98032492 */  lbu        $a0, 0x398($s1)
    /* 2B664 8003AE64 40180200 */  sll        $v1, $v0, 1
    /* 2B668 8003AE68 21186200 */  addu       $v1, $v1, $v0
    /* 2B66C 8003AE6C 80180300 */  sll        $v1, $v1, 2
    /* 2B670 8003AE70 40110400 */  sll        $v0, $a0, 5
    /* 2B674 8003AE74 21104400 */  addu       $v0, $v0, $a0
    /* 2B678 8003AE78 C0100200 */  sll        $v0, $v0, 3
    /* 2B67C 8003AE7C 21186200 */  addu       $v1, $v1, $v0
    /* 2B680 8003AE80 1180013C */  lui        $at, %hi(D_8010C32F)
    /* 2B684 8003AE84 21082300 */  addu       $at, $at, $v1
    /* 2B688 8003AE88 2FC32290 */  lbu        $v0, %lo(D_8010C32F)($at)
    /* 2B68C 8003AE8C 00000000 */  nop
    /* 2B690 8003AE90 0F004230 */  andi       $v0, $v0, 0xF
    /* 2B694 8003AE94 43180200 */  sra        $v1, $v0, 1
    /* 2B698 8003AE98 34006224 */  addiu      $v0, $v1, 0x34
    /* 2B69C 8003AE9C 2B106202 */  sltu       $v0, $s3, $v0
    /* 2B6A0 8003AEA0 02004014 */  bnez       $v0, .L8003AEAC
    /* 2B6A4 8003AEA4 00000000 */   nop
    /* 2B6A8 8003AEA8 22007324 */  addiu      $s3, $v1, 0x22
  .L8003AEAC:
    /* 2B6AC 8003AEAC FF001032 */  andi       $s0, $s0, 0xFF
    /* 2B6B0 8003AEB0 21200002 */  addu       $a0, $s0, $zero
    /* 2B6B4 8003AEB4 A579000C */  jal        func_8001E694
    /* 2B6B8 8003AEB8 21286002 */   addu      $a1, $s3, $zero
    /* 2B6BC 8003AEBC CA0322A6 */  sh         $v0, 0x3CA($s1)
    /* 2B6C0 8003AEC0 F200A296 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($s5)
    /* 2B6C4 8003AEC4 4E008386 */  lh         $v1, (0x1F80004E & 0xFFFF)($s4)
    /* 2B6C8 8003AEC8 00140200 */  sll        $v0, $v0, 16
    /* 2B6CC 8003AECC 03140200 */  sra        $v0, $v0, 16
    /* 2B6D0 8003AED0 23186200 */  subu       $v1, $v1, $v0
    /* 2B6D4 8003AED4 1A007200 */  div        $zero, $v1, $s2
    /* 2B6D8 8003AED8 02004016 */  bnez       $s2, .L8003AEE4
    /* 2B6DC 8003AEDC 00000000 */   nop
    /* 2B6E0 8003AEE0 0D000700 */  break      7
  .L8003AEE4:
    /* 2B6E4 8003AEE4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2B6E8 8003AEE8 04004116 */  bne        $s2, $at, .L8003AEFC
    /* 2B6EC 8003AEEC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2B6F0 8003AEF0 02006114 */  bne        $v1, $at, .L8003AEFC
    /* 2B6F4 8003AEF4 00000000 */   nop
    /* 2B6F8 8003AEF8 0D000600 */  break      6
  .L8003AEFC:
    /* 2B6FC 8003AEFC 12180000 */  mflo       $v1
    /* 2B700 8003AF00 CC032426 */  addiu      $a0, $s1, 0x3CC
    /* 2B704 8003AF04 10000524 */  addiu      $a1, $zero, 0x10
    /* 2B708 8003AF08 F8FF0624 */  addiu      $a2, $zero, -0x8
    /* 2B70C 8003AF0C 1571010C */  jal        func_8005C454
    /* 2B710 8003AF10 CC0323A6 */   sh        $v1, 0x3CC($s1)
    /* 2B714 8003AF14 21200002 */  addu       $a0, $s0, $zero
    /* 2B718 8003AF18 6979000C */  jal        func_8001E5A4
    /* 2B71C 8003AF1C 21286002 */   addu      $a1, $s3, $zero
    /* 2B720 8003AF20 CA032386 */  lh         $v1, 0x3CA($s1)
    /* 2B724 8003AF24 00000000 */  nop
    /* 2B728 8003AF28 18007200 */  mult       $v1, $s2
    /* 2B72C 8003AF2C CE0322A6 */  sh         $v0, 0x3CE($s1)
    /* 2B730 8003AF30 F000A296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s5)
    /* 2B734 8003AF34 12400000 */  mflo       $t0
    /* 2B738 8003AF38 21104800 */  addu       $v0, $v0, $t0
    /* 2B73C 8003AF3C F000A2A6 */  sh         $v0, (0x1F8000F0 & 0xFFFF)($s5)
    /* 2B740 8003AF40 CC032286 */  lh         $v0, 0x3CC($s1)
    /* 2B744 8003AF44 00000000 */  nop
    /* 2B748 8003AF48 18005200 */  mult       $v0, $s2
    /* 2B74C 8003AF4C F200A296 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($s5)
    /* 2B750 8003AF50 12400000 */  mflo       $t0
    /* 2B754 8003AF54 21104800 */  addu       $v0, $v0, $t0
    /* 2B758 8003AF58 F200A2A6 */  sh         $v0, (0x1F8000F2 & 0xFFFF)($s5)
    /* 2B75C 8003AF5C CE032286 */  lh         $v0, 0x3CE($s1)
    /* 2B760 8003AF60 00000000 */  nop
    /* 2B764 8003AF64 18005200 */  mult       $v0, $s2
    /* 2B768 8003AF68 F200A296 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($s5)
    /* 2B76C 8003AF6C F400A396 */  lhu        $v1, (0x1F8000F4 & 0xFFFF)($s5)
    /* 2B770 8003AF70 00140200 */  sll        $v0, $v0, 16
    /* 2B774 8003AF74 12400000 */  mflo       $t0
    /* 2B778 8003AF78 21186800 */  addu       $v1, $v1, $t0
    /* 2B77C 8003AF7C F400A3A6 */  sh         $v1, (0x1F8000F4 & 0xFFFF)($s5)
    /* 2B780 8003AF80 4E008386 */  lh         $v1, (0x1F80004E & 0xFFFF)($s4)
    /* 2B784 8003AF84 03140200 */  sra        $v0, $v0, 16
    /* 2B788 8003AF88 23104300 */  subu       $v0, $v0, $v1
    /* 2B78C 8003AF8C FF004224 */  addiu      $v0, $v0, 0xFF
    /* 2B790 8003AF90 BF01422C */  sltiu      $v0, $v0, 0x1BF
    /* 2B794 8003AF94 3D004010 */  beqz       $v0, .L8003B08C
    /* 2B798 8003AF98 0100023C */   lui       $v0, (0x14400 >> 16)
    /* 2B79C 8003AF9C 00444234 */  ori        $v0, $v0, (0x14400 & 0xFFFF)
    /* 2B7A0 8003AFA0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2B7A4 8003AFA4 21202002 */  addu       $a0, $s1, $zero
    /* 2B7A8 8003AFA8 2128C002 */  addu       $a1, $s6, $zero
    /* 2B7AC 8003AFAC 21300000 */  addu       $a2, $zero, $zero
    /* 2B7B0 8003AFB0 B9F3000C */  jal        func_8003CEE4
    /* 2B7B4 8003AFB4 01000724 */   addiu     $a3, $zero, 0x1
    /* 2B7B8 8003AFB8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B7BC 8003AFBC 33004010 */  beqz       $v0, .L8003B08C
    /* 2B7C0 8003AFC0 21202002 */   addu      $a0, $s1, $zero
    /* 2B7C4 8003AFC4 31000524 */  addiu      $a1, $zero, 0x31
    /* 2B7C8 8003AFC8 8C6E010C */  jal        func_8005BA30
    /* 2B7CC 8003AFCC 21300000 */   addu      $a2, $zero, $zero
    /* 2B7D0 8003AFD0 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 2B7D4 8003AFD4 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2B7D8 8003AFD8 F36D010C */  jal        func_8005B7CC
    /* 2B7DC 8003AFDC 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2B7E0 8003AFE0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2B7E4 8003AFE4 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2B7E8 8003AFE8 23186400 */  subu       $v1, $v1, $a0
    /* 2B7EC 8003AFEC 21206000 */  addu       $a0, $v1, $zero
    /* 2B7F0 8003AFF0 02006104 */  bgez       $v1, .L8003AFFC
    /* 2B7F4 8003AFF4 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2B7F8 8003AFF8 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003AFFC:
    /* 2B7FC 8003AFFC 03120400 */  sra        $v0, $a0, 8
    /* 2B800 8003B000 00120200 */  sll        $v0, $v0, 8
    /* 2B804 8003B004 23106200 */  subu       $v0, $v1, $v0
    /* 2B808 8003B008 00110200 */  sll        $v0, $v0, 4
    /* 2B80C 8003B00C 260022A6 */  sh         $v0, 0x26($s1)
    /* 2B810 8003B010 02002296 */  lhu        $v0, 0x2($s1)
    /* 2B814 8003B014 CA032496 */  lhu        $a0, 0x3CA($s1)
    /* 2B818 8003B018 04002396 */  lhu        $v1, 0x4($s1)
    /* 2B81C 8003B01C CC032596 */  lhu        $a1, 0x3CC($s1)
    /* 2B820 8003B020 D10320A2 */  sb         $zero, 0x3D1($s1)
    /* 2B824 8003B024 21104400 */  addu       $v0, $v0, $a0
    /* 2B828 8003B028 020022A6 */  sh         $v0, 0x2($s1)
    /* 2B82C 8003B02C 06002296 */  lhu        $v0, 0x6($s1)
    /* 2B830 8003B030 21186500 */  addu       $v1, $v1, $a1
    /* 2B834 8003B034 040023A6 */  sh         $v1, 0x4($s1)
    /* 2B838 8003B038 CE032396 */  lhu        $v1, 0x3CE($s1)
    /* 2B83C 8003B03C 92032492 */  lbu        $a0, 0x392($s1)
    /* 2B840 8003B040 21104300 */  addu       $v0, $v0, $v1
    /* 2B844 8003B044 40180400 */  sll        $v1, $a0, 1
    /* 2B848 8003B048 21186400 */  addu       $v1, $v1, $a0
    /* 2B84C 8003B04C 98032492 */  lbu        $a0, 0x398($s1)
    /* 2B850 8003B050 80180300 */  sll        $v1, $v1, 2
    /* 2B854 8003B054 060022A6 */  sh         $v0, 0x6($s1)
    /* 2B858 8003B058 40110400 */  sll        $v0, $a0, 5
    /* 2B85C 8003B05C 21104400 */  addu       $v0, $v0, $a0
    /* 2B860 8003B060 C0100200 */  sll        $v0, $v0, 3
    /* 2B864 8003B064 21186200 */  addu       $v1, $v1, $v0
    /* 2B868 8003B068 1180013C */  lui        $at, %hi(D_8010C330)
    /* 2B86C 8003B06C 21082300 */  addu       $at, $at, $v1
    /* 2B870 8003B070 30C3238C */  lw         $v1, %lo(D_8010C330)($at)
    /* 2B874 8003B074 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B878 8003B078 B20337A2 */  sb         $s7, 0x3B2($s1)
    /* 2B87C 8003B07C 02190300 */  srl        $v1, $v1, 4
    /* 2B880 8003B080 01006330 */  andi       $v1, $v1, 0x1
    /* 2B884 8003B084 24EC0008 */  j          .L8003B090
    /* 2B888 8003B088 AC0323A2 */   sb        $v1, 0x3AC($s1)
  .L8003B08C:
    /* 2B88C 8003B08C 21100000 */  addu       $v0, $zero, $zero
  .L8003B090:
    /* 2B890 8003B090 3800BF8F */  lw         $ra, 0x38($sp)
    /* 2B894 8003B094 3400B78F */  lw         $s7, 0x34($sp)
    /* 2B898 8003B098 3000B68F */  lw         $s6, 0x30($sp)
    /* 2B89C 8003B09C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2B8A0 8003B0A0 2800B48F */  lw         $s4, 0x28($sp)
    /* 2B8A4 8003B0A4 2400B38F */  lw         $s3, 0x24($sp)
    /* 2B8A8 8003B0A8 2000B28F */  lw         $s2, 0x20($sp)
    /* 2B8AC 8003B0AC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2B8B0 8003B0B0 1800B08F */  lw         $s0, 0x18($sp)
    /* 2B8B4 8003B0B4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2B8B8 8003B0B8 0800E003 */  jr         $ra
    /* 2B8BC 8003B0BC 00000000 */   nop
endlabel func_8003ACA8
