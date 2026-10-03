nonmatching func_8008BD20, 0x25C

glabel func_8008BD20
    /* 7C520 8008BD20 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 7C524 8008BD24 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7C528 8008BD28 21888000 */  addu       $s1, $a0, $zero
    /* 7C52C 8008BD2C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 7C530 8008BD30 E8033526 */  addiu      $s5, $s1, 0x3E8
    /* 7C534 8008BD34 3400B7AF */  sw         $s7, 0x34($sp)
    /* 7C538 8008BD38 21B80000 */  addu       $s7, $zero, $zero
    /* 7C53C 8008BD3C 3800BEAF */  sw         $fp, 0x38($sp)
    /* 7C540 8008BD40 21F00000 */  addu       $fp, $zero, $zero
    /* 7C544 8008BD44 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7C548 8008BD48 2190A002 */  addu       $s2, $s5, $zero
    /* 7C54C 8008BD4C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 7C550 8008BD50 3000B6AF */  sw         $s6, 0x30($sp)
    /* 7C554 8008BD54 2800B4AF */  sw         $s4, 0x28($sp)
    /* 7C558 8008BD58 2400B3AF */  sw         $s3, 0x24($sp)
    /* 7C55C 8008BD5C 1800B0AF */  sw         $s0, 0x18($sp)
  .L8008BD60:
    /* 7C560 8008BD60 1B4B010C */  jal        func_80052C6C
    /* 7C564 8008BD64 2120A002 */   addu      $a0, $s5, $zero
    /* 7C568 8008BD68 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7C56C 8008BD6C 6C004014 */  bnez       $v0, .L8008BF20
    /* 7C570 8008BD70 00000000 */   nop
    /* 7C574 8008BD74 02004586 */  lh         $a1, 0x2($s2)
    /* 7C578 8008BD78 02002486 */  lh         $a0, 0x2($s1)
    /* 7C57C 8008BD7C 0200A104 */  bgez       $a1, .L8008BD88
    /* 7C580 8008BD80 2118A000 */   addu      $v1, $a1, $zero
    /* 7C584 8008BD84 23180300 */  negu       $v1, $v1
  .L8008BD88:
    /* 7C588 8008BD88 02008104 */  bgez       $a0, .L8008BD94
    /* 7C58C 8008BD8C 21108000 */   addu      $v0, $a0, $zero
    /* 7C590 8008BD90 23100200 */  negu       $v0, $v0
  .L8008BD94:
    /* 7C594 8008BD94 2A104300 */  slt        $v0, $v0, $v1
    /* 7C598 8008BD98 61004014 */  bnez       $v0, .L8008BF20
    /* 7C59C 8008BD9C 23108500 */   subu      $v0, $a0, $a1
    /* 7C5A0 8008BDA0 18004200 */  mult       $v0, $v0
    /* 7C5A4 8008BDA4 06002286 */  lh         $v0, 0x6($s1)
    /* 7C5A8 8008BDA8 06004386 */  lh         $v1, 0x6($s2)
    /* 7C5AC 8008BDAC 12200000 */  mflo       $a0
    /* 7C5B0 8008BDB0 23104300 */  subu       $v0, $v0, $v1
    /* 7C5B4 8008BDB4 00000000 */  nop
    /* 7C5B8 8008BDB8 18004200 */  mult       $v0, $v0
    /* 7C5BC 8008BDBC 2702023C */  lui        $v0, (0x2270000 >> 16)
    /* 7C5C0 8008BDC0 12180000 */  mflo       $v1
    /* 7C5C4 8008BDC4 21988300 */  addu       $s3, $a0, $v1
    /* 7C5C8 8008BDC8 E7FF033C */  lui        $v1, (0xFFE70000 >> 16)
    /* 7C5CC 8008BDCC 21186302 */  addu       $v1, $s3, $v1
    /* 7C5D0 8008BDD0 2B104300 */  sltu       $v0, $v0, $v1
    /* 7C5D4 8008BDD4 52004014 */  bnez       $v0, .L8008BF20
    /* 7C5D8 8008BDD8 00000000 */   nop
    /* 7C5DC 8008BDDC 6E25010C */  jal        func_800495B8
    /* 7C5E0 8008BDE0 2120A002 */   addu      $a0, $s5, $zero
    /* 7C5E4 8008BDE4 8F00033C */  lui        $v1, (0x8FFFFF >> 16)
    /* 7C5E8 8008BDE8 FFFF6334 */  ori        $v1, $v1, (0x8FFFFF & 0xFFFF)
    /* 7C5EC 8008BDEC 21B04000 */  addu       $s6, $v0, $zero
    /* 7C5F0 8008BDF0 2B187600 */  sltu       $v1, $v1, $s6
    /* 7C5F4 8008BDF4 4A006010 */  beqz       $v1, .L8008BF20
    /* 7C5F8 8008BDF8 00000000 */   nop
    /* 7C5FC 8008BDFC 02002486 */  lh         $a0, 0x2($s1)
    /* 7C600 8008BE00 06002586 */  lh         $a1, 0x6($s1)
    /* 7C604 8008BE04 99032292 */  lbu        $v0, 0x399($s1)
    /* 7C608 8008BE08 02004386 */  lh         $v1, 0x2($s2)
    /* 7C60C 8008BE0C 02004014 */  bnez       $v0, .L8008BE18
    /* 7C610 8008BE10 00FC6224 */   addiu     $v0, $v1, -0x400
    /* 7C614 8008BE14 00046224 */  addiu      $v0, $v1, 0x400
  .L8008BE18:
    /* 7C618 8008BE18 00140200 */  sll        $v0, $v0, 16
    /* 7C61C 8008BE1C 06004786 */  lh         $a3, 0x6($s2)
    /* 7C620 8008BE20 DB6C010C */  jal        func_8005B36C
    /* 7C624 8008BE24 03340200 */   sra       $a2, $v0, 16
    /* 7C628 8008BE28 21202002 */  addu       $a0, $s1, $zero
    /* 7C62C 8008BE2C 21804000 */  addu       $s0, $v0, $zero
    /* 7C630 8008BE30 FF000532 */  andi       $a1, $s0, 0xFF
    /* 7C634 8008BE34 10000624 */  addiu      $a2, $zero, 0x10
    /* 7C638 8008BE38 FD4C010C */  jal        func_800533F4
    /* 7C63C 8008BE3C 21386002 */   addu      $a3, $s3, $zero
    /* 7C640 8008BE40 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7C644 8008BE44 36004014 */  bnez       $v0, .L8008BF20
    /* 7C648 8008BE48 00000000 */   nop
    /* 7C64C 8008BE4C 06004286 */  lh         $v0, 0x6($s2)
    /* 7C650 8008BE50 02004386 */  lh         $v1, 0x2($s2)
    /* 7C654 8008BE54 02004104 */  bgez       $v0, .L8008BE60
    /* 7C658 8008BE58 00000000 */   nop
    /* 7C65C 8008BE5C 23100200 */  negu       $v0, $v0
  .L8008BE60:
    /* 7C660 8008BE60 20334224 */  addiu      $v0, $v0, 0x3320
    /* 7C664 8008BE64 02006104 */  bgez       $v1, .L8008BE70
    /* 7C668 8008BE68 00000000 */   nop
    /* 7C66C 8008BE6C 23180300 */  negu       $v1, $v1
  .L8008BE70:
    /* 7C670 8008BE70 23A04300 */  subu       $s4, $v0, $v1
    /* 7C674 8008BE74 2B109702 */  sltu       $v0, $s4, $s7
    /* 7C678 8008BE78 29004014 */  bnez       $v0, .L8008BF20
    /* 7C67C 8008BE7C 00000000 */   nop
    /* 7C680 8008BE80 99032292 */  lbu        $v0, 0x399($s1)
    /* 7C684 8008BE84 00000000 */  nop
    /* 7C688 8008BE88 C0210200 */  sll        $a0, $v0, 7
    /* 7C68C 8008BE8C 23100402 */  subu       $v0, $s0, $a0
    /* 7C690 8008BE90 FF004330 */  andi       $v1, $v0, 0xFF
    /* 7C694 8008BE94 8100622C */  sltiu      $v0, $v1, 0x81
    /* 7C698 8008BE98 08004014 */  bnez       $v0, .L8008BEBC
    /* 7C69C 8008BE9C 08006228 */   slti      $v0, $v1, 0x8
    /* 7C6A0 8008BEA0 23109000 */  subu       $v0, $a0, $s0
    /* 7C6A4 8008BEA4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7C6A8 8008BEA8 08004228 */  slti       $v0, $v0, 0x8
    /* 7C6AC 8008BEAC 07004010 */  beqz       $v0, .L8008BECC
    /* 7C6B0 8008BEB0 00000000 */   nop
    /* 7C6B4 8008BEB4 C62F0208 */  j          .L8008BF18
    /* 7C6B8 8008BEB8 C60320A6 */   sh        $zero, 0x3C6($s1)
  .L8008BEBC:
    /* 7C6BC 8008BEBC 03004010 */  beqz       $v0, .L8008BECC
    /* 7C6C0 8008BEC0 00000000 */   nop
    /* 7C6C4 8008BEC4 C62F0208 */  j          .L8008BF18
    /* 7C6C8 8008BEC8 C60320A6 */   sh        $zero, 0x3C6($s1)
  .L8008BECC:
    /* 7C6CC 8008BECC 4AC4020C */  jal        func_800B1128
    /* 7C6D0 8008BED0 2120C002 */   addu      $a0, $s6, $zero
    /* 7C6D4 8008BED4 00FE4224 */  addiu      $v0, $v0, -0x200
    /* 7C6D8 8008BED8 42100200 */  srl        $v0, $v0, 1
    /* 7C6DC 8008BEDC C60322A6 */  sh         $v0, 0x3C6($s1)
    /* 7C6E0 8008BEE0 00140200 */  sll        $v0, $v0, 16
    /* 7C6E4 8008BEE4 03140200 */  sra        $v0, $v0, 16
    /* 7C6E8 8008BEE8 010C4228 */  slti       $v0, $v0, 0xC01
    /* 7C6EC 8008BEEC 02004014 */  bnez       $v0, .L8008BEF8
    /* 7C6F0 8008BEF0 000C0224 */   addiu     $v0, $zero, 0xC00
    /* 7C6F4 8008BEF4 C60322A6 */  sh         $v0, 0x3C6($s1)
  .L8008BEF8:
    /* 7C6F8 8008BEF8 4AC4020C */  jal        func_800B1128
    /* 7C6FC 8008BEFC 21206002 */   addu      $a0, $s3, $zero
    /* 7C700 8008BF00 C6032386 */  lh         $v1, 0x3C6($s1)
    /* 7C704 8008BF04 42100200 */  srl        $v0, $v0, 1
    /* 7C708 8008BF08 2B184300 */  sltu       $v1, $v0, $v1
    /* 7C70C 8008BF0C 02006010 */  beqz       $v1, .L8008BF18
    /* 7C710 8008BF10 00000000 */   nop
    /* 7C714 8008BF14 C60322A6 */  sh         $v0, 0x3C6($s1)
  .L8008BF18:
    /* 7C718 8008BF18 1000B2AF */  sw         $s2, 0x10($sp)
    /* 7C71C 8008BF1C 21B88002 */  addu       $s7, $s4, $zero
  .L8008BF20:
    /* 7C720 8008BF20 0100DE27 */  addiu      $fp, $fp, 0x1
    /* 7C724 8008BF24 E8035226 */  addiu      $s2, $s2, 0x3E8
    /* 7C728 8008BF28 0A00C22B */  slti       $v0, $fp, 0xA
    /* 7C72C 8008BF2C 8CFF4014 */  bnez       $v0, .L8008BD60
    /* 7C730 8008BF30 E803B526 */   addiu     $s5, $s5, 0x3E8
    /* 7C734 8008BF34 0400E012 */  beqz       $s7, .L8008BF48
    /* 7C738 8008BF38 21100000 */   addu      $v0, $zero, $zero
    /* 7C73C 8008BF3C 1000A88F */  lw         $t0, 0x10($sp)
    /* 7C740 8008BF40 00000000 */  nop
    /* 7C744 8008BF44 8D030291 */  lbu        $v0, 0x38D($t0)
  .L8008BF48:
    /* 7C748 8008BF48 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 7C74C 8008BF4C 3800BE8F */  lw         $fp, 0x38($sp)
    /* 7C750 8008BF50 3400B78F */  lw         $s7, 0x34($sp)
    /* 7C754 8008BF54 3000B68F */  lw         $s6, 0x30($sp)
    /* 7C758 8008BF58 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 7C75C 8008BF5C 2800B48F */  lw         $s4, 0x28($sp)
    /* 7C760 8008BF60 2400B38F */  lw         $s3, 0x24($sp)
    /* 7C764 8008BF64 2000B28F */  lw         $s2, 0x20($sp)
    /* 7C768 8008BF68 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7C76C 8008BF6C 1800B08F */  lw         $s0, 0x18($sp)
    /* 7C770 8008BF70 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 7C774 8008BF74 0800E003 */  jr         $ra
    /* 7C778 8008BF78 00000000 */   nop
endlabel func_8008BD20
