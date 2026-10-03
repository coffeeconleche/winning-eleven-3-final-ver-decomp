nonmatching func_8006B46C, 0x388

glabel func_8006B46C
    /* 5BC6C 8006B46C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 5BC70 8006B470 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 5BC74 8006B474 21888000 */  addu       $s1, $a0, $zero
    /* 5BC78 8006B478 3000B2AF */  sw         $s2, 0x30($sp)
    /* 5BC7C 8006B47C FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 5BC80 8006B480 3400BFAF */  sw         $ra, 0x34($sp)
    /* 5BC84 8006B484 2800B0AF */  sw         $s0, 0x28($sp)
    /* 5BC88 8006B488 99032392 */  lbu        $v1, 0x399($s1)
    /* 5BC8C 8006B48C 00000000 */  nop
    /* 5BC90 8006B490 0B006014 */  bnez       $v1, .L8006B4C0
    /* 5BC94 8006B494 801F103C */   lui       $s0, (0x1F8000F8 >> 16)
    /* 5BC98 8006B498 09006014 */  bnez       $v1, .L8006B4C0
    /* 5BC9C 8006B49C 01001224 */   addiu     $s2, $zero, 0x1
    /* 5BCA0 8006B4A0 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 5BCA4 8006B4A4 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 5BCA8 8006B4A8 00000000 */  nop
    /* 5BCAC 8006B4AC 02004284 */  lh         $v0, 0x2($v0)
    /* 5BCB0 8006B4B0 00000000 */  nop
    /* 5BCB4 8006B4B4 C10B4228 */  slti       $v0, $v0, 0xBC1
    /* 5BCB8 8006B4B8 68004010 */  beqz       $v0, .L8006B65C
    /* 5BCBC 8006B4BC 00000000 */   nop
  .L8006B4C0:
    /* 5BCC0 8006B4C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 5BCC4 8006B4C4 09006214 */  bne        $v1, $v0, .L8006B4EC
    /* 5BCC8 8006B4C8 00000000 */   nop
    /* 5BCCC 8006B4CC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 5BCD0 8006B4D0 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 5BCD4 8006B4D4 00000000 */  nop
    /* 5BCD8 8006B4D8 02004284 */  lh         $v0, 0x2($v0)
    /* 5BCDC 8006B4DC 00000000 */  nop
    /* 5BCE0 8006B4E0 40F44228 */  slti       $v0, $v0, -0xBC0
    /* 5BCE4 8006B4E4 5D004014 */  bnez       $v0, .L8006B65C
    /* 5BCE8 8006B4E8 00000000 */   nop
  .L8006B4EC:
    /* 5BCEC 8006B4EC 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 5BCF0 8006B4F0 1180023C */  lui        $v0, %hi(D_8010C1E4)
    /* 5BCF4 8006B4F4 E4C14290 */  lbu        $v0, %lo(D_8010C1E4)($v0)
    /* 5BCF8 8006B4F8 00000000 */  nop
    /* 5BCFC 8006B4FC 17006214 */  bne        $v1, $v0, .L8006B55C
    /* 5BD00 8006B500 00141200 */   sll       $v0, $s2, 16
    /* 5BD04 8006B504 001C1200 */  sll        $v1, $s2, 16
    /* 5BD08 8006B508 031C0300 */  sra        $v1, $v1, 16
    /* 5BD0C 8006B50C 40100300 */  sll        $v0, $v1, 1
    /* 5BD10 8006B510 21104300 */  addu       $v0, $v0, $v1
    /* 5BD14 8006B514 80100200 */  sll        $v0, $v0, 2
    /* 5BD18 8006B518 23104300 */  subu       $v0, $v0, $v1
    /* 5BD1C 8006B51C 801F053C */  lui        $a1, (0x1F8002F4 >> 16)
    /* 5BD20 8006B520 F402A58C */  lw         $a1, (0x1F8002F4 & 0xFFFF)($a1)
    /* 5BD24 8006B524 00120200 */  sll        $v0, $v0, 8
    /* 5BD28 8006B528 0200A394 */  lhu        $v1, 0x2($a1)
    /* 5BD2C 8006B52C 801F043C */  lui        $a0, (0x1F8000FC >> 16)
    /* 5BD30 8006B530 FC008484 */  lh         $a0, (0x1F8000FC & 0xFFFF)($a0)
    /* 5BD34 8006B534 23186200 */  subu       $v1, $v1, $v0
    /* 5BD38 8006B538 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5BD3C 8006B53C F80023A4 */  sh         $v1, (0x1F8000F8 & 0xFFFF)($at)
    /* 5BD40 8006B540 0600A584 */  lh         $a1, 0x6($a1)
    /* 5BD44 8006B544 DB69010C */  jal        func_8005A76C
    /* 5BD48 8006B548 03000624 */   addiu     $a2, $zero, 0x3
    /* 5BD4C 8006B54C 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 5BD50 8006B550 FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
    /* 5BD54 8006B554 60AD0108 */  j          .L8006B580
    /* 5BD58 8006B558 00000000 */   nop
  .L8006B55C:
    /* 5BD5C 8006B55C 03140200 */  sra        $v0, $v0, 16
    /* 5BD60 8006B560 40180200 */  sll        $v1, $v0, 1
    /* 5BD64 8006B564 21186200 */  addu       $v1, $v1, $v0
    /* 5BD68 8006B568 801F023C */  lui        $v0, (0x1F8000F8 >> 16)
    /* 5BD6C 8006B56C F8004294 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($v0)
    /* 5BD70 8006B570 401A0300 */  sll        $v1, $v1, 9
    /* 5BD74 8006B574 23104300 */  subu       $v0, $v0, $v1
    /* 5BD78 8006B578 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5BD7C 8006B57C F80022A4 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($at)
  .L8006B580:
    /* 5BD80 8006B580 99032392 */  lbu        $v1, 0x399($s1)
    /* 5BD84 8006B584 00000000 */  nop
    /* 5BD88 8006B588 07006014 */  bnez       $v1, .L8006B5A8
    /* 5BD8C 8006B58C 01000224 */   addiu     $v0, $zero, 0x1
    /* 5BD90 8006B590 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5BD94 8006B594 00000000 */  nop
    /* 5BD98 8006B598 02004284 */  lh         $v0, 0x2($v0)
    /* 5BD9C 8006B59C 00000000 */  nop
    /* 5BDA0 8006B5A0 09004004 */  bltz       $v0, .L8006B5C8
    /* 5BDA4 8006B5A4 01000224 */   addiu     $v0, $zero, 0x1
  .L8006B5A8:
    /* 5BDA8 8006B5A8 2C006214 */  bne        $v1, $v0, .L8006B65C
    /* 5BDAC 8006B5AC 00000000 */   nop
    /* 5BDB0 8006B5B0 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5BDB4 8006B5B4 00000000 */  nop
    /* 5BDB8 8006B5B8 02004284 */  lh         $v0, 0x2($v0)
    /* 5BDBC 8006B5BC 00000000 */  nop
    /* 5BDC0 8006B5C0 26004018 */  blez       $v0, .L8006B65C
    /* 5BDC4 8006B5C4 00000000 */   nop
  .L8006B5C8:
    /* 5BDC8 8006B5C8 001C1200 */  sll        $v1, $s2, 16
    /* 5BDCC 8006B5CC F8000296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5BDD0 8006B5D0 031C0300 */  sra        $v1, $v1, 16
    /* 5BDD4 8006B5D4 00140200 */  sll        $v0, $v0, 16
    /* 5BDD8 8006B5D8 03140200 */  sra        $v0, $v0, 16
    /* 5BDDC 8006B5DC 18006200 */  mult       $v1, $v0
    /* 5BDE0 8006B5E0 99032292 */  lbu        $v0, 0x399($s1)
    /* 5BDE4 8006B5E4 00000000 */  nop
    /* 5BDE8 8006B5E8 01004238 */  xori       $v0, $v0, 0x1
    /* 5BDEC 8006B5EC 40100200 */  sll        $v0, $v0, 1
    /* 5BDF0 8006B5F0 21105000 */  addu       $v0, $v0, $s0
    /* 5BDF4 8006B5F4 12280000 */  mflo       $a1
    /* 5BDF8 8006B5F8 0C034284 */  lh         $v0, (0x1F80030C & 0xFFFF)($v0)
    /* 5BDFC 8006B5FC 00000000 */  nop
    /* 5BE00 8006B600 18006200 */  mult       $v1, $v0
    /* 5BE04 8006B604 21204000 */  addu       $a0, $v0, $zero
    /* 5BE08 8006B608 0002A224 */  addiu      $v0, $a1, 0x200
    /* 5BE0C 8006B60C 12400000 */  mflo       $t0
    /* 5BE10 8006B610 2A100201 */  slt        $v0, $t0, $v0
    /* 5BE14 8006B614 03004010 */  beqz       $v0, .L8006B624
    /* 5BE18 8006B618 40120300 */   sll       $v0, $v1, 9
    /* 5BE1C 8006B61C 21108200 */  addu       $v0, $a0, $v0
    /* 5BE20 8006B620 F80002A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006B624:
    /* 5BE24 8006B624 F8000296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5BE28 8006B628 00000000 */  nop
    /* 5BE2C 8006B62C 00140200 */  sll        $v0, $v0, 16
    /* 5BE30 8006B630 031C0200 */  sra        $v1, $v0, 16
    /* 5BE34 8006B634 02006104 */  bgez       $v1, .L8006B640
    /* 5BE38 8006B638 21106000 */   addu      $v0, $v1, $zero
    /* 5BE3C 8006B63C 23100200 */  negu       $v0, $v0
  .L8006B640:
    /* 5BE40 8006B640 E3234228 */  slti       $v0, $v0, 0x23E3
    /* 5BE44 8006B644 05004014 */  bnez       $v0, .L8006B65C
    /* 5BE48 8006B648 00000000 */   nop
    /* 5BE4C 8006B64C 02006104 */  bgez       $v1, .L8006B658
    /* 5BE50 8006B650 E2230224 */   addiu     $v0, $zero, 0x23E2
    /* 5BE54 8006B654 1EDC0224 */  addiu      $v0, $zero, -0x23E2
  .L8006B658:
    /* 5BE58 8006B658 F80002A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006B65C:
    /* 5BE5C 8006B65C 91032292 */  lbu        $v0, 0x391($s1)
    /* 5BE60 8006B660 00000000 */  nop
    /* 5BE64 8006B664 EFFF4324 */  addiu      $v1, $v0, -0x11
    /* 5BE68 8006B668 0900622C */  sltiu      $v0, $v1, 0x9
    /* 5BE6C 8006B66C 1F004010 */  beqz       $v0, .L8006B6EC
    /* 5BE70 8006B670 80100300 */   sll       $v0, $v1, 2
    /* 5BE74 8006B674 0180013C */  lui        $at, %hi(jtbl_80012818)
    /* 5BE78 8006B678 21082200 */  addu       $at, $at, $v0
    /* 5BE7C 8006B67C 1828228C */  lw         $v0, %lo(jtbl_80012818)($at)
    /* 5BE80 8006B680 00000000 */  nop
    /* 5BE84 8006B684 08004000 */  jr         $v0
    /* 5BE88 8006B688 00000000 */   nop
  jlabel .L8006B68C
    /* 5BE8C 8006B68C F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5BE90 8006B690 001C1200 */  sll        $v1, $s2, 16
    /* 5BE94 8006B694 031C0300 */  sra        $v1, $v1, 16
    /* 5BE98 8006B698 00140200 */  sll        $v0, $v0, 16
    /* 5BE9C 8006B69C 03140200 */  sra        $v0, $v0, 16
    /* 5BEA0 8006B6A0 18004300 */  mult       $v0, $v1
    /* 5BEA4 8006B6A4 12380000 */  mflo       $a3
    /* 5BEA8 8006B6A8 0103E228 */  slti       $v0, $a3, 0x301
    /* 5BEAC 8006B6AC 0F004014 */  bnez       $v0, .L8006B6EC
    /* 5BEB0 8006B6B0 40100300 */   sll       $v0, $v1, 1
    /* 5BEB4 8006B6B4 21104300 */  addu       $v0, $v0, $v1
    /* 5BEB8 8006B6B8 00120200 */  sll        $v0, $v0, 8
    /* 5BEBC 8006B6BC BBAD0108 */  j          .L8006B6EC
    /* 5BEC0 8006B6C0 F80002A6 */   sh        $v0, 0xF8($s0)
  jlabel .L8006B6C4
    /* 5BEC4 8006B6C4 F8000396 */  lhu        $v1, 0xF8($s0)
    /* 5BEC8 8006B6C8 00141200 */  sll        $v0, $s2, 16
    /* 5BECC 8006B6CC 03140200 */  sra        $v0, $v0, 16
    /* 5BED0 8006B6D0 001C0300 */  sll        $v1, $v1, 16
    /* 5BED4 8006B6D4 031C0300 */  sra        $v1, $v1, 16
    /* 5BED8 8006B6D8 18006200 */  mult       $v1, $v0
    /* 5BEDC 8006B6DC 12380000 */  mflo       $a3
    /* 5BEE0 8006B6E0 0200E018 */  blez       $a3, .L8006B6EC
    /* 5BEE4 8006B6E4 00000000 */   nop
    /* 5BEE8 8006B6E8 F80000A6 */  sh         $zero, 0xF8($s0)
  jlabel .L8006B6EC
    /* 5BEEC 8006B6EC 09000292 */  lbu        $v0, (0x1F800009 & 0xFFFF)($s0)
    /* 5BEF0 8006B6F0 00000000 */  nop
    /* 5BEF4 8006B6F4 1C004014 */  bnez       $v0, .L8006B768
    /* 5BEF8 8006B6F8 00000000 */   nop
    /* 5BEFC 8006B6FC 99032292 */  lbu        $v0, 0x399($s1)
    /* 5BF00 8006B700 00000000 */  nop
    /* 5BF04 8006B704 0D004014 */  bnez       $v0, .L8006B73C
    /* 5BF08 8006B708 00000000 */   nop
    /* 5BF0C 8006B70C F8000396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5BF10 8006B710 0E030496 */  lhu        $a0, (0x1F80030E & 0xFFFF)($s0)
    /* 5BF14 8006B714 001C0300 */  sll        $v1, $v1, 16
    /* 5BF18 8006B718 031C0300 */  sra        $v1, $v1, 16
    /* 5BF1C 8006B71C 00140400 */  sll        $v0, $a0, 16
    /* 5BF20 8006B720 03140200 */  sra        $v0, $v0, 16
    /* 5BF24 8006B724 00044224 */  addiu      $v0, $v0, 0x400
    /* 5BF28 8006B728 2A104300 */  slt        $v0, $v0, $v1
    /* 5BF2C 8006B72C 0E004010 */  beqz       $v0, .L8006B768
    /* 5BF30 8006B730 00048224 */   addiu     $v0, $a0, 0x400
    /* 5BF34 8006B734 DAAD0108 */  j          .L8006B768
    /* 5BF38 8006B738 F80002A6 */   sh        $v0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006B73C:
    /* 5BF3C 8006B73C F8000396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5BF40 8006B740 0C030496 */  lhu        $a0, (0x1F80030C & 0xFFFF)($s0)
    /* 5BF44 8006B744 001C0300 */  sll        $v1, $v1, 16
    /* 5BF48 8006B748 031C0300 */  sra        $v1, $v1, 16
    /* 5BF4C 8006B74C 00140400 */  sll        $v0, $a0, 16
    /* 5BF50 8006B750 03140200 */  sra        $v0, $v0, 16
    /* 5BF54 8006B754 00FC4224 */  addiu      $v0, $v0, -0x400
    /* 5BF58 8006B758 2A186200 */  slt        $v1, $v1, $v0
    /* 5BF5C 8006B75C 02006010 */  beqz       $v1, .L8006B768
    /* 5BF60 8006B760 00FC8224 */   addiu     $v0, $a0, -0x400
    /* 5BF64 8006B764 F80002A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006B768:
    /* 5BF68 8006B768 A9020292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s0)
    /* 5BF6C 8006B76C 00000000 */  nop
    /* 5BF70 8006B770 19004014 */  bnez       $v0, .L8006B7D8
    /* 5BF74 8006B774 00000000 */   nop
    /* 5BF78 8006B778 99032292 */  lbu        $v0, 0x399($s1)
    /* 5BF7C 8006B77C 00000000 */  nop
    /* 5BF80 8006B780 0C004014 */  bnez       $v0, .L8006B7B4
    /* 5BF84 8006B784 00000000 */   nop
    /* 5BF88 8006B788 F8000296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5BF8C 8006B78C F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5BF90 8006B790 00140200 */  sll        $v0, $v0, 16
    /* 5BF94 8006B794 02006384 */  lh         $v1, 0x2($v1)
    /* 5BF98 8006B798 03140200 */  sra        $v0, $v0, 16
    /* 5BF9C 8006B79C 21206000 */  addu       $a0, $v1, $zero
    /* 5BFA0 8006B7A0 2A186200 */  slt        $v1, $v1, $v0
    /* 5BFA4 8006B7A4 0C006010 */  beqz       $v1, .L8006B7D8
    /* 5BFA8 8006B7A8 00000000 */   nop
    /* 5BFAC 8006B7AC F6AD0108 */  j          .L8006B7D8
    /* 5BFB0 8006B7B0 F80004A6 */   sh        $a0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006B7B4:
    /* 5BFB4 8006B7B4 F8000296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 5BFB8 8006B7B8 F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5BFBC 8006B7BC 00140200 */  sll        $v0, $v0, 16
    /* 5BFC0 8006B7C0 02006384 */  lh         $v1, 0x2($v1)
    /* 5BFC4 8006B7C4 03140200 */  sra        $v0, $v0, 16
    /* 5BFC8 8006B7C8 2A104300 */  slt        $v0, $v0, $v1
    /* 5BFCC 8006B7CC 02004010 */  beqz       $v0, .L8006B7D8
    /* 5BFD0 8006B7D0 21206000 */   addu      $a0, $v1, $zero
    /* 5BFD4 8006B7D4 F80004A6 */  sh         $a0, (0x1F8000F8 & 0xFFFF)($s0)
  .L8006B7D8:
    /* 5BFD8 8006B7D8 3400BF8F */  lw         $ra, 0x34($sp)
    /* 5BFDC 8006B7DC 3000B28F */  lw         $s2, 0x30($sp)
    /* 5BFE0 8006B7E0 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 5BFE4 8006B7E4 2800B08F */  lw         $s0, 0x28($sp)
    /* 5BFE8 8006B7E8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 5BFEC 8006B7EC 0800E003 */  jr         $ra
    /* 5BFF0 8006B7F0 00000000 */   nop
endlabel func_8006B46C
