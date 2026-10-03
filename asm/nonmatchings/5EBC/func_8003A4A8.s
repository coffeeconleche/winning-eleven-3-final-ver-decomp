nonmatching func_8003A4A8, 0x438

glabel func_8003A4A8
    /* 2ACA8 8003A4A8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2ACAC 8003A4AC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2ACB0 8003A4B0 21888000 */  addu       $s1, $a0, $zero
    /* 2ACB4 8003A4B4 08000524 */  addiu      $a1, $zero, 0x8
    /* 2ACB8 8003A4B8 0600063C */  lui        $a2, (0x64000 >> 16)
    /* 2ACBC 8003A4BC 0040C634 */  ori        $a2, $a2, (0x64000 & 0xFFFF)
    /* 2ACC0 8003A4C0 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 2ACC4 8003A4C4 3800BEAF */  sw         $fp, 0x38($sp)
    /* 2ACC8 8003A4C8 3400B7AF */  sw         $s7, 0x34($sp)
    /* 2ACCC 8003A4CC 3000B6AF */  sw         $s6, 0x30($sp)
    /* 2ACD0 8003A4D0 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2ACD4 8003A4D4 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2ACD8 8003A4D8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2ACDC 8003A4DC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2ACE0 8003A4E0 9A4A010C */  jal        func_80052A68
    /* 2ACE4 8003A4E4 1800B0AF */   sw        $s0, 0x18($sp)
    /* 2ACE8 8003A4E8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2ACEC 8003A4EC EE004014 */  bnez       $v0, .L8003A8A8
    /* 2ACF0 8003A4F0 801F133C */   lui       $s3, (0x1F8002F4 >> 16)
    /* 2ACF4 8003A4F4 21202002 */  addu       $a0, $s1, $zero
    /* 2ACF8 8003A4F8 3AF5000C */  jal        func_8003D4E8
    /* 2ACFC 8003A4FC 09000524 */   addiu     $a1, $zero, 0x9
    /* 2AD00 8003A500 02002486 */  lh         $a0, 0x2($s1)
    /* 2AD04 8003A504 06002586 */  lh         $a1, 0x6($s1)
    /* 2AD08 8003A508 801F063C */  lui        $a2, (0x1F800046 >> 16)
    /* 2AD0C 8003A50C 4600C684 */  lh         $a2, (0x1F800046 & 0xFFFF)($a2)
    /* 2AD10 8003A510 801F073C */  lui        $a3, (0x1F800076 >> 16)
    /* 2AD14 8003A514 7600E784 */  lh         $a3, (0x1F800076 & 0xFFFF)($a3)
    /* 2AD18 8003A518 DB6C010C */  jal        func_8005B36C
    /* 2AD1C 8003A51C 21B84000 */   addu      $s7, $v0, $zero
    /* 2AD20 8003A520 99032392 */  lbu        $v1, 0x399($s1)
    /* 2AD24 8003A524 00000000 */  nop
    /* 2AD28 8003A528 C0190300 */  sll        $v1, $v1, 7
    /* 2AD2C 8003A52C 23104300 */  subu       $v0, $v0, $v1
    /* 2AD30 8003A530 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2AD34 8003A534 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2AD38 8003A538 21B04000 */  addu       $s6, $v0, $zero
    /* 2AD3C 8003A53C FF00C232 */  andi       $v0, $s6, 0xFF
    /* 2AD40 8003A540 03004014 */  bnez       $v0, .L8003A550
    /* 2AD44 8003A544 06001E24 */   addiu     $fp, $zero, 0x6
    /* 2AD48 8003A548 55E90008 */  j          .L8003A554
    /* 2AD4C 8003A54C C0FFF526 */   addiu     $s5, $s7, -0x40
  .L8003A550:
    /* 2AD50 8003A550 4000F526 */  addiu      $s5, $s7, 0x40
  .L8003A554:
    /* 2AD54 8003A554 21202002 */  addu       $a0, $s1, $zero
    /* 2AD58 8003A558 2E000524 */  addiu      $a1, $zero, 0x2E
    /* 2AD5C 8003A55C 21300000 */  addu       $a2, $zero, $zero
    /* 2AD60 8003A560 FF00A732 */  andi       $a3, $s5, 0xFF
    /* 2AD64 8003A564 AB70010C */  jal        func_8005C2AC
    /* 2AD68 8003A568 1000B6AF */   sw        $s6, 0x10($sp)
    /* 2AD6C 8003A56C 40101E00 */  sll        $v0, $fp, 1
    /* 2AD70 8003A570 21106202 */  addu       $v0, $s3, $v0
    /* 2AD74 8003A574 3A004684 */  lh         $a2, (0x1F80003A & 0xFFFF)($v0)
    /* 2AD78 8003A578 F0006496 */  lhu        $a0, (0x1F8000F0 & 0xFFFF)($s3)
    /* 2AD7C 8003A57C 6A004784 */  lh         $a3, (0x1F80006A & 0xFFFF)($v0)
    /* 2AD80 8003A580 F4006596 */  lhu        $a1, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2AD84 8003A584 00240400 */  sll        $a0, $a0, 16
    /* 2AD88 8003A588 03240400 */  sra        $a0, $a0, 16
    /* 2AD8C 8003A58C 002C0500 */  sll        $a1, $a1, 16
    /* 2AD90 8003A590 DB6C010C */  jal        func_8005B36C
    /* 2AD94 8003A594 032C0500 */   sra       $a1, $a1, 16
    /* 2AD98 8003A598 02002486 */  lh         $a0, 0x2($s1)
    /* 2AD9C 8003A59C F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2ADA0 8003A5A0 06002586 */  lh         $a1, 0x6($s1)
    /* 2ADA4 8003A5A4 02006684 */  lh         $a2, 0x2($v1)
    /* 2ADA8 8003A5A8 06006784 */  lh         $a3, 0x6($v1)
    /* 2ADAC 8003A5AC DB6C010C */  jal        func_8005B36C
    /* 2ADB0 8003A5B0 21A04000 */   addu      $s4, $v0, $zero
    /* 2ADB4 8003A5B4 23108202 */  subu       $v0, $s4, $v0
    /* 2ADB8 8003A5B8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2ADBC 8003A5BC 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2ADC0 8003A5C0 0A004014 */  bnez       $v0, .L8003A5EC
    /* 2ADC4 8003A5C4 00000000 */   nop
    /* 2ADC8 8003A5C8 02002486 */  lh         $a0, 0x2($s1)
    /* 2ADCC 8003A5CC F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2ADD0 8003A5D0 06002586 */  lh         $a1, 0x6($s1)
    /* 2ADD4 8003A5D4 02004684 */  lh         $a2, 0x2($v0)
    /* 2ADD8 8003A5D8 06004784 */  lh         $a3, 0x6($v0)
    /* 2ADDC 8003A5DC DB6C010C */  jal        func_8005B36C
    /* 2ADE0 8003A5E0 00000000 */   nop
    /* 2ADE4 8003A5E4 83E90008 */  j          .L8003A60C
    /* 2ADE8 8003A5E8 23105400 */   subu      $v0, $v0, $s4
  .L8003A5EC:
    /* 2ADEC 8003A5EC 02002486 */  lh         $a0, 0x2($s1)
    /* 2ADF0 8003A5F0 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2ADF4 8003A5F4 06002586 */  lh         $a1, 0x6($s1)
    /* 2ADF8 8003A5F8 02004684 */  lh         $a2, 0x2($v0)
    /* 2ADFC 8003A5FC 06004784 */  lh         $a3, 0x6($v0)
    /* 2AE00 8003A600 DB6C010C */  jal        func_8005B36C
    /* 2AE04 8003A604 00000000 */   nop
    /* 2AE08 8003A608 23108202 */  subu       $v0, $s4, $v0
  .L8003A60C:
    /* 2AE0C 8003A60C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2AE10 8003A610 60004228 */  slti       $v0, $v0, 0x60
    /* 2AE14 8003A614 A4004010 */  beqz       $v0, .L8003A8A8
    /* 2AE18 8003A618 FF00D033 */   andi      $s0, $fp, 0xFF
    /* 2AE1C 8003A61C 40281000 */  sll        $a1, $s0, 1
    /* 2AE20 8003A620 21286502 */  addu       $a1, $s3, $a1
    /* 2AE24 8003A624 F0006296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s3)
    /* 2AE28 8003A628 0800238E */  lw         $v1, 0x8($s1)
    /* 2AE2C 8003A62C 3A00A484 */  lh         $a0, (0x1F80003A & 0xFFFF)($a1)
    /* 2AE30 8003A630 00140200 */  sll        $v0, $v0, 16
    /* 2AE34 8003A634 03140200 */  sra        $v0, $v0, 16
    /* 2AE38 8003A638 21104300 */  addu       $v0, $v0, $v1
    /* 2AE3C 8003A63C 23104400 */  subu       $v0, $v0, $a0
    /* 2AE40 8003A640 18004200 */  mult       $v0, $v0
    /* 2AE44 8003A644 F4006296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2AE48 8003A648 1000238E */  lw         $v1, 0x10($s1)
    /* 2AE4C 8003A64C 6A00A484 */  lh         $a0, (0x1F80006A & 0xFFFF)($a1)
    /* 2AE50 8003A650 00140200 */  sll        $v0, $v0, 16
    /* 2AE54 8003A654 03140200 */  sra        $v0, $v0, 16
    /* 2AE58 8003A658 12300000 */  mflo       $a2
    /* 2AE5C 8003A65C 21104300 */  addu       $v0, $v0, $v1
    /* 2AE60 8003A660 23104400 */  subu       $v0, $v0, $a0
    /* 2AE64 8003A664 18004200 */  mult       $v0, $v0
    /* 2AE68 8003A668 12180000 */  mflo       $v1
    /* 2AE6C 8003A66C 4AC4020C */  jal        func_800B1128
    /* 2AE70 8003A670 2120C300 */   addu      $a0, $a2, $v1
    /* 2AE74 8003A674 92032392 */  lbu        $v1, 0x392($s1)
    /* 2AE78 8003A678 98032592 */  lbu        $a1, 0x398($s1)
    /* 2AE7C 8003A67C 1B005000 */  divu       $zero, $v0, $s0
    /* 2AE80 8003A680 02000016 */  bnez       $s0, .L8003A68C
    /* 2AE84 8003A684 00000000 */   nop
    /* 2AE88 8003A688 0D000700 */  break      7
  .L8003A68C:
    /* 2AE8C 8003A68C 12900000 */  mflo       $s2
    /* 2AE90 8003A690 40200300 */  sll        $a0, $v1, 1
    /* 2AE94 8003A694 21208300 */  addu       $a0, $a0, $v1
    /* 2AE98 8003A698 80200400 */  sll        $a0, $a0, 2
    /* 2AE9C 8003A69C 40190500 */  sll        $v1, $a1, 5
    /* 2AEA0 8003A6A0 21186500 */  addu       $v1, $v1, $a1
    /* 2AEA4 8003A6A4 C0180300 */  sll        $v1, $v1, 3
    /* 2AEA8 8003A6A8 21208300 */  addu       $a0, $a0, $v1
    /* 2AEAC 8003A6AC 1180013C */  lui        $at, %hi(D_8010C32F)
    /* 2AEB0 8003A6B0 21082400 */  addu       $at, $at, $a0
    /* 2AEB4 8003A6B4 2FC32390 */  lbu        $v1, %lo(D_8010C32F)($at)
    /* 2AEB8 8003A6B8 A4032492 */  lbu        $a0, 0x3A4($s1)
    /* 2AEBC 8003A6BC 0F006330 */  andi       $v1, $v1, 0xF
    /* 2AEC0 8003A6C0 28006524 */  addiu      $a1, $v1, 0x28
    /* 2AEC4 8003A6C4 23109500 */  subu       $v0, $a0, $s5
    /* 2AEC8 8003A6C8 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2AECC 8003A6CC 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2AED0 8003A6D0 03004014 */  bnez       $v0, .L8003A6E0
    /* 2AED4 8003A6D4 C0000224 */   addiu     $v0, $zero, 0xC0
    /* 2AED8 8003A6D8 2318A402 */  subu       $v1, $s5, $a0
    /* 2AEDC 8003A6DC FF006330 */  andi       $v1, $v1, 0xFF
  .L8003A6E0:
    /* 2AEE0 8003A6E0 23104300 */  subu       $v0, $v0, $v1
    /* 2AEE4 8003A6E4 1800A200 */  mult       $a1, $v0
    /* 2AEE8 8003A6E8 12100000 */  mflo       $v0
    /* 2AEEC 8003A6EC 03004104 */  bgez       $v0, .L8003A6FC
    /* 2AEF0 8003A6F0 C3190200 */   sra       $v1, $v0, 7
    /* 2AEF4 8003A6F4 7F004224 */  addiu      $v0, $v0, 0x7F
    /* 2AEF8 8003A6F8 C3190200 */  sra        $v1, $v0, 7
  .L8003A6FC:
    /* 2AEFC 8003A6FC 2A107200 */  slt        $v0, $v1, $s2
    /* 2AF00 8003A700 02004010 */  beqz       $v0, .L8003A70C
    /* 2AF04 8003A704 FF009032 */   andi      $s0, $s4, 0xFF
    /* 2AF08 8003A708 21906000 */  addu       $s2, $v1, $zero
  .L8003A70C:
    /* 2AF0C 8003A70C 21200002 */  addu       $a0, $s0, $zero
    /* 2AF10 8003A710 A579000C */  jal        func_8001E694
    /* 2AF14 8003A714 21284002 */   addu      $a1, $s2, $zero
    /* 2AF18 8003A718 21200002 */  addu       $a0, $s0, $zero
    /* 2AF1C 8003A71C 21284002 */  addu       $a1, $s2, $zero
    /* 2AF20 8003A720 6979000C */  jal        func_8001E5A4
    /* 2AF24 8003A724 CA0322A6 */   sh        $v0, 0x3CA($s1)
    /* 2AF28 8003A728 FF00D033 */  andi       $s0, $fp, 0xFF
    /* 2AF2C 8003A72C CE0322A6 */  sh         $v0, 0x3CE($s1)
    /* 2AF30 8003A730 5E006296 */  lhu        $v0, (0x1F80005E & 0xFFFF)($s3)
    /* 2AF34 8003A734 F2006396 */  lhu        $v1, (0x1F8000F2 & 0xFFFF)($s3)
    /* 2AF38 8003A738 00140200 */  sll        $v0, $v0, 16
    /* 2AF3C 8003A73C 03140200 */  sra        $v0, $v0, 16
    /* 2AF40 8003A740 001C0300 */  sll        $v1, $v1, 16
    /* 2AF44 8003A744 031C0300 */  sra        $v1, $v1, 16
    /* 2AF48 8003A748 23104300 */  subu       $v0, $v0, $v1
    /* 2AF4C 8003A74C 1A005000 */  div        $zero, $v0, $s0
    /* 2AF50 8003A750 02000016 */  bnez       $s0, .L8003A75C
    /* 2AF54 8003A754 00000000 */   nop
    /* 2AF58 8003A758 0D000700 */  break      7
  .L8003A75C:
    /* 2AF5C 8003A75C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2AF60 8003A760 04000116 */  bne        $s0, $at, .L8003A774
    /* 2AF64 8003A764 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2AF68 8003A768 02004114 */  bne        $v0, $at, .L8003A774
    /* 2AF6C 8003A76C 00000000 */   nop
    /* 2AF70 8003A770 0D000600 */  break      6
  .L8003A774:
    /* 2AF74 8003A774 12100000 */  mflo       $v0
    /* 2AF78 8003A778 92032592 */  lbu        $a1, 0x392($s1)
    /* 2AF7C 8003A77C CC032426 */  addiu      $a0, $s1, 0x3CC
    /* 2AF80 8003A780 40180500 */  sll        $v1, $a1, 1
    /* 2AF84 8003A784 21186500 */  addu       $v1, $v1, $a1
    /* 2AF88 8003A788 98032592 */  lbu        $a1, 0x398($s1)
    /* 2AF8C 8003A78C 80180300 */  sll        $v1, $v1, 2
    /* 2AF90 8003A790 CC0322A6 */  sh         $v0, 0x3CC($s1)
    /* 2AF94 8003A794 40110500 */  sll        $v0, $a1, 5
    /* 2AF98 8003A798 21104500 */  addu       $v0, $v0, $a1
    /* 2AF9C 8003A79C C0100200 */  sll        $v0, $v0, 3
    /* 2AFA0 8003A7A0 21186200 */  addu       $v1, $v1, $v0
    /* 2AFA4 8003A7A4 12000524 */  addiu      $a1, $zero, 0x12
    /* 2AFA8 8003A7A8 1180013C */  lui        $at, %hi(D_8010C32F)
    /* 2AFAC 8003A7AC 21082300 */  addu       $at, $at, $v1
    /* 2AFB0 8003A7B0 2FC32690 */  lbu        $a2, %lo(D_8010C32F)($at)
    /* 2AFB4 8003A7B4 F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 2AFB8 8003A7B8 0F00C630 */  andi       $a2, $a2, 0xF
    /* 2AFBC 8003A7BC 43300600 */  sra        $a2, $a2, 1
    /* 2AFC0 8003A7C0 1571010C */  jal        func_8005C454
    /* 2AFC4 8003A7C4 23304600 */   subu      $a2, $v0, $a2
    /* 2AFC8 8003A7C8 CA032286 */  lh         $v0, 0x3CA($s1)
    /* 2AFCC 8003A7CC 00000000 */  nop
    /* 2AFD0 8003A7D0 18005000 */  mult       $v0, $s0
    /* 2AFD4 8003A7D4 F0006296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s3)
    /* 2AFD8 8003A7D8 12400000 */  mflo       $t0
    /* 2AFDC 8003A7DC 21104800 */  addu       $v0, $v0, $t0
    /* 2AFE0 8003A7E0 F00062A6 */  sh         $v0, (0x1F8000F0 & 0xFFFF)($s3)
    /* 2AFE4 8003A7E4 CC032286 */  lh         $v0, 0x3CC($s1)
    /* 2AFE8 8003A7E8 00000000 */  nop
    /* 2AFEC 8003A7EC 18005000 */  mult       $v0, $s0
    /* 2AFF0 8003A7F0 F2006296 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($s3)
    /* 2AFF4 8003A7F4 12400000 */  mflo       $t0
    /* 2AFF8 8003A7F8 21104800 */  addu       $v0, $v0, $t0
    /* 2AFFC 8003A7FC F20062A6 */  sh         $v0, (0x1F8000F2 & 0xFFFF)($s3)
    /* 2B000 8003A800 CE032286 */  lh         $v0, 0x3CE($s1)
    /* 2B004 8003A804 00000000 */  nop
    /* 2B008 8003A808 18005000 */  mult       $v0, $s0
    /* 2B00C 8003A80C 21202002 */  addu       $a0, $s1, $zero
    /* 2B010 8003A810 08000524 */  addiu      $a1, $zero, 0x8
    /* 2B014 8003A814 01000624 */  addiu      $a2, $zero, 0x1
    /* 2B018 8003A818 01000724 */  addiu      $a3, $zero, 0x1
    /* 2B01C 8003A81C F4006296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2B020 8003A820 00900334 */  ori        $v1, $zero, 0x9000
    /* 2B024 8003A824 1000A3AF */  sw         $v1, 0x10($sp)
    /* 2B028 8003A828 12400000 */  mflo       $t0
    /* 2B02C 8003A82C 21104800 */  addu       $v0, $v0, $t0
    /* 2B030 8003A830 B9F3000C */  jal        func_8003CEE4
    /* 2B034 8003A834 F40062A6 */   sh        $v0, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2B038 8003A838 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B03C 8003A83C 1A004010 */  beqz       $v0, .L8003A8A8
    /* 2B040 8003A840 21202002 */   addu      $a0, $s1, $zero
    /* 2B044 8003A844 2E000524 */  addiu      $a1, $zero, 0x2E
    /* 2B048 8003A848 8C6E010C */  jal        func_8005BA30
    /* 2B04C 8003A84C 21300000 */   addu      $a2, $zero, $zero
    /* 2B050 8003A850 FF00A432 */  andi       $a0, $s5, 0xFF
    /* 2B054 8003A854 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2B058 8003A858 F36D010C */  jal        func_8005B7CC
    /* 2B05C 8003A85C 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2B060 8003A860 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2B064 8003A864 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2B068 8003A868 23206400 */  subu       $a0, $v1, $a0
    /* 2B06C 8003A86C 21188000 */  addu       $v1, $a0, $zero
    /* 2B070 8003A870 02008104 */  bgez       $a0, .L8003A87C
    /* 2B074 8003A874 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2B078 8003A878 FF008324 */  addiu      $v1, $a0, 0xFF
  .L8003A87C:
    /* 2B07C 8003A87C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B080 8003A880 031A0300 */  sra        $v1, $v1, 8
    /* 2B084 8003A884 001A0300 */  sll        $v1, $v1, 8
    /* 2B088 8003A888 23188300 */  subu       $v1, $a0, $v1
    /* 2B08C 8003A88C 00190300 */  sll        $v1, $v1, 4
    /* 2B090 8003A890 260023A6 */  sh         $v1, 0x26($s1)
    /* 2B094 8003A894 B20337A2 */  sb         $s7, 0x3B2($s1)
    /* 2B098 8003A898 AB0335A2 */  sb         $s5, 0x3AB($s1)
    /* 2B09C 8003A89C D10320A2 */  sb         $zero, 0x3D1($s1)
    /* 2B0A0 8003A8A0 2BEA0008 */  j          .L8003A8AC
    /* 2B0A4 8003A8A4 AC0336A2 */   sb        $s6, 0x3AC($s1)
  .L8003A8A8:
    /* 2B0A8 8003A8A8 21100000 */  addu       $v0, $zero, $zero
  .L8003A8AC:
    /* 2B0AC 8003A8AC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 2B0B0 8003A8B0 3800BE8F */  lw         $fp, 0x38($sp)
    /* 2B0B4 8003A8B4 3400B78F */  lw         $s7, 0x34($sp)
    /* 2B0B8 8003A8B8 3000B68F */  lw         $s6, 0x30($sp)
    /* 2B0BC 8003A8BC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2B0C0 8003A8C0 2800B48F */  lw         $s4, 0x28($sp)
    /* 2B0C4 8003A8C4 2400B38F */  lw         $s3, 0x24($sp)
    /* 2B0C8 8003A8C8 2000B28F */  lw         $s2, 0x20($sp)
    /* 2B0CC 8003A8CC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2B0D0 8003A8D0 1800B08F */  lw         $s0, 0x18($sp)
    /* 2B0D4 8003A8D4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2B0D8 8003A8D8 0800E003 */  jr         $ra
    /* 2B0DC 8003A8DC 00000000 */   nop
endlabel func_8003A4A8
