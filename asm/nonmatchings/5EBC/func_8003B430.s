nonmatching func_8003B430, 0x47C

glabel func_8003B430
    /* 2BC30 8003B430 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2BC34 8003B434 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2BC38 8003B438 21888000 */  addu       $s1, $a0, $zero
    /* 2BC3C 8003B43C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2BC40 8003B440 801F133C */  lui        $s3, (0x1F800066 >> 16)
    /* 2BC44 8003B444 3000B6AF */  sw         $s6, 0x30($sp)
    /* 2BC48 8003B448 21B00000 */  addu       $s6, $zero, $zero
    /* 2BC4C 8003B44C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 2BC50 8003B450 3800BEAF */  sw         $fp, 0x38($sp)
    /* 2BC54 8003B454 3400B7AF */  sw         $s7, 0x34($sp)
    /* 2BC58 8003B458 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2BC5C 8003B45C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2BC60 8003B460 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2BC64 8003B464 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2BC68 8003B468 0200D526 */  addiu      $s5, $s6, 0x2
  .L8003B46C:
    /* 2BC6C 8003B46C 21202002 */  addu       $a0, $s1, $zero
    /* 2BC70 8003B470 FF00B032 */  andi       $s0, $s5, 0xFF
    /* 2BC74 8003B474 21280002 */  addu       $a1, $s0, $zero
    /* 2BC78 8003B478 9A4A010C */  jal        func_80052A68
    /* 2BC7C 8003B47C 0900063C */   lui       $a2, (0x90000 >> 16)
    /* 2BC80 8003B480 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BC84 8003B484 F7004014 */  bnez       $v0, .L8003B864
    /* 2BC88 8003B488 21202002 */   addu      $a0, $s1, $zero
    /* 2BC8C 8003B48C 0300C526 */  addiu      $a1, $s6, 0x3
    /* 2BC90 8003B490 3AF5000C */  jal        func_8003D4E8
    /* 2BC94 8003B494 FF00A530 */   andi      $a1, $a1, 0xFF
    /* 2BC98 8003B498 40181000 */  sll        $v1, $s0, 1
    /* 2BC9C 8003B49C 21187300 */  addu       $v1, $v1, $s3
    /* 2BCA0 8003B4A0 02002486 */  lh         $a0, 0x2($s1)
    /* 2BCA4 8003B4A4 06002586 */  lh         $a1, 0x6($s1)
    /* 2BCA8 8003B4A8 36006684 */  lh         $a2, (0x1F800036 & 0xFFFF)($v1)
    /* 2BCAC 8003B4AC 66006784 */  lh         $a3, (0x1F800066 & 0xFFFF)($v1)
    /* 2BCB0 8003B4B0 DB6C010C */  jal        func_8005B36C
    /* 2BCB4 8003B4B4 21F04000 */   addu      $fp, $v0, $zero
    /* 2BCB8 8003B4B8 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 2BCBC 8003B4BC 21904000 */  addu       $s2, $v0, $zero
    /* 2BCC0 8003B4C0 23104402 */  subu       $v0, $s2, $a0
    /* 2BCC4 8003B4C4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2BCC8 8003B4C8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2BCCC 8003B4CC 04004014 */  bnez       $v0, .L8003B4E0
    /* 2BCD0 8003B4D0 23109200 */   subu      $v0, $a0, $s2
    /* 2BCD4 8003B4D4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BCD8 8003B4D8 39ED0008 */  j          .L8003B4E4
    /* 2BCDC 8003B4DC 31004228 */   slti      $v0, $v0, 0x31
  .L8003B4E0:
    /* 2BCE0 8003B4E0 31006228 */  slti       $v0, $v1, 0x31
  .L8003B4E4:
    /* 2BCE4 8003B4E4 DF004010 */  beqz       $v0, .L8003B864
    /* 2BCE8 8003B4E8 2310D203 */   subu      $v0, $fp, $s2
    /* 2BCEC 8003B4EC FF004330 */  andi       $v1, $v0, 0xFF
    /* 2BCF0 8003B4F0 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2BCF4 8003B4F4 04004014 */  bnez       $v0, .L8003B508
    /* 2BCF8 8003B4F8 23105E02 */   subu      $v0, $s2, $fp
    /* 2BCFC 8003B4FC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BD00 8003B500 43ED0008 */  j          .L8003B50C
    /* 2BD04 8003B504 1D004228 */   slti      $v0, $v0, 0x1D
  .L8003B508:
    /* 2BD08 8003B508 1D006228 */  slti       $v0, $v1, 0x1D
  .L8003B50C:
    /* 2BD0C 8003B50C D5004010 */  beqz       $v0, .L8003B864
    /* 2BD10 8003B510 21202002 */   addu      $a0, $s1, $zero
    /* 2BD14 8003B514 20000524 */  addiu      $a1, $zero, 0x20
    /* 2BD18 8003B518 21300000 */  addu       $a2, $zero, $zero
    /* 2BD1C 8003B51C AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 2BD20 8003B520 FF004732 */  andi       $a3, $s2, 0xFF
    /* 2BD24 8003B524 AB70010C */  jal        func_8005C2AC
    /* 2BD28 8003B528 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2BD2C 8003B52C FF00A232 */  andi       $v0, $s5, 0xFF
    /* 2BD30 8003B530 40100200 */  sll        $v0, $v0, 1
    /* 2BD34 8003B534 21105300 */  addu       $v0, $v0, $s3
    /* 2BD38 8003B538 36004684 */  lh         $a2, (0x1F800036 & 0xFFFF)($v0)
    /* 2BD3C 8003B53C F0006496 */  lhu        $a0, (0x1F8000F0 & 0xFFFF)($s3)
    /* 2BD40 8003B540 66004784 */  lh         $a3, (0x1F800066 & 0xFFFF)($v0)
    /* 2BD44 8003B544 F4006596 */  lhu        $a1, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2BD48 8003B548 00240400 */  sll        $a0, $a0, 16
    /* 2BD4C 8003B54C 03240400 */  sra        $a0, $a0, 16
    /* 2BD50 8003B550 002C0500 */  sll        $a1, $a1, 16
    /* 2BD54 8003B554 DB6C010C */  jal        func_8005B36C
    /* 2BD58 8003B558 032C0500 */   sra       $a1, $a1, 16
    /* 2BD5C 8003B55C 21B84000 */  addu       $s7, $v0, $zero
    /* 2BD60 8003B560 2310F202 */  subu       $v0, $s7, $s2
    /* 2BD64 8003B564 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2BD68 8003B568 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2BD6C 8003B56C 04004014 */  bnez       $v0, .L8003B580
    /* 2BD70 8003B570 23105702 */   subu      $v0, $s2, $s7
    /* 2BD74 8003B574 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BD78 8003B578 61ED0008 */  j          .L8003B584
    /* 2BD7C 8003B57C 21004228 */   slti      $v0, $v0, 0x21
  .L8003B580:
    /* 2BD80 8003B580 21006228 */  slti       $v0, $v1, 0x21
  .L8003B584:
    /* 2BD84 8003B584 B7004010 */  beqz       $v0, .L8003B864
    /* 2BD88 8003B588 FF00B032 */   andi      $s0, $s5, 0xFF
    /* 2BD8C 8003B58C 40201000 */  sll        $a0, $s0, 1
    /* 2BD90 8003B590 21209300 */  addu       $a0, $a0, $s3
    /* 2BD94 8003B594 F0006296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s3)
    /* 2BD98 8003B598 36008384 */  lh         $v1, (0x1F800036 & 0xFFFF)($a0)
    /* 2BD9C 8003B59C 00140200 */  sll        $v0, $v0, 16
    /* 2BDA0 8003B5A0 03140200 */  sra        $v0, $v0, 16
    /* 2BDA4 8003B5A4 23104300 */  subu       $v0, $v0, $v1
    /* 2BDA8 8003B5A8 18004200 */  mult       $v0, $v0
    /* 2BDAC 8003B5AC F4006296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2BDB0 8003B5B0 66008384 */  lh         $v1, (0x1F800066 & 0xFFFF)($a0)
    /* 2BDB4 8003B5B4 00140200 */  sll        $v0, $v0, 16
    /* 2BDB8 8003B5B8 12280000 */  mflo       $a1
    /* 2BDBC 8003B5BC 03140200 */  sra        $v0, $v0, 16
    /* 2BDC0 8003B5C0 23104300 */  subu       $v0, $v0, $v1
    /* 2BDC4 8003B5C4 18004200 */  mult       $v0, $v0
    /* 2BDC8 8003B5C8 12180000 */  mflo       $v1
    /* 2BDCC 8003B5CC 4AC4020C */  jal        func_800B1128
    /* 2BDD0 8003B5D0 2120A300 */   addu      $a0, $a1, $v1
    /* 2BDD4 8003B5D4 01001026 */  addiu      $s0, $s0, 0x1
    /* 2BDD8 8003B5D8 1B005000 */  divu       $zero, $v0, $s0
    /* 2BDDC 8003B5DC 02000016 */  bnez       $s0, .L8003B5E8
    /* 2BDE0 8003B5E0 00000000 */   nop
    /* 2BDE4 8003B5E4 0D000700 */  break      7
  .L8003B5E8:
    /* 2BDE8 8003B5E8 12800000 */  mflo       $s0
    /* 2BDEC 8003B5EC 00000000 */  nop
    /* 2BDF0 8003B5F0 1000022E */  sltiu      $v0, $s0, 0x10
    /* 2BDF4 8003B5F4 A0004014 */  bnez       $v0, .L8003B878
    /* 2BDF8 8003B5F8 21100000 */   addu      $v0, $zero, $zero
    /* 2BDFC 8003B5FC 92032292 */  lbu        $v0, 0x392($s1)
    /* 2BE00 8003B600 98032492 */  lbu        $a0, 0x398($s1)
    /* 2BE04 8003B604 A003258E */  lw         $a1, 0x3A0($s1)
    /* 2BE08 8003B608 40180200 */  sll        $v1, $v0, 1
    /* 2BE0C 8003B60C 21186200 */  addu       $v1, $v1, $v0
    /* 2BE10 8003B610 80180300 */  sll        $v1, $v1, 2
    /* 2BE14 8003B614 40110400 */  sll        $v0, $a0, 5
    /* 2BE18 8003B618 21104400 */  addu       $v0, $v0, $a0
    /* 2BE1C 8003B61C C0100200 */  sll        $v0, $v0, 3
    /* 2BE20 8003B620 21186200 */  addu       $v1, $v1, $v0
    /* 2BE24 8003B624 1180013C */  lui        $at, %hi(D_8010C32F)
    /* 2BE28 8003B628 21082300 */  addu       $at, $at, $v1
    /* 2BE2C 8003B62C 2FC32290 */  lbu        $v0, %lo(D_8010C32F)($at)
    /* 2BE30 8003B630 A4032492 */  lbu        $a0, 0x3A4($s1)
    /* 2BE34 8003B634 0F004230 */  andi       $v0, $v0, 0xF
    /* 2BE38 8003B638 10004624 */  addiu      $a2, $v0, 0x10
    /* 2BE3C 8003B63C 23109200 */  subu       $v0, $a0, $s2
    /* 2BE40 8003B640 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2BE44 8003B644 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2BE48 8003B648 04004014 */  bnez       $v0, .L8003B65C
    /* 2BE4C 8003B64C 40180300 */   sll       $v1, $v1, 1
    /* 2BE50 8003B650 23184402 */  subu       $v1, $s2, $a0
    /* 2BE54 8003B654 FF006330 */  andi       $v1, $v1, 0xFF
    /* 2BE58 8003B658 40180300 */  sll        $v1, $v1, 1
  .L8003B65C:
    /* 2BE5C 8003B65C 00010224 */  addiu      $v0, $zero, 0x100
    /* 2BE60 8003B660 23104300 */  subu       $v0, $v0, $v1
    /* 2BE64 8003B664 1800A200 */  mult       $a1, $v0
    /* 2BE68 8003B668 12400000 */  mflo       $t0
    /* 2BE6C 8003B66C 02120800 */  srl        $v0, $t0, 8
    /* 2BE70 8003B670 2118C200 */  addu       $v1, $a2, $v0
    /* 2BE74 8003B674 B4032292 */  lbu        $v0, 0x3B4($s1)
    /* 2BE78 8003B678 00000000 */  nop
    /* 2BE7C 8003B67C 10004424 */  addiu      $a0, $v0, 0x10
    /* 2BE80 8003B680 2B106400 */  sltu       $v0, $v1, $a0
    /* 2BE84 8003B684 03004014 */  bnez       $v0, .L8003B694
    /* 2BE88 8003B688 2B100302 */   sltu      $v0, $s0, $v1
    /* 2BE8C 8003B68C 21188000 */  addu       $v1, $a0, $zero
    /* 2BE90 8003B690 2B100302 */  sltu       $v0, $s0, $v1
  .L8003B694:
    /* 2BE94 8003B694 02004014 */  bnez       $v0, .L8003B6A0
    /* 2BE98 8003B698 FF00F432 */   andi      $s4, $s7, 0xFF
    /* 2BE9C 8003B69C 21806000 */  addu       $s0, $v1, $zero
  .L8003B6A0:
    /* 2BEA0 8003B6A0 21208002 */  addu       $a0, $s4, $zero
    /* 2BEA4 8003B6A4 A579000C */  jal        func_8001E694
    /* 2BEA8 8003B6A8 21280002 */   addu      $a1, $s0, $zero
    /* 2BEAC 8003B6AC 21208002 */  addu       $a0, $s4, $zero
    /* 2BEB0 8003B6B0 21280002 */  addu       $a1, $s0, $zero
    /* 2BEB4 8003B6B4 6979000C */  jal        func_8001E5A4
    /* 2BEB8 8003B6B8 CA0322A6 */   sh        $v0, 0x3CA($s1)
    /* 2BEBC 8003B6BC FF00B232 */  andi       $s2, $s5, 0xFF
    /* 2BEC0 8003B6C0 40181200 */  sll        $v1, $s2, 1
    /* 2BEC4 8003B6C4 21187300 */  addu       $v1, $v1, $s3
    /* 2BEC8 8003B6C8 01005026 */  addiu      $s0, $s2, 0x1
    /* 2BECC 8003B6CC CE0322A6 */  sh         $v0, 0x3CE($s1)
    /* 2BED0 8003B6D0 F2006296 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($s3)
    /* 2BED4 8003B6D4 4E006384 */  lh         $v1, (0x1F80004E & 0xFFFF)($v1)
    /* 2BED8 8003B6D8 00140200 */  sll        $v0, $v0, 16
    /* 2BEDC 8003B6DC 03140200 */  sra        $v0, $v0, 16
    /* 2BEE0 8003B6E0 23186200 */  subu       $v1, $v1, $v0
    /* 2BEE4 8003B6E4 1A007000 */  div        $zero, $v1, $s0
    /* 2BEE8 8003B6E8 02000016 */  bnez       $s0, .L8003B6F4
    /* 2BEEC 8003B6EC 00000000 */   nop
    /* 2BEF0 8003B6F0 0D000700 */  break      7
  .L8003B6F4:
    /* 2BEF4 8003B6F4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2BEF8 8003B6F8 04000116 */  bne        $s0, $at, .L8003B70C
    /* 2BEFC 8003B6FC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2BF00 8003B700 02006114 */  bne        $v1, $at, .L8003B70C
    /* 2BF04 8003B704 00000000 */   nop
    /* 2BF08 8003B708 0D000600 */  break      6
  .L8003B70C:
    /* 2BF0C 8003B70C 12180000 */  mflo       $v1
    /* 2BF10 8003B710 CC032426 */  addiu      $a0, $s1, 0x3CC
    /* 2BF14 8003B714 98032592 */  lbu        $a1, 0x398($s1)
    /* 2BF18 8003B718 92032292 */  lbu        $v0, 0x392($s1)
    /* 2BF1C 8003B71C F8FF0624 */  addiu      $a2, $zero, -0x8
    /* 2BF20 8003B720 CC0323A6 */  sh         $v1, 0x3CC($s1)
    /* 2BF24 8003B724 40180200 */  sll        $v1, $v0, 1
    /* 2BF28 8003B728 21186200 */  addu       $v1, $v1, $v0
    /* 2BF2C 8003B72C 80180300 */  sll        $v1, $v1, 2
    /* 2BF30 8003B730 40110500 */  sll        $v0, $a1, 5
    /* 2BF34 8003B734 21104500 */  addu       $v0, $v0, $a1
    /* 2BF38 8003B738 C0100200 */  sll        $v0, $v0, 3
    /* 2BF3C 8003B73C 21186200 */  addu       $v1, $v1, $v0
    /* 2BF40 8003B740 1180013C */  lui        $at, %hi(D_8010C32F)
    /* 2BF44 8003B744 21082300 */  addu       $at, $at, $v1
    /* 2BF48 8003B748 2FC32290 */  lbu        $v0, %lo(D_8010C32F)($at)
    /* 2BF4C 8003B74C 14000524 */  addiu      $a1, $zero, 0x14
    /* 2BF50 8003B750 0F004230 */  andi       $v0, $v0, 0xF
    /* 2BF54 8003B754 43100200 */  sra        $v0, $v0, 1
    /* 2BF58 8003B758 1571010C */  jal        func_8005C454
    /* 2BF5C 8003B75C 2330C200 */   subu      $a2, $a2, $v0
    /* 2BF60 8003B760 CA032286 */  lh         $v0, 0x3CA($s1)
    /* 2BF64 8003B764 00000000 */  nop
    /* 2BF68 8003B768 18005000 */  mult       $v0, $s0
    /* 2BF6C 8003B76C F0006296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s3)
    /* 2BF70 8003B770 12400000 */  mflo       $t0
    /* 2BF74 8003B774 21104800 */  addu       $v0, $v0, $t0
    /* 2BF78 8003B778 F00062A6 */  sh         $v0, (0x1F8000F0 & 0xFFFF)($s3)
    /* 2BF7C 8003B77C CC032286 */  lh         $v0, 0x3CC($s1)
    /* 2BF80 8003B780 00000000 */  nop
    /* 2BF84 8003B784 18005000 */  mult       $v0, $s0
    /* 2BF88 8003B788 F2006296 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($s3)
    /* 2BF8C 8003B78C 12400000 */  mflo       $t0
    /* 2BF90 8003B790 21104800 */  addu       $v0, $v0, $t0
    /* 2BF94 8003B794 F20062A6 */  sh         $v0, (0x1F8000F2 & 0xFFFF)($s3)
    /* 2BF98 8003B798 CE032286 */  lh         $v0, 0x3CE($s1)
    /* 2BF9C 8003B79C 00000000 */  nop
    /* 2BFA0 8003B7A0 18005000 */  mult       $v0, $s0
    /* 2BFA4 8003B7A4 F4006296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2BFA8 8003B7A8 12400000 */  mflo       $t0
    /* 2BFAC 8003B7AC 21104800 */  addu       $v0, $v0, $t0
    /* 2BFB0 8003B7B0 F40062A6 */  sh         $v0, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2BFB4 8003B7B4 06000224 */  addiu      $v0, $zero, 0x6
    /* 2BFB8 8003B7B8 0700C216 */  bne        $s6, $v0, .L8003B7D8
    /* 2BFBC 8003B7BC 21180000 */   addu      $v1, $zero, $zero
    /* 2BFC0 8003B7C0 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2BFC4 8003B7C4 00000000 */  nop
    /* 2BFC8 8003B7C8 A003428C */  lw         $v0, 0x3A0($v0)
    /* 2BFCC 8003B7CC A003238E */  lw         $v1, 0x3A0($s1)
    /* 2BFD0 8003B7D0 02120200 */  srl        $v0, $v0, 8
    /* 2BFD4 8003B7D4 2B186200 */  sltu       $v1, $v1, $v0
  .L8003B7D8:
    /* 2BFD8 8003B7D8 0100023C */  lui        $v0, (0x14400 >> 16)
    /* 2BFDC 8003B7DC 00444234 */  ori        $v0, $v0, (0x14400 & 0xFFFF)
    /* 2BFE0 8003B7E0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2BFE4 8003B7E4 21202002 */  addu       $a0, $s1, $zero
    /* 2BFE8 8003B7E8 21284002 */  addu       $a1, $s2, $zero
    /* 2BFEC 8003B7EC 01000624 */  addiu      $a2, $zero, 0x1
    /* 2BFF0 8003B7F0 B9F3000C */  jal        func_8003CEE4
    /* 2BFF4 8003B7F4 21386000 */   addu      $a3, $v1, $zero
    /* 2BFF8 8003B7F8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BFFC 8003B7FC 19004010 */  beqz       $v0, .L8003B864
    /* 2C000 8003B800 21202002 */   addu      $a0, $s1, $zero
    /* 2C004 8003B804 20000524 */  addiu      $a1, $zero, 0x20
    /* 2C008 8003B808 8C6E010C */  jal        func_8005BA30
    /* 2C00C 8003B80C 21300000 */   addu      $a2, $zero, $zero
    /* 2C010 8003B810 21208002 */  addu       $a0, $s4, $zero
    /* 2C014 8003B814 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2C018 8003B818 0C000624 */  addiu      $a2, $zero, 0xC
    /* 2C01C 8003B81C F36D010C */  jal        func_8005B7CC
    /* 2C020 8003B820 D10320A2 */   sb        $zero, 0x3D1($s1)
    /* 2C024 8003B824 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2C028 8003B828 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2C02C 8003B82C 23206400 */  subu       $a0, $v1, $a0
    /* 2C030 8003B830 21188000 */  addu       $v1, $a0, $zero
    /* 2C034 8003B834 02008104 */  bgez       $a0, .L8003B840
    /* 2C038 8003B838 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2C03C 8003B83C FF008324 */  addiu      $v1, $a0, 0xFF
  .L8003B840:
    /* 2C040 8003B840 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C044 8003B844 031A0300 */  sra        $v1, $v1, 8
    /* 2C048 8003B848 001A0300 */  sll        $v1, $v1, 8
    /* 2C04C 8003B84C 23188300 */  subu       $v1, $a0, $v1
    /* 2C050 8003B850 00190300 */  sll        $v1, $v1, 4
    /* 2C054 8003B854 260023A6 */  sh         $v1, 0x26($s1)
    /* 2C058 8003B858 AB0337A2 */  sb         $s7, 0x3AB($s1)
    /* 2C05C 8003B85C 1EEE0008 */  j          .L8003B878
    /* 2C060 8003B860 B2033EA2 */   sb        $fp, 0x3B2($s1)
  .L8003B864:
    /* 2C064 8003B864 0100D626 */  addiu      $s6, $s6, 0x1
    /* 2C068 8003B868 0700C22A */  slti       $v0, $s6, 0x7
    /* 2C06C 8003B86C FFFE4014 */  bnez       $v0, .L8003B46C
    /* 2C070 8003B870 0200D526 */   addiu     $s5, $s6, 0x2
    /* 2C074 8003B874 21100000 */  addu       $v0, $zero, $zero
  .L8003B878:
    /* 2C078 8003B878 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 2C07C 8003B87C 3800BE8F */  lw         $fp, 0x38($sp)
    /* 2C080 8003B880 3400B78F */  lw         $s7, 0x34($sp)
    /* 2C084 8003B884 3000B68F */  lw         $s6, 0x30($sp)
    /* 2C088 8003B888 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2C08C 8003B88C 2800B48F */  lw         $s4, 0x28($sp)
    /* 2C090 8003B890 2400B38F */  lw         $s3, 0x24($sp)
    /* 2C094 8003B894 2000B28F */  lw         $s2, 0x20($sp)
    /* 2C098 8003B898 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2C09C 8003B89C 1800B08F */  lw         $s0, 0x18($sp)
    /* 2C0A0 8003B8A0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2C0A4 8003B8A4 0800E003 */  jr         $ra
    /* 2C0A8 8003B8A8 00000000 */   nop
endlabel func_8003B430
