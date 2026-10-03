/* Handwritten function */
nonmatching func_8001AC74, 0x444

glabel func_8001AC74
    /* B474 8001AC74 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B478 8001AC78 2000B0AF */  sw         $s0, 0x20($sp)
    /* B47C 8001AC7C 801F103C */  lui        $s0, (0x1F800000 >> 16)
    /* B480 8001AC80 801F033C */  lui        $v1, (0x1F8002B8 >> 16)
    /* B484 8001AC84 B8026384 */  lh         $v1, (0x1F8002B8 & 0xFFFF)($v1)
    /* B488 8001AC88 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* B48C 8001AC8C 05016210 */  beq        $v1, $v0, .L8001B0A4
    /* B490 8001AC90 2400BFAF */   sw        $ra, 0x24($sp)
    /* B494 8001AC94 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* B498 8001AC98 24018434 */  ori        $a0, $a0, (0x1F800124 & 0xFFFF)
    /* B49C 8001AC9C 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* B4A0 8001ACA0 801F013C */  lui        $at, (0x1F80013C >> 16)
    /* B4A4 8001ACA4 3C0123AC */  sw         $v1, (0x1F80013C & 0xFFFF)($at)
    /* B4A8 8001ACA8 801F033C */  lui        $v1, (0x1F8002BA >> 16)
    /* B4AC 8001ACAC BA026384 */  lh         $v1, (0x1F8002BA & 0xFFFF)($v1)
    /* B4B0 8001ACB0 921C0224 */  addiu      $v0, $zero, 0x1C92
    /* B4B4 8001ACB4 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* B4B8 8001ACB8 240120A4 */  sh         $zero, (0x1F800124 & 0xFFFF)($at)
    /* B4BC 8001ACBC 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* B4C0 8001ACC0 260120A4 */  sh         $zero, (0x1F800126 & 0xFFFF)($at)
    /* B4C4 8001ACC4 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* B4C8 8001ACC8 280120A4 */  sh         $zero, (0x1F800128 & 0xFFFF)($at)
    /* B4CC 8001ACCC 801F013C */  lui        $at, (0x1F800140 >> 16)
    /* B4D0 8001ACD0 400120AC */  sw         $zero, (0x1F800140 & 0xFFFF)($at)
    /* B4D4 8001ACD4 801F013C */  lui        $at, (0x1F80014C >> 16)
    /* B4D8 8001ACD8 4C0122AC */  sw         $v0, (0x1F80014C & 0xFFFF)($at)
    /* B4DC 8001ACDC 801F013C */  lui        $at, (0x1F800150 >> 16)
    /* B4E0 8001ACE0 500122AC */  sw         $v0, (0x1F800150 & 0xFFFF)($at)
    /* B4E4 8001ACE4 801F013C */  lui        $at, (0x1F800154 >> 16)
    /* B4E8 8001ACE8 540122AC */  sw         $v0, (0x1F800154 & 0xFFFF)($at)
    /* B4EC 8001ACEC 801F013C */  lui        $at, (0x1F800144 >> 16)
    /* B4F0 8001ACF0 440123AC */  sw         $v1, (0x1F800144 & 0xFFFF)($at)
    /* B4F4 8001ACF4 5EC8020C */  jal        func_800B2178
    /* B4F8 8001ACF8 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* B4FC 8001ACFC 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* B500 8001AD00 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* B504 8001AD04 801F053C */  lui        $a1, (0x1F80014C >> 16)
    /* B508 8001AD08 D2C4020C */  jal        func_800B1348
    /* B50C 8001AD0C 4C01A534 */   ori       $a1, $a1, (0x1F80014C & 0xFFFF)
    /* B510 8001AD10 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* B514 8001AD14 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* B518 8001AD18 801F053C */  lui        $a1, (0x1F80013C >> 16)
    /* B51C 8001AD1C C6C4020C */  jal        func_800B1318
    /* B520 8001AD20 3C01A534 */   ori       $a1, $a1, (0x1F80013C & 0xFFFF)
    /* B524 8001AD24 0F80043C */  lui        $a0, %hi(D_800E8208)
    /* B528 8001AD28 08828424 */  addiu      $a0, $a0, %lo(D_800E8208)
    /* B52C 8001AD2C 801F093C */  lui        $t1, (0x1F8001A8 >> 16)
    /* B530 8001AD30 A8012935 */  ori        $t1, $t1, (0x1F8001A8 & 0xFFFF)
    /* B534 8001AD34 00002C8D */  lw         $t4, 0x0($t1)
    /* B538 8001AD38 04002D8D */  lw         $t5, 0x4($t1)
    /* B53C 8001AD3C 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* B540 8001AD40 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* B544 8001AD44 08002C8D */  lw         $t4, 0x8($t1)
    /* B548 8001AD48 0C002D8D */  lw         $t5, 0xC($t1)
    /* B54C 8001AD4C 10002E8D */  lw         $t6, 0x10($t1)
    /* B550 8001AD50 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* B554 8001AD54 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* B558 8001AD58 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* B55C 8001AD5C 801F0A3C */  lui        $t2, (0x1F800104 >> 16)
    /* B560 8001AD60 04014A35 */  ori        $t2, $t2, (0x1F800104 & 0xFFFF)
    /* B564 8001AD64 00004C95 */  lhu        $t4, 0x0($t2)
    /* B568 8001AD68 06004D95 */  lhu        $t5, 0x6($t2)
    /* B56C 8001AD6C 0C004E95 */  lhu        $t6, 0xC($t2)
    /* B570 8001AD70 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* B574 8001AD74 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* B578 8001AD78 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* B57C 8001AD7C 00000000 */  nop
    /* B580 8001AD80 00000000 */  nop
    /* B584 8001AD84 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* B588 8001AD88 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* B58C 8001AD8C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* B590 8001AD90 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* B594 8001AD94 00004CA5 */  sh         $t4, 0x0($t2)
    /* B598 8001AD98 06004DA5 */  sh         $t5, 0x6($t2)
    /* B59C 8001AD9C 0C004EA5 */  sh         $t6, 0xC($t2)
    /* B5A0 8001ADA0 801F0B3C */  lui        $t3, (0x1F800106 >> 16)
    /* B5A4 8001ADA4 06016B35 */  ori        $t3, $t3, (0x1F800106 & 0xFFFF)
    /* B5A8 8001ADA8 00006C95 */  lhu        $t4, 0x0($t3)
    /* B5AC 8001ADAC 06006D95 */  lhu        $t5, 0x6($t3)
    /* B5B0 8001ADB0 0C006E95 */  lhu        $t6, 0xC($t3)
    /* B5B4 8001ADB4 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* B5B8 8001ADB8 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* B5BC 8001ADBC 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* B5C0 8001ADC0 00000000 */  nop
    /* B5C4 8001ADC4 00000000 */  nop
    /* B5C8 8001ADC8 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* B5CC 8001ADCC 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* B5D0 8001ADD0 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* B5D4 8001ADD4 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* B5D8 8001ADD8 00006CA5 */  sh         $t4, 0x0($t3)
    /* B5DC 8001ADDC 06006DA5 */  sh         $t5, 0x6($t3)
    /* B5E0 8001ADE0 0C006EA5 */  sh         $t6, 0xC($t3)
    /* B5E4 8001ADE4 801F093C */  lui        $t1, (0x1F800108 >> 16)
    /* B5E8 8001ADE8 08012935 */  ori        $t1, $t1, (0x1F800108 & 0xFFFF)
    /* B5EC 8001ADEC 00002C95 */  lhu        $t4, 0x0($t1)
    /* B5F0 8001ADF0 06002D95 */  lhu        $t5, 0x6($t1)
    /* B5F4 8001ADF4 0C002E95 */  lhu        $t6, 0xC($t1)
    /* B5F8 8001ADF8 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* B5FC 8001ADFC 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* B600 8001AE00 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* B604 8001AE04 00000000 */  nop
    /* B608 8001AE08 00000000 */  nop
    /* B60C 8001AE0C 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* B610 8001AE10 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* B614 8001AE14 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* B618 8001AE18 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* B61C 8001AE1C 00002CA5 */  sh         $t4, 0x0($t1)
    /* B620 8001AE20 06002DA5 */  sh         $t5, 0x6($t1)
    /* B624 8001AE24 0C002EA5 */  sh         $t6, 0xC($t1)
    /* B628 8001AE28 801F0A3C */  lui        $t2, (0x1F8001A8 >> 16)
    /* B62C 8001AE2C A8014A35 */  ori        $t2, $t2, (0x1F8001A8 & 0xFFFF)
    /* B630 8001AE30 14004C8D */  lw         $t4, 0x14($t2)
    /* B634 8001AE34 18004D8D */  lw         $t5, 0x18($t2)
    /* B638 8001AE38 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* B63C 8001AE3C 1C004E8D */  lw         $t6, 0x1C($t2)
    /* B640 8001AE40 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* B644 8001AE44 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* B648 8001AE48 801F0B3C */  lui        $t3, (0x1F800118 >> 16)
    /* B64C 8001AE4C 18016B35 */  ori        $t3, $t3, (0x1F800118 & 0xFFFF)
    /* B650 8001AE50 04006D95 */  lhu        $t5, 0x4($t3)
    /* B654 8001AE54 00006C95 */  lhu        $t4, 0x0($t3)
    /* B658 8001AE58 006C0D00 */  sll        $t5, $t5, 16
    /* B65C 8001AE5C 25608D01 */  or         $t4, $t4, $t5
    /* B660 8001AE60 00008C48 */  mtc2       $t4, $0 /* handwritten instruction */
    /* B664 8001AE64 080061C9 */  lwc2       $1, 0x8($t3)
    /* B668 8001AE68 00000000 */  nop
    /* B66C 8001AE6C 00000000 */  nop
    /* B670 8001AE70 1200484A */  mvmva      1, 0, 0, 0, 0
    /* B674 8001AE74 000079E9 */  swc2       $25, 0x0($t3)
    /* B678 8001AE78 04007AE9 */  swc2       $26, 0x4($t3) /* handwritten instruction */
    /* B67C 8001AE7C 08007BE9 */  swc2       $27, 0x8($t3) /* handwritten instruction */
    /* B680 8001AE80 801F093C */  lui        $t1, (0x1F800104 >> 16)
    /* B684 8001AE84 04012935 */  ori        $t1, $t1, (0x1F800104 & 0xFFFF)
    /* B688 8001AE88 00002C8D */  lw         $t4, 0x0($t1)
    /* B68C 8001AE8C 04002D8D */  lw         $t5, 0x4($t1)
    /* B690 8001AE90 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* B694 8001AE94 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* B698 8001AE98 08002C8D */  lw         $t4, 0x8($t1)
    /* B69C 8001AE9C 0C002D8D */  lw         $t5, 0xC($t1)
    /* B6A0 8001AEA0 10002E8D */  lw         $t6, 0x10($t1)
    /* B6A4 8001AEA4 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* B6A8 8001AEA8 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* B6AC 8001AEAC 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* B6B0 8001AEB0 14002C8D */  lw         $t4, 0x14($t1)
    /* B6B4 8001AEB4 18002D8D */  lw         $t5, 0x18($t1)
    /* B6B8 8001AEB8 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* B6BC 8001AEBC 1C002E8D */  lw         $t6, 0x1C($t1)
    /* B6C0 8001AEC0 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* B6C4 8001AEC4 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* B6C8 8001AEC8 801F0A3C */  lui        $t2, (0x1F800268 >> 16)
    /* B6CC 8001AECC 68024A35 */  ori        $t2, $t2, (0x1F800268 & 0xFFFF)
    /* B6D0 8001AED0 801F0B3C */  lui        $t3, (0x1F800270 >> 16)
    /* B6D4 8001AED4 70026B35 */  ori        $t3, $t3, (0x1F800270 & 0xFFFF)
    /* B6D8 8001AED8 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* B6DC 8001AEDC 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* B6E0 8001AEE0 801F093C */  lui        $t1, (0x1F800278 >> 16)
    /* B6E4 8001AEE4 78022935 */  ori        $t1, $t1, (0x1F800278 & 0xFFFF)
    /* B6E8 8001AEE8 00110300 */  sll        $v0, $v1, 4
    /* B6EC 8001AEEC 23104300 */  subu       $v0, $v0, $v1
    /* B6F0 8001AEF0 80100200 */  sll        $v0, $v0, 2
    /* B6F4 8001AEF4 23104300 */  subu       $v0, $v0, $v1
    /* B6F8 8001AEF8 80100200 */  sll        $v0, $v0, 2
    /* B6FC 8001AEFC 23104300 */  subu       $v0, $v0, $v1
    /* B700 8001AF00 80110200 */  sll        $v0, $v0, 6
    /* B704 8001AF04 21404400 */  addu       $t0, $v0, $a0
    /* B708 8001AF08 000040C9 */  lwc2       $0, 0x0($t2)
    /* B70C 8001AF0C 040041C9 */  lwc2       $1, 0x4($t2)
    /* B710 8001AF10 000062C9 */  lwc2       $2, 0x0($t3)
    /* B714 8001AF14 040063C9 */  lwc2       $3, 0x4($t3)
    /* B718 8001AF18 000024C9 */  lwc2       $4, 0x0($t1)
    /* B71C 8001AF1C 040025C9 */  lwc2       $5, 0x4($t1)
    /* B720 8001AF20 00000000 */  nop
    /* B724 8001AF24 00000000 */  nop
    /* B728 8001AF28 3000284A */  rtpt
    /* B72C 8001AF2C 30000425 */  addiu      $a0, $t0, 0x30
    /* B730 8001AF30 38000325 */  addiu      $v1, $t0, 0x38
    /* B734 8001AF34 40000225 */  addiu      $v0, $t0, 0x40
    /* B738 8001AF38 00008CE8 */  swc2       $12, 0x0($a0)
    /* B73C 8001AF3C 00006DE8 */  swc2       $13, 0x0($v1)
    /* B740 8001AF40 00004EE8 */  swc2       $14, 0x0($v0)
    /* B744 8001AF44 801F0A3C */  lui        $t2, (0x1F800280 >> 16)
    /* B748 8001AF48 80024A35 */  ori        $t2, $t2, (0x1F800280 & 0xFFFF)
    /* B74C 8001AF4C 000040C9 */  lwc2       $0, 0x0($t2)
    /* B750 8001AF50 040041C9 */  lwc2       $1, 0x4($t2)
    /* B754 8001AF54 00000000 */  nop
    /* B758 8001AF58 00000000 */  nop
    /* B75C 8001AF5C 0100184A */  rtps
    /* B760 8001AF60 48000225 */  addiu      $v0, $t0, 0x48
    /* B764 8001AF64 00004EE8 */  swc2       $14, 0x0($v0)
    /* B768 8001AF68 801F073C */  lui        $a3, (0x1F8000EC >> 16)
    /* B76C 8001AF6C EC00E734 */  ori        $a3, $a3, (0x1F8000EC & 0xFFFF)
    /* B770 8001AF70 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
    /* B774 8001AF74 00000000 */  nop
    /* B778 8001AF78 83600C00 */  sra        $t4, $t4, 2
    /* B77C 8001AF7C 0000ECAC */  sw         $t4, 0x0($a3)
    /* B780 8001AF80 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* B784 8001AF84 F6004290 */  lbu        $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* B788 8001AF88 00000000 */  nop
    /* B78C 8001AF8C 21004010 */  beqz       $v0, .L8001B014
    /* B790 8001AF90 FF00053C */   lui       $a1, (0xFFFFFF >> 16)
    /* B794 8001AF94 FFFFA534 */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* B798 8001AF98 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* B79C 8001AF9C 0000E28C */  lw         $v0, 0x0($a3)
    /* B7A0 8001AFA0 2800048D */  lw         $a0, 0x28($t0)
    /* B7A4 8001AFA4 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* B7A8 8001AFA8 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* B7AC 8001AFAC 83100200 */  sra        $v0, $v0, 2
    /* B7B0 8001AFB0 80100200 */  sll        $v0, $v0, 2
    /* B7B4 8001AFB4 801B0300 */  sll        $v1, $v1, 14
    /* B7B8 8001AFB8 21104300 */  addu       $v0, $v0, $v1
    /* B7BC 8001AFBC 0F80013C */  lui        $at, %hi(D_800F3468)
    /* B7C0 8001AFC0 21082200 */  addu       $at, $at, $v0
    /* B7C4 8001AFC4 6834228C */  lw         $v0, %lo(D_800F3468)($at)
    /* B7C8 8001AFC8 24208600 */  and        $a0, $a0, $a2
    /* B7CC 8001AFCC 24104500 */  and        $v0, $v0, $a1
    /* B7D0 8001AFD0 25208200 */  or         $a0, $a0, $v0
    /* B7D4 8001AFD4 280004AD */  sw         $a0, 0x28($t0)
    /* B7D8 8001AFD8 0F80043C */  lui        $a0, %hi(D_800F3468)
    /* B7DC 8001AFDC 68348424 */  addiu      $a0, $a0, %lo(D_800F3468)
    /* B7E0 8001AFE0 0000E38C */  lw         $v1, 0x0($a3)
    /* B7E4 8001AFE4 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* B7E8 8001AFE8 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* B7EC 8001AFEC 83180300 */  sra        $v1, $v1, 2
    /* B7F0 8001AFF0 80180300 */  sll        $v1, $v1, 2
    /* B7F4 8001AFF4 80130200 */  sll        $v0, $v0, 14
    /* B7F8 8001AFF8 21186200 */  addu       $v1, $v1, $v0
    /* B7FC 8001AFFC 21186400 */  addu       $v1, $v1, $a0
    /* B800 8001B000 28000225 */  addiu      $v0, $t0, 0x28
    /* B804 8001B004 0000648C */  lw         $a0, 0x0($v1)
    /* B808 8001B008 24104500 */  and        $v0, $v0, $a1
    /* B80C 8001B00C 276C0008 */  j          .L8001B09C
    /* B810 8001B010 24208600 */   and       $a0, $a0, $a2
  .L8001B014:
    /* B814 8001B014 0000E28C */  lw         $v0, 0x0($a3)
    /* B818 8001B018 00000000 */  nop
    /* B81C 8001B01C 21004018 */  blez       $v0, .L8001B0A4
    /* B820 8001B020 FF00063C */   lui       $a2, (0xFFFFFF >> 16)
    /* B824 8001B024 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* B828 8001B028 04000524 */  addiu      $a1, $zero, 0x4
    /* B82C 8001B02C 00FF073C */  lui        $a3, (0xFF000000 >> 16)
    /* B830 8001B030 2800048D */  lw         $a0, 0x28($t0)
    /* B834 8001B034 0000038E */  lw         $v1, (0x1F800000 & 0xFFFF)($s0)
    /* B838 8001B038 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* B83C 8001B03C 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* B840 8001B040 04186500 */  sllv       $v1, $a1, $v1
    /* B844 8001B044 80130200 */  sll        $v0, $v0, 14
    /* B848 8001B048 21104300 */  addu       $v0, $v0, $v1
    /* B84C 8001B04C 0F80013C */  lui        $at, %hi(D_800F3560)
    /* B850 8001B050 21082200 */  addu       $at, $at, $v0
    /* B854 8001B054 6035228C */  lw         $v0, %lo(D_800F3560)($at)
    /* B858 8001B058 24208700 */  and        $a0, $a0, $a3
    /* B85C 8001B05C 24104600 */  and        $v0, $v0, $a2
    /* B860 8001B060 25208200 */  or         $a0, $a0, $v0
    /* B864 8001B064 280004AD */  sw         $a0, 0x28($t0)
    /* B868 8001B068 0F80043C */  lui        $a0, %hi(D_800F3560)
    /* B86C 8001B06C 60358424 */  addiu      $a0, $a0, %lo(D_800F3560)
    /* B870 8001B070 0000028E */  lw         $v0, (0x1F800000 & 0xFFFF)($s0)
    /* B874 8001B074 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* B878 8001B078 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* B87C 8001B07C 04284500 */  sllv       $a1, $a1, $v0
    /* B880 8001B080 801B0300 */  sll        $v1, $v1, 14
    /* B884 8001B084 21186500 */  addu       $v1, $v1, $a1
    /* B888 8001B088 21186400 */  addu       $v1, $v1, $a0
    /* B88C 8001B08C 28000225 */  addiu      $v0, $t0, 0x28
    /* B890 8001B090 0000648C */  lw         $a0, 0x0($v1)
    /* B894 8001B094 24104600 */  and        $v0, $v0, $a2
    /* B898 8001B098 24208700 */  and        $a0, $a0, $a3
  .L8001B09C:
    /* B89C 8001B09C 25208200 */  or         $a0, $a0, $v0
    /* B8A0 8001B0A0 000064AC */  sw         $a0, 0x0($v1)
  .L8001B0A4:
    /* B8A4 8001B0A4 2400BF8F */  lw         $ra, 0x24($sp)
    /* B8A8 8001B0A8 2000B08F */  lw         $s0, 0x20($sp)
    /* B8AC 8001B0AC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* B8B0 8001B0B0 0800E003 */  jr         $ra
    /* B8B4 8001B0B4 00000000 */   nop
endlabel func_8001AC74
