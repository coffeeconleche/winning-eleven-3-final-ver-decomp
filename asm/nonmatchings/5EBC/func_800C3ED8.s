nonmatching func_800C3ED8, 0xA4

glabel func_800C3ED8
    /* B46D8 800C3ED8 0D80023C */  lui        $v0, %hi(D_800D511C)
    /* B46DC 800C3EDC 1C51428C */  lw         $v0, %lo(D_800D511C)($v0)
    /* B46E0 800C3EE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B46E4 800C3EE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* B46E8 800C3EE8 21888000 */  addu       $s1, $a0, $zero
    /* B46EC 800C3EEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* B46F0 800C3EF0 01001024 */  addiu      $s0, $zero, 0x1
    /* B46F4 800C3EF4 06005010 */  beq        $v0, $s0, .L800C3F10
    /* B46F8 800C3EF8 1800BFAF */   sw        $ra, 0x18($sp)
    /* B46FC 800C3EFC 0D80023C */  lui        $v0, %hi(D_800D55C0)
    /* B4700 800C3F00 C055428C */  lw         $v0, %lo(D_800D55C0)($v0)
    /* B4704 800C3F04 00000000 */  nop
    /* B4708 800C3F08 03005014 */  bne        $v0, $s0, .L800C3F18
    /* B470C 800C3F0C 00000000 */   nop
  .L800C3F10:
    /* B4710 800C3F10 DA0F0308 */  j          .L800C3F68
    /* B4714 800C3F14 01000224 */   addiu     $v0, $zero, 0x1
  .L800C3F18:
    /* B4718 800C3F18 0D80043C */  lui        $a0, %hi(D_800D5114)
    /* B471C 800C3F1C 1451848C */  lw         $a0, %lo(D_800D5114)($a0)
    /* B4720 800C3F20 92B3020C */  jal        func_800ACE48
    /* B4724 800C3F24 00000000 */   nop
    /* B4728 800C3F28 0B003016 */  bne        $s1, $s0, .L800C3F58
    /* B472C 800C3F2C 00000000 */   nop
    /* B4730 800C3F30 0B004014 */  bnez       $v0, .L800C3F60
    /* B4734 800C3F34 01000224 */   addiu     $v0, $zero, 0x1
  .L800C3F38:
    /* B4738 800C3F38 0D80043C */  lui        $a0, %hi(D_800D5114)
    /* B473C 800C3F3C 1451848C */  lw         $a0, %lo(D_800D5114)($a0)
    /* B4740 800C3F40 92B3020C */  jal        func_800ACE48
    /* B4744 800C3F44 00000000 */   nop
    /* B4748 800C3F48 FBFF4010 */  beqz       $v0, .L800C3F38
    /* B474C 800C3F4C 01000224 */   addiu     $v0, $zero, 0x1
    /* B4750 800C3F50 D80F0308 */  j          .L800C3F60
    /* B4754 800C3F54 00000000 */   nop
  .L800C3F58:
    /* B4758 800C3F58 03005014 */  bne        $v0, $s0, .L800C3F68
    /* B475C 800C3F5C 00000000 */   nop
  .L800C3F60:
    /* B4760 800C3F60 0D80013C */  lui        $at, %hi(D_800D55C0)
    /* B4764 800C3F64 C05522AC */  sw         $v0, %lo(D_800D55C0)($at)
  .L800C3F68:
    /* B4768 800C3F68 1800BF8F */  lw         $ra, 0x18($sp)
    /* B476C 800C3F6C 1400B18F */  lw         $s1, 0x14($sp)
    /* B4770 800C3F70 1000B08F */  lw         $s0, 0x10($sp)
    /* B4774 800C3F74 0800E003 */  jr         $ra
    /* B4778 800C3F78 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800C3ED8
    /* B477C 800C3F7C 00000000 */  nop
    /* B4780 800C3F80 00000000 */  nop
    /* B4784 800C3F84 00000000 */  nop
