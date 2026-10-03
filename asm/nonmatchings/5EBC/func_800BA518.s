nonmatching func_800BA518, 0x178

glabel func_800BA518
    /* AAD18 800BA518 0D80023C */  lui        $v0, %hi(D_800D3D7C)
    /* AAD1C 800BA51C 7C3D428C */  lw         $v0, %lo(D_800D3D7C)($v0)
    /* AAD20 800BA520 0D80053C */  lui        $a1, %hi(D_800D3D80)
    /* AAD24 800BA524 803DA58C */  lw         $a1, %lo(D_800D3D80)($a1)
    /* AAD28 800BA528 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AAD2C 800BA52C 2000BFAF */  sw         $ra, 0x20($sp)
    /* AAD30 800BA530 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* AAD34 800BA534 1800B0AF */  sw         $s0, 0x18($sp)
    /* AAD38 800BA538 0000508C */  lw         $s0, 0x0($v0)
  .L800BA53C:
    /* AAD3C 800BA53C 0000A28C */  lw         $v0, 0x0($a1)
    /* AAD40 800BA540 00000000 */  nop
    /* AAD44 800BA544 1000A2AF */  sw         $v0, 0x10($sp)
    /* AAD48 800BA548 1000A38F */  lw         $v1, 0x10($sp)
    /* AAD4C 800BA54C 0000A28C */  lw         $v0, 0x0($a1)
    /* AAD50 800BA550 00000000 */  nop
    /* AAD54 800BA554 F9FF6214 */  bne        $v1, $v0, .L800BA53C
    /* AAD58 800BA558 00000000 */   nop
    /* AAD5C 800BA55C 1000A28F */  lw         $v0, 0x10($sp)
    /* AAD60 800BA560 0D80033C */  lui        $v1, %hi(D_800D3D84)
    /* AAD64 800BA564 843D638C */  lw         $v1, %lo(D_800D3D84)($v1)
    /* AAD68 800BA568 00000000 */  nop
    /* AAD6C 800BA56C 23104300 */  subu       $v0, $v0, $v1
    /* AAD70 800BA570 05008104 */  bgez       $a0, .L800BA588
    /* AAD74 800BA574 FFFF5130 */   andi      $s1, $v0, 0xFFFF
    /* AAD78 800BA578 0D80023C */  lui        $v0, %hi(D_800D4EB4)
    /* AAD7C 800BA57C B44E428C */  lw         $v0, %lo(D_800D4EB4)($v0)
    /* AAD80 800BA580 9FE90208 */  j          .L800BA67C
    /* AAD84 800BA584 00000000 */   nop
  .L800BA588:
    /* AAD88 800BA588 01000224 */  addiu      $v0, $zero, 0x1
    /* AAD8C 800BA58C 3A008210 */  beq        $a0, $v0, .L800BA678
    /* AAD90 800BA590 00000000 */   nop
    /* AAD94 800BA594 07008018 */  blez       $a0, .L800BA5B4
    /* AAD98 800BA598 00000000 */   nop
    /* AAD9C 800BA59C 0D80023C */  lui        $v0, %hi(D_800D3D88)
    /* AADA0 800BA5A0 883D428C */  lw         $v0, %lo(D_800D3D88)($v0)
    /* AADA4 800BA5A4 00000000 */  nop
    /* AADA8 800BA5A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AADAC 800BA5AC 6FE90208 */  j          .L800BA5BC
    /* AADB0 800BA5B0 21104400 */   addu      $v0, $v0, $a0
  .L800BA5B4:
    /* AADB4 800BA5B4 0D80023C */  lui        $v0, %hi(D_800D3D88)
    /* AADB8 800BA5B8 883D428C */  lw         $v0, %lo(D_800D3D88)($v0)
  .L800BA5BC:
    /* AADBC 800BA5BC 02008018 */  blez       $a0, .L800BA5C8
    /* AADC0 800BA5C0 21280000 */   addu      $a1, $zero, $zero
    /* AADC4 800BA5C4 FFFF8524 */  addiu      $a1, $a0, -0x1
  .L800BA5C8:
    /* AADC8 800BA5C8 A4E9020C */  jal        func_800BA690
    /* AADCC 800BA5CC 21204000 */   addu      $a0, $v0, $zero
    /* AADD0 800BA5D0 0D80023C */  lui        $v0, %hi(D_800D3D7C)
    /* AADD4 800BA5D4 7C3D428C */  lw         $v0, %lo(D_800D3D7C)($v0)
    /* AADD8 800BA5D8 00000000 */  nop
    /* AADDC 800BA5DC 0000508C */  lw         $s0, 0x0($v0)
    /* AADE0 800BA5E0 0D80043C */  lui        $a0, %hi(D_800D4EB4)
    /* AADE4 800BA5E4 B44E848C */  lw         $a0, %lo(D_800D4EB4)($a0)
    /* AADE8 800BA5E8 01000524 */  addiu      $a1, $zero, 0x1
    /* AADEC 800BA5EC A4E9020C */  jal        func_800BA690
    /* AADF0 800BA5F0 01008424 */   addiu     $a0, $a0, 0x1
    /* AADF4 800BA5F4 4000023C */  lui        $v0, (0x400000 >> 16)
    /* AADF8 800BA5F8 24100202 */  and        $v0, $s0, $v0
    /* AADFC 800BA5FC 0F004010 */  beqz       $v0, .L800BA63C
    /* AAE00 800BA600 00000000 */   nop
    /* AAE04 800BA604 0D80033C */  lui        $v1, %hi(D_800D3D7C)
    /* AAE08 800BA608 7C3D638C */  lw         $v1, %lo(D_800D3D7C)($v1)
    /* AAE0C 800BA60C 00000000 */  nop
    /* AAE10 800BA610 0000628C */  lw         $v0, 0x0($v1)
    /* AAE14 800BA614 00000000 */  nop
    /* AAE18 800BA618 26100202 */  xor        $v0, $s0, $v0
    /* AAE1C 800BA61C 07004004 */  bltz       $v0, .L800BA63C
    /* AAE20 800BA620 0080043C */   lui       $a0, (0x80000000 >> 16)
  .L800BA624:
    /* AAE24 800BA624 0000628C */  lw         $v0, 0x0($v1)
    /* AAE28 800BA628 00000000 */  nop
    /* AAE2C 800BA62C 26100202 */  xor        $v0, $s0, $v0
    /* AAE30 800BA630 24104400 */  and        $v0, $v0, $a0
    /* AAE34 800BA634 FBFF4010 */  beqz       $v0, .L800BA624
    /* AAE38 800BA638 00000000 */   nop
  .L800BA63C:
    /* AAE3C 800BA63C 0D80023C */  lui        $v0, %hi(D_800D4EB4)
    /* AAE40 800BA640 B44E428C */  lw         $v0, %lo(D_800D4EB4)($v0)
    /* AAE44 800BA644 0D80043C */  lui        $a0, %hi(D_800D3D80)
    /* AAE48 800BA648 803D848C */  lw         $a0, %lo(D_800D3D80)($a0)
    /* AAE4C 800BA64C 0D80013C */  lui        $at, %hi(D_800D3D88)
    /* AAE50 800BA650 883D22AC */  sw         $v0, %lo(D_800D3D88)($at)
  .L800BA654:
    /* AAE54 800BA654 0000828C */  lw         $v0, 0x0($a0)
    /* AAE58 800BA658 0D80013C */  lui        $at, %hi(D_800D3D84)
    /* AAE5C 800BA65C 843D22AC */  sw         $v0, %lo(D_800D3D84)($at)
    /* AAE60 800BA660 0D80033C */  lui        $v1, %hi(D_800D3D84)
    /* AAE64 800BA664 843D638C */  lw         $v1, %lo(D_800D3D84)($v1)
    /* AAE68 800BA668 0000828C */  lw         $v0, 0x0($a0)
    /* AAE6C 800BA66C 00000000 */  nop
    /* AAE70 800BA670 F8FF6214 */  bne        $v1, $v0, .L800BA654
    /* AAE74 800BA674 00000000 */   nop
  .L800BA678:
    /* AAE78 800BA678 21102002 */  addu       $v0, $s1, $zero
  .L800BA67C:
    /* AAE7C 800BA67C 2000BF8F */  lw         $ra, 0x20($sp)
    /* AAE80 800BA680 1C00B18F */  lw         $s1, 0x1C($sp)
    /* AAE84 800BA684 1800B08F */  lw         $s0, 0x18($sp)
    /* AAE88 800BA688 0800E003 */  jr         $ra
    /* AAE8C 800BA68C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800BA518
