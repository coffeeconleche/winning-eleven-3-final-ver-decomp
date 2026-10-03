nonmatching func_8009BDAC, 0x1D0

glabel func_8009BDAC
    /* 8C5AC 8009BDAC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8C5B0 8009BDB0 2800B6AF */  sw         $s6, 0x28($sp)
    /* 8C5B4 8009BDB4 801F163C */  lui        $s6, (0x1F8002DD >> 16)
    /* 8C5B8 8009BDB8 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 8C5BC 8009BDBC 21B80000 */  addu       $s7, $zero, $zero
    /* 8C5C0 8009BDC0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 8C5C4 8009BDC4 21A80000 */  addu       $s5, $zero, $zero
    /* 8C5C8 8009BDC8 3000BFAF */  sw         $ra, 0x30($sp)
    /* 8C5CC 8009BDCC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 8C5D0 8009BDD0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8C5D4 8009BDD4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8C5D8 8009BDD8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C5DC 8009BDDC 1000B0AF */  sw         $s0, 0x10($sp)
  .L8009BDE0:
    /* 8C5E0 8009BDE0 21900000 */  addu       $s2, $zero, $zero
    /* 8C5E4 8009BDE4 302A1424 */  addiu      $s4, $zero, 0x2A30
  .L8009BDE8:
    /* 8C5E8 8009BDE8 02004106 */  bgez       $s2, .L8009BDF4
    /* 8C5EC 8009BDEC 21104002 */   addu      $v0, $s2, $zero
    /* 8C5F0 8009BDF0 07004226 */  addiu      $v0, $s2, 0x7
  .L8009BDF4:
    /* 8C5F4 8009BDF4 C3980200 */  sra        $s3, $v0, 3
    /* 8C5F8 8009BDF8 C0101300 */  sll        $v0, $s3, 3
    /* 8C5FC 8009BDFC 9001C38E */  lw         $v1, (0x1F800190 & 0xFFFF)($s6)
    /* 8C600 8009BE00 23984202 */  subu       $s3, $s2, $v0
    /* 8C604 8009BE04 21187500 */  addu       $v1, $v1, $s5
    /* 8C608 8009BE08 21807400 */  addu       $s0, $v1, $s4
    /* 8C60C 8009BE0C 5BB7020C */  jal        func_800ADD6C
    /* 8C610 8009BE10 21200002 */   addu      $a0, $s0, $zero
    /* 8C614 8009BE14 21200002 */  addu       $a0, $s0, $zero
    /* 8C618 8009BE18 2EB7020C */  jal        func_800ADCB8
    /* 8C61C 8009BE1C 21280000 */   addu      $a1, $zero, $zero
    /* 8C620 8009BE20 21200000 */  addu       $a0, $zero, $zero
    /* 8C624 8009BE24 21280000 */  addu       $a1, $zero, $zero
    /* 8C628 8009BE28 C0010624 */  addiu      $a2, $zero, 0x1C0
    /* 8C62C 8009BE2C B6B6020C */  jal        func_800ADAD8
    /* 8C630 8009BE30 21380000 */   addu      $a3, $zero, $zero
    /* 8C634 8009BE34 160002A6 */  sh         $v0, 0x16($s0)
    /* 8C638 8009BE38 1800422A */  slti       $v0, $s2, 0x18
    /* 8C63C 8009BE3C 04004010 */  beqz       $v0, .L8009BE50
    /* 8C640 8009BE40 21280000 */   addu      $a1, $zero, $zero
    /* 8C644 8009BE44 DD02C492 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($s6)
    /* 8C648 8009BE48 966F0208 */  j          .L8009BE58
    /* 8C64C 8009BE4C 21880000 */   addu      $s1, $zero, $zero
  .L8009BE50:
    /* 8C650 8009BE50 40001124 */  addiu      $s1, $zero, 0x40
    /* 8C654 8009BE54 DE02C492 */  lbu        $a0, (0x1F8002DE & 0xFFFF)($s6)
  .L8009BE58:
    /* 8C658 8009BE58 C240010C */  jal        func_80050308
    /* 8C65C 8009BE5C 28009426 */   addiu     $s4, $s4, 0x28
    /* 8C660 8009BE60 0E0002A6 */  sh         $v0, 0xE($s0)
    /* 8C664 8009BE64 C0181300 */  sll        $v1, $s3, 3
    /* 8C668 8009BE68 0D80013C */  lui        $at, %hi(D_800CB39C)
    /* 8C66C 8009BE6C 21082300 */  addu       $at, $at, $v1
    /* 8C670 8009BE70 9CB32290 */  lbu        $v0, %lo(D_800CB39C)($at)
    /* 8C674 8009BE74 21202002 */  addu       $a0, $s1, $zero
    /* 8C678 8009BE78 21104400 */  addu       $v0, $v0, $a0
    /* 8C67C 8009BE7C 0C0002A2 */  sb         $v0, 0xC($s0)
    /* 8C680 8009BE80 0D80013C */  lui        $at, %hi(D_800CB39D)
    /* 8C684 8009BE84 21082300 */  addu       $at, $at, $v1
    /* 8C688 8009BE88 9DB32290 */  lbu        $v0, %lo(D_800CB39D)($at)
    /* 8C68C 8009BE8C 00000000 */  nop
    /* 8C690 8009BE90 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C694 8009BE94 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 8C698 8009BE98 0D80013C */  lui        $at, %hi(D_800CB39E)
    /* 8C69C 8009BE9C 21082300 */  addu       $at, $at, $v1
    /* 8C6A0 8009BEA0 9EB32290 */  lbu        $v0, %lo(D_800CB39E)($at)
    /* 8C6A4 8009BEA4 00000000 */  nop
    /* 8C6A8 8009BEA8 21104400 */  addu       $v0, $v0, $a0
    /* 8C6AC 8009BEAC 140002A2 */  sb         $v0, 0x14($s0)
    /* 8C6B0 8009BEB0 0D80013C */  lui        $at, %hi(D_800CB39F)
    /* 8C6B4 8009BEB4 21082300 */  addu       $at, $at, $v1
    /* 8C6B8 8009BEB8 9FB32290 */  lbu        $v0, %lo(D_800CB39F)($at)
    /* 8C6BC 8009BEBC 00000000 */  nop
    /* 8C6C0 8009BEC0 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C6C4 8009BEC4 150002A2 */  sb         $v0, 0x15($s0)
    /* 8C6C8 8009BEC8 0D80013C */  lui        $at, %hi(D_800CB3A0)
    /* 8C6CC 8009BECC 21082300 */  addu       $at, $at, $v1
    /* 8C6D0 8009BED0 A0B32290 */  lbu        $v0, %lo(D_800CB3A0)($at)
    /* 8C6D4 8009BED4 00000000 */  nop
    /* 8C6D8 8009BED8 21104400 */  addu       $v0, $v0, $a0
    /* 8C6DC 8009BEDC 1C0002A2 */  sb         $v0, 0x1C($s0)
    /* 8C6E0 8009BEE0 0D80013C */  lui        $at, %hi(D_800CB3A1)
    /* 8C6E4 8009BEE4 21082300 */  addu       $at, $at, $v1
    /* 8C6E8 8009BEE8 A1B32290 */  lbu        $v0, %lo(D_800CB3A1)($at)
    /* 8C6EC 8009BEEC 00000000 */  nop
    /* 8C6F0 8009BEF0 80004224 */  addiu      $v0, $v0, 0x80
    /* 8C6F4 8009BEF4 1D0002A2 */  sb         $v0, 0x1D($s0)
    /* 8C6F8 8009BEF8 0D80013C */  lui        $at, %hi(D_800CB3A2)
    /* 8C6FC 8009BEFC 21082300 */  addu       $at, $at, $v1
    /* 8C700 8009BF00 A2B32290 */  lbu        $v0, %lo(D_800CB3A2)($at)
    /* 8C704 8009BF04 01005226 */  addiu      $s2, $s2, 0x1
    /* 8C708 8009BF08 21104400 */  addu       $v0, $v0, $a0
    /* 8C70C 8009BF0C 240002A2 */  sb         $v0, 0x24($s0)
    /* 8C710 8009BF10 0D80013C */  lui        $at, %hi(D_800CB3A3)
    /* 8C714 8009BF14 21082300 */  addu       $at, $at, $v1
    /* 8C718 8009BF18 A3B32390 */  lbu        $v1, %lo(D_800CB3A3)($at)
    /* 8C71C 8009BF1C 80000224 */  addiu      $v0, $zero, 0x80
    /* 8C720 8009BF20 040002A2 */  sb         $v0, 0x4($s0)
    /* 8C724 8009BF24 050002A2 */  sb         $v0, 0x5($s0)
    /* 8C728 8009BF28 060002A2 */  sb         $v0, 0x6($s0)
    /* 8C72C 8009BF2C 3000422A */  slti       $v0, $s2, 0x30
    /* 8C730 8009BF30 80006324 */  addiu      $v1, $v1, 0x80
    /* 8C734 8009BF34 ACFF4014 */  bnez       $v0, .L8009BDE8
    /* 8C738 8009BF38 250003A2 */   sb        $v1, 0x25($s0)
    /* 8C73C 8009BF3C 0100F726 */  addiu      $s7, $s7, 0x1
    /* 8C740 8009BF40 0200E22A */  slti       $v0, $s7, 0x2
    /* 8C744 8009BF44 A6FF4014 */  bnez       $v0, .L8009BDE0
    /* 8C748 8009BF48 C03AB526 */   addiu     $s5, $s5, 0x3AC0
    /* 8C74C 8009BF4C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 8C750 8009BF50 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 8C754 8009BF54 2800B68F */  lw         $s6, 0x28($sp)
    /* 8C758 8009BF58 2400B58F */  lw         $s5, 0x24($sp)
    /* 8C75C 8009BF5C 2000B48F */  lw         $s4, 0x20($sp)
    /* 8C760 8009BF60 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8C764 8009BF64 1800B28F */  lw         $s2, 0x18($sp)
    /* 8C768 8009BF68 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C76C 8009BF6C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C770 8009BF70 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 8C774 8009BF74 0800E003 */  jr         $ra
    /* 8C778 8009BF78 00000000 */   nop
endlabel func_8009BDAC
