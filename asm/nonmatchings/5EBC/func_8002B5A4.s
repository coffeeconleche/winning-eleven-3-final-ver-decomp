nonmatching func_8002B5A4, 0x548

glabel func_8002B5A4
    /* 1BDA4 8002B5A4 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 1BDA8 8002B5A8 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 1BDAC 8002B5AC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1BDB0 8002B5B0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1BDB4 8002B5B4 21908000 */  addu       $s2, $a0, $zero
    /* 1BDB8 8002B5B8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1BDBC 8002B5BC 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 1BDC0 8002B5C0 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 1BDC4 8002B5C4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1BDC8 8002B5C8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 1BDCC 8002B5CC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1BDD0 8002B5D0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1BDD4 8002B5D4 99034392 */  lbu        $v1, 0x399($s2)
    /* 1BDD8 8002B5D8 02004284 */  lh         $v0, 0x2($v0)
    /* 1BDDC 8002B5DC 07006010 */  beqz       $v1, .L8002B5FC
    /* 1BDE0 8002B5E0 801F133C */   lui       $s3, (0x1F8002B6 >> 16)
    /* 1BDE4 8002B5E4 23100200 */  negu       $v0, $v0
    /* 1BDE8 8002B5E8 0B114228 */  slti       $v0, $v0, 0x110B
    /* 1BDEC 8002B5EC 06004010 */  beqz       $v0, .L8002B608
    /* 1BDF0 8002B5F0 21204002 */   addu      $a0, $s2, $zero
    /* 1BDF4 8002B5F4 7BAE0008 */  j          .L8002B9EC
    /* 1BDF8 8002B5F8 00000000 */   nop
  .L8002B5FC:
    /* 1BDFC 8002B5FC 0B114228 */  slti       $v0, $v0, 0x110B
    /* 1BE00 8002B600 FA004014 */  bnez       $v0, .L8002B9EC
    /* 1BE04 8002B604 21204002 */   addu      $a0, $s2, $zero
  .L8002B608:
    /* 1BE08 8002B608 98034392 */  lbu        $v1, 0x398($s2)
    /* 1BE0C 8002B60C C88E0234 */  ori        $v0, $zero, 0x8EC8
    /* 1BE10 8002B610 21188302 */  addu       $v1, $s4, $v1
    /* 1BE14 8002B614 21186200 */  addu       $v1, $v1, $v0
    /* 1BE18 8002B618 00006290 */  lbu        $v0, 0x0($v1)
    /* 1BE1C 8002B61C 00000000 */  nop
    /* 1BE20 8002B620 01004224 */  addiu      $v0, $v0, 0x1
    /* 1BE24 8002B624 000062A0 */  sb         $v0, 0x0($v1)
    /* 1BE28 8002B628 98034392 */  lbu        $v1, 0x398($s2)
    /* 1BE2C 8002B62C 92034492 */  lbu        $a0, 0x392($s2)
    /* 1BE30 8002B630 40100300 */  sll        $v0, $v1, 1
    /* 1BE34 8002B634 21104300 */  addu       $v0, $v0, $v1
    /* 1BE38 8002B638 80100200 */  sll        $v0, $v0, 2
    /* 1BE3C 8002B63C 23104300 */  subu       $v0, $v0, $v1
    /* 1BE40 8002B640 40100200 */  sll        $v0, $v0, 1
    /* 1BE44 8002B644 21105400 */  addu       $v0, $v0, $s4
    /* 1BE48 8002B648 D1880334 */  ori        $v1, $zero, 0x88D1
    /* 1BE4C 8002B64C 21104300 */  addu       $v0, $v0, $v1
    /* 1BE50 8002B650 21104400 */  addu       $v0, $v0, $a0
    /* 1BE54 8002B654 00004390 */  lbu        $v1, 0x0($v0)
    /* 1BE58 8002B658 00000000 */  nop
    /* 1BE5C 8002B65C 01006324 */  addiu      $v1, $v1, 0x1
    /* 1BE60 8002B660 000043A0 */  sb         $v1, 0x0($v0)
    /* 1BE64 8002B664 8D034292 */  lbu        $v0, 0x38D($s2)
    /* 1BE68 8002B668 9A026392 */  lbu        $v1, (0x1F80029A & 0xFFFF)($s3)
    /* 1BE6C 8002B66C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BE70 8002B670 21088102 */  addu       $at, $s4, $at
    /* 1BE74 8002B674 4FAC25A0 */  sb         $a1, -0x53B1($at)
    /* 1BE78 8002B678 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1BE7C 8002B67C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BE80 8002B680 21088102 */  addu       $at, $s4, $at
    /* 1BE84 8002B684 4EAC22A0 */  sb         $v0, -0x53B2($at)
    /* 1BE88 8002B688 04000224 */  addiu      $v0, $zero, 0x4
    /* 1BE8C 8002B68C 12006214 */  bne        $v1, $v0, .L8002B6D8
    /* 1BE90 8002B690 C0FD0224 */   addiu     $v0, $zero, -0x240
    /* 1BE94 8002B694 6A22010C */  jal        func_800489A8
    /* 1BE98 8002B698 F20062A6 */   sh        $v0, (0x1F8000F2 & 0xFFFF)($s3)
    /* 1BE9C 8002B69C 21380000 */  addu       $a3, $zero, $zero
    /* 1BEA0 8002B6A0 99034492 */  lbu        $a0, 0x399($s2)
    /* 1BEA4 8002B6A4 F8006596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s3)
    /* 1BEA8 8002B6A8 FC006696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s3)
    /* 1BEAC 8002B6AC 01008438 */  xori       $a0, $a0, 0x1
    /* 1BEB0 8002B6B0 002C0500 */  sll        $a1, $a1, 16
    /* 1BEB4 8002B6B4 032C0500 */  sra        $a1, $a1, 16
    /* 1BEB8 8002B6B8 00340600 */  sll        $a2, $a2, 16
    /* 1BEBC 8002B6BC B19D010C */  jal        func_800676C4
    /* 1BEC0 8002B6C0 03340600 */   sra       $a2, $a2, 16
    /* 1BEC4 8002B6C4 BEAD0008 */  j          .L8002B6F8
    /* 1BEC8 8002B6C8 21380000 */   addu      $a3, $zero, $zero
  .L8002B6CC:
    /* 1BECC 8002B6CC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1BED0 8002B6D0 46AE0008 */  j          .L8002B918
    /* 1BED4 8002B6D4 C20302A6 */   sh        $v0, 0x3C2($s0)
  .L8002B6D8:
    /* 1BED8 8002B6D8 99034292 */  lbu        $v0, 0x399($s2)
    /* 1BEDC 8002B6DC 00000000 */  nop
    /* 1BEE0 8002B6E0 02004014 */  bnez       $v0, .L8002B6EC
    /* 1BEE4 8002B6E4 10D70324 */   addiu     $v1, $zero, -0x28F0
    /* 1BEE8 8002B6E8 F0280324 */  addiu      $v1, $zero, 0x28F0
  .L8002B6EC:
    /* 1BEEC 8002B6EC F80063A6 */  sh         $v1, (0x1F8000F8 & 0xFFFF)($s3)
    /* 1BEF0 8002B6F0 FC0060A6 */  sh         $zero, (0x1F8000FC & 0xFFFF)($s3)
    /* 1BEF4 8002B6F4 21380000 */  addu       $a3, $zero, $zero
  .L8002B6F8:
    /* 1BEF8 8002B6F8 F8006596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s3)
    /* 1BEFC 8002B6FC 99034492 */  lbu        $a0, 0x399($s2)
    /* 1BF00 8002B700 FC006696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s3)
    /* 1BF04 8002B704 002C0500 */  sll        $a1, $a1, 16
    /* 1BF08 8002B708 032C0500 */  sra        $a1, $a1, 16
    /* 1BF0C 8002B70C 00340600 */  sll        $a2, $a2, 16
    /* 1BF10 8002B710 B19D010C */  jal        func_800676C4
    /* 1BF14 8002B714 03340600 */   sra       $a2, $a2, 16
    /* 1BF18 8002B718 99034292 */  lbu        $v0, 0x399($s2)
    /* 1BF1C 8002B71C 00000000 */  nop
    /* 1BF20 8002B720 40100200 */  sll        $v0, $v0, 1
    /* 1BF24 8002B724 21106202 */  addu       $v0, $s3, $v0
    /* 1BF28 8002B728 22034390 */  lbu        $v1, (0x1F800322 & 0xFFFF)($v0)
    /* 1BF2C 8002B72C 00000000 */  nop
    /* 1BF30 8002B730 1E0343A0 */  sb         $v1, (0x1F80031E & 0xFFFF)($v0)
    /* 1BF34 8002B734 99034292 */  lbu        $v0, 0x399($s2)
    /* 1BF38 8002B738 00000000 */  nop
    /* 1BF3C 8002B73C 40100200 */  sll        $v0, $v0, 1
    /* 1BF40 8002B740 21106202 */  addu       $v0, $s3, $v0
    /* 1BF44 8002B744 23034390 */  lbu        $v1, (0x1F800323 & 0xFFFF)($v0)
    /* 1BF48 8002B748 21880000 */  addu       $s1, $zero, $zero
    /* 1BF4C 8002B74C 1F0343A0 */  sb         $v1, (0x1F80031F & 0xFFFF)($v0)
  .L8002B750:
    /* 1BF50 8002B750 99034292 */  lbu        $v0, 0x399($s2)
    /* 1BF54 8002B754 00000000 */  nop
    /* 1BF58 8002B758 40100200 */  sll        $v0, $v0, 1
    /* 1BF5C 8002B75C 21105300 */  addu       $v0, $v0, $s3
    /* 1BF60 8002B760 21105100 */  addu       $v0, $v0, $s1
    /* 1BF64 8002B764 22034390 */  lbu        $v1, (0x1F800322 & 0xFFFF)($v0)
    /* 1BF68 8002B768 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 1BF6C 8002B76C ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 1BF70 8002B770 19006200 */  multu      $v1, $v0
    /* 1BF74 8002B774 10400000 */  mfhi       $t0
    /* 1BF78 8002B778 02210800 */  srl        $a0, $t0, 4
    /* 1BF7C 8002B77C 40100400 */  sll        $v0, $a0, 1
    /* 1BF80 8002B780 21104400 */  addu       $v0, $v0, $a0
    /* 1BF84 8002B784 C0100200 */  sll        $v0, $v0, 3
    /* 1BF88 8002B788 23186200 */  subu       $v1, $v1, $v0
    /* 1BF8C 8002B78C FF006330 */  andi       $v1, $v1, 0xFF
    /* 1BF90 8002B790 40110300 */  sll        $v0, $v1, 5
    /* 1BF94 8002B794 23104300 */  subu       $v0, $v0, $v1
    /* 1BF98 8002B798 80100200 */  sll        $v0, $v0, 2
    /* 1BF9C 8002B79C 21104300 */  addu       $v0, $v0, $v1
    /* 1BFA0 8002B7A0 C0100200 */  sll        $v0, $v0, 3
    /* 1BFA4 8002B7A4 21808202 */  addu       $s0, $s4, $v0
    /* 1BFA8 8002B7A8 11005012 */  beq        $s2, $s0, .L8002B7F0
    /* 1BFAC 8002B7AC 00000000 */   nop
    /* 1BFB0 8002B7B0 1B4B010C */  jal        func_80052C6C
    /* 1BFB4 8002B7B4 21200002 */   addu      $a0, $s0, $zero
    /* 1BFB8 8002B7B8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1BFBC 8002B7BC 0C004014 */  bnez       $v0, .L8002B7F0
    /* 1BFC0 8002B7C0 21200002 */   addu      $a0, $s0, $zero
    /* 1BFC4 8002B7C4 AE44010C */  jal        func_800512B8
    /* 1BFC8 8002B7C8 01000524 */   addiu     $a1, $zero, 0x1
    /* 1BFCC 8002B7CC 9A026292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s3)
    /* 1BFD0 8002B7D0 04000324 */  addiu      $v1, $zero, 0x4
    /* 1BFD4 8002B7D4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1BFD8 8002B7D8 09004310 */  beq        $v0, $v1, .L8002B800
    /* 1BFDC 8002B7DC 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 1BFE0 8002B7E0 960302A2 */  sb         $v0, 0x396($s0)
    /* 1BFE4 8002B7E4 30000224 */  addiu      $v0, $zero, 0x30
    /* 1BFE8 8002B7E8 00AE0008 */  j          .L8002B800
    /* 1BFEC 8002B7EC 970302A2 */   sb        $v0, 0x397($s0)
  .L8002B7F0:
    /* 1BFF0 8002B7F0 01003126 */  addiu      $s1, $s1, 0x1
    /* 1BFF4 8002B7F4 0200222A */  slti       $v0, $s1, 0x2
    /* 1BFF8 8002B7F8 D5FF4014 */  bnez       $v0, .L8002B750
    /* 1BFFC 8002B7FC 00000000 */   nop
  .L8002B800:
    /* 1C000 8002B800 21380000 */  addu       $a3, $zero, $zero
    /* 1C004 8002B804 99034492 */  lbu        $a0, 0x399($s2)
    /* 1C008 8002B808 F8006596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s3)
    /* 1C00C 8002B80C FC006696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s3)
    /* 1C010 8002B810 01008438 */  xori       $a0, $a0, 0x1
    /* 1C014 8002B814 002C0500 */  sll        $a1, $a1, 16
    /* 1C018 8002B818 032C0500 */  sra        $a1, $a1, 16
    /* 1C01C 8002B81C 00340600 */  sll        $a2, $a2, 16
    /* 1C020 8002B820 B19D010C */  jal        func_800676C4
    /* 1C024 8002B824 03340600 */   sra       $a2, $a2, 16
    /* 1C028 8002B828 99034292 */  lbu        $v0, 0x399($s2)
    /* 1C02C 8002B82C 00000000 */  nop
    /* 1C030 8002B830 01004238 */  xori       $v0, $v0, 0x1
    /* 1C034 8002B834 40100200 */  sll        $v0, $v0, 1
    /* 1C038 8002B838 21106202 */  addu       $v0, $s3, $v0
    /* 1C03C 8002B83C 22034390 */  lbu        $v1, (0x1F800322 & 0xFFFF)($v0)
    /* 1C040 8002B840 00000000 */  nop
    /* 1C044 8002B844 1E0343A0 */  sb         $v1, (0x1F80031E & 0xFFFF)($v0)
    /* 1C048 8002B848 99034292 */  lbu        $v0, 0x399($s2)
    /* 1C04C 8002B84C 00000000 */  nop
    /* 1C050 8002B850 01004238 */  xori       $v0, $v0, 0x1
    /* 1C054 8002B854 40100200 */  sll        $v0, $v0, 1
    /* 1C058 8002B858 21106202 */  addu       $v0, $s3, $v0
    /* 1C05C 8002B85C 23034390 */  lbu        $v1, (0x1F800323 & 0xFFFF)($v0)
    /* 1C060 8002B860 21880000 */  addu       $s1, $zero, $zero
    /* 1C064 8002B864 1F0343A0 */  sb         $v1, (0x1F80031F & 0xFFFF)($v0)
  .L8002B868:
    /* 1C068 8002B868 99034292 */  lbu        $v0, 0x399($s2)
    /* 1C06C 8002B86C 00000000 */  nop
    /* 1C070 8002B870 01004238 */  xori       $v0, $v0, 0x1
    /* 1C074 8002B874 40100200 */  sll        $v0, $v0, 1
    /* 1C078 8002B878 21105300 */  addu       $v0, $v0, $s3
    /* 1C07C 8002B87C 21105100 */  addu       $v0, $v0, $s1
    /* 1C080 8002B880 1E034390 */  lbu        $v1, (0x1F80031E & 0xFFFF)($v0)
    /* 1C084 8002B884 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 1C088 8002B888 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 1C08C 8002B88C 19006200 */  multu      $v1, $v0
    /* 1C090 8002B890 10400000 */  mfhi       $t0
    /* 1C094 8002B894 02210800 */  srl        $a0, $t0, 4
    /* 1C098 8002B898 40100400 */  sll        $v0, $a0, 1
    /* 1C09C 8002B89C 21104400 */  addu       $v0, $v0, $a0
    /* 1C0A0 8002B8A0 C0100200 */  sll        $v0, $v0, 3
    /* 1C0A4 8002B8A4 23186200 */  subu       $v1, $v1, $v0
    /* 1C0A8 8002B8A8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1C0AC 8002B8AC 40110300 */  sll        $v0, $v1, 5
    /* 1C0B0 8002B8B0 23104300 */  subu       $v0, $v0, $v1
    /* 1C0B4 8002B8B4 80100200 */  sll        $v0, $v0, 2
    /* 1C0B8 8002B8B8 21104300 */  addu       $v0, $v0, $v1
    /* 1C0BC 8002B8BC C0100200 */  sll        $v0, $v0, 3
    /* 1C0C0 8002B8C0 21808202 */  addu       $s0, $s4, $v0
    /* 1C0C4 8002B8C4 644B010C */  jal        func_80052D90
    /* 1C0C8 8002B8C8 21200002 */   addu      $a0, $s0, $zero
    /* 1C0CC 8002B8CC FF004230 */  andi       $v0, $v0, 0xFF
    /* 1C0D0 8002B8D0 0D004014 */  bnez       $v0, .L8002B908
    /* 1C0D4 8002B8D4 21200002 */   addu      $a0, $s0, $zero
    /* 1C0D8 8002B8D8 AE44010C */  jal        func_800512B8
    /* 1C0DC 8002B8DC 01000524 */   addiu     $a1, $zero, 0x1
    /* 1C0E0 8002B8E0 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 1C0E4 8002B8E4 960302A2 */  sb         $v0, 0x396($s0)
    /* 1C0E8 8002B8E8 970300A2 */  sb         $zero, 0x397($s0)
    /* 1C0EC 8002B8EC 9A026292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s3)
    /* 1C0F0 8002B8F0 04000324 */  addiu      $v1, $zero, 0x4
    /* 1C0F4 8002B8F4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1C0F8 8002B8F8 74FF4310 */  beq        $v0, $v1, .L8002B6CC
    /* 1C0FC 8002B8FC 30000224 */   addiu     $v0, $zero, 0x30
    /* 1C100 8002B900 46AE0008 */  j          .L8002B918
    /* 1C104 8002B904 970302A2 */   sb        $v0, 0x397($s0)
  .L8002B908:
    /* 1C108 8002B908 01003126 */  addiu      $s1, $s1, 0x1
    /* 1C10C 8002B90C 0200222A */  slti       $v0, $s1, 0x2
    /* 1C110 8002B910 D5FF4014 */  bnez       $v0, .L8002B868
    /* 1C114 8002B914 00000000 */   nop
  .L8002B918:
    /* 1C118 8002B918 8D034492 */  lbu        $a0, 0x38D($s2)
    /* 1C11C 8002B91C 8C73010C */  jal        func_8005CE30
    /* 1C120 8002B920 21880000 */   addu      $s1, $zero, $zero
    /* 1C124 8002B924 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1C128 8002B928 40190200 */  sll        $v1, $v0, 5
    /* 1C12C 8002B92C 23186200 */  subu       $v1, $v1, $v0
    /* 1C130 8002B930 80180300 */  sll        $v1, $v1, 2
    /* 1C134 8002B934 21186200 */  addu       $v1, $v1, $v0
    /* 1C138 8002B938 C0180300 */  sll        $v1, $v1, 3
    /* 1C13C 8002B93C 21807400 */  addu       $s0, $v1, $s4
    /* 1C140 8002B940 AE071026 */  addiu      $s0, $s0, 0x7AE
  .L8002B944:
    /* 1C144 8002B944 D3FF0292 */  lbu        $v0, -0x2D($s0)
    /* 1C148 8002B948 3CFC0386 */  lh         $v1, -0x3C4($s0)
    /* 1C14C 8002B94C 06004010 */  beqz       $v0, .L8002B968
    /* 1C150 8002B950 23100300 */   negu      $v0, $v1
    /* 1C154 8002B954 F9D14228 */  slti       $v0, $v0, -0x2E07
    /* 1C158 8002B958 06004014 */  bnez       $v0, .L8002B974
    /* 1C15C 8002B95C 00000000 */   nop
    /* 1C160 8002B960 76AE0008 */  j          .L8002B9D8
    /* 1C164 8002B964 01003126 */   addiu     $s1, $s1, 0x1
  .L8002B968:
    /* 1C168 8002B968 F9D16228 */  slti       $v0, $v1, -0x2E07
    /* 1C16C 8002B96C 19004010 */  beqz       $v0, .L8002B9D4
    /* 1C170 8002B970 00000000 */   nop
  .L8002B974:
    /* 1C174 8002B974 40FC0286 */  lh         $v0, -0x3C0($s0)
    /* 1C178 8002B978 00000000 */  nop
    /* 1C17C 8002B97C 02004104 */  bgez       $v0, .L8002B988
    /* 1C180 8002B980 00000000 */   nop
    /* 1C184 8002B984 23100200 */  negu       $v0, $v0
  .L8002B988:
    /* 1C188 8002B988 80044228 */  slti       $v0, $v0, 0x480
    /* 1C18C 8002B98C 11004010 */  beqz       $v0, .L8002B9D4
    /* 1C190 8002B990 07000224 */   addiu     $v0, $zero, 0x7
    /* 1C194 8002B994 D0FF0392 */  lbu        $v1, -0x30($s0)
    /* 1C198 8002B998 00000000 */  nop
    /* 1C19C 8002B99C 0D006214 */  bne        $v1, $v0, .L8002B9D4
    /* 1C1A0 8002B9A0 80000424 */   addiu     $a0, $zero, 0x80
    /* 1C1A4 8002B9A4 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 1C1A8 8002B9A8 D0FF02A2 */  sb         $v0, -0x30($s0)
    /* 1C1AC 8002B9AC E871010C */  jal        func_8005C7A0
    /* 1C1B0 8002B9B0 D1FF00A2 */   sb        $zero, -0x2F($s0)
    /* 1C1B4 8002B9B4 00140200 */  sll        $v0, $v0, 16
    /* 1C1B8 8002B9B8 03140200 */  sra        $v0, $v0, 16
    /* 1C1BC 8002B9BC 40FC0386 */  lh         $v1, -0x3C0($s0)
    /* 1C1C0 8002B9C0 00000000 */  nop
    /* 1C1C4 8002B9C4 02006104 */  bgez       $v1, .L8002B9D0
    /* 1C1C8 8002B9C8 60024224 */   addiu     $v0, $v0, 0x260
    /* 1C1CC 8002B9CC 23100200 */  negu       $v0, $v0
  .L8002B9D0:
    /* 1C1D0 8002B9D0 000002A6 */  sh         $v0, 0x0($s0)
  .L8002B9D4:
    /* 1C1D4 8002B9D4 01003126 */  addiu      $s1, $s1, 0x1
  .L8002B9D8:
    /* 1C1D8 8002B9D8 0A00222A */  slti       $v0, $s1, 0xA
    /* 1C1DC 8002B9DC D9FF4014 */  bnez       $v0, .L8002B944
    /* 1C1E0 8002B9E0 E8031026 */   addiu     $s0, $s0, 0x3E8
    /* 1C1E4 8002B9E4 85AE0008 */  j          .L8002BA14
    /* 1C1E8 8002B9E8 00000000 */   nop
  .L8002B9EC:
    /* 1C1EC 8002B9EC 02000524 */  addiu      $a1, $zero, 0x2
    /* 1C1F0 8002B9F0 21300000 */  addu       $a2, $zero, $zero
    /* 1C1F4 8002B9F4 B4026796 */  lhu        $a3, (0x1F8002B4 & 0xFFFF)($s3)
    /* 1C1F8 8002B9F8 B6026296 */  lhu        $v0, (0x1F8002B6 & 0xFFFF)($s3)
    /* 1C1FC 8002B9FC 003C0700 */  sll        $a3, $a3, 16
    /* 1C200 8002BA00 033C0700 */  sra        $a3, $a3, 16
    /* 1C204 8002BA04 00140200 */  sll        $v0, $v0, 16
    /* 1C208 8002BA08 03140200 */  sra        $v0, $v0, 16
    /* 1C20C 8002BA0C A526010C */  jal        func_80049A94
    /* 1C210 8002BA10 1000A2AF */   sw        $v0, 0x10($sp)
  .L8002BA14:
    /* 1C214 8002BA14 99034292 */  lbu        $v0, 0x399($s2)
    /* 1C218 8002BA18 02004486 */  lh         $a0, 0x2($s2)
    /* 1C21C 8002BA1C 02004014 */  bnez       $v0, .L8002BA28
    /* 1C220 8002BA20 20338524 */   addiu     $a1, $a0, 0x3320
    /* 1C224 8002BA24 E0CC8524 */  addiu      $a1, $a0, -0x3320
  .L8002BA28:
    /* 1C228 8002BA28 06004286 */  lh         $v0, 0x6($s2)
    /* 1C22C 8002BA2C 00000000 */  nop
    /* 1C230 8002BA30 18004200 */  mult       $v0, $v0
    /* 1C234 8002BA34 99034392 */  lbu        $v1, 0x399($s2)
    /* 1C238 8002BA38 12300000 */  mflo       $a2
    /* 1C23C 8002BA3C 0B006014 */  bnez       $v1, .L8002BA6C
    /* 1C240 8002BA40 20338224 */   addiu     $v0, $a0, 0x3320
    /* 1C244 8002BA44 E0CC8224 */  addiu      $v0, $a0, -0x3320
    /* 1C248 8002BA48 1800A200 */  mult       $a1, $v0
    /* 1C24C 8002BA4C A402023C */  lui        $v0, (0x2A40000 >> 16)
    /* 1C250 8002BA50 12400000 */  mflo       $t0
    /* 1C254 8002BA54 21180601 */  addu       $v1, $t0, $a2
    /* 1C258 8002BA58 2A104300 */  slt        $v0, $v0, $v1
    /* 1C25C 8002BA5C 0A004014 */  bnez       $v0, .L8002BA88
    /* 1C260 8002BA60 21204002 */   addu      $a0, $s2, $zero
    /* 1C264 8002BA64 ACAE0008 */  j          .L8002BAB0
    /* 1C268 8002BA68 04000224 */   addiu     $v0, $zero, 0x4
  .L8002BA6C:
    /* 1C26C 8002BA6C 1800A200 */  mult       $a1, $v0
    /* 1C270 8002BA70 A402023C */  lui        $v0, (0x2A40000 >> 16)
    /* 1C274 8002BA74 12400000 */  mflo       $t0
    /* 1C278 8002BA78 21180601 */  addu       $v1, $t0, $a2
    /* 1C27C 8002BA7C 2A104300 */  slt        $v0, $v0, $v1
    /* 1C280 8002BA80 0A004010 */  beqz       $v0, .L8002BAAC
    /* 1C284 8002BA84 21204002 */   addu      $a0, $s2, $zero
  .L8002BA88:
    /* 1C288 8002BA88 21280000 */  addu       $a1, $zero, $zero
    /* 1C28C 8002BA8C 99034292 */  lbu        $v0, 0x399($s2)
    /* 1C290 8002BA90 B6026796 */  lhu        $a3, (0x1F8002B6 & 0xFFFF)($s3)
    /* 1C294 8002BA94 40100200 */  sll        $v0, $v0, 1
    /* 1C298 8002BA98 21105300 */  addu       $v0, $v0, $s3
    /* 1C29C 8002BA9C 003C0700 */  sll        $a3, $a3, 16
    /* 1C2A0 8002BAA0 0C034684 */  lh         $a2, (0x1F80030C & 0xFFFF)($v0)
    /* 1C2A4 8002BAA4 4027020C */  jal        func_80089D00
    /* 1C2A8 8002BAA8 033C0700 */   sra       $a3, $a3, 16
  .L8002BAAC:
    /* 1C2AC 8002BAAC 04000224 */  addiu      $v0, $zero, 0x4
  .L8002BAB0:
    /* 1C2B0 8002BAB0 B00262AE */  sw         $v0, (0x1F8002B0 & 0xFFFF)($s3)
    /* 1C2B4 8002BAB4 99034292 */  lbu        $v0, 0x399($s2)
    /* 1C2B8 8002BAB8 00000000 */  nop
    /* 1C2BC 8002BABC 01004238 */  xori       $v0, $v0, 0x1
    /* 1C2C0 8002BAC0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1C2C4 8002BAC4 1C0362A6 */  sh         $v0, (0x1F80031C & 0xFFFF)($s3)
    /* 1C2C8 8002BAC8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 1C2CC 8002BACC 2800B48F */  lw         $s4, 0x28($sp)
    /* 1C2D0 8002BAD0 2400B38F */  lw         $s3, 0x24($sp)
    /* 1C2D4 8002BAD4 2000B28F */  lw         $s2, 0x20($sp)
    /* 1C2D8 8002BAD8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1C2DC 8002BADC 1800B08F */  lw         $s0, 0x18($sp)
    /* 1C2E0 8002BAE0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1C2E4 8002BAE4 0800E003 */  jr         $ra
    /* 1C2E8 8002BAE8 00000000 */   nop
endlabel func_8002B5A4
