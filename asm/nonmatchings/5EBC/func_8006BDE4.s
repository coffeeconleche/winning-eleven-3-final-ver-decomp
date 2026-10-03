nonmatching func_8006BDE4, 0x408

glabel func_8006BDE4
    /* 5C5E4 8006BDE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5C5E8 8006BDE8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5C5EC 8006BDEC 21888000 */  addu       $s1, $a0, $zero
    /* 5C5F0 8006BDF0 0E80033C */  lui        $v1, %hi(D_800E6CB9)
    /* 5C5F4 8006BDF4 B96C6324 */  addiu      $v1, $v1, %lo(D_800E6CB9)
    /* 5C5F8 8006BDF8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5C5FC 8006BDFC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5C600 8006BE00 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5C604 8006BE04 00006290 */  lbu        $v0, 0x0($v1)
    /* 5C608 8006BE08 00000000 */  nop
    /* 5C60C 8006BE0C 0A004010 */  beqz       $v0, .L8006BE38
    /* 5C610 8006BE10 801F103C */   lui       $s0, (0x1F8000FC >> 16)
    /* 5C614 8006BE14 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5C618 8006BE18 21280000 */  addu       $a1, $zero, $zero
    /* 5C61C 8006BE1C 801F043C */  lui        $a0, (0x1F8000FC >> 16)
    /* 5C620 8006BE20 FC008484 */  lh         $a0, (0x1F8000FC & 0xFFFF)($a0)
    /* 5C624 8006BE24 06000624 */  addiu      $a2, $zero, 0x6
    /* 5C628 8006BE28 DB69010C */  jal        func_8005A76C
    /* 5C62C 8006BE2C 000062A0 */   sb        $v0, 0x0($v1)
    /* 5C630 8006BE30 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 5C634 8006BE34 FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
  .L8006BE38:
    /* 5C638 8006BE38 99032292 */  lbu        $v0, 0x399($s1)
    /* 5C63C 8006BE3C 00000000 */  nop
    /* 5C640 8006BE40 02004014 */  bnez       $v0, .L8006BE4C
    /* 5C644 8006BE44 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* 5C648 8006BE48 01001224 */  addiu      $s2, $zero, 0x1
  .L8006BE4C:
    /* 5C64C 8006BE4C FDAD010C */  jal        func_8006B7F4
    /* 5C650 8006BE50 21202002 */   addu      $a0, $s1, $zero
    /* 5C654 8006BE54 801F033C */  lui        $v1, (0x1F80030B >> 16)
    /* 5C658 8006BE58 0B036390 */  lbu        $v1, (0x1F80030B & 0xFFFF)($v1)
    /* 5C65C 8006BE5C 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5C660 8006BE60 F80022A4 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($at)
    /* 5C664 8006BE64 0600622C */  sltiu      $v0, $v1, 0x6
    /* 5C668 8006BE68 97004010 */  beqz       $v0, .L8006C0C8
    /* 5C66C 8006BE6C 80100300 */   sll       $v0, $v1, 2
    /* 5C670 8006BE70 0180013C */  lui        $at, %hi(jtbl_80012880)
    /* 5C674 8006BE74 21082200 */  addu       $at, $at, $v0
    /* 5C678 8006BE78 8028228C */  lw         $v0, %lo(jtbl_80012880)($at)
    /* 5C67C 8006BE7C 00000000 */  nop
    /* 5C680 8006BE80 08004000 */  jr         $v0
    /* 5C684 8006BE84 00000000 */   nop
  jlabel .L8006BE88
    /* 5C688 8006BE88 A5AF0108 */  j          .L8006BE94
    /* 5C68C 8006BE8C 0F000624 */   addiu     $a2, $zero, 0xF
  jlabel .L8006BE90
    /* 5C690 8006BE90 14000624 */  addiu      $a2, $zero, 0x14
  .L8006BE94:
    /* 5C694 8006BE94 FC000496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5C698 8006BE98 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5C69C 8006BE9C 00240400 */  sll        $a0, $a0, 16
    /* 5C6A0 8006BEA0 06004584 */  lh         $a1, 0x6($v0)
    /* 5C6A4 8006BEA4 F969010C */  jal        func_8005A7E4
    /* 5C6A8 8006BEA8 03240400 */   sra       $a0, $a0, 16
    /* 5C6AC 8006BEAC 32B00108 */  j          .L8006C0C8
    /* 5C6B0 8006BEB0 FC0002A6 */   sh        $v0, (0x1F8000FC & 0xFFFF)($s0)
  jlabel .L8006BEB4
    /* 5C6B4 8006BEB4 1E000624 */  addiu      $a2, $zero, 0x1E
    /* 5C6B8 8006BEB8 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C6BC 8006BEBC F402028E */  lw         $v0, 0x2F4($s0)
    /* 5C6C0 8006BEC0 00240400 */  sll        $a0, $a0, 16
    /* 5C6C4 8006BEC4 06004584 */  lh         $a1, 0x6($v0)
    /* 5C6C8 8006BEC8 F969010C */  jal        func_8005A7E4
    /* 5C6CC 8006BECC 03240400 */   sra       $a0, $a0, 16
    /* 5C6D0 8006BED0 21202002 */  addu       $a0, $s1, $zero
    /* 5C6D4 8006BED4 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5C6D8 8006BED8 FC000636 */  ori        $a2, $s0, 0xFC
    /* 5C6DC 8006BEDC 000A0724 */  addiu      $a3, $zero, 0xA00
    /* 5C6E0 8006BEE0 2185020C */  jal        func_800A1484
    /* 5C6E4 8006BEE4 FC0002A6 */   sh        $v0, 0xFC($s0)
    /* 5C6E8 8006BEE8 F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5C6EC 8006BEEC 00000000 */  nop
    /* 5C6F0 8006BEF0 00140200 */  sll        $v0, $v0, 16
    /* 5C6F4 8006BEF4 031C0200 */  sra        $v1, $v0, 16
    /* 5C6F8 8006BEF8 02006104 */  bgez       $v1, .L8006BF04
    /* 5C6FC 8006BEFC 21106000 */   addu      $v0, $v1, $zero
    /* 5C700 8006BF00 23100200 */  negu       $v0, $v0
  .L8006BF04:
    /* 5C704 8006BF04 E3234228 */  slti       $v0, $v0, 0x23E3
    /* 5C708 8006BF08 05004014 */  bnez       $v0, .L8006BF20
    /* 5C70C 8006BF0C 00000000 */   nop
    /* 5C710 8006BF10 02006104 */  bgez       $v1, .L8006BF1C
    /* 5C714 8006BF14 E2230224 */   addiu     $v0, $zero, 0x23E2
    /* 5C718 8006BF18 1EDC0224 */  addiu      $v0, $zero, -0x23E2
  .L8006BF1C:
    /* 5C71C 8006BF1C F80002A6 */  sh         $v0, 0xF8($s0)
  .L8006BF20:
    /* 5C720 8006BF20 E1032292 */  lbu        $v0, 0x3E1($s1)
    /* 5C724 8006BF24 00000000 */  nop
    /* 5C728 8006BF28 67004014 */  bnez       $v0, .L8006C0C8
    /* 5C72C 8006BF2C FF7F0324 */   addiu     $v1, $zero, 0x7FFF
    /* 5C730 8006BF30 B8020596 */  lhu        $a1, 0x2B8($s0)
    /* 5C734 8006BF34 00000000 */  nop
    /* 5C738 8006BF38 00140500 */  sll        $v0, $a1, 16
    /* 5C73C 8006BF3C 03140200 */  sra        $v0, $v0, 16
    /* 5C740 8006BF40 61004310 */  beq        $v0, $v1, .L8006C0C8
    /* 5C744 8006BF44 5555033C */   lui       $v1, (0x55555556 >> 16)
    /* 5C748 8006BF48 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
    /* 5C74C 8006BF4C FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C750 8006BF50 BA020296 */  lhu        $v0, 0x2BA($s0)
    /* 5C754 8006BF54 00240400 */  sll        $a0, $a0, 16
    /* 5C758 8006BF58 03240400 */  sra        $a0, $a0, 16
    /* 5C75C 8006BF5C 00140200 */  sll        $v0, $v0, 16
    /* 5C760 8006BF60 C3130200 */  sra        $v0, $v0, 15
    /* 5C764 8006BF64 21208200 */  addu       $a0, $a0, $v0
    /* 5C768 8006BF68 18008300 */  mult       $a0, $v1
    /* 5C76C 8006BF6C 001C1200 */  sll        $v1, $s2, 16
    /* 5C770 8006BF70 031C0300 */  sra        $v1, $v1, 16
    /* 5C774 8006BF74 80100300 */  sll        $v0, $v1, 2
    /* 5C778 8006BF78 21104300 */  addu       $v0, $v0, $v1
    /* 5C77C 8006BF7C 00120200 */  sll        $v0, $v0, 8
    /* 5C780 8006BF80 2310A200 */  subu       $v0, $a1, $v0
    /* 5C784 8006BF84 C3270400 */  sra        $a0, $a0, 31
    /* 5C788 8006BF88 F80002A6 */  sh         $v0, 0xF8($s0)
    /* 5C78C 8006BF8C 10480000 */  mfhi       $t1
    /* 5C790 8006BF90 23202401 */  subu       $a0, $t1, $a0
    /* 5C794 8006BF94 32B00108 */  j          .L8006C0C8
    /* 5C798 8006BF98 FC0004A6 */   sh        $a0, 0xFC($s0)
  jlabel .L8006BF9C
    /* 5C79C 8006BF9C 28030292 */  lbu        $v0, 0x328($s0)
    /* 5C7A0 8006BFA0 00000000 */  nop
    /* 5C7A4 8006BFA4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5C7A8 8006BFA8 04004010 */  beqz       $v0, .L8006BFBC
    /* 5C7AC 8006BFAC 21280000 */   addu      $a1, $zero, $zero
    /* 5C7B0 8006BFB0 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C7B4 8006BFB4 F1AF0108 */  j          .L8006BFC4
    /* 5C7B8 8006BFB8 05000624 */   addiu     $a2, $zero, 0x5
  .L8006BFBC:
    /* 5C7BC 8006BFBC FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C7C0 8006BFC0 04000624 */  addiu      $a2, $zero, 0x4
  .L8006BFC4:
    /* 5C7C4 8006BFC4 00240400 */  sll        $a0, $a0, 16
    /* 5C7C8 8006BFC8 DB69010C */  jal        func_8005A76C
    /* 5C7CC 8006BFCC 03240400 */   sra       $a0, $a0, 16
    /* 5C7D0 8006BFD0 FC0002A6 */  sh         $v0, 0xFC($s0)
    /* 5C7D4 8006BFD4 21202002 */  addu       $a0, $s1, $zero
    /* 5C7D8 8006BFD8 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5C7DC 8006BFDC FC000636 */  ori        $a2, $s0, 0xFC
    /* 5C7E0 8006BFE0 00100724 */  addiu      $a3, $zero, 0x1000
    /* 5C7E4 8006BFE4 001C1200 */  sll        $v1, $s2, 16
    /* 5C7E8 8006BFE8 C3190300 */  sra        $v1, $v1, 7
    /* 5C7EC 8006BFEC F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5C7F0 8006BFF0 F402088E */  lw         $t0, 0x2F4($s0)
    /* 5C7F4 8006BFF4 00140200 */  sll        $v0, $v0, 16
    /* 5C7F8 8006BFF8 02000885 */  lh         $t0, 0x2($t0)
    /* 5C7FC 8006BFFC 03140200 */  sra        $v0, $v0, 16
    /* 5C800 8006C000 23400301 */  subu       $t0, $t0, $v1
    /* 5C804 8006C004 21104800 */  addu       $v0, $v0, $t0
    /* 5C808 8006C008 C21F0200 */  srl        $v1, $v0, 31
    /* 5C80C 8006C00C 21104300 */  addu       $v0, $v0, $v1
    /* 5C810 8006C010 43100200 */  sra        $v0, $v0, 1
    /* 5C814 8006C014 22B00108 */  j          .L8006C088
    /* 5C818 8006C018 F80002A6 */   sh        $v0, 0xF8($s0)
  jlabel .L8006C01C
    /* 5C81C 8006C01C 00141200 */  sll        $v0, $s2, 16
    /* 5C820 8006C020 03140200 */  sra        $v0, $v0, 16
    /* 5C824 8006C024 80180200 */  sll        $v1, $v0, 2
    /* 5C828 8006C028 21186200 */  addu       $v1, $v1, $v0
    /* 5C82C 8006C02C 001A0300 */  sll        $v1, $v1, 8
    /* 5C830 8006C030 F402028E */  lw         $v0, 0x2F4($s0)
    /* 5C834 8006C034 28030492 */  lbu        $a0, 0x328($s0)
    /* 5C838 8006C038 02004294 */  lhu        $v0, 0x2($v0)
    /* 5C83C 8006C03C 0200842C */  sltiu      $a0, $a0, 0x2
    /* 5C840 8006C040 23104300 */  subu       $v0, $v0, $v1
    /* 5C844 8006C044 05008010 */  beqz       $a0, .L8006C05C
    /* 5C848 8006C048 F80002A6 */   sh        $v0, 0xF8($s0)
    /* 5C84C 8006C04C 21280000 */  addu       $a1, $zero, $zero
    /* 5C850 8006C050 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C854 8006C054 1AB00108 */  j          .L8006C068
    /* 5C858 8006C058 05000624 */   addiu     $a2, $zero, 0x5
  .L8006C05C:
    /* 5C85C 8006C05C 21280000 */  addu       $a1, $zero, $zero
    /* 5C860 8006C060 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C864 8006C064 04000624 */  addiu      $a2, $zero, 0x4
  .L8006C068:
    /* 5C868 8006C068 00240400 */  sll        $a0, $a0, 16
    /* 5C86C 8006C06C DB69010C */  jal        func_8005A76C
    /* 5C870 8006C070 03240400 */   sra       $a0, $a0, 16
    /* 5C874 8006C074 FC0002A6 */  sh         $v0, 0xFC($s0)
    /* 5C878 8006C078 21202002 */  addu       $a0, $s1, $zero
    /* 5C87C 8006C07C F8000536 */  ori        $a1, $s0, 0xF8
    /* 5C880 8006C080 FC000636 */  ori        $a2, $s0, 0xFC
    /* 5C884 8006C084 00100724 */  addiu      $a3, $zero, 0x1000
  .L8006C088:
    /* 5C888 8006C088 2185020C */  jal        func_800A1484
    /* 5C88C 8006C08C 00000000 */   nop
    /* 5C890 8006C090 F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5C894 8006C094 00000000 */  nop
    /* 5C898 8006C098 00140200 */  sll        $v0, $v0, 16
    /* 5C89C 8006C09C 031C0200 */  sra        $v1, $v0, 16
    /* 5C8A0 8006C0A0 02006104 */  bgez       $v1, .L8006C0AC
    /* 5C8A4 8006C0A4 21106000 */   addu      $v0, $v1, $zero
    /* 5C8A8 8006C0A8 23100200 */  negu       $v0, $v0
  .L8006C0AC:
    /* 5C8AC 8006C0AC 092C4228 */  slti       $v0, $v0, 0x2C09
    /* 5C8B0 8006C0B0 05004014 */  bnez       $v0, .L8006C0C8
    /* 5C8B4 8006C0B4 00000000 */   nop
    /* 5C8B8 8006C0B8 02006104 */  bgez       $v1, .L8006C0C4
    /* 5C8BC 8006C0BC 082C0224 */   addiu     $v0, $zero, 0x2C08
    /* 5C8C0 8006C0C0 F8D30224 */  addiu      $v0, $zero, -0x2C08
  .L8006C0C4:
    /* 5C8C4 8006C0C4 F80002A6 */  sh         $v0, 0xF8($s0)
  jlabel .L8006C0C8
    /* 5C8C8 8006C0C8 FC000296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5C8CC 8006C0CC 00000000 */  nop
    /* 5C8D0 8006C0D0 00140200 */  sll        $v0, $v0, 16
    /* 5C8D4 8006C0D4 031C0200 */  sra        $v1, $v0, 16
    /* 5C8D8 8006C0D8 02006104 */  bgez       $v1, .L8006C0E4
    /* 5C8DC 8006C0DC 21106000 */   addu      $v0, $v1, $zero
    /* 5C8E0 8006C0E0 23100200 */  negu       $v0, $v0
  .L8006C0E4:
    /* 5C8E4 8006C0E4 B6084228 */  slti       $v0, $v0, 0x8B6
    /* 5C8E8 8006C0E8 05004010 */  beqz       $v0, .L8006C100
    /* 5C8EC 8006C0EC 00000000 */   nop
    /* 5C8F0 8006C0F0 02006104 */  bgez       $v1, .L8006C0FC
    /* 5C8F4 8006C0F4 B6080224 */   addiu     $v0, $zero, 0x8B6
    /* 5C8F8 8006C0F8 4AF70224 */  addiu      $v0, $zero, -0x8B6
  .L8006C0FC:
    /* 5C8FC 8006C0FC FC0002A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s0)
  .L8006C100:
    /* 5C900 8006C100 E1032292 */  lbu        $v0, 0x3E1($s1)
    /* 5C904 8006C104 00000000 */  nop
    /* 5C908 8006C108 21004014 */  bnez       $v0, .L8006C190
    /* 5C90C 8006C10C 00000000 */   nop
    /* 5C910 8006C110 0B030292 */  lbu        $v0, (0x1F80030B & 0xFFFF)($s0)
    /* 5C914 8006C114 00000000 */  nop
    /* 5C918 8006C118 0300422C */  sltiu      $v0, $v0, 0x3
    /* 5C91C 8006C11C 1C004010 */  beqz       $v0, .L8006C190
    /* 5C920 8006C120 00000000 */   nop
    /* 5C924 8006C124 21202002 */  addu       $a0, $s1, $zero
    /* 5C928 8006C128 BB94010C */  jal        func_800652EC
    /* 5C92C 8006C12C 40080524 */   addiu     $a1, $zero, 0x840
    /* 5C930 8006C130 02004014 */  bnez       $v0, .L8006C13C
    /* 5C934 8006C134 00000000 */   nop
    /* 5C938 8006C138 DA0320A2 */  sb         $zero, 0x3DA($s1)
  .L8006C13C:
    /* 5C93C 8006C13C DA032392 */  lbu        $v1, 0x3DA($s1)
    /* 5C940 8006C140 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 5C944 8006C144 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 5C948 8006C148 19006200 */  multu      $v1, $v0
    /* 5C94C 8006C14C 10480000 */  mfhi       $t1
    /* 5C950 8006C150 C2200900 */  srl        $a0, $t1, 3
    /* 5C954 8006C154 80100400 */  sll        $v0, $a0, 2
    /* 5C958 8006C158 21104400 */  addu       $v0, $v0, $a0
    /* 5C95C 8006C15C 40100200 */  sll        $v0, $v0, 1
    /* 5C960 8006C160 23186200 */  subu       $v1, $v1, $v0
    /* 5C964 8006C164 FF006330 */  andi       $v1, $v1, 0xFF
    /* 5C968 8006C168 0600632C */  sltiu      $v1, $v1, 0x6
    /* 5C96C 8006C16C 08006010 */  beqz       $v1, .L8006C190
    /* 5C970 8006C170 14000624 */   addiu     $a2, $zero, 0x14
    /* 5C974 8006C174 FC000496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5C978 8006C178 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5C97C 8006C17C 00240400 */  sll        $a0, $a0, 16
    /* 5C980 8006C180 06004584 */  lh         $a1, 0x6($v0)
    /* 5C984 8006C184 F969010C */  jal        func_8005A7E4
    /* 5C988 8006C188 03240400 */   sra       $a0, $a0, 16
    /* 5C98C 8006C18C FC0002A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s0)
  .L8006C190:
    /* 5C990 8006C190 0B030292 */  lbu        $v0, (0x1F80030B & 0xFFFF)($s0)
    /* 5C994 8006C194 04000324 */  addiu      $v1, $zero, 0x4
    /* 5C998 8006C198 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5C99C 8006C19C 0C004310 */  beq        $v0, $v1, .L8006C1D0
    /* 5C9A0 8006C1A0 00000000 */   nop
    /* 5C9A4 8006C1A4 0B000292 */  lbu        $v0, (0x1F80000B & 0xFFFF)($s0)
    /* 5C9A8 8006C1A8 00000000 */  nop
    /* 5C9AC 8006C1AC 08004010 */  beqz       $v0, .L8006C1D0
    /* 5C9B0 8006C1B0 03000624 */   addiu     $a2, $zero, 0x3
    /* 5C9B4 8006C1B4 FC000496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5C9B8 8006C1B8 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5C9BC 8006C1BC 00240400 */  sll        $a0, $a0, 16
    /* 5C9C0 8006C1C0 06004584 */  lh         $a1, 0x6($v0)
    /* 5C9C4 8006C1C4 DB69010C */  jal        func_8005A76C
    /* 5C9C8 8006C1C8 03240400 */   sra       $a0, $a0, 16
    /* 5C9CC 8006C1CC FC0002A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s0)
  .L8006C1D0:
    /* 5C9D0 8006C1D0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5C9D4 8006C1D4 1800B28F */  lw         $s2, 0x18($sp)
    /* 5C9D8 8006C1D8 1400B18F */  lw         $s1, 0x14($sp)
    /* 5C9DC 8006C1DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 5C9E0 8006C1E0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5C9E4 8006C1E4 0800E003 */  jr         $ra
    /* 5C9E8 8006C1E8 00000000 */   nop
endlabel func_8006BDE4
