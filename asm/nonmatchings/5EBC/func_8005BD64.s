nonmatching func_8005BD64, 0x468

glabel func_8005BD64
    /* 4C564 8005BD64 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 4C568 8005BD68 4400B7AF */  sw         $s7, 0x44($sp)
    /* 4C56C 8005BD6C 01001724 */  addiu      $s7, $zero, 0x1
    /* 4C570 8005BD70 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 4C574 8005BD74 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 4C578 8005BD78 83070325 */  addiu      $v1, $t0, 0x783
    /* 4C57C 8005BD7C 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 4C580 8005BD80 4800BEAF */  sw         $fp, 0x48($sp)
    /* 4C584 8005BD84 4000B6AF */  sw         $s6, 0x40($sp)
    /* 4C588 8005BD88 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 4C58C 8005BD8C 3800B4AF */  sw         $s4, 0x38($sp)
    /* 4C590 8005BD90 3400B3AF */  sw         $s3, 0x34($sp)
    /* 4C594 8005BD94 3000B2AF */  sw         $s2, 0x30($sp)
    /* 4C598 8005BD98 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 4C59C 8005BD9C 2800B0AF */  sw         $s0, 0x28($sp)
  .L8005BDA0:
    /* 4C5A0 8005BDA0 00006290 */  lbu        $v0, 0x0($v1)
    /* 4C5A4 8005BDA4 00000000 */  nop
    /* 4C5A8 8005BDA8 02004010 */  beqz       $v0, .L8005BDB4
    /* 4C5AC 8005BDAC FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 4C5B0 8005BDB0 000062A0 */  sb         $v0, 0x0($v1)
  .L8005BDB4:
    /* 4C5B4 8005BDB4 0100F726 */  addiu      $s7, $s7, 0x1
    /* 4C5B8 8005BDB8 1700E22A */  slti       $v0, $s7, 0x17
    /* 4C5BC 8005BDBC F8FF4014 */  bnez       $v0, .L8005BDA0
    /* 4C5C0 8005BDC0 E8036324 */   addiu     $v1, $v1, 0x3E8
    /* 4C5C4 8005BDC4 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 4C5C8 8005BDC8 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 4C5CC 8005BDCC E8030825 */  addiu      $t0, $t0, 0x3E8
    /* 4C5D0 8005BDD0 1000A8AF */  sw         $t0, 0x10($sp)
    /* 4C5D4 8005BDD4 01001724 */  addiu      $s7, $zero, 0x1
    /* 4C5D8 8005BDD8 66661E3C */  lui        $fp, (0x66666667 >> 16)
    /* 4C5DC 8005BDDC 6766DE37 */  ori        $fp, $fp, (0x66666667 & 0xFFFF)
    /* 4C5E0 8005BDE0 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 4C5E4 8005BDE4 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 4C5E8 8005BDE8 F8031325 */  addiu      $s3, $t0, 0x3F8
  .L8005BDEC:
    /* 4C5EC 8005BDEC 1000A88F */  lw         $t0, 0x10($sp)
    /* 4C5F0 8005BDF0 00000000 */  nop
    /* 4C5F4 8005BDF4 00000291 */  lbu        $v0, 0x0($t0)
    /* 4C5F8 8005BDF8 00000000 */  nop
    /* 4C5FC 8005BDFC DF004010 */  beqz       $v0, .L8005C17C
    /* 4C600 8005BE00 00000000 */   nop
    /* 4C604 8005BE04 C2036292 */  lbu        $v0, 0x3C2($s3)
    /* 4C608 8005BE08 00000000 */  nop
    /* 4C60C 8005BE0C DB004014 */  bnez       $v0, .L8005C17C
    /* 4C610 8005BE10 00000000 */   nop
    /* 4C614 8005BE14 7D036292 */  lbu        $v0, 0x37D($s3)
    /* 4C618 8005BE18 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 4C61C 8005BE1C 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 4C620 8005BE20 40190200 */  sll        $v1, $v0, 5
    /* 4C624 8005BE24 23186200 */  subu       $v1, $v1, $v0
    /* 4C628 8005BE28 80180300 */  sll        $v1, $v1, 2
    /* 4C62C 8005BE2C 21186200 */  addu       $v1, $v1, $v0
    /* 4C630 8005BE30 C0180300 */  sll        $v1, $v1, 3
    /* 4C634 8005BE34 E8036324 */  addiu      $v1, $v1, 0x3E8
    /* 4C638 8005BE38 21A80301 */  addu       $s5, $t0, $v1
    /* 4C63C 8005BE3C 8D03B692 */  lbu        $s6, 0x38D($s5)
    /* 4C640 8005BE40 00000000 */  nop
    /* 4C644 8005BE44 1700C22A */  slti       $v0, $s6, 0x17
    /* 4C648 8005BE48 CC004010 */  beqz       $v0, .L8005C17C
    /* 4C64C 8005BE4C 00000000 */   nop
    /* 4C650 8005BE50 1000B226 */  addiu      $s2, $s5, 0x10
  .L8005BE54:
    /* 4C654 8005BE54 0000A292 */  lbu        $v0, 0x0($s5)
    /* 4C658 8005BE58 00000000 */  nop
    /* 4C65C 8005BE5C C2004010 */  beqz       $v0, .L8005C168
    /* 4C660 8005BE60 00000000 */   nop
    /* 4C664 8005BE64 C2034292 */  lbu        $v0, 0x3C2($s2)
    /* 4C668 8005BE68 00000000 */  nop
    /* 4C66C 8005BE6C BE004014 */  bnez       $v0, .L8005C168
    /* 4C670 8005BE70 00000000 */   nop
    /* 4C674 8005BE74 F2FF6286 */  lh         $v0, -0xE($s3)
    /* 4C678 8005BE78 F2FF4386 */  lh         $v1, -0xE($s2)
    /* 4C67C 8005BE7C 00000000 */  nop
    /* 4C680 8005BE80 23104300 */  subu       $v0, $v0, $v1
    /* 4C684 8005BE84 18004200 */  mult       $v0, $v0
    /* 4C688 8005BE88 F6FF6286 */  lh         $v0, -0xA($s3)
    /* 4C68C 8005BE8C F6FF4386 */  lh         $v1, -0xA($s2)
    /* 4C690 8005BE90 12200000 */  mflo       $a0
    /* 4C694 8005BE94 23104300 */  subu       $v0, $v0, $v1
    /* 4C698 8005BE98 00000000 */  nop
    /* 4C69C 8005BE9C 18004200 */  mult       $v0, $v0
    /* 4C6A0 8005BEA0 12180000 */  mflo       $v1
    /* 4C6A4 8005BEA4 21A08300 */  addu       $s4, $a0, $v1
    /* 4C6A8 8005BEA8 0164822E */  sltiu      $v0, $s4, 0x6401
    /* 4C6AC 8005BEAC AE004010 */  beqz       $v0, .L8005C168
    /* 4C6B0 8005BEB0 00000000 */   nop
    /* 4C6B4 8005BEB4 89036392 */  lbu        $v1, 0x389($s3)
    /* 4C6B8 8005BEB8 89034292 */  lbu        $v0, 0x389($s2)
    /* 4C6BC 8005BEBC 00000000 */  nop
    /* 4C6C0 8005BEC0 0E006210 */  beq        $v1, $v0, .L8005BEFC
    /* 4C6C4 8005BEC4 00000000 */   nop
    /* 4C6C8 8005BEC8 AA036492 */  lbu        $a0, 0x3AA($s3)
    /* 4C6CC 8005BECC AA034392 */  lbu        $v1, 0x3AA($s2)
    /* 4C6D0 8005BED0 FEFF8224 */  addiu      $v0, $a0, -0x2
    /* 4C6D4 8005BED4 2A106200 */  slt        $v0, $v1, $v0
    /* 4C6D8 8005BED8 04004014 */  bnez       $v0, .L8005BEEC
    /* 4C6DC 8005BEDC FEFF6224 */   addiu     $v0, $v1, -0x2
    /* 4C6E0 8005BEE0 03000224 */  addiu      $v0, $zero, 0x3
    /* 4C6E4 8005BEE4 BF6F0108 */  j          .L8005BEFC
    /* 4C6E8 8005BEE8 8B0362A2 */   sb        $v0, 0x38B($s3)
  .L8005BEEC:
    /* 4C6EC 8005BEEC 2A108200 */  slt        $v0, $a0, $v0
    /* 4C6F0 8005BEF0 02004014 */  bnez       $v0, .L8005BEFC
    /* 4C6F4 8005BEF4 03000224 */   addiu     $v0, $zero, 0x3
    /* 4C6F8 8005BEF8 8B0342A2 */  sb         $v0, 0x38B($s2)
  .L8005BEFC:
    /* 4C6FC 8005BEFC 4AC4020C */  jal        func_800B1128
    /* 4C700 8005BF00 21208002 */   addu      $a0, $s4, $zero
    /* 4C704 8005BF04 F2FF6486 */  lh         $a0, -0xE($s3)
    /* 4C708 8005BF08 F6FF6586 */  lh         $a1, -0xA($s3)
    /* 4C70C 8005BF0C F2FF4686 */  lh         $a2, -0xE($s2)
    /* 4C710 8005BF10 F6FF4786 */  lh         $a3, -0xA($s2)
    /* 4C714 8005BF14 DB6C010C */  jal        func_8005B36C
    /* 4C718 8005BF18 21A04000 */   addu      $s4, $v0, $zero
    /* 4C71C 8005BF1C A0000324 */  addiu      $v1, $zero, 0xA0
    /* 4C720 8005BF20 23187400 */  subu       $v1, $v1, $s4
    /* 4C724 8005BF24 42180300 */  srl        $v1, $v1, 1
    /* 4C728 8005BF28 02007424 */  addiu      $s4, $v1, 0x2
    /* 4C72C 8005BF2C 21884000 */  addu       $s1, $v0, $zero
    /* 4C730 8005BF30 80003026 */  addiu      $s0, $s1, 0x80
    /* 4C734 8005BF34 FF001032 */  andi       $s0, $s0, 0xFF
    /* 4C738 8005BF38 21200002 */  addu       $a0, $s0, $zero
    /* 4C73C 8005BF3C A579000C */  jal        func_8001E694
    /* 4C740 8005BF40 21288002 */   addu      $a1, $s4, $zero
    /* 4C744 8005BF44 21200002 */  addu       $a0, $s0, $zero
    /* 4C748 8005BF48 F2FF6396 */  lhu        $v1, -0xE($s3)
    /* 4C74C 8005BF4C 21288002 */  addu       $a1, $s4, $zero
    /* 4C750 8005BF50 21186200 */  addu       $v1, $v1, $v0
    /* 4C754 8005BF54 6979000C */  jal        func_8001E5A4
    /* 4C758 8005BF58 F2FF63A6 */   sh        $v1, -0xE($s3)
    /* 4C75C 8005BF5C FF003132 */  andi       $s1, $s1, 0xFF
    /* 4C760 8005BF60 21202002 */  addu       $a0, $s1, $zero
    /* 4C764 8005BF64 F6FF6396 */  lhu        $v1, -0xA($s3)
    /* 4C768 8005BF68 21288002 */  addu       $a1, $s4, $zero
    /* 4C76C 8005BF6C 21186200 */  addu       $v1, $v1, $v0
    /* 4C770 8005BF70 A579000C */  jal        func_8001E694
    /* 4C774 8005BF74 F6FF63A6 */   sh        $v1, -0xA($s3)
    /* 4C778 8005BF78 21202002 */  addu       $a0, $s1, $zero
    /* 4C77C 8005BF7C F2FF4396 */  lhu        $v1, -0xE($s2)
    /* 4C780 8005BF80 21288002 */  addu       $a1, $s4, $zero
    /* 4C784 8005BF84 21186200 */  addu       $v1, $v1, $v0
    /* 4C788 8005BF88 6979000C */  jal        func_8001E5A4
    /* 4C78C 8005BF8C F2FF43A6 */   sh        $v1, -0xE($s2)
    /* 4C790 8005BF90 F6FF4396 */  lhu        $v1, -0xA($s2)
    /* 4C794 8005BF94 00000000 */  nop
    /* 4C798 8005BF98 21206200 */  addu       $a0, $v1, $v0
    /* 4C79C 8005BF9C F6FF44A6 */  sh         $a0, -0xA($s2)
    /* 4C7A0 8005BFA0 F4FF6286 */  lh         $v0, -0xC($s3)
    /* 4C7A4 8005BFA4 00000000 */  nop
    /* 4C7A8 8005BFA8 3F004014 */  bnez       $v0, .L8005C0A8
    /* 4C7AC 8005BFAC 00000000 */   nop
    /* 4C7B0 8005BFB0 F4FF4286 */  lh         $v0, -0xC($s2)
    /* 4C7B4 8005BFB4 00000000 */  nop
    /* 4C7B8 8005BFB8 3B004014 */  bnez       $v0, .L8005C0A8
    /* 4C7BC 8005BFBC 00000000 */   nop
    /* 4C7C0 8005BFC0 9003628E */  lw         $v0, 0x390($s3)
    /* 4C7C4 8005BFC4 9003438E */  lw         $v1, 0x390($s2)
    /* 4C7C8 8005BFC8 00000000 */  nop
    /* 4C7CC 8005BFCC 21104300 */  addu       $v0, $v0, $v1
    /* 4C7D0 8005BFD0 65004010 */  beqz       $v0, .L8005C168
    /* 4C7D4 8005BFD4 00000000 */   nop
    /* 4C7D8 8005BFD8 F2FF6386 */  lh         $v1, -0xE($s3)
    /* 4C7DC 8005BFDC F2FF4286 */  lh         $v0, -0xE($s2)
    /* 4C7E0 8005BFE0 F6FF6686 */  lh         $a2, -0xA($s3)
    /* 4C7E4 8005BFE4 21386000 */  addu       $a3, $v1, $zero
    /* 4C7E8 8005BFE8 23186200 */  subu       $v1, $v1, $v0
    /* 4C7EC 8005BFEC 02006104 */  bgez       $v1, .L8005BFF8
    /* 4C7F0 8005BFF0 00000000 */   nop
    /* 4C7F4 8005BFF4 23180300 */  negu       $v1, $v1
  .L8005BFF8:
    /* 4C7F8 8005BFF8 00140400 */  sll        $v0, $a0, 16
    /* 4C7FC 8005BFFC 03240200 */  sra        $a0, $v0, 16
    /* 4C800 8005C000 2310C400 */  subu       $v0, $a2, $a0
    /* 4C804 8005C004 02004104 */  bgez       $v0, .L8005C010
    /* 4C808 8005C008 00000000 */   nop
    /* 4C80C 8005C00C 23100200 */  negu       $v0, $v0
  .L8005C010:
    /* 4C810 8005C010 2A104300 */  slt        $v0, $v0, $v1
    /* 4C814 8005C014 11004010 */  beqz       $v0, .L8005C05C
    /* 4C818 8005C018 2128C000 */   addu      $a1, $a2, $zero
    /* 4C81C 8005C01C 2A108600 */  slt        $v0, $a0, $a2
    /* 4C820 8005C020 07004010 */  beqz       $v0, .L8005C040
    /* 4C824 8005C024 0800A224 */   addiu     $v0, $a1, 0x8
    /* 4C828 8005C028 F6FF62A6 */  sh         $v0, -0xA($s3)
    /* 4C82C 8005C02C F6FF4296 */  lhu        $v0, -0xA($s2)
    /* 4C830 8005C030 00000000 */  nop
    /* 4C834 8005C034 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 4C838 8005C038 5A700108 */  j          .L8005C168
    /* 4C83C 8005C03C F6FF42A6 */   sh        $v0, -0xA($s2)
  .L8005C040:
    /* 4C840 8005C040 F8FFA224 */  addiu      $v0, $a1, -0x8
    /* 4C844 8005C044 F6FF62A6 */  sh         $v0, -0xA($s3)
    /* 4C848 8005C048 F6FF4296 */  lhu        $v0, -0xA($s2)
    /* 4C84C 8005C04C 00000000 */  nop
    /* 4C850 8005C050 08004224 */  addiu      $v0, $v0, 0x8
    /* 4C854 8005C054 5A700108 */  j          .L8005C168
    /* 4C858 8005C058 F6FF42A6 */   sh        $v0, -0xA($s2)
  .L8005C05C:
    /* 4C85C 8005C05C F8FF638E */  lw         $v1, -0x8($s3)
    /* 4C860 8005C060 F8FF428E */  lw         $v0, -0x8($s2)
    /* 4C864 8005C064 00000000 */  nop
    /* 4C868 8005C068 2A104300 */  slt        $v0, $v0, $v1
    /* 4C86C 8005C06C 07004010 */  beqz       $v0, .L8005C08C
    /* 4C870 8005C070 0800E224 */   addiu     $v0, $a3, 0x8
    /* 4C874 8005C074 F2FF62A6 */  sh         $v0, -0xE($s3)
    /* 4C878 8005C078 F2FF4296 */  lhu        $v0, -0xE($s2)
    /* 4C87C 8005C07C 00000000 */  nop
    /* 4C880 8005C080 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 4C884 8005C084 5A700108 */  j          .L8005C168
    /* 4C888 8005C088 F2FF42A6 */   sh        $v0, -0xE($s2)
  .L8005C08C:
    /* 4C88C 8005C08C F8FFE224 */  addiu      $v0, $a3, -0x8
    /* 4C890 8005C090 F2FF62A6 */  sh         $v0, -0xE($s3)
    /* 4C894 8005C094 F2FF4296 */  lhu        $v0, -0xE($s2)
    /* 4C898 8005C098 00000000 */  nop
    /* 4C89C 8005C09C 08004224 */  addiu      $v0, $v0, 0x8
    /* 4C8A0 8005C0A0 5A700108 */  j          .L8005C168
    /* 4C8A4 8005C0A4 F2FF42A6 */   sh        $v0, -0xE($s2)
  .L8005C0A8:
    /* 4C8A8 8005C0A8 7D036392 */  lbu        $v1, 0x37D($s3)
    /* 4C8AC 8005C0AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C8B0 8005C0B0 15006210 */  beq        $v1, $v0, .L8005C108
    /* 4C8B4 8005C0B4 0C000224 */   addiu     $v0, $zero, 0xC
    /* 4C8B8 8005C0B8 13006210 */  beq        $v1, $v0, .L8005C108
    /* 4C8BC 8005C0BC 00000000 */   nop
    /* 4C8C0 8005C0C0 F8FF638E */  lw         $v1, -0x8($s3)
    /* 4C8C4 8005C0C4 00000000 */  nop
    /* 4C8C8 8005C0C8 C0180300 */  sll        $v1, $v1, 3
    /* 4C8CC 8005C0CC 18007E00 */  mult       $v1, $fp
    /* 4C8D0 8005C0D0 0000648E */  lw         $a0, 0x0($s3)
    /* 4C8D4 8005C0D4 10480000 */  mfhi       $t1
    /* 4C8D8 8005C0D8 C0200400 */  sll        $a0, $a0, 3
    /* 4C8DC 8005C0DC 00000000 */  nop
    /* 4C8E0 8005C0E0 18009E00 */  mult       $a0, $fp
    /* 4C8E4 8005C0E4 C31F0300 */  sra        $v1, $v1, 31
    /* 4C8E8 8005C0E8 83100900 */  sra        $v0, $t1, 2
    /* 4C8EC 8005C0EC 23104300 */  subu       $v0, $v0, $v1
    /* 4C8F0 8005C0F0 C3270400 */  sra        $a0, $a0, 31
    /* 4C8F4 8005C0F4 F8FF62AE */  sw         $v0, -0x8($s3)
    /* 4C8F8 8005C0F8 10280000 */  mfhi       $a1
    /* 4C8FC 8005C0FC 83100500 */  sra        $v0, $a1, 2
    /* 4C900 8005C100 23104400 */  subu       $v0, $v0, $a0
    /* 4C904 8005C104 000062AE */  sw         $v0, 0x0($s3)
  .L8005C108:
    /* 4C908 8005C108 7D034392 */  lbu        $v1, 0x37D($s2)
    /* 4C90C 8005C10C 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C910 8005C110 15006210 */  beq        $v1, $v0, .L8005C168
    /* 4C914 8005C114 0C000224 */   addiu     $v0, $zero, 0xC
    /* 4C918 8005C118 13006210 */  beq        $v1, $v0, .L8005C168
    /* 4C91C 8005C11C 00000000 */   nop
    /* 4C920 8005C120 F8FF438E */  lw         $v1, -0x8($s2)
    /* 4C924 8005C124 00000000 */  nop
    /* 4C928 8005C128 C0180300 */  sll        $v1, $v1, 3
    /* 4C92C 8005C12C 18007E00 */  mult       $v1, $fp
    /* 4C930 8005C130 0000448E */  lw         $a0, 0x0($s2)
    /* 4C934 8005C134 10480000 */  mfhi       $t1
    /* 4C938 8005C138 C0200400 */  sll        $a0, $a0, 3
    /* 4C93C 8005C13C 00000000 */  nop
    /* 4C940 8005C140 18009E00 */  mult       $a0, $fp
    /* 4C944 8005C144 C31F0300 */  sra        $v1, $v1, 31
    /* 4C948 8005C148 83100900 */  sra        $v0, $t1, 2
    /* 4C94C 8005C14C 23104300 */  subu       $v0, $v0, $v1
    /* 4C950 8005C150 C3270400 */  sra        $a0, $a0, 31
    /* 4C954 8005C154 F8FF42AE */  sw         $v0, -0x8($s2)
    /* 4C958 8005C158 10280000 */  mfhi       $a1
    /* 4C95C 8005C15C 83100500 */  sra        $v0, $a1, 2
    /* 4C960 8005C160 23104400 */  subu       $v0, $v0, $a0
    /* 4C964 8005C164 000042AE */  sw         $v0, 0x0($s2)
  .L8005C168:
    /* 4C968 8005C168 0100D626 */  addiu      $s6, $s6, 0x1
    /* 4C96C 8005C16C E8035226 */  addiu      $s2, $s2, 0x3E8
    /* 4C970 8005C170 1700C22A */  slti       $v0, $s6, 0x17
    /* 4C974 8005C174 37FF4014 */  bnez       $v0, .L8005BE54
    /* 4C978 8005C178 E803B526 */   addiu     $s5, $s5, 0x3E8
  .L8005C17C:
    /* 4C97C 8005C17C 0100F726 */  addiu      $s7, $s7, 0x1
    /* 4C980 8005C180 E8037326 */  addiu      $s3, $s3, 0x3E8
    /* 4C984 8005C184 1000A88F */  lw         $t0, 0x10($sp)
    /* 4C988 8005C188 1600E22A */  slti       $v0, $s7, 0x16
    /* 4C98C 8005C18C E8030825 */  addiu      $t0, $t0, 0x3E8
    /* 4C990 8005C190 16FF4014 */  bnez       $v0, .L8005BDEC
    /* 4C994 8005C194 1000A8AF */   sw        $t0, 0x10($sp)
    /* 4C998 8005C198 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 4C99C 8005C19C 4800BE8F */  lw         $fp, 0x48($sp)
    /* 4C9A0 8005C1A0 4400B78F */  lw         $s7, 0x44($sp)
    /* 4C9A4 8005C1A4 4000B68F */  lw         $s6, 0x40($sp)
    /* 4C9A8 8005C1A8 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 4C9AC 8005C1AC 3800B48F */  lw         $s4, 0x38($sp)
    /* 4C9B0 8005C1B0 3400B38F */  lw         $s3, 0x34($sp)
    /* 4C9B4 8005C1B4 3000B28F */  lw         $s2, 0x30($sp)
    /* 4C9B8 8005C1B8 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 4C9BC 8005C1BC 2800B08F */  lw         $s0, 0x28($sp)
    /* 4C9C0 8005C1C0 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 4C9C4 8005C1C4 0800E003 */  jr         $ra
    /* 4C9C8 8005C1C8 00000000 */   nop
endlabel func_8005BD64
