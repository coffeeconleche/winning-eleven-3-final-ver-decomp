nonmatching func_8001F53C, 0x288

glabel func_8001F53C
    /* FD3C 8001F53C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* FD40 8001F540 3800B2AF */  sw         $s2, 0x38($sp)
    /* FD44 8001F544 801F123C */  lui        $s2, (0x1F8002B4 >> 16)
    /* FD48 8001F548 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* FD4C 8001F54C 1080133C */  lui        $s3, %hi(D_800FF748)
    /* FD50 8001F550 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* FD54 8001F554 3400B1AF */  sw         $s1, 0x34($sp)
    /* FD58 8001F558 E8037126 */  addiu      $s1, $s3, 0x3E8
    /* FD5C 8001F55C 3000B0AF */  sw         $s0, 0x30($sp)
    /* FD60 8001F560 21800000 */  addu       $s0, $zero, $zero
    /* FD64 8001F564 4000BFAF */  sw         $ra, 0x40($sp)
  .L8001F568:
    /* FD68 8001F568 01000226 */  addiu      $v0, $s0, 0x1
    /* FD6C 8001F56C 8D0322A2 */  sb         $v0, 0x38D($s1)
    /* FD70 8001F570 21804000 */  addu       $s0, $v0, $zero
    /* FD74 8001F574 1600022A */  slti       $v0, $s0, 0x16
    /* FD78 8001F578 FBFF4014 */  bnez       $v0, .L8001F568
    /* FD7C 8001F57C E8033126 */   addiu     $s1, $s1, 0x3E8
    /* FD80 8001F580 CA87000C */  jal        func_80021F28
    /* FD84 8001F584 21800000 */   addu      $s0, $zero, $zero
    /* FD88 8001F588 FF000624 */  addiu      $a2, $zero, 0xFF
    /* FD8C 8001F58C 01000524 */  addiu      $a1, $zero, 0x1
    /* FD90 8001F590 21205002 */  addu       $a0, $s2, $s0
  .L8001F594:
    /* FD94 8001F594 AA0286A0 */  sb         $a2, (0x1F8002AA & 0xFFFF)($a0)
    /* FD98 8001F598 DF024292 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($s2)
    /* FD9C 8001F59C 00000000 */  nop
    /* FDA0 8001F5A0 09004014 */  bnez       $v0, .L8001F5C8
    /* FDA4 8001F5A4 00000000 */   nop
    /* FDA8 8001F5A8 D1024392 */  lbu        $v1, (0x1F8002D1 & 0xFFFF)($s2)
    /* FDAC 8001F5AC D2024292 */  lbu        $v0, (0x1F8002D2 & 0xFFFF)($s2)
    /* FDB0 8001F5B0 00000000 */  nop
    /* FDB4 8001F5B4 21104300 */  addu       $v0, $v0, $v1
    /* FDB8 8001F5B8 03004014 */  bnez       $v0, .L8001F5C8
    /* FDBC 8001F5BC 00000000 */   nop
    /* FDC0 8001F5C0 050380A0 */  sb         $zero, (0x1F800305 & 0xFFFF)($a0)
    /* FDC4 8001F5C4 FF0285A0 */  sb         $a1, (0x1F8002FF & 0xFFFF)($a0)
  .L8001F5C8:
    /* FDC8 8001F5C8 01001026 */  addiu      $s0, $s0, 0x1
    /* FDCC 8001F5CC 0200022A */  slti       $v0, $s0, 0x2
    /* FDD0 8001F5D0 F0FF4014 */  bnez       $v0, .L8001F594
    /* FDD4 8001F5D4 21205002 */   addu      $a0, $s2, $s0
    /* FDD8 8001F5D8 877E000C */  jal        func_8001FA1C
    /* FDDC 8001F5DC F82A7126 */   addiu     $s1, $s3, 0x2AF8
    /* FDE0 8001F5E0 21200000 */  addu       $a0, $zero, $zero
    /* FDE4 8001F5E4 40000524 */  addiu      $a1, $zero, 0x40
    /* FDE8 8001F5E8 21300000 */  addu       $a2, $zero, $zero
    /* FDEC 8001F5EC 21380000 */  addu       $a3, $zero, $zero
    /* FDF0 8001F5F0 C0000224 */  addiu      $v0, $zero, 0xC0
    /* FDF4 8001F5F4 1400A2AF */  sw         $v0, 0x14($sp)
    /* FDF8 8001F5F8 CC0C0224 */  addiu      $v0, $zero, 0xCCC
    /* FDFC 8001F5FC 1800A2AF */  sw         $v0, 0x18($sp)
    /* FE00 8001F600 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* FE04 8001F604 2000A2AF */  sw         $v0, 0x20($sp)
    /* FE08 8001F608 01000224 */  addiu      $v0, $zero, 0x1
    /* FE0C 8001F60C 1000A0AF */  sw         $zero, 0x10($sp)
    /* FE10 8001F610 5374000C */  jal        func_8001D14C
    /* FE14 8001F614 2400A2AF */   sw        $v0, 0x24($sp)
    /* FE18 8001F618 0B001024 */  addiu      $s0, $zero, 0xB
    /* FE1C 8001F61C F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* FE20 8001F620 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* FE24 8001F624 040062A4 */  sh         $v0, 0x4($v1)
    /* FE28 8001F628 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* FE2C 8001F62C 01000224 */  addiu      $v0, $zero, 0x1
    /* FE30 8001F630 D30362A0 */  sb         $v0, 0x3D3($v1)
    /* FE34 8001F634 2800A0A3 */  sb         $zero, 0x28($sp)
  .L8001F638:
    /* FE38 8001F638 00002292 */  lbu        $v0, 0x0($s1)
    /* FE3C 8001F63C 00000000 */  nop
    /* FE40 8001F640 07004010 */  beqz       $v0, .L8001F660
    /* FE44 8001F644 21202002 */   addu      $a0, $s1, $zero
    /* FE48 8001F648 2800A527 */  addiu      $a1, $sp, 0x28
    /* FE4C 8001F64C A8024692 */  lbu        $a2, (0x1F8002A8 & 0xFFFF)($s2)
    /* FE50 8001F650 FF000732 */  andi       $a3, $s0, 0xFF
    /* FE54 8001F654 0C00C62C */  sltiu      $a2, $a2, 0xC
    /* FE58 8001F658 9A86000C */  jal        func_80021A68
    /* FE5C 8001F65C 0100C638 */   xori      $a2, $a2, 0x1
  .L8001F660:
    /* FE60 8001F660 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* FE64 8001F664 F4FF001E */  bgtz       $s0, .L8001F638
    /* FE68 8001F668 18FC3126 */   addiu     $s1, $s1, -0x3E8
    /* FE6C 8001F66C F0557126 */  addiu      $s1, $s3, 0x55F0
    /* FE70 8001F670 0B001024 */  addiu      $s0, $zero, 0xB
    /* FE74 8001F674 2800A0A3 */  sb         $zero, 0x28($sp)
  .L8001F678:
    /* FE78 8001F678 00002292 */  lbu        $v0, 0x0($s1)
    /* FE7C 8001F67C 00000000 */  nop
    /* FE80 8001F680 06004010 */  beqz       $v0, .L8001F69C
    /* FE84 8001F684 21202002 */   addu      $a0, $s1, $zero
    /* FE88 8001F688 2800A527 */  addiu      $a1, $sp, 0x28
    /* FE8C 8001F68C A8024692 */  lbu        $a2, (0x1F8002A8 & 0xFFFF)($s2)
    /* FE90 8001F690 FF000732 */  andi       $a3, $s0, 0xFF
    /* FE94 8001F694 9A86000C */  jal        func_80021A68
    /* FE98 8001F698 0C00C62C */   sltiu     $a2, $a2, 0xC
  .L8001F69C:
    /* FE9C 8001F69C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* FEA0 8001F6A0 F5FF001E */  bgtz       $s0, .L8001F678
    /* FEA4 8001F6A4 18FC3126 */   addiu     $s1, $s1, -0x3E8
    /* FEA8 8001F6A8 F69A010C */  jal        func_80066BD8
    /* FEAC 8001F6AC 02000424 */   addiu     $a0, $zero, 0x2
    /* FEB0 8001F6B0 F69A010C */  jal        func_80066BD8
    /* FEB4 8001F6B4 0D000424 */   addiu     $a0, $zero, 0xD
    /* FEB8 8001F6B8 AD024392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s2)
    /* FEBC 8001F6BC AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* FEC0 8001F6C0 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* FEC4 8001F6C4 FF006330 */  andi       $v1, $v1, 0xFF
    /* FEC8 8001F6C8 19006200 */  multu      $v1, $v0
    /* FECC 8001F6CC 03000524 */  addiu      $a1, $zero, 0x3
    /* FED0 8001F6D0 10400000 */  mfhi       $t0
    /* FED4 8001F6D4 02210800 */  srl        $a0, $t0, 4
    /* FED8 8001F6D8 40100400 */  sll        $v0, $a0, 1
    /* FEDC 8001F6DC 21104400 */  addu       $v0, $v0, $a0
    /* FEE0 8001F6E0 C0100200 */  sll        $v0, $v0, 3
    /* FEE4 8001F6E4 23186200 */  subu       $v1, $v1, $v0
    /* FEE8 8001F6E8 FF006330 */  andi       $v1, $v1, 0xFF
    /* FEEC 8001F6EC 40210300 */  sll        $a0, $v1, 5
    /* FEF0 8001F6F0 23208300 */  subu       $a0, $a0, $v1
    /* FEF4 8001F6F4 80200400 */  sll        $a0, $a0, 2
    /* FEF8 8001F6F8 21208300 */  addu       $a0, $a0, $v1
    /* FEFC 8001F6FC C0200400 */  sll        $a0, $a0, 3
    /* FF00 8001F700 AE44010C */  jal        func_800512B8
    /* FF04 8001F704 21206402 */   addu      $a0, $s3, $a0
    /* FF08 8001F708 E1024392 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($s2)
    /* FF0C 8001F70C FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* FF10 8001F710 B80242A6 */  sh         $v0, (0x1F8002B8 & 0xFFFF)($s2)
    /* FF14 8001F714 B40242A6 */  sh         $v0, (0x1F8002B4 & 0xFFFF)($s2)
    /* FF18 8001F718 05000224 */  addiu      $v0, $zero, 0x5
    /* FF1C 8001F71C FF006330 */  andi       $v1, $v1, 0xFF
    /* FF20 8001F720 0E006214 */  bne        $v1, $v0, .L8001F75C
    /* FF24 8001F724 11000424 */   addiu     $a0, $zero, 0x11
    /* FF28 8001F728 09000524 */  addiu      $a1, $zero, 0x9
    /* FF2C 8001F72C 21300000 */  addu       $a2, $zero, $zero
    /* FF30 8001F730 21380000 */  addu       $a3, $zero, $zero
    /* FF34 8001F734 C0000224 */  addiu      $v0, $zero, 0xC0
    /* FF38 8001F738 1000A2AF */  sw         $v0, 0x10($sp)
    /* FF3C 8001F73C 00100224 */  addiu      $v0, $zero, 0x1000
    /* FF40 8001F740 1400A2AF */  sw         $v0, 0x14($sp)
    /* FF44 8001F744 1800A2AF */  sw         $v0, 0x18($sp)
    /* FF48 8001F748 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* FF4C 8001F74C 1C75000C */  jal        func_8001D470
    /* FF50 8001F750 2000A0AF */   sw        $zero, 0x20($sp)
    /* FF54 8001F754 D97D0008 */  j          .L8001F764
    /* FF58 8001F758 00000000 */   nop
  .L8001F75C:
    /* FF5C 8001F75C 226E020C */  jal        func_8009B888
    /* FF60 8001F760 00000000 */   nop
  .L8001F764:
    /* FF64 8001F764 796B010C */  jal        func_8005ADE4
    /* FF68 8001F768 00000000 */   nop
    /* FF6C 8001F76C 6B6F020C */  jal        func_8009BDAC
    /* FF70 8001F770 00000000 */   nop
    /* FF74 8001F774 756B020C */  jal        func_8009ADD4
    /* FF78 8001F778 00000000 */   nop
    /* FF7C 8001F77C C867020C */  jal        func_80099F20
    /* FF80 8001F780 21200000 */   addu      $a0, $zero, $zero
    /* FF84 8001F784 0A61020C */  jal        func_80098428
    /* FF88 8001F788 00000000 */   nop
    /* FF8C 8001F78C 0F80103C */  lui        $s0, %hi(D_800E8208)
    /* FF90 8001F790 08821026 */  addiu      $s0, $s0, %lo(D_800E8208)
    /* FF94 8001F794 DF7F000C */  jal        func_8001FF7C
    /* FF98 8001F798 21200002 */   addu      $a0, $s0, $zero
    /* FF9C 8001F79C DF7F000C */  jal        func_8001FF7C
    /* FFA0 8001F7A0 C03A0426 */   addiu     $a0, $s0, 0x3AC0
    /* FFA4 8001F7A4 4000BF8F */  lw         $ra, 0x40($sp)
    /* FFA8 8001F7A8 3C00B38F */  lw         $s3, 0x3C($sp)
    /* FFAC 8001F7AC 3800B28F */  lw         $s2, 0x38($sp)
    /* FFB0 8001F7B0 3400B18F */  lw         $s1, 0x34($sp)
    /* FFB4 8001F7B4 3000B08F */  lw         $s0, 0x30($sp)
    /* FFB8 8001F7B8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* FFBC 8001F7BC 0800E003 */  jr         $ra
    /* FFC0 8001F7C0 00000000 */   nop
endlabel func_8001F53C
