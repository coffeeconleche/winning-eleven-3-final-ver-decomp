nonmatching func_801AD7EC, 0x770

glabel func_801AD7EC
    /* 24874 801AD7EC 1180033C */  lui        $v1, %hi(D_8010A320)
    /* 24878 801AD7F0 20A36390 */  lbu        $v1, %lo(D_8010A320)($v1)
    /* 2487C 801AD7F4 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 24880 801AD7F8 A800B6AF */  sw         $s6, 0xA8($sp)
    /* 24884 801AD7FC 1080163C */  lui        $s6, %hi(D_800FF748)
    /* 24888 801AD800 48F7D626 */  addiu      $s6, $s6, %lo(D_800FF748)
    /* 2488C 801AD804 9400B1AF */  sw         $s1, 0x94($sp)
    /* 24890 801AD808 801F113C */  lui        $s1, (0x1F8002DD >> 16)
    /* 24894 801AD80C AC00BFAF */  sw         $ra, 0xAC($sp)
    /* 24898 801AD810 A400B5AF */  sw         $s5, 0xA4($sp)
    /* 2489C 801AD814 A000B4AF */  sw         $s4, 0xA0($sp)
    /* 248A0 801AD818 9C00B3AF */  sw         $s3, 0x9C($sp)
    /* 248A4 801AD81C 9800B2AF */  sw         $s2, 0x98($sp)
    /* 248A8 801AD820 0B00622C */  sltiu      $v0, $v1, 0xB
    /* 248AC 801AD824 C1014010 */  beqz       $v0, .L801ADF2C
    /* 248B0 801AD828 9000B0AF */   sw        $s0, 0x90($sp)
    /* 248B4 801AD82C 80100300 */  sll        $v0, $v1, 2
    /* 248B8 801AD830 1980013C */  lui        $at, %hi(jtbl_8018A448)
    /* 248BC 801AD834 21082200 */  addu       $at, $at, $v0
    /* 248C0 801AD838 48A4228C */  lw         $v0, %lo(jtbl_8018A448)($at)
    /* 248C4 801AD83C 00000000 */  nop
    /* 248C8 801AD840 08004000 */  jr         $v0
    /* 248CC 801AD844 00000000 */   nop
  jlabel .L801AD848
    /* 248D0 801AD848 10000424 */  addiu      $a0, $zero, 0x10
    /* 248D4 801AD84C 37BC010C */  jal        func_8006F0DC
    /* 248D8 801AD850 21280000 */   addu      $a1, $zero, $zero
    /* 248DC 801AD854 B5014010 */  beqz       $v0, .L801ADF2C
    /* 248E0 801AD858 00000000 */   nop
    /* 248E4 801AD85C 21200000 */  addu       $a0, $zero, $zero
    /* 248E8 801AD860 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 248EC 801AD864 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 248F0 801AD868 4E39060C */  jal        func_8018E538
    /* 248F4 801AD86C 9F0220A2 */   sb        $zero, (0x1F80029F & 0xFFFF)($s1)
    /* 248F8 801AD870 1F001024 */  addiu      $s0, $zero, 0x1F
    /* 248FC 801AD874 1E80023C */  lui        $v0, %hi(D_801D86DF)
    /* 24900 801AD878 DF864224 */  addiu      $v0, $v0, %lo(D_801D86DF)
    /* 24904 801AD87C A20220A2 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($s1)
    /* 24908 801AD880 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 2490C 801AD884 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
  .L801AD888:
    /* 24910 801AD888 000040A0 */  sb         $zero, 0x0($v0)
    /* 24914 801AD88C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 24918 801AD890 FDFF0106 */  bgez       $s0, .L801AD888
    /* 2491C 801AD894 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 24920 801AD898 DD022292 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($s1)
    /* 24924 801AD89C 00000000 */  nop
    /* 24928 801AD8A0 80100200 */  sll        $v0, $v0, 2
    /* 2492C 801AD8A4 1D80013C */  lui        $at, %hi(D_801D1D18)
    /* 24930 801AD8A8 21082200 */  addu       $at, $at, $v0
    /* 24934 801AD8AC 181D228C */  lw         $v0, %lo(D_801D1D18)($at)
    /* 24938 801AD8B0 00000000 */  nop
    /* 2493C 801AD8B4 00004290 */  lbu        $v0, 0x0($v0)
    /* 24940 801AD8B8 1D80033C */  lui        $v1, %hi(D_801D1D18)
    /* 24944 801AD8BC 181D6324 */  addiu      $v1, $v1, %lo(D_801D1D18)
    /* 24948 801AD8C0 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 2494C 801AD8C4 C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 24950 801AD8C8 0E004010 */  beqz       $v0, .L801AD904
    /* 24954 801AD8CC 21800000 */   addu      $s0, $zero, $zero
  .L801AD8D0:
    /* 24958 801AD8D0 DD022292 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($s1)
    /* 2495C 801AD8D4 00000000 */  nop
    /* 24960 801AD8D8 80100200 */  sll        $v0, $v0, 2
    /* 24964 801AD8DC 21104300 */  addu       $v0, $v0, $v1
    /* 24968 801AD8E0 0000428C */  lw         $v0, 0x0($v0)
    /* 2496C 801AD8E4 01001026 */  addiu      $s0, $s0, 0x1
    /* 24970 801AD8E8 21105000 */  addu       $v0, $v0, $s0
    /* 24974 801AD8EC 00004290 */  lbu        $v0, 0x0($v0)
    /* 24978 801AD8F0 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 2497C 801AD8F4 21083000 */  addu       $at, $at, $s0
    /* 24980 801AD8F8 C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 24984 801AD8FC F4FF4014 */  bnez       $v0, .L801AD8D0
    /* 24988 801AD900 00000000 */   nop
  .L801AD904:
    /* 2498C 801AD904 20000224 */  addiu      $v0, $zero, 0x20
    /* 24990 801AD908 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 24994 801AD90C 21083000 */  addu       $at, $at, $s0
    /* 24998 801AD910 C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 2499C 801AD914 01001026 */  addiu      $s0, $s0, 0x1
    /* 249A0 801AD918 57000224 */  addiu      $v0, $zero, 0x57
    /* 249A4 801AD91C 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 249A8 801AD920 21083000 */  addu       $at, $at, $s0
    /* 249AC 801AD924 C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 249B0 801AD928 01001026 */  addiu      $s0, $s0, 0x1
    /* 249B4 801AD92C 69000224 */  addiu      $v0, $zero, 0x69
    /* 249B8 801AD930 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 249BC 801AD934 21083000 */  addu       $at, $at, $s0
    /* 249C0 801AD938 C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 249C4 801AD93C 01001026 */  addiu      $s0, $s0, 0x1
    /* 249C8 801AD940 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 249CC 801AD944 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 249D0 801AD948 21083000 */  addu       $at, $at, $s0
    /* 249D4 801AD94C C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 249D8 801AD950 01001026 */  addiu      $s0, $s0, 0x1
    /* 249DC 801AD954 73000224 */  addiu      $v0, $zero, 0x73
    /* 249E0 801AD958 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 249E4 801AD95C 21083000 */  addu       $at, $at, $s0
    /* 249E8 801AD960 C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 249EC 801AD964 01001026 */  addiu      $s0, $s0, 0x1
    /* 249F0 801AD968 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 249F4 801AD96C 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 249F8 801AD970 21083000 */  addu       $at, $at, $s0
    /* 249FC 801AD974 C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 24A00 801AD978 01001026 */  addiu      $s0, $s0, 0x1
    /* 24A04 801AD97C 02000224 */  addiu      $v0, $zero, 0x2
    /* 24A08 801AD980 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 24A0C 801AD984 21083000 */  addu       $at, $at, $s0
    /* 24A10 801AD988 C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 24A14 801AD98C 01001026 */  addiu      $s0, $s0, 0x1
    /* 24A18 801AD990 21000224 */  addiu      $v0, $zero, 0x21
    /* 24A1C 801AD994 1E80013C */  lui        $at, %hi(D_801D86C0)
    /* 24A20 801AD998 21083000 */  addu       $at, $at, $s0
    /* 24A24 801AD99C C08622A0 */  sb         $v0, %lo(D_801D86C0)($at)
    /* 24A28 801AD9A0 1E80013C */  lui        $at, %hi(D_801D86C1)
    /* 24A2C 801AD9A4 21083000 */  addu       $at, $at, $s0
    /* 24A30 801AD9A8 C18622A0 */  sb         $v0, %lo(D_801D86C1)($at)
    /* 24A34 801AD9AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24A38 801AD9B0 2108C102 */  addu       $at, $s6, $at
    /* 24A3C 801AD9B4 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 24A40 801AD9B8 77B70608 */  j          .L801ADDDC
    /* 24A44 801AD9BC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AD9C0
    /* 24A48 801AD9C0 D966000C */  jal        func_80019B64
    /* 24A4C 801AD9C4 CB000424 */   addiu     $a0, $zero, 0xCB
    /* 24A50 801AD9C8 59014010 */  beqz       $v0, .L801ADF30
    /* 24A54 801AD9CC 21100000 */   addu      $v0, $zero, $zero
    /* 24A58 801AD9D0 1458020C */  jal        func_80096050
    /* 24A5C 801AD9D4 EC0120A2 */   sb        $zero, 0x1EC($s1)
    /* 24A60 801AD9D8 2771010C */  jal        func_8005C49C
    /* 24A64 801AD9DC 0D001524 */   addiu     $s5, $zero, 0xD
    /* 24A68 801AD9E0 10000224 */  addiu      $v0, $zero, 0x10
    /* 24A6C 801AD9E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24A70 801AD9E8 2108C102 */  addu       $at, $s6, $at
    /* 24A74 801AD9EC 2CAC22A4 */  sh         $v0, -0x53D4($at)
    /* 24A78 801AD9F0 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 24A7C 801AD9F4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24A80 801AD9F8 2108C102 */  addu       $at, $s6, $at
    /* 24A84 801AD9FC 28AC20A4 */  sh         $zero, -0x53D8($at)
    /* 24A88 801ADA00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24A8C 801ADA04 2108C102 */  addu       $at, $s6, $at
    /* 24A90 801ADA08 30AC20A4 */  sh         $zero, -0x53D0($at)
    /* 24A94 801ADA0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24A98 801ADA10 2108C102 */  addu       $at, $s6, $at
    /* 24A9C 801ADA14 34AC22A4 */  sh         $v0, -0x53CC($at)
    /* 24AA0 801ADA18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24AA4 801ADA1C 2108C102 */  addu       $at, $s6, $at
    /* 24AA8 801ADA20 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 24AAC 801ADA24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24AB0 801ADA28 2108C102 */  addu       $at, $s6, $at
    /* 24AB4 801ADA2C 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 24AB8 801ADA30 7740010C */  jal        func_800501DC
    /* 24ABC 801ADA34 21200000 */   addu      $a0, $zero, $zero
    /* 24AC0 801ADA38 01000424 */  addiu      $a0, $zero, 0x1
    /* 24AC4 801ADA3C D2300524 */  addiu      $a1, $zero, 0x30D2
    /* 24AC8 801ADA40 0051063C */  lui        $a2, (0x51000000 >> 16)
    /* 24ACC 801ADA44 21380000 */  addu       $a3, $zero, $zero
    /* 24AD0 801ADA48 FF001324 */  addiu      $s3, $zero, 0xFF
    /* 24AD4 801ADA4C 00101124 */  addiu      $s1, $zero, 0x1000
    /* 24AD8 801ADA50 80001024 */  addiu      $s0, $zero, 0x80
    /* 24ADC 801ADA54 02001424 */  addiu      $s4, $zero, 0x2
    /* 24AE0 801ADA58 01001224 */  addiu      $s2, $zero, 0x1
    /* 24AE4 801ADA5C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 24AE8 801ADA60 1400B5AF */  sw         $s5, 0x14($sp)
    /* 24AEC 801ADA64 1800B3AF */  sw         $s3, 0x18($sp)
    /* 24AF0 801ADA68 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 24AF4 801ADA6C 2000B1AF */  sw         $s1, 0x20($sp)
    /* 24AF8 801ADA70 2400A0AF */  sw         $zero, 0x24($sp)
    /* 24AFC 801ADA74 2800A0AF */  sw         $zero, 0x28($sp)
    /* 24B00 801ADA78 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 24B04 801ADA7C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 24B08 801ADA80 3400B0AF */  sw         $s0, 0x34($sp)
    /* 24B0C 801ADA84 3800A0AF */  sw         $zero, 0x38($sp)
    /* 24B10 801ADA88 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 24B14 801ADA8C ED4F060C */  jal        func_80193FB4
    /* 24B18 801ADA90 4000B2AF */   sw        $s2, 0x40($sp)
    /* 24B1C 801ADA94 02000424 */  addiu      $a0, $zero, 0x2
    /* 24B20 801ADA98 D3300524 */  addiu      $a1, $zero, 0x30D3
    /* 24B24 801ADA9C 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 24B28 801ADAA0 21380000 */  addu       $a3, $zero, $zero
    /* 24B2C 801ADAA4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 24B30 801ADAA8 1400B5AF */  sw         $s5, 0x14($sp)
    /* 24B34 801ADAAC 1800B3AF */  sw         $s3, 0x18($sp)
    /* 24B38 801ADAB0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 24B3C 801ADAB4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 24B40 801ADAB8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 24B44 801ADABC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 24B48 801ADAC0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 24B4C 801ADAC4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 24B50 801ADAC8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 24B54 801ADACC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 24B58 801ADAD0 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 24B5C 801ADAD4 ED4F060C */  jal        func_80193FB4
    /* 24B60 801ADAD8 4000B2AF */   sw        $s2, 0x40($sp)
    /* 24B64 801ADADC 37000424 */  addiu      $a0, $zero, 0x37
    /* 24B68 801ADAE0 D4300524 */  addiu      $a1, $zero, 0x30D4
    /* 24B6C 801ADAE4 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 24B70 801ADAE8 21380000 */  addu       $a3, $zero, $zero
    /* 24B74 801ADAEC 0E000224 */  addiu      $v0, $zero, 0xE
    /* 24B78 801ADAF0 06001424 */  addiu      $s4, $zero, 0x6
    /* 24B7C 801ADAF4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 24B80 801ADAF8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 24B84 801ADAFC 1800B3AF */  sw         $s3, 0x18($sp)
    /* 24B88 801ADB00 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 24B8C 801ADB04 2000B1AF */  sw         $s1, 0x20($sp)
    /* 24B90 801ADB08 2400A0AF */  sw         $zero, 0x24($sp)
    /* 24B94 801ADB0C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 24B98 801ADB10 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 24B9C 801ADB14 3000B0AF */  sw         $s0, 0x30($sp)
    /* 24BA0 801ADB18 3400B0AF */  sw         $s0, 0x34($sp)
    /* 24BA4 801ADB1C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 24BA8 801ADB20 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 24BAC 801ADB24 ED4F060C */  jal        func_80193FB4
    /* 24BB0 801ADB28 4000B2AF */   sw        $s2, 0x40($sp)
    /* 24BB4 801ADB2C 38000424 */  addiu      $a0, $zero, 0x38
    /* 24BB8 801ADB30 D5300524 */  addiu      $a1, $zero, 0x30D5
    /* 24BBC 801ADB34 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 24BC0 801ADB38 21380000 */  addu       $a3, $zero, $zero
    /* 24BC4 801ADB3C 0F000224 */  addiu      $v0, $zero, 0xF
    /* 24BC8 801ADB40 1000A0AF */  sw         $zero, 0x10($sp)
    /* 24BCC 801ADB44 1400A2AF */  sw         $v0, 0x14($sp)
    /* 24BD0 801ADB48 1800B3AF */  sw         $s3, 0x18($sp)
    /* 24BD4 801ADB4C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 24BD8 801ADB50 2000B1AF */  sw         $s1, 0x20($sp)
    /* 24BDC 801ADB54 2400A0AF */  sw         $zero, 0x24($sp)
    /* 24BE0 801ADB58 2800A0AF */  sw         $zero, 0x28($sp)
    /* 24BE4 801ADB5C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 24BE8 801ADB60 3000B0AF */  sw         $s0, 0x30($sp)
    /* 24BEC 801ADB64 3400B0AF */  sw         $s0, 0x34($sp)
    /* 24BF0 801ADB68 3800A0AF */  sw         $zero, 0x38($sp)
    /* 24BF4 801ADB6C 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 24BF8 801ADB70 ED4F060C */  jal        func_80193FB4
    /* 24BFC 801ADB74 4000B2AF */   sw        $s2, 0x40($sp)
    /* 24C00 801ADB78 21200000 */  addu       $a0, $zero, $zero
    /* 24C04 801ADB7C 1E80053C */  lui        $a1, %hi(D_801D86C0)
    /* 24C08 801ADB80 C086A524 */  addiu      $a1, $a1, %lo(D_801D86C0)
    /* 24C0C 801ADB84 9CFF0624 */  addiu      $a2, $zero, -0x64
    /* 24C10 801ADB88 40000724 */  addiu      $a3, $zero, 0x40
    /* 24C14 801ADB8C C8000224 */  addiu      $v0, $zero, 0xC8
    /* 24C18 801ADB90 1000A2AF */  sw         $v0, 0x10($sp)
    /* 24C1C 801ADB94 03000224 */  addiu      $v0, $zero, 0x3
    /* 24C20 801ADB98 1400A2AF */  sw         $v0, 0x14($sp)
    /* 24C24 801ADB9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 24C28 801ADBA0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 24C2C 801ADBA4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 24C30 801ADBA8 2400B2AF */  sw         $s2, 0x24($sp)
    /* 24C34 801ADBAC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 24C38 801ADBB0 B850060C */  jal        func_801942E0
    /* 24C3C 801ADBB4 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 24C40 801ADBB8 21200000 */  addu       $a0, $zero, $zero
    /* 24C44 801ADBBC 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 24C48 801ADBC0 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 24C4C 801ADBC4 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 24C50 801ADBC8 21380000 */  addu       $a3, $zero, $zero
    /* 24C54 801ADBCC 9CFF0224 */  addiu      $v0, $zero, -0x64
    /* 24C58 801ADBD0 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 24C5C 801ADBD4 3E000224 */  addiu      $v0, $zero, 0x3E
    /* 24C60 801ADBD8 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 24C64 801ADBDC 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 24C68 801ADBE0 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 24C6C 801ADBE4 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 24C70 801ADBE8 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 24C74 801ADBEC 14000224 */  addiu      $v0, $zero, 0x14
    /* 24C78 801ADBF0 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 24C7C 801ADBF4 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 24C80 801ADBF8 40000224 */  addiu      $v0, $zero, 0x40
    /* 24C84 801ADBFC 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 24C88 801ADC00 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 24C8C 801ADC04 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 24C90 801ADC08 818D20A0 */  sb         $zero, %lo(D_801D8D81)($at)
    /* 24C94 801ADC0C 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 24C98 801ADC10 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 24C9C 801ADC14 1000B2AF */  sw         $s2, 0x10($sp)
    /* 24CA0 801ADC18 3B50060C */  jal        func_801940EC
    /* 24CA4 801ADC1C 1400B2AF */   sw        $s2, 0x14($sp)
    /* 24CA8 801ADC20 72B70608 */  j          .L801ADDC8
    /* 24CAC 801ADC24 00000000 */   nop
  jlabel .L801ADC28
    /* 24CB0 801ADC28 21800000 */  addu       $s0, $zero, $zero
  .L801ADC2C:
    /* 24CB4 801ADC2C D7B7060C */  jal        func_801ADF5C
    /* 24CB8 801ADC30 FF000432 */   andi      $a0, $s0, 0xFF
    /* 24CBC 801ADC34 01001026 */  addiu      $s0, $s0, 0x1
    /* 24CC0 801ADC38 4000022A */  slti       $v0, $s0, 0x40
    /* 24CC4 801ADC3C FBFF4014 */  bnez       $v0, .L801ADC2C
    /* 24CC8 801ADC40 01000324 */   addiu     $v1, $zero, 0x1
    /* 24CCC 801ADC44 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24CD0 801ADC48 2108C102 */  addu       $at, $s6, $at
    /* 24CD4 801ADC4C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 24CD8 801ADC50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24CDC 801ADC54 2108C102 */  addu       $at, $s6, $at
    /* 24CE0 801ADC58 20AC23A0 */  sb         $v1, -0x53E0($at)
    /* 24CE4 801ADC5C 77B70608 */  j          .L801ADDDC
    /* 24CE8 801ADC60 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801ADC64
    /* 24CEC 801ADC64 80000424 */  addiu      $a0, $zero, 0x80
    /* 24CF0 801ADC68 6E39060C */  jal        func_8018E5B8
    /* 24CF4 801ADC6C 21280000 */   addu      $a1, $zero, $zero
    /* 24CF8 801ADC70 21184000 */  addu       $v1, $v0, $zero
    /* 24CFC 801ADC74 10000424 */  addiu      $a0, $zero, 0x10
    /* 24D00 801ADC78 FE5DC3A2 */  sb         $v1, 0x5DFE($s6)
    /* 24D04 801ADC7C FF5DC3A2 */  sb         $v1, 0x5DFF($s6)
    /* 24D08 801ADC80 1FBC010C */  jal        func_8006F07C
    /* 24D0C 801ADC84 005EC3A2 */   sb        $v1, 0x5E00($s6)
    /* 24D10 801ADC88 A8004010 */  beqz       $v0, .L801ADF2C
    /* 24D14 801ADC8C 40000324 */   addiu     $v1, $zero, 0x40
    /* 24D18 801ADC90 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24D1C 801ADC94 2108C102 */  addu       $at, $s6, $at
    /* 24D20 801ADC98 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 24D24 801ADC9C 75B70608 */  j          .L801ADDD4
    /* 24D28 801ADCA0 A20223A2 */   sb        $v1, 0x2A2($s1)
  jlabel .L801ADCA4
    /* 24D2C 801ADCA4 80000424 */  addiu      $a0, $zero, 0x80
    /* 24D30 801ADCA8 6E39060C */  jal        func_8018E5B8
    /* 24D34 801ADCAC 21280000 */   addu      $a1, $zero, $zero
    /* 24D38 801ADCB0 21184000 */  addu       $v1, $v0, $zero
    /* 24D3C 801ADCB4 01000424 */  addiu      $a0, $zero, 0x1
    /* 24D40 801ADCB8 01000524 */  addiu      $a1, $zero, 0x1
    /* 24D44 801ADCBC FE5DC3A2 */  sb         $v1, 0x5DFE($s6)
    /* 24D48 801ADCC0 FF5DC3A2 */  sb         $v1, 0x5DFF($s6)
    /* 24D4C 801ADCC4 A33A060C */  jal        func_8018EA8C
    /* 24D50 801ADCC8 005EC3A2 */   sb        $v1, 0x5E00($s6)
    /* 24D54 801ADCCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24D58 801ADCD0 2108C102 */  addu       $at, $s6, $at
    /* 24D5C 801ADCD4 D8AB2390 */  lbu        $v1, -0x5428($at)
    /* 24D60 801ADCD8 00000000 */  nop
    /* 24D64 801ADCDC 21186200 */  addu       $v1, $v1, $v0
    /* 24D68 801ADCE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24D6C 801ADCE4 2108C102 */  addu       $at, $s6, $at
    /* 24D70 801ADCE8 D8AB23A0 */  sb         $v1, -0x5428($at)
    /* 24D74 801ADCEC CCB70608 */  j          .L801ADF30
    /* 24D78 801ADCF0 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801ADCF4
    /* 24D7C 801ADCF4 21200000 */  addu       $a0, $zero, $zero
    /* 24D80 801ADCF8 04000524 */  addiu      $a1, $zero, 0x4
    /* 24D84 801ADCFC 0050063C */  lui        $a2, (0x50000000 >> 16)
    /* 24D88 801ADD00 21380000 */  addu       $a3, $zero, $zero
    /* 24D8C 801ADD04 06000224 */  addiu      $v0, $zero, 0x6
    /* 24D90 801ADD08 1400A2AF */  sw         $v0, 0x14($sp)
    /* 24D94 801ADD0C 00700224 */  addiu      $v0, $zero, 0x7000
    /* 24D98 801ADD10 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 24D9C 801ADD14 2000A2AF */  sw         $v0, 0x20($sp)
    /* 24DA0 801ADD18 01000224 */  addiu      $v0, $zero, 0x1
    /* 24DA4 801ADD1C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 24DA8 801ADD20 1800A0AF */  sw         $zero, 0x18($sp)
    /* 24DAC 801ADD24 2400A0AF */  sw         $zero, 0x24($sp)
    /* 24DB0 801ADD28 2800A0AF */  sw         $zero, 0x28($sp)
    /* 24DB4 801ADD2C 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 24DB8 801ADD30 3000A0AF */  sw         $zero, 0x30($sp)
    /* 24DBC 801ADD34 3400A0AF */  sw         $zero, 0x34($sp)
    /* 24DC0 801ADD38 3800A0AF */  sw         $zero, 0x38($sp)
    /* 24DC4 801ADD3C 3C00A0AF */  sw         $zero, 0x3C($sp)
    /* 24DC8 801ADD40 ED4F060C */  jal        func_80193FB4
    /* 24DCC 801ADD44 4000A2AF */   sw        $v0, 0x40($sp)
    /* 24DD0 801ADD48 72B70608 */  j          .L801ADDC8
    /* 24DD4 801ADD4C 00000000 */   nop
  jlabel .L801ADD50
    /* 24DD8 801ADD50 D65DC392 */  lbu        $v1, 0x5DD6($s6)
    /* 24DDC 801ADD54 00000000 */  nop
    /* 24DE0 801ADD58 02006224 */  addiu      $v0, $v1, 0x2
    /* 24DE4 801ADD5C FF004228 */  slti       $v0, $v0, 0xFF
    /* 24DE8 801ADD60 05004010 */  beqz       $v0, .L801ADD78
    /* 24DEC 801ADD64 02006324 */   addiu     $v1, $v1, 0x2
    /* 24DF0 801ADD68 D65DC3A2 */  sb         $v1, 0x5DD6($s6)
    /* 24DF4 801ADD6C D75DC3A2 */  sb         $v1, 0x5DD7($s6)
    /* 24DF8 801ADD70 CBB70608 */  j          .L801ADF2C
    /* 24DFC 801ADD74 D85DC3A2 */   sb        $v1, 0x5DD8($s6)
  .L801ADD78:
    /* 24E00 801ADD78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24E04 801ADD7C 2108C102 */  addu       $at, $s6, $at
    /* 24E08 801ADD80 D8AB2390 */  lbu        $v1, -0x5428($at)
    /* 24E0C 801ADD84 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 24E10 801ADD88 D65DC2A2 */  sb         $v0, 0x5DD6($s6)
    /* 24E14 801ADD8C D75DC2A2 */  sb         $v0, 0x5DD7($s6)
    /* 24E18 801ADD90 D85DC2A2 */  sb         $v0, 0x5DD8($s6)
    /* 24E1C 801ADD94 01006324 */  addiu      $v1, $v1, 0x1
    /* 24E20 801ADD98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24E24 801ADD9C 2108C102 */  addu       $at, $s6, $at
    /* 24E28 801ADDA0 D8AB23A0 */  sb         $v1, -0x5428($at)
    /* 24E2C 801ADDA4 CCB70608 */  j          .L801ADF30
    /* 24E30 801ADDA8 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801ADDAC
    /* 24E34 801ADDAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24E38 801ADDB0 2108C102 */  addu       $at, $s6, $at
    /* 24E3C 801ADDB4 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 24E40 801ADDB8 00000000 */  nop
    /* 24E44 801ADDBC 0F004230 */  andi       $v0, $v0, 0xF
    /* 24E48 801ADDC0 15004014 */  bnez       $v0, .L801ADE18
    /* 24E4C 801ADDC4 0A000224 */   addiu     $v0, $zero, 0xA
  .L801ADDC8:
    /* 24E50 801ADDC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24E54 801ADDCC 2108C102 */  addu       $at, $s6, $at
    /* 24E58 801ADDD0 D8AB2290 */  lbu        $v0, -0x5428($at)
  .L801ADDD4:
    /* 24E5C 801ADDD4 00000000 */  nop
    /* 24E60 801ADDD8 01004224 */  addiu      $v0, $v0, 0x1
  .L801ADDDC:
    /* 24E64 801ADDDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24E68 801ADDE0 2108C102 */  addu       $at, $s6, $at
    /* 24E6C 801ADDE4 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 24E70 801ADDE8 CCB70608 */  j          .L801ADF30
    /* 24E74 801ADDEC 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801ADDF0
    /* 24E78 801ADDF0 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 24E7C 801ADDF4 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 24E80 801ADDF8 00000000 */  nop
    /* 24E84 801ADDFC 01004324 */  addiu      $v1, $v0, 0x1
    /* 24E88 801ADE00 FF004228 */  slti       $v0, $v0, 0xFF
    /* 24E8C 801ADE04 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 24E90 801ADE08 58A023AC */  sw         $v1, %lo(D_801DA058)($at)
    /* 24E94 801ADE0C 48004014 */  bnez       $v0, .L801ADF30
    /* 24E98 801ADE10 21100000 */   addu      $v0, $zero, $zero
    /* 24E9C 801ADE14 0A000224 */  addiu      $v0, $zero, 0xA
  .L801ADE18:
    /* 24EA0 801ADE18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24EA4 801ADE1C 2108C102 */  addu       $at, $s6, $at
    /* 24EA8 801ADE20 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 24EAC 801ADE24 CCB70608 */  j          .L801ADF30
    /* 24EB0 801ADE28 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801ADE2C
    /* 24EB4 801ADE2C 9A022292 */  lbu        $v0, 0x29A($s1)
    /* 24EB8 801ADE30 00000000 */  nop
    /* 24EBC 801ADE34 FF004330 */  andi       $v1, $v0, 0xFF
    /* 24EC0 801ADE38 22000224 */  addiu      $v0, $zero, 0x22
    /* 24EC4 801ADE3C 17006210 */  beq        $v1, $v0, .L801ADE9C
    /* 24EC8 801ADE40 23006228 */   slti      $v0, $v1, 0x23
    /* 24ECC 801ADE44 28004010 */  beqz       $v0, .L801ADEE8
    /* 24ED0 801ADE48 20000224 */   addiu     $v0, $zero, 0x20
    /* 24ED4 801ADE4C 26006214 */  bne        $v1, $v0, .L801ADEE8
    /* 24ED8 801ADE50 00000000 */   nop
    /* 24EDC 801ADE54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24EE0 801ADE58 2108C102 */  addu       $at, $s6, $at
    /* 24EE4 801ADE5C 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 24EE8 801ADE60 00000000 */  nop
    /* 24EEC 801ADE64 2110C202 */  addu       $v0, $s6, $v0
    /* 24EF0 801ADE68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24EF4 801ADE6C 21084100 */  addu       $at, $v0, $at
    /* 24EF8 801ADE70 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 24EFC 801ADE74 00000000 */  nop
    /* 24F00 801ADE78 C0100300 */  sll        $v0, $v1, 3
    /* 24F04 801ADE7C 21104300 */  addu       $v0, $v0, $v1
    /* 24F08 801ADE80 80100200 */  sll        $v0, $v0, 2
    /* 24F0C 801ADE84 2110C202 */  addu       $v0, $s6, $v0
    /* 24F10 801ADE88 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24F14 801ADE8C 21084100 */  addu       $at, $v0, $at
    /* 24F18 801ADE90 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 24F1C 801ADE94 BAB70608 */  j          .L801ADEE8
    /* 24F20 801ADE98 DD0222A2 */   sb        $v0, 0x2DD($s1)
  .L801ADE9C:
    /* 24F24 801ADE9C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24F28 801ADEA0 2108C102 */  addu       $at, $s6, $at
    /* 24F2C 801ADEA4 A0AB2290 */  lbu        $v0, -0x5460($at)
    /* 24F30 801ADEA8 00000000 */  nop
    /* 24F34 801ADEAC 2110C202 */  addu       $v0, $s6, $v0
    /* 24F38 801ADEB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24F3C 801ADEB4 21084100 */  addu       $at, $v0, $at
    /* 24F40 801ADEB8 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 24F44 801ADEBC 00000000 */  nop
    /* 24F48 801ADEC0 C0100300 */  sll        $v0, $v1, 3
    /* 24F4C 801ADEC4 21104300 */  addu       $v0, $v0, $v1
    /* 24F50 801ADEC8 80100200 */  sll        $v0, $v0, 2
    /* 24F54 801ADECC 2110C202 */  addu       $v0, $s6, $v0
    /* 24F58 801ADED0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24F5C 801ADED4 21084100 */  addu       $at, $v0, $at
    /* 24F60 801ADED8 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 24F64 801ADEDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24F68 801ADEE0 2108C102 */  addu       $at, $s6, $at
    /* 24F6C 801ADEE4 A0AB22A0 */  sb         $v0, -0x5460($at)
  .L801ADEE8:
    /* 24F70 801ADEE8 5E5C000C */  jal        func_80017178
    /* 24F74 801ADEEC 06000424 */   addiu     $a0, $zero, 0x6
    /* 24F78 801ADEF0 715C000C */  jal        func_800171C4
    /* 24F7C 801ADEF4 21200000 */   addu      $a0, $zero, $zero
    /* 24F80 801ADEF8 7F5C000C */  jal        func_800171FC
    /* 24F84 801ADEFC 21200000 */   addu      $a0, $zero, $zero
    /* 24F88 801ADF00 21200000 */  addu       $a0, $zero, $zero
    /* 24F8C 801ADF04 153F010C */  jal        func_8004FC54
    /* 24F90 801ADF08 A20220A2 */   sb        $zero, 0x2A2($s1)
    /* 24F94 801ADF0C 4E39060C */  jal        func_8018E538
    /* 24F98 801ADF10 21200000 */   addu      $a0, $zero, $zero
    /* 24F9C 801ADF14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24FA0 801ADF18 2108C102 */  addu       $at, $s6, $at
    /* 24FA4 801ADF1C DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 24FA8 801ADF20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24FAC 801ADF24 2108C102 */  addu       $at, $s6, $at
    /* 24FB0 801ADF28 D8AB20A0 */  sb         $zero, -0x5428($at)
  jlabel .L801ADF2C
    /* 24FB4 801ADF2C 21100000 */  addu       $v0, $zero, $zero
  .L801ADF30:
    /* 24FB8 801ADF30 AC00BF8F */  lw         $ra, 0xAC($sp)
    /* 24FBC 801ADF34 A800B68F */  lw         $s6, 0xA8($sp)
    /* 24FC0 801ADF38 A400B58F */  lw         $s5, 0xA4($sp)
    /* 24FC4 801ADF3C A000B48F */  lw         $s4, 0xA0($sp)
    /* 24FC8 801ADF40 9C00B38F */  lw         $s3, 0x9C($sp)
    /* 24FCC 801ADF44 9800B28F */  lw         $s2, 0x98($sp)
    /* 24FD0 801ADF48 9400B18F */  lw         $s1, 0x94($sp)
    /* 24FD4 801ADF4C 9000B08F */  lw         $s0, 0x90($sp)
    /* 24FD8 801ADF50 B000BD27 */  addiu      $sp, $sp, 0xB0
    /* 24FDC 801ADF54 0800E003 */  jr         $ra
    /* 24FE0 801ADF58 00000000 */   nop
endlabel func_801AD7EC
