nonmatching func_8003F560, 0x244

glabel func_8003F560
    /* 2FD60 8003F560 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FD64 8003F564 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FD68 8003F568 21808000 */  addu       $s0, $a0, $zero
    /* 2FD6C 8003F56C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2FD70 8003F570 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FD74 8003F574 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 2FD78 8003F578 00000000 */  nop
    /* 2FD7C 8003F57C 82004010 */  beqz       $v0, .L8003F788
    /* 2FD80 8003F580 801F113C */   lui       $s1, (0x1F800328 >> 16)
    /* 2FD84 8003F584 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 2FD88 8003F588 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 2FD8C 8003F58C 00000000 */  nop
    /* 2FD90 8003F590 7E004010 */  beqz       $v0, .L8003F78C
    /* 2FD94 8003F594 21100000 */   addu      $v0, $zero, $zero
    /* 2FD98 8003F598 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 2FD9C 8003F59C F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 2FDA0 8003F5A0 00000000 */  nop
    /* 2FDA4 8003F5A4 04006284 */  lh         $v0, 0x4($v1)
    /* 2FDA8 8003F5A8 00000000 */  nop
    /* 2FDAC 8003F5AC 60FF4228 */  slti       $v0, $v0, -0xA0
    /* 2FDB0 8003F5B0 76004014 */  bnez       $v0, .L8003F78C
    /* 2FDB4 8003F5B4 21100000 */   addu      $v0, $zero, $zero
    /* 2FDB8 8003F5B8 99030292 */  lbu        $v0, 0x399($s0)
    /* 2FDBC 8003F5BC 02006384 */  lh         $v1, 0x2($v1)
    /* 2FDC0 8003F5C0 02004014 */  bnez       $v0, .L8003F5CC
    /* 2FDC4 8003F5C4 23280300 */   negu      $a1, $v1
    /* 2FDC8 8003F5C8 21286000 */  addu       $a1, $v1, $zero
  .L8003F5CC:
    /* 2FDCC 8003F5CC 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* 2FDD0 8003F5D0 9002248E */  lw         $a0, (0x1F800290 & 0xFFFF)($s1)
    /* 2FDD4 8003F5D4 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 2FDD8 8003F5D8 18008200 */  mult       $a0, $v0
    /* 2FDDC 8003F5DC C3170400 */  sra        $v0, $a0, 31
    /* 2FDE0 8003F5E0 10480000 */  mfhi       $t1
    /* 2FDE4 8003F5E4 43180900 */  sra        $v1, $t1, 1
    /* 2FDE8 8003F5E8 23186200 */  subu       $v1, $v1, $v0
    /* 2FDEC 8003F5EC 80100300 */  sll        $v0, $v1, 2
    /* 2FDF0 8003F5F0 21104300 */  addu       $v0, $v0, $v1
    /* 2FDF4 8003F5F4 65008214 */  bne        $a0, $v0, .L8003F78C
    /* 2FDF8 8003F5F8 21100000 */   addu      $v0, $zero, $zero
    /* 2FDFC 8003F5FC 28032292 */  lbu        $v0, (0x1F800328 & 0xFFFF)($s1)
    /* 2FE00 8003F600 00000000 */  nop
    /* 2FE04 8003F604 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2FE08 8003F608 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FE0C 8003F60C 07006210 */  beq        $v1, $v0, .L8003F62C
    /* 2FE10 8003F610 02006228 */   slti      $v0, $v1, 0x2
    /* 2FE14 8003F614 12004010 */  beqz       $v0, .L8003F660
    /* 2FE18 8003F618 00000000 */   nop
    /* 2FE1C 8003F61C 11006014 */  bnez       $v1, .L8003F664
    /* 2FE20 8003F620 00140500 */   sll       $v0, $a1, 16
    /* 2FE24 8003F624 E3FD0008 */  j          .L8003F78C
    /* 2FE28 8003F628 21100000 */   addu      $v0, $zero, $zero
  .L8003F62C:
    /* 2FE2C 8003F62C 00140500 */  sll        $v0, $a1, 16
    /* 2FE30 8003F630 03140200 */  sra        $v0, $v0, 16
    /* 2FE34 8003F634 00F04228 */  slti       $v0, $v0, -0x1000
    /* 2FE38 8003F638 02004010 */  beqz       $v0, .L8003F644
    /* 2FE3C 8003F63C 0A000424 */   addiu     $a0, $zero, 0xA
    /* 2FE40 8003F640 14000424 */  addiu      $a0, $zero, 0x14
  .L8003F644:
    /* 2FE44 8003F644 CC79000C */  jal        func_8001E730
    /* 2FE48 8003F648 00000000 */   nop
    /* 2FE4C 8003F64C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FE50 8003F650 0A004014 */  bnez       $v0, .L8003F67C
    /* 2FE54 8003F654 21100000 */   addu      $v0, $zero, $zero
    /* 2FE58 8003F658 E3FD0008 */  j          .L8003F78C
    /* 2FE5C 8003F65C 00000000 */   nop
  .L8003F660:
    /* 2FE60 8003F660 00140500 */  sll        $v0, $a1, 16
  .L8003F664:
    /* 2FE64 8003F664 03140200 */  sra        $v0, $v0, 16
    /* 2FE68 8003F668 00F04228 */  slti       $v0, $v0, -0x1000
    /* 2FE6C 8003F66C F5FF4010 */  beqz       $v0, .L8003F644
    /* 2FE70 8003F670 14000424 */   addiu     $a0, $zero, 0x14
    /* 2FE74 8003F674 91FD0008 */  j          .L8003F644
    /* 2FE78 8003F678 28000424 */   addiu     $a0, $zero, 0x28
  .L8003F67C:
    /* 2FE7C 8003F67C F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 2FE80 8003F680 02000486 */  lh         $a0, 0x2($s0)
    /* 2FE84 8003F684 02006684 */  lh         $a2, 0x2($v1)
    /* 2FE88 8003F688 00000000 */  nop
    /* 2FE8C 8003F68C 23108600 */  subu       $v0, $a0, $a2
    /* 2FE90 8003F690 18004200 */  mult       $v0, $v0
    /* 2FE94 8003F694 06000586 */  lh         $a1, 0x6($s0)
    /* 2FE98 8003F698 06006884 */  lh         $t0, 0x6($v1)
    /* 2FE9C 8003F69C 12380000 */  mflo       $a3
    /* 2FEA0 8003F6A0 2310A800 */  subu       $v0, $a1, $t0
    /* 2FEA4 8003F6A4 00000000 */  nop
    /* 2FEA8 8003F6A8 18004200 */  mult       $v0, $v0
    /* 2FEAC 8003F6AC 0600023C */  lui        $v0, (0x64000 >> 16)
    /* 2FEB0 8003F6B0 00404234 */  ori        $v0, $v0, (0x64000 & 0xFFFF)
    /* 2FEB4 8003F6B4 12180000 */  mflo       $v1
    /* 2FEB8 8003F6B8 2118E300 */  addu       $v1, $a3, $v1
    /* 2FEBC 8003F6BC 2A104300 */  slt        $v0, $v0, $v1
    /* 2FEC0 8003F6C0 32004014 */  bnez       $v0, .L8003F78C
    /* 2FEC4 8003F6C4 21100000 */   addu      $v0, $zero, $zero
    /* 2FEC8 8003F6C8 DB6C010C */  jal        func_8005B36C
    /* 2FECC 8003F6CC 21380001 */   addu      $a3, $t0, $zero
    /* 2FED0 8003F6D0 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 2FED4 8003F6D4 21184000 */  addu       $v1, $v0, $zero
    /* 2FED8 8003F6D8 23106500 */  subu       $v0, $v1, $a1
    /* 2FEDC 8003F6DC FF004430 */  andi       $a0, $v0, 0xFF
    /* 2FEE0 8003F6E0 8100822C */  sltiu      $v0, $a0, 0x81
    /* 2FEE4 8003F6E4 04004014 */  bnez       $v0, .L8003F6F8
    /* 2FEE8 8003F6E8 2310A300 */   subu      $v0, $a1, $v1
    /* 2FEEC 8003F6EC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FEF0 8003F6F0 BFFD0008 */  j          .L8003F6FC
    /* 2FEF4 8003F6F4 21004228 */   slti      $v0, $v0, 0x21
  .L8003F6F8:
    /* 2FEF8 8003F6F8 21008228 */  slti       $v0, $a0, 0x21
  .L8003F6FC:
    /* 2FEFC 8003F6FC 23004010 */  beqz       $v0, .L8003F78C
    /* 2FF00 8003F700 21100000 */   addu      $v0, $zero, $zero
    /* 2FF04 8003F704 F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 2FF08 8003F708 00000000 */  nop
    /* 2FF0C 8003F70C A4034590 */  lbu        $a1, 0x3A4($v0)
    /* 2FF10 8003F710 00000000 */  nop
    /* 2FF14 8003F714 23206500 */  subu       $a0, $v1, $a1
    /* 2FF18 8003F718 FF008230 */  andi       $v0, $a0, 0xFF
    /* 2FF1C 8003F71C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2FF20 8003F720 02004010 */  beqz       $v0, .L8003F72C
    /* 2FF24 8003F724 2318A300 */   subu      $v1, $a1, $v1
    /* 2FF28 8003F728 21188000 */  addu       $v1, $a0, $zero
  .L8003F72C:
    /* 2FF2C 8003F72C A9022292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s1)
    /* 2FF30 8003F730 00000000 */  nop
    /* 2FF34 8003F734 06004010 */  beqz       $v0, .L8003F750
    /* 2FF38 8003F738 FF006230 */   andi      $v0, $v1, 0xFF
    /* 2FF3C 8003F73C 4100422C */  sltiu      $v0, $v0, 0x41
    /* 2FF40 8003F740 12004014 */  bnez       $v0, .L8003F78C
    /* 2FF44 8003F744 21100000 */   addu      $v0, $zero, $zero
    /* 2FF48 8003F748 DEFD0008 */  j          .L8003F778
    /* 2FF4C 8003F74C 01000224 */   addiu     $v0, $zero, 0x1
  .L8003F750:
    /* 2FF50 8003F750 6000422C */  sltiu      $v0, $v0, 0x60
    /* 2FF54 8003F754 0D004010 */  beqz       $v0, .L8003F78C
    /* 2FF58 8003F758 21100000 */   addu      $v0, $zero, $zero
    /* 2FF5C 8003F75C F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 2FF60 8003F760 00000000 */  nop
    /* 2FF64 8003F764 A003438C */  lw         $v1, 0x3A0($v0)
    /* 2FF68 8003F768 00A00234 */  ori        $v0, $zero, 0xA000
    /* 2FF6C 8003F76C 2B104300 */  sltu       $v0, $v0, $v1
    /* 2FF70 8003F770 05004010 */  beqz       $v0, .L8003F788
    /* 2FF74 8003F774 01000224 */   addiu     $v0, $zero, 0x1
  .L8003F778:
    /* 2FF78 8003F778 0D000324 */  addiu      $v1, $zero, 0xD
    /* 2FF7C 8003F77C 960303A2 */  sb         $v1, 0x396($s0)
    /* 2FF80 8003F780 E3FD0008 */  j          .L8003F78C
    /* 2FF84 8003F784 970300A2 */   sb        $zero, 0x397($s0)
  .L8003F788:
    /* 2FF88 8003F788 21100000 */  addu       $v0, $zero, $zero
  .L8003F78C:
    /* 2FF8C 8003F78C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2FF90 8003F790 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FF94 8003F794 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FF98 8003F798 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2FF9C 8003F79C 0800E003 */  jr         $ra
    /* 2FFA0 8003F7A0 00000000 */   nop
endlabel func_8003F560
