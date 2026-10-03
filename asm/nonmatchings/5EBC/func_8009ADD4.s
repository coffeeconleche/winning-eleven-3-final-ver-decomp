nonmatching func_8009ADD4, 0x598

glabel func_8009ADD4
    /* 8B5D4 8009ADD4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 8B5D8 8009ADD8 3000B6AF */  sw         $s6, 0x30($sp)
    /* 8B5DC 8009ADDC 801F163C */  lui        $s6, (0x1F8002E3 >> 16)
    /* 8B5E0 8009ADE0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8B5E4 8009ADE4 21880000 */  addu       $s1, $zero, $zero
    /* 8B5E8 8009ADE8 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 8B5EC 8009ADEC 0E80153C */  lui        $s5, %hi(D_800E6E2D)
    /* 8B5F0 8009ADF0 2D6EB526 */  addiu      $s5, $s5, %lo(D_800E6E2D)
    /* 8B5F4 8009ADF4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8B5F8 8009ADF8 21800000 */  addu       $s0, $zero, $zero
    /* 8B5FC 8009ADFC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8B600 8009AE00 ACFF1424 */  addiu      $s4, $zero, -0x54
    /* 8B604 8009AE04 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8B608 8009AE08 D6FF1224 */  addiu      $s2, $zero, -0x2A
    /* 8B60C 8009AE0C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8B610 8009AE10 21980000 */  addu       $s3, $zero, $zero
    /* 8B614 8009AE14 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 8B618 8009AE18 3800BEAF */  sw         $fp, 0x38($sp)
    /* 8B61C 8009AE1C 3400B7AF */  sw         $s7, 0x34($sp)
  .L8009AE20:
    /* 8B620 8009AE20 0700222A */  slti       $v0, $s1, 0x7
    /* 8B624 8009AE24 2C004010 */  beqz       $v0, .L8009AED8
    /* 8B628 8009AE28 00000000 */   nop
    /* 8B62C 8009AE2C 0E80013C */  lui        $at, %hi(D_800E6E2C)
    /* 8B630 8009AE30 21083000 */  addu       $at, $at, $s0
    /* 8B634 8009AE34 2C6E20A0 */  sb         $zero, %lo(D_800E6E2C)($at)
    /* 8B638 8009AE38 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B63C 8009AE3C 00000000 */  nop
    /* 8B640 8009AE40 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B644 8009AE44 80100300 */  sll        $v0, $v1, 2
    /* 8B648 8009AE48 21104300 */  addu       $v0, $v0, $v1
    /* 8B64C 8009AE4C 80100200 */  sll        $v0, $v0, 2
    /* 8B650 8009AE50 21104300 */  addu       $v0, $v0, $v1
    /* 8B654 8009AE54 80100200 */  sll        $v0, $v0, 2
    /* 8B658 8009AE58 21106202 */  addu       $v0, $s3, $v0
    /* 8B65C 8009AE5C 0D80013C */  lui        $at, %hi(D_800CB434)
    /* 8B660 8009AE60 21082200 */  addu       $at, $at, $v0
    /* 8B664 8009AE64 34B42294 */  lhu        $v0, %lo(D_800CB434)($at)
    /* 8B668 8009AE68 0E80013C */  lui        $at, %hi(D_800E6E20)
    /* 8B66C 8009AE6C 21083000 */  addu       $at, $at, $s0
    /* 8B670 8009AE70 206E22A4 */  sh         $v0, %lo(D_800E6E20)($at)
    /* 8B674 8009AE74 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B678 8009AE78 00000000 */  nop
    /* 8B67C 8009AE7C FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B680 8009AE80 80100300 */  sll        $v0, $v1, 2
    /* 8B684 8009AE84 21104300 */  addu       $v0, $v0, $v1
    /* 8B688 8009AE88 80100200 */  sll        $v0, $v0, 2
    /* 8B68C 8009AE8C 21104300 */  addu       $v0, $v0, $v1
    /* 8B690 8009AE90 80100200 */  sll        $v0, $v0, 2
    /* 8B694 8009AE94 21106202 */  addu       $v0, $s3, $v0
    /* 8B698 8009AE98 0D80013C */  lui        $at, %hi(D_800CB436)
    /* 8B69C 8009AE9C 21082200 */  addu       $at, $at, $v0
    /* 8B6A0 8009AEA0 36B42294 */  lhu        $v0, %lo(D_800CB436)($at)
    /* 8B6A4 8009AEA4 0E80013C */  lui        $at, %hi(D_800E6E22)
    /* 8B6A8 8009AEA8 21083000 */  addu       $at, $at, $s0
    /* 8B6AC 8009AEAC 226E22A4 */  sh         $v0, %lo(D_800E6E22)($at)
    /* 8B6B0 8009AEB0 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B6B4 8009AEB4 00000000 */  nop
    /* 8B6B8 8009AEB8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B6BC 8009AEBC 80100300 */  sll        $v0, $v1, 2
    /* 8B6C0 8009AEC0 21104300 */  addu       $v0, $v0, $v1
    /* 8B6C4 8009AEC4 80100200 */  sll        $v0, $v0, 2
    /* 8B6C8 8009AEC8 21104300 */  addu       $v0, $v0, $v1
    /* 8B6CC 8009AECC 80100200 */  sll        $v0, $v0, 2
    /* 8B6D0 8009AED0 466C0208 */  j          .L8009B118
    /* 8B6D4 8009AED4 21106202 */   addu      $v0, $s3, $v0
  .L8009AED8:
    /* 8B6D8 8009AED8 0E00222A */  slti       $v0, $s1, 0xE
    /* 8B6DC 8009AEDC 30004010 */  beqz       $v0, .L8009AFA0
    /* 8B6E0 8009AEE0 00000000 */   nop
    /* 8B6E4 8009AEE4 0E80013C */  lui        $at, %hi(D_800E6E2C)
    /* 8B6E8 8009AEE8 21083000 */  addu       $at, $at, $s0
    /* 8B6EC 8009AEEC 2C6E20A0 */  sb         $zero, %lo(D_800E6E2C)($at)
    /* 8B6F0 8009AEF0 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B6F4 8009AEF4 00000000 */  nop
    /* 8B6F8 8009AEF8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B6FC 8009AEFC 80100300 */  sll        $v0, $v1, 2
    /* 8B700 8009AF00 21104300 */  addu       $v0, $v0, $v1
    /* 8B704 8009AF04 80100200 */  sll        $v0, $v0, 2
    /* 8B708 8009AF08 21104300 */  addu       $v0, $v0, $v1
    /* 8B70C 8009AF0C 80100200 */  sll        $v0, $v0, 2
    /* 8B710 8009AF10 21104202 */  addu       $v0, $s2, $v0
    /* 8B714 8009AF14 0D80013C */  lui        $at, %hi(D_800CB434)
    /* 8B718 8009AF18 21082200 */  addu       $at, $at, $v0
    /* 8B71C 8009AF1C 34B42294 */  lhu        $v0, %lo(D_800CB434)($at)
    /* 8B720 8009AF20 0E80013C */  lui        $at, %hi(D_800E6E20)
    /* 8B724 8009AF24 21083000 */  addu       $at, $at, $s0
    /* 8B728 8009AF28 206E22A4 */  sh         $v0, %lo(D_800E6E20)($at)
    /* 8B72C 8009AF2C E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B730 8009AF30 00000000 */  nop
    /* 8B734 8009AF34 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B738 8009AF38 80100300 */  sll        $v0, $v1, 2
    /* 8B73C 8009AF3C 21104300 */  addu       $v0, $v0, $v1
    /* 8B740 8009AF40 80100200 */  sll        $v0, $v0, 2
    /* 8B744 8009AF44 21104300 */  addu       $v0, $v0, $v1
    /* 8B748 8009AF48 80100200 */  sll        $v0, $v0, 2
    /* 8B74C 8009AF4C 21104202 */  addu       $v0, $s2, $v0
    /* 8B750 8009AF50 0D80013C */  lui        $at, %hi(D_800CB436)
    /* 8B754 8009AF54 21082200 */  addu       $at, $at, $v0
    /* 8B758 8009AF58 36B42294 */  lhu        $v0, %lo(D_800CB436)($at)
    /* 8B75C 8009AF5C 0E80013C */  lui        $at, %hi(D_800E6E22)
    /* 8B760 8009AF60 21083000 */  addu       $at, $at, $s0
    /* 8B764 8009AF64 226E22A4 */  sh         $v0, %lo(D_800E6E22)($at)
    /* 8B768 8009AF68 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B76C 8009AF6C 00000000 */  nop
    /* 8B770 8009AF70 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B774 8009AF74 80100300 */  sll        $v0, $v1, 2
    /* 8B778 8009AF78 21104300 */  addu       $v0, $v0, $v1
    /* 8B77C 8009AF7C 80100200 */  sll        $v0, $v0, 2
    /* 8B780 8009AF80 21104300 */  addu       $v0, $v0, $v1
    /* 8B784 8009AF84 80100200 */  sll        $v0, $v0, 2
    /* 8B788 8009AF88 21104202 */  addu       $v0, $s2, $v0
    /* 8B78C 8009AF8C 0D80013C */  lui        $at, %hi(D_800CB438)
    /* 8B790 8009AF90 21082200 */  addu       $at, $at, $v0
    /* 8B794 8009AF94 38B42294 */  lhu        $v0, %lo(D_800CB438)($at)
    /* 8B798 8009AF98 496C0208 */  j          .L8009B124
    /* 8B79C 8009AF9C 23100200 */   negu      $v0, $v0
  .L8009AFA0:
    /* 8B7A0 8009AFA0 1500222A */  slti       $v0, $s1, 0x15
    /* 8B7A4 8009AFA4 2E004010 */  beqz       $v0, .L8009B060
    /* 8B7A8 8009AFA8 00000000 */   nop
    /* 8B7AC 8009AFAC AE79000C */  jal        func_8001E6B8
    /* 8B7B0 8009AFB0 02000424 */   addiu     $a0, $zero, 0x2
    /* 8B7B4 8009AFB4 0E80013C */  lui        $at, %hi(D_800E6E2C)
    /* 8B7B8 8009AFB8 21083000 */  addu       $at, $at, $s0
    /* 8B7BC 8009AFBC 2C6E22A0 */  sb         $v0, %lo(D_800E6E2C)($at)
    /* 8B7C0 8009AFC0 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B7C4 8009AFC4 00000000 */  nop
    /* 8B7C8 8009AFC8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B7CC 8009AFCC 80100300 */  sll        $v0, $v1, 2
    /* 8B7D0 8009AFD0 21104300 */  addu       $v0, $v0, $v1
    /* 8B7D4 8009AFD4 80100200 */  sll        $v0, $v0, 2
    /* 8B7D8 8009AFD8 21104300 */  addu       $v0, $v0, $v1
    /* 8B7DC 8009AFDC 80100200 */  sll        $v0, $v0, 2
    /* 8B7E0 8009AFE0 21104202 */  addu       $v0, $s2, $v0
    /* 8B7E4 8009AFE4 0D80013C */  lui        $at, %hi(D_800CB434)
    /* 8B7E8 8009AFE8 21082200 */  addu       $at, $at, $v0
    /* 8B7EC 8009AFEC 34B42294 */  lhu        $v0, %lo(D_800CB434)($at)
    /* 8B7F0 8009AFF0 0E80013C */  lui        $at, %hi(D_800E6E20)
    /* 8B7F4 8009AFF4 21083000 */  addu       $at, $at, $s0
    /* 8B7F8 8009AFF8 206E22A4 */  sh         $v0, %lo(D_800E6E20)($at)
    /* 8B7FC 8009AFFC E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B800 8009B000 00000000 */  nop
    /* 8B804 8009B004 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B808 8009B008 80100300 */  sll        $v0, $v1, 2
    /* 8B80C 8009B00C 21104300 */  addu       $v0, $v0, $v1
    /* 8B810 8009B010 80100200 */  sll        $v0, $v0, 2
    /* 8B814 8009B014 21104300 */  addu       $v0, $v0, $v1
    /* 8B818 8009B018 80100200 */  sll        $v0, $v0, 2
    /* 8B81C 8009B01C 21104202 */  addu       $v0, $s2, $v0
    /* 8B820 8009B020 0D80013C */  lui        $at, %hi(D_800CB436)
    /* 8B824 8009B024 21082200 */  addu       $at, $at, $v0
    /* 8B828 8009B028 36B42294 */  lhu        $v0, %lo(D_800CB436)($at)
    /* 8B82C 8009B02C 0E80013C */  lui        $at, %hi(D_800E6E22)
    /* 8B830 8009B030 21083000 */  addu       $at, $at, $s0
    /* 8B834 8009B034 226E22A4 */  sh         $v0, %lo(D_800E6E22)($at)
    /* 8B838 8009B038 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B83C 8009B03C 00000000 */  nop
    /* 8B840 8009B040 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B844 8009B044 80100300 */  sll        $v0, $v1, 2
    /* 8B848 8009B048 21104300 */  addu       $v0, $v0, $v1
    /* 8B84C 8009B04C 80100200 */  sll        $v0, $v0, 2
    /* 8B850 8009B050 21104300 */  addu       $v0, $v0, $v1
    /* 8B854 8009B054 80100200 */  sll        $v0, $v0, 2
    /* 8B858 8009B058 466C0208 */  j          .L8009B118
    /* 8B85C 8009B05C 21104202 */   addu      $v0, $s2, $v0
  .L8009B060:
    /* 8B860 8009B060 AE79000C */  jal        func_8001E6B8
    /* 8B864 8009B064 02000424 */   addiu     $a0, $zero, 0x2
    /* 8B868 8009B068 0E80013C */  lui        $at, %hi(D_800E6E2C)
    /* 8B86C 8009B06C 21083000 */  addu       $at, $at, $s0
    /* 8B870 8009B070 2C6E22A0 */  sb         $v0, %lo(D_800E6E2C)($at)
    /* 8B874 8009B074 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B878 8009B078 00000000 */  nop
    /* 8B87C 8009B07C FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B880 8009B080 80100300 */  sll        $v0, $v1, 2
    /* 8B884 8009B084 21104300 */  addu       $v0, $v0, $v1
    /* 8B888 8009B088 80100200 */  sll        $v0, $v0, 2
    /* 8B88C 8009B08C 21104300 */  addu       $v0, $v0, $v1
    /* 8B890 8009B090 80100200 */  sll        $v0, $v0, 2
    /* 8B894 8009B094 21108202 */  addu       $v0, $s4, $v0
    /* 8B898 8009B098 0D80013C */  lui        $at, %hi(D_800CB434)
    /* 8B89C 8009B09C 21082200 */  addu       $at, $at, $v0
    /* 8B8A0 8009B0A0 34B42294 */  lhu        $v0, %lo(D_800CB434)($at)
    /* 8B8A4 8009B0A4 00000000 */  nop
    /* 8B8A8 8009B0A8 23100200 */  negu       $v0, $v0
    /* 8B8AC 8009B0AC 0E80013C */  lui        $at, %hi(D_800E6E20)
    /* 8B8B0 8009B0B0 21083000 */  addu       $at, $at, $s0
    /* 8B8B4 8009B0B4 206E22A4 */  sh         $v0, %lo(D_800E6E20)($at)
    /* 8B8B8 8009B0B8 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B8BC 8009B0BC 00000000 */  nop
    /* 8B8C0 8009B0C0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B8C4 8009B0C4 80100300 */  sll        $v0, $v1, 2
    /* 8B8C8 8009B0C8 21104300 */  addu       $v0, $v0, $v1
    /* 8B8CC 8009B0CC 80100200 */  sll        $v0, $v0, 2
    /* 8B8D0 8009B0D0 21104300 */  addu       $v0, $v0, $v1
    /* 8B8D4 8009B0D4 80100200 */  sll        $v0, $v0, 2
    /* 8B8D8 8009B0D8 21108202 */  addu       $v0, $s4, $v0
    /* 8B8DC 8009B0DC 0D80013C */  lui        $at, %hi(D_800CB436)
    /* 8B8E0 8009B0E0 21082200 */  addu       $at, $at, $v0
    /* 8B8E4 8009B0E4 36B42294 */  lhu        $v0, %lo(D_800CB436)($at)
    /* 8B8E8 8009B0E8 0E80013C */  lui        $at, %hi(D_800E6E22)
    /* 8B8EC 8009B0EC 21083000 */  addu       $at, $at, $s0
    /* 8B8F0 8009B0F0 226E22A4 */  sh         $v0, %lo(D_800E6E22)($at)
    /* 8B8F4 8009B0F4 E302C392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8B8F8 8009B0F8 00000000 */  nop
    /* 8B8FC 8009B0FC FF006330 */  andi       $v1, $v1, 0xFF
    /* 8B900 8009B100 80100300 */  sll        $v0, $v1, 2
    /* 8B904 8009B104 21104300 */  addu       $v0, $v0, $v1
    /* 8B908 8009B108 80100200 */  sll        $v0, $v0, 2
    /* 8B90C 8009B10C 21104300 */  addu       $v0, $v0, $v1
    /* 8B910 8009B110 80100200 */  sll        $v0, $v0, 2
    /* 8B914 8009B114 21108202 */  addu       $v0, $s4, $v0
  .L8009B118:
    /* 8B918 8009B118 0D80013C */  lui        $at, %hi(D_800CB438)
    /* 8B91C 8009B11C 21082200 */  addu       $at, $at, $v0
    /* 8B920 8009B120 38B42294 */  lhu        $v0, %lo(D_800CB438)($at)
  .L8009B124:
    /* 8B924 8009B124 0E80013C */  lui        $at, %hi(D_800E6E24)
    /* 8B928 8009B128 21083000 */  addu       $at, $at, $s0
    /* 8B92C 8009B12C 246E22A4 */  sh         $v0, %lo(D_800E6E24)($at)
    /* 8B930 8009B130 02002106 */  bgez       $s1, .L8009B13C
    /* 8B934 8009B134 21102002 */   addu      $v0, $s1, $zero
    /* 8B938 8009B138 03002226 */  addiu      $v0, $s1, 0x3
  .L8009B13C:
    /* 8B93C 8009B13C 83100200 */  sra        $v0, $v0, 2
    /* 8B940 8009B140 80100200 */  sll        $v0, $v0, 2
    /* 8B944 8009B144 23182202 */  subu       $v1, $s1, $v0
    /* 8B948 8009B148 0700622C */  sltiu      $v0, $v1, 0x7
    /* 8B94C 8009B14C 18004010 */  beqz       $v0, .L8009B1B0
    /* 8B950 8009B150 80100300 */   sll       $v0, $v1, 2
    /* 8B954 8009B154 0180013C */  lui        $at, %hi(jtbl_800141E4)
    /* 8B958 8009B158 21082200 */  addu       $at, $at, $v0
    /* 8B95C 8009B15C E441228C */  lw         $v0, %lo(jtbl_800141E4)($at)
    /* 8B960 8009B160 00000000 */  nop
    /* 8B964 8009B164 08004000 */  jr         $v0
    /* 8B968 8009B168 00000000 */   nop
  jlabel .L8009B16C
    /* 8B96C 8009B16C 0D80023C */  lui        $v0, %hi(D_800CAA7B)
    /* 8B970 8009B170 7BAA4224 */  addiu      $v0, $v0, %lo(D_800CAA7B)
    /* 8B974 8009B174 696C0208 */  j          .L8009B1A4
    /* 8B978 8009B178 00000000 */   nop
  jlabel .L8009B17C
    /* 8B97C 8009B17C 0D80023C */  lui        $v0, %hi(D_800CAA7C)
    /* 8B980 8009B180 7CAA4224 */  addiu      $v0, $v0, %lo(D_800CAA7C)
    /* 8B984 8009B184 696C0208 */  j          .L8009B1A4
    /* 8B988 8009B188 00000000 */   nop
  jlabel .L8009B18C
    /* 8B98C 8009B18C 0D80023C */  lui        $v0, %hi(D_800CAA7C + 0x1)
    /* 8B990 8009B190 7DAA4224 */  addiu      $v0, $v0, %lo(D_800CAA7C + 0x1)
    /* 8B994 8009B194 696C0208 */  j          .L8009B1A4
    /* 8B998 8009B198 00000000 */   nop
  jlabel .L8009B19C
    /* 8B99C 8009B19C 0D80023C */  lui        $v0, %hi(D_800CAA7C + 0x2)
    /* 8B9A0 8009B1A0 7EAA4224 */  addiu      $v0, $v0, %lo(D_800CAA7C + 0x2)
  .L8009B1A4:
    /* 8B9A4 8009B1A4 0E80013C */  lui        $at, %hi(D_800E6E28)
    /* 8B9A8 8009B1A8 21083000 */  addu       $at, $at, $s0
    /* 8B9AC 8009B1AC 286E22AC */  sw         $v0, %lo(D_800E6E28)($at)
  .L8009B1B0:
    /* 8B9B0 8009B1B0 AE79000C */  jal        func_8001E6B8
    /* 8B9B4 8009B1B4 03000424 */   addiu     $a0, $zero, 0x3
    /* 8B9B8 8009B1B8 03004014 */  bnez       $v0, .L8009B1C8
    /* 8B9BC 8009B1BC 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B9C0 8009B1C0 736C0208 */  j          .L8009B1CC
    /* 8B9C4 8009B1C4 0000A0A2 */   sb        $zero, 0x0($s5)
  .L8009B1C8:
    /* 8B9C8 8009B1C8 0000A2A2 */  sb         $v0, 0x0($s5)
  .L8009B1CC:
    /* 8B9CC 8009B1CC 1000B526 */  addiu      $s5, $s5, 0x10
    /* 8B9D0 8009B1D0 10001026 */  addiu      $s0, $s0, 0x10
    /* 8B9D4 8009B1D4 06009426 */  addiu      $s4, $s4, 0x6
    /* 8B9D8 8009B1D8 06005226 */  addiu      $s2, $s2, 0x6
    /* 8B9DC 8009B1DC 01003126 */  addiu      $s1, $s1, 0x1
    /* 8B9E0 8009B1E0 1C00222A */  slti       $v0, $s1, 0x1C
    /* 8B9E4 8009B1E4 0EFF4014 */  bnez       $v0, .L8009AE20
    /* 8B9E8 8009B1E8 06007326 */   addiu     $s3, $s3, 0x6
    /* 8B9EC 8009B1EC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 8B9F0 8009B1F0 01001E24 */  addiu      $fp, $zero, 0x1
    /* 8B9F4 8009B1F4 78001324 */  addiu      $s3, $zero, 0x78
    /* 8B9F8 8009B1F8 90001224 */  addiu      $s2, $zero, 0x90
    /* 8B9FC 8009B1FC 21B80000 */  addu       $s7, $zero, $zero
  .L8009B200:
    /* 8BA00 8009B200 21880000 */  addu       $s1, $zero, $zero
    /* 8BA04 8009B204 21A80000 */  addu       $s5, $zero, $zero
    /* 8BA08 8009B208 60361424 */  addiu      $s4, $zero, 0x3660
  .L8009B20C:
    /* 8BA0C 8009B20C 9001C28E */  lw         $v0, (0x1F800190 & 0xFFFF)($s6)
    /* 8BA10 8009B210 00000000 */  nop
    /* 8BA14 8009B214 21105700 */  addu       $v0, $v0, $s7
    /* 8BA18 8009B218 21805400 */  addu       $s0, $v0, $s4
    /* 8BA1C 8009B21C 5BB7020C */  jal        func_800ADD6C
    /* 8BA20 8009B220 21200002 */   addu      $a0, $s0, $zero
    /* 8BA24 8009B224 21200002 */  addu       $a0, $s0, $zero
    /* 8BA28 8009B228 2EB7020C */  jal        func_800ADCB8
    /* 8BA2C 8009B22C 21280000 */   addu      $a1, $zero, $zero
    /* 8BA30 8009B230 01000424 */  addiu      $a0, $zero, 0x1
    /* 8BA34 8009B234 21280000 */  addu       $a1, $zero, $zero
    /* 8BA38 8009B238 80020624 */  addiu      $a2, $zero, 0x280
    /* 8BA3C 8009B23C B6B6020C */  jal        func_800ADAD8
    /* 8BA40 8009B240 00010724 */   addiu     $a3, $zero, 0x100
    /* 8BA44 8009B244 160002A6 */  sh         $v0, 0x16($s0)
    /* 8BA48 8009B248 0E80013C */  lui        $at, %hi(D_800E6E2C)
    /* 8BA4C 8009B24C 21083500 */  addu       $at, $at, $s5
    /* 8BA50 8009B250 2C6E2290 */  lbu        $v0, %lo(D_800E6E2C)($at)
    /* 8BA54 8009B254 00000000 */  nop
    /* 8BA58 8009B258 03004010 */  beqz       $v0, .L8009B268
    /* 8BA5C 8009B25C 21200000 */   addu      $a0, $zero, $zero
    /* 8BA60 8009B260 9B6C0208 */  j          .L8009B26C
    /* 8BA64 8009B264 FB010524 */   addiu     $a1, $zero, 0x1FB
  .L8009B268:
    /* 8BA68 8009B268 FA010524 */  addiu      $a1, $zero, 0x1FA
  .L8009B26C:
    /* 8BA6C 8009B26C C5B6020C */  jal        func_800ADB14
    /* 8BA70 8009B270 00000000 */   nop
    /* 8BA74 8009B274 0E0002A6 */  sh         $v0, 0xE($s0)
    /* 8BA78 8009B278 E302C292 */  lbu        $v0, (0x1F8002E3 & 0xFFFF)($s6)
    /* 8BA7C 8009B27C 00000000 */  nop
    /* 8BA80 8009B280 FF004330 */  andi       $v1, $v0, 0xFF
    /* 8BA84 8009B284 0600622C */  sltiu      $v0, $v1, 0x6
    /* 8BA88 8009B288 20004010 */  beqz       $v0, .L8009B30C
    /* 8BA8C 8009B28C 80100300 */   sll       $v0, $v1, 2
    /* 8BA90 8009B290 0180013C */  lui        $at, %hi(jtbl_80014204)
    /* 8BA94 8009B294 21082200 */  addu       $at, $at, $v0
    /* 8BA98 8009B298 0442228C */  lw         $v0, %lo(jtbl_80014204)($at)
    /* 8BA9C 8009B29C 00000000 */  nop
    /* 8BAA0 8009B2A0 08004000 */  jr         $v0
    /* 8BAA4 8009B2A4 00000000 */   nop
  jlabel .L8009B2A8
    /* 8BAA8 8009B2A8 E502C292 */  lbu        $v0, 0x2E5($s6)
    /* 8BAAC 8009B2AC 00000000 */  nop
    /* 8BAB0 8009B2B0 07005E10 */  beq        $v0, $fp, .L8009B2D0
    /* 8BAB4 8009B2B4 80000224 */   addiu     $v0, $zero, 0x80
    /* 8BAB8 8009B2B8 C16C0208 */  j          .L8009B304
    /* 8BABC 8009B2BC 040002A2 */   sb        $v0, 0x4($s0)
  jlabel .L8009B2C0
    /* 8BAC0 8009B2C0 E502C292 */  lbu        $v0, 0x2E5($s6)
    /* 8BAC4 8009B2C4 00000000 */  nop
    /* 8BAC8 8009B2C8 0D005E14 */  bne        $v0, $fp, .L8009B300
    /* 8BACC 8009B2CC 70000224 */   addiu     $v0, $zero, 0x70
  .L8009B2D0:
    /* 8BAD0 8009B2D0 040013A2 */  sb         $s3, 0x4($s0)
    /* 8BAD4 8009B2D4 050013A2 */  sb         $s3, 0x5($s0)
    /* 8BAD8 8009B2D8 C36C0208 */  j          .L8009B30C
    /* 8BADC 8009B2DC 060013A2 */   sb        $s3, 0x6($s0)
  jlabel .L8009B2E0
    /* 8BAE0 8009B2E0 E502C292 */  lbu        $v0, 0x2E5($s6)
    /* 8BAE4 8009B2E4 00000000 */  nop
    /* 8BAE8 8009B2E8 05005E14 */  bne        $v0, $fp, .L8009B300
    /* 8BAEC 8009B2EC 98000224 */   addiu     $v0, $zero, 0x98
  jlabel .L8009B2F0
    /* 8BAF0 8009B2F0 040012A2 */  sb         $s2, 0x4($s0)
    /* 8BAF4 8009B2F4 050012A2 */  sb         $s2, 0x5($s0)
    /* 8BAF8 8009B2F8 C36C0208 */  j          .L8009B30C
    /* 8BAFC 8009B2FC 060012A2 */   sb        $s2, 0x6($s0)
  .L8009B300:
    /* 8BB00 8009B300 040002A2 */  sb         $v0, 0x4($s0)
  .L8009B304:
    /* 8BB04 8009B304 050002A2 */  sb         $v0, 0x5($s0)
    /* 8BB08 8009B308 060002A2 */  sb         $v0, 0x6($s0)
  .L8009B30C:
    /* 8BB0C 8009B30C 1000B526 */  addiu      $s5, $s5, 0x10
    /* 8BB10 8009B310 01003126 */  addiu      $s1, $s1, 0x1
    /* 8BB14 8009B314 1C00222A */  slti       $v0, $s1, 0x1C
    /* 8BB18 8009B318 BCFF4014 */  bnez       $v0, .L8009B20C
    /* 8BB1C 8009B31C 28009426 */   addiu     $s4, $s4, 0x28
    /* 8BB20 8009B320 1000A88F */  lw         $t0, 0x10($sp)
    /* 8BB24 8009B324 C03AF726 */  addiu      $s7, $s7, 0x3AC0
    /* 8BB28 8009B328 01000825 */  addiu      $t0, $t0, 0x1
    /* 8BB2C 8009B32C 02000229 */  slti       $v0, $t0, 0x2
    /* 8BB30 8009B330 B3FF4014 */  bnez       $v0, .L8009B200
    /* 8BB34 8009B334 1000A8AF */   sw        $t0, 0x10($sp)
    /* 8BB38 8009B338 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 8BB3C 8009B33C 3800BE8F */  lw         $fp, 0x38($sp)
    /* 8BB40 8009B340 3400B78F */  lw         $s7, 0x34($sp)
    /* 8BB44 8009B344 3000B68F */  lw         $s6, 0x30($sp)
    /* 8BB48 8009B348 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 8BB4C 8009B34C 2800B48F */  lw         $s4, 0x28($sp)
    /* 8BB50 8009B350 2400B38F */  lw         $s3, 0x24($sp)
    /* 8BB54 8009B354 2000B28F */  lw         $s2, 0x20($sp)
    /* 8BB58 8009B358 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8BB5C 8009B35C 1800B08F */  lw         $s0, 0x18($sp)
    /* 8BB60 8009B360 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 8BB64 8009B364 0800E003 */  jr         $ra
    /* 8BB68 8009B368 00000000 */   nop
endlabel func_8009ADD4
