nonmatching func_8008A8A4, 0x130

glabel func_8008A8A4
    /* 7B0A4 8008A8A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7B0A8 8008A8A8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7B0AC 8008A8AC 21808000 */  addu       $s0, $a0, $zero
    /* 7B0B0 8008A8B0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 7B0B4 8008A8B4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7B0B8 8008A8B8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7B0BC 8008A8BC 97030292 */  lbu        $v0, 0x397($s0)
    /* 7B0C0 8008A8C0 00000000 */  nop
    /* 7B0C4 8008A8C4 09004014 */  bnez       $v0, .L8008A8EC
    /* 7B0C8 8008A8C8 801F123C */   lui       $s2, (0x1F8002F4 >> 16)
    /* 7B0CC 8008A8CC 5E000524 */  addiu      $a1, $zero, 0x5E
    /* 7B0D0 8008A8D0 8C6E010C */  jal        func_8005BA30
    /* 7B0D4 8008A8D4 21300000 */   addu      $a2, $zero, $zero
    /* 7B0D8 8008A8D8 97030292 */  lbu        $v0, 0x397($s0)
    /* 7B0DC 8008A8DC A00300AE */  sw         $zero, 0x3A0($s0)
    /* 7B0E0 8008A8E0 01004224 */  addiu      $v0, $v0, 0x1
    /* 7B0E4 8008A8E4 482A0208 */  j          .L8008A920
    /* 7B0E8 8008A8E8 970302A2 */   sb        $v0, 0x397($s0)
  .L8008A8EC:
    /* 7B0EC 8008A8EC 476F010C */  jal        func_8005BD1C
    /* 7B0F0 8008A8F0 21200002 */   addu      $a0, $s0, $zero
    /* 7B0F4 8008A8F4 90030392 */  lbu        $v1, 0x390($s0)
    /* 7B0F8 8008A8F8 06000224 */  addiu      $v0, $zero, 0x6
    /* 7B0FC 8008A8FC 08006214 */  bne        $v1, $v0, .L8008A920
    /* 7B100 8008A900 00000000 */   nop
    /* 7B104 8008A904 21200002 */  addu       $a0, $s0, $zero
    /* 7B108 8008A908 5A000524 */  addiu      $a1, $zero, 0x5A
    /* 7B10C 8008A90C 8C6E010C */  jal        func_8005BA30
    /* 7B110 8008A910 21300000 */   addu      $a2, $zero, $zero
    /* 7B114 8008A914 82000224 */  addiu      $v0, $zero, 0x82
    /* 7B118 8008A918 960302A2 */  sb         $v0, 0x396($s0)
    /* 7B11C 8008A91C 970300A2 */  sb         $zero, 0x397($s0)
  .L8008A920:
    /* 7B120 8008A920 02000486 */  lh         $a0, 0x2($s0)
    /* 7B124 8008A924 F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 7B128 8008A928 06000586 */  lh         $a1, 0x6($s0)
    /* 7B12C 8008A92C 02004684 */  lh         $a2, 0x2($v0)
    /* 7B130 8008A930 06004784 */  lh         $a3, 0x6($v0)
    /* 7B134 8008A934 DB6C010C */  jal        func_8005B36C
    /* 7B138 8008A938 06001124 */   addiu     $s1, $zero, 0x6
    /* 7B13C 8008A93C FF004430 */  andi       $a0, $v0, 0xFF
    /* 7B140 8008A940 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7B144 8008A944 F36D010C */  jal        func_8005B7CC
    /* 7B148 8008A948 08000624 */   addiu     $a2, $zero, 0x8
    /* 7B14C 8008A94C 21200002 */  addu       $a0, $s0, $zero
    /* 7B150 8008A950 426E010C */  jal        func_8005B908
    /* 7B154 8008A954 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7B158 8008A958 E871010C */  jal        func_8005C7A0
    /* 7B15C 8008A95C 03000424 */   addiu     $a0, $zero, 0x3
    /* 7B160 8008A960 21200002 */  addu       $a0, $s0, $zero
    /* 7B164 8008A964 0C000524 */  addiu      $a1, $zero, 0xC
    /* 7B168 8008A968 21380000 */  addu       $a3, $zero, $zero
    /* 7B16C 8008A96C 00140200 */  sll        $v0, $v0, 16
    /* 7B170 8008A970 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 7B174 8008A974 03140200 */  sra        $v0, $v0, 16
    /* 7B178 8008A978 A4036690 */  lbu        $a2, 0x3A4($v1)
    /* 7B17C 8008A97C 02004224 */  addiu      $v0, $v0, 0x2
    /* 7B180 8008A980 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7B184 8008A984 8000C624 */  addiu      $a2, $a2, 0x80
    /* 7B188 8008A988 8B51020C */  jal        func_8009462C
    /* 7B18C 8008A98C FF00C630 */   andi      $a2, $a2, 0xFF
    /* 7B190 8008A990 3A55020C */  jal        func_800954E8
    /* 7B194 8008A994 21200002 */   addu      $a0, $s0, $zero
    /* 7B198 8008A998 21200002 */  addu       $a0, $s0, $zero
  .L8008A99C:
    /* 7B19C 8008A99C EA2A020C */  jal        func_8008ABA8
    /* 7B1A0 8008A9A0 21282002 */   addu      $a1, $s1, $zero
    /* 7B1A4 8008A9A4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7B1A8 8008A9A8 03004014 */  bnez       $v0, .L8008A9B8
    /* 7B1AC 8008A9AC FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 7B1B0 8008A9B0 FAFF2106 */  bgez       $s1, .L8008A99C
    /* 7B1B4 8008A9B4 21200002 */   addu      $a0, $s0, $zero
  .L8008A9B8:
    /* 7B1B8 8008A9B8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 7B1BC 8008A9BC 2000B28F */  lw         $s2, 0x20($sp)
    /* 7B1C0 8008A9C0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7B1C4 8008A9C4 1800B08F */  lw         $s0, 0x18($sp)
    /* 7B1C8 8008A9C8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7B1CC 8008A9CC 0800E003 */  jr         $ra
    /* 7B1D0 8008A9D0 00000000 */   nop
endlabel func_8008A8A4
