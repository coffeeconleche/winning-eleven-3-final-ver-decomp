nonmatching func_8009EBC0, 0x3A8

glabel func_8009EBC0
    /* 8F3C0 8009EBC0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8F3C4 8009EBC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8F3C8 8009EBC8 21888000 */  addu       $s1, $a0, $zero
    /* 8F3CC 8009EBCC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8F3D0 8009EBD0 801F133C */  lui        $s3, (0x1F8000FC >> 16)
    /* 8F3D4 8009EBD4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8F3D8 8009EBD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8F3DC 8009EBDC B77F020C */  jal        func_8009FEDC
    /* 8F3E0 8009EBE0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 8F3E4 8009EBE4 D8004014 */  bnez       $v0, .L8009EF48
    /* 8F3E8 8009EBE8 801F123C */   lui       $s2, (0x1F8000F8 >> 16)
    /* 8F3EC 8009EBEC F8005236 */  ori        $s2, $s2, (0x1F8000F8 & 0xFFFF)
    /* 8F3F0 8009EBF0 21202002 */  addu       $a0, $s1, $zero
    /* 8F3F4 8009EBF4 801F053C */  lui        $a1, (0x1F8000F8 >> 16)
    /* 8F3F8 8009EBF8 F800A534 */  ori        $a1, $a1, (0x1F8000F8 & 0xFFFF)
    /* 8F3FC 8009EBFC 801F063C */  lui        $a2, (0x1F8000FC >> 16)
    /* 8F400 8009EC00 176A010C */  jal        func_8005A85C
    /* 8F404 8009EC04 FC00C634 */   ori       $a2, $a2, (0x1F8000FC & 0xFFFF)
    /* 8F408 8009EC08 99032292 */  lbu        $v0, 0x399($s1)
    /* 8F40C 8009EC0C 00000000 */  nop
    /* 8F410 8009EC10 02004014 */  bnez       $v0, .L8009EC1C
    /* 8F414 8009EC14 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 8F418 8009EC18 01001024 */  addiu      $s0, $zero, 0x1
  .L8009EC1C:
    /* 8F41C 8009EC1C 98032292 */  lbu        $v0, 0x398($s1)
    /* 8F420 8009EC20 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 8F424 8009EC24 21084100 */  addu       $at, $v0, $at
    /* 8F428 8009EC28 CF022290 */  lbu        $v0, (0x1F8002CF & 0xFFFF)($at)
    /* 8F42C 8009EC2C 00000000 */  nop
    /* 8F430 8009EC30 3A004014 */  bnez       $v0, .L8009ED1C
    /* 8F434 8009EC34 C0101000 */   sll       $v0, $s0, 3
    /* 8F438 8009EC38 40101000 */  sll        $v0, $s0, 1
    /* 8F43C 8009EC3C 21105000 */  addu       $v0, $v0, $s0
    /* 8F440 8009EC40 80100200 */  sll        $v0, $v0, 2
    /* 8F444 8009EC44 23105000 */  subu       $v0, $v0, $s0
    /* 8F448 8009EC48 00004396 */  lhu        $v1, 0x0($s2)
    /* 8F44C 8009EC4C 00120200 */  sll        $v0, $v0, 8
    /* 8F450 8009EC50 21186200 */  addu       $v1, $v1, $v0
    /* 8F454 8009EC54 000043A6 */  sh         $v1, 0x0($s2)
    /* 8F458 8009EC58 91032292 */  lbu        $v0, 0x391($s1)
    /* 8F45C 8009EC5C 00000000 */  nop
    /* 8F460 8009EC60 FAFF4324 */  addiu      $v1, $v0, -0x6
    /* 8F464 8009EC64 1400622C */  sltiu      $v0, $v1, 0x14
    /* 8F468 8009EC68 27004010 */  beqz       $v0, .L8009ED08
    /* 8F46C 8009EC6C 80100300 */   sll       $v0, $v1, 2
    /* 8F470 8009EC70 0180013C */  lui        $at, %hi(jtbl_80014280)
    /* 8F474 8009EC74 21082200 */  addu       $at, $at, $v0
    /* 8F478 8009EC78 8042228C */  lw         $v0, %lo(jtbl_80014280)($at)
    /* 8F47C 8009EC7C 00000000 */  nop
    /* 8F480 8009EC80 08004000 */  jr         $v0
    /* 8F484 8009EC84 00000000 */   nop
  jlabel .L8009EC88
    /* 8F488 8009EC88 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 8F48C 8009EC8C 00000000 */  nop
    /* 8F490 8009EC90 06004284 */  lh         $v0, 0x6($v0)
    /* 8F494 8009EC94 00000000 */  nop
    /* 8F498 8009EC98 02004104 */  bgez       $v0, .L8009ECA4
    /* 8F49C 8009EC9C 01000324 */   addiu     $v1, $zero, 0x1
    /* 8F4A0 8009ECA0 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8009ECA4:
    /* 8F4A4 8009ECA4 FC006296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s3)
    /* 8F4A8 8009ECA8 00000000 */  nop
    /* 8F4AC 8009ECAC 00140200 */  sll        $v0, $v0, 16
    /* 8F4B0 8009ECB0 06004104 */  bgez       $v0, .L8009ECCC
    /* 8F4B4 8009ECB4 01000224 */   addiu     $v0, $zero, 0x1
    /* 8F4B8 8009ECB8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8F4BC 8009ECBC 05006210 */  beq        $v1, $v0, .L8009ECD4
    /* 8F4C0 8009ECC0 21280000 */   addu      $a1, $zero, $zero
    /* 8F4C4 8009ECC4 3B7B0208 */  j          .L8009ECEC
    /* 8F4C8 8009ECC8 00000000 */   nop
  .L8009ECCC:
    /* 8F4CC 8009ECCC 07006214 */  bne        $v1, $v0, .L8009ECEC
    /* 8F4D0 8009ECD0 21280000 */   addu      $a1, $zero, $zero
  .L8009ECD4:
    /* 8F4D4 8009ECD4 FC006496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s3)
    /* 8F4D8 8009ECD8 03000624 */  addiu      $a2, $zero, 0x3
    /* 8F4DC 8009ECDC 00240400 */  sll        $a0, $a0, 16
    /* 8F4E0 8009ECE0 DB69010C */  jal        func_8005A76C
    /* 8F4E4 8009ECE4 03240400 */   sra       $a0, $a0, 16
    /* 8F4E8 8009ECE8 FC0062A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s3)
  .L8009ECEC:
    /* 8F4EC 8009ECEC 99032292 */  lbu        $v0, 0x399($s1)
    /* 8F4F0 8009ECF0 F8006396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s3)
    /* 8F4F4 8009ECF4 40100200 */  sll        $v0, $v0, 1
    /* 8F4F8 8009ECF8 21105300 */  addu       $v0, $v0, $s3
    /* 8F4FC 8009ECFC 0C034284 */  lh         $v0, (0x1F80030C & 0xFFFF)($v0)
    /* 8F500 8009ED00 7D7B0208 */  j          .L8009EDF4
    /* 8F504 8009ED04 001C0300 */   sll       $v1, $v1, 16
  jlabel .L8009ED08
    /* 8F508 8009ED08 F8006296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s3)
    /* 8F50C 8009ED0C C01A1000 */  sll        $v1, $s0, 11
    /* 8F510 8009ED10 21104300 */  addu       $v0, $v0, $v1
    /* 8F514 8009ED14 897B0208 */  j          .L8009EE24
    /* 8F518 8009ED18 F80062A6 */   sh        $v0, (0x1F8000F8 & 0xFFFF)($s3)
  .L8009ED1C:
    /* 8F51C 8009ED1C 21105000 */  addu       $v0, $v0, $s0
    /* 8F520 8009ED20 00004396 */  lhu        $v1, 0x0($s2)
    /* 8F524 8009ED24 00120200 */  sll        $v0, $v0, 8
    /* 8F528 8009ED28 23186200 */  subu       $v1, $v1, $v0
    /* 8F52C 8009ED2C 000043A6 */  sh         $v1, 0x0($s2)
    /* 8F530 8009ED30 91032292 */  lbu        $v0, 0x391($s1)
    /* 8F534 8009ED34 00000000 */  nop
    /* 8F538 8009ED38 F7FF4424 */  addiu      $a0, $v0, -0x9
    /* 8F53C 8009ED3C 1100822C */  sltiu      $v0, $a0, 0x11
    /* 8F540 8009ED40 33004010 */  beqz       $v0, .L8009EE10
    /* 8F544 8009ED44 80100400 */   sll       $v0, $a0, 2
    /* 8F548 8009ED48 0180013C */  lui        $at, %hi(jtbl_800142D0)
    /* 8F54C 8009ED4C 21082200 */  addu       $at, $at, $v0
    /* 8F550 8009ED50 D042228C */  lw         $v0, %lo(jtbl_800142D0)($at)
    /* 8F554 8009ED54 00000000 */  nop
    /* 8F558 8009ED58 08004000 */  jr         $v0
    /* 8F55C 8009ED5C 00000000 */   nop
  jlabel .L8009ED60
    /* 8F560 8009ED60 80101000 */  sll        $v0, $s0, 2
    /* 8F564 8009ED64 21105000 */  addu       $v0, $v0, $s0
    /* 8F568 8009ED68 F8006396 */  lhu        $v1, 0xF8($s3)
    /* 8F56C 8009ED6C 00120200 */  sll        $v0, $v0, 8
    /* 8F570 8009ED70 23186200 */  subu       $v1, $v1, $v0
    /* 8F574 8009ED74 897B0208 */  j          .L8009EE24
    /* 8F578 8009ED78 F80063A6 */   sh        $v1, 0xF8($s3)
  jlabel .L8009ED7C
    /* 8F57C 8009ED7C 21280000 */  addu       $a1, $zero, $zero
    /* 8F580 8009ED80 FC006496 */  lhu        $a0, 0xFC($s3)
    /* 8F584 8009ED84 04000624 */  addiu      $a2, $zero, 0x4
    /* 8F588 8009ED88 00240400 */  sll        $a0, $a0, 16
    /* 8F58C 8009ED8C DB69010C */  jal        func_8005A76C
    /* 8F590 8009ED90 03240400 */   sra       $a0, $a0, 16
    /* 8F594 8009ED94 FC0062A6 */  sh         $v0, 0xFC($s3)
  jlabel .L8009ED98
    /* 8F598 8009ED98 99032292 */  lbu        $v0, 0x399($s1)
    /* 8F59C 8009ED9C F8006496 */  lhu        $a0, 0xF8($s3)
    /* 8F5A0 8009EDA0 80100200 */  sll        $v0, $v0, 2
    /* 8F5A4 8009EDA4 21105300 */  addu       $v0, $v0, $s3
    /* 8F5A8 8009EDA8 00240400 */  sll        $a0, $a0, 16
    /* 8F5AC 8009EDAC 03240400 */  sra        $a0, $a0, 16
    /* 8F5B0 8009EDB0 1403438C */  lw         $v1, 0x314($v0)
    /* 8F5B4 8009EDB4 80101000 */  sll        $v0, $s0, 2
    /* 8F5B8 8009EDB8 21105000 */  addu       $v0, $v0, $s0
    /* 8F5BC 8009EDBC 00120200 */  sll        $v0, $v0, 8
    /* 8F5C0 8009EDC0 21186400 */  addu       $v1, $v1, $a0
    /* 8F5C4 8009EDC4 23186200 */  subu       $v1, $v1, $v0
    /* 8F5C8 8009EDC8 C2170300 */  srl        $v0, $v1, 31
    /* 8F5CC 8009EDCC 21186200 */  addu       $v1, $v1, $v0
    /* 8F5D0 8009EDD0 43180300 */  sra        $v1, $v1, 1
    /* 8F5D4 8009EDD4 897B0208 */  j          .L8009EE24
    /* 8F5D8 8009EDD8 F80063A6 */   sh        $v1, 0xF8($s3)
  jlabel .L8009EDDC
    /* 8F5DC 8009EDDC 99032292 */  lbu        $v0, 0x399($s1)
    /* 8F5E0 8009EDE0 F8006396 */  lhu        $v1, 0xF8($s3)
    /* 8F5E4 8009EDE4 80100200 */  sll        $v0, $v0, 2
    /* 8F5E8 8009EDE8 21105300 */  addu       $v0, $v0, $s3
    /* 8F5EC 8009EDEC 001C0300 */  sll        $v1, $v1, 16
    /* 8F5F0 8009EDF0 1403428C */  lw         $v0, 0x314($v0)
  .L8009EDF4:
    /* 8F5F4 8009EDF4 031C0300 */  sra        $v1, $v1, 16
    /* 8F5F8 8009EDF8 21104300 */  addu       $v0, $v0, $v1
    /* 8F5FC 8009EDFC C21F0200 */  srl        $v1, $v0, 31
    /* 8F600 8009EE00 21104300 */  addu       $v0, $v0, $v1
    /* 8F604 8009EE04 43100200 */  sra        $v0, $v0, 1
    /* 8F608 8009EE08 897B0208 */  j          .L8009EE24
    /* 8F60C 8009EE0C F80062A6 */   sh        $v0, (0x1F8000F8 & 0xFFFF)($s3)
  .L8009EE10:
    /* 8F610 8009EE10 40101000 */  sll        $v0, $s0, 1
    /* 8F614 8009EE14 21105000 */  addu       $v0, $v0, $s0
    /* 8F618 8009EE18 40120200 */  sll        $v0, $v0, 9
    /* 8F61C 8009EE1C 23106200 */  subu       $v0, $v1, $v0
    /* 8F620 8009EE20 000042A6 */  sh         $v0, 0x0($s2)
  jlabel .L8009EE24
    /* 8F624 8009EE24 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 8F628 8009EE28 00000000 */  nop
    /* 8F62C 8009EE2C 06004284 */  lh         $v0, 0x6($v0)
    /* 8F630 8009EE30 00000000 */  nop
    /* 8F634 8009EE34 02004104 */  bgez       $v0, .L8009EE40
    /* 8F638 8009EE38 01000324 */   addiu     $v1, $zero, 0x1
    /* 8F63C 8009EE3C FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8009EE40:
    /* 8F640 8009EE40 06002286 */  lh         $v0, 0x6($s1)
    /* 8F644 8009EE44 00000000 */  nop
    /* 8F648 8009EE48 06004104 */  bgez       $v0, .L8009EE64
    /* 8F64C 8009EE4C 01000224 */   addiu     $v0, $zero, 0x1
    /* 8F650 8009EE50 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8F654 8009EE54 05006214 */  bne        $v1, $v0, .L8009EE6C
    /* 8F658 8009EE58 21202002 */   addu      $a0, $s1, $zero
    /* 8F65C 8009EE5C C57B0208 */  j          .L8009EF14
    /* 8F660 8009EE60 00000000 */   nop
  .L8009EE64:
    /* 8F664 8009EE64 2B006210 */  beq        $v1, $v0, .L8009EF14
    /* 8F668 8009EE68 21202002 */   addu      $a0, $s1, $zero
  .L8009EE6C:
    /* 8F66C 8009EE6C 02002286 */  lh         $v0, 0x2($s1)
    /* 8F670 8009EE70 00000000 */  nop
    /* 8F674 8009EE74 02004104 */  bgez       $v0, .L8009EE80
    /* 8F678 8009EE78 01000324 */   addiu     $v1, $zero, 0x1
    /* 8F67C 8009EE7C FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8009EE80:
    /* 8F680 8009EE80 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 8F684 8009EE84 00000000 */  nop
    /* 8F688 8009EE88 02004284 */  lh         $v0, 0x2($v0)
    /* 8F68C 8009EE8C 00000000 */  nop
    /* 8F690 8009EE90 06004104 */  bgez       $v0, .L8009EEAC
    /* 8F694 8009EE94 01000224 */   addiu     $v0, $zero, 0x1
    /* 8F698 8009EE98 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8F69C 8009EE9C 05006214 */  bne        $v1, $v0, .L8009EEB4
    /* 8F6A0 8009EEA0 21202002 */   addu      $a0, $s1, $zero
    /* 8F6A4 8009EEA4 C57B0208 */  j          .L8009EF14
    /* 8F6A8 8009EEA8 00000000 */   nop
  .L8009EEAC:
    /* 8F6AC 8009EEAC 19006210 */  beq        $v1, $v0, .L8009EF14
    /* 8F6B0 8009EEB0 21202002 */   addu      $a0, $s1, $zero
  .L8009EEB4:
    /* 8F6B4 8009EEB4 02002286 */  lh         $v0, 0x2($s1)
    /* 8F6B8 8009EEB8 00000000 */  nop
    /* 8F6BC 8009EEBC 02004104 */  bgez       $v0, .L8009EEC8
    /* 8F6C0 8009EEC0 00000000 */   nop
    /* 8F6C4 8009EEC4 23100200 */  negu       $v0, $v0
  .L8009EEC8:
    /* 8F6C8 8009EEC8 00084228 */  slti       $v0, $v0, 0x800
    /* 8F6CC 8009EECC 10004010 */  beqz       $v0, .L8009EF10
    /* 8F6D0 8009EED0 21280000 */   addu      $a1, $zero, $zero
    /* 8F6D4 8009EED4 FC006496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s3)
    /* 8F6D8 8009EED8 28000624 */  addiu      $a2, $zero, 0x28
    /* 8F6DC 8009EEDC 00240400 */  sll        $a0, $a0, 16
    /* 8F6E0 8009EEE0 F969010C */  jal        func_8005A7E4
    /* 8F6E4 8009EEE4 03240400 */   sra       $a0, $a0, 16
    /* 8F6E8 8009EEE8 F8006396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s3)
    /* 8F6EC 8009EEEC 00080524 */  addiu      $a1, $zero, 0x800
    /* 8F6F0 8009EEF0 001C0300 */  sll        $v1, $v1, 16
    /* 8F6F4 8009EEF4 03240300 */  sra        $a0, $v1, 16
    /* 8F6F8 8009EEF8 02008018 */  blez       $a0, .L8009EF04
    /* 8F6FC 8009EEFC FC0062A6 */   sh        $v0, (0x1F8000FC & 0xFFFF)($s3)
    /* 8F700 8009EF00 00F80524 */  addiu      $a1, $zero, -0x800
  .L8009EF04:
    /* 8F704 8009EF04 F969010C */  jal        func_8005A7E4
    /* 8F708 8009EF08 1E000624 */   addiu     $a2, $zero, 0x1E
    /* 8F70C 8009EF0C F80062A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s3)
  .L8009EF10:
    /* 8F710 8009EF10 21202002 */  addu       $a0, $s1, $zero
  .L8009EF14:
    /* 8F714 8009EF14 F8006596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s3)
    /* 8F718 8009EF18 FC006696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s3)
    /* 8F71C 8009EF1C 002C0500 */  sll        $a1, $a1, 16
    /* 8F720 8009EF20 032C0500 */  sra        $a1, $a1, 16
    /* 8F724 8009EF24 00340600 */  sll        $a2, $a2, 16
    /* 8F728 8009EF28 F0A3010C */  jal        func_80068FC0
    /* 8F72C 8009EF2C 03340600 */   sra       $a2, $a2, 16
    /* 8F730 8009EF30 FC026292 */  lbu        $v0, (0x1F8002FC & 0xFFFF)($s3)
    /* 8F734 8009EF34 00000000 */  nop
    /* 8F738 8009EF38 03004014 */  bnez       $v0, .L8009EF48
    /* 8F73C 8009EF3C 00000000 */   nop
    /* 8F740 8009EF40 E20320A2 */  sb         $zero, 0x3E2($s1)
    /* 8F744 8009EF44 E30320A2 */  sb         $zero, 0x3E3($s1)
  .L8009EF48:
    /* 8F748 8009EF48 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8F74C 8009EF4C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8F750 8009EF50 1800B28F */  lw         $s2, 0x18($sp)
    /* 8F754 8009EF54 1400B18F */  lw         $s1, 0x14($sp)
    /* 8F758 8009EF58 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F75C 8009EF5C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8F760 8009EF60 0800E003 */  jr         $ra
    /* 8F764 8009EF64 00000000 */   nop
endlabel func_8009EBC0
