nonmatching func_8006C53C, 0x17C

glabel func_8006C53C
    /* 5CD3C 8006C53C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5CD40 8006C540 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5CD44 8006C544 21808000 */  addu       $s0, $a0, $zero
    /* 5CD48 8006C548 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5CD4C 8006C54C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5CD50 8006C550 96030392 */  lbu        $v1, 0x396($s0)
    /* 5CD54 8006C554 00000000 */  nop
    /* 5CD58 8006C558 0001622C */  sltiu      $v0, $v1, 0x100
    /* 5CD5C 8006C55C 49004010 */  beqz       $v0, .L8006C684
    /* 5CD60 8006C560 801F113C */   lui       $s1, (0x1F8002F4 >> 16)
    /* 5CD64 8006C564 80100300 */  sll        $v0, $v1, 2
    /* 5CD68 8006C568 0180013C */  lui        $at, %hi(jtbl_800128B0)
    /* 5CD6C 8006C56C 21082200 */  addu       $at, $at, $v0
    /* 5CD70 8006C570 B028228C */  lw         $v0, %lo(jtbl_800128B0)($at)
    /* 5CD74 8006C574 00000000 */  nop
    /* 5CD78 8006C578 08004000 */  jr         $v0
    /* 5CD7C 8006C57C 00000000 */   nop
  jlabel .L8006C580
    /* 5CD80 8006C580 01000224 */  addiu      $v0, $zero, 0x1
    /* 5CD84 8006C584 FC0222A2 */  sb         $v0, (0x1F8002FC & 0xFFFF)($s1)
  jlabel .L8006C588
    /* 5CD88 8006C588 F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 5CD8C 8006C58C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5CD90 8006C590 A8B10108 */  j          .L8006C6A0
    /* 5CD94 8006C594 DC0362A4 */   sh        $v0, 0x3DC($v1)
  jlabel .L8006C598
    /* 5CD98 8006C598 BE030286 */  lh         $v0, 0x3BE($s0)
    /* 5CD9C 8006C59C 00000000 */  nop
    /* 5CDA0 8006C5A0 3F004010 */  beqz       $v0, .L8006C6A0
    /* 5CDA4 8006C5A4 00000000 */   nop
    /* 5CDA8 8006C5A8 D2B6010C */  jal        func_8006DB48
    /* 5CDAC 8006C5AC 21200002 */   addu      $a0, $s0, $zero
    /* 5CDB0 8006C5B0 82000224 */  addiu      $v0, $zero, 0x82
    /* 5CDB4 8006C5B4 A8B10108 */  j          .L8006C6A0
    /* 5CDB8 8006C5B8 960302A2 */   sb        $v0, 0x396($s0)
  jlabel .L8006C5BC
    /* 5CDBC 8006C5BC A9022392 */  lbu        $v1, 0x2A9($s1)
    /* 5CDC0 8006C5C0 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 5CDC4 8006C5C4 00000000 */  nop
    /* 5CDC8 8006C5C8 35004314 */  bne        $v0, $v1, .L8006C6A0
    /* 5CDCC 8006C5CC 00000000 */   nop
  jlabel .L8006C5D0
    /* 5CDD0 8006C5D0 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 5CDD4 8006C5D4 00000000 */  nop
    /* 5CDD8 8006C5D8 31004014 */  bnez       $v0, .L8006C6A0
    /* 5CDDC 8006C5DC 21200002 */   addu      $a0, $s0, $zero
    /* 5CDE0 8006C5E0 AE44010C */  jal        func_800512B8
    /* 5CDE4 8006C5E4 04000524 */   addiu     $a1, $zero, 0x4
    /* 5CDE8 8006C5E8 9BB10108 */  j          .L8006C66C
    /* 5CDEC 8006C5EC 00000000 */   nop
  jlabel .L8006C5F0
    /* 5CDF0 8006C5F0 D2B6010C */  jal        func_8006DB48
    /* 5CDF4 8006C5F4 21200002 */   addu      $a0, $s0, $zero
    /* 5CDF8 8006C5F8 29004014 */  bnez       $v0, .L8006C6A0
    /* 5CDFC 8006C5FC 00000000 */   nop
    /* 5CE00 8006C600 A9022392 */  lbu        $v1, 0x2A9($s1)
    /* 5CE04 8006C604 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 5CE08 8006C608 00000000 */  nop
    /* 5CE0C 8006C60C 07004310 */  beq        $v0, $v1, .L8006C62C
    /* 5CE10 8006C610 82000224 */   addiu     $v0, $zero, 0x82
    /* 5CE14 8006C614 960302A2 */  sb         $v0, 0x396($s0)
  jlabel .L8006C618
    /* 5CE18 8006C618 A9022392 */  lbu        $v1, 0x2A9($s1)
    /* 5CE1C 8006C61C 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 5CE20 8006C620 00000000 */  nop
    /* 5CE24 8006C624 1E004314 */  bne        $v0, $v1, .L8006C6A0
    /* 5CE28 8006C628 00000000 */   nop
  .L8006C62C:
    /* 5CE2C 8006C62C 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 5CE30 8006C630 00000000 */  nop
    /* 5CE34 8006C634 04004010 */  beqz       $v0, .L8006C648
    /* 5CE38 8006C638 0A000224 */   addiu     $v0, $zero, 0xA
    /* 5CE3C 8006C63C 960302A2 */  sb         $v0, 0x396($s0)
    /* 5CE40 8006C640 A8B10108 */  j          .L8006C6A0
    /* 5CE44 8006C644 970300A2 */   sb        $zero, 0x397($s0)
  jlabel .L8006C648
    /* 5CE48 8006C648 A9022392 */  lbu        $v1, 0x2A9($s1)
    /* 5CE4C 8006C64C 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 5CE50 8006C650 00000000 */  nop
    /* 5CE54 8006C654 12004314 */  bne        $v0, $v1, .L8006C6A0
    /* 5CE58 8006C658 21200002 */   addu      $a0, $s0, $zero
    /* 5CE5C 8006C65C AE44010C */  jal        func_800512B8
    /* 5CE60 8006C660 04000524 */   addiu     $a1, $zero, 0x4
    /* 5CE64 8006C664 04000224 */  addiu      $v0, $zero, 0x4
    /* 5CE68 8006C668 320322A2 */  sb         $v0, 0x332($s1)
  .L8006C66C:
    /* 5CE6C 8006C66C 1B50020C */  jal        func_8009406C
    /* 5CE70 8006C670 21200002 */   addu      $a0, $s0, $zero
    /* 5CE74 8006C674 A8B10108 */  j          .L8006C6A0
    /* 5CE78 8006C678 00000000 */   nop
  jlabel .L8006C67C
    /* 5CE7C 8006C67C 82000224 */  addiu      $v0, $zero, 0x82
    /* 5CE80 8006C680 960302A2 */  sb         $v0, 0x396($s0)
  jlabel .L8006C684
    /* 5CE84 8006C684 9A022292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s1)
    /* 5CE88 8006C688 01000324 */  addiu      $v1, $zero, 0x1
    /* 5CE8C 8006C68C FF004230 */  andi       $v0, $v0, 0xFF
    /* 5CE90 8006C690 03004314 */  bne        $v0, $v1, .L8006C6A0
    /* 5CE94 8006C694 00000000 */   nop
    /* 5CE98 8006C698 D2B6010C */  jal        func_8006DB48
    /* 5CE9C 8006C69C 21200002 */   addu      $a0, $s0, $zero
  jlabel .L8006C6A0
    /* 5CEA0 8006C6A0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5CEA4 8006C6A4 1400B18F */  lw         $s1, 0x14($sp)
    /* 5CEA8 8006C6A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 5CEAC 8006C6AC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5CEB0 8006C6B0 0800E003 */  jr         $ra
    /* 5CEB4 8006C6B4 00000000 */   nop
endlabel func_8006C53C
