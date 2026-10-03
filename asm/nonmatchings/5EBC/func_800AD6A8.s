nonmatching func_800AD6A8, 0x150

glabel func_800AD6A8
    /* 9DEA8 800AD6A8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 9DEAC 800AD6AC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 9DEB0 800AD6B0 21A8A000 */  addu       $s5, $a1, $zero
    /* 9DEB4 800AD6B4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9DEB8 800AD6B8 2198C000 */  addu       $s3, $a2, $zero
    /* 9DEBC 800AD6BC 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 9DEC0 800AD6C0 21B8E000 */  addu       $s7, $a3, $zero
    /* 9DEC4 800AD6C4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 9DEC8 800AD6C8 21A08000 */  addu       $s4, $a0, $zero
    /* 9DECC 800AD6CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9DED0 800AD6D0 21909302 */  addu       $s2, $s4, $s3
    /* 9DED4 800AD6D4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 9DED8 800AD6D8 21B00000 */  addu       $s6, $zero, $zero
    /* 9DEDC 800AD6DC 0200A22E */  sltiu      $v0, $s5, 0x2
    /* 9DEE0 800AD6E0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 9DEE4 800AD6E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9DEE8 800AD6E8 38004014 */  bnez       $v0, .L800AD7CC
    /* 9DEEC 800AD6EC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 9DEF0 800AD6F0 02000224 */  addiu      $v0, $zero, 0x2
    /* 9DEF4 800AD6F4 0A00A216 */  bne        $s5, $v0, .L800AD720
    /* 9DEF8 800AD6F8 42101500 */   srl       $v0, $s5, 1
    /* 9DEFC 800AD6FC 09F8E002 */  jalr       $s7
    /* 9DF00 800AD700 21284002 */   addu      $a1, $s2, $zero
    /* 9DF04 800AD704 31004018 */  blez       $v0, .L800AD7CC
    /* 9DF08 800AD708 21208002 */   addu      $a0, $s4, $zero
    /* 9DF0C 800AD70C 21284002 */  addu       $a1, $s2, $zero
    /* 9DF10 800AD710 FEB5020C */  jal        func_800AD7F8
    /* 9DF14 800AD714 21306002 */   addu      $a2, $s3, $zero
    /* 9DF18 800AD718 F3B50208 */  j          .L800AD7CC
    /* 9DF1C 800AD71C 00000000 */   nop
  .L800AD720:
    /* 9DF20 800AD720 18005300 */  mult       $v0, $s3
    /* 9DF24 800AD724 21208002 */  addu       $a0, $s4, $zero
    /* 9DF28 800AD728 21306002 */  addu       $a2, $s3, $zero
    /* 9DF2C 800AD72C 21888002 */  addu       $s1, $s4, $zero
    /* 9DF30 800AD730 01001024 */  addiu      $s0, $zero, 0x1
    /* 9DF34 800AD734 12180000 */  mflo       $v1
    /* 9DF38 800AD738 FEB5020C */  jal        func_800AD7F8
    /* 9DF3C 800AD73C 21288302 */   addu      $a1, $s4, $v1
    /* 9DF40 800AD740 2B101502 */  sltu       $v0, $s0, $s5
    /* 9DF44 800AD744 11004010 */  beqz       $v0, .L800AD78C
    /* 9DF48 800AD748 00000000 */   nop
  .L800AD74C:
    /* 9DF4C 800AD74C 21204002 */  addu       $a0, $s2, $zero
    /* 9DF50 800AD750 09F8E002 */  jalr       $s7
    /* 9DF54 800AD754 21288002 */   addu      $a1, $s4, $zero
    /* 9DF58 800AD758 08004104 */  bgez       $v0, .L800AD77C
    /* 9DF5C 800AD75C 00000000 */   nop
    /* 9DF60 800AD760 21883302 */  addu       $s1, $s1, $s3
    /* 9DF64 800AD764 05005112 */  beq        $s2, $s1, .L800AD77C
    /* 9DF68 800AD768 0100D626 */   addiu     $s6, $s6, 0x1
    /* 9DF6C 800AD76C 21204002 */  addu       $a0, $s2, $zero
    /* 9DF70 800AD770 21282002 */  addu       $a1, $s1, $zero
    /* 9DF74 800AD774 FEB5020C */  jal        func_800AD7F8
    /* 9DF78 800AD778 21306002 */   addu      $a2, $s3, $zero
  .L800AD77C:
    /* 9DF7C 800AD77C 01001026 */  addiu      $s0, $s0, 0x1
    /* 9DF80 800AD780 2B101502 */  sltu       $v0, $s0, $s5
    /* 9DF84 800AD784 F1FF4014 */  bnez       $v0, .L800AD74C
    /* 9DF88 800AD788 21905302 */   addu      $s2, $s2, $s3
  .L800AD78C:
    /* 9DF8C 800AD78C 04003412 */  beq        $s1, $s4, .L800AD7A0
    /* 9DF90 800AD790 21208002 */   addu      $a0, $s4, $zero
    /* 9DF94 800AD794 21282002 */  addu       $a1, $s1, $zero
    /* 9DF98 800AD798 FEB5020C */  jal        func_800AD7F8
    /* 9DF9C 800AD79C 21306002 */   addu      $a2, $s3, $zero
  .L800AD7A0:
    /* 9DFA0 800AD7A0 21208002 */  addu       $a0, $s4, $zero
    /* 9DFA4 800AD7A4 2128C002 */  addu       $a1, $s6, $zero
    /* 9DFA8 800AD7A8 21306002 */  addu       $a2, $s3, $zero
    /* 9DFAC 800AD7AC AAB5020C */  jal        func_800AD6A8
    /* 9DFB0 800AD7B0 2138E002 */   addu      $a3, $s7, $zero
    /* 9DFB4 800AD7B4 21203302 */  addu       $a0, $s1, $s3
    /* 9DFB8 800AD7B8 2328B602 */  subu       $a1, $s5, $s6
    /* 9DFBC 800AD7BC FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 9DFC0 800AD7C0 21306002 */  addu       $a2, $s3, $zero
    /* 9DFC4 800AD7C4 AAB5020C */  jal        func_800AD6A8
    /* 9DFC8 800AD7C8 2138E002 */   addu      $a3, $s7, $zero
  .L800AD7CC:
    /* 9DFCC 800AD7CC 3000BF8F */  lw         $ra, 0x30($sp)
    /* 9DFD0 800AD7D0 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 9DFD4 800AD7D4 2800B68F */  lw         $s6, 0x28($sp)
    /* 9DFD8 800AD7D8 2400B58F */  lw         $s5, 0x24($sp)
    /* 9DFDC 800AD7DC 2000B48F */  lw         $s4, 0x20($sp)
    /* 9DFE0 800AD7E0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9DFE4 800AD7E4 1800B28F */  lw         $s2, 0x18($sp)
    /* 9DFE8 800AD7E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 9DFEC 800AD7EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 9DFF0 800AD7F0 0800E003 */  jr         $ra
    /* 9DFF4 800AD7F4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800AD6A8
