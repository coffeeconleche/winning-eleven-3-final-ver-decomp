nonmatching func_800BCEF8, 0x148

glabel func_800BCEF8
    /* AD6F8 800BCEF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AD6FC 800BCEFC 21108000 */  addu       $v0, $a0, $zero
    /* AD700 800BCF00 2118A000 */  addu       $v1, $a1, $zero
    /* AD704 800BCF04 02420300 */  srl        $t0, $v1, 8
    /* AD708 800BCF08 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* AD70C 800BCF0C FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* AD710 800BCF10 00220200 */  sll        $a0, $v0, 8
    /* AD714 800BCF14 03240400 */  sra        $a0, $a0, 16
    /* AD718 800BCF18 FF004530 */  andi       $a1, $v0, 0xFF
    /* AD71C 800BCF1C 1000A6AF */  sw         $a2, 0x10($sp)
    /* AD720 800BCF20 FFFF0631 */  andi       $a2, $t0, 0xFFFF
    /* AD724 800BCF24 1400A7AF */  sw         $a3, 0x14($sp)
    /* AD728 800BCF28 1800BFAF */  sw         $ra, 0x18($sp)
    /* AD72C 800BCF2C D9FC020C */  jal        func_800BF364
    /* AD730 800BCF30 FF006730 */   andi      $a3, $v1, 0xFF
    /* AD734 800BCF34 1800BF8F */  lw         $ra, 0x18($sp)
    /* AD738 800BCF38 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AD73C 800BCF3C 0800E003 */  jr         $ra
    /* AD740 800BCF40 00000000 */   nop
    /* AD744 800BCF44 00000000 */  nop
    /* AD748 800BCF48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD74C 800BCF4C 21408000 */  addu       $t0, $a0, $zero
    /* AD750 800BCF50 2148C000 */  addu       $t1, $a2, $zero
    /* AD754 800BCF54 00240800 */  sll        $a0, $t0, 16
    /* AD758 800BCF58 83230400 */  sra        $a0, $a0, 14
    /* AD75C 800BCF5C 001C0500 */  sll        $v1, $a1, 16
    /* AD760 800BCF60 031C0300 */  sra        $v1, $v1, 16
    /* AD764 800BCF64 40100300 */  sll        $v0, $v1, 1
    /* AD768 800BCF68 21104300 */  addu       $v0, $v0, $v1
    /* AD76C 800BCF6C 80100200 */  sll        $v0, $v0, 2
    /* AD770 800BCF70 23104300 */  subu       $v0, $v0, $v1
    /* AD774 800BCF74 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD778 800BCF78 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* AD77C 800BCF7C 21186400 */  addu       $v1, $v1, $a0
    /* AD780 800BCF80 A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* AD784 800BCF84 00110200 */  sll        $v0, $v0, 4
    /* AD788 800BCF88 21206200 */  addu       $a0, $v1, $v0
    /* AD78C 800BCF8C 9800838C */  lw         $v1, 0x98($a0)
    /* AD790 800BCF90 01000224 */  addiu      $v0, $zero, 0x1
    /* AD794 800BCF94 04006210 */  beq        $v1, $v0, .L800BCFA8
    /* AD798 800BCF98 2150E000 */   addu      $t2, $a3, $zero
    /* AD79C 800BCF9C 580086A4 */  sh         $a2, 0x58($a0)
    /* AD7A0 800BCFA0 F2F30208 */  j          .L800BCFC8
    /* AD7A4 800BCFA4 5A0087A4 */   sh        $a3, 0x5A($a0)
  .L800BCFA8:
    /* AD7A8 800BCFA8 00220500 */  sll        $a0, $a1, 8
    /* AD7AC 800BCFAC 25200401 */  or         $a0, $t0, $a0
    /* AD7B0 800BCFB0 00240400 */  sll        $a0, $a0, 16
    /* AD7B4 800BCFB4 03240400 */  sra        $a0, $a0, 16
    /* AD7B8 800BCFB8 FFFF2531 */  andi       $a1, $t1, 0xFFFF
    /* AD7BC 800BCFBC FFFF4631 */  andi       $a2, $t2, 0xFFFF
    /* AD7C0 800BCFC0 AE00030C */  jal        func_800C02B8
    /* AD7C4 800BCFC4 01000724 */   addiu     $a3, $zero, 0x1
  .L800BCFC8:
    /* AD7C8 800BCFC8 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD7CC 800BCFCC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD7D0 800BCFD0 0800E003 */  jr         $ra
    /* AD7D4 800BCFD4 00000000 */   nop
    /* AD7D8 800BCFD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD7DC 800BCFDC 2140C000 */  addu       $t0, $a2, $zero
    /* AD7E0 800BCFE0 2148A000 */  addu       $t1, $a1, $zero
    /* AD7E4 800BCFE4 00240400 */  sll        $a0, $a0, 16
    /* AD7E8 800BCFE8 03240400 */  sra        $a0, $a0, 16
    /* AD7EC 800BCFEC 80100400 */  sll        $v0, $a0, 2
    /* AD7F0 800BCFF0 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD7F4 800BCFF4 1180073C */  lui        $a3, %hi(D_8010C2A8)
    /* AD7F8 800BCFF8 2138E200 */  addu       $a3, $a3, $v0
    /* AD7FC 800BCFFC A8C2E78C */  lw         $a3, %lo(D_8010C2A8)($a3)
    /* AD800 800BD000 00000000 */  nop
    /* AD804 800BD004 9800E38C */  lw         $v1, 0x98($a3)
    /* AD808 800BD008 01000224 */  addiu      $v0, $zero, 0x1
    /* AD80C 800BD00C 04006210 */  beq        $v1, $v0, .L800BD020
    /* AD810 800BD010 21300001 */   addu      $a2, $t0, $zero
    /* AD814 800BD014 5800E5A4 */  sh         $a1, 0x58($a3)
    /* AD818 800BD018 0CF40208 */  j          .L800BD030
    /* AD81C 800BD01C 5A00E8A4 */   sh        $t0, 0x5A($a3)
  .L800BD020:
    /* AD820 800BD020 FFFF2531 */  andi       $a1, $t1, 0xFFFF
    /* AD824 800BD024 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* AD828 800BD028 AE00030C */  jal        func_800C02B8
    /* AD82C 800BD02C 01000724 */   addiu     $a3, $zero, 0x1
  .L800BD030:
    /* AD830 800BD030 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD834 800BD034 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD838 800BD038 0800E003 */  jr         $ra
    /* AD83C 800BD03C 00000000 */   nop
endlabel func_800BCEF8
