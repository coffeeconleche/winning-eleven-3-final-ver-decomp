nonmatching func_8005ADE4, 0x588

glabel func_8005ADE4
    /* 4B5E4 8005ADE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4B5E8 8005ADE8 10800D3C */  lui        $t5, %hi(D_800FF748)
    /* 4B5EC 8005ADEC 48F7AD25 */  addiu      $t5, $t5, %lo(D_800FF748)
    /* 4B5F0 8005ADF0 801F193C */  lui        $t9, (0x1F8002FD >> 16)
    /* 4B5F4 8005ADF4 21580000 */  addu       $t3, $zero, $zero
    /* 4B5F8 8005ADF8 0E800F3C */  lui        $t7, %hi(D_800E6C70)
    /* 4B5FC 8005ADFC 706CEF25 */  addiu      $t7, $t7, %lo(D_800E6C70)
    /* 4B600 8005AE00 0D800E3C */  lui        $t6, %hi(D_800C81F4)
    /* 4B604 8005AE04 F481CE25 */  addiu      $t6, $t6, %lo(D_800C81F4)
    /* 4B608 8005AE08 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4B60C 8005AE0C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4B610 8005AE10 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4B614 8005AE14 1000B0AF */  sw         $s0, 0x10($sp)
  .L8005AE18:
    /* 4B618 8005AE18 21300000 */  addu       $a2, $zero, $zero
    /* 4B61C 8005AE1C FF006931 */  andi       $t1, $t3, 0xFF
    /* 4B620 8005AE20 00110900 */  sll        $v0, $t1, 4
    /* 4B624 8005AE24 23104900 */  subu       $v0, $v0, $t1
    /* 4B628 8005AE28 40600200 */  sll        $t4, $v0, 1
  .L8005AE2C:
    /* 4B62C 8005AE2C 21280000 */  addu       $a1, $zero, $zero
    /* 4B630 8005AE30 21208F01 */  addu       $a0, $t4, $t7
    /* 4B634 8005AE34 FF00C330 */  andi       $v1, $a2, 0xFF
    /* 4B638 8005AE38 80100300 */  sll        $v0, $v1, 2
    /* 4B63C 8005AE3C 21104300 */  addu       $v0, $v0, $v1
    /* 4B640 8005AE40 40380200 */  sll        $a3, $v0, 1
    /* 4B644 8005AE44 2150E400 */  addu       $t2, $a3, $a0
    /* 4B648 8005AE48 21402903 */  addu       $t0, $t9, $t1
  .L8005AE4C:
    /* 4B64C 8005AE4C FF00A430 */  andi       $a0, $a1, 0xFF
    /* 4B650 8005AE50 FD020391 */  lbu        $v1, (0x1F8002FD & 0xFFFF)($t0)
    /* 4B654 8005AE54 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4B658 8005AE58 00110300 */  sll        $v0, $v1, 4
    /* 4B65C 8005AE5C 23104300 */  subu       $v0, $v0, $v1
    /* 4B660 8005AE60 40100200 */  sll        $v0, $v0, 1
    /* 4B664 8005AE64 21104E00 */  addu       $v0, $v0, $t6
    /* 4B668 8005AE68 2110E200 */  addu       $v0, $a3, $v0
    /* 4B66C 8005AE6C 21104400 */  addu       $v0, $v0, $a0
    /* 4B670 8005AE70 00004290 */  lbu        $v0, 0x0($v0)
    /* 4B674 8005AE74 21204401 */  addu       $a0, $t2, $a0
    /* 4B678 8005AE78 000082A0 */  sb         $v0, 0x0($a0)
    /* 4B67C 8005AE7C FF00A230 */  andi       $v0, $a1, 0xFF
    /* 4B680 8005AE80 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4B684 8005AE84 F1FF4014 */  bnez       $v0, .L8005AE4C
    /* 4B688 8005AE88 00000000 */   nop
    /* 4B68C 8005AE8C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4B690 8005AE90 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4B694 8005AE94 0300422C */  sltiu      $v0, $v0, 0x3
    /* 4B698 8005AE98 E4FF4014 */  bnez       $v0, .L8005AE2C
    /* 4B69C 8005AE9C 00000000 */   nop
    /* 4B6A0 8005AEA0 01006B25 */  addiu      $t3, $t3, 0x1
    /* 4B6A4 8005AEA4 FF006231 */  andi       $v0, $t3, 0xFF
    /* 4B6A8 8005AEA8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4B6AC 8005AEAC DAFF4014 */  bnez       $v0, .L8005AE18
    /* 4B6B0 8005AEB0 E803A925 */   addiu     $t1, $t5, 0x3E8
    /* 4B6B4 8005AEB4 21580000 */  addu       $t3, $zero, $zero
    /* 4B6B8 8005AEB8 2EBA0E3C */  lui        $t6, (0xBA2E8BA3 >> 16)
    /* 4B6BC 8005AEBC A38BCE35 */  ori        $t6, $t6, (0xBA2E8BA3 & 0xFFFF)
    /* 4B6C0 8005AEC0 0D800A3C */  lui        $t2, %hi(D_800C8118)
    /* 4B6C4 8005AEC4 18814A25 */  addiu      $t2, $t2, %lo(D_800C8118)
    /* 4B6C8 8005AEC8 E3AB0C34 */  ori        $t4, $zero, 0xABE3
    /* 4B6CC 8005AECC 7907A425 */  addiu      $a0, $t5, 0x779
  .L8005AED0:
    /* 4B6D0 8005AED0 FF006231 */  andi       $v0, $t3, 0xFF
    /* 4B6D4 8005AED4 19004E00 */  multu      $v0, $t6
    /* 4B6D8 8005AED8 E0022393 */  lbu        $v1, (0x1F8002E0 & 0xFFFF)($t9)
    /* 4B6DC 8005AEDC 10980000 */  mfhi       $s3
    /* 4B6E0 8005AEE0 C2101300 */  srl        $v0, $s3, 3
    /* 4B6E4 8005AEE4 26406200 */  xor        $t0, $v1, $v0
    /* 4B6E8 8005AEE8 FCFF8390 */  lbu        $v1, -0x4($a0)
    /* 4B6EC 8005AEEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 4B6F0 8005AEF0 25006210 */  beq        $v1, $v0, .L8005AF88
    /* 4B6F4 8005AEF4 0C000224 */   addiu     $v0, $zero, 0xC
    /* 4B6F8 8005AEF8 23006210 */  beq        $v1, $v0, .L8005AF88
    /* 4B6FC 8005AEFC 00000000 */   nop
    /* 4B700 8005AF00 00002291 */  lbu        $v0, 0x0($t1)
    /* 4B704 8005AF04 00000000 */  nop
    /* 4B708 8005AF08 1F004010 */  beqz       $v0, .L8005AF88
    /* 4B70C 8005AF0C FF000331 */   andi      $v1, $t0, 0xFF
    /* 4B710 8005AF10 21300000 */  addu       $a2, $zero, $zero
    /* 4B714 8005AF14 21382303 */  addu       $a3, $t9, $v1
    /* 4B718 8005AF18 40100300 */  sll        $v0, $v1, 1
    /* 4B71C 8005AF1C 21104300 */  addu       $v0, $v0, $v1
    /* 4B720 8005AF20 80100200 */  sll        $v0, $v0, 2
    /* 4B724 8005AF24 21104300 */  addu       $v0, $v0, $v1
    /* 4B728 8005AF28 40100200 */  sll        $v0, $v0, 1
    /* 4B72C 8005AF2C 21104D00 */  addu       $v0, $v0, $t5
    /* 4B730 8005AF30 21284C00 */  addu       $a1, $v0, $t4
  .L8005AF34:
    /* 4B734 8005AF34 FD02E390 */  lbu        $v1, (0x1F8002FD & 0xFFFF)($a3)
    /* 4B738 8005AF38 00000000 */  nop
    /* 4B73C 8005AF3C 40100300 */  sll        $v0, $v1, 1
    /* 4B740 8005AF40 21104300 */  addu       $v0, $v0, $v1
    /* 4B744 8005AF44 80100200 */  sll        $v0, $v0, 2
    /* 4B748 8005AF48 23104300 */  subu       $v0, $v0, $v1
    /* 4B74C 8005AF4C 21104A00 */  addu       $v0, $v0, $t2
    /* 4B750 8005AF50 FF00C330 */  andi       $v1, $a2, 0xFF
    /* 4B754 8005AF54 21104300 */  addu       $v0, $v0, $v1
    /* 4B758 8005AF58 00008390 */  lbu        $v1, 0x0($a0)
    /* 4B75C 8005AF5C 00004290 */  lbu        $v0, 0x0($v0)
    /* 4B760 8005AF60 00000000 */  nop
    /* 4B764 8005AF64 03006214 */  bne        $v1, $v0, .L8005AF74
    /* 4B768 8005AF68 2110A300 */   addu      $v0, $a1, $v1
    /* 4B76C 8005AF6C E26B0108 */  j          .L8005AF88
    /* 4B770 8005AF70 000046A0 */   sb        $a2, 0x0($v0)
  .L8005AF74:
    /* 4B774 8005AF74 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4B778 8005AF78 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4B77C 8005AF7C 0B00422C */  sltiu      $v0, $v0, 0xB
    /* 4B780 8005AF80 ECFF4014 */  bnez       $v0, .L8005AF34
    /* 4B784 8005AF84 00000000 */   nop
  .L8005AF88:
    /* 4B788 8005AF88 01006B25 */  addiu      $t3, $t3, 0x1
    /* 4B78C 8005AF8C E8038424 */  addiu      $a0, $a0, 0x3E8
    /* 4B790 8005AF90 FF006231 */  andi       $v0, $t3, 0xFF
    /* 4B794 8005AF94 1600422C */  sltiu      $v0, $v0, 0x16
    /* 4B798 8005AF98 CDFF4014 */  bnez       $v0, .L8005AED0
    /* 4B79C 8005AF9C E8032925 */   addiu     $t1, $t1, 0x3E8
    /* 4B7A0 8005AFA0 21580000 */  addu       $t3, $zero, $zero
    /* 4B7A4 8005AFA4 DCAB1834 */  ori        $t8, $zero, 0xABDC
    /* 4B7A8 8005AFA8 0E80113C */  lui        $s1, %hi(D_800E6C70)
    /* 4B7AC 8005AFAC 706C3126 */  addiu      $s1, $s1, %lo(D_800E6C70)
    /* 4B7B0 8005AFB0 0D80123C */  lui        $s2, %hi(D_800C844C)
    /* 4B7B4 8005AFB4 4C845226 */  addiu      $s2, $s2, %lo(D_800C844C)
    /* 4B7B8 8005AFB8 16001024 */  addiu      $s0, $zero, 0x16
    /* 4B7BC 8005AFBC 01000C24 */  addiu      $t4, $zero, 0x1
    /* 4B7C0 8005AFC0 E3AB0F34 */  ori        $t7, $zero, 0xABE3
    /* 4B7C4 8005AFC4 17000E24 */  addiu      $t6, $zero, 0x17
    /* 4B7C8 8005AFC8 FF006231 */  andi       $v0, $t3, 0xFF
  .L8005AFCC:
    /* 4B7CC 8005AFCC 02004014 */  bnez       $v0, .L8005AFD8
    /* 4B7D0 8005AFD0 C832A925 */   addiu     $t1, $t5, 0x32C8
    /* 4B7D4 8005AFD4 D007A925 */  addiu      $t1, $t5, 0x7D0
  .L8005AFD8:
    /* 4B7D8 8005AFD8 98032891 */  lbu        $t0, 0x398($t1)
    /* 4B7DC 8005AFDC 00000000 */  nop
    /* 4B7E0 8005AFE0 25101901 */  or         $v0, $t0, $t9
    /* 4B7E4 8005AFE4 FD024390 */  lbu        $v1, (0x1F8002FD & 0xFFFF)($v0)
    /* 4B7E8 8005AFE8 00000000 */  nop
    /* 4B7EC 8005AFEC 1400622C */  sltiu      $v0, $v1, 0x14
    /* 4B7F0 8005AFF0 D2004010 */  beqz       $v0, .L8005B33C
    /* 4B7F4 8005AFF4 80100300 */   sll       $v0, $v1, 2
    /* 4B7F8 8005AFF8 0180013C */  lui        $at, %hi(jtbl_80011F58)
    /* 4B7FC 8005AFFC 21082200 */  addu       $at, $at, $v0
    /* 4B800 8005B000 581F228C */  lw         $v0, %lo(jtbl_80011F58)($at)
    /* 4B804 8005B004 00000000 */  nop
    /* 4B808 8005B008 08004000 */  jr         $v0
    /* 4B80C 8005B00C 00000000 */   nop
  jlabel .L8005B010
    /* 4B810 8005B010 FF000331 */  andi       $v1, $t0, 0xFF
    /* 4B814 8005B014 2110A301 */  addu       $v0, $t5, $v1
    /* 4B818 8005B018 21105800 */  addu       $v0, $v0, $t8
    /* 4B81C 8005B01C 00004290 */  lbu        $v0, 0x0($v0)
    /* 4B820 8005B020 00000000 */  nop
    /* 4B824 8005B024 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B828 8005B028 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4B82C 8005B02C 42004010 */  beqz       $v0, .L8005B138
    /* 4B830 8005B030 21300000 */   addu      $a2, $zero, $zero
    /* 4B834 8005B034 00110300 */  sll        $v0, $v1, 4
    /* 4B838 8005B038 23104300 */  subu       $v0, $v0, $v1
    /* 4B83C 8005B03C 40500200 */  sll        $t2, $v0, 1
    /* 4B840 8005B040 21280000 */  addu       $a1, $zero, $zero
  .L8005B044:
    /* 4B844 8005B044 21105101 */  addu       $v0, $t2, $s1
    /* 4B848 8005B048 FF00C330 */  andi       $v1, $a2, 0xFF
    /* 4B84C 8005B04C 80200300 */  sll        $a0, $v1, 2
    /* 4B850 8005B050 21188300 */  addu       $v1, $a0, $v1
    /* 4B854 8005B054 40180300 */  sll        $v1, $v1, 1
    /* 4B858 8005B058 21386200 */  addu       $a3, $v1, $v0
    /* 4B85C 8005B05C 21209200 */  addu       $a0, $a0, $s2
  .L8005B060:
    /* 4B860 8005B060 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 4B864 8005B064 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4B868 8005B068 21108300 */  addu       $v0, $a0, $v1
    /* 4B86C 8005B06C 00004290 */  lbu        $v0, 0x0($v0)
    /* 4B870 8005B070 2118E300 */  addu       $v1, $a3, $v1
    /* 4B874 8005B074 000062A0 */  sb         $v0, 0x0($v1)
    /* 4B878 8005B078 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 4B87C 8005B07C 0400422C */  sltiu      $v0, $v0, 0x4
    /* 4B880 8005B080 F7FF4014 */  bnez       $v0, .L8005B060
    /* 4B884 8005B084 00000000 */   nop
    /* 4B888 8005B088 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4B88C 8005B08C FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4B890 8005B090 0300422C */  sltiu      $v0, $v0, 0x3
    /* 4B894 8005B094 EBFF4014 */  bnez       $v0, .L8005B044
    /* 4B898 8005B098 21280000 */   addu      $a1, $zero, $zero
    /* 4B89C 8005B09C 21300000 */  addu       $a2, $zero, $zero
    /* 4B8A0 8005B0A0 FF000331 */  andi       $v1, $t0, 0xFF
    /* 4B8A4 8005B0A4 2110A301 */  addu       $v0, $t5, $v1
    /* 4B8A8 8005B0A8 21385800 */  addu       $a3, $v0, $t8
    /* 4B8AC 8005B0AC 40100300 */  sll        $v0, $v1, 1
    /* 4B8B0 8005B0B0 21104300 */  addu       $v0, $v0, $v1
    /* 4B8B4 8005B0B4 80100200 */  sll        $v0, $v0, 2
    /* 4B8B8 8005B0B8 21104300 */  addu       $v0, $v0, $v1
    /* 4B8BC 8005B0BC 40100200 */  sll        $v0, $v0, 1
    /* 4B8C0 8005B0C0 21104D00 */  addu       $v0, $v0, $t5
    /* 4B8C4 8005B0C4 21284F00 */  addu       $a1, $v0, $t7
    /* 4B8C8 8005B0C8 91032425 */  addiu      $a0, $t1, 0x391
  .L8005B0CC:
    /* 4B8CC 8005B0CC 00008290 */  lbu        $v0, 0x0($a0)
    /* 4B8D0 8005B0D0 00000000 */  nop
    /* 4B8D4 8005B0D4 0B005014 */  bne        $v0, $s0, .L8005B104
    /* 4B8D8 8005B0D8 00000000 */   nop
    /* 4B8DC 8005B0DC 0000E290 */  lbu        $v0, 0x0($a3)
    /* 4B8E0 8005B0E0 00000000 */  nop
    /* 4B8E4 8005B0E4 02004C14 */  bne        $v0, $t4, .L8005B0F0
    /* 4B8E8 8005B0E8 19000224 */   addiu     $v0, $zero, 0x19
    /* 4B8EC 8005B0EC 18000224 */  addiu      $v0, $zero, 0x18
  .L8005B0F0:
    /* 4B8F0 8005B0F0 000082A0 */  sb         $v0, 0x0($a0)
    /* 4B8F4 8005B0F4 00008290 */  lbu        $v0, 0x0($a0)
    /* 4B8F8 8005B0F8 00000000 */  nop
    /* 4B8FC 8005B0FC 2110A200 */  addu       $v0, $a1, $v0
    /* 4B900 8005B100 00004CA0 */  sb         $t4, 0x0($v0)
  .L8005B104:
    /* 4B904 8005B104 00008390 */  lbu        $v1, 0x0($a0)
    /* 4B908 8005B108 15000224 */  addiu      $v0, $zero, 0x15
    /* 4B90C 8005B10C 03006214 */  bne        $v1, $v0, .L8005B11C
    /* 4B910 8005B110 02000224 */   addiu     $v0, $zero, 0x2
    /* 4B914 8005B114 00008EA0 */  sb         $t6, 0x0($a0)
    /* 4B918 8005B118 1700A2A0 */  sb         $v0, 0x17($a1)
  .L8005B11C:
    /* 4B91C 8005B11C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4B920 8005B120 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4B924 8005B124 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4B928 8005B128 E8FF4014 */  bnez       $v0, .L8005B0CC
    /* 4B92C 8005B12C E8038424 */   addiu     $a0, $a0, 0x3E8
    /* 4B930 8005B130 D06C0108 */  j          .L8005B340
    /* 4B934 8005B134 01006B25 */   addiu     $t3, $t3, 0x1
  .L8005B138:
    /* 4B938 8005B138 40100300 */  sll        $v0, $v1, 1
    /* 4B93C 8005B13C 21104300 */  addu       $v0, $v0, $v1
    /* 4B940 8005B140 80100200 */  sll        $v0, $v0, 2
    /* 4B944 8005B144 21104300 */  addu       $v0, $v0, $v1
    /* 4B948 8005B148 40100200 */  sll        $v0, $v0, 1
    /* 4B94C 8005B14C 21204D00 */  addu       $a0, $v0, $t5
    /* 4B950 8005B150 21288F00 */  addu       $a1, $a0, $t7
    /* 4B954 8005B154 91032325 */  addiu      $v1, $t1, 0x391
  .L8005B158:
    /* 4B958 8005B158 00006290 */  lbu        $v0, 0x0($v1)
    /* 4B95C 8005B15C 00000000 */  nop
    /* 4B960 8005B160 E8FF4224 */  addiu      $v0, $v0, -0x18
    /* 4B964 8005B164 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4B968 8005B168 03004010 */  beqz       $v0, .L8005B178
    /* 4B96C 8005B16C 00000000 */   nop
    /* 4B970 8005B170 000070A0 */  sb         $s0, 0x0($v1)
    /* 4B974 8005B174 1600ACA0 */  sb         $t4, 0x16($a1)
  .L8005B178:
    /* 4B978 8005B178 00006290 */  lbu        $v0, 0x0($v1)
    /* 4B97C 8005B17C 00000000 */  nop
    /* 4B980 8005B180 06004E14 */  bne        $v0, $t6, .L8005B19C
    /* 4B984 8005B184 15000224 */   addiu     $v0, $zero, 0x15
    /* 4B988 8005B188 000062A0 */  sb         $v0, 0x0($v1)
    /* 4B98C 8005B18C 02000224 */  addiu      $v0, $zero, 0x2
    /* 4B990 8005B190 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4B994 8005B194 21088100 */  addu       $at, $a0, $at
    /* 4B998 8005B198 F8AB22A0 */  sb         $v0, -0x5408($at)
  .L8005B19C:
    /* 4B99C 8005B19C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4B9A0 8005B1A0 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4B9A4 8005B1A4 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4B9A8 8005B1A8 EBFF4014 */  bnez       $v0, .L8005B158
    /* 4B9AC 8005B1AC E8036324 */   addiu     $v1, $v1, 0x3E8
    /* 4B9B0 8005B1B0 D06C0108 */  j          .L8005B340
    /* 4B9B4 8005B1B4 01006B25 */   addiu     $t3, $t3, 0x1
  jlabel .L8005B1B8
    /* 4B9B8 8005B1B8 FF000331 */  andi       $v1, $t0, 0xFF
    /* 4B9BC 8005B1BC 2110A301 */  addu       $v0, $t5, $v1
    /* 4B9C0 8005B1C0 21105800 */  addu       $v0, $v0, $t8
    /* 4B9C4 8005B1C4 00004290 */  lbu        $v0, 0x0($v0)
    /* 4B9C8 8005B1C8 00000000 */  nop
    /* 4B9CC 8005B1CC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B9D0 8005B1D0 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4B9D4 8005B1D4 43004010 */  beqz       $v0, .L8005B2E4
    /* 4B9D8 8005B1D8 21300000 */   addu      $a2, $zero, $zero
    /* 4B9DC 8005B1DC 00110300 */  sll        $v0, $v1, 4
    /* 4B9E0 8005B1E0 23104300 */  subu       $v0, $v0, $v1
    /* 4B9E4 8005B1E4 40500200 */  sll        $t2, $v0, 1
    /* 4B9E8 8005B1E8 21280000 */  addu       $a1, $zero, $zero
  .L8005B1EC:
    /* 4B9EC 8005B1EC 21205101 */  addu       $a0, $t2, $s1
    /* 4B9F0 8005B1F0 FF00C330 */  andi       $v1, $a2, 0xFF
    /* 4B9F4 8005B1F4 80100300 */  sll        $v0, $v1, 2
    /* 4B9F8 8005B1F8 21104300 */  addu       $v0, $v0, $v1
    /* 4B9FC 8005B1FC 40100200 */  sll        $v0, $v0, 1
    /* 4BA00 8005B200 21384400 */  addu       $a3, $v0, $a0
    /* 4BA04 8005B204 0D80043C */  lui        $a0, %hi(D_800C8458)
    /* 4BA08 8005B208 58848424 */  addiu      $a0, $a0, %lo(D_800C8458)
    /* 4BA0C 8005B20C 40100300 */  sll        $v0, $v1, 1
    /* 4BA10 8005B210 21104300 */  addu       $v0, $v0, $v1
    /* 4BA14 8005B214 21204400 */  addu       $a0, $v0, $a0
  .L8005B218:
    /* 4BA18 8005B218 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 4BA1C 8005B21C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4BA20 8005B220 21108300 */  addu       $v0, $a0, $v1
    /* 4BA24 8005B224 00004290 */  lbu        $v0, 0x0($v0)
    /* 4BA28 8005B228 2118E300 */  addu       $v1, $a3, $v1
    /* 4BA2C 8005B22C 000062A0 */  sb         $v0, 0x0($v1)
    /* 4BA30 8005B230 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 4BA34 8005B234 0300422C */  sltiu      $v0, $v0, 0x3
    /* 4BA38 8005B238 F7FF4014 */  bnez       $v0, .L8005B218
    /* 4BA3C 8005B23C 00000000 */   nop
    /* 4BA40 8005B240 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4BA44 8005B244 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4BA48 8005B248 0300422C */  sltiu      $v0, $v0, 0x3
    /* 4BA4C 8005B24C E7FF4014 */  bnez       $v0, .L8005B1EC
    /* 4BA50 8005B250 21280000 */   addu      $a1, $zero, $zero
    /* 4BA54 8005B254 21300000 */  addu       $a2, $zero, $zero
    /* 4BA58 8005B258 FF000331 */  andi       $v1, $t0, 0xFF
    /* 4BA5C 8005B25C 2110A301 */  addu       $v0, $t5, $v1
    /* 4BA60 8005B260 21285800 */  addu       $a1, $v0, $t8
    /* 4BA64 8005B264 18000824 */  addiu      $t0, $zero, 0x18
    /* 4BA68 8005B268 19000724 */  addiu      $a3, $zero, 0x19
    /* 4BA6C 8005B26C 40100300 */  sll        $v0, $v1, 1
    /* 4BA70 8005B270 21104300 */  addu       $v0, $v0, $v1
    /* 4BA74 8005B274 80100200 */  sll        $v0, $v0, 2
    /* 4BA78 8005B278 21104300 */  addu       $v0, $v0, $v1
    /* 4BA7C 8005B27C 40100200 */  sll        $v0, $v0, 1
    /* 4BA80 8005B280 21104D00 */  addu       $v0, $v0, $t5
    /* 4BA84 8005B284 21204F00 */  addu       $a0, $v0, $t7
    /* 4BA88 8005B288 91032325 */  addiu      $v1, $t1, 0x391
  .L8005B28C:
    /* 4BA8C 8005B28C 00006290 */  lbu        $v0, 0x0($v1)
    /* 4BA90 8005B290 00000000 */  nop
    /* 4BA94 8005B294 0C004E14 */  bne        $v0, $t6, .L8005B2C8
    /* 4BA98 8005B298 00000000 */   nop
    /* 4BA9C 8005B29C 0000A290 */  lbu        $v0, 0x0($a1)
    /* 4BAA0 8005B2A0 00000000 */  nop
    /* 4BAA4 8005B2A4 03004C14 */  bne        $v0, $t4, .L8005B2B4
    /* 4BAA8 8005B2A8 00000000 */   nop
    /* 4BAAC 8005B2AC AE6C0108 */  j          .L8005B2B8
    /* 4BAB0 8005B2B0 000068A0 */   sb        $t0, 0x0($v1)
  .L8005B2B4:
    /* 4BAB4 8005B2B4 000067A0 */  sb         $a3, 0x0($v1)
  .L8005B2B8:
    /* 4BAB8 8005B2B8 00006290 */  lbu        $v0, 0x0($v1)
    /* 4BABC 8005B2BC 00000000 */  nop
    /* 4BAC0 8005B2C0 21108200 */  addu       $v0, $a0, $v0
    /* 4BAC4 8005B2C4 00004CA0 */  sb         $t4, 0x0($v0)
  .L8005B2C8:
    /* 4BAC8 8005B2C8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4BACC 8005B2CC FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4BAD0 8005B2D0 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4BAD4 8005B2D4 EDFF4014 */  bnez       $v0, .L8005B28C
    /* 4BAD8 8005B2D8 E8036324 */   addiu     $v1, $v1, 0x3E8
    /* 4BADC 8005B2DC D06C0108 */  j          .L8005B340
    /* 4BAE0 8005B2E0 01006B25 */   addiu     $t3, $t3, 0x1
  .L8005B2E4:
    /* 4BAE4 8005B2E4 17000524 */  addiu      $a1, $zero, 0x17
    /* 4BAE8 8005B2E8 40100300 */  sll        $v0, $v1, 1
    /* 4BAEC 8005B2EC 21104300 */  addu       $v0, $v0, $v1
    /* 4BAF0 8005B2F0 80100200 */  sll        $v0, $v0, 2
    /* 4BAF4 8005B2F4 21104300 */  addu       $v0, $v0, $v1
    /* 4BAF8 8005B2F8 40100200 */  sll        $v0, $v0, 1
    /* 4BAFC 8005B2FC 21104D00 */  addu       $v0, $v0, $t5
    /* 4BB00 8005B300 21204F00 */  addu       $a0, $v0, $t7
    /* 4BB04 8005B304 91032325 */  addiu      $v1, $t1, 0x391
  .L8005B308:
    /* 4BB08 8005B308 00006290 */  lbu        $v0, 0x0($v1)
    /* 4BB0C 8005B30C 00000000 */  nop
    /* 4BB10 8005B310 E8FF4224 */  addiu      $v0, $v0, -0x18
    /* 4BB14 8005B314 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4BB18 8005B318 03004010 */  beqz       $v0, .L8005B328
    /* 4BB1C 8005B31C 00000000 */   nop
    /* 4BB20 8005B320 000065A0 */  sb         $a1, 0x0($v1)
    /* 4BB24 8005B324 17008CA0 */  sb         $t4, 0x17($a0)
  .L8005B328:
    /* 4BB28 8005B328 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4BB2C 8005B32C FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4BB30 8005B330 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4BB34 8005B334 F4FF4014 */  bnez       $v0, .L8005B308
    /* 4BB38 8005B338 E8036324 */   addiu     $v1, $v1, 0x3E8
  .L8005B33C:
    /* 4BB3C 8005B33C 01006B25 */  addiu      $t3, $t3, 0x1
  .L8005B340:
    /* 4BB40 8005B340 FF006231 */  andi       $v0, $t3, 0xFF
    /* 4BB44 8005B344 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4BB48 8005B348 20FF4014 */  bnez       $v0, .L8005AFCC
    /* 4BB4C 8005B34C FF006231 */   andi      $v0, $t3, 0xFF
    /* 4BB50 8005B350 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4BB54 8005B354 1800B28F */  lw         $s2, 0x18($sp)
    /* 4BB58 8005B358 1400B18F */  lw         $s1, 0x14($sp)
    /* 4BB5C 8005B35C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4BB60 8005B360 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4BB64 8005B364 0800E003 */  jr         $ra
    /* 4BB68 8005B368 00000000 */   nop
endlabel func_8005ADE4
