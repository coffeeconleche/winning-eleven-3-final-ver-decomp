nonmatching func_8002F554, 0x174

glabel func_8002F554
    /* 1FD54 8002F554 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1FD58 8002F558 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1FD5C 8002F55C 21888000 */  addu       $s1, $a0, $zero
    /* 1FD60 8002F560 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1FD64 8002F564 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1FD68 8002F568 C2032296 */  lhu        $v0, 0x3C2($s1)
    /* 1FD6C 8002F56C 1080043C */  lui        $a0, %hi(D_800FF748)
    /* 1FD70 8002F570 48F78424 */  addiu      $a0, $a0, %lo(D_800FF748)
    /* 1FD74 8002F574 001C0200 */  sll        $v1, $v0, 16
    /* 1FD78 8002F578 03340300 */  sra        $a2, $v1, 16
    /* 1FD7C 8002F57C 4C00C010 */  beqz       $a2, .L8002F6B0
    /* 1FD80 8002F580 AA2A023C */   lui       $v0, (0x2AAAAAAB >> 16)
    /* 1FD84 8002F584 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 1FD88 8002F588 1800C200 */  mult       $a2, $v0
    /* 1FD8C 8002F58C C31F0300 */  sra        $v1, $v1, 31
    /* 1FD90 8002F590 10400000 */  mfhi       $t0
    /* 1FD94 8002F594 83100800 */  sra        $v0, $t0, 2
    /* 1FD98 8002F598 23104300 */  subu       $v0, $v0, $v1
    /* 1FD9C 8002F59C 40180200 */  sll        $v1, $v0, 1
    /* 1FDA0 8002F5A0 21186200 */  addu       $v1, $v1, $v0
    /* 1FDA4 8002F5A4 C0180300 */  sll        $v1, $v1, 3
    /* 1FDA8 8002F5A8 2318C300 */  subu       $v1, $a2, $v1
    /* 1FDAC 8002F5AC 001C0300 */  sll        $v1, $v1, 16
    /* 1FDB0 8002F5B0 031C0300 */  sra        $v1, $v1, 16
    /* 1FDB4 8002F5B4 40110300 */  sll        $v0, $v1, 5
    /* 1FDB8 8002F5B8 23104300 */  subu       $v0, $v0, $v1
    /* 1FDBC 8002F5BC 80100200 */  sll        $v0, $v0, 2
    /* 1FDC0 8002F5C0 21104300 */  addu       $v0, $v0, $v1
    /* 1FDC4 8002F5C4 C0100200 */  sll        $v0, $v0, 3
    /* 1FDC8 8002F5C8 21804400 */  addu       $s0, $v0, $a0
    /* 1FDCC 8002F5CC 8D030592 */  lbu        $a1, 0x38D($s0)
    /* 1FDD0 8002F5D0 02000686 */  lh         $a2, 0x2($s0)
    /* 1FDD4 8002F5D4 06000786 */  lh         $a3, 0x6($s0)
    /* 1FDD8 8002F5D8 4027020C */  jal        func_80089D00
    /* 1FDDC 8002F5DC 21202002 */   addu      $a0, $s1, $zero
    /* 1FDE0 8002F5E0 9A032292 */  lbu        $v0, 0x39A($s1)
    /* 1FDE4 8002F5E4 00000000 */  nop
    /* 1FDE8 8002F5E8 0E004010 */  beqz       $v0, .L8002F624
    /* 1FDEC 8002F5EC 01000224 */   addiu     $v0, $zero, 0x1
    /* 1FDF0 8002F5F0 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 1FDF4 8002F5F4 00000000 */  nop
    /* 1FDF8 8002F5F8 03006210 */  beq        $v1, $v0, .L8002F608
    /* 1FDFC 8002F5FC 0C000224 */   addiu     $v0, $zero, 0xC
    /* 1FE00 8002F600 09006214 */  bne        $v1, $v0, .L8002F628
    /* 1FE04 8002F604 21200002 */   addu      $a0, $s0, $zero
  .L8002F608:
    /* 1FE08 8002F608 21202002 */  addu       $a0, $s1, $zero
    /* 1FE0C 8002F60C E156010C */  jal        func_80055B84
    /* 1FE10 8002F610 21280002 */   addu      $a1, $s0, $zero
    /* 1FE14 8002F614 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1FE18 8002F618 960302A2 */  sb         $v0, 0x396($s0)
    /* 1FE1C 8002F61C ACBD0008 */  j          .L8002F6B0
    /* 1FE20 8002F620 970300A2 */   sb        $zero, 0x397($s0)
  .L8002F624:
    /* 1FE24 8002F624 21200002 */  addu       $a0, $s0, $zero
  .L8002F628:
    /* 1FE28 8002F628 AE44010C */  jal        func_800512B8
    /* 1FE2C 8002F62C 01000524 */   addiu     $a1, $zero, 0x1
    /* 1FE30 8002F630 C4032386 */  lh         $v1, 0x3C4($s1)
    /* 1FE34 8002F634 00000000 */  nop
    /* 1FE38 8002F638 0500622C */  sltiu      $v0, $v1, 0x5
    /* 1FE3C 8002F63C 1C004010 */  beqz       $v0, .L8002F6B0
    /* 1FE40 8002F640 80100300 */   sll       $v0, $v1, 2
    /* 1FE44 8002F644 0180013C */  lui        $at, %hi(jtbl_80010F48)
    /* 1FE48 8002F648 21082200 */  addu       $at, $at, $v0
    /* 1FE4C 8002F64C 480F228C */  lw         $v0, %lo(jtbl_80010F48)($at)
    /* 1FE50 8002F650 00000000 */  nop
    /* 1FE54 8002F654 08004000 */  jr         $v0
    /* 1FE58 8002F658 00000000 */   nop
  jlabel .L8002F65C
    /* 1FE5C 8002F65C 21202002 */  addu       $a0, $s1, $zero
    /* 1FE60 8002F660 E156010C */  jal        func_80055B84
    /* 1FE64 8002F664 21280002 */   addu      $a1, $s0, $zero
    /* 1FE68 8002F668 0B000224 */  addiu      $v0, $zero, 0xB
    /* 1FE6C 8002F66C 960302A2 */  sb         $v0, 0x396($s0)
    /* 1FE70 8002F670 970300A2 */  sb         $zero, 0x397($s0)
    /* 1FE74 8002F674 ACBD0008 */  j          .L8002F6B0
    /* 1FE78 8002F678 CA0300A6 */   sh        $zero, 0x3CA($s0)
  jlabel .L8002F67C
    /* 1FE7C 8002F67C 0B000224 */  addiu      $v0, $zero, 0xB
    /* 1FE80 8002F680 960302A2 */  sb         $v0, 0x396($s0)
    /* 1FE84 8002F684 01000224 */  addiu      $v0, $zero, 0x1
    /* 1FE88 8002F688 970300A2 */  sb         $zero, 0x397($s0)
    /* 1FE8C 8002F68C ACBD0008 */  j          .L8002F6B0
    /* 1FE90 8002F690 CA0302A6 */   sh        $v0, 0x3CA($s0)
  jlabel .L8002F694
    /* 1FE94 8002F694 21202002 */  addu       $a0, $s1, $zero
    /* 1FE98 8002F698 3557010C */  jal        func_80055CD4
    /* 1FE9C 8002F69C 21280002 */   addu      $a1, $s0, $zero
    /* 1FEA0 8002F6A0 0B000224 */  addiu      $v0, $zero, 0xB
    /* 1FEA4 8002F6A4 960302A2 */  sb         $v0, 0x396($s0)
    /* 1FEA8 8002F6A8 10000224 */  addiu      $v0, $zero, 0x10
    /* 1FEAC 8002F6AC 970302A2 */  sb         $v0, 0x397($s0)
  .L8002F6B0:
    /* 1FEB0 8002F6B0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1FEB4 8002F6B4 1400B18F */  lw         $s1, 0x14($sp)
    /* 1FEB8 8002F6B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 1FEBC 8002F6BC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1FEC0 8002F6C0 0800E003 */  jr         $ra
    /* 1FEC4 8002F6C4 00000000 */   nop
endlabel func_8002F554
