nonmatching func_8002CE60, 0xFC

glabel func_8002CE60
    /* 1D660 8002CE60 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1D664 8002CE64 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1D668 8002CE68 21808000 */  addu       $s0, $a0, $zero
    /* 1D66C 8002CE6C 2110C000 */  addu       $v0, $a2, $zero
    /* 1D670 8002CE70 23184500 */  subu       $v1, $v0, $a1
    /* 1D674 8002CE74 54000524 */  addiu      $a1, $zero, 0x54
    /* 1D678 8002CE78 21300000 */  addu       $a2, $zero, $zero
    /* 1D67C 8002CE7C FF006330 */  andi       $v1, $v1, 0xFF
    /* 1D680 8002CE80 8100632C */  sltiu      $v1, $v1, 0x81
    /* 1D684 8002CE84 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1D688 8002CE88 21884000 */  addu       $s1, $v0, $zero
    /* 1D68C 8002CE8C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1D690 8002CE90 8C6E010C */  jal        func_8005BA30
    /* 1D694 8002CE94 AC0303A2 */   sb        $v1, 0x3AC($s0)
    /* 1D698 8002CE98 AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 1D69C 8002CE9C 00000000 */  nop
    /* 1D6A0 8002CEA0 03004014 */  bnez       $v0, .L8002CEB0
    /* 1D6A4 8002CEA4 FF002332 */   andi      $v1, $s1, 0xFF
    /* 1D6A8 8002CEA8 ADB30008 */  j          .L8002CEB4
    /* 1D6AC 8002CEAC 54006524 */   addiu     $a1, $v1, 0x54
  .L8002CEB0:
    /* 1D6B0 8002CEB0 ACFF6524 */  addiu      $a1, $v1, -0x54
  .L8002CEB4:
    /* 1D6B4 8002CEB4 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 1D6B8 8002CEB8 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 1D6BC 8002CEBC 16B2033C */  lui        $v1, (0xB21642C9 >> 16)
    /* 1D6C0 8002CEC0 0C00478C */  lw         $a3, 0xC($v0)
    /* 1D6C4 8002CEC4 C9426334 */  ori        $v1, $v1, (0xB21642C9 & 0xFFFF)
    /* 1D6C8 8002CEC8 0200E104 */  bgez       $a3, .L8002CED4
    /* 1D6CC 8002CECC 00000000 */   nop
    /* 1D6D0 8002CED0 23380700 */  negu       $a3, $a3
  .L8002CED4:
    /* 1D6D4 8002CED4 23380700 */  negu       $a3, $a3
    /* 1D6D8 8002CED8 1800E300 */  mult       $a3, $v1
    /* 1D6DC 8002CEDC 21200002 */  addu       $a0, $s0, $zero
    /* 1D6E0 8002CEE0 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 1D6E4 8002CEE4 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 1D6E8 8002CEE8 10400000 */  mfhi       $t0
    /* 1D6EC 8002CEEC 21100701 */  addu       $v0, $t0, $a3
    /* 1D6F0 8002CEF0 43120200 */  sra        $v0, $v0, 9
    /* 1D6F4 8002CEF4 C33F0700 */  sra        $a3, $a3, 31
    /* 1D6F8 8002CEF8 3C2C010C */  jal        func_8004B0F0
    /* 1D6FC 8002CEFC 23384700 */   subu      $a3, $v0, $a3
    /* 1D700 8002CF00 052D010C */  jal        func_8004B414
    /* 1D704 8002CF04 00000000 */   nop
    /* 1D708 8002CF08 AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 1D70C 8002CF0C D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 1D710 8002CF10 0C80033C */  lui        $v1, %hi(D_800C6C4B)
    /* 1D714 8002CF14 4B6C6390 */  lbu        $v1, %lo(D_800C6C4B)($v1)
    /* 1D718 8002CF18 03004010 */  beqz       $v0, .L8002CF28
    /* 1D71C 8002CF1C FF002432 */   andi      $a0, $s1, 0xFF
    /* 1D720 8002CF20 CBB30008 */  j          .L8002CF2C
    /* 1D724 8002CF24 23288300 */   subu      $a1, $a0, $v1
  .L8002CF28:
    /* 1D728 8002CF28 21288300 */  addu       $a1, $a0, $v1
  .L8002CF2C:
    /* 1D72C 8002CF2C 21200002 */  addu       $a0, $s0, $zero
    /* 1D730 8002CF30 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 1D734 8002CF34 07000624 */  addiu      $a2, $zero, 0x7
    /* 1D738 8002CF38 7C27010C */  jal        func_80049DF0
    /* 1D73C 8002CF3C 07000724 */   addiu     $a3, $zero, 0x7
    /* 1D740 8002CF40 AB0311A2 */  sb         $s1, 0x3AB($s0)
    /* 1D744 8002CF44 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1D748 8002CF48 1400B18F */  lw         $s1, 0x14($sp)
    /* 1D74C 8002CF4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1D750 8002CF50 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1D754 8002CF54 0800E003 */  jr         $ra
    /* 1D758 8002CF58 00000000 */   nop
endlabel func_8002CE60
