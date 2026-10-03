nonmatching func_8008ABA8, 0x648

glabel func_8008ABA8
    /* 7B3A8 8008ABA8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 7B3AC 8008ABAC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7B3B0 8008ABB0 21888000 */  addu       $s1, $a0, $zero
    /* 7B3B4 8008ABB4 3400B7AF */  sw         $s7, 0x34($sp)
    /* 7B3B8 8008ABB8 21B8A000 */  addu       $s7, $a1, $zero
    /* 7B3BC 8008ABBC 3800BEAF */  sw         $fp, 0x38($sp)
    /* 7B3C0 8008ABC0 10801E3C */  lui        $fp, %hi(D_800FF748)
    /* 7B3C4 8008ABC4 48F7DE27 */  addiu      $fp, $fp, %lo(D_800FF748)
    /* 7B3C8 8008ABC8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 7B3CC 8008ABCC 801F143C */  lui        $s4, (0x1F8002BA >> 16)
    /* 7B3D0 8008ABD0 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 7B3D4 8008ABD4 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 7B3D8 8008ABD8 01000224 */  addiu      $v0, $zero, 0x1
    /* 7B3DC 8008ABDC 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 7B3E0 8008ABE0 3000B6AF */  sw         $s6, 0x30($sp)
    /* 7B3E4 8008ABE4 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 7B3E8 8008ABE8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 7B3EC 8008ABEC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7B3F0 8008ABF0 24016214 */  bne        $v1, $v0, .L8008B084
    /* 7B3F4 8008ABF4 1800B0AF */   sw        $s0, 0x18($sp)
    /* 7B3F8 8008ABF8 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 7B3FC 8008ABFC A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 7B400 8008AC00 00000000 */  nop
    /* 7B404 8008AC04 16004014 */  bnez       $v0, .L8008AC60
    /* 7B408 8008AC08 08000224 */   addiu     $v0, $zero, 0x8
    /* 7B40C 8008AC0C 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 7B410 8008AC10 801F023C */  lui        $v0, (0x1F8002AA >> 16)
    /* 7B414 8008AC14 AA024290 */  lbu        $v0, (0x1F8002AA & 0xFFFF)($v0)
    /* 7B418 8008AC18 00000000 */  nop
    /* 7B41C 8008AC1C 10006210 */  beq        $v1, $v0, .L8008AC60
    /* 7B420 8008AC20 08000224 */   addiu     $v0, $zero, 0x8
    /* 7B424 8008AC24 B9032392 */  lbu        $v1, 0x3B9($s1)
    /* 7B428 8008AC28 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 7B42C 8008AC2C CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 7B430 8008AC30 19006200 */  multu      $v1, $v0
    /* 7B434 8008AC34 13000224 */  addiu      $v0, $zero, 0x13
    /* 7B438 8008AC38 801F033C */  lui        $v1, (0x1F80031C >> 16)
    /* 7B43C 8008AC3C 1C036384 */  lh         $v1, (0x1F80031C & 0xFFFF)($v1)
    /* 7B440 8008AC40 10480000 */  mfhi       $t1
    /* 7B444 8008AC44 C2200900 */  srl        $a0, $t1, 3
    /* 7B448 8008AC48 FF008430 */  andi       $a0, $a0, 0xFF
    /* 7B44C 8008AC4C 23104400 */  subu       $v0, $v0, $a0
    /* 7B450 8008AC50 2A186200 */  slt        $v1, $v1, $v0
    /* 7B454 8008AC54 59016014 */  bnez       $v1, .L8008B1BC
    /* 7B458 8008AC58 21100000 */   addu      $v0, $zero, $zero
    /* 7B45C 8008AC5C 08000224 */  addiu      $v0, $zero, 0x8
  .L8008AC60:
    /* 7B460 8008AC60 23105700 */  subu       $v0, $v0, $s7
    /* 7B464 8008AC64 40100200 */  sll        $v0, $v0, 1
    /* 7B468 8008AC68 21185400 */  addu       $v1, $v0, $s4
    /* 7B46C 8008AC6C 4E006284 */  lh         $v0, (0x1F80004E & 0xFFFF)($v1)
    /* 7B470 8008AC70 00000000 */  nop
    /* 7B474 8008AC74 A0FF4228 */  slti       $v0, $v0, -0x60
    /* 7B478 8008AC78 50014014 */  bnez       $v0, .L8008B1BC
    /* 7B47C 8008AC7C 21100000 */   addu      $v0, $zero, $zero
    /* 7B480 8008AC80 36007594 */  lhu        $s5, (0x1F800036 & 0xFFFF)($v1)
    /* 7B484 8008AC84 E0008296 */  lhu        $v0, (0x1F8000E0 & 0xFFFF)($s4)
    /* 7B488 8008AC88 66007694 */  lhu        $s6, (0x1F800066 & 0xFFFF)($v1)
    /* 7B48C 8008AC8C 4B014014 */  bnez       $v0, .L8008B1BC
    /* 7B490 8008AC90 21100000 */   addu      $v0, $zero, $zero
    /* 7B494 8008AC94 00141600 */  sll        $v0, $s6, 16
    /* 7B498 8008AC98 03140200 */  sra        $v0, $v0, 16
    /* 7B49C 8008AC9C 02004104 */  bgez       $v0, .L8008ACA8
    /* 7B4A0 8008ACA0 00000000 */   nop
    /* 7B4A4 8008ACA4 23100200 */  negu       $v0, $v0
  .L8008ACA8:
    /* 7B4A8 8008ACA8 F4124228 */  slti       $v0, $v0, 0x12F4
    /* 7B4AC 8008ACAC F5004010 */  beqz       $v0, .L8008B084
    /* 7B4B0 8008ACB0 00141500 */   sll       $v0, $s5, 16
    /* 7B4B4 8008ACB4 99032392 */  lbu        $v1, 0x399($s1)
    /* 7B4B8 8008ACB8 00000000 */  nop
    /* 7B4BC 8008ACBC 02006010 */  beqz       $v1, .L8008ACC8
    /* 7B4C0 8008ACC0 03140200 */   sra       $v0, $v0, 16
    /* 7B4C4 8008ACC4 23100200 */  negu       $v0, $v0
  .L8008ACC8:
    /* 7B4C8 8008ACC8 DFDB4228 */  slti       $v0, $v0, -0x2421
    /* 7B4CC 8008ACCC ED004010 */  beqz       $v0, .L8008B084
    /* 7B4D0 8008ACD0 00000000 */   nop
    /* 7B4D4 8008ACD4 4C008396 */  lhu        $v1, (0x1F80004C & 0xFFFF)($s4)
    /* 7B4D8 8008ACD8 F402828E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s4)
    /* 7B4DC 8008ACDC 99032492 */  lbu        $a0, 0x399($s1)
    /* 7B4E0 8008ACE0 001C0300 */  sll        $v1, $v1, 16
    /* 7B4E4 8008ACE4 0800428C */  lw         $v0, 0x8($v0)
    /* 7B4E8 8008ACE8 031C0300 */  sra        $v1, $v1, 16
    /* 7B4EC 8008ACEC 43110200 */  sra        $v0, $v0, 5
    /* 7B4F0 8008ACF0 02008010 */  beqz       $a0, .L8008ACFC
    /* 7B4F4 8008ACF4 21106200 */   addu      $v0, $v1, $v0
    /* 7B4F8 8008ACF8 23100200 */  negu       $v0, $v0
  .L8008ACFC:
    /* 7B4FC 8008ACFC E0CC4228 */  slti       $v0, $v0, -0x3320
    /* 7B500 8008AD00 2E014014 */  bnez       $v0, .L8008B1BC
    /* 7B504 8008AD04 21100000 */   addu      $v0, $zero, $zero
    /* 7B508 8008AD08 99032292 */  lbu        $v0, 0x399($s1)
    /* 7B50C 8008AD0C 00000000 */  nop
    /* 7B510 8008AD10 40100200 */  sll        $v0, $v0, 1
    /* 7B514 8008AD14 21108202 */  addu       $v0, $s4, $v0
    /* 7B518 8008AD18 1E034590 */  lbu        $a1, (0x1F80031E & 0xFFFF)($v0)
    /* 7B51C 8008AD1C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 7B520 8008AD20 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 7B524 8008AD24 1900A200 */  multu      $a1, $v0
    /* 7B528 8008AD28 003C1500 */  sll        $a3, $s5, 16
    /* 7B52C 8008AD2C 02002286 */  lh         $v0, 0x2($s1)
    /* 7B530 8008AD30 10180000 */  mfhi       $v1
    /* 7B534 8008AD34 033C0700 */  sra        $a3, $a3, 16
    /* 7B538 8008AD38 23104700 */  subu       $v0, $v0, $a3
    /* 7B53C 8008AD3C 18004200 */  mult       $v0, $v0
    /* 7B540 8008AD40 00341600 */  sll        $a2, $s6, 16
    /* 7B544 8008AD44 06002486 */  lh         $a0, 0x6($s1)
    /* 7B548 8008AD48 03340600 */  sra        $a2, $a2, 16
    /* 7B54C 8008AD4C 23208600 */  subu       $a0, $a0, $a2
    /* 7B550 8008AD50 12400000 */  mflo       $t0
    /* 7B554 8008AD54 02190300 */  srl        $v1, $v1, 4
    /* 7B558 8008AD58 40100300 */  sll        $v0, $v1, 1
    /* 7B55C 8008AD5C 18008400 */  mult       $a0, $a0
    /* 7B560 8008AD60 21104300 */  addu       $v0, $v0, $v1
    /* 7B564 8008AD64 C0100200 */  sll        $v0, $v0, 3
    /* 7B568 8008AD68 2328A200 */  subu       $a1, $a1, $v0
    /* 7B56C 8008AD6C FF00A530 */  andi       $a1, $a1, 0xFF
    /* 7B570 8008AD70 40110500 */  sll        $v0, $a1, 5
    /* 7B574 8008AD74 23104500 */  subu       $v0, $v0, $a1
    /* 7B578 8008AD78 80100200 */  sll        $v0, $v0, 2
    /* 7B57C 8008AD7C 21104500 */  addu       $v0, $v0, $a1
    /* 7B580 8008AD80 C0100200 */  sll        $v0, $v0, 3
    /* 7B584 8008AD84 2180C203 */  addu       $s0, $fp, $v0
    /* 7B588 8008AD88 02000286 */  lh         $v0, 0x2($s0)
    /* 7B58C 8008AD8C 12200000 */  mflo       $a0
    /* 7B590 8008AD90 23104700 */  subu       $v0, $v0, $a3
    /* 7B594 8008AD94 00000000 */  nop
    /* 7B598 8008AD98 18004200 */  mult       $v0, $v0
    /* 7B59C 8008AD9C 06000286 */  lh         $v0, 0x6($s0)
    /* 7B5A0 8008ADA0 12180000 */  mflo       $v1
    /* 7B5A4 8008ADA4 23104600 */  subu       $v0, $v0, $a2
    /* 7B5A8 8008ADA8 00000000 */  nop
    /* 7B5AC 8008ADAC 18004200 */  mult       $v0, $v0
    /* 7B5B0 8008ADB0 21980401 */  addu       $s3, $t0, $a0
    /* 7B5B4 8008ADB4 12500000 */  mflo       $t2
    /* 7B5B8 8008ADB8 21106A00 */  addu       $v0, $v1, $t2
    /* 7B5BC 8008ADBC 2B105300 */  sltu       $v0, $v0, $s3
    /* 7B5C0 8008ADC0 FE004014 */  bnez       $v0, .L8008B1BC
    /* 7B5C4 8008ADC4 21100000 */   addu      $v0, $zero, $zero
    /* 7B5C8 8008ADC8 B8028296 */  lhu        $v0, (0x1F8002B8 & 0xFFFF)($s4)
    /* 7B5CC 8008ADCC 00000000 */  nop
    /* 7B5D0 8008ADD0 00140200 */  sll        $v0, $v0, 16
    /* 7B5D4 8008ADD4 032C0200 */  sra        $a1, $v0, 16
    /* 7B5D8 8008ADD8 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 7B5DC 8008ADDC 0900A210 */  beq        $a1, $v0, .L8008AE04
    /* 7B5E0 8008ADE0 21202002 */   addu      $a0, $s1, $zero
    /* 7B5E4 8008ADE4 BA028696 */  lhu        $a2, (0x1F8002BA & 0xFFFF)($s4)
    /* 7B5E8 8008ADE8 00000000 */  nop
    /* 7B5EC 8008ADEC 00340600 */  sll        $a2, $a2, 16
    /* 7B5F0 8008ADF0 A325010C */  jal        func_8004968C
    /* 7B5F4 8008ADF4 03340600 */   sra       $a2, $a2, 16
    /* 7B5F8 8008ADF8 2B105300 */  sltu       $v0, $v0, $s3
    /* 7B5FC 8008ADFC EF004014 */  bnez       $v0, .L8008B1BC
    /* 7B600 8008AE00 21100000 */   addu      $v0, $zero, $zero
  .L8008AE04:
    /* 7B604 8008AE04 00341500 */  sll        $a2, $s5, 16
    /* 7B608 8008AE08 03340600 */  sra        $a2, $a2, 16
    /* 7B60C 8008AE0C 003C1600 */  sll        $a3, $s6, 16
    /* 7B610 8008AE10 02002486 */  lh         $a0, 0x2($s1)
    /* 7B614 8008AE14 06002586 */  lh         $a1, 0x6($s1)
    /* 7B618 8008AE18 DB6C010C */  jal        func_8005B36C
    /* 7B61C 8008AE1C 033C0700 */   sra       $a3, $a3, 16
    /* 7B620 8008AE20 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 7B624 8008AE24 21904000 */  addu       $s2, $v0, $zero
    /* 7B628 8008AE28 23104402 */  subu       $v0, $s2, $a0
    /* 7B62C 8008AE2C FF004330 */  andi       $v1, $v0, 0xFF
    /* 7B630 8008AE30 8100622C */  sltiu      $v0, $v1, 0x81
    /* 7B634 8008AE34 04004014 */  bnez       $v0, .L8008AE48
    /* 7B638 8008AE38 23109200 */   subu      $v0, $a0, $s2
    /* 7B63C 8008AE3C FF004230 */  andi       $v0, $v0, 0xFF
    /* 7B640 8008AE40 932B0208 */  j          .L8008AE4C
    /* 7B644 8008AE44 31004228 */   slti      $v0, $v0, 0x31
  .L8008AE48:
    /* 7B648 8008AE48 31006228 */  slti       $v0, $v1, 0x31
  .L8008AE4C:
    /* 7B64C 8008AE4C DB004010 */  beqz       $v0, .L8008B1BC
    /* 7B650 8008AE50 21100000 */   addu      $v0, $zero, $zero
    /* 7B654 8008AE54 A9028292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s4)
    /* 7B658 8008AE58 00000000 */  nop
    /* 7B65C 8008AE5C FF004430 */  andi       $a0, $v0, 0xFF
    /* 7B660 8008AE60 6A008010 */  beqz       $a0, .L8008B00C
    /* 7B664 8008AE64 00000000 */   nop
    /* 7B668 8008AE68 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 7B66C 8008AE6C 00000000 */  nop
    /* 7B670 8008AE70 66004410 */  beq        $v0, $a0, .L8008B00C
    /* 7B674 8008AE74 00000000 */   nop
    /* 7B678 8008AE78 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 7B67C 8008AE7C ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 7B680 8008AE80 19008200 */  multu      $a0, $v0
    /* 7B684 8008AE84 10480000 */  mfhi       $t1
    /* 7B688 8008AE88 02110900 */  srl        $v0, $t1, 4
    /* 7B68C 8008AE8C 40180200 */  sll        $v1, $v0, 1
    /* 7B690 8008AE90 21186200 */  addu       $v1, $v1, $v0
    /* 7B694 8008AE94 C0180300 */  sll        $v1, $v1, 3
    /* 7B698 8008AE98 23188300 */  subu       $v1, $a0, $v1
    /* 7B69C 8008AE9C FF006330 */  andi       $v1, $v1, 0xFF
    /* 7B6A0 8008AEA0 40110300 */  sll        $v0, $v1, 5
    /* 7B6A4 8008AEA4 23104300 */  subu       $v0, $v0, $v1
    /* 7B6A8 8008AEA8 80100200 */  sll        $v0, $v0, 2
    /* 7B6AC 8008AEAC 21104300 */  addu       $v0, $v0, $v1
    /* 7B6B0 8008AEB0 C0100200 */  sll        $v0, $v0, 3
    /* 7B6B4 8008AEB4 2180C203 */  addu       $s0, $fp, $v0
    /* 7B6B8 8008AEB8 96030392 */  lbu        $v1, 0x396($s0)
    /* 7B6BC 8008AEBC 04000224 */  addiu      $v0, $zero, 0x4
    /* 7B6C0 8008AEC0 38006214 */  bne        $v1, $v0, .L8008AFA4
    /* 7B6C4 8008AEC4 00000000 */   nop
    /* 7B6C8 8008AEC8 AE79000C */  jal        func_8001E6B8
    /* 7B6CC 8008AECC 04000424 */   addiu     $a0, $zero, 0x4
    /* 7B6D0 8008AED0 34004014 */  bnez       $v0, .L8008AFA4
    /* 7B6D4 8008AED4 00000000 */   nop
    /* 7B6D8 8008AED8 F402848E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s4)
    /* 7B6DC 8008AEDC 02000286 */  lh         $v0, 0x2($s0)
    /* 7B6E0 8008AEE0 02008384 */  lh         $v1, 0x2($a0)
    /* 7B6E4 8008AEE4 00000000 */  nop
    /* 7B6E8 8008AEE8 23104300 */  subu       $v0, $v0, $v1
    /* 7B6EC 8008AEEC 18004200 */  mult       $v0, $v0
    /* 7B6F0 8008AEF0 06000286 */  lh         $v0, 0x6($s0)
    /* 7B6F4 8008AEF4 06008384 */  lh         $v1, 0x6($a0)
    /* 7B6F8 8008AEF8 12280000 */  mflo       $a1
    /* 7B6FC 8008AEFC 23104300 */  subu       $v0, $v0, $v1
    /* 7B700 8008AF00 00000000 */  nop
    /* 7B704 8008AF04 18004200 */  mult       $v0, $v0
    /* 7B708 8008AF08 0200023C */  lui        $v0, (0x24000 >> 16)
    /* 7B70C 8008AF0C 00404234 */  ori        $v0, $v0, (0x24000 & 0xFFFF)
    /* 7B710 8008AF10 12180000 */  mflo       $v1
    /* 7B714 8008AF14 2118A300 */  addu       $v1, $a1, $v1
    /* 7B718 8008AF18 2A104300 */  slt        $v0, $v0, $v1
    /* 7B71C 8008AF1C 21004014 */  bnez       $v0, .L8008AFA4
    /* 7B720 8008AF20 00000000 */   nop
    /* 7B724 8008AF24 92032292 */  lbu        $v0, 0x392($s1)
    /* 7B728 8008AF28 98032492 */  lbu        $a0, 0x398($s1)
    /* 7B72C 8008AF2C 40180200 */  sll        $v1, $v0, 1
    /* 7B730 8008AF30 21186200 */  addu       $v1, $v1, $v0
    /* 7B734 8008AF34 80180300 */  sll        $v1, $v1, 2
    /* 7B738 8008AF38 40110400 */  sll        $v0, $a0, 5
    /* 7B73C 8008AF3C 21104400 */  addu       $v0, $v0, $a0
    /* 7B740 8008AF40 C0100200 */  sll        $v0, $v0, 3
    /* 7B744 8008AF44 21186200 */  addu       $v1, $v1, $v0
    /* 7B748 8008AF48 1180013C */  lui        $at, %hi(D_8010C328)
    /* 7B74C 8008AF4C 21082300 */  addu       $at, $at, $v1
    /* 7B750 8008AF50 28C3228C */  lw         $v0, %lo(D_8010C328)($at)
    /* 7B754 8008AF54 00000000 */  nop
    /* 7B758 8008AF58 0F004230 */  andi       $v0, $v0, 0xF
    /* 7B75C 8008AF5C 80100200 */  sll        $v0, $v0, 2
    /* 7B760 8008AF60 0D80013C */  lui        $at, %hi(D_800CA618)
    /* 7B764 8008AF64 21082200 */  addu       $at, $at, $v0
    /* 7B768 8008AF68 18A6228C */  lw         $v0, %lo(D_800CA618)($at)
    /* 7B76C 8008AF6C 00000000 */  nop
    /* 7B770 8008AF70 18004200 */  mult       $v0, $v0
    /* 7B774 8008AF74 12100000 */  mflo       $v0
    /* 7B778 8008AF78 2B105300 */  sltu       $v0, $v0, $s3
    /* 7B77C 8008AF7C 8F004014 */  bnez       $v0, .L8008B1BC
    /* 7B780 8008AF80 21100000 */   addu      $v0, $zero, $zero
    /* 7B784 8008AF84 0321010C */  jal        func_8004840C
    /* 7B788 8008AF88 21202002 */   addu      $a0, $s1, $zero
    /* 7B78C 8008AF8C F8008296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s4)
    /* 7B790 8008AF90 00000000 */  nop
    /* 7B794 8008AF94 C20322A6 */  sh         $v0, 0x3C2($s1)
    /* 7B798 8008AF98 FC008296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s4)
    /* 7B79C 8008AF9C 252C0208 */  j          .L8008B094
    /* 7B7A0 8008AFA0 C60322A6 */   sh        $v0, 0x3C6($s1)
  .L8008AFA4:
    /* 7B7A4 8008AFA4 B4032392 */  lbu        $v1, 0x3B4($s1)
    /* 7B7A8 8008AFA8 00000000 */  nop
    /* 7B7AC 8008AFAC 18006300 */  mult       $v1, $v1
    /* 7B7B0 8008AFB0 12180000 */  mflo       $v1
    /* 7B7B4 8008AFB4 80100300 */  sll        $v0, $v1, 2
    /* 7B7B8 8008AFB8 21104300 */  addu       $v0, $v0, $v1
    /* 7B7BC 8008AFBC 00110200 */  sll        $v0, $v0, 4
    /* 7B7C0 8008AFC0 21104300 */  addu       $v0, $v0, $v1
    /* 7B7C4 8008AFC4 00C40334 */  ori        $v1, $zero, 0xC400
    /* 7B7C8 8008AFC8 21104300 */  addu       $v0, $v0, $v1
    /* 7B7CC 8008AFCC 2B105300 */  sltu       $v0, $v0, $s3
    /* 7B7D0 8008AFD0 7A004014 */  bnez       $v0, .L8008B1BC
    /* 7B7D4 8008AFD4 21100000 */   addu      $v0, $zero, $zero
    /* 7B7D8 8008AFD8 5E008296 */  lhu        $v0, (0x1F80005E & 0xFFFF)($s4)
    /* 7B7DC 8008AFDC 00000000 */  nop
    /* 7B7E0 8008AFE0 00140200 */  sll        $v0, $v0, 16
    /* 7B7E4 8008AFE4 03140200 */  sra        $v0, $v0, 16
    /* 7B7E8 8008AFE8 40FF4228 */  slti       $v0, $v0, -0xC0
    /* 7B7EC 8008AFEC 73004014 */  bnez       $v0, .L8008B1BC
    /* 7B7F0 8008AFF0 21100000 */   addu      $v0, $zero, $zero
    /* 7B7F4 8008AFF4 46008296 */  lhu        $v0, (0x1F800046 & 0xFFFF)($s4)
    /* 7B7F8 8008AFF8 00000000 */  nop
    /* 7B7FC 8008AFFC C20322A6 */  sh         $v0, 0x3C2($s1)
    /* 7B800 8008B000 76008296 */  lhu        $v0, (0x1F800076 & 0xFFFF)($s4)
    /* 7B804 8008B004 252C0208 */  j          .L8008B094
    /* 7B808 8008B008 C60322A6 */   sh        $v0, 0x3C6($s1)
  .L8008B00C:
    /* 7B80C 8008B00C A003238E */  lw         $v1, 0x3A0($s1)
    /* 7B810 8008B010 00000000 */  nop
    /* 7B814 8008B014 3100622C */  sltiu      $v0, $v1, 0x31
    /* 7B818 8008B018 06004014 */  bnez       $v0, .L8008B034
    /* 7B81C 8008B01C 09000224 */   addiu     $v0, $zero, 0x9
    /* 7B820 8008B020 23105700 */  subu       $v0, $v0, $s7
    /* 7B824 8008B024 18006200 */  mult       $v1, $v0
    /* 7B828 8008B028 12480000 */  mflo       $t1
    /* 7B82C 8008B02C 132C0208 */  j          .L8008B04C
    /* 7B830 8008B030 80002225 */   addiu     $v0, $t1, 0x80
  .L8008B034:
    /* 7B834 8008B034 09000324 */  addiu      $v1, $zero, 0x9
    /* 7B838 8008B038 23187700 */  subu       $v1, $v1, $s7
    /* 7B83C 8008B03C 40100300 */  sll        $v0, $v1, 1
    /* 7B840 8008B040 21104300 */  addu       $v0, $v0, $v1
    /* 7B844 8008B044 00110200 */  sll        $v0, $v0, 4
    /* 7B848 8008B048 80004224 */  addiu      $v0, $v0, 0x80
  .L8008B04C:
    /* 7B84C 8008B04C 18004200 */  mult       $v0, $v0
    /* 7B850 8008B050 12100000 */  mflo       $v0
    /* 7B854 8008B054 2B105300 */  sltu       $v0, $v0, $s3
    /* 7B858 8008B058 58004014 */  bnez       $v0, .L8008B1BC
    /* 7B85C 8008B05C 21100000 */   addu      $v0, $zero, $zero
    /* 7B860 8008B060 08000224 */  addiu      $v0, $zero, 0x8
    /* 7B864 8008B064 23105700 */  subu       $v0, $v0, $s7
    /* 7B868 8008B068 40100200 */  sll        $v0, $v0, 1
    /* 7B86C 8008B06C 21105400 */  addu       $v0, $v0, $s4
    /* 7B870 8008B070 4E004284 */  lh         $v0, (0x1F80004E & 0xFFFF)($v0)
    /* 7B874 8008B074 00000000 */  nop
    /* 7B878 8008B078 40FF4228 */  slti       $v0, $v0, -0xC0
    /* 7B87C 8008B07C 03004010 */  beqz       $v0, .L8008B08C
    /* 7B880 8008B080 00000000 */   nop
  .L8008B084:
    /* 7B884 8008B084 6F2C0208 */  j          .L8008B1BC
    /* 7B888 8008B088 21100000 */   addu      $v0, $zero, $zero
  .L8008B08C:
    /* 7B88C 8008B08C C20335A6 */  sh         $s5, 0x3C2($s1)
    /* 7B890 8008B090 C60336A6 */  sh         $s6, 0x3C6($s1)
  .L8008B094:
    /* 7B894 8008B094 21202002 */  addu       $a0, $s1, $zero
    /* 7B898 8008B098 67000524 */  addiu      $a1, $zero, 0x67
    /* 7B89C 8008B09C 08000624 */  addiu      $a2, $zero, 0x8
    /* 7B8A0 8008B0A0 99032292 */  lbu        $v0, 0x399($s1)
    /* 7B8A4 8008B0A4 FF004732 */  andi       $a3, $s2, 0xFF
    /* 7B8A8 8008B0A8 AB0332A2 */  sb         $s2, 0x3AB($s1)
    /* 7B8AC 8008B0AC C0110200 */  sll        $v0, $v0, 7
    /* 7B8B0 8008B0B0 23105200 */  subu       $v0, $v0, $s2
    /* 7B8B4 8008B0B4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7B8B8 8008B0B8 8100422C */  sltiu      $v0, $v0, 0x81
    /* 7B8BC 8008B0BC 01004238 */  xori       $v0, $v0, 0x1
    /* 7B8C0 8008B0C0 AC0322A2 */  sb         $v0, 0x3AC($s1)
    /* 7B8C4 8008B0C4 AB70010C */  jal        func_8005C2AC
    /* 7B8C8 8008B0C8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7B8CC 8008B0CC 001C1500 */  sll        $v1, $s5, 16
    /* 7B8D0 8008B0D0 F0008296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s4)
    /* 7B8D4 8008B0D4 039C0300 */  sra        $s3, $v1, 16
    /* 7B8D8 8008B0D8 00140200 */  sll        $v0, $v0, 16
    /* 7B8DC 8008B0DC 03140200 */  sra        $v0, $v0, 16
    /* 7B8E0 8008B0E0 23105300 */  subu       $v0, $v0, $s3
    /* 7B8E4 8008B0E4 18004200 */  mult       $v0, $v0
    /* 7B8E8 8008B0E8 001C1600 */  sll        $v1, $s6, 16
    /* 7B8EC 8008B0EC F4008296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s4)
    /* 7B8F0 8008B0F0 03840300 */  sra        $s0, $v1, 16
    /* 7B8F4 8008B0F4 00140200 */  sll        $v0, $v0, 16
    /* 7B8F8 8008B0F8 12200000 */  mflo       $a0
    /* 7B8FC 8008B0FC 03140200 */  sra        $v0, $v0, 16
    /* 7B900 8008B100 23105000 */  subu       $v0, $v0, $s0
    /* 7B904 8008B104 18004200 */  mult       $v0, $v0
    /* 7B908 8008B108 12180000 */  mflo       $v1
    /* 7B90C 8008B10C 4AC4020C */  jal        func_800B1128
    /* 7B910 8008B110 21208300 */   addu      $a0, $a0, $v1
    /* 7B914 8008B114 09000324 */  addiu      $v1, $zero, 0x9
    /* 7B918 8008B118 23187700 */  subu       $v1, $v1, $s7
    /* 7B91C 8008B11C 1B004300 */  divu       $zero, $v0, $v1
    /* 7B920 8008B120 02006014 */  bnez       $v1, .L8008B12C
    /* 7B924 8008B124 00000000 */   nop
    /* 7B928 8008B128 0D000700 */  break      7
  .L8008B12C:
    /* 7B92C 8008B12C 12900000 */  mflo       $s2
    /* 7B930 8008B130 B4032292 */  lbu        $v0, 0x3B4($s1)
    /* 7B934 8008B134 00000000 */  nop
    /* 7B938 8008B138 08004324 */  addiu      $v1, $v0, 0x8
    /* 7B93C 8008B13C 2B107200 */  sltu       $v0, $v1, $s2
    /* 7B940 8008B140 02004010 */  beqz       $v0, .L8008B14C
    /* 7B944 8008B144 21306002 */   addu      $a2, $s3, $zero
    /* 7B948 8008B148 21906000 */  addu       $s2, $v1, $zero
  .L8008B14C:
    /* 7B94C 8008B14C 21380002 */  addu       $a3, $s0, $zero
    /* 7B950 8008B150 F0008496 */  lhu        $a0, (0x1F8000F0 & 0xFFFF)($s4)
    /* 7B954 8008B154 F4008596 */  lhu        $a1, (0x1F8000F4 & 0xFFFF)($s4)
    /* 7B958 8008B158 00240400 */  sll        $a0, $a0, 16
    /* 7B95C 8008B15C 03240400 */  sra        $a0, $a0, 16
    /* 7B960 8008B160 002C0500 */  sll        $a1, $a1, 16
    /* 7B964 8008B164 DB6C010C */  jal        func_8005B36C
    /* 7B968 8008B168 032C0500 */   sra       $a1, $a1, 16
    /* 7B96C 8008B16C FF005030 */  andi       $s0, $v0, 0xFF
    /* 7B970 8008B170 21200002 */  addu       $a0, $s0, $zero
    /* 7B974 8008B174 A579000C */  jal        func_8001E694
    /* 7B978 8008B178 21284002 */   addu      $a1, $s2, $zero
    /* 7B97C 8008B17C 21200002 */  addu       $a0, $s0, $zero
    /* 7B980 8008B180 21284002 */  addu       $a1, $s2, $zero
    /* 7B984 8008B184 6979000C */  jal        func_8001E5A4
    /* 7B988 8008B188 080022AE */   sw        $v0, 0x8($s1)
    /* 7B98C 8008B18C 21202002 */  addu       $a0, $s1, $zero
    /* 7B990 8008B190 67000524 */  addiu      $a1, $zero, 0x67
    /* 7B994 8008B194 FF00E632 */  andi       $a2, $s7, 0xFF
    /* 7B998 8008B198 100022AE */  sw         $v0, 0x10($s1)
    /* 7B99C 8008B19C CE0320A6 */  sh         $zero, 0x3CE($s1)
    /* 7B9A0 8008B1A0 D10320A2 */  sb         $zero, 0x3D1($s1)
    /* 7B9A4 8008B1A4 8C6E010C */  jal        func_8005BA30
    /* 7B9A8 8008B1A8 040020A6 */   sh        $zero, 0x4($s1)
    /* 7B9AC 8008B1AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 7B9B0 8008B1B0 91000324 */  addiu      $v1, $zero, 0x91
    /* 7B9B4 8008B1B4 960323A2 */  sb         $v1, 0x396($s1)
    /* 7B9B8 8008B1B8 970320A2 */  sb         $zero, 0x397($s1)
  .L8008B1BC:
    /* 7B9BC 8008B1BC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 7B9C0 8008B1C0 3800BE8F */  lw         $fp, 0x38($sp)
    /* 7B9C4 8008B1C4 3400B78F */  lw         $s7, 0x34($sp)
    /* 7B9C8 8008B1C8 3000B68F */  lw         $s6, 0x30($sp)
    /* 7B9CC 8008B1CC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 7B9D0 8008B1D0 2800B48F */  lw         $s4, 0x28($sp)
    /* 7B9D4 8008B1D4 2400B38F */  lw         $s3, 0x24($sp)
    /* 7B9D8 8008B1D8 2000B28F */  lw         $s2, 0x20($sp)
    /* 7B9DC 8008B1DC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7B9E0 8008B1E0 1800B08F */  lw         $s0, 0x18($sp)
    /* 7B9E4 8008B1E4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 7B9E8 8008B1E8 0800E003 */  jr         $ra
    /* 7B9EC 8008B1EC 00000000 */   nop
endlabel func_8008ABA8
