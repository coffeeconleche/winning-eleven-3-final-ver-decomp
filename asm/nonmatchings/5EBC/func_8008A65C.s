nonmatching func_8008A65C, 0xE4

glabel func_8008A65C
    /* 7AE5C 8008A65C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7AE60 8008A660 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7AE64 8008A664 21808000 */  addu       $s0, $a0, $zero
    /* 7AE68 8008A668 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7AE6C 8008A66C 97030392 */  lbu        $v1, 0x397($s0)
    /* 7AE70 8008A670 01000224 */  addiu      $v0, $zero, 0x1
    /* 7AE74 8008A674 10006210 */  beq        $v1, $v0, .L8008A6B8
    /* 7AE78 8008A678 02006228 */   slti      $v0, $v1, 0x2
    /* 7AE7C 8008A67C 05004010 */  beqz       $v0, .L8008A694
    /* 7AE80 8008A680 00000000 */   nop
    /* 7AE84 8008A684 08006010 */  beqz       $v1, .L8008A6A8
    /* 7AE88 8008A688 21200002 */   addu      $a0, $s0, $zero
    /* 7AE8C 8008A68C C9290208 */  j          .L8008A724
    /* 7AE90 8008A690 00000000 */   nop
  .L8008A694:
    /* 7AE94 8008A694 02000224 */  addiu      $v0, $zero, 0x2
    /* 7AE98 8008A698 16006210 */  beq        $v1, $v0, .L8008A6F4
    /* 7AE9C 8008A69C 00000000 */   nop
    /* 7AEA0 8008A6A0 C9290208 */  j          .L8008A724
    /* 7AEA4 8008A6A4 00000000 */   nop
  .L8008A6A8:
    /* 7AEA8 8008A6A8 5C000524 */  addiu      $a1, $zero, 0x5C
    /* 7AEAC 8008A6AC 21300000 */  addu       $a2, $zero, $zero
    /* 7AEB0 8008A6B0 B6290208 */  j          .L8008A6D8
    /* 7AEB4 8008A6B4 D10300A2 */   sb        $zero, 0x3D1($s0)
  .L8008A6B8:
    /* 7AEB8 8008A6B8 476F010C */  jal        func_8005BD1C
    /* 7AEBC 8008A6BC 21200002 */   addu      $a0, $s0, $zero
    /* 7AEC0 8008A6C0 90030292 */  lbu        $v0, 0x390($s0)
    /* 7AEC4 8008A6C4 00000000 */  nop
    /* 7AEC8 8008A6C8 16004014 */  bnez       $v0, .L8008A724
    /* 7AECC 8008A6CC 21200002 */   addu      $a0, $s0, $zero
    /* 7AED0 8008A6D0 67000524 */  addiu      $a1, $zero, 0x67
    /* 7AED4 8008A6D4 15000624 */  addiu      $a2, $zero, 0x15
  .L8008A6D8:
    /* 7AED8 8008A6D8 8C6E010C */  jal        func_8005BA30
    /* 7AEDC 8008A6DC 00000000 */   nop
    /* 7AEE0 8008A6E0 97030292 */  lbu        $v0, 0x397($s0)
    /* 7AEE4 8008A6E4 00000000 */  nop
    /* 7AEE8 8008A6E8 01004224 */  addiu      $v0, $v0, 0x1
    /* 7AEEC 8008A6EC C9290208 */  j          .L8008A724
    /* 7AEF0 8008A6F0 970302A2 */   sb        $v0, 0x397($s0)
  .L8008A6F4:
    /* 7AEF4 8008A6F4 476F010C */  jal        func_8005BD1C
    /* 7AEF8 8008A6F8 21200002 */   addu      $a0, $s0, $zero
    /* 7AEFC 8008A6FC 90030392 */  lbu        $v1, 0x390($s0)
    /* 7AF00 8008A700 23000224 */  addiu      $v0, $zero, 0x23
    /* 7AF04 8008A704 07006214 */  bne        $v1, $v0, .L8008A724
    /* 7AF08 8008A708 21200002 */   addu      $a0, $s0, $zero
    /* 7AF0C 8008A70C 5D000524 */  addiu      $a1, $zero, 0x5D
    /* 7AF10 8008A710 8C6E010C */  jal        func_8005BA30
    /* 7AF14 8008A714 04000624 */   addiu     $a2, $zero, 0x4
    /* 7AF18 8008A718 85000224 */  addiu      $v0, $zero, 0x85
    /* 7AF1C 8008A71C 960302A2 */  sb         $v0, 0x396($s0)
    /* 7AF20 8008A720 970300A2 */  sb         $zero, 0x397($s0)
  .L8008A724:
    /* 7AF24 8008A724 3A55020C */  jal        func_800954E8
    /* 7AF28 8008A728 21200002 */   addu      $a0, $s0, $zero
    /* 7AF2C 8008A72C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7AF30 8008A730 1000B08F */  lw         $s0, 0x10($sp)
    /* 7AF34 8008A734 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7AF38 8008A738 0800E003 */  jr         $ra
    /* 7AF3C 8008A73C 00000000 */   nop
endlabel func_8008A65C
