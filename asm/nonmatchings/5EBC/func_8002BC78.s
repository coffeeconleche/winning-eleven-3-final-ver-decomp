nonmatching func_8002BC78, 0x58C

glabel func_8002BC78
    /* 1C478 8002BC78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1C47C 8002BC7C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C480 8002BC80 21808000 */  addu       $s0, $a0, $zero
    /* 1C484 8002BC84 01000224 */  addiu      $v0, $zero, 0x1
    /* 1C488 8002BC88 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1C48C 8002BC8C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1C490 8002BC90 97030392 */  lbu        $v1, 0x397($s0)
    /* 1C494 8002BC94 A70302A2 */  sb         $v0, 0x3A7($s0)
    /* 1C498 8002BC98 1300622C */  sltiu      $v0, $v1, 0x13
    /* 1C49C 8002BC9C 4F014010 */  beqz       $v0, .L8002C1DC
    /* 1C4A0 8002BCA0 801F113C */   lui       $s1, (0x1F8002A8 >> 16)
    /* 1C4A4 8002BCA4 80100300 */  sll        $v0, $v1, 2
    /* 1C4A8 8002BCA8 0180013C */  lui        $at, %hi(jtbl_80010E20)
    /* 1C4AC 8002BCAC 21082200 */  addu       $at, $at, $v0
    /* 1C4B0 8002BCB0 200E228C */  lw         $v0, %lo(jtbl_80010E20)($at)
    /* 1C4B4 8002BCB4 00000000 */  nop
    /* 1C4B8 8002BCB8 08004000 */  jr         $v0
    /* 1C4BC 8002BCBC 00000000 */   nop
  jlabel .L8002BCC0
    /* 1C4C0 8002BCC0 21200002 */  addu       $a0, $s0, $zero
    /* 1C4C4 8002BCC4 04000224 */  addiu      $v0, $zero, 0x4
    /* 1C4C8 8002BCC8 81B0000C */  jal        func_8002C204
    /* 1C4CC 8002BCCC D10302A2 */   sb        $v0, 0x3D1($s0)
    /* 1C4D0 8002BCD0 8752010C */  jal        func_80054A1C
    /* 1C4D4 8002BCD4 21200002 */   addu      $a0, $s0, $zero
    /* 1C4D8 8002BCD8 32032292 */  lbu        $v0, (0x1F800332 & 0xFFFF)($s1)
    /* 1C4DC 8002BCDC 00000000 */  nop
    /* 1C4E0 8002BCE0 B00302A2 */  sb         $v0, 0x3B0($s0)
    /* 1C4E4 8002BCE4 A8022392 */  lbu        $v1, (0x1F8002A8 & 0xFFFF)($s1)
    /* 1C4E8 8002BCE8 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 1C4EC 8002BCEC 00000000 */  nop
    /* 1C4F0 8002BCF0 05004314 */  bne        $v0, $v1, .L8002BD08
    /* 1C4F4 8002BCF4 01000224 */   addiu     $v0, $zero, 0x1
    /* 1C4F8 8002BCF8 A3B0000C */  jal        func_8002C28C
    /* 1C4FC 8002BCFC 21200002 */   addu      $a0, $s0, $zero
    /* 1C500 8002BD00 43AF0008 */  j          .L8002BD0C
    /* 1C504 8002BD04 00000000 */   nop
  .L8002BD08:
    /* 1C508 8002BD08 970302A2 */  sb         $v0, 0x397($s0)
  .L8002BD0C:
    /* 1C50C 8002BD0C 476F010C */  jal        func_8005BD1C
    /* 1C510 8002BD10 21200002 */   addu      $a0, $s0, $zero
    /* 1C514 8002BD14 77B00008 */  j          .L8002C1DC
    /* 1C518 8002BD18 00000000 */   nop
  jlabel .L8002BD1C
    /* 1C51C 8002BD1C 476F010C */  jal        func_8005BD1C
    /* 1C520 8002BD20 21200002 */   addu      $a0, $s0, $zero
    /* 1C524 8002BD24 21200002 */  addu       $a0, $s0, $zero
    /* 1C528 8002BD28 DB1F010C */  jal        func_80047F6C
    /* 1C52C 8002BD2C 01000524 */   addiu     $a1, $zero, 0x1
    /* 1C530 8002BD30 21200002 */  addu       $a0, $s0, $zero
    /* 1C534 8002BD34 174E010C */  jal        func_8005385C
    /* 1C538 8002BD38 03000524 */   addiu     $a1, $zero, 0x3
    /* 1C53C 8002BD3C 27014010 */  beqz       $v0, .L8002C1DC
    /* 1C540 8002BD40 00000000 */   nop
    /* 1C544 8002BD44 A3B0000C */  jal        func_8002C28C
    /* 1C548 8002BD48 21200002 */   addu      $a0, $s0, $zero
    /* 1C54C 8002BD4C 77B00008 */  j          .L8002C1DC
    /* 1C550 8002BD50 00000000 */   nop
  jlabel .L8002BD54
    /* 1C554 8002BD54 476F010C */  jal        func_8005BD1C
    /* 1C558 8002BD58 21200002 */   addu      $a0, $s0, $zero
    /* 1C55C 8002BD5C 90030392 */  lbu        $v1, 0x390($s0)
    /* 1C560 8002BD60 09000224 */  addiu      $v0, $zero, 0x9
    /* 1C564 8002BD64 05006210 */  beq        $v1, $v0, .L8002BD7C
    /* 1C568 8002BD68 16000224 */   addiu     $v0, $zero, 0x16
    /* 1C56C 8002BD6C 0E006210 */  beq        $v1, $v0, .L8002BDA8
    /* 1C570 8002BD70 00000000 */   nop
    /* 1C574 8002BD74 75AF0008 */  j          .L8002BDD4
    /* 1C578 8002BD78 00000000 */   nop
  .L8002BD7C:
    /* 1C57C 8002BD7C D14E010C */  jal        func_80053B44
    /* 1C580 8002BD80 21200002 */   addu      $a0, $s0, $zero
    /* 1C584 8002BD84 13004010 */  beqz       $v0, .L8002BDD4
    /* 1C588 8002BD88 00000000 */   nop
    /* 1C58C 8002BD8C 7DB6000C */  jal        func_8002D9F4
    /* 1C590 8002BD90 21200002 */   addu      $a0, $s0, $zero
    /* 1C594 8002BD94 F402228E */  lw         $v0, 0x2F4($s1)
    /* 1C598 8002BD98 00000000 */  nop
    /* 1C59C 8002BD9C A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 1C5A0 8002BDA0 75AF0008 */  j          .L8002BDD4
    /* 1C5A4 8002BDA4 AB0302A2 */   sb        $v0, 0x3AB($s0)
  .L8002BDA8:
    /* 1C5A8 8002BDA8 C4030296 */  lhu        $v0, 0x3C4($s0)
    /* 1C5AC 8002BDAC 00000000 */  nop
    /* 1C5B0 8002BDB0 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 1C5B4 8002BDB4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1C5B8 8002BDB8 03004010 */  beqz       $v0, .L8002BDC8
    /* 1C5BC 8002BDBC 10000224 */   addiu     $v0, $zero, 0x10
    /* 1C5C0 8002BDC0 75AF0008 */  j          .L8002BDD4
    /* 1C5C4 8002BDC4 970302A2 */   sb        $v0, 0x397($s0)
  .L8002BDC8:
    /* 1C5C8 8002BDC8 18000224 */  addiu      $v0, $zero, 0x18
    /* 1C5CC 8002BDCC 960302A2 */  sb         $v0, 0x396($s0)
    /* 1C5D0 8002BDD0 970300A2 */  sb         $zero, 0x397($s0)
  .L8002BDD4:
    /* 1C5D4 8002BDD4 90030292 */  lbu        $v0, 0x390($s0)
    /* 1C5D8 8002BDD8 00000000 */  nop
    /* 1C5DC 8002BDDC 0E00422C */  sltiu      $v0, $v0, 0xE
    /* 1C5E0 8002BDE0 06004010 */  beqz       $v0, .L8002BDFC
    /* 1C5E4 8002BDE4 00000000 */   nop
    /* 1C5E8 8002BDE8 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 1C5EC 8002BDEC AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 1C5F0 8002BDF0 F36D010C */  jal        func_8005B7CC
    /* 1C5F4 8002BDF4 05000624 */   addiu     $a2, $zero, 0x5
    /* 1C5F8 8002BDF8 AA0302A2 */  sb         $v0, 0x3AA($s0)
  .L8002BDFC:
    /* 1C5FC 8002BDFC 90030292 */  lbu        $v0, 0x390($s0)
    /* 1C600 8002BE00 00000000 */  nop
    /* 1C604 8002BE04 0900422C */  sltiu      $v0, $v0, 0x9
    /* 1C608 8002BE08 06004010 */  beqz       $v0, .L8002BE24
    /* 1C60C 8002BE0C 00000000 */   nop
    /* 1C610 8002BE10 A8022392 */  lbu        $v1, 0x2A8($s1)
    /* 1C614 8002BE14 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 1C618 8002BE18 00000000 */  nop
    /* 1C61C 8002BE1C EF004314 */  bne        $v0, $v1, .L8002C1DC
    /* 1C620 8002BE20 00000000 */   nop
  .L8002BE24:
    /* 1C624 8002BE24 A003038E */  lw         $v1, 0x3A0($s0)
  .L8002BE28:
    /* 1C628 8002BE28 00000000 */  nop
    /* 1C62C 8002BE2C 0D00622C */  sltiu      $v0, $v1, 0xD
    /* 1C630 8002BE30 8E004014 */  bnez       $v0, .L8002C06C
    /* 1C634 8002BE34 F4FF6224 */   addiu     $v0, $v1, -0xC
    /* 1C638 8002BE38 1DB00008 */  j          .L8002C074
    /* 1C63C 8002BE3C 00000000 */   nop
  jlabel .L8002BE40
    /* 1C640 8002BE40 476F010C */  jal        func_8005BD1C
    /* 1C644 8002BE44 21200002 */   addu      $a0, $s0, $zero
    /* 1C648 8002BE48 90030392 */  lbu        $v1, 0x390($s0)
    /* 1C64C 8002BE4C 05000224 */  addiu      $v0, $zero, 0x5
    /* 1C650 8002BE50 1C006210 */  beq        $v1, $v0, .L8002BEC4
    /* 1C654 8002BE54 06006228 */   slti      $v0, $v1, 0x6
    /* 1C658 8002BE58 05004010 */  beqz       $v0, .L8002BE70
    /* 1C65C 8002BE5C 04000224 */   addiu     $v0, $zero, 0x4
    /* 1C660 8002BE60 08006210 */  beq        $v1, $v0, .L8002BE84
    /* 1C664 8002BE64 00000000 */   nop
    /* 1C668 8002BE68 BBAF0008 */  j          .L8002BEEC
    /* 1C66C 8002BE6C 00000000 */   nop
  .L8002BE70:
    /* 1C670 8002BE70 10000224 */  addiu      $v0, $zero, 0x10
    /* 1C674 8002BE74 1B006210 */  beq        $v1, $v0, .L8002BEE4
    /* 1C678 8002BE78 18000224 */   addiu     $v0, $zero, 0x18
    /* 1C67C 8002BE7C BBAF0008 */  j          .L8002BEEC
    /* 1C680 8002BE80 00000000 */   nop
  .L8002BE84:
    /* 1C684 8002BE84 D14E010C */  jal        func_80053B44
    /* 1C688 8002BE88 21200002 */   addu      $a0, $s0, $zero
    /* 1C68C 8002BE8C 17004010 */  beqz       $v0, .L8002BEEC
    /* 1C690 8002BE90 00000000 */   nop
    /* 1C694 8002BE94 7DB6000C */  jal        func_8002D9F4
    /* 1C698 8002BE98 21200002 */   addu      $a0, $s0, $zero
    /* 1C69C 8002BE9C F402228E */  lw         $v0, 0x2F4($s1)
    /* 1C6A0 8002BEA0 AC030392 */  lbu        $v1, 0x3AC($s0)
    /* 1C6A4 8002BEA4 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 1C6A8 8002BEA8 03006014 */  bnez       $v1, .L8002BEB8
    /* 1C6AC 8002BEAC 00000000 */   nop
    /* 1C6B0 8002BEB0 AFAF0008 */  j          .L8002BEBC
    /* 1C6B4 8002BEB4 28004224 */   addiu     $v0, $v0, 0x28
  .L8002BEB8:
    /* 1C6B8 8002BEB8 D8FF4224 */  addiu      $v0, $v0, -0x28
  .L8002BEBC:
    /* 1C6BC 8002BEBC BBAF0008 */  j          .L8002BEEC
    /* 1C6C0 8002BEC0 AB0302A2 */   sb        $v0, 0x3AB($s0)
  .L8002BEC4:
    /* 1C6C4 8002BEC4 C4030296 */  lhu        $v0, 0x3C4($s0)
    /* 1C6C8 8002BEC8 00000000 */  nop
    /* 1C6CC 8002BECC FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 1C6D0 8002BED0 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1C6D4 8002BED4 05004010 */  beqz       $v0, .L8002BEEC
    /* 1C6D8 8002BED8 10000224 */   addiu     $v0, $zero, 0x10
    /* 1C6DC 8002BEDC BBAF0008 */  j          .L8002BEEC
    /* 1C6E0 8002BEE0 970302A2 */   sb        $v0, 0x397($s0)
  .L8002BEE4:
    /* 1C6E4 8002BEE4 960302A2 */  sb         $v0, 0x396($s0)
    /* 1C6E8 8002BEE8 970300A2 */  sb         $zero, 0x397($s0)
  .L8002BEEC:
    /* 1C6EC 8002BEEC 90030292 */  lbu        $v0, 0x390($s0)
    /* 1C6F0 8002BEF0 00000000 */  nop
    /* 1C6F4 8002BEF4 0500422C */  sltiu      $v0, $v0, 0x5
    /* 1C6F8 8002BEF8 09004014 */  bnez       $v0, .L8002BF20
    /* 1C6FC 8002BEFC 00000000 */   nop
    /* 1C700 8002BF00 A003038E */  lw         $v1, 0x3A0($s0)
    /* 1C704 8002BF04 00000000 */  nop
    /* 1C708 8002BF08 1100622C */  sltiu      $v0, $v1, 0x11
    /* 1C70C 8002BF0C 03004010 */  beqz       $v0, .L8002BF1C
    /* 1C710 8002BF10 F0FF6224 */   addiu     $v0, $v1, -0x10
    /* 1C714 8002BF14 C8AF0008 */  j          .L8002BF20
    /* 1C718 8002BF18 A00300AE */   sw        $zero, 0x3A0($s0)
  .L8002BF1C:
    /* 1C71C 8002BF1C A00302AE */  sw         $v0, 0x3A0($s0)
  .L8002BF20:
    /* 1C720 8002BF20 90030292 */  lbu        $v0, 0x390($s0)
    /* 1C724 8002BF24 00000000 */  nop
    /* 1C728 8002BF28 0900422C */  sltiu      $v0, $v0, 0x9
    /* 1C72C 8002BF2C AB004010 */  beqz       $v0, .L8002C1DC
    /* 1C730 8002BF30 00000000 */   nop
    /* 1C734 8002BF34 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 1C738 8002BF38 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 1C73C 8002BF3C F36D010C */  jal        func_8005B7CC
    /* 1C740 8002BF40 05000624 */   addiu     $a2, $zero, 0x5
    /* 1C744 8002BF44 77B00008 */  j          .L8002C1DC
    /* 1C748 8002BF48 AA0302A2 */   sb        $v0, 0x3AA($s0)
  jlabel .L8002BF4C
    /* 1C74C 8002BF4C 476F010C */  jal        func_8005BD1C
    /* 1C750 8002BF50 21200002 */   addu      $a0, $s0, $zero
    /* 1C754 8002BF54 90030292 */  lbu        $v0, 0x390($s0)
    /* 1C758 8002BF58 00000000 */  nop
    /* 1C75C 8002BF5C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 1C760 8002BF60 13004014 */  bnez       $v0, .L8002BFB0
    /* 1C764 8002BF64 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1C768 8002BF68 21200002 */  addu       $a0, $s0, $zero
    /* 1C76C 8002BF6C 13000524 */  addiu      $a1, $zero, 0x13
    /* 1C770 8002BF70 8C6E010C */  jal        func_8005BA30
    /* 1C774 8002BF74 02000624 */   addiu     $a2, $zero, 0x2
    /* 1C778 8002BF78 D14E010C */  jal        func_80053B44
    /* 1C77C 8002BF7C 21200002 */   addu      $a0, $s0, $zero
    /* 1C780 8002BF80 09004010 */  beqz       $v0, .L8002BFA8
    /* 1C784 8002BF84 07000224 */   addiu     $v0, $zero, 0x7
    /* 1C788 8002BF88 7DB6000C */  jal        func_8002D9F4
    /* 1C78C 8002BF8C 21200002 */   addu      $a0, $s0, $zero
    /* 1C790 8002BF90 F402228E */  lw         $v0, 0x2F4($s1)
    /* 1C794 8002BF94 00000000 */  nop
    /* 1C798 8002BF98 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 1C79C 8002BF9C 00000000 */  nop
    /* 1C7A0 8002BFA0 AB0302A2 */  sb         $v0, 0x3AB($s0)
    /* 1C7A4 8002BFA4 07000224 */  addiu      $v0, $zero, 0x7
  .L8002BFA8:
    /* 1C7A8 8002BFA8 970302A2 */  sb         $v0, 0x397($s0)
    /* 1C7AC 8002BFAC 0C000624 */  addiu      $a2, $zero, 0xC
  .L8002BFB0:
    /* 1C7B0 8002BFB0 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 1C7B4 8002BFB4 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 1C7B8 8002BFB8 80008424 */  addiu      $a0, $a0, 0x80
    /* 1C7BC 8002BFBC F36D010C */  jal        func_8005B7CC
    /* 1C7C0 8002BFC0 FF008430 */   andi      $a0, $a0, 0xFF
    /* 1C7C4 8002BFC4 A003038E */  lw         $v1, 0x3A0($s0)
    /* 1C7C8 8002BFC8 8AAF0008 */  j          .L8002BE28
    /* 1C7CC 8002BFCC AA0302A2 */   sb        $v0, 0x3AA($s0)
  jlabel .L8002BFD0
    /* 1C7D0 8002BFD0 476F010C */  jal        func_8005BD1C
    /* 1C7D4 8002BFD4 21200002 */   addu      $a0, $s0, $zero
    /* 1C7D8 8002BFD8 90030392 */  lbu        $v1, 0x390($s0)
    /* 1C7DC 8002BFDC 0B000224 */  addiu      $v0, $zero, 0xB
    /* 1C7E0 8002BFE0 12006214 */  bne        $v1, $v0, .L8002C02C
    /* 1C7E4 8002BFE4 00000000 */   nop
    /* 1C7E8 8002BFE8 C4030296 */  lhu        $v0, 0x3C4($s0)
    /* 1C7EC 8002BFEC 00000000 */  nop
    /* 1C7F0 8002BFF0 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 1C7F4 8002BFF4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1C7F8 8002BFF8 03004010 */  beqz       $v0, .L8002C008
    /* 1C7FC 8002BFFC 10000224 */   addiu     $v0, $zero, 0x10
    /* 1C800 8002C000 0BB00008 */  j          .L8002C02C
    /* 1C804 8002C004 970302A2 */   sb        $v0, 0x397($s0)
  .L8002C008:
    /* 1C808 8002C008 21200002 */  addu       $a0, $s0, $zero
    /* 1C80C 8002C00C 26000524 */  addiu      $a1, $zero, 0x26
    /* 1C810 8002C010 8C6E010C */  jal        func_8005BA30
    /* 1C814 8002C014 21300000 */   addu      $a2, $zero, $zero
    /* 1C818 8002C018 30000224 */  addiu      $v0, $zero, 0x30
    /* 1C81C 8002C01C A00302AE */  sw         $v0, 0x3A0($s0)
    /* 1C820 8002C020 18000224 */  addiu      $v0, $zero, 0x18
    /* 1C824 8002C024 960302A2 */  sb         $v0, 0x396($s0)
    /* 1C828 8002C028 970300A2 */  sb         $zero, 0x397($s0)
  .L8002C02C:
    /* 1C82C 8002C02C 90030292 */  lbu        $v0, 0x390($s0)
    /* 1C830 8002C030 00000000 */  nop
    /* 1C834 8002C034 0700422C */  sltiu      $v0, $v0, 0x7
    /* 1C838 8002C038 07004010 */  beqz       $v0, .L8002C058
    /* 1C83C 8002C03C 00000000 */   nop
    /* 1C840 8002C040 AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 1C844 8002C044 AA030392 */  lbu        $v1, 0x3AA($s0)
    /* 1C848 8002C048 02004014 */  bnez       $v0, .L8002C054
    /* 1C84C 8002C04C FDFF6224 */   addiu     $v0, $v1, -0x3
    /* 1C850 8002C050 03006224 */  addiu      $v0, $v1, 0x3
  .L8002C054:
    /* 1C854 8002C054 AA0302A2 */  sb         $v0, 0x3AA($s0)
  .L8002C058:
    /* 1C858 8002C058 A003038E */  lw         $v1, 0x3A0($s0)
    /* 1C85C 8002C05C 00000000 */  nop
    /* 1C860 8002C060 0D00622C */  sltiu      $v0, $v1, 0xD
    /* 1C864 8002C064 03004010 */  beqz       $v0, .L8002C074
    /* 1C868 8002C068 F4FF6224 */   addiu     $v0, $v1, -0xC
  .L8002C06C:
    /* 1C86C 8002C06C 77B00008 */  j          .L8002C1DC
    /* 1C870 8002C070 A00300AE */   sw        $zero, 0x3A0($s0)
  .L8002C074:
    /* 1C874 8002C074 77B00008 */  j          .L8002C1DC
    /* 1C878 8002C078 A00302AE */   sw        $v0, 0x3A0($s0)
  jlabel .L8002C07C
    /* 1C87C 8002C07C 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 1C880 8002C080 26000224 */  addiu      $v0, $zero, 0x26
    /* 1C884 8002C084 04006210 */  beq        $v1, $v0, .L8002C098
    /* 1C888 8002C088 26000524 */   addiu     $a1, $zero, 0x26
    /* 1C88C 8002C08C 21200002 */  addu       $a0, $s0, $zero
    /* 1C890 8002C090 8C6E010C */  jal        func_8005BA30
    /* 1C894 8002C094 01000624 */   addiu     $a2, $zero, 0x1
  .L8002C098:
    /* 1C898 8002C098 92030292 */  lbu        $v0, 0x392($s0)
    /* 1C89C 8002C09C 98030492 */  lbu        $a0, 0x398($s0)
    /* 1C8A0 8002C0A0 40180200 */  sll        $v1, $v0, 1
    /* 1C8A4 8002C0A4 21186200 */  addu       $v1, $v1, $v0
    /* 1C8A8 8002C0A8 80180300 */  sll        $v1, $v1, 2
    /* 1C8AC 8002C0AC 40110400 */  sll        $v0, $a0, 5
    /* 1C8B0 8002C0B0 21104400 */  addu       $v0, $v0, $a0
    /* 1C8B4 8002C0B4 C0100200 */  sll        $v0, $v0, 3
    /* 1C8B8 8002C0B8 21186200 */  addu       $v1, $v1, $v0
    /* 1C8BC 8002C0BC 1180013C */  lui        $at, %hi(D_8010C32B)
    /* 1C8C0 8002C0C0 21082300 */  addu       $at, $at, $v1
    /* 1C8C4 8002C0C4 2BC32290 */  lbu        $v0, %lo(D_8010C32B)($at)
    /* 1C8C8 8002C0C8 09000424 */  addiu      $a0, $zero, 0x9
    /* 1C8CC 8002C0CC 0F004230 */  andi       $v0, $v0, 0xF
    /* 1C8D0 8002C0D0 23208200 */  subu       $a0, $a0, $v0
    /* 1C8D4 8002C0D4 AE79000C */  jal        func_8001E6B8
    /* 1C8D8 8002C0D8 40200400 */   sll       $a0, $a0, 1
    /* 1C8DC 8002C0DC 97030392 */  lbu        $v1, 0x397($s0)
    /* 1C8E0 8002C0E0 03004224 */  addiu      $v0, $v0, 0x3
    /* 1C8E4 8002C0E4 D00302A2 */  sb         $v0, 0x3D0($s0)
    /* 1C8E8 8002C0E8 01006324 */  addiu      $v1, $v1, 0x1
    /* 1C8EC 8002C0EC 970303A2 */  sb         $v1, 0x397($s0)
  jlabel .L8002C0F0
    /* 1C8F0 8002C0F0 476F010C */  jal        func_8005BD1C
    /* 1C8F4 8002C0F4 21200002 */   addu      $a0, $s0, $zero
    /* 1C8F8 8002C0F8 99030292 */  lbu        $v0, 0x399($s0)
    /* 1C8FC 8002C0FC 02000386 */  lh         $v1, 0x2($s0)
    /* 1C900 8002C100 02004014 */  bnez       $v0, .L8002C10C
    /* 1C904 8002C104 00F06224 */   addiu     $v0, $v1, -0x1000
    /* 1C908 8002C108 00106224 */  addiu      $v0, $v1, 0x1000
  .L8002C10C:
    /* 1C90C 8002C10C 21200002 */  addu       $a0, $s0, $zero
    /* 1C910 8002C110 F80022A6 */  sh         $v0, 0xF8($s1)
    /* 1C914 8002C114 06000296 */  lhu        $v0, 0x6($s0)
    /* 1C918 8002C118 21280000 */  addu       $a1, $zero, $zero
    /* 1C91C 8002C11C 6E1E010C */  jal        func_800479B8
    /* 1C920 8002C120 FC0022A6 */   sh        $v0, 0xFC($s1)
    /* 1C924 8002C124 D0030292 */  lbu        $v0, 0x3D0($s0)
    /* 1C928 8002C128 00000000 */  nop
    /* 1C92C 8002C12C 2B004014 */  bnez       $v0, .L8002C1DC
    /* 1C930 8002C130 5A000324 */   addiu     $v1, $zero, 0x5A
    /* 1C934 8002C134 97030292 */  lbu        $v0, 0x397($s0)
    /* 1C938 8002C138 D00303A2 */  sb         $v1, 0x3D0($s0)
    /* 1C93C 8002C13C 01004224 */  addiu      $v0, $v0, 0x1
    /* 1C940 8002C140 77B00008 */  j          .L8002C1DC
    /* 1C944 8002C144 970302A2 */   sb        $v0, 0x397($s0)
  jlabel .L8002C148
    /* 1C948 8002C148 476F010C */  jal        func_8005BD1C
    /* 1C94C 8002C14C 21200002 */   addu      $a0, $s0, $zero
    /* 1C950 8002C150 99030292 */  lbu        $v0, 0x399($s0)
    /* 1C954 8002C154 02000386 */  lh         $v1, 0x2($s0)
    /* 1C958 8002C158 02004014 */  bnez       $v0, .L8002C164
    /* 1C95C 8002C15C 00F06224 */   addiu     $v0, $v1, -0x1000
    /* 1C960 8002C160 00106224 */  addiu      $v0, $v1, 0x1000
  .L8002C164:
    /* 1C964 8002C164 21200002 */  addu       $a0, $s0, $zero
    /* 1C968 8002C168 F80022A6 */  sh         $v0, 0xF8($s1)
    /* 1C96C 8002C16C 06000296 */  lhu        $v0, 0x6($s0)
    /* 1C970 8002C170 01000524 */  addiu      $a1, $zero, 0x1
    /* 1C974 8002C174 6E1E010C */  jal        func_800479B8
    /* 1C978 8002C178 FC0022A6 */   sh        $v0, 0xFC($s1)
    /* 1C97C 8002C17C 99030292 */  lbu        $v0, 0x399($s0)
    /* 1C980 8002C180 02000386 */  lh         $v1, 0x2($s0)
    /* 1C984 8002C184 03004010 */  beqz       $v0, .L8002C194
    /* 1C988 8002C188 23100300 */   negu      $v0, $v1
    /* 1C98C 8002C18C 66B00008 */  j          .L8002C198
    /* 1C990 8002C190 A1324228 */   slti      $v0, $v0, 0x32A1
  .L8002C194:
    /* 1C994 8002C194 A1326228 */  slti       $v0, $v1, 0x32A1
  .L8002C198:
    /* 1C998 8002C198 08004010 */  beqz       $v0, .L8002C1BC
    /* 1C99C 8002C19C 00000000 */   nop
    /* 1C9A0 8002C1A0 98030292 */  lbu        $v0, 0x398($s0)
    /* 1C9A4 8002C1A4 00000000 */  nop
    /* 1C9A8 8002C1A8 21102202 */  addu       $v0, $s1, $v0
    /* 1C9AC 8002C1AC CF024390 */  lbu        $v1, 0x2CF($v0)
    /* 1C9B0 8002C1B0 01000224 */  addiu      $v0, $zero, 0x1
    /* 1C9B4 8002C1B4 03006214 */  bne        $v1, $v0, .L8002C1C4
    /* 1C9B8 8002C1B8 00000000 */   nop
  .L8002C1BC:
    /* 1C9BC 8002C1BC 76B00008 */  j          .L8002C1D8
    /* 1C9C0 8002C1C0 960300A2 */   sb        $zero, 0x396($s0)
  .L8002C1C4:
    /* 1C9C4 8002C1C4 D0030292 */  lbu        $v0, 0x3D0($s0)
    /* 1C9C8 8002C1C8 00000000 */  nop
    /* 1C9CC 8002C1CC 03004014 */  bnez       $v0, .L8002C1DC
    /* 1C9D0 8002C1D0 18000224 */   addiu     $v0, $zero, 0x18
    /* 1C9D4 8002C1D4 960302A2 */  sb         $v0, 0x396($s0)
  .L8002C1D8:
    /* 1C9D8 8002C1D8 970300A2 */  sb         $zero, 0x397($s0)
  jlabel .L8002C1DC
    /* 1C9DC 8002C1DC 426E010C */  jal        func_8005B908
    /* 1C9E0 8002C1E0 21200002 */   addu      $a0, $s0, $zero
    /* 1C9E4 8002C1E4 2B26010C */  jal        func_800498AC
    /* 1C9E8 8002C1E8 21200002 */   addu      $a0, $s0, $zero
    /* 1C9EC 8002C1EC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1C9F0 8002C1F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C9F4 8002C1F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C9F8 8002C1F8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1C9FC 8002C1FC 0800E003 */  jr         $ra
    /* 1CA00 8002C200 00000000 */   nop
endlabel func_8002BC78
