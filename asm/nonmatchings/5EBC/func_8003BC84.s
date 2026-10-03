nonmatching func_8003BC84, 0x464

glabel func_8003BC84
    /* 2C484 8003BC84 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 2C488 8003BC88 2400B1AF */  sw         $s1, 0x24($sp)
    /* 2C48C 8003BC8C 21888000 */  addu       $s1, $a0, $zero
    /* 2C490 8003BC90 07000524 */  addiu      $a1, $zero, 0x7
    /* 2C494 8003BC94 0100063C */  lui        $a2, (0x14400 >> 16)
    /* 2C498 8003BC98 0044C634 */  ori        $a2, $a2, (0x14400 & 0xFFFF)
    /* 2C49C 8003BC9C 4400BFAF */  sw         $ra, 0x44($sp)
    /* 2C4A0 8003BCA0 4000BEAF */  sw         $fp, 0x40($sp)
    /* 2C4A4 8003BCA4 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 2C4A8 8003BCA8 3800B6AF */  sw         $s6, 0x38($sp)
    /* 2C4AC 8003BCAC 3400B5AF */  sw         $s5, 0x34($sp)
    /* 2C4B0 8003BCB0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 2C4B4 8003BCB4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 2C4B8 8003BCB8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 2C4BC 8003BCBC 9A4A010C */  jal        func_80052A68
    /* 2C4C0 8003BCC0 2000B0AF */   sw        $s0, 0x20($sp)
    /* 2C4C4 8003BCC4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C4C8 8003BCC8 F9004014 */  bnez       $v0, .L8003C0B0
    /* 2C4CC 8003BCCC 801F163C */   lui       $s6, (0x1F8002F4 >> 16)
    /* 2C4D0 8003BCD0 21202002 */  addu       $a0, $s1, $zero
    /* 2C4D4 8003BCD4 3AF5000C */  jal        func_8003D4E8
    /* 2C4D8 8003BCD8 08000524 */   addiu     $a1, $zero, 0x8
    /* 2C4DC 8003BCDC 801F103C */  lui        $s0, (0x1F800044 >> 16)
    /* 2C4E0 8003BCE0 44001036 */  ori        $s0, $s0, (0x1F800044 & 0xFFFF)
    /* 2C4E4 8003BCE4 801F123C */  lui        $s2, (0x1F800074 >> 16)
    /* 2C4E8 8003BCE8 74005236 */  ori        $s2, $s2, (0x1F800074 & 0xFFFF)
    /* 2C4EC 8003BCEC 02002486 */  lh         $a0, 0x2($s1)
    /* 2C4F0 8003BCF0 06002586 */  lh         $a1, 0x6($s1)
    /* 2C4F4 8003BCF4 00000686 */  lh         $a2, 0x0($s0)
    /* 2C4F8 8003BCF8 00004786 */  lh         $a3, 0x0($s2)
    /* 2C4FC 8003BCFC DB6C010C */  jal        func_8005B36C
    /* 2C500 8003BD00 21A04000 */   addu      $s4, $v0, $zero
    /* 2C504 8003BD04 23105400 */  subu       $v0, $v0, $s4
    /* 2C508 8003BD08 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C50C 8003BD0C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2C510 8003BD10 09004014 */  bnez       $v0, .L8003BD38
    /* 2C514 8003BD14 00000000 */   nop
    /* 2C518 8003BD18 02002486 */  lh         $a0, 0x2($s1)
    /* 2C51C 8003BD1C 06002586 */  lh         $a1, 0x6($s1)
    /* 2C520 8003BD20 00000686 */  lh         $a2, 0x0($s0)
    /* 2C524 8003BD24 00004786 */  lh         $a3, 0x0($s2)
    /* 2C528 8003BD28 DB6C010C */  jal        func_8005B36C
    /* 2C52C 8003BD2C 00000000 */   nop
    /* 2C530 8003BD30 55EF0008 */  j          .L8003BD54
    /* 2C534 8003BD34 23808202 */   subu      $s0, $s4, $v0
  .L8003BD38:
    /* 2C538 8003BD38 02002486 */  lh         $a0, 0x2($s1)
    /* 2C53C 8003BD3C 06002586 */  lh         $a1, 0x6($s1)
    /* 2C540 8003BD40 00000686 */  lh         $a2, 0x0($s0)
    /* 2C544 8003BD44 00004786 */  lh         $a3, 0x0($s2)
    /* 2C548 8003BD48 DB6C010C */  jal        func_8005B36C
    /* 2C54C 8003BD4C 00000000 */   nop
    /* 2C550 8003BD50 23805400 */  subu       $s0, $v0, $s4
  .L8003BD54:
    /* 2C554 8003BD54 FF000232 */  andi       $v0, $s0, 0xFF
    /* 2C558 8003BD58 5000422C */  sltiu      $v0, $v0, 0x50
    /* 2C55C 8003BD5C D5004010 */  beqz       $v0, .L8003C0B4
    /* 2C560 8003BD60 21100000 */   addu      $v0, $zero, $zero
    /* 2C564 8003BD64 F402C28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s6)
    /* 2C568 8003BD68 00000000 */  nop
    /* 2C56C 8003BD6C A4034490 */  lbu        $a0, 0x3A4($v0)
    /* 2C570 8003BD70 00000000 */  nop
    /* 2C574 8003BD74 23109400 */  subu       $v0, $a0, $s4
    /* 2C578 8003BD78 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2C57C 8003BD7C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2C580 8003BD80 04004014 */  bnez       $v0, .L8003BD94
    /* 2C584 8003BD84 23108402 */   subu      $v0, $s4, $a0
    /* 2C588 8003BD88 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C58C 8003BD8C 66EF0008 */  j          .L8003BD98
    /* 2C590 8003BD90 31004228 */   slti      $v0, $v0, 0x31
  .L8003BD94:
    /* 2C594 8003BD94 31006228 */  slti       $v0, $v1, 0x31
  .L8003BD98:
    /* 2C598 8003BD98 C6004014 */  bnez       $v0, .L8003C0B4
    /* 2C59C 8003BD9C 21100000 */   addu      $v0, $zero, $zero
    /* 2C5A0 8003BDA0 02002486 */  lh         $a0, 0x2($s1)
    /* 2C5A4 8003BDA4 F402C28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s6)
    /* 2C5A8 8003BDA8 06002586 */  lh         $a1, 0x6($s1)
    /* 2C5AC 8003BDAC 02004684 */  lh         $a2, 0x2($v0)
    /* 2C5B0 8003BDB0 06004784 */  lh         $a3, 0x6($v0)
    /* 2C5B4 8003BDB4 DB6C010C */  jal        func_8005B36C
    /* 2C5B8 8003BDB8 00000000 */   nop
    /* 2C5BC 8003BDBC 1800A2A3 */  sb         $v0, 0x18($sp)
    /* 2C5C0 8003BDC0 23105400 */  subu       $v0, $v0, $s4
    /* 2C5C4 8003BDC4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2C5C8 8003BDC8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2C5CC 8003BDCC 07004014 */  bnez       $v0, .L8003BDEC
    /* 2C5D0 8003BDD0 00000000 */   nop
    /* 2C5D4 8003BDD4 1800A893 */  lbu        $t0, 0x18($sp)
    /* 2C5D8 8003BDD8 00000000 */  nop
    /* 2C5DC 8003BDDC 23108802 */  subu       $v0, $s4, $t0
    /* 2C5E0 8003BDE0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C5E4 8003BDE4 7CEF0008 */  j          .L8003BDF0
    /* 2C5E8 8003BDE8 21004228 */   slti      $v0, $v0, 0x21
  .L8003BDEC:
    /* 2C5EC 8003BDEC 21006228 */  slti       $v0, $v1, 0x21
  .L8003BDF0:
    /* 2C5F0 8003BDF0 B0004014 */  bnez       $v0, .L8003C0B4
    /* 2C5F4 8003BDF4 21100000 */   addu      $v0, $zero, $zero
    /* 2C5F8 8003BDF8 1800A893 */  lbu        $t0, 0x18($sp)
    /* 2C5FC 8003BDFC 00000000 */  nop
    /* 2C600 8003BE00 23101401 */  subu       $v0, $t0, $s4
    /* 2C604 8003BE04 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2C608 8003BE08 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2C60C 8003BE0C 08004014 */  bnez       $v0, .L8003BE30
    /* 2C610 8003BE10 10006228 */   slti      $v0, $v1, 0x10
    /* 2C614 8003BE14 23108802 */  subu       $v0, $s4, $t0
    /* 2C618 8003BE18 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C61C 8003BE1C 10004228 */  slti       $v0, $v0, 0x10
    /* 2C620 8003BE20 05004014 */  bnez       $v0, .L8003BE38
    /* 2C624 8003BE24 FF000232 */   andi      $v0, $s0, 0xFF
    /* 2C628 8003BE28 A1EF0008 */  j          .L8003BE84
    /* 2C62C 8003BE2C 00000000 */   nop
  .L8003BE30:
    /* 2C630 8003BE30 14004010 */  beqz       $v0, .L8003BE84
    /* 2C634 8003BE34 FF000232 */   andi      $v0, $s0, 0xFF
  .L8003BE38:
    /* 2C638 8003BE38 1000422C */  sltiu      $v0, $v0, 0x10
    /* 2C63C 8003BE3C 11004010 */  beqz       $v0, .L8003BE84
    /* 2C640 8003BE40 00000000 */   nop
    /* 2C644 8003BE44 92032292 */  lbu        $v0, 0x392($s1)
    /* 2C648 8003BE48 98032492 */  lbu        $a0, 0x398($s1)
    /* 2C64C 8003BE4C 40180200 */  sll        $v1, $v0, 1
    /* 2C650 8003BE50 21186200 */  addu       $v1, $v1, $v0
    /* 2C654 8003BE54 80180300 */  sll        $v1, $v1, 2
    /* 2C658 8003BE58 40110400 */  sll        $v0, $a0, 5
    /* 2C65C 8003BE5C 21104400 */  addu       $v0, $v0, $a0
    /* 2C660 8003BE60 C0100200 */  sll        $v0, $v0, 3
    /* 2C664 8003BE64 21186200 */  addu       $v1, $v1, $v0
    /* 2C668 8003BE68 1180013C */  lui        $at, %hi(D_8010C330)
    /* 2C66C 8003BE6C 21082300 */  addu       $at, $at, $v1
    /* 2C670 8003BE70 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 2C674 8003BE74 00000000 */  nop
    /* 2C678 8003BE78 02110200 */  srl        $v0, $v0, 4
    /* 2C67C 8003BE7C B0EF0008 */  j          .L8003BEC0
    /* 2C680 8003BE80 01004230 */   andi      $v0, $v0, 0x1
  .L8003BE84:
    /* 2C684 8003BE84 A902C392 */  lbu        $v1, (0x1F8002A9 & 0xFFFF)($s6)
    /* 2C688 8003BE88 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 2C68C 8003BE8C 00000000 */  nop
    /* 2C690 8003BE90 0E004314 */  bne        $v0, $v1, .L8003BECC
    /* 2C694 8003BE94 00000000 */   nop
    /* 2C698 8003BE98 02002486 */  lh         $a0, 0x2($s1)
    /* 2C69C 8003BE9C F402C28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s6)
    /* 2C6A0 8003BEA0 06002586 */  lh         $a1, 0x6($s1)
    /* 2C6A4 8003BEA4 02004684 */  lh         $a2, 0x2($v0)
    /* 2C6A8 8003BEA8 06004784 */  lh         $a3, 0x6($v0)
    /* 2C6AC 8003BEAC DB6C010C */  jal        func_8005B36C
    /* 2C6B0 8003BEB0 00000000 */   nop
    /* 2C6B4 8003BEB4 23105400 */  subu       $v0, $v0, $s4
    /* 2C6B8 8003BEB8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C6BC 8003BEBC 8100422C */  sltiu      $v0, $v0, 0x81
  .L8003BEC0:
    /* 2C6C0 8003BEC0 21B84000 */  addu       $s7, $v0, $zero
    /* 2C6C4 8003BEC4 BCEF0008 */  j          .L8003BEF0
    /* 2C6C8 8003BEC8 01005E38 */   xori      $fp, $v0, 0x1
  .L8003BECC:
    /* 2C6CC 8003BECC F402C28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s6)
    /* 2C6D0 8003BED0 00000000 */  nop
    /* 2C6D4 8003BED4 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 2C6D8 8003BED8 00000000 */  nop
    /* 2C6DC 8003BEDC 23108202 */  subu       $v0, $s4, $v0
    /* 2C6E0 8003BEE0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C6E4 8003BEE4 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2C6E8 8003BEE8 21F04000 */  addu       $fp, $v0, $zero
    /* 2C6EC 8003BEEC 21B8C003 */  addu       $s7, $fp, $zero
  .L8003BEF0:
    /* 2C6F0 8003BEF0 21202002 */  addu       $a0, $s1, $zero
    /* 2C6F4 8003BEF4 2D000524 */  addiu      $a1, $zero, 0x2D
    /* 2C6F8 8003BEF8 21300000 */  addu       $a2, $zero, $zero
    /* 2C6FC 8003BEFC FF008732 */  andi       $a3, $s4, 0xFF
    /* 2C700 8003BF00 AB70010C */  jal        func_8005C2AC
    /* 2C704 8003BF04 1000B7AF */   sw        $s7, 0x10($sp)
    /* 2C708 8003BF08 07001524 */  addiu      $s5, $zero, 0x7
    /* 2C70C 8003BF0C 40181500 */  sll        $v1, $s5, 1
    /* 2C710 8003BF10 21807600 */  addu       $s0, $v1, $s6
    /* 2C714 8003BF14 F000C296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s6)
    /* 2C718 8003BF18 36000386 */  lh         $v1, (0x1F800036 & 0xFFFF)($s0)
    /* 2C71C 8003BF1C 00140200 */  sll        $v0, $v0, 16
    /* 2C720 8003BF20 03140200 */  sra        $v0, $v0, 16
    /* 2C724 8003BF24 23104300 */  subu       $v0, $v0, $v1
    /* 2C728 8003BF28 18004200 */  mult       $v0, $v0
    /* 2C72C 8003BF2C F400C296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s6)
    /* 2C730 8003BF30 66000386 */  lh         $v1, (0x1F800066 & 0xFFFF)($s0)
    /* 2C734 8003BF34 00140200 */  sll        $v0, $v0, 16
    /* 2C738 8003BF38 12200000 */  mflo       $a0
    /* 2C73C 8003BF3C 03140200 */  sra        $v0, $v0, 16
    /* 2C740 8003BF40 23104300 */  subu       $v0, $v0, $v1
    /* 2C744 8003BF44 18004200 */  mult       $v0, $v0
    /* 2C748 8003BF48 12180000 */  mflo       $v1
    /* 2C74C 8003BF4C 4AC4020C */  jal        func_800B1128
    /* 2C750 8003BF50 21208300 */   addu      $a0, $a0, $v1
    /* 2C754 8003BF54 0100B326 */  addiu      $s3, $s5, 0x1
    /* 2C758 8003BF58 1B005300 */  divu       $zero, $v0, $s3
    /* 2C75C 8003BF5C 02006016 */  bnez       $s3, .L8003BF68
    /* 2C760 8003BF60 00000000 */   nop
    /* 2C764 8003BF64 0D000700 */  break      7
  .L8003BF68:
    /* 2C768 8003BF68 12900000 */  mflo       $s2
    /* 2C76C 8003BF6C 00000000 */  nop
    /* 2C770 8003BF70 2100422E */  sltiu      $v0, $s2, 0x21
    /* 2C774 8003BF74 02004014 */  bnez       $v0, .L8003BF80
    /* 2C778 8003BF78 00000000 */   nop
    /* 2C77C 8003BF7C 20001224 */  addiu      $s2, $zero, 0x20
  .L8003BF80:
    /* 2C780 8003BF80 36000686 */  lh         $a2, (0x1F800036 & 0xFFFF)($s0)
    /* 2C784 8003BF84 F000C496 */  lhu        $a0, (0x1F8000F0 & 0xFFFF)($s6)
    /* 2C788 8003BF88 66000786 */  lh         $a3, (0x1F800066 & 0xFFFF)($s0)
    /* 2C78C 8003BF8C F400C596 */  lhu        $a1, (0x1F8000F4 & 0xFFFF)($s6)
    /* 2C790 8003BF90 00240400 */  sll        $a0, $a0, 16
    /* 2C794 8003BF94 03240400 */  sra        $a0, $a0, 16
    /* 2C798 8003BF98 002C0500 */  sll        $a1, $a1, 16
    /* 2C79C 8003BF9C DB6C010C */  jal        func_8005B36C
    /* 2C7A0 8003BFA0 032C0500 */   sra       $a1, $a1, 16
    /* 2C7A4 8003BFA4 FF005030 */  andi       $s0, $v0, 0xFF
    /* 2C7A8 8003BFA8 21200002 */  addu       $a0, $s0, $zero
    /* 2C7AC 8003BFAC A579000C */  jal        func_8001E694
    /* 2C7B0 8003BFB0 21284002 */   addu      $a1, $s2, $zero
    /* 2C7B4 8003BFB4 21200002 */  addu       $a0, $s0, $zero
    /* 2C7B8 8003BFB8 21284002 */  addu       $a1, $s2, $zero
    /* 2C7BC 8003BFBC 6979000C */  jal        func_8001E5A4
    /* 2C7C0 8003BFC0 CA0322A6 */   sh        $v0, 0x3CA($s1)
    /* 2C7C4 8003BFC4 CA032386 */  lh         $v1, 0x3CA($s1)
    /* 2C7C8 8003BFC8 00000000 */  nop
    /* 2C7CC 8003BFCC 18007300 */  mult       $v1, $s3
    /* 2C7D0 8003BFD0 CE0322A6 */  sh         $v0, 0x3CE($s1)
    /* 2C7D4 8003BFD4 F000C296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s6)
    /* 2C7D8 8003BFD8 12400000 */  mflo       $t0
    /* 2C7DC 8003BFDC 21104800 */  addu       $v0, $v0, $t0
    /* 2C7E0 8003BFE0 F000C2A6 */  sh         $v0, (0x1F8000F0 & 0xFFFF)($s6)
    /* 2C7E4 8003BFE4 CE032286 */  lh         $v0, 0x3CE($s1)
    /* 2C7E8 8003BFE8 00000000 */  nop
    /* 2C7EC 8003BFEC 18005300 */  mult       $v0, $s3
    /* 2C7F0 8003BFF0 21202002 */  addu       $a0, $s1, $zero
    /* 2C7F4 8003BFF4 2128A002 */  addu       $a1, $s5, $zero
    /* 2C7F8 8003BFF8 01000624 */  addiu      $a2, $zero, 0x1
    /* 2C7FC 8003BFFC 21380000 */  addu       $a3, $zero, $zero
    /* 2C800 8003C000 0100033C */  lui        $v1, (0x14400 >> 16)
    /* 2C804 8003C004 F400C296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s6)
    /* 2C808 8003C008 00446334 */  ori        $v1, $v1, (0x14400 & 0xFFFF)
    /* 2C80C 8003C00C 1000A3AF */  sw         $v1, 0x10($sp)
    /* 2C810 8003C010 12400000 */  mflo       $t0
    /* 2C814 8003C014 21104800 */  addu       $v0, $v0, $t0
    /* 2C818 8003C018 B9F3000C */  jal        func_8003CEE4
    /* 2C81C 8003C01C F400C2A6 */   sh        $v0, (0x1F8000F4 & 0xFFFF)($s6)
    /* 2C820 8003C020 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C824 8003C024 22004010 */  beqz       $v0, .L8003C0B0
    /* 2C828 8003C028 21202002 */   addu      $a0, $s1, $zero
    /* 2C82C 8003C02C 2D000524 */  addiu      $a1, $zero, 0x2D
    /* 2C830 8003C030 8C6E010C */  jal        func_8005BA30
    /* 2C834 8003C034 21300000 */   addu      $a2, $zero, $zero
    /* 2C838 8003C038 1800A493 */  lbu        $a0, 0x18($sp)
    /* 2C83C 8003C03C AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2C840 8003C040 F36D010C */  jal        func_8005B7CC
    /* 2C844 8003C044 28000624 */   addiu     $a2, $zero, 0x28
    /* 2C848 8003C048 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2C84C 8003C04C C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2C850 8003C050 23206400 */  subu       $a0, $v1, $a0
    /* 2C854 8003C054 21188000 */  addu       $v1, $a0, $zero
    /* 2C858 8003C058 02008104 */  bgez       $a0, .L8003C064
    /* 2C85C 8003C05C AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2C860 8003C060 FF008324 */  addiu      $v1, $a0, 0xFF
  .L8003C064:
    /* 2C864 8003C064 031A0300 */  sra        $v1, $v1, 8
    /* 2C868 8003C068 001A0300 */  sll        $v1, $v1, 8
    /* 2C86C 8003C06C 23188300 */  subu       $v1, $a0, $v1
    /* 2C870 8003C070 00190300 */  sll        $v1, $v1, 4
    /* 2C874 8003C074 260023A6 */  sh         $v1, 0x26($s1)
    /* 2C878 8003C078 02002396 */  lhu        $v1, 0x2($s1)
    /* 2C87C 8003C07C CA032596 */  lhu        $a1, 0x3CA($s1)
    /* 2C880 8003C080 06002496 */  lhu        $a0, 0x6($s1)
    /* 2C884 8003C084 CE032696 */  lhu        $a2, 0x3CE($s1)
    /* 2C888 8003C088 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C88C 8003C08C AB0334A2 */  sb         $s4, 0x3AB($s1)
    /* 2C890 8003C090 AC0337A2 */  sb         $s7, 0x3AC($s1)
    /* 2C894 8003C094 B1033EA2 */  sb         $fp, 0x3B1($s1)
    /* 2C898 8003C098 D10320A2 */  sb         $zero, 0x3D1($s1)
    /* 2C89C 8003C09C 21186500 */  addu       $v1, $v1, $a1
    /* 2C8A0 8003C0A0 21208600 */  addu       $a0, $a0, $a2
    /* 2C8A4 8003C0A4 020023A6 */  sh         $v1, 0x2($s1)
    /* 2C8A8 8003C0A8 2DF00008 */  j          .L8003C0B4
    /* 2C8AC 8003C0AC 060024A6 */   sh        $a0, 0x6($s1)
  .L8003C0B0:
    /* 2C8B0 8003C0B0 21100000 */  addu       $v0, $zero, $zero
  .L8003C0B4:
    /* 2C8B4 8003C0B4 4400BF8F */  lw         $ra, 0x44($sp)
    /* 2C8B8 8003C0B8 4000BE8F */  lw         $fp, 0x40($sp)
    /* 2C8BC 8003C0BC 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 2C8C0 8003C0C0 3800B68F */  lw         $s6, 0x38($sp)
    /* 2C8C4 8003C0C4 3400B58F */  lw         $s5, 0x34($sp)
    /* 2C8C8 8003C0C8 3000B48F */  lw         $s4, 0x30($sp)
    /* 2C8CC 8003C0CC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 2C8D0 8003C0D0 2800B28F */  lw         $s2, 0x28($sp)
    /* 2C8D4 8003C0D4 2400B18F */  lw         $s1, 0x24($sp)
    /* 2C8D8 8003C0D8 2000B08F */  lw         $s0, 0x20($sp)
    /* 2C8DC 8003C0DC 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 2C8E0 8003C0E0 0800E003 */  jr         $ra
    /* 2C8E4 8003C0E4 00000000 */   nop
endlabel func_8003BC84
