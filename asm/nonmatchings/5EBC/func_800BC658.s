nonmatching func_800BC658, 0xC0

glabel func_800BC658
    /* ACE58 800BC658 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* ACE5C 800BC65C 3800BFAF */  sw         $ra, 0x38($sp)
    /* ACE60 800BC660 21388000 */  addu       $a3, $a0, $zero
    /* ACE64 800BC664 2148A000 */  addu       $t1, $a1, $zero
    /* ACE68 800BC668 00260400 */  sll        $a0, $a0, 24
    /* ACE6C 800BC66C 12008014 */  bnez       $a0, .L800BC6B8
    /* ACE70 800BC670 2140C000 */   addu      $t0, $a2, $zero
    /* ACE74 800BC674 00160500 */  sll        $v0, $a1, 24
    /* ACE78 800BC678 031E0200 */  sra        $v1, $v0, 24
    /* ACE7C 800BC67C 07006014 */  bnez       $v1, .L800BC69C
    /* ACE80 800BC680 01000224 */   addiu     $v0, $zero, 0x1
    /* ACE84 800BC684 00020224 */  addiu      $v0, $zero, 0x200
    /* ACE88 800BC688 1000A2AF */  sw         $v0, 0x10($sp)
    /* ACE8C 800BC68C 00160600 */  sll        $v0, $a2, 24
    /* ACE90 800BC690 03160200 */  sra        $v0, $v0, 24
    /* ACE94 800BC694 2800A2AF */  sw         $v0, 0x28($sp)
    /* ACE98 800BC698 01000224 */  addiu      $v0, $zero, 0x1
  .L800BC69C:
    /* ACE9C 800BC69C 07006214 */  bne        $v1, $v0, .L800BC6BC
    /* ACEA0 800BC6A0 00160700 */   sll       $v0, $a3, 24
    /* ACEA4 800BC6A4 00010224 */  addiu      $v0, $zero, 0x100
    /* ACEA8 800BC6A8 1000A2AF */  sw         $v0, 0x10($sp)
    /* ACEAC 800BC6AC 00160600 */  sll        $v0, $a2, 24
    /* ACEB0 800BC6B0 03160200 */  sra        $v0, $v0, 24
    /* ACEB4 800BC6B4 2400A2AF */  sw         $v0, 0x24($sp)
  .L800BC6B8:
    /* ACEB8 800BC6B8 00160700 */  sll        $v0, $a3, 24
  .L800BC6BC:
    /* ACEBC 800BC6BC 03260200 */  sra        $a0, $v0, 24
    /* ACEC0 800BC6C0 01000224 */  addiu      $v0, $zero, 0x1
    /* ACEC4 800BC6C4 0E008214 */  bne        $a0, $v0, .L800BC700
    /* ACEC8 800BC6C8 00160900 */   sll       $v0, $t1, 24
    /* ACECC 800BC6CC 031E0200 */  sra        $v1, $v0, 24
    /* ACED0 800BC6D0 05006014 */  bnez       $v1, .L800BC6E8
    /* ACED4 800BC6D4 00200224 */   addiu     $v0, $zero, 0x2000
    /* ACED8 800BC6D8 1000A2AF */  sw         $v0, 0x10($sp)
    /* ACEDC 800BC6DC 00160800 */  sll        $v0, $t0, 24
    /* ACEE0 800BC6E0 03160200 */  sra        $v0, $v0, 24
    /* ACEE4 800BC6E4 3400A2AF */  sw         $v0, 0x34($sp)
  .L800BC6E8:
    /* ACEE8 800BC6E8 05006414 */  bne        $v1, $a0, .L800BC700
    /* ACEEC 800BC6EC 00100224 */   addiu     $v0, $zero, 0x1000
    /* ACEF0 800BC6F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* ACEF4 800BC6F4 00160800 */  sll        $v0, $t0, 24
    /* ACEF8 800BC6F8 03160200 */  sra        $v0, $v0, 24
    /* ACEFC 800BC6FC 3000A2AF */  sw         $v0, 0x30($sp)
  .L800BC700:
    /* ACF00 800BC700 F20F030C */  jal        func_800C3FC8
    /* ACF04 800BC704 1000A427 */   addiu     $a0, $sp, 0x10
    /* ACF08 800BC708 3800BF8F */  lw         $ra, 0x38($sp)
    /* ACF0C 800BC70C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* ACF10 800BC710 0800E003 */  jr         $ra
    /* ACF14 800BC714 00000000 */   nop
endlabel func_800BC658
